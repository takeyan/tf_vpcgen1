resource "ibm_is_public_gateway" "pgw-e5e663d0-1bc5-11ea-ad16-bdb14afd07c2" {
  name = "pgw-e5e663d0-1bc5-11ea-ad16-bdb14afd07c2"
  vpc             = "${ibm_is_vpc.vpc-lon-gen1-takeyan-classic.id}"
  zone            = "eu-gb-1"
}
resource "ibm_is_public_gateway" "pgw-f78ad6c0-1bc5-11ea-beb3-4d8e815c5f49" {
  name = "pgw-f78ad6c0-1bc5-11ea-beb3-4d8e815c5f49"
  vpc             = "${ibm_is_vpc.vpc-lon-gen1-takeyan-classic.id}"
  zone            = "eu-gb-2"
}

resource "ibm_is_vpc" "vpc-lon-gen1-takeyan-classic" {
  name = "vpc-lon-gen1-takeyan-classic"
  classic_access = "true"
}

resource "ibm_is_subnet" "sn-lon1-takeyan" {
  name            = "sn-lon1-takeyan"
  vpc             = "${ibm_is_vpc.vpc-lon-gen1-takeyan-classic.id}"
  public_gateway  = "${ibm_is_public_gateway.pgw-e5e663d0-1bc5-11ea-ad16-bdb14afd07c2.id}"
  zone            = "eu-gb-1"
  ipv4_cidr_block = "172.18.0.0/24"
}

resource "ibm_is_subnet" "sn-lon2-takeyan" {
  name            = "sn-lon2-takeyan"
  vpc             = "${ibm_is_vpc.vpc-lon-gen1-takeyan-classic.id}"
  public_gateway  = "${ibm_is_public_gateway.pgw-f78ad6c0-1bc5-11ea-beb3-4d8e815c5f49.id}"
  zone            = "eu-gb-2"
  ipv4_cidr_block = "172.18.64.0/24"
}

resource "ibm_is_ssh_key" "id-take19may" {
  name       = "id-take19may"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC+8vAWTFfIqsuGxTpAYRR9Eg0VCTHp2adbI4ZF9aZm1E/MA/R+HR9ic+wucpXBNWF8TqkPeiLS85uW/Jd4cANDVkYZWKIlxFzjgeCQlXghXdi6aUsz31Omzl0tlS0fBbJCB662hnMS+Ra/iNg7b562KfVQASdOVu4GLLj/2inWg2tERoutcoZ9NC7e1gJ0ei+t5GOT/kpTPz+OrVx0NfLJAHuwLpRpaU+Gj4E1EgOR+ZEwXWK/zy3T3/TnK7BojYyg9BirZ9Bl5C5bBZaK/nVGVNinhvMpruWXGqYLla4kuEAA348K5KS1seCJt5e2VbvhlRnK23wayr2Jw9SNW7Gz root@edgedev4"
}
