view: order_items_yearly_aggregation {
  derived_table: {
    explore_source: order_items {
      column: created_year {}
      column: start_of_year_sum_sales_price {}
      column: end_of_year_sum_sales_price {}
      column: yearly_attrition {}

      timezone: America/Los_Angeles
    }
  }
  dimension: created_year {
    type: date_year
    primary_key: yes
  }
  dimension: start_of_year_sum_sales_price {
    value_format: "$#,##0.00"
    type: number
  }
  dimension: end_of_year_sum_sales_price {
    value_format: "$#,##0.00"
    type: number
  }
  dimension: yearly_attrition {
    value_format: "#,##0%"
    type: number
  }
  measure: percent_yearly_attrition {
    type: average
    sql: ${yearly_attrition} ;;
    value_format_name: percent_0
  }
}
