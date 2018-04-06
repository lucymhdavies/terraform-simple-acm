# Arn of the resulting aws_acm_certificate

output "arn" {
  value = "${aws_acm_certificate.cert.arn}"
}
