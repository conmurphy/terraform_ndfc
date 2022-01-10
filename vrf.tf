resource "dcnm_vrf" "terraform_vrf_1" {
  fabric_name             = "conmurph-dcnm-terraform"
  name                    = "terraform_vrf_1"
  segment_id              = "50000"
  description             = "Created from terraform"
  deploy                  = false
  
}