# CVP Ansible Provisioning

Terraform + ansible module to provision CVP on servers, with particular focus on cloud deployments. It's primarily used by [cvp-in-gcp][cvp-in-gcp-url] and [cvp-in-aws][cvp-in-aws-url] and hasn't been tested on standalone deployments.

It works by connecting to a server (or cluster) and installing all necessary CVP packages. It's been designed to be provider-agnostic and reusable.

[cvp-in-gcp-url]: https://gitlab.aristanetworks.com/tac-team/cvp-in-gcp
[cvp-in-aws-url]: https://gitlab.aristanetworks.com/tac-team/cvp-in-aws

<!-- BEGIN_TF_DOCS -->
<!-- END_TF_DOCS -->
