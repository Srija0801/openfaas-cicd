provider "null" {}

variable "function_name" {
  default = "hello-world"
}

resource "null_resource" "deploy" {
  provisioner "local-exec" {
    command = "faas-cli deploy -f ../stack.yaml"
  }
}

resource "null_resource" "destroy" {
  provisioner "local-exec" {
    when    = destroy
    command = "faas-cli remove ${var.function_name}"
  }
}
