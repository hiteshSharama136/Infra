variable "role_assignment_list" {
  type        = map(any)
  default     = {}
  description = <<EOF
* name  -->(string)(optional) A unique UUID/GUID for this role assignment
* scope -->(string)(required) The scope at which the Role Assignment applies to
* role_definition_name -->(string)(optional) The name of a built-in Role
* role_definition_id -->(string)(optional) The Scoped-ID of the Role Definition
* principal_id -->(string)(required) The Scoped-ID of the Role Definition

example
{
  assignment_one = {
    name = "00000000-0000-0000-0000-000000000000"
    scope = "/subscriptions/0b1f6471-1bf0-4dda-aec3-111122223333/resourceGroups/myGroup"
    role_definition_name  = "Reader",
    principal_id = "a487e0c1-82af-47d9-9a0b-af184eb87646d
  }
}
EOF
}