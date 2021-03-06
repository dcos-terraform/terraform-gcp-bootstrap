# Number of Instance
output "num_bootstrap" {
  description = "Specify the amount of bootstrap. You should have at most 1"
  value       = "${var.num_bootstrap}"
}

# Cluster Name
output "name_prefix" {
  description = "Name Prefix"
  value       = "${var.cluster_name}"
}

# Instance Type
output "machine_type" {
  description = "Instance Type"
  value       = "${var.machine_type}"
}

# Element by zone list
output "zone_list" {
  description = "Element by zone list"
  value       = "${var.zone_list}"
}

# Source image to boot from
output "image" {
  description = "Source image to boot from"
  value       = "${var.image}"
}

# Disk Type to Leverage
output "disk_type" {
  description = "Disk Type to Leverage The GCE disk type. Can be either 'pd-ssd', 'local-ssd', or 'pd-standard'. (optional)"
  value       = "${var.disk_type}"
}

# Disk Size in GB
output "disk_size" {
  description = "Disk Size in GB"
  value       = "${var.disk_size}"
}

# Instance Subnetwork Name
output "bootstrap_subnetwork_name" {
  description = "Instance Subnetwork Name"
  value       = "${var.bootstrap_subnetwork_name}"
}

# Customer Provided Userdata
output "user_data" {
  description = "User data to be used on these instances (cloud-init)"
  value       = "${var.user_data}"
}

# SSH Public Key
output "public_ssh_key" {
  description = "SSH Public Key"
  value       = "${var.public_ssh_key}"
}

# Tested DCOS OSes Name
output "dcos_instance_os" {
  description = "Operating system to use. Instead of using your own AMI you could use a provided OS."
  value       = "${var.dcos_instance_os}"
}

# Preemptible Scheduling (bool)
output "scheduling_preemptible" {
  description = "Deploy instance with preemptible scheduling"
  value       = "${var.scheduling_preemptible}"
}

output "instances_self_link" {
  description = "List of instance self links"
  value       = ["${module.dcos-bootstrap-instance.instances_self_link}"]
}

output "public_ip" {
  description = "List of public ip addresses created by this module"
  value       = "${element(concat(module.dcos-bootstrap-instance.public_ips, list("")), 0)}"
}

output "private_ip" {
  description = "List of private ip addresses created by this module"
  value       = "${element(concat(module.dcos-bootstrap-instance.private_ips, list("")), 0)}"
}

output "os_user" {
  description = "The OS user to be used"
  value       = "${module.dcos-bootstrap-instance.ssh_user}"
}

output "prereq-id" {
  description = "Returns the ID of the prereq script (if user_data or ami are not used)"
  value       = "${module.dcos-bootstrap-instance.prereq_id}"
}
