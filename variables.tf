variable "user_names" {
  description = "Create IAM users with these names"
  type        = list(string)
  default     = ["jan", "pet", "rona"]
}

# variable "environment" {
#   type = string
# }

variable "instance_defined_type" {
  default = "t2.micro"
}

