// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

output "id" {
  description = "the ID of the postgresql server ad administrator"
  value       = azurerm_postgresql_flexible_server_active_directory_administrator.administrator.id
}

output "tenant_id" {
  description = "the tenant id of the postgresql server ad administrator"
  value       = azurerm_postgresql_flexible_server_active_directory_administrator.administrator.tenant_id
}

output "object_id" {
  description = "the object id of the postgresql server ad administrator"
  value       = azurerm_postgresql_flexible_server_active_directory_administrator.administrator.object_id
}

output "principal_name" {
  description = "the principal name of the postgresql server ad administrator"
  value       = azurerm_postgresql_flexible_server_active_directory_administrator.administrator.principal_name
}
