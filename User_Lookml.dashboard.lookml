- dashboard: users
  title: Users
  layout: newspaper
  elements:
  - name: User Demographics
    type: text
    title_text: User Demographics
    body_text: ''
    row: 0
    col: 0
    width: 22
    height: 2
  - name: Users Table
    title: Users Table
    model: jenny_sandbox
    explore: users
    type: table
    fields: [users.id, users.first_name, users.last_name, users.gender, users.age,
      users.email]
    limit: 500
    query_timezone: America/Los_Angeles
    series_types: {}
    row: 14
    col: 0
    width: 22
    height: 6
  - name: Top 10 States by User Count
    title: Top 10 States by User Count
    model: jenny_sandbox
    explore: users
    type: looker_column
    fields: [users.state, users.count]
    sorts: [users.count desc]
    limit: 10
    column_limit: 50
    stacking: ''
    color_application:
      collection_id: legacy
      palette_id: looker_classic
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    row: 2
    col: 0
    width: 11
    height: 6
  - name: Users by Age Group
    title: Users by Age Group
    model: jenny_sandbox
    explore: users
    type: looker_bar
    fields: [users.age_range, users.count]
    fill_fields: [users.age_range]
    sorts: [users.age_range]
    limit: 500
    column_limit: 50
    stacking: ''
    color_application:
      collection_id: legacy
      palette_id: looker_classic
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    row: 2
    col: 11
    width: 11
    height: 6
  - name: Total Sales by Age
    title: Total Sales by Age
    model: jenny_sandbox
    explore: orders
    type: looker_scatter
    fields: [users.age, order_items.total_sales]
    sorts: [order_items.total_sales desc]
    limit: 500
    column_limit: 50
    stacking: ''
    color_application:
      collection_id: legacy
      palette_id: mixed_neutrals
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    point_style: circle
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
    row: 8
    col: 0
    width: 11
    height: 6
  - name: Users across the country
    title: Users across the country
    model: jenny_sandbox
    explore: orders
    type: looker_map
    fields: [users.state, users.count]
    sorts: [users.count desc]
    limit: 500
    column_limit: 50
    map_plot_mode: points
    heatmap_gridlines: true
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.6
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: custom
    map_latitude: 39.692980229220794
    map_longitude: -97.52693831920625
    map_zoom: 4
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_view_names: true
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: true
    series_types: {}
    row: 8
    col: 11
    width: 11
    height: 6
