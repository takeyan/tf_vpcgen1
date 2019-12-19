variable "softlayer_username" {}
variable "softlayer_api_key" {}
variable "ibmcloud_api_key" {}


# Configure the IBM Cloud Provider
provider "ibm" {
  ibmcloud_api_key    = "${var.ibmcloud_api_key}"
  iaas_classic_username = "${var.softlayer_username}"
  iaas_classic_api_key  = "${var.softlayer_api_key}"
  generation = 1
  region = "eu-gb"
}

/*
provider "ibm" {
  softlayer_username = "${var.softlayer_username}"
  softlayer_api_key  = "${var.softlayer_api_key}"
  ibmcloud_api_key   = "${var.ibmcloud_api_key}"
}

provider "cloudflare" {
  email = "${var.cloudflare_username}"
  token = "${var.cloudflare_api_key}"
}
*/
