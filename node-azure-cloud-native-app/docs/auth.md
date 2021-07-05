# Azure Authentication and Authorization Setup

To keep this demonstration simple we are authenticating to Azure using a client secret. Use the portal or CLI and follow the steps on the [Service Principal Client Secret](https://www.terraform.io/docs/providers/azurerm/auth/service_principal_client_secret.html) document to authorize Terraform to have contributor rights in your chosen subscription.

Once you have created the Service Principle, follow these steps to create the environment variable file:

1. Create a new file named ".env" in the root of this repository. It should be in the same directory as the LICENSE file.
1. Ensure the file is using just line feed and not carrage return with line feed (UNIX line endings).
1. Add the required environment variables as stated on the Terraform web page. Use the below example as a guide:

```env
# Example .env file
ARM_CLIENT_ID=6d3d435d-a1a4-40f0-8975-ba56d505bac1
ARM_CLIENT_SECRET=6I0xa/1LS3K036dgX1secglyhHaA7lulUvLukzjDNqs=
ARM_SUBSCRIPTION_ID=7d070ae0-20ed-4d9c-8411-4d64ce9e5b27
ARM_TENANT_ID=976166b2-7d5c-46f9-8e51-bfb6ba7ed97a
```

For reference:

* The `ARM_CLIENT_ID` is called the `Application ID` in the portal for the registered application.
* The `ARM_CLIENT_SECRET` is the registered application keys password value.
* The `ARM_SUBSCRIPTION_ID` can be obtained from the Cost Management + Billing blade.
* The `ARM_TENANT_ID` is the Azure AD `Directory ID` as found under the Properties of Azure AD.

At this point the Azure specific setup is complete. Return to the [README](docs/README.md) document and continue with the setup and deployment.