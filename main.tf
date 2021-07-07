locals {
  vm = length(var.vm) == 1 ? ([
    {
      bootstrap = var.vm[0].bootstrap
      config = {
        dns      = var.vm[0].config.dns != null ? var.vm[0].config.dns : data.external.cluster_node_data[0].result.cvp_dns
        hostname = var.vm[0].config.hostname != null ? var.vm[0].config.hostname : data.external.cluster_node_data[0].result.cvp_hostname
        ntp      = var.vm[0].config.ntp
      }
      cpu = {
        number = var.vm[0].cpu.number
        tier = (
          (var.vm[0].cpu.number >= 8 && var.vm[0].cpu.number < 16) ? 1 : (
            (var.vm[0].cpu.number >= 16 && var.vm[0].cpu.number < 28) ? 2 : (
              var.vm[0].cpu.number >= 28 ? 3 : 0
            )
          )
        )
      }
      disk = var.vm[0].disk
      memory = {
        tier = (
          (var.vm[0].memory.number >= 16384 && var.vm[0].memory.number < 22528) ? 1 : (
            (var.vm[0].memory.number >= 22528 && var.vm[0].memory.number < 53248) ? 2 : (
              var.vm[0].memory.number >= 53248 ? 3 : 0
            )
          )
        )
      }
      network = {
        private = {
          address   = var.vm[0].network.private.address
          subnet    = var.vm[0].network.private.subnet
          interface = var.vm[0].network.private.interface != null ? var.vm[0].network.private.interface : data.external.cluster_node_data[0].result.cvp_net_interface
        }
        public = var.vm[0].network.public
      }
      ssh = var.vm[0].ssh
    }
    ]) : ([
    {
      bootstrap = var.vm[0].bootstrap
      config = {
        dns      = var.vm[0].config.dns != null ? var.vm[0].config.dns : data.external.cluster_node_data[0].result.cvp_dns
        hostname = var.vm[0].config.hostname != null ? var.vm[0].config.hostname : data.external.cluster_node_data[0].result.cvp_hostname
        ntp      = var.vm[0].config.ntp
      }
      cpu = {
        number = var.vm[0].cpu.number
        tier = (
          (var.vm[0].cpu.number >= 8 && var.vm[0].cpu.number < 16) ? 1 : (
            (var.vm[0].cpu.number >= 16 && var.vm[0].cpu.number < 28) ? 2 : (
              var.vm[0].cpu.number >= 28 ? 3 : 0
            )
          )
        )
      }
      disk = var.vm[0].disk
      memory = {
        tier = (
          (var.vm[0].memory.number >= 16384 && var.vm[0].memory.number < 22528) ? 1 : (
            (var.vm[0].memory.number >= 22528 && var.vm[0].memory.number < 53248) ? 2 : (
              var.vm[0].memory.number >= 53248 ? 3 : 0
            )
          )
        )
      }
      network = {
        private = {
          address   = var.vm[0].network.private.address
          subnet    = var.vm[0].network.private.subnet
          interface = var.vm[0].network.private.interface != null ? var.vm[0].network.private.interface : data.external.cluster_node_data[0].result.cvp_net_interface
        }
        public = var.vm[0].network.public
      }
      ssh = var.vm[0].ssh
    },
    {
      bootstrap = var.vm[1].bootstrap
      config = {
        dns      = var.vm[1].config.dns != null ? var.vm[1].config.dns : data.external.cluster_node_data[1].result.cvp_dns
        hostname = var.vm[1].config.hostname != null ? var.vm[1].config.hostname : data.external.cluster_node_data[1].result.cvp_hostname
        ntp      = var.vm[1].config.ntp
      }
      cpu = {
        number = var.vm[1].cpu.number
        tier = (
          (var.vm[1].cpu.number >= 8 && var.vm[1].cpu.number < 16) ? 1 : (
            (var.vm[1].cpu.number >= 16 && var.vm[1].cpu.number < 28) ? 2 : (
              var.vm[1].cpu.number >= 28 ? 3 : 0
            )
          )
        )
      }
      disk = var.vm[1].disk
      memory = {
        tier = (
          (var.vm[1].memory.number >= 16384 && var.vm[1].memory.number < 22528) ? 1 : (
            (var.vm[1].memory.number >= 22528 && var.vm[1].memory.number < 53248) ? 2 : (
              var.vm[1].memory.number >= 53248 ? 3 : 0
            )
          )
        )
      }
      network = {
        private = {
          address   = var.vm[1].network.private.address
          subnet    = var.vm[1].network.private.subnet
          interface = var.vm[1].network.private.interface != null ? var.vm[1].network.private.interface : data.external.cluster_node_data[1].result.cvp_net_interface
        }
        public = var.vm[1].network.public
      }
      ssh = var.vm[1].ssh
    },
    {
      bootstrap = var.vm[2].bootstrap
      config = {
        dns      = var.vm[2].config.dns != null ? var.vm[2].config.dns : data.external.cluster_node_data[2].result.cvp_dns
        hostname = var.vm[2].config.hostname != null ? var.vm[2].config.hostname : data.external.cluster_node_data[2].result.cvp_hostname
        ntp      = var.vm[2].config.ntp
      }
      cpu = {
        number = var.vm[2].cpu.number
        tier = (
          (var.vm[2].cpu.number >= 8 && var.vm[2].cpu.number < 16) ? 1 : (
            (var.vm[2].cpu.number >= 16 && var.vm[2].cpu.number < 28) ? 2 : (
              var.vm[2].cpu.number >= 28 ? 3 : 0
            )
          )
        )
      }
      disk = var.vm[2].disk
      memory = {
        tier = (
          (var.vm[2].memory.number >= 16384 && var.vm[2].memory.number < 22528) ? 1 : (
            (var.vm[2].memory.number >= 22528 && var.vm[2].memory.number < 53248) ? 2 : (
              var.vm[2].memory.number >= 53248 ? 3 : 0
            )
          )
        )
      }
      network = {
        private = {
          address   = var.vm[2].network.private.address
          subnet    = var.vm[2].network.private.subnet
          interface = var.vm[2].network.private.interface != null ? var.vm[2].network.private.interface : data.external.cluster_node_data[2].result.cvp_net_interface
        }
        public = var.vm[2].network.public
      }
      ssh = var.vm[2].ssh
    }
  ])
  cvp = {
    suggested_size = var.cvp_install_size != null ? var.cvp_install_size : (
      (local.vm[0].cpu.tier == 1 && local.vm[0].memory.tier == 1) ? "demo" : (
        (local.vm[0].cpu.tier == 1 && local.vm[0].memory.tier == 2) ? "small" : (
          (local.vm[0].cpu.tier == 2 && local.vm[0].memory.tier == 2) ? "production" : (
            (local.vm[0].cpu.tier == 3 && local.vm[0].memory.tier == 3) ? "prod_wifi" : "demo"
          )
        )
      )
    )

    # TODO: Allow users to specify the Wi-Fi cluster IP address
    wifi_cluster_ip     = local.vm[0].network.private.address
    ntp                 = local.vm[0].config.ntp
    k8s_cluster_network = var.cvp_k8s_cluster_network
  }
}

