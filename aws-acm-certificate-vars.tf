variable "tags" {
  description = "Tags"
  default = ""
}

variable "domain_name" {
  description = "(Required) A domain name for which the certificate should be issued"
  //default = "example.com"
  default = null
}

variable "validation_method" {
  description = " (Required) Which method to use for validation. DNS or EMAIL are valid. NONE can be used for certificates that were imported into ACM and then into Terraform."
  default = "DNS"
}

variable "subject_alternative_names" {
  description = "(Optional) A list of domains that should be SANs in the issued certificate"
  default = null
}

variable "options" {
  //default = {}
  default = null
}

variable "certificate_transparency_logging_preference" {
  default = null
  //default = "ENABLED"
}



// In the options block, below are the following parameters that can be set in your plan file:

/*
Importing an existing certificate
private_key - (Required) The certificate's PEM-formatted private key
certificate_body - (Required) The certificate's PEM-formatted public key
certificate_chain - (Optional) The certificate's PEM-formatted chain
*/

/*
Creating a private CA issued certificate
domain_name - (Required) A domain name for which the certificate should be issued
certificate_authority_arn - (Required) ARN of an ACMPCA
subject_alternative_names - (Optional) A list of domains that should be SANs in the issued certificate
*/

/*
CURRENTLY NOT IN THE SCOPE OF THIS MODULE
Supported nested arguments for the options configuration block:
certificate_transparency_logging_preference - (Optional) Specifies whether certificate details should be added to a certificate transparency log. Valid values are ENABLED or DISABLED. See https://docs.aws.amazon.com/acm/latest/userguide/acm-concepts.html#concept-transparency for more details.
*/