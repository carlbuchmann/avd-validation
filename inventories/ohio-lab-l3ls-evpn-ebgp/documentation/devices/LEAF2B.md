# LEAF2B

# Table of Contents

- [Management](#management)
  - [Management Interfaces](#management-interfaces)
  - [DNS Domain](#dns-domain)
  - [Name Servers](#name-servers)
  - [Domain Lookup](#domain-lookup)
  - [NTP](#ntp)
  - [Management SSH](#management-ssh)
  - [Management GNMI](#management-api-gnmi)
  - [Management API](#Management-api-http)
- [Authentication](#authentication)
  - [Local Users](#local-users)
  - [TACACS Servers](#tacacs-servers)
  - [IP TACACS Source Interfaces](#ip-tacacs-source-interfaces)
  - [RADIUS Servers](#radius-servers)
  - [AAA Server Groups](#aaa-server-groups)
  - [AAA Authentication](#aaa-authentication)
  - [AAA Authorization](#aaa-authorization)
  - [AAA Accounting](#aaa-accounting)
- [Management Security](#management-security)
- [Aliases](#aliases)
- [Monitoring](#monitoring)
  - [TerminAttr Daemon](#terminattr-daemon)
  - [Logging](#logging)
  - [SNMP](#snmp)
  - [SFlow](#sflow)
  - [Hardware Counters](#hardware-counters)
  - [VM Tracer Sessions](#vm-tracer-sessions)
  - [Event Handler](#event-handler)
- [MLAG](#mlag)
- [Spanning Tree](#spanning-tree)
- [Internal VLAN Allocation Policy](#internal-vlan-allocation-policy)
- [VLANs](#vlans)
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
  - [IPv6 Static Routes](#ipv6-static-routes)
  - [Router ISIS](#router-isis)
  - [Router BGP](#router-bgp)
  - [Router BFD](#router-bfd)
- [Multicast](#multicast)
  - [IP IGMP Snooping](#ip-igmp-snooping)
  - [Router Multicast](#router-multicast)
  - [Router PIM Sparse Mode](#router-pim-sparse-mode)
- [Filters](#filters)
  - [Community-lists](#community-lists)
  - [Peer Filters](#peer-filters)
  - [Prefix-lists](#prefix-lists)
  - [IPv6 Prefix-lists](#ipv6-prefix-lists)
  - [Route-maps](#route-maps)
  - [IP Extended Communities](#ip-extended-communities)
- [ACL](#acl)
  - [Standard Access-lists](#standard-access-lists)
  - [Extended Access-lists](#extended-access-lists)
  - [IPv6 Standard Access-lists](#ipv6-standard-access-lists)
  - [IPv6 Extended Access-lists](#ipv6-extended-access-lists)
- [VRF Instances](#vrf-instances)
- [Virtual Source NAT](#virtual-source-nat)
- [Platform](#platform)
- [Router L2 VPN](#router-l2-vpn)
- [IP DHCP Relay](#ip-dhcp-relay)
- [Errdisable](#errdisable)
- [MAC security](#mac-security)

# Management

## Management Interfaces

### Management Interfaces Summary

#### IPv4

| Management Interface | description | VRF | IP Address | Gateway |
| -------------------- | ----------- | --- | ---------- | ------- |
| Management1 | oob_management | MGMT | 192.168.100.34/24 | 192.168.100.1 |

#### IPv6

| Management Interface | description | VRF | IPv6 Address | IPv6 Gateway |
| -------------------- | ----------- | --- | ------------ | ------------ |
| Management1 | oob_management | MGMT | -  | - |

### Management Interfaces Device Configuration

```eos
!
interface Management1
   description oob_management
   vrf MGMT
   ip address 192.168.100.34/24
```

## DNS Domain

### DNS domain: ohvlab.local

### DNS Domain Device Configuration

```eos
dns domain ohvlab.local
!
```

## Domain-list

Domain-list not defined

## Name Servers

### Name Servers Summary

| Name Server | Source VRF |
| ----------- | ---------- |
| 192.168.70.1 | MGMT |

### Name Servers Device Configuration

```eos
ip name-server vrf MGMT 192.168.70.1
```

## Domain Lookup

### DNS Domain Lookup Summary

| Source interface | vrf |
| ---------------- | --- |
| Management1 | MGMT  |

### DNS Domain Lookup Device Configuration

```eos
ip domain lookup vrf MGMT source-interface Management1
```

## NTP

### NTP Summary

- Local Interface: Management1

- VRF: MGMT

| Node | Primary |
| ---- | ------- |
| 192.232.20.87 | true |
| 216.239.35.4 | - |

### NTP Device Configuration

```eos
!
ntp local-interface vrf MGMT Management1
ntp server vrf MGMT 192.232.20.87 prefer
ntp server vrf MGMT 216.239.35.4
```

## PTP

PTP is not defined.

## Management SSH

```eos
!
management ssh
   vrf MGMT
      no shutdown
```

## Management API GNMI

Management API gnmi is not defined

## Management API HTTP

### Management API HTTP Summary

| HTTP | HTTPS |
| ---------- | ---------- |
|  default  |  true  |

### Management API VRF Access

| VRF Name | IPv4 ACL | IPv6 ACL |
| -------- | -------- | -------- |
| MGMT |  -  |  -  |

### Management API HTTP Configuration

```eos
!
management api http-commands
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
| arista | 15 |  -  |
| cvpadmin | 15 |  -  |

### Local Users Device Configuration

```eos
!
username admin privilege 15 role network-admin secret sha512 $6$xTFjLEjlpX/ZvgNp$3ARB.DYuWuJDHzph652u7BAkyQ6jni/NZqKRUQBDJxUL83QuL6/HBY4tL/UXuKr1n00yjwNHtUBn.UbixdLai0
username arista privilege 15 secret sha512 $6$RO7KPjCB0BtlFgcd$/7Lv7Pjj3/OUOIUmqk0NmB8218tnq3Qcjb20pF4Xb3VaoMEuXShWVpFGU.YTYBuQ5.e3SXOLrIEfXpFegrQDX.
username cvpadmin privilege 15 secret sha512 $6$u5wM2GSl324m5EF0$AM98W2MI4ISBciPXm6be8Q3RTykF3dCd2W3btVvhcBBKvKHjfbkeJfesbEWMcrYlbzzZbWdBcxF6U/Pe3xBYF1
```

## TACACS Servers

TACACS servers not defined

## IP TACACS Source Interfaces

IP TACACS source interfaces not defined

## RADIUS Servers

### RADIUS Servers

| VRF | RADIUS Servers |
| --- | ---------------|
|  MGMT | 192.168.100.254 |

### RADIUS Servers Device Configuration

```eos
!
radius-server host 192.168.100.254 vrf MGMT key 7 02090C4D07070D731C1C5958
```

## AAA Server Groups

### AAA Server Groups

| Server Group Name | Type  | VRF | IP address |
| ------------------| ----- | --- | ---------- |
| RADIUS-GROUP | radius |  MGMT | 192.168.100.254 |

### AAA Server Groups Device Configuration

```eos
!
aaa group server radius RADIUS-GROUP
   server 192.168.100.254 vrf MGMT
```

## AAA Authentication

### AAA Authentication Summary

| Type | Sub-type | User Stores |
| ---- | -------- | ---------- |
| Login | default | group RADIUS-GROUP local |

### AAA Authentication Device Configuration

```eos
!
aaa authentication login default group RADIUS-GROUP local
aaa authentication dot1x default group RADIUS-GROUP
!
```

## AAA Authorization

AAA authorization not defined

## AAA Accounting

AAA accounting not defined

# Management Security

Management security not defined

# Aliases


```
alias shimet show bgp evpn route-type imet detail | awk '/for imet/ { print "VNI: " $7 ", VTEP: " $8, "RD: " $11 }'
alias shmacip show bgp evpn route-type mac-ip detail | awk '/for mac-ip/ { if (NF == 11) { print "RD: " $11, "VNI: " $7, "MAC: " $8 } else { print "RD: " $12, "VNI: " $7, "MAC: " $8, "IP: " $9 } }' | sed -e s/,//g
alias shprefix show bgp evpn route-type ip-prefix ipv4 detail | awk '/for ip-prefix/ { print "ip-prefix: " $7, "RD: " $10 }'

!
```
# Monitoring

## TerminAttr Daemon

### TerminAttr Daemon Summary

| CV Compression | Ingest gRPC URL | Ingest Authentication Key | Smash Excludes | Ingest Exclude | Ingest VRF |  NTP VRF | AAA Disabled |
| -------------- | --------------- | ------------------------- | -------------- | -------------- | ---------- | -------- | ------ |
| gzip | 192.168.100.240:9910 | magickey04292020 | ale,flexCounter,hardware,kni,pulse,strata | /Sysdb/cell/1/agent,/Sysdb/cell/2/agent | MGMT | MGMT | False |

### TerminAttr Daemon Device Configuration

```eos
!
daemon TerminAttr
   exec /usr/bin/TerminAttr -ingestgrpcurl=192.168.100.240:9910 -cvcompression=gzip -ingestauth=key,magickey04292020 -smashexcludes=ale,flexCounter,hardware,kni,pulse,strata -ingestexclude=/Sysdb/cell/1/agent,/Sysdb/cell/2/agent -ingestvrf=MGMT -taillogs
   no shutdown
```

## Logging

No logging settings defined

## SNMP

No SNMP settings defined

## SFlow

No sFlow defined

## Hardware Counters

No hardware counters defined

## VM Tracer Sessions

No VM tracer sessions defined

## Event Handler

No event handler defined

# MLAG

## MLAG Summary

| Domain-id | Local-interface | Peer-address | Peer-link |
| --------- | --------------- | ------------ | --------- |
| DC1_LEAF2 | Vlan4094 | 10.255.252.36 | Port-Channel47 |

Dual primary detection is enabled. The detection delay is 5 seconds.

## MLAG Device Configuration

```eos
!
mlag configuration
   domain-id DC1_LEAF2
   local-interface Vlan4094
   peer-address 10.255.252.36
   peer-address heartbeat 192.168.100.33 vrf MGMT
   peer-link Port-Channel47
   dual-primary detection delay 5 action errdisable all-interfaces
   reload-delay mlag 780
   reload-delay non-mlag 1020
```

# Spanning Tree

## Spanning Tree Summary

Mode: mstp

### MSTP Instance and Priority

| Instance | Priority |
| -------- | -------- |
| 0 | 4096 |

## Spanning Tree Device Configuration

```eos
!
spanning-tree mode mstp
no spanning-tree vlan-id 4093-4094
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
| 10 | Ten-opzone | none  |
| 11 | Eleven-opzone | none  |
| 20 | Twenty-web | none  |
| 21 | TwentyOne-web | none  |
| 30 | Thirty-app | none  |
| 31 | ThirtyOne-app | none  |
| 41 | FortyOne-db | none  |
| 3050 | MLAG_iBGP_A | LEAF_PEER_L3  |
| 3150 | MLAG_iBGP_B | LEAF_PEER_L3  |
| 4093 | LEAF_PEER_L3 | LEAF_PEER_L3  |
| 4094 | MLAG_PEER | MLAG  |

## VLANs Device Configuration

```eos
!
vlan 10
   name Ten-opzone
!
vlan 11
   name Eleven-opzone
!
vlan 20
   name Twenty-web
!
vlan 21
   name TwentyOne-web
!
vlan 30
   name Thirty-app
!
vlan 31
   name ThirtyOne-app
!
vlan 41
   name FortyOne-db
!
vlan 3050
   name MLAG_iBGP_A
   trunk group LEAF_PEER_L3
!
vlan 3150
   name MLAG_iBGP_B
   trunk group LEAF_PEER_L3
!
vlan 4093
   name LEAF_PEER_L3
   trunk group LEAF_PEER_L3
!
vlan 4094
   name MLAG_PEER
   trunk group MLAG
```

# Interfaces

## Ethernet Interfaces

### Ethernet Interfaces Summary

#### L2

| Interface | Description | Mode | VLANs | Native VLAN | Trunk Group | Channel-Group |
| --------- | ----------- | ---- | ----- | ----------- | ----------- | ------------- |
| Ethernet10 | HostC_eth1 | *access | *30 | *- | *- | 10 |
| Ethernet11 | HostE_eth1 | *access | *20 | *- | *- | 11 |
| Ethernet12 |  HostD_eth0 | access | 10 | - | - | - |
| Ethernet47 | MLAG_PEER_LEAF2A_Ethernet47 | *trunk | *2-4094 | *- | *['LEAF_PEER_L3', 'MLAG'] | 47 |
| Ethernet48 | MLAG_PEER_LEAF2A_Ethernet48 | *trunk | *2-4094 | *- | *['LEAF_PEER_L3', 'MLAG'] | 47 |

*Inherited from Port-Channel Interface

#### IPv4

| Interface | Description | Type | Channel Group | IP Address | VRF |  MTU | Shutdown | ACL In | ACL Out |
| --------- | ----------- | -----| ------------- | ---------- | ----| ---- | -------- | ------ | ------- |
| Ethernet1 |  P2P_LINK_TO_SPINE1_Ethernet3  |  routed  | - |  10.2.1.77/31  |  default  |  9216  |  -  |  -  |  -  |
| Ethernet2 |  P2P_LINK_TO_SPINE2_Ethernet3  |  routed  | - |  10.2.1.79/31  |  default  |  9216  |  -  |  -  |  -  |

### Ethernet Interfaces Device Configuration

```eos
!
interface Ethernet1
   description P2P_LINK_TO_SPINE1_Ethernet3
   mtu 9216
   no switchport
   ip address 10.2.1.77/31
!
interface Ethernet2
   description P2P_LINK_TO_SPINE2_Ethernet3
   mtu 9216
   no switchport
   ip address 10.2.1.79/31
!
interface Ethernet10
   description HostC_eth1
   channel-group 10 mode active
!
interface Ethernet11
   description HostE_eth1
   channel-group 11 mode active
!
interface Ethernet12
   description HostD_eth0
   switchport access vlan 10
   spanning-tree portfast
!
interface Ethernet47
   description MLAG_PEER_LEAF2A_Ethernet47
   channel-group 47 mode active
!
interface Ethernet48
   description MLAG_PEER_LEAF2A_Ethernet48
   channel-group 47 mode active
```

## Port-Channel Interfaces

### Port-Channel Interfaces Summary

#### L2

| Interface | Description | Type | Mode | VLANs | Native VLAN | Trunk Group | LACP Fallback Timeout | LACP Fallback Mode | MLAG ID | EVPN ESI |
| --------- | ----------- | ---- | ---- | ----- | ----------- | ------------| --------------------- | ------------------ | ------- | -------- |
| Port-Channel10 | HostC_bond0 | switched | access | 30 | - | - | - | - | 10 | - |
| Port-Channel11 | HostE_bond0 | switched | access | 20 | - | - | - | - | 11 | - |
| Port-Channel47 | MLAG_PEER_LEAF2A_Po47 | switched | access | 2-4094 | - | ['LEAF_PEER_L3', 'MLAG'] | - | - | - | - |

### Port-Channel Interfaces Device Configuration

```eos
!
interface Port-Channel10
   description HostC_bond0
   switchport access vlan 30
   mlag 10
   spanning-tree portfast
!
interface Port-Channel11
   description HostE_bond0
   switchport access vlan 20
   mlag 11
   spanning-tree portfast
!
interface Port-Channel47
   description MLAG_PEER_LEAF2A_Po47
   switchport trunk allowed vlan 2-4094
   switchport mode trunk
   switchport trunk group LEAF_PEER_L3
   switchport trunk group MLAG
```

## Loopback Interfaces

### Loopback Interfaces Summary

#### IPv4

| Interface | Description | VRF | IP Address |
| --------- | ----------- | --- | ---------- |
| Loopback0 | EVPN_Overlay_Peering | default | 1.1.1.22/32 |
| Loopback1 | VTEP_VXLAN_Tunnel_Source | default | 2.2.2.21/32 |
| Loopback100 | A_VTEP_DIAGNOSTICS | A | 10.255.1.22/32 |
| Loopback101 | B_VTEP_DIAGNOSTICS | B | 10.255.2.22/32 |

#### IPv6

| Interface | Description | VRF | IPv6 Address |
| --------- | ----------- | --- | ------------ |
| Loopback0 | EVPN_Overlay_Peering | default | - |
| Loopback1 | VTEP_VXLAN_Tunnel_Source | default | - |
| Loopback100 | A_VTEP_DIAGNOSTICS | A | - |
| Loopback101 | B_VTEP_DIAGNOSTICS | B | - |


### Loopback Interfaces Device Configuration

```eos
!
interface Loopback0
   description EVPN_Overlay_Peering
   ip address 1.1.1.22/32
!
interface Loopback1
   description VTEP_VXLAN_Tunnel_Source
   ip address 2.2.2.21/32
!
interface Loopback100
   description A_VTEP_DIAGNOSTICS
   vrf A
   ip address 10.255.1.22/32
!
interface Loopback101
   description B_VTEP_DIAGNOSTICS
   vrf B
   ip address 10.255.2.22/32
```

## VLAN Interfaces

### VLAN Interfaces Summary

| Interface | Description | VRF |  MTU | Shutdown |
| --------- | ----------- | --- | ---- | -------- |
| Vlan10 |  Ten-opzone  |  A  |  -  |  false  |
| Vlan11 |  Eleven-opzone  |  B  |  -  |  false  |
| Vlan20 |  Twenty-web  |  A  |  -  |  false  |
| Vlan21 |  TwentyOne-web  |  B  |  -  |  false  |
| Vlan30 |  Thirty-app  |  A  |  -  |  false  |
| Vlan31 |  ThirtyOne-app  |  B  |  -  |  false  |
| Vlan41 |  FortyOne-db  |  B  |  -  |  false  |
| Vlan3050 |  MLAG_PEER_L3_iBGP: vrf A  |  A  |  -  |  -  |
| Vlan3150 |  MLAG_PEER_L3_iBGP: vrf B  |  B  |  -  |  -  |
| Vlan4093 |  MLAG_PEER_L3_PEERING  |  default  |  9216  |  -  |
| Vlan4094 |  MLAG_PEER  |  default  |  9216  |  -  |

#### IPv4

| Interface | VRF | IP Address | IP Address Virtual | IP Router Virtual Address | VRRP | ACL In | ACL Out |
| --------- | --- | ---------- | ------------------ | ------------------------- | ---- | ------ | ------- |
| Vlan10 |  A  |  -  |  10.10.10.1/24  |  -  |  -  |  -  |  -  |
| Vlan11 |  B  |  -  |  11.11.11.1/24  |  -  |  -  |  -  |  -  |
| Vlan20 |  A  |  -  |  20.20.20.1/24  |  -  |  -  |  -  |  -  |
| Vlan21 |  B  |  -  |  21.21.21.1/24  |  -  |  -  |  -  |  -  |
| Vlan30 |  A  |  -  |  30.30.30.1/24  |  -  |  -  |  -  |  -  |
| Vlan31 |  B  |  -  |  31.31.31.1/24  |  -  |  -  |  -  |  -  |
| Vlan41 |  B  |  -  |  41.41.41.1/24  |  -  |  -  |  -  |  -  |
| Vlan3050 |  A  |  10.255.251.37/31  |  -  |  -  |  -  |  -  |  -  |
| Vlan3150 |  B  |  10.255.251.37/31  |  -  |  -  |  -  |  -  |  -  |
| Vlan4093 |  default  |  10.255.251.37/31  |  -  |  -  |  -  |  -  |  -  |
| Vlan4094 |  default  |  10.255.252.37/31  |  -  |  -  |  -  |  -  |  -  |



### VLAN Interfaces Device Configuration

```eos
!
interface Vlan10
   description Ten-opzone
   vrf A
   ip address virtual 10.10.10.1/24
!
interface Vlan11
   description Eleven-opzone
   vrf B
   ip address virtual 11.11.11.1/24
!
interface Vlan20
   description Twenty-web
   vrf A
   ip address virtual 20.20.20.1/24
!
interface Vlan21
   description TwentyOne-web
   vrf B
   ip address virtual 21.21.21.1/24
!
interface Vlan30
   description Thirty-app
   vrf A
   ip address virtual 30.30.30.1/24
!
interface Vlan31
   description ThirtyOne-app
   vrf B
   ip address virtual 31.31.31.1/24
!
interface Vlan41
   description FortyOne-db
   vrf B
   ip address virtual 41.41.41.1/24
!
interface Vlan3050
   description MLAG_PEER_L3_iBGP: vrf A
   vrf A
   ip address 10.255.251.37/31
!
interface Vlan3150
   description MLAG_PEER_L3_iBGP: vrf B
   vrf B
   ip address 10.255.251.37/31
!
interface Vlan4093
   description MLAG_PEER_L3_PEERING
   mtu 9216
   ip address 10.255.251.37/31
!
interface Vlan4094
   description MLAG_PEER
   mtu 9216
   no autostate
   ip address 10.255.252.37/31
```

## VXLAN Interface

### VXLAN Interface Summary

#### Source Interface: Loopback1

#### UDP port: 4789

#### VLAN to VNI Mappings

| VLAN | VNI |
| ---- | --- |
| 10 | 10010 |
| 11 | 20011 |
| 20 | 10020 |
| 21 | 20021 |
| 30 | 10030 |
| 31 | 20031 |
| 41 | 20041 |

#### VRF to VNI Mappings

| VLAN | VNI |
| ---- | --- |
| A | 51 |
| B | 151 |

### VXLAN Interface Device Configuration

```eos
!
interface Vxlan1
   vxlan source-interface Loopback1
   vxlan virtual-router encapsulation mac-address mlag-system-id
   vxlan udp-port 4789
   vxlan vlan 10 vni 10010
   vxlan vlan 11 vni 20011
   vxlan vlan 20 vni 10020
   vxlan vlan 21 vni 20021
   vxlan vlan 30 vni 10030
   vxlan vlan 31 vni 20031
   vxlan vlan 41 vni 20041
   vxlan vrf A vni 51
   vxlan vrf B vni 151
```

# Routing

## Virtual Router MAC Address


### Virtual Router MAC Address Summary

#### Virtual Router MAC Address: aa:aa:bb:bb:cc:cc

### Virtual Router MAC Address Configuration

```eos
!
ip virtual-router mac-address aa:aa:bb:bb:cc:cc
```

## IP Routing

### IP Routing Summary

| VRF | Routing Enabled |
| --- | --------------- |
| default | true| | A | true |
| B | true |
| MGMT | false |

### IP Routing Device Configuration

```eos
!
ip routing
ip routing vrf A
ip routing vrf B
no ip routing vrf MGMT
```

## IPv6 Routing

### IPv6 Routing Summary

| VRF | Routing Enabled |
| --- | --------------- |
| default | false || A | false |
| B | false |
| MGMT | false |


## Static Routes

### Static Routes Summary

| VRF | Destination Prefix | Next Hop IP             | Exit interface      | Administrative Distance       | Tag               | Route Name                    | Metric         |
| --- | ------------------ | ----------------------- | ------------------- | ----------------------------- | ----------------- | ----------------------------- | -------------- |
| MGMT  | 0.0.0.0/0 |  192.168.100.1  |  -  |  1  |  -  |  -  |  - |

### Static Routes Device Configuration

```eos
!
ip route vrf MGMT 0.0.0.0/0 192.168.100.1
```

## IPv6 Static Routes

IPv6 static routes not defined

## ARP

Global ARP timeout not defined.

## Router ISIS

Router ISIS not defined

## Router BGP

### Router BGP Summary

| BGP AS | Router ID |
| ------ | --------- |
| 65003|  1.1.1.22 |

| BGP Tuning |
| ---------- |
| update wait-install |
| no bgp default ipv4-unicast |
| distance bgp 20 200 200 |
| graceful-restart restart-time 300 |
| graceful-restart |
| maximum-paths 2 ecmp 2 |

### Router BGP Peer Groups

#### EVPN-OVERLAY-PEERS

| Settings | Value |
| -------- | ----- |
| Address Family | evpn |
| Remote_as | 65001 |
| Source | Loopback0 |
| Bfd | true |
| Ebgp multihop | 3 |
| Send community | true |
| Maximum routes | 0 (no limit) |

#### IPv4-UNDERLAY-PEERS

| Settings | Value |
| -------- | ----- |
| Address Family | ipv4 |
| Remote_as | 65001 |
| Send community | true |
| Maximum routes | 12000 |

#### MLAG-IPv4-UNDERLAY-PEER

| Settings | Value |
| -------- | ----- |
| Address Family | ipv4 |
| Remote_as | 65003 |
| Next-hop self | True |
| Send community | true |
| Maximum routes | 12000 |

### BGP Neighbors

| Neighbor | Remote AS |
| -------- | ---------
| 1.1.1.1 | Inherited from peer group EVPN-OVERLAY-PEERS |
| 1.1.1.2 | Inherited from peer group EVPN-OVERLAY-PEERS |
| 10.2.1.76 | Inherited from peer group IPv4-UNDERLAY-PEERS |
| 10.2.1.78 | Inherited from peer group IPv4-UNDERLAY-PEERS |
| 10.255.251.36 | Inherited from peer group MLAG-IPv4-UNDERLAY-PEER |

### Router BGP EVPN Address Family

#### Router BGP EVPN MAC-VRFs

##### VLAN aware bundles

| VLAN Aware Bundle | Route-Distinguisher | Both Route-Target | Import Route Target | Export Route-Target | Redistribute | VLANs |
| ----------------- | ------------------- | ----------------- | ------------------- | ------------------- | ------------ | ----- |
| A | 1.1.1.22:51 |  51:51  |  |  | learned | 10,20,30 |
| B | 1.1.1.22:151 |  151:151  |  |  | learned | 11,21,31,41 |

#### Router BGP EVPN VRFs

| VRF | Route-Distinguisher | Redistribute |
| --- | ------------------- | ------------ |
| A | 1.1.1.22:51 | connected |
| B | 1.1.1.22:151 | connected |

### Router BGP Device Configuration

```eos
!
router bgp 65003
   router-id 1.1.1.22
   update wait-install
   no bgp default ipv4-unicast
   distance bgp 20 200 200
   graceful-restart restart-time 300
   graceful-restart
   maximum-paths 2 ecmp 2
   neighbor EVPN-OVERLAY-PEERS peer group
   neighbor EVPN-OVERLAY-PEERS remote-as 65001
   neighbor EVPN-OVERLAY-PEERS update-source Loopback0
   neighbor EVPN-OVERLAY-PEERS bfd
   neighbor EVPN-OVERLAY-PEERS ebgp-multihop 3
   neighbor EVPN-OVERLAY-PEERS password 7 q+VNViP5i4rVjW1cxFv2wA==
   neighbor EVPN-OVERLAY-PEERS send-community
   neighbor EVPN-OVERLAY-PEERS maximum-routes 0
   neighbor IPv4-UNDERLAY-PEERS peer group
   neighbor IPv4-UNDERLAY-PEERS remote-as 65001
   neighbor IPv4-UNDERLAY-PEERS password 7 AQQvKeimxJu+uGQ/yYvv9w==
   neighbor IPv4-UNDERLAY-PEERS send-community
   neighbor IPv4-UNDERLAY-PEERS maximum-routes 12000
   neighbor MLAG-IPv4-UNDERLAY-PEER peer group
   neighbor MLAG-IPv4-UNDERLAY-PEER remote-as 65003
   neighbor MLAG-IPv4-UNDERLAY-PEER next-hop-self
   neighbor MLAG-IPv4-UNDERLAY-PEER password 7 vnEaG8gMeQf3d3cN6PktXQ==
   neighbor MLAG-IPv4-UNDERLAY-PEER send-community
   neighbor MLAG-IPv4-UNDERLAY-PEER maximum-routes 12000
   neighbor 1.1.1.1 peer group EVPN-OVERLAY-PEERS
   neighbor 1.1.1.2 peer group EVPN-OVERLAY-PEERS
   neighbor 10.2.1.76 peer group IPv4-UNDERLAY-PEERS
   neighbor 10.2.1.78 peer group IPv4-UNDERLAY-PEERS
   neighbor 10.255.251.36 peer group MLAG-IPv4-UNDERLAY-PEER
   redistribute connected route-map RM-CONN-2-BGP
   !
   vlan-aware-bundle A
      rd 1.1.1.22:51
      route-target both 51:51
      redistribute learned
      vlan 10,20,30
   !
   vlan-aware-bundle B
      rd 1.1.1.22:151
      route-target both 151:151
      redistribute learned
      vlan 11,21,31,41
   !
   address-family evpn
      neighbor EVPN-OVERLAY-PEERS activate
      no neighbor IPv4-UNDERLAY-PEERS activate
      no neighbor MLAG-IPv4-UNDERLAY-PEER activate
   !
   address-family ipv4
      no neighbor EVPN-OVERLAY-PEERS activate
      neighbor IPv4-UNDERLAY-PEERS activate
      neighbor MLAG-IPv4-UNDERLAY-PEER activate
   !
   vrf A
      rd 1.1.1.22:51
      route-target import evpn 51:51
      route-target export evpn 51:51
      router-id 1.1.1.22
      neighbor 10.255.251.36 peer group MLAG-IPv4-UNDERLAY-PEER
      redistribute connected
   !
   vrf B
      rd 1.1.1.22:151
      route-target import evpn 151:151
      route-target export evpn 151:151
      router-id 1.1.1.22
      neighbor 10.255.251.36 peer group MLAG-IPv4-UNDERLAY-PEER
      redistribute connected
```

## Router BFD

### Router BFD Multihop Summary

| Interval | Minimum RX | Multiplier |
| -------- | ---------- | ---------- |
| 300 | 300 | 3 |

*No device configuration required - default values

# Multicast

## IP IGMP Snooping

### IP IGMP Snooping Summary

IGMP snooping is globally enabled.


### IP IGMP Snooping Device Configuration

```eos
```


## Router Multicast

Routing multicast not defined

## Router PIM Sparse Mode

Router PIM sparse mode not defined

# Filters

## Community-lists

Community-lists not defined

## Peer Filters

No peer filters defined

## Prefix-lists

### Prefix-lists Summary

#### PL-LOOPBACKS-EVPN-OVERLAY

| Sequence | Action |
| -------- | ------ |
| 10 | permit 1.1.1.0/24 eq 32 |
| 20 | permit 2.2.2.0/24 eq 32 |

### Prefix-lists Device Configuration

```eos
!
ip prefix-list PL-LOOPBACKS-EVPN-OVERLAY
   seq 10 permit 1.1.1.0/24 eq 32
   seq 20 permit 2.2.2.0/24 eq 32
```

## IPv6 Prefix-lists

IPv6 prefix-lists not defined

## Route-maps

### Route-maps Summary

#### RM-CONN-2-BGP

| Sequence | Type | Match and/or Set |
| -------- | ---- | ---------------- |
| 10 | permit | match ip address prefix-list PL-LOOPBACKS-EVPN-OVERLAY |

### Route-maps Device Configuration

```eos
!
route-map RM-CONN-2-BGP permit 10
   match ip address prefix-list PL-LOOPBACKS-EVPN-OVERLAY
```

## IP Extended Communities

No extended community defined

# ACL

## Standard Access-lists

Standard access-lists not defined

## Extended Access-lists

Extended access-lists not defined

## IPv6 Standard Access-lists

IPv6 standard access-lists not defined

## IPv6 Extended Access-lists

IPv6 extended access-lists not defined

# VRF Instances

## VRF Instances Summary

| VRF Name | IP Routing |
| -------- | ---------- |
| A | enabled |
| B | enabled |
| MGMT | disabled |

## VRF Instances Device Configuration

```eos
!
vrf instance A
!
vrf instance B
!
vrf instance MGMT
```

# Virtual Source NAT

## Virtual Source NAT Summary

| Source NAT VRF | Source NAT IP Address |
| -------------- | --------------------- |
| A | 10.255.1.22 |
| B | 10.255.2.22 |

## Virtual Source NAT Configuration

```eos
!
ip address virtual source-nat vrf A address 10.255.1.22
ip address virtual source-nat vrf B address 10.255.2.22
```

# Platform

No platform parameters defined

# Router L2 VPN

### Router L2 VPN

   Selective ARP is enabled.

### Router L2 VPN Device Configuration

```eos
!
router l2-vpn
   arp selective-install
```

# IP DHCP Relay

IP DHCP relay not defined

# Errdisable

Errdisable is not defined.
# MACsec

MACsec not defined

# Custom Templates

No custom templates defined
