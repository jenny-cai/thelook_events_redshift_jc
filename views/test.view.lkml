# explore: test {}
# view: test {
#   derived_table: {
#     sql: @{test_stuff} {% if order_items.test._parameter_value == 'baseline' %} 'yes' {% else %} 'sflkjlsejifj' {% endif %} as test;;
#     persist_for: "4 hours"
#   }

#   dimension: test {
#     sql: ${TABLE}.test ;;
#   }
# }
