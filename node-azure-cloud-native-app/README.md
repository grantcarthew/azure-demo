# Azure Cloud Native Application (BETA)

A simple example of a cloud native application using Cosmos DB, Function Apps, and other services.

This repository exists as a tool for learning about the basics of a cloud native application.

Do not use this repository yet. It is early work and is going through changes.

## Requirements

The build and deployment for this web application has been tested on Linux only. Specifically [Debian GNU/Linux](https://www.debian.org/).

Requirements:

* [Debian GNU/Linux](https://www.debian.org/) version 9 was used to build this repository.
* [Node.js](https://nodejs.org/en/download/) version 10 or greater. [A better Linux installer](https://github.com/mklement0/n-install).
* An account with [Azure](https://azure.microsoft.com/en-us/free/).

## Environment Setup

To build and deploy this demonstration webapp, follow these instructions. All commands must be run from the root directory where the LICENSE file is located:

1. Download [Terraform](https://www.terraform.io/) by running the following command:
   * `./tf-download.sh`
1. Configure Azure authentication and authorization by following the [Auth](docs/auth.md) document.
1. Initialize Terraform by running the following command:
   * `./tf-init.sh`
1. Test the cloud provider access by running the following command:
   * `./tf-plan.sh`
