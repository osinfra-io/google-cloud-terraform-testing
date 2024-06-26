# Output Values
# https://www.terraform.io/language/values/outputs

output "gke_fleet_host_project_id" {
  description = "The ID of the GKE Fleet Host Project"
  value       = module.gke_fleet_host_project.project_id
}

output "gke_fleet_member_project_id" {
  description = "The ID of the GKE Fleet Service Project"
  value       = module.gke_fleet_member_project.project_id
}

output "default_project_id" {
  description = "The ID of the default Project"
  value       = module.default_project.project_id
}

output "vpc_service_project_ids" {
  description = "The ID of the VPC Service Project"
  value       = [for k in local.vpc_service_projects : k.id]
}
