# Number of Instance
output "num_bootstrap" {
  value = "${var.num_bootstrap}"
}

# Cluster Name
output "name_prefix" {
  value = "${var.name_prefix}"
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
output "user_data" {
  value = "${var.user_data}"
}

# SSH User
output "ssh_user" {
  value = "${module.dcos-bootstrap-instances.ssh_user}"
}

# SSH Public Key
output "public_ssh_key" {
  value = "${var.public_ssh_key}"
}

# Private IP Addresses
output "private_ip" {
  value = ["${module.dcos-bootstrap-instances.private_ips}"]
}

# Public IP Addresses
output "public_ip" {
  value = ["${module.dcos-bootstrap-instances.public_ips}"]
}

# Tested DCOS OSes Name
output "dcos_instance_os" {
  value = "${var.dcos_instance_os}"
}

# Bootstrap Self Link
output "instances_self_link" {
  value = ["${module.dcos-bootstrap-instances.instances_self_link}"]
}

# Bootstrap Target Pool Self link
output "target_pool" {
  value = ["${module.dcos-bootstrap-instances.target_pool}"]
}

# Returns the ID of the prereq script (if user_data are not used)
output "prereq_id" {
  value = "${module.dcos-bootstrap-instances.prereq_id}"
}
