# CI-TOOLS

This scaffold is a collection of scripts to facilitate TLA CI pipeline. It's designed to
work with CI such as GitHub Actions, and provides a Dockerfile to run these steps on your local machine.

## Dockerfile

We've provided a docker image at `insert image here`. This image is built by
the [Dockerfile in this repo](Dockerfile). We'll build and push a new image when there's a new tag pushed into this
repo.

We maintain all versions of tools that we used in [version.env](version.env) file, if you'd like to build the docker image on your machine, please use the following command (need Linux and awk):

```shell
docker build -t localrunner .
```

## Tools We're Using Now (fix versions and automate documentation)

| Name                                                                                      | Latest Version                                                                    |
|-------------------------------------------------------------------------------------------|-----------------------------------------------------------------------------------|
| [Go](https://github.com/golang/go)                			                            | ![](https://img.shields.io/github/v/tag/golang/go)			                    |
| [Python3](https://github.com/golang/go)                			                        | ![](https://img.shields.io/badge/Python-3.10-3776AB.svg?style=flat&logo=python&logoColor=white)			                    |
| [TFLint](https://github.com/terraform-linters/tflint)                                     | ![](https://img.shields.io/github/v/tag/terraform-linters/tflint)                 |
| [HashiCorp Terraform](https://github.com/hashicorp/terraform)                             | ![](https://img.shields.io/github/v/tag/hashicorp/terraform)                      |
| [awscli](https://github.com/hashicorp/terraform)                                          | ![](https://img.shields.io/github/v/tag/hashicorp/terraform)                      |
