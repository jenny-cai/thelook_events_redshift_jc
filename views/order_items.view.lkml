view: order_items {
  sql_table_name: public.ORDER_ITEMS ;;
  drill_fields: [id]

  filter: as_of_date {
    type: string
    suggest_dimension: dt_dates.datestring
    suggest_explore: dt_dates
  }

  parameter: max_date {
    type: string
    suggest_dimension: dt_dates.datestring
    suggest_explore: dt_dates
  }

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }
#   measure: max_date_measure {
#     type: date
#     sql: max(${created_date}) ;;
#   }
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
    sql: ${TABLE}.CREATED_AT ;;
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
    sql: ${TABLE}.DELIVERED_AT ;;
  }

  parameter: test {
    type: unquoted
    allowed_value: {
      label: "Test"
      value: "TeSt"
    }
    allowed_value: {
      label: "Baseline"
      value: "baseline"
    }
  }

  dimension: test_liquid {
    type: string
    sql: {% if test._parameter_value == 'baseline' %} '{{ "it WoRked" | downcase }}' {% else %} 'didnt work' {% endif %} ;;
  }

  filter: test_filter {
    type: string
    suggest_dimension: test.test
    suggest_explore: order_items
  }

  dimension: inventory_item_id {
    type: number
    sql: ${TABLE}.INVENTORY_ITEM_ID ;;
  }

  dimension: order_id {
    type: number
    sql: ${TABLE}.ORDER_ID ;;
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
    sql: ${TABLE}.RETURNED_AT ;;
  }

  dimension: sale_price {
    type: number
    sql: ${TABLE}.SALE_PRICE ;;
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
    sql: ${TABLE}.SHIPPED_AT ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.STATUS ;;
  }

  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.USER_ID ;;
  }

  measure: count {
    type: count
    drill_fields: [id, users.last_name, users.first_name, users.id]
  }
  measure: sum_sale_price {
    type: sum
    sql: ${sale_price} ;;
    value_format_name: usd_0
  }

}
