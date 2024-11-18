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
  type = number
}

resource "null_resource" "resource" {
  count = var.num
  triggers = {
    always = timestamp()
  }
}

resource "null_resource" "resource2" {
  count = var.numnum
  triggers = {
    always = timestamp()
  }
}
