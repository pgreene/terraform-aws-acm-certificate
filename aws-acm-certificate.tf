resource "aws_acm_certificate" "general" {
  domain_name = var.domain_name
  validation_method = var.validation_method
  subject_alternative_names = var.subject_alternative_names

  dynamic options {
    for_each = var.options == null ? [] : tolist([var.options])
    content {
      certificate_transparency_logging_preference = var.certificate_transparency_logging_preference
    }
  }
  tags = var.tags
}
