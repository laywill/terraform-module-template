terraform {
  # --------------------------------------------------------------------------------------------------------------------
  # REQUIRE A SPECIFIC TERRAFORM VERSION OR HIGHER
  # --------------------------------------------------------------------------------------------------------------------
  # Define the minimum compatible language version based on syntax being used.
  # Removing the validation completely will yield a version compatible with 0.12.26 as that added support for
  # required_providers with source URLs
  required_version = ">= 0.14.0"
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = ">=1.4.0"
    }
  }
}
