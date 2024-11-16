# terrform-module-template

From [Hashicorp Terraform Docs](https://developer.hashicorp.com/terraform/tutorials/modules/pattern-module-creation):

> Terraform modules are self-contained pieces of infrastructure-as-code that abstract the underlying complexity of infrastructure deployments. They speed adoption and lower the barrier of entry for Terraform end users who consume pre-built configuration. As a result, they should use coding best practices such as clear organization and the DRY ("Don't Repeat Yourself") principle wherever possible.

This template can be used to create a terraform template, with CI/CD, linting etc already configured, and a file structure ready to populate.

## Badges

[![MIT License](https://img.shields.io/github/license/laywill/terraform-module-template)](https://choosealicense.com/licenses/apache-2.0/)

## Authors

- [@laywill](https://www.github.com/laywill)

## Contributing

Contributions are always welcome!

See `contributing.md` for ways to get started.

Please adhere to this project's `code of conduct`.

## Usage/Examples

See [Examples](./examples/) on how to use this module.

Note: Provider secrets are passed in using environment variables. You will need to set these before terraform will run correctly:

```bash
export AWS_ACCESS_KEY_ID=your_access_key_id
export AWS_SECRET_ACCESS_KEY=your_secret_access_key
export TF_VAR_azure_client_id=your_client_id
export TF_VAR_azure_client_secret=your_client_secret
```

Module creation is documented in the [Hashicorp Terraform Docs](https://developer.hashicorp.com/terraform/tutorials/modules/pattern-module-creation).
