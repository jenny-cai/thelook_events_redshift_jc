explore: dt_dates {}
view: dt_dates {
  derived_table: {
    sql: select '2020-08-01'::text as thedate
    union select '2020-08-02'::text;;
  }


  dimension: datestring {
    type: string
    sql: ${TABLE}.thedate ;;
  }
 }
