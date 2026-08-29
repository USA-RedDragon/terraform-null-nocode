variable "name" {
  type = string
}

resource "null_resource" "greeting" {
  triggers = {
    name = var.name
  }
}

output "greeting" {
  value = "hello ${var.name}"
}
