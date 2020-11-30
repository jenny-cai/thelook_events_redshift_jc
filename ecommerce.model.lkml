connection: "thelook_events_redshift"

include: "/views/*.view.lkml"                # include all views in the views/ folder in this project
# include: "/**/view.lkml"                   # include all views in this project
# include: "my_dashboard.dashboard.lookml"   # include a LookML dashboard called my_dashboard

explore: order_items {
  sql_always_where: {% condition order_items.as_of_date %} ${created_date} {% endcondition %} ;;
  # join: test {
  #   type: cross
  # }
}

explore: products {}
