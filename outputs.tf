
# OUTPUT WHEN USING COUNT
# output "list_of_all_arns" {
#   value       = aws_iam_user.example[*].arn
#   description = "The list of ARNs for all users"
# }
# OUTPUT WHEN USING FOR_EACH

output "list_of_all_users" {
  value = aws_iam_user.example
}
