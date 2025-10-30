terraform {
  required_providers {
    null = {
      source  = "hashicorp/null"
      version = "3.2.3"
    }
  }
}

variable "num" {
  type = number
}

variable "newthing" {
  type = string
}

output "newthing" {
  value = var.newthing
}

output "newthing_two" {
  value = var.newthing
}

resource "null_resource" "resource" {
  count = var.num
  triggers = {
    always = timestamp()
  }
}
