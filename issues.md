---
title: Issues - 9⛔ 37⚠️  
navigation: true
---

<p style="text-align:right;color:#cccs">
Generated Fri, 29 Jan 2021 16:28:21 GMT
</p>

<details style="margin-left: 3em" open="open">
<summary style="margin-left:-1em;border-bottom:solid 1px #333;font-size:200%;">Issues (9⛔37⚠️)</summary>

<details style="margin-left: 3em" open="open">
<summary style="margin-left:-1em;border-bottom:solid 1px #333;font-size:170%;"><a href="https://looker-open-source.github.io/look-at-me-sideways/rules.html#f1">F1</a>. No inter-view dependencies (3⛔)</summary>

<table>
<thead><tr>
<th>Level</th>
<th>Location</th>
<th>Description</th>
</tr></thead>
<tbody>
<tr>
<td>⛔</td>
<td>view:users&#47;field:dynamic_dimension </td>
<td>dynamic_dimension references another view, if selector,  via {% if selector._parameter_value == "gender_edit" %}</td>
</tr>
<tr>
<td>⛔</td>
<td>view:users&#47;field:dynamic_measure </td>
<td>dynamic_measure references another view, if selector,  via {% if selector._parameter_value == "gender_edit" %}</td>
</tr>
<tr>
<td>⛔</td>
<td>view:users&#47;field:dynamic_measure </td>
<td>dynamic_measure references another view, if selector,  via {% if selector._parameter_value == "gender_edit" %}</td>
</tr></tbody></table></details>
<details style="margin-left: 3em" open="open">
<summary style="margin-left:-1em;border-bottom:solid 1px #333;font-size:170%;"><a href="https://looker-open-source.github.io/look-at-me-sideways/rules.html#f3">F3</a>. Count fields filtered (3⛔)</summary>

<table>
<thead><tr>
<th>Level</th>
<th>Location</th>
<th>Description</th>
</tr></thead>
<tbody>
<tr>
<td>⛔</td>
<td>view:order_items&#47;field:count </td>
<td>Type:count measure at view:order_items/field:count does not have a filter applied</td>
</tr>
<tr>
<td>⛔</td>
<td>view:products&#47;field:count </td>
<td>Type:count measure at view:products/field:count does not have a filter applied</td>
</tr>
<tr>
<td>⛔</td>
<td>view:users&#47;field:count </td>
<td>Type:count measure at view:users/field:count does not have a filter applied</td>
</tr></tbody></table></details>
<details style="margin-left: 3em" open="open">
<summary style="margin-left:-1em;border-bottom:solid 1px #333;font-size:170%;"><a href="https://looker-open-source.github.io/look-at-me-sideways/rules.html#f4">F4</a>. Description or hidden (37⚠️)</summary>

<table>
<thead><tr>
<th>Level</th>
<th>Location</th>
<th>Description</th>
</tr></thead>
<tbody>
<tr>
<td>⚠️</td>
<td>view:order_items&#47;field:id </td>
<td>view:order_items/field:id is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:order_items&#47;field:inventory_item_id </td>
<td>view:order_items/field:inventory_item_id is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:order_items&#47;field:order_id </td>
<td>view:order_items/field:order_id is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:order_items&#47;field:sale_price </td>
<td>view:order_items/field:sale_price is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:order_items&#47;field:status </td>
<td>view:order_items/field:status is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:order_items&#47;field:user_id </td>
<td>view:order_items/field:user_id is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:order_items&#47;field:count </td>
<td>view:order_items/field:count is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:order_items&#47;field:sum_sale_price </td>
<td>view:order_items/field:sum_sale_price is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:products&#47;field:id </td>
<td>view:products/field:id is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:products&#47;field:brand </td>
<td>view:products/field:brand is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:products&#47;field:category </td>
<td>view:products/field:category is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:products&#47;field:cost </td>
<td>view:products/field:cost is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:products&#47;field:department </td>
<td>view:products/field:department is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:products&#47;field:distribution_center_id </td>
<td>view:products/field:distribution_center_id is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:products&#47;field:name </td>
<td>view:products/field:name is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:products&#47;field:retail_price </td>
<td>view:products/field:retail_price is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:products&#47;field:sku </td>
<td>view:products/field:sku is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:products&#47;field:count </td>
<td>view:products/field:count is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users&#47;field:id </td>
<td>view:users/field:id is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users&#47;field:age </td>
<td>view:users/field:age is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users&#47;field:city </td>
<td>view:users/field:city is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users&#47;field:country </td>
<td>view:users/field:country is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users&#47;field:email </td>
<td>view:users/field:email is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users&#47;field:first_name </td>
<td>view:users/field:first_name is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users&#47;field:gender_old </td>
<td>view:users/field:gender_old is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users&#47;field:gender_edit </td>
<td>view:users/field:gender_edit is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users&#47;field:dynamic_dimension </td>
<td>view:users/field:dynamic_dimension is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users&#47;field:last_name </td>
<td>view:users/field:last_name is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users&#47;field:latitude </td>
<td>view:users/field:latitude is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users&#47;field:longitude </td>
<td>view:users/field:longitude is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users&#47;field:state </td>
<td>view:users/field:state is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users&#47;field:traffic_source </td>
<td>view:users/field:traffic_source is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users&#47;field:zip </td>
<td>view:users/field:zip is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users&#47;field:count </td>
<td>view:users/field:count is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users&#47;field:sum_age </td>
<td>view:users/field:sum_age is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users&#47;field:dynamic_measure </td>
<td>view:users/field:dynamic_measure is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users&#47;field:selector </td>
<td>view:users/field:selector is missing a description</td>
</tr></tbody></table></details>
<details style="margin-left: 3em" open="open">
<summary style="margin-left:-1em;border-bottom:solid 1px #333;font-size:170%;"><a href="https://looker-open-source.github.io/look-at-me-sideways/rules.html#k1">K1</a>. Primary keys required (3⛔)</summary>

<table>
<thead><tr>
<th>Level</th>
<th>Location</th>
<th>Description</th>
</tr></thead>
<tbody>
<tr>
<td>⛔</td>
<td>view: order_items </td>
<td>No Primary Key Dimensions found in order_items</td>
</tr>
<tr>
<td>⛔</td>
<td>view: products </td>
<td>No Primary Key Dimensions found in products</td>
</tr>
<tr>
<td>⛔</td>
<td>view: users </td>
<td>No Primary Key Dimensions found in users</td>
</tr></tbody></table></details></details>

---

### Icon Key
<table>
<thead><tr>
<th></th>
<th>non-exempted</th>
<th>exempted</th>
</tr></thead>
<tbody>
<tr>
<td>Error</td>
<td>⛔</td>
<td>🙈</td>
</tr>
<tr>
<td>Warning</td>
<td>⚠️</td>
<td>🚧</td>
</tr>
</tbody>
</table>

