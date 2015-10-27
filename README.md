# env_ws_pipeline-cookbook

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
    <td><tt>['env_ws_pipeline']['bacon']</tt></td>
    <td>Boolean</td>
    <td>whether to include bacon</td>
    <td><tt>true</tt></td>
  </tr>
</table>

## Usage

### env_ws_pipeline::default

Include `env_ws_pipeline` in your node's `run_list`:

```json
{
  "run_list": [
    "recipe[env_ws_pipeline::default]"
  ]
}
```

## License and Authors

Author:: Christoph Lukas (<christoph.lukas@gmx.net>)
