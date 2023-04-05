terraform {
  required_providers {
    lacework = {
      source = "lacework/lacework"
      version = "~> 1.0"
    }
  }
}
provider "aws" {
  region = "ap-southeast-2"
}

provider "lacework" {}

# Create AWS SSM Document
module "lacework_aws_ssm_agents_install" {
  source = "lacework/ssm-agent/aws"
  version = "~> 0.8"

  lacework_access_token = "[your_lacework_agent_token]"
  lacework_server_url = "https://auprodn1.agent.lacework.net"
}
