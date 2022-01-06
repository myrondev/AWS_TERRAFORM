# add 3 users

# USING COUNT FOR MULTIPLE USERS

# resource "aws_iam_user" "example" {
#   count = length(var.user_names)
#   name  = var.user_names[count.index]
# }

# USING FOR_EACH FOR MULTIPLE USERS (ALWAYS PREFER FOR_EACH)

resource "aws_iam_user" "example" {
  for_each = toset(var.user_names)
  name     = each.value
}
