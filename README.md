# Terraform Beginner Bootcamp 2023


This project is goign to utilise semantic versioning for it's tagging.
[Semantic Versioning Overview](https://semver.org/)


The general format :
**MAJOR.MINOR.PATCH**, eg. `1.0.1`

- **MAJOR** version when you make incompatible API changes
- **MINOR** version when you add functionality in a backward compatible manner
- **PATCH** version when you make backward compatible bug fixes
Additional labels for pre-release and build metadata are available as extensions to the MAJOR.MINOR.PATCH format.

## Install Terraform CLI.
- [Install Terraform in Linux](https://developer.hashicorp.com/terraform/downloads)

## Additional links
- [Make a bah script executable](https://en.wikipedia.org/wiki/Shebang_(Unix))
- [Check Linux Version](https://www.codingninjas.com/studio/library/how-to-check-os-version-in-linux)
- [Linux File Permissions](https://en.wikipedia.org/wiki/Chmod)
- [GitPod Workspaces](https://www.gitpod.io/docs/configure/workspaces)


### WOrking with Env Vars
We can list our all the Environment variables (env vars) using the `env` command
Filtering via Grep eg. `env | grep GITPOD`

### Setting and unsetting env vars
Via terminal setting: `export Hello=world` and unset via 'unset Hello'
To set within a bashscript without using `EXPORT` :

```sh
#!/usr/bin/env bash
HELLO='world'
echo $HELLO
```
#### Scoping of ENV Vars
When you open up new bash terminals in VSCode it will not be aware of env vars that are already open.  To have persisence you'd need to add to bash profile.

#### Persisting ENV Vars in GitPOd
We can persist env vars in GITPOD be storing them in GitPod secrets storage.
```
gp env HELLO=`world`
```

### Installing AWS Client

We need AWS CLI for this project via [`./bin/install_aws_cli`](./bin/install_aws_cli)


[Installing AWS Client for Linux](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html)

### Find information about the logged in AWS user
```aws sts get-caller-identity```

On success a Json payload will return, similar to this:

```json
get-caller-identity
{
    "UserId": "AIDAR5LNEMXMIK76QRRNR",
    "Account": "123456789012",
    "Arn": "arn:aws:iam::123456789012:user/terraform-bootcamp"
}
```
These credentials need to be generated from IAM user 
### Setting AWS env vars



## Terraform Basics

Terraform sources their providers and modules from the Terraform registry which is location at [registry.terrafom.io] (https://registry.terraform.io/)

- **Providers** is an interface to APIs that will allow you to create resources in terraform.
[Providers](https://registry.terraform.io/browse/providers)
We used:  [Random](https://registry.terraform.io/providers/hashicorp/random/3.5.1)
- **Modules** are a way to refactor or make large amounts of code re-usable.


### Terraform Console

We can see a list of all the Terraform commands from simply typeing 'terrafom' from the terminal prompt. This is irrespective of the bash process you use.

#### Terraform init

The the start of a new terraform project we will run `terrafom init` to download the binaries that we will be using in the project

#### Terraform Plan

This will generate out a changeset , about the state of our infrastructure and what will be changed.  

#### Terraform Apply

This will run a plan and pass the change set  ie 'plan' to be applied.  There will be a yes/no prompt, to auto approve the use: `terraform apply --auto-approve`

#### Terraform Destroy 

This will destroy resources.

#### Terrafom lock files

`.terraform.lock.hcl` contains the versioning for the providers or modules in in use on the project
Should eb commited to version control system 

#### Terraform state files

`.terraform.tfstate` contains information about the current state of your infrastructure
This file **should not** be committed to version control.  This will contain sensitive data.

`.terraform.tfstate.backup` is the previous version

#### Terraform Directory

`.terraform` directory contains binaries of terrafom providers.
