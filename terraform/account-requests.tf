module "account_request_01" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "etechaws+afttest1@gmail.com"
    AccountName               = "afttest1"
    ManagedOrganizationalUnit = "Sandbox (ou-qifn-c3aogld5)" 
    SSOUserEmail              = "etechaws+afttest1@gmail.com"
    SSOUserFirstName          = "test1"
    SSOUserLastName           = "aft"
  }

  account_tags = {
  }

  change_management_parameters = {
    change_requested_by = "AWS Control Tower Lab"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform (AFT)"
  }

  custom_fields = {
    custom1 = "a"
    custom2 = "b"
  }

  #account_customizations_name = "SANDBOX"
}