resource "random_password" "root" {
  length  = 16
  special = true
}
resource "random_id" "prefix" {
  byte_length = 8
}

# TODO: Support multiple DNS servers
data "external" "cluster_node_data" {
  count = length(var.vm)
  program = [
    "ssh",
    "-i", var.vm[count.index].ssh.private_key_path,
    "-tt",
    "-o", "UserKnownHostsFile=/dev/null",
    "-o", "StrictHostKeyChecking=no",
    "${var.vm[count.index].ssh.username}@${var.vm[count.index].network.public.address}",
    "echo", "\"{\\\"cvp_hostname\\\": \\\"$(hostname)\\\", \\\"cvp_net_interface\\\": \\\"$(/sbin/ip a |grep -B2 ${var.vm[count.index].network.private.address}|head -1|cut -f2 -d:|xargs)\\\", \\\"cvp_dns\\\": \\\"$(grep nameserver /etc/resolv.conf |cut -f2 -d' ')\\\"}\""
  ]

  depends_on = [
    null_resource.cluster_node_user,
  ]
}

resource "tls_private_key" "cvp_ssh" {
  algorithm = "RSA"
}

resource "local_file" "cvp_ssh_authorized_keys" {
  filename        = "${path.module}/dynamic/${random_id.prefix.hex}-cvp-id_rsa.pub"
  content         = tls_private_key.cvp_ssh.public_key_openssh
  file_permission = "0644"
}
resource "local_file" "cvp_ssh_private" {
  filename        = "${path.module}/dynamic/${random_id.prefix.hex}-cvp-id_rsa.pem"
  content         = tls_private_key.cvp_ssh.private_key_pem
  file_permission = "0600"
}

