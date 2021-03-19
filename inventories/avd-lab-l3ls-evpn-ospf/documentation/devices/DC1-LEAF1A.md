# DC1-LEAF1A
# Table of Contents
<!-- toc -->

- [Management](#management)
  - [Management Interfaces](#management-interfaces)
  - [DNS Domain](#dns-domain)
  - [Name Servers](#name-servers)
  - [NTP](#ntp)
  - [Management API HTTP](#management-api-http)
- [Authentication](#authentication)
  - [Local Users](#local-users)
- [Monitoring](#monitoring)
  - [TerminAttr Daemon](#terminattr-daemon)
- [Spanning Tree](#spanning-tree)
  - [Spanning Tree Summary](#spanning-tree-summary)
  - [Spanning Tree Device Configuration](#spanning-tree-device-configuration)
- [Internal VLAN Allocation Policy](#internal-vlan-allocation-policy)
  - [Internal VLAN Allocation Policy Summary](#internal-vlan-allocation-policy-summary)
  - [Internal VLAN Allocation Policy Configuration](#internal-vlan-allocation-policy-configuration)
- [VLANs](#vlans)
  - [VLANs Summary](#vlans-summary)
  - [VLANs Device Configuration](#vlans-device-configuration)
- [Interfaces](#interfaces)
  - [Ethernet Interfaces](#ethernet-interfaces)
  - [Port-Channel Interfaces](#port-channel-interfaces)
  - [Loopback Interfaces](#loopback-interfaces)
  - [VLAN Interfaces](#vlan-interfaces)
  - [VXLAN Interface](#vxlan-interface)
- [Routing](#routing)
  - [Virtual Router MAC Address](#virtual-router-mac-address)
  - [IP Routing](#ip-routing)
  - [IPv6 Routing](#ipv6-routing)
  - [Static Routes](#static-routes)
  - [Router OSPF](#router-ospf)
  - [Router BGP](#router-bgp)
  - [Router BFD](#router-bfd)
- [Multicast](#multicast)
  - [IP IGMP Snooping](#ip-igmp-snooping)
- [Filters](#filters)
- [ACL](#acl)
- [VRF Instances](#vrf-instances)
  - [VRF Instances Summary](#vrf-instances-summary)
  - [VRF Instances Device Configuration](#vrf-instances-device-configuration)

<!-- toc -->
# Management

## Management Interfaces

### Management Interfaces Summary

#### IPv4

| Management Interface | description | Type | VRF | IP Address | Gateway |
| -------------------- | ----------- | ---- | --- | ---------- | ------- |
| Management1 | oob_management | oob | MGMT | 192.168.200.105/24 | 192.168.200.1 |

#### IPv6

| Management Interface | description | Type | VRF | IPv6 Address | IPv6 Gateway |
| -------------------- | ----------- | ---- | --- | ------------ | ------------ |
| Management1 | oob_management | oob | MGMT | -  | - |

### Management Interfaces Device Configuration

```eos
!
interface Management1
   description oob_management
   no shutdown
   vrf MGMT
   ip address 192.168.200.105/24
```

## DNS Domain

### DNS domain: avd-lab.local

### DNS Domain Device Configuration

```eos
!
dns domain avd-lab.local
!
```

## Name Servers

### Name Servers Summary

| Name Server | Source VRF |
| ----------- | ---------- |
| 192.168.200.5 | MGMT |
| 8.8.8.8 | MGMT |

### Name Servers Device Configuration

```eos
ip name-server vrf MGMT 8.8.8.8
ip name-server vrf MGMT 192.168.200.5
```

## NTP

### NTP Summary

- Local Interface: Management1

- VRF: MGMT

| Node | Primary |
| ---- | ------- |
| 0.north-america.pool.ntp.org | true |
| 1.north-america.pool.ntp.org | - |

### NTP Device Configuration

```eos
!
ntp local-interface vrf MGMT Management1
ntp server vrf MGMT 0.north-america.pool.ntp.org prefer
ntp server vrf MGMT 1.north-america.pool.ntp.org
```

## Management API HTTP

### Management API HTTP Summary

| HTTP | HTTPS |
| ---------- | ---------- |
| default | true |

### Management API VRF Access

| VRF Name | IPv4 ACL | IPv6 ACL |
| -------- | -------- | -------- |
| MGMT | - | - |


### Management API HTTP Configuration

```eos
!
management api http-commands
   protocol https
   no shutdown
   !
   vrf MGMT
      no shutdown
```

# Authentication

## Local Users

### Local Users Summary

| User | Privilege | Role |
| ---- | --------- | ---- |
| admin | 15 | network-admin |
| cvpadmin | 15 | network-admin |

### Local Users Device Configuration

```eos
!
username admin privilege 15 role network-admin secret sha512 $6$Df86J4/SFMDE3/1K$Hef4KstdoxNDaami37cBquTWOTplC.miMPjXVgQxMe92.e5wxlnXOLlebgPj8Fz1KO0za/RCO7ZIs4Q6Eiq1g1
username cvpadmin privilege 15 role network-admin secret sha512 $6$rZKcbIZ7iWGAWTUM$TCgDn1KcavS0s.OV8lacMTUkxTByfzcGlFlYUWroxYuU7M/9bIodhRO7nXGzMweUxvbk8mJmQl8Bh44cRktUj.
```

# Monitoring

## TerminAttr Daemon

### TerminAttr Daemon Summary

| CV Compression | Ingest gRPC URL | Ingest Authentication Key | Smash Excludes | Ingest Exclude | Ingest VRF |  NTP VRF | AAA Disabled |
| -------------- | --------------- | ------------------------- | -------------- | -------------- | ---------- | -------- | ------ |
| gzip | 192.168.200.11:9910 | telarista | ale,flexCounter,hardware,kni,pulse,strata | /Sysdb/cell/1/agent,/Sysdb/cell/2/agent | MGMT | MGMT | False |

### TerminAttr Daemon Device Configuration

```eos
!
daemon TerminAttr
   exec /usr/bin/TerminAttr -ingestgrpcurl=192.168.200.11:9910 -cvcompression=gzip -ingestauth=key,telarista -smashexcludes=ale,flexCounter,hardware,kni,pulse,strata -ingestexclude=/Sysdb/cell/1/agent,/Sysdb/cell/2/agent -ingestvrf=MGMT -taillogs
   no shutdown
```

# Spanning Tree

## Spanning Tree Summary

STP mode: **mstp**

### MSTP Instance and Priority

| Instance(s) | Priority |
| -------- | -------- |
| 0 | 4096 |

### Global Spanning-Tree Settings


## Spanning Tree Device Configuration

```eos
!
spanning-tree mode mstp
spanning-tree mst 0 priority 4096
```

# Internal VLAN Allocation Policy

## Internal VLAN Allocation Policy Summary

| Policy Allocation | Range Beginning | Range Ending |
| ------------------| --------------- | ------------ |
| ascending | 1006 | 1199 |

## Internal VLAN Allocation Policy Configuration

```eos
!
vlan internal order ascending range 1006 1199
```

# VLANs

## VLANs Summary

| VLAN ID | Name | Trunk Groups |
| ------- | ---- | ------------ |
| 120 | Tenant_A_WEB_Zone_1 | none  |
| 121 | Tenant_A_WEBZone_2 | none  |
| 130 | Tenant_A_APP_Zone_1 | none  |
| 131 | Tenant_A_APP_Zone_2 | none  |
| 410 | tf_demo_app_1 | none  |
| 411 | tf_demo_app_2 | none  |

## VLANs Device Configuration

```eos
!
vlan 120
   name Tenant_A_WEB_Zone_1
!
vlan 121
   name Tenant_A_WEBZone_2
!
vlan 130
   name Tenant_A_APP_Zone_1
!
vlan 131
   name Tenant_A_APP_Zone_2
!
vlan 410
   name tf_demo_app_1
!
vlan 411
   name tf_demo_app_2
```

# Interfaces

## Ethernet Interfaces

### Ethernet Interfaces Summary

#### L2

| Interface | Description | Mode | VLANs | Native VLAN | Trunk Group | Channel-Group |
| --------- | ----------- | ---- | ----- | ----------- | ----------- | ------------- |
| Ethernet5 |  server01_Eth1 | trunk | 110 | - | - | - |
| Ethernet6 |  server02_Eth1 | trunk | 110 | - | - | - |
| Ethernet7 | server01_Eth4 | *trunk | *110 | *- | *- | 7 |
| Ethernet8 | server01_Eth5 | *trunk | *110 | *- | *- | 7 |

*Inherited from Port-Channel Interface

#### IPv4

| Interface | Description | Type | Channel Group | IP Address | VRF |  MTU | Shutdown | ACL In | ACL Out |
| --------- | ----------- | -----| ------------- | ---------- | ----| ---- | -------- | ------ | ------- |
| Ethernet1 |  P2P_LINK_TO_DC1-SPINE1_Ethernet1  |  routed  | - |  172.31.255.1/31  |  default  |  1500  |  false  |  -  |  -  |
| Ethernet2 |  P2P_LINK_TO_DC1-SPINE2_Ethernet1  |  routed  | - |  172.31.255.3/31  |  default  |  1500  |  false  |  -  |  -  |
| Ethernet3 |  P2P_LINK_TO_DC1-SPINE3_Ethernet1  |  routed  | - |  172.31.255.5/31  |  default  |  1500  |  false  |  -  |  -  |
| Ethernet4 |  P2P_LINK_TO_DC1-SPINE4_Ethernet1  |  routed  | - |  172.31.255.7/31  |  default  |  1500  |  false  |  -  |  -  |

#### OSPF
| Interface | Channel Group | Area | Cost | Mode |
| --------- | ------------- | ---- | ---- |----- |
| Ethernet1 | - | 0.0.0.0 |  -  |  point-to-point  |
| Ethernet2 | - | 0.0.0.0 |  -  |  point-to-point  |
| Ethernet3 | - | 0.0.0.0 |  -  |  point-to-point  |
| Ethernet4 | - | 0.0.0.0 |  -  |  point-to-point  |

### Ethernet Interfaces Device Configuration

```eos
!
interface Ethernet1
   description P2P_LINK_TO_DC1-SPINE1_Ethernet1
   no shutdown
   mtu 1500
   no switchport
   ip address 172.31.255.1/31
   ip ospf network point-to-point
   ip ospf area 0.0.0.0
!
interface Ethernet2
   description P2P_LINK_TO_DC1-SPINE2_Ethernet1
   no shutdown
   mtu 1500
   no switchport
   ip address 172.31.255.3/31
   ip ospf network point-to-point
   ip ospf area 0.0.0.0
!
interface Ethernet3
   description P2P_LINK_TO_DC1-SPINE3_Ethernet1
   no shutdown
   mtu 1500
   no switchport
   ip address 172.31.255.5/31
   ip ospf network point-to-point
   ip ospf area 0.0.0.0
!
interface Ethernet4
   description P2P_LINK_TO_DC1-SPINE4_Ethernet1
   no shutdown
   mtu 1500
   no switchport
   ip address 172.31.255.7/31
   ip ospf network point-to-point
   ip ospf area 0.0.0.0
!
interface Ethernet5
   description server01_Eth1
   no shutdown
   switchport
   switchport trunk allowed vlan 110
   switchport mode trunk
!
interface Ethernet6
   description server02_Eth1
   no shutdown
   switchport
   switchport trunk allowed vlan 110
   switchport mode trunk
!
interface Ethernet7
   description server01_Eth4
   no shutdown
   channel-group 7 mode active
!
interface Ethernet8
   description server01_Eth5
   no shutdown
   channel-group 7 mode active
```

## Port-Channel Interfaces

### Port-Channel Interfaces Summary

#### L2

| Interface | Description | Type | Mode | VLANs | Native VLAN | Trunk Group | LACP Fallback Timeout | LACP Fallback Mode | MLAG ID | EVPN ESI |
| --------- | ----------- | ---- | ---- | ----- | ----------- | ------------| --------------------- | ------------------ | ------- | -------- |
| Port-Channel7 | server01_PortChanne1 | switched | trunk | 110 | - | - | - | - | - | - |

### Port-Channel Interfaces Device Configuration

```eos
!
interface Port-Channel7
   description server01_PortChanne1
   no shutdown
   switchport
   switchport trunk allowed vlan 110
   switchport mode trunk
```

## Loopback Interfaces

### Loopback Interfaces Summary

#### IPv4

| Interface | Description | VRF | IP Address |
| --------- | ----------- | --- | ---------- |
| Loopback0 | EVPN_Overlay_Peering | default | 192.168.255.5/32 |
| Loopback1 | VTEP_VXLAN_Tunnel_Source | default | 192.168.254.5/32 |

#### IPv6

| Interface | Description | VRF | IPv6 Address |
| --------- | ----------- | --- | ------------ |
| Loopback0 | EVPN_Overlay_Peering | default | - |
| Loopback1 | VTEP_VXLAN_Tunnel_Source | default | - |


### Loopback Interfaces Device Configuration

```eos
!
interface Loopback0
   description EVPN_Overlay_Peering
   no shutdown
   ip address 192.168.255.5/32
   ip ospf area 0.0.0.0
!
interface Loopback1
   description VTEP_VXLAN_Tunnel_Source
   no shutdown
   ip address 192.168.254.5/32
   ip ospf area 0.0.0.0
```

## VLAN Interfaces

### VLAN Interfaces Summary

| Interface | Description | VRF |  MTU | Shutdown |
| --------- | ----------- | --- | ---- | -------- |
| Vlan120 |  Tenant_A_WEB_Zone_1  |  Tenant_A_WEB_Zone  |  -  |  false  |
| Vlan121 |  Tenant_A_WEBZone_2  |  Tenant_A_WEB_Zone  |  -  |  false  |
| Vlan130 |  Tenant_A_APP_Zone_1  |  Tenant_A_APP_Zone  |  -  |  false  |
| Vlan131 |  Tenant_A_APP_Zone_2  |  Tenant_A_APP_Zone  |  -  |  false  |
| Vlan410 |  tf_demo_app_1  |  tf_web_zone  |  -  |  false  |
| Vlan411 |  tf_demo_app_2  |  tf_web_zone  |  -  |  false  |

#### IPv4

| Interface | VRF | IP Address | IP Address Virtual | IP Router Virtual Address | VRRP | ACL In | ACL Out |
| --------- | --- | ---------- | ------------------ | ------------------------- | ---- | ------ | ------- |
| Vlan120 |  Tenant_A_WEB_Zone  |  -  |  10.1.20.1/24  |  -  |  -  |  -  |  -  |
| Vlan121 |  Tenant_A_WEB_Zone  |  -  |  10.1.21.1/24  |  -  |  -  |  -  |  -  |
| Vlan130 |  Tenant_A_APP_Zone  |  -  |  10.1.30.1/24  |  -  |  -  |  -  |  -  |
| Vlan131 |  Tenant_A_APP_Zone  |  -  |  10.1.31.1/24  |  -  |  -  |  -  |  -  |
| Vlan410 |  tf_web_zone  |  -  |  10.4.10.1/24  |  -  |  -  |  -  |  -  |
| Vlan411 |  tf_web_zone  |  -  |  10.4.11.1/24  |  -  |  -  |  -  |  -  |



### VLAN Interfaces Device Configuration

```eos
!
interface Vlan120
   description Tenant_A_WEB_Zone_1
   no shutdown
   vrf Tenant_A_WEB_Zone
   ip address virtual 10.1.20.1/24
!
interface Vlan121
   description Tenant_A_WEBZone_2
   no shutdown
   vrf Tenant_A_WEB_Zone
   ip address virtual 10.1.21.1/24
!
interface Vlan130
   description Tenant_A_APP_Zone_1
   no shutdown
   vrf Tenant_A_APP_Zone
   ip address virtual 10.1.30.1/24
!
interface Vlan131
   description Tenant_A_APP_Zone_2
   no shutdown
   vrf Tenant_A_APP_Zone
   ip address virtual 10.1.31.1/24
!
interface Vlan410
   description tf_demo_app_1
   no shutdown
   vrf tf_web_zone
   ip address virtual 10.4.10.1/24
!
interface Vlan411
   description tf_demo_app_2
   no shutdown
   vrf tf_web_zone
   ip address virtual 10.4.11.1/24
```

## VXLAN Interface

### VXLAN Interface Summary

#### Source Interface: Loopback1

#### UDP port: 4789

#### VLAN to VNI Mappings

| VLAN | VNI |
| ---- | --- |
| 120 | 10120 |
| 121 | 10121 |
| 130 | 10130 |
| 131 | 10131 |
| 410 | 40410 |
| 411 | 40411 |

#### VRF to VNI Mappings

| VLAN | VNI |
| ---- | --- |
| Tenant_A_APP_Zone | 12 |
| Tenant_A_WEB_Zone | 11 |
| tf_web_zone | 40 |

### VXLAN Interface Device Configuration

```eos
!
interface Vxlan1
   vxlan source-interface Loopback1
   vxlan udp-port 4789
   vxlan vlan 120 vni 10120
   vxlan vlan 121 vni 10121
   vxlan vlan 130 vni 10130
   vxlan vlan 131 vni 10131
   vxlan vlan 410 vni 40410
   vxlan vlan 411 vni 40411
   vxlan vrf Tenant_A_APP_Zone vni 12
   vxlan vrf Tenant_A_WEB_Zone vni 11
   vxlan vrf tf_web_zone vni 40
```

# Routing

## Virtual Router MAC Address

### Virtual Router MAC Address Summary

#### Virtual Router MAC Address: 00:dc:00:00:00:0a

### Virtual Router MAC Address Configuration

```eos
!
ip virtual-router mac-address 00:dc:00:00:00:0a
```

## IP Routing

### IP Routing Summary

| VRF | Routing Enabled |
| --- | --------------- |
| default | true|| MGMT | false |
| Tenant_A_APP_Zone | true |
| Tenant_A_WEB_Zone | true |
| tf_web_zone | true |

### IP Routing Device Configuration

```eos
!
ip routing
no ip routing vrf MGMT
ip routing vrf Tenant_A_APP_Zone
ip routing vrf Tenant_A_WEB_Zone
ip routing vrf tf_web_zone
```
## IPv6 Routing

### IPv6 Routing Summary

| VRF | Routing Enabled |
| --- | --------------- |
| default | false || MGMT | false |
| Tenant_A_APP_Zone | false |
| Tenant_A_WEB_Zone | false |
| tf_web_zone | false |


## Static Routes

### Static Routes Summary

| VRF | Destination Prefix | Next Hop IP             | Exit interface      | Administrative Distance       | Tag               | Route Name                    | Metric         |
| --- | ------------------ | ----------------------- | ------------------- | ----------------------------- | ----------------- | ----------------------------- | -------------- |
| MGMT  | 0.0.0.0/0 |  192.168.200.1  |  -  |  1  |  -  |  -  |  - |

### Static Routes Device Configuration

```eos
!
ip route vrf MGMT 0.0.0.0/0 192.168.200.1
```

## Router OSPF

### Router OSPF Summary

| Process ID | Router ID | Default Passive Interface | No Passive Interface | BFD | Max LSA | Default Information Originate | Log Adjacency Changes Detail |
| ---------- | --------- | ------------------------- | -------------------- | --- | ------- | ----------------------------- | ---------------------------- |
| 100 | 192.168.255.5 |  enabled   |   Ethernet1 <br> Ethernet2 <br> Ethernet3 <br> Ethernet4 <br>|   enabled   | 12000 |  disabled  |  disabled |


### OSPF Interfaces

| Interface | Area | Cost | Point To Point |
| -------- | -------- | -------- | -------- |
| Ethernet1 | 0.0.0.0 |  -  |  True  |
| Ethernet2 | 0.0.0.0 |  -  |  True  |
| Ethernet3 | 0.0.0.0 |  -  |  True  |
| Ethernet4 | 0.0.0.0 |  -  |  True  |
| Loopback0 | 0.0.0.0 |  -  |  -  |
| Loopback1 | 0.0.0.0 |  -  |  -  |

### Router OSPF Device Configuration

```eos
!
router ospf 100
   router-id 192.168.255.5
   passive-interface default
   no passive-interface Ethernet1
   no passive-interface Ethernet2
   no passive-interface Ethernet3
   no passive-interface Ethernet4
   bfd default
   max-lsa 12000
```

## Router BGP

### Router BGP Summary

| BGP AS | Router ID |
| ------ | --------- |
| 65101|  192.168.255.5 |

| BGP Tuning |
| ---------- |
| no bgp default ipv4-unicast |
| distance bgp 20 200 200 |
| maximum-paths 4 ecmp 4 |

### Router BGP Peer Groups

#### EVPN-OVERLAY-PEERS

| Settings | Value |
| -------- | ----- |
| Address Family | evpn |
| Source | Loopback0 |
| Bfd | true |
| Ebgp multihop | 3 |
| Send community | all |
| Maximum routes | 0 (no limit) |

### BGP Neighbors

| Neighbor | Remote AS | VRF |
| -------- | --------- | --- |
| 192.168.255.1 | 65001 | default |
| 192.168.255.2 | 65001 | default |
| 192.168.255.3 | 65001 | default |
| 192.168.255.4 | 65001 | default |

### Router BGP EVPN Address Family

#### Router BGP EVPN MAC-VRFs

##### VLAN aware bundles

| VLAN Aware Bundle | Route-Distinguisher | Both Route-Target | Import Route Target | Export Route-Target | Redistribute | VLANs |
| ----------------- | ------------------- | ----------------- | ------------------- | ------------------- | ------------ | ----- |
| Tenant_A_APP_Zone | 192.168.255.5:12 |  12:12  |  |  | learned | 130-131 |
| Tenant_A_WEB_Zone | 192.168.255.5:11 |  11:11  |  |  | learned | 120-121 |
| tf_web_zone | 192.168.255.5:40 |  40:40  |  |  | learned | 410-411 |

#### Router BGP EVPN VRFs

| VRF | Route-Distinguisher | Redistribute |
| --- | ------------------- | ------------ |
| Tenant_A_APP_Zone | 192.168.255.5:12 | connected |
| Tenant_A_WEB_Zone | 192.168.255.5:11 | connected |
| tf_web_zone | 192.168.255.5:40 | connected |

### Router BGP Device Configuration

```eos
!
router bgp 65101
   router-id 192.168.255.5
   no bgp default ipv4-unicast
   distance bgp 20 200 200
   maximum-paths 4 ecmp 4
   neighbor EVPN-OVERLAY-PEERS peer group
   neighbor EVPN-OVERLAY-PEERS update-source Loopback0
   neighbor EVPN-OVERLAY-PEERS bfd
   neighbor EVPN-OVERLAY-PEERS ebgp-multihop 3
   neighbor EVPN-OVERLAY-PEERS password 7 q+VNViP5i4rVjW1cxFv2wA==
   neighbor EVPN-OVERLAY-PEERS send-community
   neighbor EVPN-OVERLAY-PEERS maximum-routes 0
   neighbor 192.168.255.1 peer group EVPN-OVERLAY-PEERS
   neighbor 192.168.255.1 remote-as 65001
   neighbor 192.168.255.1 description DC1-SPINE1
   neighbor 192.168.255.2 peer group EVPN-OVERLAY-PEERS
   neighbor 192.168.255.2 remote-as 65001
   neighbor 192.168.255.2 description DC1-SPINE2
   neighbor 192.168.255.3 peer group EVPN-OVERLAY-PEERS
   neighbor 192.168.255.3 remote-as 65001
   neighbor 192.168.255.3 description DC1-SPINE3
   neighbor 192.168.255.4 peer group EVPN-OVERLAY-PEERS
   neighbor 192.168.255.4 remote-as 65001
   neighbor 192.168.255.4 description DC1-SPINE4
   !
   vlan-aware-bundle Tenant_A_APP_Zone
      rd 192.168.255.5:12
      route-target both 12:12
      redistribute learned
      vlan 130-131
   !
   vlan-aware-bundle Tenant_A_WEB_Zone
      rd 192.168.255.5:11
      route-target both 11:11
      redistribute learned
      vlan 120-121
   !
   vlan-aware-bundle tf_web_zone
      rd 192.168.255.5:40
      route-target both 40:40
      redistribute learned
      vlan 410-411
   !
   address-family evpn
      neighbor EVPN-OVERLAY-PEERS activate
   !
   address-family ipv4
      no neighbor EVPN-OVERLAY-PEERS activate
   !
   vrf Tenant_A_APP_Zone
      rd 192.168.255.5:12
      route-target import evpn 12:12
      route-target export evpn 12:12
      router-id 192.168.255.5
      redistribute connected
   !
   vrf Tenant_A_WEB_Zone
      rd 192.168.255.5:11
      route-target import evpn 11:11
      route-target export evpn 11:11
      router-id 192.168.255.5
      redistribute connected
   !
   vrf tf_web_zone
      rd 192.168.255.5:40
      route-target import evpn 40:40
      route-target export evpn 40:40
      router-id 192.168.255.5
      redistribute connected
```

## Router BFD

### Router BFD Multihop Summary

| Interval | Minimum RX | Multiplier |
| -------- | ---------- | ---------- |
| 1200 | 1200 | 3 |

### Router BFD Multihop Device Configuration

```eos
!
router bfd
   multihop interval 1200 min-rx 1200 multiplier 3
```

# Multicast

## IP IGMP Snooping

### IP IGMP Snooping Summary

IGMP snooping is globally enabled.


### IP IGMP Snooping Device Configuration

```eos
```

# Filters

# ACL

# VRF Instances

## VRF Instances Summary

| VRF Name | IP Routing |
| -------- | ---------- |
| MGMT | disabled |
| Tenant_A_APP_Zone | enabled |
| Tenant_A_WEB_Zone | enabled |
| tf_web_zone | enabled |

## VRF Instances Device Configuration

```eos
!
vrf instance MGMT
!
vrf instance Tenant_A_APP_Zone
!
vrf instance Tenant_A_WEB_Zone
!
vrf instance tf_web_zone
```
