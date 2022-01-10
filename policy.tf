
resource "dcnm_policy" "access_interface_demo" {
    serial_number   =   "9K11B7WX1OS"
    template_name   =   "access_interface"
    template_props  =   {
                            "INTF_NAME" : "Ethernet1/3"
                        }
    description     =   "This is demo policy."
    template_content_type   =   "TEMPLATE_CLI"
    source          =   "Ethernet1/3_FABRIC"
    entity_name     =   "Ethernet1/3"
    entity_type     =   "INTERFACE"
}