resource "local_file" "cvp_config" {
  count = 1
  content = templatefile("${path.module}/templates/cvp-config.tpl", {
    cv_wifi_ha_cluster_ip      = local.cvp.wifi_cluster_ip,
    cvp_cluster_interface      = local.vm[0].network.private.address
    cvp_ingest_key             = var.cvp_ingest_key,
    cvp_k8s_cluster_network    = local.cvp.k8s_cluster_network,
    cvp_major_version          = tonumber(split(".", var.cvp_version)[0]),
    cvp_cluster_nodes_number   = length(var.vm),
    cvp_ntp                    = local.cvp.ntp,
    cvp_size                   = local.cvp.suggested_size,
    cvp_wifi_enabled           = local.cvp.suggested_size == "prod_wifi" ? "yes" : "no",
    cvp_node1_default_route    = local.vm[0].network.private.subnet.default_route,
    cvp_node1_device_interface = local.vm[0].network.private.interface
    cvp_node1_dns              = local.vm[0].config.dns,
    cvp_node1_hostname         = local.vm[0].config.hostname,
    cvp_node1_ip               = local.vm[0].network.private.address,
    cvp_node1_netmask          = local.vm[0].network.private.subnet.netmask,
    cvp_node1_public_ip        = local.vm[0].network.public.address,
    cvp_node2_default_route    = length(var.vm) > 1 ? local.vm[1].network.private.subnet.default_route : null,
    cvp_node2_device_interface = length(var.vm) > 1 ? local.vm[1].network.private.interface : null,
    cvp_node2_dns              = length(var.vm) > 1 ? local.vm[1].config.dns : null,
    cvp_node2_hostname         = length(var.vm) > 1 ? local.vm[1].config.hostname : null,
    cvp_node2_ip               = length(var.vm) > 1 ? local.vm[1].network.private.address : null,
    cvp_node2_netmask          = length(var.vm) > 1 ? local.vm[1].network.private.subnet.netmask : null,
    cvp_node2_public_ip        = length(var.vm) > 1 ? local.vm[1].network.public.address : null,
    cvp_node3_default_route    = length(var.vm) > 2 ? local.vm[2].network.private.subnet.default_route : null,
    cvp_node3_device_interface = length(var.vm) > 2 ? local.vm[2].network.private.interface : null,
    cvp_node3_dns              = length(var.vm) > 2 ? local.vm[2].config.dns : null,
    cvp_node3_hostname         = length(var.vm) > 2 ? local.vm[2].config.hostname : null,
    cvp_node3_ip               = length(var.vm) > 2 ? local.vm[2].network.private.address : null,
    cvp_node3_netmask          = length(var.vm) > 2 ? local.vm[2].network.private.subnet.netmask : null,
    cvp_node3_public_ip        = length(var.vm) > 2 ? local.vm[2].network.public.address : null,
  })
  filename = "${path.module}/dynamic/${random_id.prefix.hex}-cvp-config.yml"
}

# TODO: Use proper user and key (needs fixing the image)
resource "null_resource" "cluster_node_user" {
  count = length(var.vm)

  provisioner "remote-exec" {
    inline = [
      "sudo yum -y install python3",
      "sudo sed -i 's/showfailed//g' /etc/pam.d/postlogin",
      "echo 'PrintLastLog no'|sudo tee -a /etc/ssh/sshd_config && sudo systemctl restart sshd",
      "id -u ${var.vm[count.index].ssh.username} &>/dev/null || sudo useradd -m ${var.vm[count.index].ssh.username} && sudo mkdir -p /home/${var.vm[count.index].ssh.username}/.ssh && echo \"${var.vm[count.index].ssh.public_key}\" |sudo tee /home/${var.vm[count.index].ssh.username}/.ssh/authorized_keys && sudo chown -R ${var.vm[count.index].ssh.username}: /home/${var.vm[count.index].ssh.username} && sudo echo \"${var.vm[count.index].ssh.username} ALL=(ALL:ALL) NOPASSWD:ALL\" > /etc/sudoers.d/cvp-sudoers"
      #"echo ${random_password.root.result}|sudo passwd --stdin root"
    ]

    connection {
      host = var.vm[count.index].network.public.address
      user = var.vm[count.index].bootstrap.username
      #private_key = var.vm[count.index].bootstrap.private_key_path
      password = var.vm[count.index].bootstrap.password
    }
  }
}
resource "null_resource" "cluster_node_ansible" {
  count = length(var.vm)
  triggers = {
    cvp_config = local_file.cvp_config[0].content
  }

  provisioner "local-exec" {
    command = "which nc && (while ! nc -z ${local.vm[count.index].network.public.address} 22; do sleep 5; done); ANSIBLE_CONFIG=${path.module}/ansible.cfg ansible-playbook -i ${local.vm[count.index].network.public.address}, -u ${local.vm[count.index].ssh.username} --private-key ${var.vm[count.index].ssh.private_key_path} --extra-vars \"cloud_provider=${var.cloud_provider} cvp_version=${var.cvp_version} api_token=${var.cvp_download_token} cvp_size=${local.cvp.suggested_size} cvp_enable_advanced_login_options=${var.cvp_enable_advanced_login_options} node_name=node${(count.index + 1)} cvp_config=${abspath(local_file.cvp_config[0].filename)} cvp_authorized_keys=${abspath(local_file.cvp_ssh_authorized_keys.filename)} cvp_private_key=${abspath(local_file.cvp_ssh_private.filename)} data_disk=${local.vm[count.index].disk.data.device} cvp_device_interface=${local.vm[count.index].network.private.interface}\" ${path.module}/ansible/cvp-provision.yaml"
  }

  depends_on = [
    local_file.cvp_config
  ]
}

# data "external" "cvp_token" {
#   program = [ 
#   "ssh",
#   "-tt",
#     "-o UserKnownHostsFile=/dev/null",
#     "-o StrictHostKeyChecking=no",
#   "${local.vm[count.index].ssh.username}@${local.vm[count.index].network.public.address}", "curl -sd '{\"reenrollDevices\":[\"*\"]}' -k https://127.0.0.1:9911/cert/createtoken" ]

#   depends_on = [
#     null_resource.cluster_node_user
#   ]
# }