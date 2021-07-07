output "cluster_node" {
  description = "VM configuration."
  value       = var.vm
}
output "cluster_ssh_user" {
  description = "Users that can be used to ssh into the VMs."
  value       = var.vm[*].bootstrap.username
}
output "cvp_ingest_key" {
  description = "Key that will be used to authenticate devices to CVP."
  value       = "key,${var.cvp_ingest_key}"
}
output "cluster_node_data" {
  description = "Data obtained from running instances."
  value       = data.external.cluster_node_data[*]
}