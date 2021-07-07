# CVP Ansible Provisioning

Terraform + ansible module to provision CVP on servers, with particular focus on cloud deployments. It's primarily used by [cvp-in-gcp][cvp-in-gcp-url] and [cvp-in-aws][cvp-in-aws-url] and hasn't been tested on standalone deployments.

It works by connecting to a server (or cluster) and installing all necessary CVP packages. It's been designed to be provider-agnostic and reusable.

[cvp-in-gcp-url]: https://gitlab.aristanetworks.com/tac-team/cvp-in-gcp
[cvp-in-aws-url]: https://gitlab.aristanetworks.com/tac-team/cvp-in-aws

<!-- BEGIN_TF_DOCS -->
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cloud_provider"></a> [cloud\_provider](#input\_cloud\_provider) | Cloud provider where the instances are running. Used on provider-specific steps during provisioning. | `string` | n/a | yes |
| <a name="input_cvp_download_token"></a> [cvp\_download\_token](#input\_cvp\_download\_token) | Arista Portal token used to download CVP. May be obtained on https://www.arista.com/en/users/profile under Portal Access. | `string` | n/a | yes |
| <a name="input_cvp_enable_advanced_login_options"></a> [cvp\_enable\_advanced\_login\_options](#input\_cvp\_enable\_advanced\_login\_options) | Whether to enable advanced login options on CVP. | `bool` | `false` | no |
| <a name="input_cvp_ingest_key"></a> [cvp\_ingest\_key](#input\_cvp\_ingest\_key) | Key that will be used to authenticate devices to CVP. | `string` | n/a | yes |
| <a name="input_cvp_install_size"></a> [cvp\_install\_size](#input\_cvp\_install\_size) | CVP installation size. | `string` | `null` | no |
| <a name="input_cvp_k8s_cluster_network"></a> [cvp\_k8s\_cluster\_network](#input\_cvp\_k8s\_cluster\_network) | Internal network that will be used inside the k8s cluster. Applies only to 2021.1.0+. | `string` | n/a | yes |
| <a name="input_cvp_version"></a> [cvp\_version](#input\_cvp\_version) | CVP version to install on the cluster. | `string` | n/a | yes |
| <a name="input_vm"></a> [vm](#input\_vm) | VM configuration. | <pre>list(object({<br>    disk = object({<br>      data = object({<br>        device     = string,<br>        mountpoint = optional(string),<br>        id         = optional(string)<br>      })<br>    }),<br>    ssh = object({<br>      username         = string,<br>      password         = optional(string),<br>      public_key       = optional(string),<br>      public_key_path  = optional(string),<br>      private_key      = string,<br>      private_key_path = string<br>    }),<br>    bootstrap = optional(object({<br>      username         = optional(string),<br>      password         = optional(string),<br>      private_key_path = optional(string)<br>    })),<br>    cpu = object({<br>      number = number,<br>    })<br>    memory = object({<br>      number = number,<br>    }),<br>    network = object({<br>      private = object({<br>        address   = string,<br>        interface = optional(string),<br>        subnet = object({<br>          netmask       = string,<br>          default_route = string<br>        })<br>      }),<br>      public = object({<br>        address = string<br>      })<br>    }),<br>    config = optional(object({<br>      dns      = optional(string),<br>      ntp      = string,<br>      hostname = optional(string)<br>    }))<br>  }))</pre> | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_cluster_node"></a> [cluster\_node](#output\_cluster\_node) | VM configuration. |
| <a name="output_cluster_node_data"></a> [cluster\_node\_data](#output\_cluster\_node\_data) | Data obtained from running instances. |
| <a name="output_cluster_ssh_user"></a> [cluster\_ssh\_user](#output\_cluster\_ssh\_user) | Users that can be used to ssh into the VMs. |
| <a name="output_cvp_ingest_key"></a> [cvp\_ingest\_key](#output\_cvp\_ingest\_key) | Key that will be used to authenticate devices to CVP. |
<!-- END_TF_DOCS -->
