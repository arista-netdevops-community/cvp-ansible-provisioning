output "cluster_node" {
  value = var.vm
}
output "cluster_ssh_user" {
  value = var.vm[*].bootstrap.username
}
# output "cvp_deviceadd_token" {
#   value = data.external.cvp_token.result
# }
output "cvp_ingest_key" {
  value = "key,${var.cvp_ingest_key}"
}
output "cluster_node_data" {
  value = data.external.cluster_node_data[*]
}