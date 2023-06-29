terraform {
  cloud {
    organization = "samuellee-dev"
    workspaces {
      name = "hcpv-control-group"
    }
  }
}

provider "tfe" {}

provider "vault" {
  address = data.tfe_outputs.tfc-outputs.values.hcp-vault-address
  token   = data.tfe_outputs.tfc-outputs.values.vault-token
}
