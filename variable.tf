# Number of Instance
variable "num_bootstraps" {}

# Cluster Name
variable "cluster_name" {}

# Region
variable "region" {}

# Instance Type
variable "machine_type" {}

# Element by zone list
variable "zone_list" {}

# Source image to boot from
variable "image" {}

# Disk Type to Leverage
variable "disk_type" {}

# Disk Size in GB
variable "disk_size" {}

# Instance Subnetwork Name
variable "bootstrap_subnetwork_name" {}

# Customer Provided Userdata
variable "gcp_user_data" {}

# SSH User
variable "ssh_user" {}

# SSH Public Key
variable "public_ssh_key" {}

# Add special tags to the resources created by this module
variable "tags" {
  type    = "list"
  default = []
}

# Format the hostname inputs are index+1, region, cluster_name
variable "hostname_format" {
  default = "%[3]s-bootstraps%[1]d-%[2]s"
}

# Specify the cluster name all resources get named and tagged with
variable "cluster_name" {}

# The operating system to use. Instead of using your own AMI you could use a provided OS.
variable "dcos_instance_os" {
  default = "centos_7.4"
}
