#Terraform Beginner Bootcamp Week 0 

[Terraform Beginner Bootcamp 2023](#terraform-beginner-bootcamp-2023)
   * [Install Terraform CLI.](#install-terraform-cli)
   * [Additional links](#additional-links)
      + [WOrking with Env Vars](#working-with-env-vars)
      + [Setting and unsetting env vars](#setting-and-unsetting-env-vars)
         - [Scoping of ENV Vars](#scoping-of-env-vars)
         - [Persisting ENV Vars in GitPOd](#persisting-env-vars-in-gitpod)
      + [Installing AWS Client](#installing-aws-client)
      + [Find information about the logged in AWS user](#find-information-about-the-logged-in-aws-user)

<!-- TOC end -->

<!-- TOC --><a name="terraform-beginner-bootcamp-2023"></a>
# Terraform Beginner Bootcamp 2023


This project is going to utilise semantic versioning for it's tagging.
[Semantic Versioning Overview](https://semver.org/)


The general format :
**MAJOR.MINOR.PATCH**, eg. `1.0.1`

- **MAJOR** version when you make incompatible API changes
- **MINOR** version when you add functionality in a backward compatible manner
- **PATCH** version when you make backward compatible bug fixes
Additional labels for pre-release and build metadata are available as extensions to the MAJOR.MINOR.PATCH format.

<!-- TOC --><a name="install-terraform-cli"></a>
## Install Terraform CLI.
- [Install Terraform in Linux](https://developer.hashicorp.com/terraform/downloads)

<!-- TOC --><a name="additional-links"></a>
## Additional links
- [Make a bash script executable](https://en.wikipedia.org/wiki/Shebang_(Unix))
- [Check Linux Version](https://www.codingninjas.com/studio/library/how-to-check-os-version-in-linux)
- [Linux File Permissions](https://en.wikipedia.org/wiki/Chmod)
- [GitPod Workspaces](https://www.gitpod.io/docs/configure/workspaces)


<!-- TOC --><a name="working-with-env-vars"></a>
### Working with Env Vars
We can list our all the Environment variables (env vars) using the `env` command
Filtering via Grep eg. `env | grep GITPOD`

<!-- TOC --><a name="setting-and-unsetting-env-vars"></a>
### Setting and unsetting env vars
Via terminal setting: `export Hello=world` and unset via 'unset Hello'
To set within a bashscript without using `EXPORT` :

```sh
#!/usr/bin/env bash
HELLO='world'
echo $HELLO
```
<!-- TOC --><a name="scoping-of-env-vars"></a>
#### Scoping of ENV Vars
When you open up new bash terminals in VSCode it will not be aware of env vars that are already open.  To have persisence you'd need to add to bash profile.

<!-- TOC --><a name="persisting-env-vars-in-gitpod"></a>
#### Persisting ENV Vars in GitPOd
We can persist env vars in GITPOD be storing them in GitPod secrets storage.
```
gp env HELLO=`world`
```

<!-- TOC --><a name="installing-aws-client"></a>
### Installing AWS Client

We need AWS CLI for this project via [`./bin/install_aws_cli`](./bin/install_aws_cli)


[Installing AWS Client for Linux](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html)

<!-- TOC --><a name="find-information-about-the-logged-in-aws-user"></a>
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

#### Terraform Login and Gitpod workspace

It's whack.  Pretty broken, `terraform login` will produce a wysiwig screen.  Press P.  Follow the link and then copy the api token.

Choose the option to print to screen.  When you q out you should be able to paste (work 33% of time)
You can touch and open /home/gitpod/.terraform.d/credentials.tfrc.json format:

`{
  "credentials": {
    "app.terraform.io": {
      "token": "YOurToken"
    }
  }
}`

You can add tokens manually here: https://app.terraform.io/app/settings/tokens?source=terraform-login 


# Table of contents creator
[Markdown TOC Creator](https://derlin.github.io/bitdowntoc/)


