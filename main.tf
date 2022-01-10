terraform {
  required_providers {
    dcnm = {
      source = "CiscoDevNet/dcnm"
      version = "1.1.0"
    }
  }
}

provider "dcnm" {
      username = var.ndfc_username
      password = var.ndfc_password
      url      = var.ndfc_url
      insecure = true
      platform = "nd"
}
