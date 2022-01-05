variable "env" {
  description = "Environment dev/qa/prod"
  default     = "dev"
  //validation {
  //  condition     = can(regex("^(prod|qa|dev)$", var.env))
  //  error_message = "Please select a workspace from prod|qa|dev"
  // }
}
variable "bucket_name" {
  type        = string
  description = "Creates a unique bucket name"
  default     = ""
}
variable "acl" {
  type        = string
  description = "(Optional) The canned ACL to apply. Defaults to private. Conflicts with grant."
  default     = "private"
}
variable "versioning" {
  type        = bool
  description = "(Optional) A state of versioning."
  default     = false
}

variable "tags" {
  type        = map(any)
  description = "(Optional) A mapping of tags to assign to the bucket."
  default = {
    environment = "dev"
    project     = "data"

  }
}
