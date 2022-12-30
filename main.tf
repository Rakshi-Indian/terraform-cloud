resource "azurerm_resource_group" "appgrp" {
    name = "${terraform.workspace}-grp"
    location = local.location
}

resource "azurerm_virtual_network" "appnetwork" {
    name = "${terraform.workspace}-network"
    resource_group_name = azurerm_resource_group.appgrp.name
    location = azurerm_resource_group.appgrp.location
    address_space = [ local.virtual_network.address_space ]

    depends_on = [
      azurerm_resource_group.appgrp
    ]
}

resource "azurerm_subnet" "subnet" {
    name = "${terraform.workspace}subnet"
    resource_group_name = azurerm_resource_group.appgrp.name
    virtual_network_name = azurerm_virtual_network.appnetwork.name
    address_prefixes = [cidrsubnet(local.virtual_network.address_space,8,0)]
}



