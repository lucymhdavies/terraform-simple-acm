# Arn of the resulting aws_acm_certificate

output "arn" {
  value = "${aws_acm_certificate.cert.arn}"

  # TODO: figure out if we can wait for this to be ready somehow
  # For now, terraform apply, then terraform apply again seems to work
}
