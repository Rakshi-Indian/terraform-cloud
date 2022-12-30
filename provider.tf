terraform {
    cloud {
    organization = "Rakshith-k"

    workspaces {
      name = "workspace-dev"
    }
    }
    required_providers {
    azurerm = {
        source = "hashicorp/azurerm"
        version = "3.37.0"
    }
  }
}

provider "azurerm" {
  subscription_id = "ff7904bb-bcc0-4aef-8f22-bbe7d59c566b"
  tenant_id = "8d05d103-5002-4bce-9f2b-f71e142601ac"
  client_id = "596a83df-838a-4b5b-bc61-ff4ecb06da28"
  client_secret = "vOj8Q~JKEu8~6BsnIIMccv7Wzv3p9C1nZdnXHcui"
  features {}  
}