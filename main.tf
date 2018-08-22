provider "google" {}

module "dcos-bootstrap-instances" {
  #  source  = "dcos-terraform/instance/gcp"  #  version = "~> 0.0"

  source = "../terraform-gcp-instance"

  providers = {
    google = "google"
  }

  name_prefix              = "${var.name_prefix}"
  hostname_format          = "${var.hostname_format}"
  num_instances            = "${var.num_bootstrap}"
  image                    = "${var.image}"
  user_data                = "${var.user_data}"
  machine_type             = "${var.machine_type}"
  instance_subnetwork_name = "${var.bootstrap_subnetwork_name}"
  ssh_user                 = "${var.ssh_user}"
  public_ssh_key           = "${var.public_ssh_key}"
  zone_list                = ["${var.zone_list}"]
  disk_type                = "${var.disk_type}"
  disk_size                = "${var.disk_size}"
  tags                     = "${var.tags}"
  dcos_instance_os         = "${var.dcos_instance_os}"
  dcos_version             = "${var.dcos_version}"
}
