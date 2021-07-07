terraform {
  experiments = [module_variable_optional_attrs]
}

variable "cloud_provider" {
  description = "Cloud provider where the instances are running. Used on provider-specific steps during provisioning."
  type        = string
  validation {
    condition     = var.cloud_provider == "gcp" || var.cloud_provider == "aws"
    error_message = "Currently supported cloud providers are either gcp or aws."
  }
}

variable "cvp_version" {
  description = "CVP version to install on the cluster."
  type        = string
}
variable "cvp_download_token" {
  description = "Arista Portal token used to download CVP. May be obtained on https://www.arista.com/en/users/profile under Portal Access."
  type        = string
}
variable "cvp_install_size" {
  description = "CVP installation size."
  type        = string
  default     = null
}
variable "cvp_enable_advanced_login_options" {
  description = "Whether to enable advanced login options on CVP."
  type        = bool
  default     = false
}
variable "cvp_ingest_key" {
  description = "Key that will be used to authenticate devices to CVP."
  type        = string
}
variable "cvp_k8s_cluster_network" {
  description = "Internal network that will be used inside the k8s cluster. Applies only to 2021.1.0+."
  type        = string
}

# Standard VM definition
# vm = {
#   [primary|secondary|tertiary] = {
#     disk = {
#       data = {
#         device     = string
#         mountpoint = string
#         id         = string
#       }
#     }
#     ssh = {
#       username         = string
#       password         = string
#       public_key       = string
#       public_key_path  = string
#       private_key      = string
#       private_key_path = string
#     }
#     bootstrap = {
#       username = string
#       password = string
#     }
#     cpu = {
#       number = number
#       tier   = string
#     }
#     memory = {
#       number = number
#       tier   = string
#     }
#     network = {
#       private = {
#         address   = string
#         interface = string
#         subnet = {
#           netmask       = string
#           default_route = string
#         }
#       }
#       public = {
#         address = string
#       }
#     }
#     config = {
#       dns      = string
#       hostname = string
#       ntp      = string
#     }
#   }
# }
variable "vm" {
  description = "VM configuration."
  type = list(object({
    disk = object({
      data = object({
        device     = string,
        mountpoint = optional(string),
        id         = optional(string)
      })
    }),
    ssh = object({
      username         = string,
      password         = optional(string),
      public_key       = optional(string),
      public_key_path  = optional(string),
      private_key      = string,
      private_key_path = string
    }),
    bootstrap = optional(object({
      username         = optional(string),
      password         = optional(string),
      private_key_path = optional(string)
    })),
    cpu = object({
      number = number,
    })
    memory = object({
      number = number,
    }),
    network = object({
      private = object({
        address   = string,
        interface = optional(string),
        subnet = object({
          netmask       = string,
          default_route = string
        })
      }),
      public = object({
        address = string
      })
    }),
    config = optional(object({
      dns      = optional(string),
      ntp      = string,
      hostname = optional(string)
    }))
  }))
}