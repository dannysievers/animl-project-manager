module "project" {
  source = "git::https://github.com/dannysievers/gcp-project-manager.git//project"

  project_name       = "go-api-gke"
  billing_account_id = var.gcp_billing_account_id
  org_id             = var.gcp_org_id
  region             = "us-central1"
  gcp_services       = [
    "cloudresourcemanager.googleapis.com",
    "cloudbilling.googleapis.com",
    "compute.googleapis.com",
    "container.googleapis.com",
    "containeranalysis.googleapis.com",
    "containerregistry.googleapis.com",
    "containerscanning.googleapis.com"
  ]
}