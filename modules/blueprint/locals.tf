locals {
  tags = {
    "CID"         = "${var.metadata["cid"]}"
    "Customer"    = "${var.metadata["customer"]}"
    "Environment" = "${var.metadata["environment"]}"
    "Module"      = "${var.metadata["class"]}"
    "Name"        = "${var.metadata["identifier"]}"
    "Owner"       = "${var.metadata["owner"]}"
    "Project"     = "${var.metadata["project"]}"
    "Provisioner" = "Terraform"
    "Role"        = "blueprint"
  }

  name = "${var.metadata["customer"]}-${var.metadata["class"]}-${var.metadata["environment"]}"
}
