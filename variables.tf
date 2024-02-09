# variable "access_key" {
#   description = "access key"
# }

# variable "secret_key" {
#   description = "secret key"
# }




variable "pipeline_bucket_name" {
  default     = "webapp-clever"
  description = "pipeline bucket name"
}

variable "app_bucket_name" {
  default     = "webapp-bucket-clever"
  description = "app bucket name"
}

variable "project_name" {
  default     = "TerraformClever"
  description = "pipeline project name"
}

variable "repo_id" {
  default     = "BrightProgrammer7/TerraformReact"
  description = "github repository id"
}

variable "repo_branch_name" {
  default     = "code"
  description = "github branch name"
}

variable "connection_arn" {
  type        = string
  description = "Arn for the CodeStar Connection"
  default     = "arn:aws:codestar-connections:us-east-1:010993157985:connection/86272d1f-92ae-4d62-bc6e-ccbfe350097d"
}

# default = "arn:aws:codepipeline:us-east-1:010993157985:${var.project_name}-pipeline"

# default = "arn:aws:codepipeline:us-east-1:010993157985:TerraformReact-pipeline"
