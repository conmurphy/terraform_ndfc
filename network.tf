resource "dcnm_network" "terraform_network_1" {
  fabric_name     = "conmurph-dcnm-terraform"
  name            = "terraform_network_1"
  network_id      = "12345"
  display_name    = "terraform_network_1"
  description     = "first network from terraform"
  vrf_name        = dcnm_vrf.terraform_vrf_1.name
  vlan_id         = 2300
  vlan_name       = "vlan1"
  ipv4_gateway    = "192.0.3.1/24"
  mtu             = 1500
  secondary_gw_1  = "192.0.3.1/24"
  arp_supp_flag   = true
  ir_enable_flag  = false
  mcast_group     = "239.1.2.2"
  dhcp_1          = "1.2.3.4"
  dhcp_vrf        = "VRF1012"
  loopback_id     = 100
  tag             = "1400"
  rt_both_flag    = true
  trm_enable_flag = true
  l3_gateway_flag = true
  netflow_flag    = false

  deploy = false
  
}