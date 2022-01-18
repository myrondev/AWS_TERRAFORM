# resource "aws_iam_role" "test_role" {

#   count = var.environment == "dev" ? 1 : 0

#   name = "test_role_341"

#   assume_role_policy = jsonencode({
#     Version = "2012-10-17"
#     Statement = [
#       {
#         Action = "sts:AssumeRole"
#         Effect = "Allow"
#         Sid    = ""
#         Principal = {
#           Service = "ec2.amazonaws.com"
#         }
#       },
#     ]
#   })

#   tags = {
#     tag-key = "tag-value"
#   }
# }

# resource "aws_iam_policy" "codebuild" {

#   count = var.environment == "dev" ? 1 : 0

#   name = "new_policy"

#   policy = jsonencode({
#     Version = "2012-10-17"
#     Statement = [
#       {
#         Action   = ["sts:AssumeRole"]
#         Effect   = "Allow"
#         Resource = "arn:aws:iam::511576131877:role/terraform"
#       },
#     ]
#   })
# }



# resource "aws_iam_role_policy_attachment" "admin_attachment" {

#   count = var.environment == "dev" ? 1 : 0


#   role       = aws_iam_role.test_role[0].name
#   policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
# }

# resource "aws_iam_role_policy_attachment" "codebuild" {

#   count = var.environment == "dev" ? 1 : 0


#   role       = aws_iam_role.test_role[0].name
#   policy_arn = aws_iam_policy.codebuild[0].arn
# }
