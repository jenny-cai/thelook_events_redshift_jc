view: company_list {
  sql_table_name: public.company_list ;;

  dimension: company_id {
    type: string
    sql: ${TABLE}.company_id ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }


measure: header_pilot {
    type: number
    sql: 1 ;;
    html: <div class='vis'><div class='vis-single-value' style='font-size:20px;background-vertical-align:middle;width:100%;background-color:#ff9900;'>
    <font color=#ffffff><b>{{rendered_value}}</b></font>
    </div>
    </div> ;;
}
}
