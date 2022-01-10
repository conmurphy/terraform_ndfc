resource "dcnm_template" "example_template" {
      name = "conmurph-terraform-bgp"
    	content = <<EOF
        ##template variables
        @(DisplayName="BGP AS #", Description="BGP Autonomous System Number")
        string BGP_AS;
        @(DisplayName="VRF Name", IsVrfName=true)
        string VRF_NAME;
        @(DisplayName="Redist Route Map", Description="Redistribute static route map")
        string REDIST_ROUTE_MAP {
            defaultValue = FABRIC-RMAP-REDIST-SUBNET;
        };
        ##
        ##template content
        router bgp $$BGP_AS$$
        vrf $$VRF_NAME$$
            address-family ipv4 unicast
            redistribute static route-map $$REDIST_ROUTE_MAP$$
            address-family ipv6 unicast
            redistribute static route-map $$REDIST_ROUTE_MAP$$
        ##
	EOF
supported_platforms = ["N9K","N3K"]
template_type="POLICY"
template_content_type="TEMPLATE_CLI"
template_sub_type="VXLAN"
}
