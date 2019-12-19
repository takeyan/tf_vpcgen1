resource "ibm_is_instance" "takeyan-icp321edge" {
  name    = "takeyan-icp321edge"
  image   = "cfdaf1a0-5350-4350-fcbc-97173b510843" # ubuntu-18.04-amd64
  profile = "bc1-4x16"
  primary_network_interface = { subnet = "${ibm_is_subnet.sn-lon1-takeyan.id}" }
  vpc     = "${ibm_is_vpc.vpc-lon-gen1-takeyan-classic.id}"
  zone    = "eu-gb-1"
  keys    = ["${ibm_is_ssh_key.id-take19may.id}"]
}
