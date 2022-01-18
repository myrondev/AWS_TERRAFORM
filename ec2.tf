# resource "aws_instance" "my_server" {
#   ami           = data.aws_ami.web.id
#   instance_type = var.instance_defined_type

#   tags = local.common_tags
# }

# data "aws_ami" "web" {
#   filter {
#     name   = "state"
#     values = ["available"]
#   }

#   filter {
#     name   = "tag:Component"
#     values = ["web"]
#   }

#   most_recent = true
# }





# # variable "instance_defined_type" {
# #   type = string
# # }
