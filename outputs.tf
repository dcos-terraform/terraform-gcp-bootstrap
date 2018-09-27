# Number of Instance
output "num_bootstrap" {
  description = "num bootstrap"
  value = "${var.num_bootstrap}"
}

# Cluster Name
output "name_prefix" {
  description = "Cluster Name"
  value = "${var.name_prefix}"
}

# Instance Type
output "machine_type" {
  description = "machine type"
  value = "${var.machine_type}"
}

# Element by zone list
output "zone_list" {
  description = "zone list"
  value = "${var.zone_list}"
}

# Source image to boot from
output "image" {
  description = "image"
  value = "${var.image}"
}

# Disk Type to Leverage
output "disk_type" {
  description = "Disk Type to Leverage. The GCE disk type. Can be either 'pd-ssd', 'local-ssd', or 'pd-standard'. (optional)"
  value = "${var.disk_type}"
}

# Disk Size in GB
output "disk_size" {
  description = "disk size"
  value = "${var.disk_size}"
}

# Instance Subnetwork Name
output "bootstrap_subnetwork_name" {
  description = "bootstrap subnetwork name"
  value = "${var.bootstrap_subnetwork_name}"
}

# Customer Provided Userdata
output "user_data" {
  description = "User data to be used on these instances (cloud-init)"
  value = "${var.user_data}"
}

# SSH User
output "ssh_user" {
  description = "ssh user"
  value = "${module.dcos-bootstrap-instances.ssh_user}"
}

# SSH Public Key
output "public_ssh_key" {
  description = "public ssh key"
  value = "${var.public_ssh_key}"
}

# Private IP Addresses
output "private_ip" {
  description = "List of private ip addresses created by this module"
  value = ["${module.dcos-bootstrap-instances.private_ips}"]
}

# Public IP Addresses
output "public_ip" {
  description = "List of public ip addresses created by this module"
  value = ["${module.dcos-bootstrap-instances.public_ips}"]
}

# Tested DCOS OSes Name
output "dcos_instance_os" {
  description = "Operating system to use. Instead of using your own AMI you could use a provided OS."
  value = "${var.dcos_instance_os}"
}

# Preemptible Scheduling (bool)
output "scheduling_preemptible" {
  description = "scheduling preemptible"
  value = "${var.scheduling_preemptible}"
}

# Bootstrap Self Link
output "instances_self_link" {
  description = "List of instance self links"
  value = ["${module.dcos-bootstrap-instances.instances_self_link}"]
}

# Returns the ID of the prereq script (if images are not used)
output "prereq_id" {
  description = "prereq id"
  value = "${module.dcos-bootstrap-instances.prereq_id}"
}
