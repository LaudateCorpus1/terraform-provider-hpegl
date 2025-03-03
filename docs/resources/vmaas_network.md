---
# generated by https://github.com/hashicorp/terraform-plugin-docs
page_title: "hpegl_vmaas_network Resource - terraform-provider-hpegl"
subcategory: ""
description: |-
  
---

# hpegl_vmaas_network (Resource)



## Example Usage

```terraform
# (C) Copyright 2021 Hewlett Packard Enterprise Development LP

resource "hpegl_vmaas_network" "test_net" {
  name              = "tf_net_custom"
  cloud_id          = data.hpegl_vmaas_cloud.cloud.id
  group_id          = data.hpegl_vmaas_group.tf_group.id
  type_id           = data.hpegl_vmaas_network_type.custome_net_type.id
  scope_id          = "/infra/sites/default/enforcement-points/default/transport-zones/88cd4dc8-0445-4b8e-b260-0f4cd361f4e1"
  dhcp_server       = true
  description       = "Network created using tf"
  cidr              = "168.72.10.0/18"
  gateway           = "168.72.10.9"
  netmask           = "255.255.255.255"
  active            = true
  parent_network_id = data.hpegl_vmaas_network.nsxt_dhcp.id
}
```

<!-- schema generated by tfplugindocs -->
## Schema

### Required

- **cloud_id** (Number) Cloud ID or the zone ID
- **dhcp_server** (Boolean) DHCP server address
- **name** (String) Name of the network to be created
- **type_id** (Number) Type id for the NSX-T. Use hpegl_vmaas_network_type Data source for retrieving type ID

### Optional

- **active** (Boolean) Denotes the network is active or not
- **appliance_url_proxy_bypass** (String) Addresses of appliances to proxy bypass
- **cidr** (String) CIDR of the network
- **config** (Block Set, Max: 1) Network configuration (see [below for nested schema](#nestedblock--config))
- **description** (String) Description of the network to be created
- **gateway** (String) Gateway address for the network
- **group_id** (Number) ID of the group in which network associated. Please use hpegl_vmaas_group data source to retrieve ID
- **id** (String) The ID of this resource.
- **netmask** (String) Netmask address for the network
- **no_proxy** (String) No proxy IPs/Adrresses
- **parent_network_id** (Number) Parent network ID can be obtained with hpegl_vmaas_network data source/resource. This fieldshould be set only when creating 'Custom Network'.
- **pool_id** (Number) Pool ID can be obtained with hpegl_vmaas_network_pool data source. pool_id will not support with NSX-T segment
- **primary_dns** (String) Primary DNS
- **resource_permission** (Block Set, Max: 1) (see [below for nested schema](#nestedblock--resource_permission))
- **scan_network** (Boolean) Dentes whether scan network
- **scope_id** (String) Scope ID
- **secondary_dns** (String) Secondary DNS

### Read-Only

- **code** (String) network code
- **display_name** (String) Display name of the network
- **external_id** (String) External ID
- **internal_id** (Number) Internal ID
- **status** (String) Status of the network
- **unique_id** (String) Unique ID

<a id="nestedblock--config"></a>
### Nested Schema for `config`

Required:

- **connected_gateway** (String) ID for the gateway connection
- **vlan_id** (String) VLAN ID


<a id="nestedblock--resource_permission"></a>
### Nested Schema for `resource_permission`

Optional:

- **all** (Boolean) Dentes whether provide all permissions
- **sites** (List of Number) List of site id


