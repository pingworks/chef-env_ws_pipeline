# ws-env-pipeline-cookbook

Environment cookbook for a basic pipeline

## Supported Platforms

Ubuntu 14.04

## Attributes

<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['ws-env-pipeline']['bacon']</tt></td>
    <td>Boolean</td>
    <td>whether to include bacon</td>
    <td><tt>true</tt></td>
  </tr>
</table>

## Usage

### ws-env-pipeline::default

Include `ws-env-pipeline` in your node's `run_list`:

```json
{
  "run_list": [
    "recipe[ws-env-pipeline::default]"
  ]
}
```

## License and Authors

Author:: Christoph Lukas (<christoph.lukas@gmx.net>)
