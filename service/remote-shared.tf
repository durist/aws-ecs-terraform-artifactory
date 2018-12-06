data "terraform_remote_state" "shared" {
  backend = "local"
  config {
    path = "${path.module}/../shared/terraform.tfstate"
  }

  # {
  #   #path = "${path.module}/../shared/terraform.tfstate"
  #   path = "/home/durist/aws-ecs-terraform-artifactory/shared/terraform.tfstate"
  # }

  # backend = "s3"

  # config {
  #   bucket = "myorg-terraform-environmentname"
  #   key    = "shared/terraform.tfstate"
  #   region = "us-east-1"
  # }
}
