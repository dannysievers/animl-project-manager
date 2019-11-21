# Set gcp_billing_account and gcp_region at terraform apply time
# Example : terraform apply -var 'gcp_billing_account=billingacountid' -var 'gcp_org_id=organizationid'
# Billing account ID can be obtained with GCP CLI : gcloud beta billing accounts list
# Organization ID can be obtained with GCP CLI : gcloud organizations list
variable "gcp_billing_account_id" {
  type = string
}

variable "gcp_org_id" {
  type = string
}

variable "gcp_region" {
  type = string
  default = "us-central1"
}

variable "gcp_zone" {
  type = string
  default = "us-central1-c"
}