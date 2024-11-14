# ---------------------------------------------------------------------------------------------------------------------
# DEPLOY THIS MODULE
# ---------------------------------------------------------------------------------------------------------------------

module "example_name" {
  # When using these modules you need to use a Git URL with a ref attribute that pins you
  # to a specific version of the modules, such as the following example:
  # source = "git::git@github.com:hashicorp/terraform-aws-consul.git//modules/consul-cluster?ref=v0.0.1"
  source           = "../../"
  example_variable = "hello_world"
}
