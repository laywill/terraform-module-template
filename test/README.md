# Testing with Terratest

Adding a Terratest example to your module can greatly enhance the reliability and maintainability of your Terraform module by ensuring that your infrastructure code works as expected.

[Getting started guide](https://terratest.gruntwork.io/docs/getting-started/quick-start/).

## Configure Dependencies

```bash
 cd test
 go mod init "<MODULE_NAME>"
 go mod tidy
```

## Running

```bash
cd test
go test -v -timeout 30m
```
