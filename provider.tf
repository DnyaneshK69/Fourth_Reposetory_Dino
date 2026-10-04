terraform {
 required_providers {
   azurerm = {
     source = "hashicorp/azurerm"
     version = "=3.0.0" # Specify the version
   }
 }
  backend "azurerm" {
    resource_group_name  = "b18_g72"
    storage_account_name = "adocommon"
    container_name       = "dinocontainer"
    key                  = "keyterraform.tfstate"
  }
}
 


provider "azurerm" {
 features {} # Required block for AzureRM provider
}