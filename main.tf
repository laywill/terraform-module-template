# ---------------------------------------------------------------------------------------------------------------------
# BASIC TERRAFORM EXAMPLE
# This module contains the bare essentails for a Terraform module.
#
# You should update this with a short description of what this module will deploy
# and any key variables that affect deployment.
# ---------------------------------------------------------------------------------------------------------------------

resource "local_file" "example1" {
  content  = "${var.example1} + ${var.example2}"
  filename = "example1.txt"
}

resource "local_file" "example2" {
  content  = var.example2
  filename = "example2.txt"
}
