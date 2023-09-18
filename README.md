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

