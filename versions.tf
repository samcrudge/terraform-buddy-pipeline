terraform {
  backend "remote" {
    organization = "github-actions-crudge"
    workspaces {
      name = "terraform-buddy-pipeline"
    }
  }
  required_providers {
    buddy = {
      source  = "buddy/buddy"
      version = "1.3.2"
    }
  }
}

provider "buddy" {
  # Configuration options
  token = var.buddy_token

  base_url = var.base_url
  insecure = var.insecure
}
