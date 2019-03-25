
locals {
  public_key_filename  = "${var.path}/${var.name}.pub"
  private_key_filename = "${var.path}/${var.name}.pem"
}
resource "tls_private_key" "default" {
  algorithm = "RSA"
  rsa_bits  = 2048
}

resource "local_file" "private_key" {
  count    = "${var.path != "" ? 1 : 0}"
  content  = "${tls_private_key.default.private_key_pem}"
  filename = "${local.private_key_filename}"
}

resource "local_file" "public_key" {
  count    = "${var.path != "" ? 1 : 0}"
  content  = "${tls_private_key.default.public_key_openssh}"
  filename = "${local.public_key_filename}"
}

# resource "null_resource" "chmod" {
#   count      = "${var.path != "" ? 1 : 0 }"
#   depends_on = ["local_file.private_key_pem"]

#   triggers {
#     key = "${tls_private_key.default.private_key_pem}"
#   }

#   provisioner "local-exec" {
#     command = "chmod 600 ${local.private_key_filename}"
#   }
# }