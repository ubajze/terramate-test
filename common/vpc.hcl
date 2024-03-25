terraform {
  source = "../../../modules//vpc"
}

locals {
  account_vars = read_terragrunt_config(find_in_parent_folders("account.hcl"))
  settings     = local.account_vars.locals.settings
}

inputs = {
  name          = local.settings.vpc_name
  cidr          = "192.168.0.0/16"
  number_of_azs = 2
}
