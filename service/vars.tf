# variable "aws_region" {}
# variable "aws_access_key_id" {}
# variable "aws_secret_access_key" {}
# variable "cloudflare_email" {}
# variable "cloudflare_token" {}
# variable "cloudflare_domain" {}

variable "cert_domain_name" {
  type = "string"
  default = "dev-artifactory.ucar.edu"
}

variable "db_name" {
  type = "string"
  default = "mydb"
}

variable "db_user" {
  type = "string"
  default = "mydbuser"
}

variable "db_passwd" {
  type = "string"
  default = "mydbpasswd5175"
}
