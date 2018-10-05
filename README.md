[![Build Status](https://jenkins-terraform.mesosphere.com/service/dcos-terraform-jenkins/job/dcos-terraform/job/terraform-azurerm-vnet/job/master/badge/icon)](https://jenkins-terraform.mesosphere.com/service/dcos-terraform-jenkins/job/dcos-terraform/job/terraform-azurerm-vnet/job/master/)

DC/OS VNET
==========
This is an module to create a Azure VNET specially used for DC/OS

EXAMPLE
-------

```hcl
module "dcos-vnet" {
  source  = "dcos-terraform/vnet/azurerm"
  version = "~> 0.1"

  location            = "West US"
  subnet_range        = "10.32.4.0/22"
  resource_group_name = "test"
  cluster_name        = "my-cluster"
}
```


## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| cluster_name | Cluster Name | string | - | yes |
| location | location | string | - | yes |
| resource_group_name | resource group name | string | - | yes |
| subnet_range | vnet cidr | string | `172.31.0.0/16` | no |
| tags | Add custom tags to all resources | map | `<map>` | no |

## Outputs

| Name | Description |
|------|-------------|
| subnet_id | private subnet id |
| subnet_name | public subnet name |

