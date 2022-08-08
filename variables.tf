variable "s3_bucket" {
  default = "dev-applications-backend-state-olufolarin"
}

variable "dynamodb_table" {
  default = "dev_applications_locks"
}

# key variables
variable "application_name" {
  default = "users-backend"
}

variable "environment" {
  default = "environment"
}

variable "project_name" {
  default = "users"
}