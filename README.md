[![Build Status](https://jenkins-terraform.mesosphere.com/service/dcos-terraform-jenkins/buildStatus/icon?job=dcos-terraform%2Fterraform-azurerm-vnet%2Fsupport%252F0.1.x)](https://jenkins-terraform.mesosphere.com/service/dcos-terraform-jenkins/job/dcos-terraform/job/SKELETON/job/support%252F0.1.x/)

Azure DC/OS VNET
==========
This is an module to create a Azure VNET specially used for DC/OS

EXAMPLE
-------

```hcl
module "dcos-vnet" {
  source  = "dcos-terraform/vnet/azurerm"
  version = "~> 0.1.0"

  location            = "West US"
  subnet_range        = "10.32.4.0/22"
  resource_group_name = "test"
  cluster_name        = "my-cluster"
}
```

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| cluster\_name | Name of the DC/OS cluster | string | n/a | yes |
| location | Azure Region | string | n/a | yes |
| resource\_group\_name | Name of the azure resource group | string | n/a | yes |
| subnet\_range | Private IP space to be used in CIDR format | string | `"172.31.0.0/16"` | no |
| tags | Add custom tags to all resources | map | `<map>` | no |

## Outputs

| Name | Description |
|------|-------------|
| subnet\_id | Subnet ID |
| subnet\_name | public subnet name |

