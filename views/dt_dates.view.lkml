explore: dt_dates {}
view: dt_dates {
  derived_table: {
    sql: select '2020-08-01' as date  ;;
  }

  dimension: date {
    type: string
  }
 }
