
view: orders {
  derived_table: {
    sql: select order_id, sum(sale_price) as sales from public.order_items
      group by order_id
       ;;
  }

  dimension: order_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.order_id ;;
  }

  dimension: sales {
    type: number
    sql: ${TABLE}.sales ;;
  }

  measure: count {
    type: count
  }

  measure: total_sales {
    type:  sum
    sql: ${sales} ;;
    value_format_name: usd_0
  }

  set: detail {
    fields: [order_id, sales]
  }
}
