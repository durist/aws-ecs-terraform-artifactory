# output "url" {
#   value = "https://pma.${var.cloudflare_domain}"
# }

output "dbusername" {
  value = "${aws_db_instance.db_instance.username}"
}

output "dbpassword" {
  value = "${aws_db_instance.db_instance.password}"
}

/*
 * Fully Qualified Domain Name
 */
output "aws_fqdn" {
  value = "${aws_alb.alb.dns_name}"
}
