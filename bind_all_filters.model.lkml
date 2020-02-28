connection: "thelook_events_redshift"

include: "*.view.lkml"                # include all views in the views/ folder in this project


explore: bind_all_filters {
  from: order_items

  join: users {
    type: left_outer
    sql_on: ${bind_all_filters.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: inventory_items {
    type: left_outer
    sql_on: ${bind_all_filters.inventory_item_id} = ${inventory_items.id} ;;
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

  join: top_brands {
    type: left_outer
    sql_on: ${products.brand} = ${top_brands.brand} ;;
    relationship: many_to_one
  }

  join: top_categories {
    type: left_outer
    sql_on: ${products.category} = ${top_categories.category} ;;
    relationship: many_to_one
  }
}

view: top_brands {
  view_label: "Top 10s"
  derived_table: {
    explore_source: bind_all_filters {
      column: total_sale_price { field: bind_all_filters.total_sale_price }
      column: brand { field: products.brand }
      derived_column: rank { sql: RANK() OVER (ORDER BY total_sale_price DESC) ;;}
      bind_all_filters: yes
    }
  }
  dimension: brand { group_label: "Brand Example"   description: "Ranks on Total Sale Price" }
  dimension: rank { type: number group_label: "Brand Example" description: "Ranks on Total Sale Price" }
  dimension: brand_ranked {
    description: "Ranks on Total Sale Price"
    group_label: "Brand Example"
    order_by_field: rank
    type: string
    sql: COALESCE(${rank} || ') ' || ${brand},'X) Other') ;;
  }
}

view: top_categories {
  view_label: "Top 10s"
  derived_table: {
    explore_source: bind_all_filters {
      column: total_sale_price { field: bind_all_filters.total_sale_price }
      column: category { field: products.category }
      derived_column: rank { sql: RANK() OVER (ORDER BY total_sale_price DESC) ;;}
      bind_all_filters: yes
    }
  }
  dimension: category { group_label: "Categories"   description: "Ranks on Total Sale Price" }
  dimension: rank { type: number group_label: "Categories" description: "Ranks on Total Sale Price" sql: COALESCE(${TABLE}.rank,9999) ;;}
  dimension: category_ranked {
    description: "Ranks on Total Sale Price"
    group_label: "Categories"
    order_by_field: rank
    type: string
    sql: COALESCE(${rank} || ') ' || ${category},'X) Other') ;;
  }
}
