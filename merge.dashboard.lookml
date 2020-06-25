- dashboard: order_details
  title: Order Details
  layout: newspaper
  elements:
  - name: Order Details
    title: Order Details
    model: jenny_sandbox
    explore: order_items
    type: single_value
    fields: [order_items.avg_items_per_order, order_items.created_month]
    fill_fields: [order_items.created_month]
    filters:
      order_items.created_month: 3 months
    sorts: [order_items.created_month desc]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    custom_color: "#095a8b"
    show_single_value_title: true
    single_value_title: Average Items per Order
    show_comparison: true
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_fields: [order_items.created_month]
    listen:
      Created Date: order_items.created_date
    row: 0
    col: 8
    width: 8
    height: 3
  - name: Order Details - Returned Orders Items Count
    title: Order Details - Returned Orders Items Count
    model: jenny_sandbox
    explore: order_items
    type: single_value
    fields: [order_items.count]
    filters:
      order_items.returned_date: NOT NULL
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    custom_color: "#095a8b"
    show_single_value_title: true
    single_value_title: Number of Returned Order Items
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    listen:
      Created Date: order_items.created_date
    row: 3
    col: 12
    width: 12
    height: 3
  - name: Orders Count
    title: Orders Count
    model: jenny_sandbox
    explore: order_items
    type: single_value
    fields: [order_items.count_orders]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    custom_color: "#0d698b"
    show_single_value_title: true
    single_value_title: Count of Orders
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    listen:
      Created Date: order_items.created_date
    row: 0
    col: 0
    width: 8
    height: 3
  - name: Order Item Status
    title: Order Item Status
    model: jenny_sandbox
    explore: order_items
    type: looker_pie
    fields: [order_items.status, products.count]
    sorts: [products.count desc]
    limit: 500
    column_limit: 50
    value_labels: legend
    label_type: labPer
    colors: ["#62bad4", "#a9c574", "#929292", "#9fdee0", "#1f3e5a", "#90c8ae", "#92818d",
      "#c5c6a6", "#82c2ca", "#cee0a0", "#928fb4", "#9fc190"]
    series_colors: {}
    custom_color_enabled: true
    custom_color: "#095a8b"
    show_single_value_title: true
    single_value_title: Number of Orders with Returned Items
    show_comparison: true
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    series_types: {}
    listen:
      Created Date: order_items.created_date
    row: 3
    col: 0
    width: 12
    height: 6
  - name: Total Sales of Completed Order Items
    title: Total Sales of Completed Order Items
    model: jenny_sandbox
    explore: order_items
    type: single_value
    fields: [order_items.total_sales]
    filters:
      order_items.status: Complete
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    custom_color: "#095a8b"
    show_single_value_title: true
    single_value_title: Total Sales Price of Completed Order Items
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    value_labels: legend
    label_type: labPer
    colors: ["#62bad4", "#a9c574", "#929292", "#9fdee0", "#1f3e5a", "#90c8ae", "#92818d",
      "#c5c6a6", "#82c2ca", "#cee0a0", "#928fb4", "#9fc190"]
    series_colors: {}
    series_types: {}
    listen:
      Created Date: order_items.created_date
    row: 6
    col: 12
    width: 12
    height: 3
  - name: Average Sales per Order
    title: Average Sales per Order
    model: jenny_sandbox
    explore: order_items
    type: single_value
    fields: [order_items.avg_sales_per_order, order_items.created_year]
    fill_fields: [order_items.created_year]
    sorts: [order_items.created_year desc]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    custom_color: "#10798b"
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    comparison_label: last year
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_fields: [order_items.created_year]
    listen:
      Created Date: order_items.created_date
    row: 0
    col: 16
    width: 8
    height: 3
  - name: Total Sales by Month
    title: Total Sales by Month
    model: jenny_sandbox
    explore: order_items
    type: looker_line
    fields: [order_items.total_sales, order_items.order_created_month, order_items.created_year]
    pivots: [order_items.created_year]
    fill_fields: [order_items.order_created_month, order_items.created_year]
    sorts: [order_items.order_created_month desc, order_items.created_year]
    limit: 500
    column_limit: 50
    stacking: ''
    colors: ["#62bad4", "#a9c574", "#929292", "#9fdee0", "#1f3e5a", "#90c8ae", "#92818d",
      "#c5c6a6", "#82c2ca", "#cee0a0", "#928fb4", "#9fc190"]
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    point_style: none
    series_colors: {}
    series_types: {}
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    show_null_points: true
    interpolation: linear
    listen:
      Created Date: order_items.created_date
    row: 9
    col: 0
    width: 12
    height: 6
  - name: Luxury Item Sales Across Years
    title: Luxury Item Sales Across Years
    model: jenny_sandbox
    explore: orders
    type: looker_area
    fields: [order_items.created_year, order_items.total_sales, order_items.is_luxury_item]
    pivots: [order_items.is_luxury_item]
    fill_fields: [order_items.created_year, order_items.is_luxury_item]
    sorts: [order_items.created_year, order_items.is_luxury_item]
    limit: 500
    query_timezone: America/Los_Angeles
    stacking: ''
    color_application:
      collection_id: legacy
      palette_id: mixed_dark
    show_value_labels: true
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    point_style: none
    series_colors: {}
    series_types: {}
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    show_null_points: true
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    listen:
      Created Date: order_items.created_date
    row: 9
    col: 12
    width: 12
    height: 6
  - name: New Tile
    title: New Tile
    merged_queries:
    - model: jenny_sandbox
      explore: order_items
      type: looker_line
      fields: [order_items.total_sales, users.state]
      filters:
        order_items.created_date: 7 days
      sorts: [order_items.total_sales desc]
      limit: 500
      column_limit: 50
      x_axis_gridlines: false
      y_axis_gridlines: true
      show_view_names: true
      show_y_axis_labels: true
      show_y_axis_ticks: true
      y_axis_tick_density: default
      y_axis_tick_density_custom: 5
      show_x_axis_label: true
      show_x_axis_ticks: true
      y_axis_scale_mode: linear
      x_axis_reversed: false
      y_axis_reversed: false
      plot_size_by_field: false
      trellis: ''
      stacking: ''
      limit_displayed_rows: false
      legend_position: center
      point_style: none
      show_value_labels: false
      label_density: 25
      x_axis_scale: auto
      y_axis_combined: true
      show_null_points: true
      interpolation: linear
      colors: ["#62bad4", "#a9c574", "#929292", "#9fdee0", "#1f3e5a", "#90c8ae", "#92818d",
        "#c5c6a6", "#82c2ca", "#cee0a0", "#928fb4", "#9fc190"]
      series_colors: {}
      series_types: {}
      defaults_version: 1
    - model: jenny_sandbox
      explore: order_items
      type: table
      fields: [users.state, order_items.avg_items_per_order]
      sorts: [order_items.avg_items_per_order desc]
      limit: 500
      query_timezone: America/Los_Angeles
      join_fields:
      - field_name: users.state
        source_field_name: users.state
    type: table
    row: 15
    col: 0
    width: 8
    height: 6
  filters:
  - name: Created Date
    title: Created Date
    type: field_filter
    default_value: 7 day
    allow_multiple_values: true
    required: false
    ui_config:
      type: relative_timeframes
      display: overflow
      options: []
    model: jenny_sandbox
    explore: order_items
    listens_to_filters: []
    field: order_items.created_date
