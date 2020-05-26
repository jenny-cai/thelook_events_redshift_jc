connection: "thelook_events_redshift"

# include all the views
include: "*.view"
include: "*.dashboard"

datagroup: jenny_default_datagroup {
  sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

datagroup: 4_hour {
  max_cache_age: "4 hours"
}

access_grant: test_value {
  allowed_values: ["2"]
  user_attribute: test_multiple_values
}

persist_with: jenny_default_datagroup

explore: bsandell {}

explore: company_list {
  required_access_grants: [test_value]
}

explore: distribution_centers {}

explore: events {
  sql_always_where: ${created_date} >= '2014-01-01' ;;
  join: users {
    type: left_outer
    sql_on: ${events.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: inventory_items {
  join: products {
    type: left_outer
    sql_on: ${inventory_items.product_id} = ${products.id} ;;
    relationship: many_to_one
  }

  join: distribution_centers {
    type: left_outer
    sql_on: ${products.distribution_center_id} = ${distribution_centers.id} ;;
    relationship: many_to_one
  }
}

explore: orders {
  fields: [ALL_FIELDS*,
    -inventory_items.product_name,
    -inventory_items.product_retail_price,
    -inventory_items.product_sku,
    -inventory_items.product_brand,
    -inventory_items.product_category,
    -inventory_items.product_department,
    -inventory_items.product_distribution_center_id
    ]

  aggregate_table: rollup__order_items_created_month__products_brand {
    query: {
      dimensions: [order_items.created_month, products.brand]
      measures: [order_items.total_sales]
      timezone: "America/New_York"
    }

    materialization: {
      datagroup_trigger: jenny_default_datagroup
    }
  }


  join: order_items {
    type: left_outer
    sql_on: ${orders.order_id} = ${order_items.order_id} ;;
    relationship: one_to_many
  }

  join: users {
    type: left_outer
    sql_on: ${order_items.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: inventory_items {
    type: left_outer
    sql_on: ${order_items.inventory_item_id} = ${inventory_items.id} ;;
    relationship: many_to_one
  }

  join: products {
    type: left_outer
    sql_on: ${inventory_items.product_id} = ${products.id} ;;
    relationship: many_to_one
  }

  join: distribution_centers {
    type: left_outer
    sql_on: ${products.distribution_center_id} = ${distribution_centers.id} ;;
    relationship: many_to_one
  }
}


explore: order_items {
  join: users {
    type: left_outer
    sql_on: ${order_items.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: inventory_items {
    type: left_outer
    sql_on: ${order_items.inventory_item_id} = ${inventory_items.id} ;;
    relationship: many_to_one
  }

  join: products {
    type: left_outer
    sql_on: ${inventory_items.product_id} = ${products.id} ;;
    relationship: many_to_one
  }

  join: distribution_centers {
    type: left_outer
    sql_on: ${products.distribution_center_id} = ${distribution_centers.id} ;;
    relationship: many_to_one
  }
}

explore: products {
  join: distribution_centers {
    type: left_outer
    sql_on: ${products.distribution_center_id} = ${distribution_centers.id} ;;
    relationship: many_to_one
  }
}

explore: users {
  persist_with: 4_hour
}

explore: female_users {
  from: users
  persist_with: 4_hour
  always_filter: {
    filters: {
      field: gender
      value: "Female"
    }
  }
}

explore: male_users {
  from: users
  persist_with: 4_hour
  always_filter: {
    filters: {
      field: gender
      value: "Male"
    }
  }
}
