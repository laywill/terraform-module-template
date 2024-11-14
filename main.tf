# ---------------------------------------------------------------------------------------------------------------------
# DEPLOY A <THING> IN <Provider>
# This module deploys <Thing> in <Platform>.
# Short description of what this module will deploy, and any key variables that affect deployment.
# ---------------------------------------------------------------------------------------------------------------------

# The primary use-case for the null resource is as a do-nothing container
# for arbitrary actions taken by a provisioner.
resource "null_resource" "placeholder" {
  # Changes to any instance of the cluster requires re-provisioning
  triggers = {
  }

  provisioner "remote-exec" {
    inline = [
      "echo hello world"]
  }
}
