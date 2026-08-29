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

module "greeting" {
  source = "git::https://github.com/USA-RedDragon/terraform-null-nocode.git//modules/greeting?ref=v1.0.0"
  name   = var.newthing
}

output "greeting" {
  value = module.greeting.greeting
}
