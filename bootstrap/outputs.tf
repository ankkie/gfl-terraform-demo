# Output values
output "terraform_state_bucket" {
  value       = google_storage_bucket.terraform_state.name
  description = "The name of the GCS bucket for Terraform state"
}

output "service_account_email" {
  value       = google_service_account.terraform.email
  description = "The email of the Terraform service account"
}

output "workload_identity_pool_provider_name" {
  value       = google_iam_workload_identity_pool_provider.github_provider.name
  description = "The full name of the Workload Identity Pool Provider"
}
