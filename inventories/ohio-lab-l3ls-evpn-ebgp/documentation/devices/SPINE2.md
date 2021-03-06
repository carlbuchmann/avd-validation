# SPINE2

# Table of Contents

- [Management](#management)
  - [Management Interfaces](#management-interfaces)
  - [DNS Domain](#dns-domain)
  - [Name Servers](#name-servers)
  - [Domain Lookup](#domain-lookup)
  - [NTP](#ntp)
  - [Management SSH](#management-ssh)
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
  - [Router ISIS](#router-isis)
  - [Router BGP](#router-bgp)
  - [Router BFD](#router-bfd)
- [Multicast](#multicast)
  - [IP IGMP Snooping](#ip-igmp-snooping)
  - [Router Multicast](#router-multicast)
  - [Router PIM Sparse Mode](#router-pim-sparse-mode)
- [Filters](#filters)
  - [Community Lists](#community-lists)
  - [Peer Filters](#peer-filters)
  - [Prefix Lists](#prefix-lists)
  - [IPv6 Prefix Lists](#ipv6-prefix-lists)
  - [Route Maps](#route-maps)
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

# Management

## Management Interfaces

### Management Interfaces Summary

IPv4

| Management Interface | description | VRF | IP Address | Gateway |
| -------------------- | ----------- | --- | ---------- | ------- |
| Management1 | oob_management | MGMT | 192.168.100.35/24 | 192.168.100.1 |

IPv6

| Management Interface | description | VRF | IPv6 Address | IPv6 Gateway |
| -------------------- | ----------- | --- | ------------ | ------------ |
| Management1 | oob_management | MGMT | not configured  | not configured |

### Management Interfaces Device Configuration

```eos
!
interface Management1
   description oob_management
   vrf MGMT
   ip address 192.168.100.35/24
```

## DNS Domain


### DNS domain: ohvlab.local

### DNS Domain Device Configuration

```eos
dns domain ohvlab.local
!
```

## Domain-List

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

Local Interface: Management1

VRF: MGMT


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

## Management SSH


```eos
!
management ssh
   vrf MGMT
      no shutdown
```

# Authentication

## Local Users

### Local Users Summary

| User | Privilege | role |
| ---- | --------- | ---- |
| admin | 15 | network-admin |
| arista | 15 | N/A |
| cvpadmin | 15 | N/A |

### Local Users Device Configuration

```eos
!
username admin privilege 15 role network-admin secret sha512 $6$xTFjLEjlpX/ZvgNp$3ARB.DYuWuJDHzph652u7BAkyQ6jni/NZqKRUQBDJxUL83QuL6/HBY4tL/UXuKr1n00yjwNHtUBn.UbixdLai0
username arista privilege 15 secret sha512 $6$RO7KPjCB0BtlFgcd$/7Lv7Pjj3/OUOIUmqk0NmB8218tnq3Qcjb20pF4Xb3VaoMEuXShWVpFGU.YTYBuQ5.e3SXOLrIEfXpFegrQDX.
username cvpadmin privilege 15 secret sha512 $6$u5wM2GSl324m5EF0$AM98W2MI4ISBciPXm6be8Q3RTykF3dCd2W3btVvhcBBKvKHjfbkeJfesbEWMcrYlbzzZbWdBcxF6U/Pe3xBYF1
```

## TACACS Servers

TACACS servers not configured

## IP TACACS Source Interfaces

IP TACACS source interfaces not defined

## RADIUS Servers

### RADIUS Servers

| VRF | RADIUS Servers |
| --- | ---------------|
|  MGMT | 192.168.100.254 |

### RADUIUS Servers Device Configuration

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
| Login | Default | group RADIUS-GROUP local |

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

Management Security not defined

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

| CV Compression | Ingest gRPC URL | Ingest Authentication Key | Smash Excludes | Ingest Exclude | Ingest VRF |  NTP VRF |
| -------------- | --------------- | ------------------------- | -------------- | -------------- | ---------- | -------- |
| gzip | 192.168.100.240:9910 | magickey04292020 | ale,flexCounter,hardware,kni,pulse,strata | /Sysdb/cell/1/agent,/Sysdb/cell/2/agent | MGMT | MGMT |

### TerminAttr Daemon Device Configuration

```eos
!
daemon TerminAttr
   exec /usr/bin/TerminAttr -ingestgrpcurl=192.168.100.240:9910 -cvcompression=gzip -ingestauth=key,magickey04292020 -smashexcludes=ale,flexCounter,hardware,kni,pulse,strata -ingestexclude=/Sysdb/cell/1/agent,/Sysdb/cell/2/agent -ingestvrf=MGMT -taillogs
   no shutdown
```

## Logging

No logging settings defined

## SFlow

No sFlow defined

## Hardware Counters


No Hardware Counters defined

## VM Tracer Sessions

No VM tracer session defined

## Event Handler

No Event Handler Defined

# MLAG

MLAG not defined

# Spanning Tree

### Spanning Tree Summary

Mode: none


### Spanning Tree Device Configuration

```eos
!
spanning-tree mode none
```

# Internal VLAN Allocation Policy

### Internal VLAN Allocation Policy Summary

| Policy Allocation | Range Beginning | Range Ending |
| ------------------| --------------- | ------------ |
| ascending | 1006 | 1199 |

### Internal VLAN Allocation Policy Configuration

```eos
!
vlan internal order ascending range 1006 1199
```

# VLANs

No VLANs defined

# Interfaces

## Ethernet Interfaces

### Ethernet Interfaces Summary

| Interface | Description | MTU | Type | Mode | Allowed VLANs (Trunk) | Trunk Group | VRF | IP Address | Channel-Group ID | Channel-Group Type |
| --------- | ----------- | --- | ---- | ---- | --------------------- | ----------- | --- | ---------- | ---------------- | ------------------ |
| Ethernet1 | P2P_LINK_TO_LEAF1A_Ethernet2 | 9216 | routed | access | - | - | - | 10.2.1.18/31 | - | - |
| Ethernet2 | P2P_LINK_TO_LEAF2A_Ethernet2 | 9216 | routed | access | - | - | - | 10.2.1.74/31 | - | - |
| Ethernet3 | P2P_LINK_TO_LEAF2B_Ethernet2 | 9216 | routed | access | - | - | - | 10.2.1.78/31 | - | - |

*Inherited from Port-Channel Interface

### Ethernet Interfaces Device Configuration

```eos
!
interface Ethernet1
   description P2P_LINK_TO_LEAF1A_Ethernet2
   mtu 9216
   no switchport
   ip address 10.2.1.18/31
!
interface Ethernet2
   description P2P_LINK_TO_LEAF2A_Ethernet2
   mtu 9216
   no switchport
   ip address 10.2.1.74/31
!
interface Ethernet3
   description P2P_LINK_TO_LEAF2B_Ethernet2
   mtu 9216
   no switchport
   ip address 10.2.1.78/31
```

## Port-Channel Interfaces

No Port-Channels defined

## Loopback Interfaces

### Loopback Interfaces Summary

IPv4

| Interface | Description | VRF | IP Address |
| --------- | ----------- | --- | ---------- |
| Loopback0 | EVPN_Overlay_Peering | Global Routing Table | 1.1.1.2/32 |

IPv6

| Interface | Description | VRF | IPv6 Address |
| --------- | ----------- | --- | ------------ |
| Loopback0 | EVPN_Overlay_Peering | Global Routing Table | - |

### Loopback Interfaces Device Configuration

```eos
!
interface Loopback0
   description EVPN_Overlay_Peering
   ip address 1.1.1.2/32
```

## VLAN Interfaces

No VLAN interfaces defined

## VXLAN Interface

No VXLAN interface defined

# Routing

## Virtual Router MAC Address

IP Virtual Router MAC Address is not defined

## IP Routing

### IP Routing Summary

| VRF | Routing Enabled |
| --- | --------------- |
| default |  True | 
| MGMT | False |

### IP Routing Device Configuration

```eos
!
ip routing
no ip routing vrf MGMT
```
## IPv6 Routing

### IPv6 Routing Summary

| VRF | Routing Enabled |
| --- | --------------- |
| default |  False | 
| MGMT | False |
 


## Static Routes

### Static Routes Summary

| VRF | Destination Prefix | Fowarding Address / Interface |
| --- | ------------------ | ----------------------------- |
| MGMT | 0.0.0.0/0 | 192.168.100.1 |

### Static Routes Device Configuration

```eos
!
ip route vrf MGMT 0.0.0.0/0 192.168.100.1
```

## Router ISIS

Router ISIS not defined

# Router BGP

### Router BGP Summary

| BGP AS | Router ID |
| ------ | --------- |
| 65001|  1.1.1.2 |


| BGP Tuning |
| ---------- |
| update wait-for-convergence |
| update wait-install |
| no bgp default ipv4-unicast |
| distance bgp 20 200 200 |
| graceful-restart restart-time 300 |
| graceful-restart |
| maximum-paths 2 ecmp 2 |

### Router BGP Peer Groups

**EVPN-OVERLAY-PEERS**:

| Settings | Value |
| -------- | ----- |
| Address Family | evpn |
| next-hop unchanged | true |
| source | Loopback0 |
| bfd | true |
| ebgp multihop | 3 |
| send community | true |
| maximum routes | 0 (no limit) |

**IPv4-UNDERLAY-PEERS**:

| Settings | Value |
| -------- | ----- |
| Address Family | ipv4 |
| maximum routes | 12000 |

### BGP Neighbors

| Neighbor | Remote AS |
| -------- | ---------
| 1.1.1.7 | 65002 |
| 1.1.1.21 | 65003 |
| 1.1.1.22 | 65003 |
| 10.2.1.19 | 65002 |
| 10.2.1.75 | 65003 |
| 10.2.1.79 | 65003 |

### Router BGP EVPN Address Family

#### Router BGP EVPN MAC-VRFs



#### Router BGP EVPN VRFs


### Router BGP Device Configuration

```eos
!
router bgp 65001
   router-id 1.1.1.2
   update wait-for-convergence
   update wait-install
   no bgp default ipv4-unicast
   distance bgp 20 200 200
   graceful-restart restart-time 300
   graceful-restart
   maximum-paths 2 ecmp 2
   neighbor EVPN-OVERLAY-PEERS peer group
   neighbor EVPN-OVERLAY-PEERS next-hop-unchanged
   neighbor EVPN-OVERLAY-PEERS update-source Loopback0
   neighbor EVPN-OVERLAY-PEERS bfd
   neighbor EVPN-OVERLAY-PEERS ebgp-multihop 3
   neighbor EVPN-OVERLAY-PEERS password 7 q+VNViP5i4rVjW1cxFv2wA==
   neighbor EVPN-OVERLAY-PEERS send-community
   neighbor EVPN-OVERLAY-PEERS maximum-routes 0
   neighbor IPv4-UNDERLAY-PEERS peer group
   neighbor IPv4-UNDERLAY-PEERS password 7 AQQvKeimxJu+uGQ/yYvv9w==
   neighbor IPv4-UNDERLAY-PEERS maximum-routes 12000
   neighbor 1.1.1.7 peer group EVPN-OVERLAY-PEERS
   neighbor 1.1.1.7 remote-as 65002
   neighbor 1.1.1.21 peer group EVPN-OVERLAY-PEERS
   neighbor 1.1.1.21 remote-as 65003
   neighbor 1.1.1.22 peer group EVPN-OVERLAY-PEERS
   neighbor 1.1.1.22 remote-as 65003
   neighbor 10.2.1.19 peer group IPv4-UNDERLAY-PEERS
   neighbor 10.2.1.19 remote-as 65002
   neighbor 10.2.1.75 peer group IPv4-UNDERLAY-PEERS
   neighbor 10.2.1.75 remote-as 65003
   neighbor 10.2.1.79 peer group IPv4-UNDERLAY-PEERS
   neighbor 10.2.1.79 remote-as 65003
   redistribute connected route-map RM-CONN-2-BGP
   !
   address-family evpn
      neighbor EVPN-OVERLAY-PEERS activate
      no neighbor IPv4-UNDERLAY-PEERS activate
   !
   address-family ipv4
      no neighbor EVPN-OVERLAY-PEERS activate
      neighbor IPv4-UNDERLAY-PEERS activate
```

## Router BFD

### Router BFD Multihop Summary

| Interval | Minimum RX | Multiplier |
| -------- | ---------- | ---------- |
| 300 | 300 | 3 |

*No device configuration required - default values

# Multicast

## IP IGMP Snooping


## Router Multicast

Routing multicast not defined

## Router PIM Sparse Mode

Router PIM sparse mode not defined

# Filters

## Community Lists

Community Lists not defined

## Peer Filters

No Peer Filters defined

## Prefix Lists

### Prefix Lists Summary

**PL-LOOPBACKS-EVPN-OVERLAY:**

| Sequence | Action |
| -------- | ------ |
| 10 | permit 1.1.1.0/24 le 32 |

### Prefix Lists Device Configuration

```eos
!
ip prefix-list PL-LOOPBACKS-EVPN-OVERLAY
   seq 10 permit 1.1.1.0/24 le 32
```

## IPv6 Prefix Lists

IPv6 Prefix lists not defined

## Route Maps

### Route Maps Summary

**RM-CONN-2-BGP:**

| Sequence | Type | Match and/or Set |
| -------- | ---- | ---------------- |
| 10 | permit | match ip address prefix-list PL-LOOPBACKS-EVPN-OVERLAY |

### Route Maps Device Configuration

```eos
!
route-map RM-CONN-2-BGP permit 10
   match ip address prefix-list PL-LOOPBACKS-EVPN-OVERLAY
```

## IP Extended Communities

No Extended community defined

# ACL

## Standard Access-lists

Standard Access-lists not defined

## Extended Access-lists

Extended Access-lists not defined

## IPv6 Standard Access-lists

IPv6 Standard Access-lists not defined

## IPv6 Extended Access-lists

IPv6 Extended Access-lists not defined

# VRF Instances

### VRF Instances Summary

| VRF Name | IP Routing |
| -------- | ---------- |
| MGMT |  disabled |

### VRF Instances Device Configuration

```eos
!
vrf instance MGMT
```

# Virtual Source NAT

Virtual Source NAT is not defined

# Platform

No Platform parameters defined

# Router L2 VPN

Router L2 VPN not defined

# IP DHCP Relay

IP DHCP Relay not defined

## Custom Templates

No Custom Templates Defined
