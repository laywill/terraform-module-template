package test

import (
    "testing"
    "github.com/gruntwork-io/terratest/modules/terraform"
    "github.com/stretchr/testify/assert"
)

func TestTerraformVpc(t *testing.T) {
    t.Parallel()

    // Configure the Terraform options
    terraformOptions := &terraform.Options{
        // The path to where your Terraform code is located
        TerraformDir: "../examples/example-name",

        // Variables to pass to our Terraform code using -var options
        Vars: map[string]interface{}{
            "example_variable": "example_value",
        },

        // Disable colors in Terraform commands so its easier to parse stdout/stderr
        NoColor: true,
    }

    // Clean up resources with "terraform destroy" at the end of the test
    defer terraform.Destroy(t, terraformOptions)

    // Run "terraform init" and "terraform apply". Fail the test if there are any errors.
    terraform.InitAndApply(t, terraformOptions)

    // Run `terraform output` to get the value of an output variable
    placeholderNullID := terraform.Output(t, terraformOptions, "placeholder_null_id")

    // Verify we're getting back the outputs we expect
    assert.NotNil(t, placeholderNullID)
}
