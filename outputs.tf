# Outputs file for content
output "catapp_url" {
  value = "http://${azurerm_public_ip.catapp-pip.fqdn}"
}

output "catapp_ip" {
  value = "http://${azurerm_public_ip.catapp-pip.ip_address}"
}


output "managed_resource_count" {
  description = "The total number of managed resources in the current Terraform state."

  value = length([
    for resource in terraform.state.resources : resource
    if resource.mode == "managed"
  ])
}
