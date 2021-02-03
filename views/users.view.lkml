explore: users {}
view: users {
  sql_table_name: public.USERS ;;

  dimension: user_id {
    primary_key: yes
    hidden: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: age {
    type: number
    sql: ${TABLE}.AGE ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.CITY ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.COUNTRY ;;
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
    sql: ${TABLE}.CREATED_AT ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.EMAIL ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}.FIRST_NAME ;;
  }

  dimension: gender_old {
    type: string
    sql: ${TABLE}.GENDER ;;
  }

  # dimension: gender_edit {
  #   type: string
  #   sql: substring(${TABLE}.GENDER,1,1) ;;
  # }

  # parameter: selector {
  #   type: unquoted
  #   allowed_value: {
  #     label: "Gender"
  #     value: "gender_edit"
  #   }
  #   allowed_value: {
  #     label: "Country"
  #     value: "country"
  #   }
  # }

  # dimension: dynamic_dimension {
  #   type: string
  #   sql: {% if selector._parameter_value == "gender_edit" %} ${gender_edit}
  #   {% else %} ${country} {% endif %};;
  # }

  dimension: last_name {
    type: string
    sql: ${TABLE}.LAST_NAME ;;
  }

  dimension: latitude {
    type: number
    sql: ${TABLE}.LATITUDE ;;
  }

  dimension: longitude {
    type: number
    sql: ${TABLE}.LONGITUDE ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.STATE ;;
  }

  dimension: traffic_source {
    type: string
    sql: ${TABLE}.TRAFFIC_SOURCE ;;
  }

  dimension: zip {
    type: zipcode
    sql: ${TABLE}.ZIP ;;
  }

  measure: count {
    type: count
    # drill_fields: [first_name, gender_edit]
  }

  measure: sum_age {
    type: sum
    sql: ${age} ;;
    value_format_name: usd
  }


#   measure: dynamic_measure {
#     type: number
#     sql: {% if selector._parameter_value == "gender_edit" %} ${count}
#     {% else %} ${sum_age} {% endif %}  ;;
#     value_format: "[>=1000000]0.00,,\"M\";[>=1000]0.00,\"K\";0"
#     html:
#     {% if selector._parameter_value == "gender_edit" %}
#       ${{ value }}
#     {% else %}
#     {{ rendered_value }}%
#     {% endif %};;
# }
}
