output "id" {
    value = aws_acm_certificate.general.id
}

output "arn" {
    value = aws_acm_certificate.general.arn
}

output "domain_name" {
    value = aws_acm_certificate.general.domain_name
}

/*
output "acm_domain_validation_options" {
    value = aws_acm_certificate.general.domain_validation_options
}
*/
