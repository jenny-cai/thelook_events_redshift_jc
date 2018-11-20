view: order_items {
  sql_table_name: public.order_items ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension_group: created {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.created_at ;;
  }

  dimension: order_created_month {
    type: date_month_num
    sql: ${TABLE}.created_at ;;
  }

  dimension_group: delivered {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.delivered_at ;;
  }

  dimension: inventory_item_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.inventory_item_id ;;
  }

  dimension: order_id {
    type: number
    sql: ${TABLE}.order_id ;;
  }

  dimension_group: returned {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.returned_at ;;
  }

  dimension: sale_price {
    type: number
    sql: ${TABLE}.sale_price ;;
  }

  dimension: price_point {
    case: {
      when: {
        sql: ${sale_price} < 100 ;;
        label: "Low End"
      }
      when: {
        sql: ${sale_price} <300 ;;
        label: "Mid End"
      }
      else: "High End"
    }
  }

  dimension_group: shipped {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.shipped_at ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.user_id ;;
  }

  dimension: is_luxury_item {
    type: yesno
    sql: ${sale_price} >= 300 ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  measure: count_orders {
    type:  count_distinct
    sql: ${order_id} ;;
  }

  measure: avg_items_per_order {
    type: number
    sql: 1.0* count(${id})/count(distinct ${order_id}) ;;
    value_format_name: decimal_2
  }

  measure: total_sales {
    type:  sum
    sql: ${sale_price} ;;
    value_format_name: usd_0
  }

  measure: min_sales_price {
    type: min
    sql: ${sale_price} ;;
    value_format_name: usd
  }

  measure: max_sales_price {
    type: max
    sql: ${sale_price} ;;
    value_format_name: usd
  }

  measure: avg_sales_price {
    type: average
    sql: ${sale_price} ;;
    value_format_name: usd
  }

  measure: avg_sales_per_order {
    type: number
    sql: 1.0* ${total_sales}/${count_orders};;
    value_format_name: usd
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      users.id,
      users.first_name,
      users.last_name,
      inventory_items.id,
      inventory_items.product_name
    ]
  }
}
