# add 3 users

resource "aws_iam_user" "example" {
  count = 3
  name  = "test_user.${count.index}"
}
