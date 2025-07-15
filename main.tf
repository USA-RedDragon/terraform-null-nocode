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

variable "numnum" {
  type = string
}

resource "null_resource" "resource" {
  count = var.num
  triggers = {
    always = timestamp()
  }
}
