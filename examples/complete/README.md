# complete

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.0 |
| <a name="requirement_azuread"></a> [azuread](#requirement\_azuread) | ~> 3.0 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | ~> 3.113 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | 3.116.0 |
| <a name="provider_azuread"></a> [azuread](#provider\_azuread) | 3.0.2 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_resource_names"></a> [resource\_names](#module\_resource\_names) | terraform.registry.launch.nttdata.com/module_library/resource_name/launch | ~> 2.0 |
| <a name="module_resource_group"></a> [resource\_group](#module\_resource\_group) | terraform.registry.launch.nttdata.com/module_primitive/resource_group/azurerm | ~> 1.0 |
| <a name="module_postgresql_server"></a> [postgresql\_server](#module\_postgresql\_server) | terraform.registry.launch.nttdata.com/module_primitive/postgresql_server/azurerm | ~> 1.0 |
| <a name="module_postgresql_server_ad_administrator"></a> [postgresql\_server\_ad\_administrator](#module\_postgresql\_server\_ad\_administrator) | ../.. | n/a |

## Resources

| Name | Type |
|------|------|
| [azuread_service_principal.client](https://registry.terraform.io/providers/hashicorp/azuread/latest/docs/data-sources/service_principal) | data source |
| [azuread_user.client](https://registry.terraform.io/providers/hashicorp/azuread/latest/docs/data-sources/user) | data source |
| [azurerm_client_config.client](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/client_config) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_resource_names_map"></a> [resource\_names\_map](#input\_resource\_names\_map) | A map of key to resource\_name that will be used by tf-launch-module\_library-resource\_name to generate resource names | <pre>map(object({<br>    name       = string<br>    max_length = optional(number, 60)<br>  }))</pre> | <pre>{<br>  "postgresql_server": {<br>    "max_length": 60,<br>    "name": "psql"<br>  },<br>  "resource_group": {<br>    "max_length": 60,<br>    "name": "rg"<br>  }<br>}</pre> | no |
| <a name="input_instance_env"></a> [instance\_env](#input\_instance\_env) | Number that represents the instance of the environment. | `number` | `0` | no |
| <a name="input_instance_resource"></a> [instance\_resource](#input\_instance\_resource) | Number that represents the instance of the resource. | `number` | `0` | no |
| <a name="input_logical_product_family"></a> [logical\_product\_family](#input\_logical\_product\_family) | (Required) Name of the product family for which the resource is created.<br>    Example: org\_name, department\_name. | `string` | `"launch"` | no |
| <a name="input_logical_product_service"></a> [logical\_product\_service](#input\_logical\_product\_service) | (Required) Name of the product service for which the resource is created.<br>    For example, backend, frontend, middleware etc. | `string` | `"database"` | no |
| <a name="input_class_env"></a> [class\_env](#input\_class\_env) | (Required) Environment where resource is going to be deployed. For example. dev, qa, uat | `string` | `"dev"` | no |
| <a name="input_location"></a> [location](#input\_location) | Location of the Postgres Flexible Server | `string` | `"eastus"` | no |
| <a name="input_use_service_principal"></a> [use\_service\_principal](#input\_use\_service\_principal) | Set to false when running locally without a service principal | `bool` | `true` | no |
| <a name="input_public_network_access_enabled"></a> [public\_network\_access\_enabled](#input\_public\_network\_access\_enabled) | Whether or not public network access is allowed for this server | `bool` | `false` | no |
| <a name="input_authentication"></a> [authentication](#input\_authentication) | active\_directory\_auth\_enabled = Whether or not Active Directory authentication is enabled for this server<br>password\_auth\_enabled         = Whether or not password authentication is enabled for this server<br>tenant\_id                     = The tenant ID of the Active Directory to use for authentication | <pre>object({<br>    active_directory_auth_enabled = optional(bool)<br>    password_auth_enabled         = optional(bool)<br>    tenant_id                     = optional(string)<br>  })</pre> | `null` | no |
| <a name="input_administrator_login"></a> [administrator\_login](#input\_administrator\_login) | The administrator login for the Postgres Flexible Server.<br>Required when `create_mode` is Default and `authentication.password_auth_enabled` is true | `string` | `null` | no |
| <a name="input_administrator_password"></a> [administrator\_password](#input\_administrator\_password) | The administrator password for the Postgres Flexible Server.<br>Required when `create_mode` is Default and `authentication.password_auth_enabled` is true | `string` | `null` | no |
| <a name="input_storage_mb"></a> [storage\_mb](#input\_storage\_mb) | The storage capacity of the Postgres Flexible Server in megabytes | `number` | `32768` | no |
| <a name="input_zone"></a> [zone](#input\_zone) | The zone of the Postgres Flexible Server | `string` | `null` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | A mapping of tags to assign to the resource. | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_server_name"></a> [server\_name](#output\_server\_name) | n/a |
| <a name="output_server_fqdn"></a> [server\_fqdn](#output\_server\_fqdn) | n/a |
| <a name="output_tenant_id"></a> [tenant\_id](#output\_tenant\_id) | n/a |
| <a name="output_principal_name"></a> [principal\_name](#output\_principal\_name) | n/a |
| <a name="output_resource_group_name"></a> [resource\_group\_name](#output\_resource\_group\_name) | n/a |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
