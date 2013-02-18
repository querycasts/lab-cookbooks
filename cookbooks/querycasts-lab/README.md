querycasts-lab Cookbook
=======================
This is a collection of Chef recipes used to provision the [Querycasts Lab](https://github.com/querycasts/lab).

Requirements
------------
Intended for the [Querycasts Lab](https://github.com/querycasts/lab), but will work on other systems as well.

Attributes
----------
#### querycasts-lab::default

<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <!--
  <tr>
    <td><tt>['querycasts-lab']['bacon']</tt></td>
    <td>Boolean</td>
    <td>whether to include bacon</td>
    <td><tt>true</tt></td>
  </tr>
  -->
</table>

Usage
-----
#### querycasts-lab::default

Just include `querycasts-lab` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[querycasts-lab]"
  ]
}
```

License and Authors
-------------------
Authors: Jimmy Cuadra
