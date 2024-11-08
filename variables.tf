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

variable "postgresql_server_name" {
  description = "Name of the Postgresql flexible server"
  type        = string
}

variable "resource_group_name" {
  description = "Resource group name of the Postgres Flexible Server"
  type        = string
}

variable "tenant_id" {
  description = "The tenant ID of the AD administrator"
  type        = string
}

variable "object_id" {
  description = "The object ID of the AD administrator"
  type        = string
}

variable "principal_name" {
  description = "The name of the princiapl to assign as AD administrator"
  type        = string
}

variable "principal_type" {
  description = "The type of princiapl to assign as AD administrator"
  type        = string

  validation {
    condition     = can(regex("^(Group|ServicePrincipal|User)$", var.principal_type))
    error_message = "Principal type must be one of 'Group', 'ServicePrincipal, 'User'"
  }
}
