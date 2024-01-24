resource "aws_codecommit_repository" "local_to_codecommit" {
  repository_name = "TerraformAWS"
  description     = "Description of your CodeCommit repository"
}