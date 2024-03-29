resource "aws_codepipeline" "codepipeline1" {
  name     = "${var.project_name}-pipeline"
  role_arn = aws_iam_role.codepipeline_role1.arn

  artifact_store {
    location = aws_s3_bucket.pipeline_bucket.bucket
    type     = "S3"
  }

  stage {
    name = "Source"

    action {
      name             = "Source"
      category         = "Source"
      owner            = "AWS"
      provider         = "CodeStarSourceConnection"
      version          = "1"
      output_artifacts = ["SourceArtifact"]
      #PollForSourceChanges = true

      configuration = {
        ConnectionArn    = data.aws_codestarconnections_connection.github.id
        FullRepositoryId = var.repo_id
        BranchName       = var.repo_branch_name
        #PollForSourceChanges = true
      }
    }
  }

  stage {
    name = "Build"

    action {
      name             = "Build"
      category         = "Build"
      owner            = "AWS"
      provider         = "CodeBuild"
      input_artifacts  = ["SourceArtifact"]
      output_artifacts = ["BuildArtifact"]
      version          = "1"

      configuration = {
        ProjectName = aws_codebuild_project.codebuild.name
      }
    }
  }

  stage {
    name = "Deploy"

    action {
      name            = "Deploy"
      category        = "Deploy"
      owner           = "AWS"
      provider        = "S3"
      input_artifacts = ["BuildArtifact"]
      version         = "1"

      configuration = {
        "BucketName" = aws_s3_bucket.app_bucket.bucket
        "Extract"    = "true"
      }
    }
  }
}

data "aws_codestarconnections_connection" "github" {
  arn = var.connection_arn

}
# arn = "arn:aws:codepipeline:us-east-1:010993157985:${var.project_name}-pipeline"

# arn = "arn:aws:s3:::${var.app_bucket_name}"
