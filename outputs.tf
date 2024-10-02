# Outputs file for content
output "catapp_url" {
  value = "http://${azurerm_public_ip.catapp-pip.fqdn}"
}

output "catapp_ip" {
  value = "http://${azurerm_public_ip.catapp-pip.ip_address}"
}


output "resource_count" {
  value = length(data.terraform_remote_state.example.outputs.resources)
}
