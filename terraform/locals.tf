locals {
  name              = "${var.project_name}-${var.environment}"
  current_time      = formatdate("YYYY-MM-DD-hh-mm", timestamp())
  private_subnet_id = split(",", data.aws_ssm_parameter.private_subnet_ids.value)[0]
}