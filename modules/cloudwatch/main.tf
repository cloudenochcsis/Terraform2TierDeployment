resource "aws_sns_topic" "alerts" {
  name = "${var.project_name}-ops-alerts"
  tags = {
    Name      = "${var.project_name}-ops-alerts"
    ManagedBy = "Terraform"
  }
}


resource "aws_cloudwatch_metric_alarm" "alb_high_5xx" {
  alarm_name          = "${var.project_name}-alb-high-5xx"
  comparison_operator = "GreaterThanThreshold"
  evaluation_periods  = 2
  metric_name         = "HTTPCode_Target_5XX_Count"
  namespace           = "AWS/ApplicationELB"
  period              = 60
  statistic           = "Sum"
  threshold           = 10
  alarm_description   = "Triggers when ALB target 5XX responses exceed threshold"
  alarm_actions       = [aws_sns_topic.alerts.arn]
}


