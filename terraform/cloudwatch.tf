resource "aws_cloudwatch_log_group" "strapi" {
  name              = "/ecs/strapi-task8"
  retention_in_days = 7
}
