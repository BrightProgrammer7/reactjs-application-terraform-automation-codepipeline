# variable "access_key" {
#   description = "access key"
# }

# variable "secret_key" {
#   description = "secret key"
# }

variable "pipeline_bucket_name" {
  default     = "webapp-abdelilah"
  description = "pipeline bucket name"
}

variable "app_bucket_name" {
  default     = "TerraformAWS-webapp-abdelilah"
  description = "app bucket name"
}

variable "projectname" {
  default     = "TerraformAWS"
  description = "pipeline project name"
}

variable "repo_id" {
  default     = "TerraformAWS-cloud/vitejs-app-for-s3-static-webhosting"
  description = "github repository id"
}

variable "repo_branch_name" {
  default     = "main"
  description = "github branch name"
}

variable "connection_arn" {
  type        = string
  description = "Arn for the CodeStar Connection"
}