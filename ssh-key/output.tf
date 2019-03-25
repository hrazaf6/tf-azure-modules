output "public_ssh_key" {
  value = "${tls_private_key.default.public_key_openssh}"
}
