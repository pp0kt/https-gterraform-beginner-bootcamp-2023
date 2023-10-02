Our root module structure is as follows:

PROJECT_ROOT
│
├── main.tf                 # everything else.
├── variables.tf            # stores the structure of input variables
├── terraform.tfvars        # the data of variables we want to load into our terraform project
├── providers.tf            # defined required providers and their configuration
├── outputs.tf              # stores our outputs
└── README.md               # required for root modules

[Standard Module Strcuture](https://developer.hashicorp.com/terraform/language/modules/develop/structure)

## Terraform and Input Variables


## Terraform Cloud Variables.

[Terraform Variables](https://developer.hashicorp.com/terraform/enterprise/workspaces/variables)

You can add variables under workspace/ variable on https://app.terraform.io/  we added variables for 
AWS_ACCESS_KEY_ID= ,AWS_SECRET_ACCESS_KEY , AWS_REGION and User_uuid

### Loading Terraform Input Variables

We can use the `-var` flag to set an input variable or ovverride a variable in the terraform.tfvars file eg. ` terrafrom -var user_uuid=my_userid`

Terraform.tfvars is the the defaul to load in terraform variables in bulk.
