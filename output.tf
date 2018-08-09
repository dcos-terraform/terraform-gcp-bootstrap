# Number of Instance
output "num_bootstraps" {
  value = "${var.num_bootstraps}"
}

# Cluster Name
output "cluster_name" {
  value = "${var.cluster_name}"
}

# Region
output "region" {
  value = "${var.region}"
}

# Instance Type
output "machine_type" {
  value = "${var.machine_type}"
}

# Element by zone list
output "zone_list" {
  value = "${var.zone_list}"
}

# Source image to boot from
output "image" {
  value = "${var.image}"
}

# Disk Type to Leverage
output "disk_type" {
  value = "${var.disk_type}"
}

# Disk Size in GB
output "disk_size" {
  value = "${var.disk_size}"
}

# Instance Subnetwork Name
output "bootstrap_subnetwork_name" {
  value = "${var.bootstrap_subnetwork_name}"
}

# Customer Provided Userdata
output "gcp_user_data" {
  value = "${var.gcp_user_data}"
}

# SSH User
output "ssh_user" {
  value = "${var.ssh_user}"
}

# SSH Public Key
output "public_ssh_key" {
  value = "${var.public_ssh_key}"
}

# Private IP Addresses
output "bootstrap_private_ip_addresses" {
  value = ["${module.dcos-bootstrap-instances.*.network_interface.0.address}"]
}

# Public IP Addresses
output "bootstrap_public_ip_addresses" {
  value = ["${module.dcos-bootstrap-instances.*.network_interface.0.access_config.0.assigned_nat_ip}"]
}
