# variable "access_key" {
#   description = "access key"
# }

# variable "secret_key" {
#   description = "secret key"
# }

variable "pipeline_bucket_name" {
  default     = "webapp-akhmim"
  description = "pipeline bucket name"
}

variable "app_bucket_name" {
  default     = "webapp-bucket-akhmim"
  description = "app bucket name"
}

variable "projectname" {
  default     = "TerraformReact"
  description = "pipeline project name"
}

variable "repo_id" {
  default     = "BrightProgrammer7/TerraformReact"
  description = "github repository id"
}

variable "repo_branch_name" {
  default     = "main"
  description = "github branch name"
}

variable "connection_arn" {
  type        = string
  description = "Arn for the CodeStar Connection"
  default = "arn:aws:codepipeline:us-east-1:010993157985:TerraformReact-pipeline"
}