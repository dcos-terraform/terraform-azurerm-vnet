[![Build Status](https://jenkins-terraform.mesosphere.com/service/dcos-terraform-jenkins/job/dcos-terraform/job/terraform-azurerm-vnet/job/master/badge/icon)](https://jenkins-terraform.mesosphere.com/service/dcos-terraform-jenkins/job/dcos-terraform/job/terraform-azurerm-vnet/job/master/)


## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| hostname_format | Format the hostname inputs are index+1, region, cluster_name | string | `network-%[1]d-%[2]s` | no |
| location | location | string | - | yes |
| name_prefix | Cluster Name | string | - | yes |
| private_cidr | private cidr | string | `10.32.4.0/22` | no |
| public_cidr | public cidr | string | `10.32.0.0/22` | no |
| resource_group_name | resource group name | string | - | yes |
| tags | Add custom tags to all resources | map | `<map>` | no |
| vnet_cidr | vnet cidr | string | `10.32.0.0/16` | no |

## Outputs

| Name | Description |
|------|-------------|
| name | VNet Name |
| name_prefix | Cluster Name |
| private_cidr | Private address prefix |
| private_subnet_id | Private Subnet ID |
| private_subnet_name | Private Subnet Name |
| public_cidr | Public address prefix |
| public_subnet_id | Public Subnet ID |
| public_subnet_name | Public Subnet Name |
| resource_group_name | Resource Group Name |
| vnet_cidr | VNet CIDR |

