
# Validate State Report

**Table of Contents:**

- [Validate State Report](validate-state-report)
  - [Test Results Summary](#test-results-summary)
  - [Failed Test Results Summary](#failed-test-results-summary)
  - [All Test Results](#all-test-results)

## Test Results Summary

### Summary Totals

| Total Tests | Total Tests Passed | Total Tests Failed |
| ----------- | ------------------ | ------------------ |
| 504 | 495 | 9 |

### Summary Totals Devices Under Tests

| DUT | Total Tests | Tests Passed | Tests Failed | Categories Failed |
| --- | ----------- | ------------ | ------------ | ----------------- |
| DC1-BL1A |  39 | 39 | 0 | - |
| DC1-BL1B |  39 | 39 | 0 | - |
| DC1-L2LEAF1A |  7 | 7 | 0 | - |
| DC1-L2LEAF2A |  14 | 14 | 0 | - |
| DC1-L2LEAF2B |  14 | 14 | 0 | - |
| DC1-LEAF1A |  33 | 32 | 1 | Interface State |
| DC1-LEAF2A |  57 | 55 | 2 | Interface State |
| DC1-LEAF2B |  57 | 55 | 2 | Interface State |
| DC1-SPINE1 |  32 | 32 | 0 | - |
| DC1-SPINE2 |  32 | 32 | 0 | - |
| DC1-SPINE3 |  32 | 32 | 0 | - |
| DC1-SPINE4 |  32 | 32 | 0 | - |
| DC1-SVC3A |  58 | 56 | 2 | Interface State |
| DC1-SVC3B |  58 | 56 | 2 | Interface State |

### Summary Totals Per Category

| Test Category | Total Tests | Tests Passed | Tests Failed |
| ------------- | ----------- | ------------ | ------------ |
| NTP |  14 | 14 | 0 |
| Interface State |  261 | 252 | 9 |
| LLDP Topology |  84 | 84 | 0 |
| MLAG |  8 | 8 | 0 |
| IP Reachability |  56 | 56 | 0 |
| BGP |  67 | 67 | 0 |
| Reload Cause |  14 | 14 | 0 |

## Failed Test Results Summary

| Test ID | Node | Test Category | Test Description | Test | Test Result | Failure Reason |
| ------- | ---- | ------------- | ---------------- | ---- | ----------- | -------------- |
| 118 | DC1-LEAF1A | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel7 - server01_PortChanne1 | FAIL | interface status: down - line protocol status: lowerLayerDown |
| 121 | DC1-LEAF2A | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel10 - server01_PortChanne1 | FAIL | interface status: down - line protocol status: lowerLayerDown |
| 122 | DC1-LEAF2A | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel11 - server02_PortChanne1 | FAIL | interface status: down - line protocol status: lowerLayerDown |
| 125 | DC1-LEAF2B | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel10 - server01_PortChanne1 | FAIL | interface status: down - line protocol status: lowerLayerDown |
| 126 | DC1-LEAF2B | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel11 - server02_PortChanne1 | FAIL | interface status: down - line protocol status: lowerLayerDown |
| 129 | DC1-SVC3A | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel10 - server03_PortChanne1 | FAIL | interface status: down - line protocol status: lowerLayerDown |
| 130 | DC1-SVC3A | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel11 - server04_PortChanne1 | FAIL | interface status: down - line protocol status: lowerLayerDown |
| 133 | DC1-SVC3B | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel10 - server03_PortChanne1 | FAIL | interface status: down - line protocol status: lowerLayerDown |
| 134 | DC1-SVC3B | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel11 - server04_PortChanne1 | FAIL | interface status: down - line protocol status: lowerLayerDown |

## All Test Results

| Test ID | Node | Test Category | Test Description | Test | Test Result | Failure Reason |
| ------- | ---- | ------------- | ---------------- | ---- | ----------- | -------------- |
| 1 | DC1-BL1A | NTP | Synchronised with NTP server | NTP | PASS |  |
| 2 | DC1-BL1B | NTP | Synchronised with NTP server | NTP | PASS |  |
| 3 | DC1-L2LEAF1A | NTP | Synchronised with NTP server | NTP | PASS |  |
| 4 | DC1-L2LEAF2A | NTP | Synchronised with NTP server | NTP | PASS |  |
| 5 | DC1-L2LEAF2B | NTP | Synchronised with NTP server | NTP | PASS |  |
| 6 | DC1-LEAF1A | NTP | Synchronised with NTP server | NTP | PASS |  |
| 7 | DC1-LEAF2A | NTP | Synchronised with NTP server | NTP | PASS |  |
| 8 | DC1-LEAF2B | NTP | Synchronised with NTP server | NTP | PASS |  |
| 9 | DC1-SPINE1 | NTP | Synchronised with NTP server | NTP | PASS |  |
| 10 | DC1-SPINE2 | NTP | Synchronised with NTP server | NTP | PASS |  |
| 11 | DC1-SPINE3 | NTP | Synchronised with NTP server | NTP | PASS |  |
| 12 | DC1-SPINE4 | NTP | Synchronised with NTP server | NTP | PASS |  |
| 13 | DC1-SVC3A | NTP | Synchronised with NTP server | NTP | PASS |  |
| 14 | DC1-SVC3B | NTP | Synchronised with NTP server | NTP | PASS |  |
| 15 | DC1-BL1A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet1 - P2P_LINK_TO_DC1-SPINE1_Ethernet6 | PASS |  |
| 16 | DC1-BL1A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet2 - P2P_LINK_TO_DC1-SPINE2_Ethernet6 | PASS |  |
| 17 | DC1-BL1A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet3 - P2P_LINK_TO_DC1-SPINE3_Ethernet6 | PASS |  |
| 18 | DC1-BL1A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet4 - P2P_LINK_TO_DC1-SPINE4_Ethernet6 | PASS |  |
| 19 | DC1-BL1A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet5 - MLAG_PEER_DC1-BL1B_Ethernet5 | PASS |  |
| 20 | DC1-BL1A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet6 - MLAG_PEER_DC1-BL1B_Ethernet6 | PASS |  |
| 21 | DC1-BL1B | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet1 - P2P_LINK_TO_DC1-SPINE1_Ethernet7 | PASS |  |
| 22 | DC1-BL1B | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet2 - P2P_LINK_TO_DC1-SPINE2_Ethernet7 | PASS |  |
| 23 | DC1-BL1B | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet3 - P2P_LINK_TO_DC1-SPINE3_Ethernet7 | PASS |  |
| 24 | DC1-BL1B | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet4 - P2P_LINK_TO_DC1-SPINE4_Ethernet7 | PASS |  |
| 25 | DC1-BL1B | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet5 - MLAG_PEER_DC1-BL1A_Ethernet5 | PASS |  |
| 26 | DC1-BL1B | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet6 - MLAG_PEER_DC1-BL1A_Ethernet6 | PASS |  |
| 27 | DC1-L2LEAF1A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet1 - DC1-LEAF2A_Ethernet7 | PASS |  |
| 28 | DC1-L2LEAF1A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet2 - DC1-LEAF2B_Ethernet7 | PASS |  |
| 29 | DC1-L2LEAF2A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet1 - DC1-SVC3A_Ethernet7 | PASS |  |
| 30 | DC1-L2LEAF2A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet2 - DC1-SVC3B_Ethernet7 | PASS |  |
| 31 | DC1-L2LEAF2A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet3 - MLAG_PEER_DC1-L2LEAF2B_Ethernet3 | PASS |  |
| 32 | DC1-L2LEAF2A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet4 - MLAG_PEER_DC1-L2LEAF2B_Ethernet4 | PASS |  |
| 33 | DC1-L2LEAF2B | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet1 - DC1-SVC3A_Ethernet8 | PASS |  |
| 34 | DC1-L2LEAF2B | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet2 - DC1-SVC3B_Ethernet8 | PASS |  |
| 35 | DC1-L2LEAF2B | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet3 - MLAG_PEER_DC1-L2LEAF2A_Ethernet3 | PASS |  |
| 36 | DC1-L2LEAF2B | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet4 - MLAG_PEER_DC1-L2LEAF2A_Ethernet4 | PASS |  |
| 37 | DC1-LEAF1A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet1 - P2P_LINK_TO_DC1-SPINE1_Ethernet1 | PASS |  |
| 38 | DC1-LEAF1A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet2 - P2P_LINK_TO_DC1-SPINE2_Ethernet1 | PASS |  |
| 39 | DC1-LEAF1A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet3 - P2P_LINK_TO_DC1-SPINE3_Ethernet1 | PASS |  |
| 40 | DC1-LEAF1A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet4 - P2P_LINK_TO_DC1-SPINE4_Ethernet1 | PASS |  |
| 41 | DC1-LEAF1A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet5 - server01_Eth1 | PASS |  |
| 42 | DC1-LEAF1A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet7 - server01_Eth4 | PASS |  |
| 43 | DC1-LEAF1A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet8 - server01_Eth5 | PASS |  |
| 44 | DC1-LEAF1A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet6 - server02_Eth1 | PASS |  |
| 45 | DC1-LEAF2A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet1 - P2P_LINK_TO_DC1-SPINE1_Ethernet2 | PASS |  |
| 46 | DC1-LEAF2A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet2 - P2P_LINK_TO_DC1-SPINE2_Ethernet2 | PASS |  |
| 47 | DC1-LEAF2A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet3 - P2P_LINK_TO_DC1-SPINE3_Ethernet2 | PASS |  |
| 48 | DC1-LEAF2A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet4 - P2P_LINK_TO_DC1-SPINE4_Ethernet2 | PASS |  |
| 49 | DC1-LEAF2A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet5 - MLAG_PEER_DC1-LEAF2B_Ethernet5 | PASS |  |
| 50 | DC1-LEAF2A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet6 - MLAG_PEER_DC1-LEAF2B_Ethernet6 | PASS |  |
| 51 | DC1-LEAF2A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet7 - DC1-L2LEAF1A_Ethernet1 | PASS |  |
| 52 | DC1-LEAF2A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet10 - server01_Eth2 | PASS |  |
| 53 | DC1-LEAF2A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet11 - server02_Eth2 | PASS |  |
| 54 | DC1-LEAF2B | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet1 - P2P_LINK_TO_DC1-SPINE1_Ethernet3 | PASS |  |
| 55 | DC1-LEAF2B | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet2 - P2P_LINK_TO_DC1-SPINE2_Ethernet3 | PASS |  |
| 56 | DC1-LEAF2B | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet3 - P2P_LINK_TO_DC1-SPINE3_Ethernet3 | PASS |  |
| 57 | DC1-LEAF2B | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet4 - P2P_LINK_TO_DC1-SPINE4_Ethernet3 | PASS |  |
| 58 | DC1-LEAF2B | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet5 - MLAG_PEER_DC1-LEAF2A_Ethernet5 | PASS |  |
| 59 | DC1-LEAF2B | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet6 - MLAG_PEER_DC1-LEAF2A_Ethernet6 | PASS |  |
| 60 | DC1-LEAF2B | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet7 - DC1-L2LEAF1A_Ethernet2 | PASS |  |
| 61 | DC1-LEAF2B | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet10 - server01_Eth3 | PASS |  |
| 62 | DC1-LEAF2B | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet11 - server02_Eth3 | PASS |  |
| 63 | DC1-SPINE1 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet6 - P2P_LINK_TO_DC1-BL1A_Ethernet1 | PASS |  |
| 64 | DC1-SPINE1 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet7 - P2P_LINK_TO_DC1-BL1B_Ethernet1 | PASS |  |
| 65 | DC1-SPINE1 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet1 - P2P_LINK_TO_DC1-LEAF1A_Ethernet1 | PASS |  |
| 66 | DC1-SPINE1 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet2 - P2P_LINK_TO_DC1-LEAF2A_Ethernet1 | PASS |  |
| 67 | DC1-SPINE1 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet3 - P2P_LINK_TO_DC1-LEAF2B_Ethernet1 | PASS |  |
| 68 | DC1-SPINE1 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet4 - P2P_LINK_TO_DC1-SVC3A_Ethernet1 | PASS |  |
| 69 | DC1-SPINE1 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet5 - P2P_LINK_TO_DC1-SVC3B_Ethernet1 | PASS |  |
| 70 | DC1-SPINE2 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet6 - P2P_LINK_TO_DC1-BL1A_Ethernet2 | PASS |  |
| 71 | DC1-SPINE2 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet7 - P2P_LINK_TO_DC1-BL1B_Ethernet2 | PASS |  |
| 72 | DC1-SPINE2 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet1 - P2P_LINK_TO_DC1-LEAF1A_Ethernet2 | PASS |  |
| 73 | DC1-SPINE2 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet2 - P2P_LINK_TO_DC1-LEAF2A_Ethernet2 | PASS |  |
| 74 | DC1-SPINE2 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet3 - P2P_LINK_TO_DC1-LEAF2B_Ethernet2 | PASS |  |
| 75 | DC1-SPINE2 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet4 - P2P_LINK_TO_DC1-SVC3A_Ethernet2 | PASS |  |
| 76 | DC1-SPINE2 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet5 - P2P_LINK_TO_DC1-SVC3B_Ethernet2 | PASS |  |
| 77 | DC1-SPINE3 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet6 - P2P_LINK_TO_DC1-BL1A_Ethernet3 | PASS |  |
| 78 | DC1-SPINE3 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet7 - P2P_LINK_TO_DC1-BL1B_Ethernet3 | PASS |  |
| 79 | DC1-SPINE3 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet1 - P2P_LINK_TO_DC1-LEAF1A_Ethernet3 | PASS |  |
| 80 | DC1-SPINE3 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet2 - P2P_LINK_TO_DC1-LEAF2A_Ethernet3 | PASS |  |
| 81 | DC1-SPINE3 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet3 - P2P_LINK_TO_DC1-LEAF2B_Ethernet3 | PASS |  |
| 82 | DC1-SPINE3 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet4 - P2P_LINK_TO_DC1-SVC3A_Ethernet3 | PASS |  |
| 83 | DC1-SPINE3 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet5 - P2P_LINK_TO_DC1-SVC3B_Ethernet3 | PASS |  |
| 84 | DC1-SPINE4 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet6 - P2P_LINK_TO_DC1-BL1A_Ethernet4 | PASS |  |
| 85 | DC1-SPINE4 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet7 - P2P_LINK_TO_DC1-BL1B_Ethernet4 | PASS |  |
| 86 | DC1-SPINE4 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet1 - P2P_LINK_TO_DC1-LEAF1A_Ethernet4 | PASS |  |
| 87 | DC1-SPINE4 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet2 - P2P_LINK_TO_DC1-LEAF2A_Ethernet4 | PASS |  |
| 88 | DC1-SPINE4 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet3 - P2P_LINK_TO_DC1-LEAF2B_Ethernet4 | PASS |  |
| 89 | DC1-SPINE4 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet4 - P2P_LINK_TO_DC1-SVC3A_Ethernet4 | PASS |  |
| 90 | DC1-SPINE4 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet5 - P2P_LINK_TO_DC1-SVC3B_Ethernet4 | PASS |  |
| 91 | DC1-SVC3A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet1 - P2P_LINK_TO_DC1-SPINE1_Ethernet4 | PASS |  |
| 92 | DC1-SVC3A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet2 - P2P_LINK_TO_DC1-SPINE2_Ethernet4 | PASS |  |
| 93 | DC1-SVC3A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet3 - P2P_LINK_TO_DC1-SPINE3_Ethernet4 | PASS |  |
| 94 | DC1-SVC3A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet4 - P2P_LINK_TO_DC1-SPINE4_Ethernet4 | PASS |  |
| 95 | DC1-SVC3A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet5 - MLAG_PEER_DC1-SVC3B_Ethernet5 | PASS |  |
| 96 | DC1-SVC3A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet6 - MLAG_PEER_DC1-SVC3B_Ethernet6 | PASS |  |
| 97 | DC1-SVC3A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet7 - DC1-L2LEAF2A_Ethernet1 | PASS |  |
| 98 | DC1-SVC3A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet8 - DC1-L2LEAF2B_Ethernet1 | PASS |  |
| 99 | DC1-SVC3A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet10 - server03_Eth1 | PASS |  |
| 100 | DC1-SVC3A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet11 - server04_Eth1 | PASS |  |
| 101 | DC1-SVC3B | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet1 - P2P_LINK_TO_DC1-SPINE1_Ethernet5 | PASS |  |
| 102 | DC1-SVC3B | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet2 - P2P_LINK_TO_DC1-SPINE2_Ethernet5 | PASS |  |
| 103 | DC1-SVC3B | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet3 - P2P_LINK_TO_DC1-SPINE3_Ethernet5 | PASS |  |
| 104 | DC1-SVC3B | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet4 - P2P_LINK_TO_DC1-SPINE4_Ethernet5 | PASS |  |
| 105 | DC1-SVC3B | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet5 - MLAG_PEER_DC1-SVC3A_Ethernet5 | PASS |  |
| 106 | DC1-SVC3B | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet6 - MLAG_PEER_DC1-SVC3A_Ethernet6 | PASS |  |
| 107 | DC1-SVC3B | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet7 - DC1-L2LEAF2A_Ethernet2 | PASS |  |
| 108 | DC1-SVC3B | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet8 - DC1-L2LEAF2B_Ethernet2 | PASS |  |
| 109 | DC1-SVC3B | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet10 - server03_Eth2 | PASS |  |
| 110 | DC1-SVC3B | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet11 - server04_Eth2 | PASS |  |
| 111 | DC1-BL1A | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel5 - MLAG_PEER_DC1-BL1B_Po5 | PASS |  |
| 112 | DC1-BL1B | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel5 - MLAG_PEER_DC1-BL1A_Po5 | PASS |  |
| 113 | DC1-L2LEAF1A | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel1 - DC1-LEAF2A_Po7 | PASS |  |
| 114 | DC1-L2LEAF2A | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel1 - DC1-SVC3A_Po7 | PASS |  |
| 115 | DC1-L2LEAF2A | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel3 - MLAG_PEER_DC1-L2LEAF2B_Po3 | PASS |  |
| 116 | DC1-L2LEAF2B | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel1 - DC1-SVC3B_Po7 | PASS |  |
| 117 | DC1-L2LEAF2B | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel3 - MLAG_PEER_DC1-L2LEAF2A_Po3 | PASS |  |
| 118 | DC1-LEAF1A | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel7 - server01_PortChanne1 | FAIL | interface status: down - line protocol status: lowerLayerDown |
| 119 | DC1-LEAF2A | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel7 - DC1_L2LEAF1_Po1 | PASS |  |
| 120 | DC1-LEAF2A | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel5 - MLAG_PEER_DC1-LEAF2B_Po5 | PASS |  |
| 121 | DC1-LEAF2A | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel10 - server01_PortChanne1 | FAIL | interface status: down - line protocol status: lowerLayerDown |
| 122 | DC1-LEAF2A | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel11 - server02_PortChanne1 | FAIL | interface status: down - line protocol status: lowerLayerDown |
| 123 | DC1-LEAF2B | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel7 - DC1_L2LEAF1_Po1 | PASS |  |
| 124 | DC1-LEAF2B | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel5 - MLAG_PEER_DC1-LEAF2A_Po5 | PASS |  |
| 125 | DC1-LEAF2B | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel10 - server01_PortChanne1 | FAIL | interface status: down - line protocol status: lowerLayerDown |
| 126 | DC1-LEAF2B | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel11 - server02_PortChanne1 | FAIL | interface status: down - line protocol status: lowerLayerDown |
| 127 | DC1-SVC3A | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel7 - DC1_L2LEAF2_Po1 | PASS |  |
| 128 | DC1-SVC3A | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel5 - MLAG_PEER_DC1-SVC3B_Po5 | PASS |  |
| 129 | DC1-SVC3A | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel10 - server03_PortChanne1 | FAIL | interface status: down - line protocol status: lowerLayerDown |
| 130 | DC1-SVC3A | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel11 - server04_PortChanne1 | FAIL | interface status: down - line protocol status: lowerLayerDown |
| 131 | DC1-SVC3B | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel7 - DC1_L2LEAF2_Po1 | PASS |  |
| 132 | DC1-SVC3B | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel5 - MLAG_PEER_DC1-SVC3A_Po5 | PASS |  |
| 133 | DC1-SVC3B | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel10 - server03_PortChanne1 | FAIL | interface status: down - line protocol status: lowerLayerDown |
| 134 | DC1-SVC3B | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel11 - server04_PortChanne1 | FAIL | interface status: down - line protocol status: lowerLayerDown |
| 135 | DC1-BL1A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan4093 - MLAG_PEER_L3_PEERING | PASS |  |
| 136 | DC1-BL1A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan4094 - MLAG_PEER | PASS |  |
| 137 | DC1-BL1A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan113 - Tenant_A_OP_Zone_WAN | PASS |  |
| 138 | DC1-BL1A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan3009 - MLAG_PEER_L3_iBGP: vrf Tenant_A_OP_Zone | PASS |  |
| 139 | DC1-BL1A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan150 - Tenant_A_WAN_Zone_1 | PASS |  |
| 140 | DC1-BL1A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan3013 - MLAG_PEER_L3_iBGP: vrf Tenant_A_WAN_Zone | PASS |  |
| 141 | DC1-BL1A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan250 - Tenant_B_WAN_Zone_1 | PASS |  |
| 142 | DC1-BL1A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan3020 - MLAG_PEER_L3_iBGP: vrf Tenant_B_WAN_Zone | PASS |  |
| 143 | DC1-BL1A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan350 - Tenant_C_WAN_Zone_1 | PASS |  |
| 144 | DC1-BL1A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan3030 - MLAG_PEER_L3_iBGP: vrf Tenant_C_WAN_Zone | PASS |  |
| 145 | DC1-BL1B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan4093 - MLAG_PEER_L3_PEERING | PASS |  |
| 146 | DC1-BL1B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan4094 - MLAG_PEER | PASS |  |
| 147 | DC1-BL1B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan113 - Tenant_A_OP_Zone_WAN | PASS |  |
| 148 | DC1-BL1B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan3009 - MLAG_PEER_L3_iBGP: vrf Tenant_A_OP_Zone | PASS |  |
| 149 | DC1-BL1B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan150 - Tenant_A_WAN_Zone_1 | PASS |  |
| 150 | DC1-BL1B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan3013 - MLAG_PEER_L3_iBGP: vrf Tenant_A_WAN_Zone | PASS |  |
| 151 | DC1-BL1B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan250 - Tenant_B_WAN_Zone_1 | PASS |  |
| 152 | DC1-BL1B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan3020 - MLAG_PEER_L3_iBGP: vrf Tenant_B_WAN_Zone | PASS |  |
| 153 | DC1-BL1B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan350 - Tenant_C_WAN_Zone_1 | PASS |  |
| 154 | DC1-BL1B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan3030 - MLAG_PEER_L3_iBGP: vrf Tenant_C_WAN_Zone | PASS |  |
| 155 | DC1-L2LEAF2A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan4094 - MLAG_PEER | PASS |  |
| 156 | DC1-L2LEAF2B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan4094 - MLAG_PEER | PASS |  |
| 157 | DC1-LEAF1A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan410 - tf_demo_app_1 | PASS |  |
| 158 | DC1-LEAF1A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan411 - tf_demo_app_2 | PASS |  |
| 159 | DC1-LEAF1A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan130 - Tenant_A_APP_Zone_1 | PASS |  |
| 160 | DC1-LEAF1A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan131 - Tenant_A_APP_Zone_2 | PASS |  |
| 161 | DC1-LEAF1A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan120 - Tenant_A_WEB_Zone_1 | PASS |  |
| 162 | DC1-LEAF1A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan121 - Tenant_A_WEBZone_2 | PASS |  |
| 163 | DC1-LEAF2A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan4093 - MLAG_PEER_L3_PEERING | PASS |  |
| 164 | DC1-LEAF2A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan4094 - MLAG_PEER | PASS |  |
| 165 | DC1-LEAF2A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan130 - Tenant_A_APP_Zone_1 | PASS |  |
| 166 | DC1-LEAF2A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan131 - Tenant_A_APP_Zone_2 | PASS |  |
| 167 | DC1-LEAF2A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan3011 - MLAG_PEER_L3_iBGP: vrf Tenant_A_APP_Zone | PASS |  |
| 168 | DC1-LEAF2A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan140 - Tenant_A_DB_BZone_1 | PASS |  |
| 169 | DC1-LEAF2A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan141 - Tenant_A_DB_Zone_2 | PASS |  |
| 170 | DC1-LEAF2A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan3012 - MLAG_PEER_L3_iBGP: vrf Tenant_A_DB_Zone | PASS |  |
| 171 | DC1-LEAF2A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan110 - Tenant_A_OP_Zone_1 | PASS |  |
| 172 | DC1-LEAF2A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan111 - Tenant_A_OP_Zone_2 | PASS |  |
| 173 | DC1-LEAF2A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan112 - Tenant_A_OP_Zone_3 | PASS |  |
| 174 | DC1-LEAF2A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan3009 - MLAG_PEER_L3_iBGP: vrf Tenant_A_OP_Zone | PASS |  |
| 175 | DC1-LEAF2A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan120 - Tenant_A_WEB_Zone_1 | PASS |  |
| 176 | DC1-LEAF2A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan121 - Tenant_A_WEBZone_2 | PASS |  |
| 177 | DC1-LEAF2A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan3010 - MLAG_PEER_L3_iBGP: vrf Tenant_A_WEB_Zone | PASS |  |
| 178 | DC1-LEAF2A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan210 - Tenant_B_OP_Zone_1 | PASS |  |
| 179 | DC1-LEAF2A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan211 - Tenant_B_OP_Zone_2 | PASS |  |
| 180 | DC1-LEAF2A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan3019 - MLAG_PEER_L3_iBGP: vrf Tenant_B_OP_Zone | PASS |  |
| 181 | DC1-LEAF2A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan310 - Tenant_C_OP_Zone_1 | PASS |  |
| 182 | DC1-LEAF2A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan311 - Tenant_C_OP_Zone_2 | PASS |  |
| 183 | DC1-LEAF2A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan3029 - MLAG_PEER_L3_iBGP: vrf Tenant_C_OP_Zone | PASS |  |
| 184 | DC1-LEAF2B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan4093 - MLAG_PEER_L3_PEERING | PASS |  |
| 185 | DC1-LEAF2B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan4094 - MLAG_PEER | PASS |  |
| 186 | DC1-LEAF2B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan130 - Tenant_A_APP_Zone_1 | PASS |  |
| 187 | DC1-LEAF2B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan131 - Tenant_A_APP_Zone_2 | PASS |  |
| 188 | DC1-LEAF2B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan3011 - MLAG_PEER_L3_iBGP: vrf Tenant_A_APP_Zone | PASS |  |
| 189 | DC1-LEAF2B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan140 - Tenant_A_DB_BZone_1 | PASS |  |
| 190 | DC1-LEAF2B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan141 - Tenant_A_DB_Zone_2 | PASS |  |
| 191 | DC1-LEAF2B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan3012 - MLAG_PEER_L3_iBGP: vrf Tenant_A_DB_Zone | PASS |  |
| 192 | DC1-LEAF2B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan110 - Tenant_A_OP_Zone_1 | PASS |  |
| 193 | DC1-LEAF2B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan111 - Tenant_A_OP_Zone_2 | PASS |  |
| 194 | DC1-LEAF2B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan112 - Tenant_A_OP_Zone_3 | PASS |  |
| 195 | DC1-LEAF2B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan3009 - MLAG_PEER_L3_iBGP: vrf Tenant_A_OP_Zone | PASS |  |
| 196 | DC1-LEAF2B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan120 - Tenant_A_WEB_Zone_1 | PASS |  |
| 197 | DC1-LEAF2B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan121 - Tenant_A_WEBZone_2 | PASS |  |
| 198 | DC1-LEAF2B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan3010 - MLAG_PEER_L3_iBGP: vrf Tenant_A_WEB_Zone | PASS |  |
| 199 | DC1-LEAF2B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan210 - Tenant_B_OP_Zone_1 | PASS |  |
| 200 | DC1-LEAF2B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan211 - Tenant_B_OP_Zone_2 | PASS |  |
| 201 | DC1-LEAF2B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan3019 - MLAG_PEER_L3_iBGP: vrf Tenant_B_OP_Zone | PASS |  |
| 202 | DC1-LEAF2B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan310 - Tenant_C_OP_Zone_1 | PASS |  |
| 203 | DC1-LEAF2B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan311 - Tenant_C_OP_Zone_2 | PASS |  |
| 204 | DC1-LEAF2B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan3029 - MLAG_PEER_L3_iBGP: vrf Tenant_C_OP_Zone | PASS |  |
| 205 | DC1-SVC3A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan4093 - MLAG_PEER_L3_PEERING | PASS |  |
| 206 | DC1-SVC3A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan4094 - MLAG_PEER | PASS |  |
| 207 | DC1-SVC3A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan130 - Tenant_A_APP_Zone_1 | PASS |  |
| 208 | DC1-SVC3A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan131 - Tenant_A_APP_Zone_2 | PASS |  |
| 209 | DC1-SVC3A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan3011 - MLAG_PEER_L3_iBGP: vrf Tenant_A_APP_Zone | PASS |  |
| 210 | DC1-SVC3A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan140 - Tenant_A_DB_BZone_1 | PASS |  |
| 211 | DC1-SVC3A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan141 - Tenant_A_DB_Zone_2 | PASS |  |
| 212 | DC1-SVC3A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan3012 - MLAG_PEER_L3_iBGP: vrf Tenant_A_DB_Zone | PASS |  |
| 213 | DC1-SVC3A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan110 - Tenant_A_OP_Zone_1 | PASS |  |
| 214 | DC1-SVC3A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan111 - Tenant_A_OP_Zone_2 | PASS |  |
| 215 | DC1-SVC3A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan3009 - MLAG_PEER_L3_iBGP: vrf Tenant_A_OP_Zone | PASS |  |
| 216 | DC1-SVC3A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan120 - Tenant_A_WEB_Zone_1 | PASS |  |
| 217 | DC1-SVC3A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan121 - Tenant_A_WEBZone_2 | PASS |  |
| 218 | DC1-SVC3A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan3010 - MLAG_PEER_L3_iBGP: vrf Tenant_A_WEB_Zone | PASS |  |
| 219 | DC1-SVC3A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan210 - Tenant_B_OP_Zone_1 | PASS |  |
| 220 | DC1-SVC3A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan211 - Tenant_B_OP_Zone_2 | PASS |  |
| 221 | DC1-SVC3A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan3019 - MLAG_PEER_L3_iBGP: vrf Tenant_B_OP_Zone | PASS |  |
| 222 | DC1-SVC3A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan310 - Tenant_C_OP_Zone_1 | PASS |  |
| 223 | DC1-SVC3A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan311 - Tenant_C_OP_Zone_2 | PASS |  |
| 224 | DC1-SVC3A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan3029 - MLAG_PEER_L3_iBGP: vrf Tenant_C_OP_Zone | PASS |  |
| 225 | DC1-SVC3B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan4093 - MLAG_PEER_L3_PEERING | PASS |  |
| 226 | DC1-SVC3B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan4094 - MLAG_PEER | PASS |  |
| 227 | DC1-SVC3B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan130 - Tenant_A_APP_Zone_1 | PASS |  |
| 228 | DC1-SVC3B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan131 - Tenant_A_APP_Zone_2 | PASS |  |
| 229 | DC1-SVC3B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan3011 - MLAG_PEER_L3_iBGP: vrf Tenant_A_APP_Zone | PASS |  |
| 230 | DC1-SVC3B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan140 - Tenant_A_DB_BZone_1 | PASS |  |
| 231 | DC1-SVC3B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan141 - Tenant_A_DB_Zone_2 | PASS |  |
| 232 | DC1-SVC3B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan3012 - MLAG_PEER_L3_iBGP: vrf Tenant_A_DB_Zone | PASS |  |
| 233 | DC1-SVC3B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan110 - Tenant_A_OP_Zone_1 | PASS |  |
| 234 | DC1-SVC3B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan111 - Tenant_A_OP_Zone_2 | PASS |  |
| 235 | DC1-SVC3B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan3009 - MLAG_PEER_L3_iBGP: vrf Tenant_A_OP_Zone | PASS |  |
| 236 | DC1-SVC3B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan120 - Tenant_A_WEB_Zone_1 | PASS |  |
| 237 | DC1-SVC3B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan121 - Tenant_A_WEBZone_2 | PASS |  |
| 238 | DC1-SVC3B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan3010 - MLAG_PEER_L3_iBGP: vrf Tenant_A_WEB_Zone | PASS |  |
| 239 | DC1-SVC3B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan210 - Tenant_B_OP_Zone_1 | PASS |  |
| 240 | DC1-SVC3B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan211 - Tenant_B_OP_Zone_2 | PASS |  |
| 241 | DC1-SVC3B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan3019 - MLAG_PEER_L3_iBGP: vrf Tenant_B_OP_Zone | PASS |  |
| 242 | DC1-SVC3B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan310 - Tenant_C_OP_Zone_1 | PASS |  |
| 243 | DC1-SVC3B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan311 - Tenant_C_OP_Zone_2 | PASS |  |
| 244 | DC1-SVC3B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan3029 - MLAG_PEER_L3_iBGP: vrf Tenant_C_OP_Zone | PASS |  |
| 245 | DC1-BL1A | Interface State | Vxlan Interface Status & Line Protocol == "up" | Vxlan1 | PASS |  |
| 246 | DC1-BL1B | Interface State | Vxlan Interface Status & Line Protocol == "up" | Vxlan1 | PASS |  |
| 247 | DC1-LEAF1A | Interface State | Vxlan Interface Status & Line Protocol == "up" | Vxlan1 | PASS |  |
| 248 | DC1-LEAF2A | Interface State | Vxlan Interface Status & Line Protocol == "up" | Vxlan1 | PASS |  |
| 249 | DC1-LEAF2B | Interface State | Vxlan Interface Status & Line Protocol == "up" | Vxlan1 | PASS |  |
| 250 | DC1-SVC3A | Interface State | Vxlan Interface Status & Line Protocol == "up" | Vxlan1 | PASS |  |
| 251 | DC1-SVC3B | Interface State | Vxlan Interface Status & Line Protocol == "up" | Vxlan1 | PASS |  |
| 252 | DC1-BL1A | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback0 - EVPN_Overlay_Peering | PASS |  |
| 253 | DC1-BL1A | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback1 - VTEP_VXLAN_Tunnel_Source | PASS |  |
| 254 | DC1-BL1A | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback100 - Tenant_A_OP_Zone_VTEP_DIAGNOSTICS | PASS |  |
| 255 | DC1-BL1B | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback0 - EVPN_Overlay_Peering | PASS |  |
| 256 | DC1-BL1B | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback1 - VTEP_VXLAN_Tunnel_Source | PASS |  |
| 257 | DC1-BL1B | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback100 - Tenant_A_OP_Zone_VTEP_DIAGNOSTICS | PASS |  |
| 258 | DC1-LEAF1A | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback0 - EVPN_Overlay_Peering | PASS |  |
| 259 | DC1-LEAF1A | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback1 - VTEP_VXLAN_Tunnel_Source | PASS |  |
| 260 | DC1-LEAF2A | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback0 - EVPN_Overlay_Peering | PASS |  |
| 261 | DC1-LEAF2A | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback1 - VTEP_VXLAN_Tunnel_Source | PASS |  |
| 262 | DC1-LEAF2A | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback100 - Tenant_A_OP_Zone_VTEP_DIAGNOSTICS | PASS |  |
| 263 | DC1-LEAF2B | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback0 - EVPN_Overlay_Peering | PASS |  |
| 264 | DC1-LEAF2B | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback1 - VTEP_VXLAN_Tunnel_Source | PASS |  |
| 265 | DC1-LEAF2B | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback100 - Tenant_A_OP_Zone_VTEP_DIAGNOSTICS | PASS |  |
| 266 | DC1-SPINE1 | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback0 - EVPN_Overlay_Peering | PASS |  |
| 267 | DC1-SPINE2 | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback0 - EVPN_Overlay_Peering | PASS |  |
| 268 | DC1-SPINE3 | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback0 - EVPN_Overlay_Peering | PASS |  |
| 269 | DC1-SPINE4 | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback0 - EVPN_Overlay_Peering | PASS |  |
| 270 | DC1-SVC3A | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback0 - EVPN_Overlay_Peering | PASS |  |
| 271 | DC1-SVC3A | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback1 - VTEP_VXLAN_Tunnel_Source | PASS |  |
| 272 | DC1-SVC3A | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback100 - Tenant_A_OP_Zone_VTEP_DIAGNOSTICS | PASS |  |
| 273 | DC1-SVC3B | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback0 - EVPN_Overlay_Peering | PASS |  |
| 274 | DC1-SVC3B | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback1 - VTEP_VXLAN_Tunnel_Source | PASS |  |
| 275 | DC1-SVC3B | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback100 - Tenant_A_OP_Zone_VTEP_DIAGNOSTICS | PASS |  |
| 276 | DC1-BL1A | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet1 - remote: DC1-SPINE1_Ethernet6 | PASS |  |
| 277 | DC1-BL1A | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet2 - remote: DC1-SPINE2_Ethernet6 | PASS |  |
| 278 | DC1-BL1A | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet3 - remote: DC1-SPINE3_Ethernet6 | PASS |  |
| 279 | DC1-BL1A | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet4 - remote: DC1-SPINE4_Ethernet6 | PASS |  |
| 280 | DC1-BL1A | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet5 - remote: DC1-BL1B_Ethernet5 | PASS |  |
| 281 | DC1-BL1A | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet6 - remote: DC1-BL1B_Ethernet6 | PASS |  |
| 282 | DC1-BL1B | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet1 - remote: DC1-SPINE1_Ethernet7 | PASS |  |
| 283 | DC1-BL1B | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet2 - remote: DC1-SPINE2_Ethernet7 | PASS |  |
| 284 | DC1-BL1B | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet3 - remote: DC1-SPINE3_Ethernet7 | PASS |  |
| 285 | DC1-BL1B | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet4 - remote: DC1-SPINE4_Ethernet7 | PASS |  |
| 286 | DC1-BL1B | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet5 - remote: DC1-BL1A_Ethernet5 | PASS |  |
| 287 | DC1-BL1B | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet6 - remote: DC1-BL1A_Ethernet6 | PASS |  |
| 288 | DC1-L2LEAF1A | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet1 - remote: DC1-LEAF2A_Ethernet7 | PASS |  |
| 289 | DC1-L2LEAF1A | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet2 - remote: DC1-LEAF2B_Ethernet7 | PASS |  |
| 290 | DC1-L2LEAF2A | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet1 - remote: DC1-SVC3A_Ethernet7 | PASS |  |
| 291 | DC1-L2LEAF2A | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet2 - remote: DC1-SVC3B_Ethernet7 | PASS |  |
| 292 | DC1-L2LEAF2A | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet3 - remote: DC1-L2LEAF2B_Ethernet3 | PASS |  |
| 293 | DC1-L2LEAF2A | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet4 - remote: DC1-L2LEAF2B_Ethernet4 | PASS |  |
| 294 | DC1-L2LEAF2B | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet1 - remote: DC1-SVC3A_Ethernet8 | PASS |  |
| 295 | DC1-L2LEAF2B | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet2 - remote: DC1-SVC3B_Ethernet8 | PASS |  |
| 296 | DC1-L2LEAF2B | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet3 - remote: DC1-L2LEAF2A_Ethernet3 | PASS |  |
| 297 | DC1-L2LEAF2B | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet4 - remote: DC1-L2LEAF2A_Ethernet4 | PASS |  |
| 298 | DC1-LEAF1A | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet1 - remote: DC1-SPINE1_Ethernet1 | PASS |  |
| 299 | DC1-LEAF1A | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet2 - remote: DC1-SPINE2_Ethernet1 | PASS |  |
| 300 | DC1-LEAF1A | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet3 - remote: DC1-SPINE3_Ethernet1 | PASS |  |
| 301 | DC1-LEAF1A | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet4 - remote: DC1-SPINE4_Ethernet1 | PASS |  |
| 302 | DC1-LEAF2A | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet1 - remote: DC1-SPINE1_Ethernet2 | PASS |  |
| 303 | DC1-LEAF2A | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet2 - remote: DC1-SPINE2_Ethernet2 | PASS |  |
| 304 | DC1-LEAF2A | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet3 - remote: DC1-SPINE3_Ethernet2 | PASS |  |
| 305 | DC1-LEAF2A | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet4 - remote: DC1-SPINE4_Ethernet2 | PASS |  |
| 306 | DC1-LEAF2A | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet5 - remote: DC1-LEAF2B_Ethernet5 | PASS |  |
| 307 | DC1-LEAF2A | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet6 - remote: DC1-LEAF2B_Ethernet6 | PASS |  |
| 308 | DC1-LEAF2A | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet7 - remote: DC1-L2LEAF1A_Ethernet1 | PASS |  |
| 309 | DC1-LEAF2B | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet1 - remote: DC1-SPINE1_Ethernet3 | PASS |  |
| 310 | DC1-LEAF2B | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet2 - remote: DC1-SPINE2_Ethernet3 | PASS |  |
| 311 | DC1-LEAF2B | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet3 - remote: DC1-SPINE3_Ethernet3 | PASS |  |
| 312 | DC1-LEAF2B | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet4 - remote: DC1-SPINE4_Ethernet3 | PASS |  |
| 313 | DC1-LEAF2B | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet5 - remote: DC1-LEAF2A_Ethernet5 | PASS |  |
| 314 | DC1-LEAF2B | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet6 - remote: DC1-LEAF2A_Ethernet6 | PASS |  |
| 315 | DC1-LEAF2B | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet7 - remote: DC1-L2LEAF1A_Ethernet2 | PASS |  |
| 316 | DC1-SPINE1 | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet6 - remote: DC1-BL1A_Ethernet1 | PASS |  |
| 317 | DC1-SPINE1 | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet7 - remote: DC1-BL1B_Ethernet1 | PASS |  |
| 318 | DC1-SPINE1 | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet1 - remote: DC1-LEAF1A_Ethernet1 | PASS |  |
| 319 | DC1-SPINE1 | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet2 - remote: DC1-LEAF2A_Ethernet1 | PASS |  |
| 320 | DC1-SPINE1 | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet3 - remote: DC1-LEAF2B_Ethernet1 | PASS |  |
| 321 | DC1-SPINE1 | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet4 - remote: DC1-SVC3A_Ethernet1 | PASS |  |
| 322 | DC1-SPINE1 | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet5 - remote: DC1-SVC3B_Ethernet1 | PASS |  |
| 323 | DC1-SPINE2 | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet6 - remote: DC1-BL1A_Ethernet2 | PASS |  |
| 324 | DC1-SPINE2 | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet7 - remote: DC1-BL1B_Ethernet2 | PASS |  |
| 325 | DC1-SPINE2 | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet1 - remote: DC1-LEAF1A_Ethernet2 | PASS |  |
| 326 | DC1-SPINE2 | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet2 - remote: DC1-LEAF2A_Ethernet2 | PASS |  |
| 327 | DC1-SPINE2 | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet3 - remote: DC1-LEAF2B_Ethernet2 | PASS |  |
| 328 | DC1-SPINE2 | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet4 - remote: DC1-SVC3A_Ethernet2 | PASS |  |
| 329 | DC1-SPINE2 | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet5 - remote: DC1-SVC3B_Ethernet2 | PASS |  |
| 330 | DC1-SPINE3 | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet6 - remote: DC1-BL1A_Ethernet3 | PASS |  |
| 331 | DC1-SPINE3 | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet7 - remote: DC1-BL1B_Ethernet3 | PASS |  |
| 332 | DC1-SPINE3 | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet1 - remote: DC1-LEAF1A_Ethernet3 | PASS |  |
| 333 | DC1-SPINE3 | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet2 - remote: DC1-LEAF2A_Ethernet3 | PASS |  |
| 334 | DC1-SPINE3 | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet3 - remote: DC1-LEAF2B_Ethernet3 | PASS |  |
| 335 | DC1-SPINE3 | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet4 - remote: DC1-SVC3A_Ethernet3 | PASS |  |
| 336 | DC1-SPINE3 | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet5 - remote: DC1-SVC3B_Ethernet3 | PASS |  |
| 337 | DC1-SPINE4 | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet6 - remote: DC1-BL1A_Ethernet4 | PASS |  |
| 338 | DC1-SPINE4 | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet7 - remote: DC1-BL1B_Ethernet4 | PASS |  |
| 339 | DC1-SPINE4 | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet1 - remote: DC1-LEAF1A_Ethernet4 | PASS |  |
| 340 | DC1-SPINE4 | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet2 - remote: DC1-LEAF2A_Ethernet4 | PASS |  |
| 341 | DC1-SPINE4 | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet3 - remote: DC1-LEAF2B_Ethernet4 | PASS |  |
| 342 | DC1-SPINE4 | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet4 - remote: DC1-SVC3A_Ethernet4 | PASS |  |
| 343 | DC1-SPINE4 | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet5 - remote: DC1-SVC3B_Ethernet4 | PASS |  |
| 344 | DC1-SVC3A | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet1 - remote: DC1-SPINE1_Ethernet4 | PASS |  |
| 345 | DC1-SVC3A | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet2 - remote: DC1-SPINE2_Ethernet4 | PASS |  |
| 346 | DC1-SVC3A | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet3 - remote: DC1-SPINE3_Ethernet4 | PASS |  |
| 347 | DC1-SVC3A | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet4 - remote: DC1-SPINE4_Ethernet4 | PASS |  |
| 348 | DC1-SVC3A | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet5 - remote: DC1-SVC3B_Ethernet5 | PASS |  |
| 349 | DC1-SVC3A | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet6 - remote: DC1-SVC3B_Ethernet6 | PASS |  |
| 350 | DC1-SVC3A | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet7 - remote: DC1-L2LEAF2A_Ethernet1 | PASS |  |
| 351 | DC1-SVC3A | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet8 - remote: DC1-L2LEAF2B_Ethernet1 | PASS |  |
| 352 | DC1-SVC3B | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet1 - remote: DC1-SPINE1_Ethernet5 | PASS |  |
| 353 | DC1-SVC3B | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet2 - remote: DC1-SPINE2_Ethernet5 | PASS |  |
| 354 | DC1-SVC3B | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet3 - remote: DC1-SPINE3_Ethernet5 | PASS |  |
| 355 | DC1-SVC3B | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet4 - remote: DC1-SPINE4_Ethernet5 | PASS |  |
| 356 | DC1-SVC3B | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet5 - remote: DC1-SVC3A_Ethernet5 | PASS |  |
| 357 | DC1-SVC3B | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet6 - remote: DC1-SVC3A_Ethernet6 | PASS |  |
| 358 | DC1-SVC3B | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet7 - remote: DC1-L2LEAF2A_Ethernet2 | PASS |  |
| 359 | DC1-SVC3B | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet8 - remote: DC1-L2LEAF2B_Ethernet2 | PASS |  |
| 360 | DC1-BL1A | MLAG | MLAG State active & Status connected | MLAG | PASS |  |
| 361 | DC1-BL1B | MLAG | MLAG State active & Status connected | MLAG | PASS |  |
| 362 | DC1-L2LEAF2A | MLAG | MLAG State active & Status connected | MLAG | PASS |  |
| 363 | DC1-L2LEAF2B | MLAG | MLAG State active & Status connected | MLAG | PASS |  |
| 364 | DC1-LEAF2A | MLAG | MLAG State active & Status connected | MLAG | PASS |  |
| 365 | DC1-LEAF2B | MLAG | MLAG State active & Status connected | MLAG | PASS |  |
| 366 | DC1-SVC3A | MLAG | MLAG State active & Status connected | MLAG | PASS |  |
| 367 | DC1-SVC3B | MLAG | MLAG State active & Status connected | MLAG | PASS |  |
| 368 | DC1-BL1A | IP Reachability | ip reachability test p2p links | Source: DC1-BL1A_Ethernet1 - Destination: DC1-SPINE1_Ethernet6 | PASS |  |
| 369 | DC1-BL1A | IP Reachability | ip reachability test p2p links | Source: DC1-BL1A_Ethernet2 - Destination: DC1-SPINE2_Ethernet6 | PASS |  |
| 370 | DC1-BL1A | IP Reachability | ip reachability test p2p links | Source: DC1-BL1A_Ethernet3 - Destination: DC1-SPINE3_Ethernet6 | PASS |  |
| 371 | DC1-BL1A | IP Reachability | ip reachability test p2p links | Source: DC1-BL1A_Ethernet4 - Destination: DC1-SPINE4_Ethernet6 | PASS |  |
| 372 | DC1-BL1B | IP Reachability | ip reachability test p2p links | Source: DC1-BL1B_Ethernet1 - Destination: DC1-SPINE1_Ethernet7 | PASS |  |
| 373 | DC1-BL1B | IP Reachability | ip reachability test p2p links | Source: DC1-BL1B_Ethernet2 - Destination: DC1-SPINE2_Ethernet7 | PASS |  |
| 374 | DC1-BL1B | IP Reachability | ip reachability test p2p links | Source: DC1-BL1B_Ethernet3 - Destination: DC1-SPINE3_Ethernet7 | PASS |  |
| 375 | DC1-BL1B | IP Reachability | ip reachability test p2p links | Source: DC1-BL1B_Ethernet4 - Destination: DC1-SPINE4_Ethernet7 | PASS |  |
| 376 | DC1-LEAF1A | IP Reachability | ip reachability test p2p links | Source: DC1-LEAF1A_Ethernet1 - Destination: DC1-SPINE1_Ethernet1 | PASS |  |
| 377 | DC1-LEAF1A | IP Reachability | ip reachability test p2p links | Source: DC1-LEAF1A_Ethernet2 - Destination: DC1-SPINE2_Ethernet1 | PASS |  |
| 378 | DC1-LEAF1A | IP Reachability | ip reachability test p2p links | Source: DC1-LEAF1A_Ethernet3 - Destination: DC1-SPINE3_Ethernet1 | PASS |  |
| 379 | DC1-LEAF1A | IP Reachability | ip reachability test p2p links | Source: DC1-LEAF1A_Ethernet4 - Destination: DC1-SPINE4_Ethernet1 | PASS |  |
| 380 | DC1-LEAF2A | IP Reachability | ip reachability test p2p links | Source: DC1-LEAF2A_Ethernet1 - Destination: DC1-SPINE1_Ethernet2 | PASS |  |
| 381 | DC1-LEAF2A | IP Reachability | ip reachability test p2p links | Source: DC1-LEAF2A_Ethernet2 - Destination: DC1-SPINE2_Ethernet2 | PASS |  |
| 382 | DC1-LEAF2A | IP Reachability | ip reachability test p2p links | Source: DC1-LEAF2A_Ethernet3 - Destination: DC1-SPINE3_Ethernet2 | PASS |  |
| 383 | DC1-LEAF2A | IP Reachability | ip reachability test p2p links | Source: DC1-LEAF2A_Ethernet4 - Destination: DC1-SPINE4_Ethernet2 | PASS |  |
| 384 | DC1-LEAF2B | IP Reachability | ip reachability test p2p links | Source: DC1-LEAF2B_Ethernet1 - Destination: DC1-SPINE1_Ethernet3 | PASS |  |
| 385 | DC1-LEAF2B | IP Reachability | ip reachability test p2p links | Source: DC1-LEAF2B_Ethernet2 - Destination: DC1-SPINE2_Ethernet3 | PASS |  |
| 386 | DC1-LEAF2B | IP Reachability | ip reachability test p2p links | Source: DC1-LEAF2B_Ethernet3 - Destination: DC1-SPINE3_Ethernet3 | PASS |  |
| 387 | DC1-LEAF2B | IP Reachability | ip reachability test p2p links | Source: DC1-LEAF2B_Ethernet4 - Destination: DC1-SPINE4_Ethernet3 | PASS |  |
| 388 | DC1-SPINE1 | IP Reachability | ip reachability test p2p links | Source: DC1-SPINE1_Ethernet6 - Destination: DC1-BL1A_Ethernet1 | PASS |  |
| 389 | DC1-SPINE1 | IP Reachability | ip reachability test p2p links | Source: DC1-SPINE1_Ethernet7 - Destination: DC1-BL1B_Ethernet1 | PASS |  |
| 390 | DC1-SPINE1 | IP Reachability | ip reachability test p2p links | Source: DC1-SPINE1_Ethernet1 - Destination: DC1-LEAF1A_Ethernet1 | PASS |  |
| 391 | DC1-SPINE1 | IP Reachability | ip reachability test p2p links | Source: DC1-SPINE1_Ethernet2 - Destination: DC1-LEAF2A_Ethernet1 | PASS |  |
| 392 | DC1-SPINE1 | IP Reachability | ip reachability test p2p links | Source: DC1-SPINE1_Ethernet3 - Destination: DC1-LEAF2B_Ethernet1 | PASS |  |
| 393 | DC1-SPINE1 | IP Reachability | ip reachability test p2p links | Source: DC1-SPINE1_Ethernet4 - Destination: DC1-SVC3A_Ethernet1 | PASS |  |
| 394 | DC1-SPINE1 | IP Reachability | ip reachability test p2p links | Source: DC1-SPINE1_Ethernet5 - Destination: DC1-SVC3B_Ethernet1 | PASS |  |
| 395 | DC1-SPINE2 | IP Reachability | ip reachability test p2p links | Source: DC1-SPINE2_Ethernet6 - Destination: DC1-BL1A_Ethernet2 | PASS |  |
| 396 | DC1-SPINE2 | IP Reachability | ip reachability test p2p links | Source: DC1-SPINE2_Ethernet7 - Destination: DC1-BL1B_Ethernet2 | PASS |  |
| 397 | DC1-SPINE2 | IP Reachability | ip reachability test p2p links | Source: DC1-SPINE2_Ethernet1 - Destination: DC1-LEAF1A_Ethernet2 | PASS |  |
| 398 | DC1-SPINE2 | IP Reachability | ip reachability test p2p links | Source: DC1-SPINE2_Ethernet2 - Destination: DC1-LEAF2A_Ethernet2 | PASS |  |
| 399 | DC1-SPINE2 | IP Reachability | ip reachability test p2p links | Source: DC1-SPINE2_Ethernet3 - Destination: DC1-LEAF2B_Ethernet2 | PASS |  |
| 400 | DC1-SPINE2 | IP Reachability | ip reachability test p2p links | Source: DC1-SPINE2_Ethernet4 - Destination: DC1-SVC3A_Ethernet2 | PASS |  |
| 401 | DC1-SPINE2 | IP Reachability | ip reachability test p2p links | Source: DC1-SPINE2_Ethernet5 - Destination: DC1-SVC3B_Ethernet2 | PASS |  |
| 402 | DC1-SPINE3 | IP Reachability | ip reachability test p2p links | Source: DC1-SPINE3_Ethernet6 - Destination: DC1-BL1A_Ethernet3 | PASS |  |
| 403 | DC1-SPINE3 | IP Reachability | ip reachability test p2p links | Source: DC1-SPINE3_Ethernet7 - Destination: DC1-BL1B_Ethernet3 | PASS |  |
| 404 | DC1-SPINE3 | IP Reachability | ip reachability test p2p links | Source: DC1-SPINE3_Ethernet1 - Destination: DC1-LEAF1A_Ethernet3 | PASS |  |
| 405 | DC1-SPINE3 | IP Reachability | ip reachability test p2p links | Source: DC1-SPINE3_Ethernet2 - Destination: DC1-LEAF2A_Ethernet3 | PASS |  |
| 406 | DC1-SPINE3 | IP Reachability | ip reachability test p2p links | Source: DC1-SPINE3_Ethernet3 - Destination: DC1-LEAF2B_Ethernet3 | PASS |  |
| 407 | DC1-SPINE3 | IP Reachability | ip reachability test p2p links | Source: DC1-SPINE3_Ethernet4 - Destination: DC1-SVC3A_Ethernet3 | PASS |  |
| 408 | DC1-SPINE3 | IP Reachability | ip reachability test p2p links | Source: DC1-SPINE3_Ethernet5 - Destination: DC1-SVC3B_Ethernet3 | PASS |  |
| 409 | DC1-SPINE4 | IP Reachability | ip reachability test p2p links | Source: DC1-SPINE4_Ethernet6 - Destination: DC1-BL1A_Ethernet4 | PASS |  |
| 410 | DC1-SPINE4 | IP Reachability | ip reachability test p2p links | Source: DC1-SPINE4_Ethernet7 - Destination: DC1-BL1B_Ethernet4 | PASS |  |
| 411 | DC1-SPINE4 | IP Reachability | ip reachability test p2p links | Source: DC1-SPINE4_Ethernet1 - Destination: DC1-LEAF1A_Ethernet4 | PASS |  |
| 412 | DC1-SPINE4 | IP Reachability | ip reachability test p2p links | Source: DC1-SPINE4_Ethernet2 - Destination: DC1-LEAF2A_Ethernet4 | PASS |  |
| 413 | DC1-SPINE4 | IP Reachability | ip reachability test p2p links | Source: DC1-SPINE4_Ethernet3 - Destination: DC1-LEAF2B_Ethernet4 | PASS |  |
| 414 | DC1-SPINE4 | IP Reachability | ip reachability test p2p links | Source: DC1-SPINE4_Ethernet4 - Destination: DC1-SVC3A_Ethernet4 | PASS |  |
| 415 | DC1-SPINE4 | IP Reachability | ip reachability test p2p links | Source: DC1-SPINE4_Ethernet5 - Destination: DC1-SVC3B_Ethernet4 | PASS |  |
| 416 | DC1-SVC3A | IP Reachability | ip reachability test p2p links | Source: DC1-SVC3A_Ethernet1 - Destination: DC1-SPINE1_Ethernet4 | PASS |  |
| 417 | DC1-SVC3A | IP Reachability | ip reachability test p2p links | Source: DC1-SVC3A_Ethernet2 - Destination: DC1-SPINE2_Ethernet4 | PASS |  |
| 418 | DC1-SVC3A | IP Reachability | ip reachability test p2p links | Source: DC1-SVC3A_Ethernet3 - Destination: DC1-SPINE3_Ethernet4 | PASS |  |
| 419 | DC1-SVC3A | IP Reachability | ip reachability test p2p links | Source: DC1-SVC3A_Ethernet4 - Destination: DC1-SPINE4_Ethernet4 | PASS |  |
| 420 | DC1-SVC3B | IP Reachability | ip reachability test p2p links | Source: DC1-SVC3B_Ethernet1 - Destination: DC1-SPINE1_Ethernet5 | PASS |  |
| 421 | DC1-SVC3B | IP Reachability | ip reachability test p2p links | Source: DC1-SVC3B_Ethernet2 - Destination: DC1-SPINE2_Ethernet5 | PASS |  |
| 422 | DC1-SVC3B | IP Reachability | ip reachability test p2p links | Source: DC1-SVC3B_Ethernet3 - Destination: DC1-SPINE3_Ethernet5 | PASS |  |
| 423 | DC1-SVC3B | IP Reachability | ip reachability test p2p links | Source: DC1-SVC3B_Ethernet4 - Destination: DC1-SPINE4_Ethernet5 | PASS |  |
| 424 | DC1-BL1A | BGP | ArBGP is configured and operating | ArBGP | PASS |  |
| 425 | DC1-BL1B | BGP | ArBGP is configured and operating | ArBGP | PASS |  |
| 426 | DC1-LEAF1A | BGP | ArBGP is configured and operating | ArBGP | PASS |  |
| 427 | DC1-LEAF2A | BGP | ArBGP is configured and operating | ArBGP | PASS |  |
| 428 | DC1-LEAF2B | BGP | ArBGP is configured and operating | ArBGP | PASS |  |
| 429 | DC1-SPINE1 | BGP | ArBGP is configured and operating | ArBGP | PASS |  |
| 430 | DC1-SPINE2 | BGP | ArBGP is configured and operating | ArBGP | PASS |  |
| 431 | DC1-SPINE3 | BGP | ArBGP is configured and operating | ArBGP | PASS |  |
| 432 | DC1-SPINE4 | BGP | ArBGP is configured and operating | ArBGP | PASS |  |
| 433 | DC1-SVC3A | BGP | ArBGP is configured and operating | ArBGP | PASS |  |
| 434 | DC1-SVC3B | BGP | ArBGP is configured and operating | ArBGP | PASS |  |
| 435 | DC1-BL1A | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 192.168.255.1 | PASS |  |
| 436 | DC1-BL1A | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 192.168.255.2 | PASS |  |
| 437 | DC1-BL1A | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 192.168.255.3 | PASS |  |
| 438 | DC1-BL1A | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 192.168.255.4 | PASS |  |
| 439 | DC1-BL1B | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 192.168.255.1 | PASS |  |
| 440 | DC1-BL1B | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 192.168.255.2 | PASS |  |
| 441 | DC1-BL1B | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 192.168.255.3 | PASS |  |
| 442 | DC1-BL1B | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 192.168.255.4 | PASS |  |
| 443 | DC1-LEAF1A | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 192.168.255.1 | PASS |  |
| 444 | DC1-LEAF1A | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 192.168.255.2 | PASS |  |
| 445 | DC1-LEAF1A | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 192.168.255.3 | PASS |  |
| 446 | DC1-LEAF1A | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 192.168.255.4 | PASS |  |
| 447 | DC1-LEAF2A | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 192.168.255.1 | PASS |  |
| 448 | DC1-LEAF2A | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 192.168.255.2 | PASS |  |
| 449 | DC1-LEAF2A | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 192.168.255.3 | PASS |  |
| 450 | DC1-LEAF2A | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 192.168.255.4 | PASS |  |
| 451 | DC1-LEAF2B | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 192.168.255.1 | PASS |  |
| 452 | DC1-LEAF2B | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 192.168.255.2 | PASS |  |
| 453 | DC1-LEAF2B | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 192.168.255.3 | PASS |  |
| 454 | DC1-LEAF2B | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 192.168.255.4 | PASS |  |
| 455 | DC1-SPINE1 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 192.168.255.10 | PASS |  |
| 456 | DC1-SPINE1 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 192.168.255.11 | PASS |  |
| 457 | DC1-SPINE1 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 192.168.255.5 | PASS |  |
| 458 | DC1-SPINE1 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 192.168.255.6 | PASS |  |
| 459 | DC1-SPINE1 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 192.168.255.7 | PASS |  |
| 460 | DC1-SPINE1 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 192.168.255.8 | PASS |  |
| 461 | DC1-SPINE1 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 192.168.255.9 | PASS |  |
| 462 | DC1-SPINE2 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 192.168.255.10 | PASS |  |
| 463 | DC1-SPINE2 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 192.168.255.11 | PASS |  |
| 464 | DC1-SPINE2 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 192.168.255.5 | PASS |  |
| 465 | DC1-SPINE2 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 192.168.255.6 | PASS |  |
| 466 | DC1-SPINE2 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 192.168.255.7 | PASS |  |
| 467 | DC1-SPINE2 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 192.168.255.8 | PASS |  |
| 468 | DC1-SPINE2 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 192.168.255.9 | PASS |  |
| 469 | DC1-SPINE3 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 192.168.255.10 | PASS |  |
| 470 | DC1-SPINE3 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 192.168.255.11 | PASS |  |
| 471 | DC1-SPINE3 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 192.168.255.5 | PASS |  |
| 472 | DC1-SPINE3 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 192.168.255.6 | PASS |  |
| 473 | DC1-SPINE3 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 192.168.255.7 | PASS |  |
| 474 | DC1-SPINE3 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 192.168.255.8 | PASS |  |
| 475 | DC1-SPINE3 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 192.168.255.9 | PASS |  |
| 476 | DC1-SPINE4 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 192.168.255.10 | PASS |  |
| 477 | DC1-SPINE4 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 192.168.255.11 | PASS |  |
| 478 | DC1-SPINE4 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 192.168.255.5 | PASS |  |
| 479 | DC1-SPINE4 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 192.168.255.6 | PASS |  |
| 480 | DC1-SPINE4 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 192.168.255.7 | PASS |  |
| 481 | DC1-SPINE4 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 192.168.255.8 | PASS |  |
| 482 | DC1-SPINE4 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 192.168.255.9 | PASS |  |
| 483 | DC1-SVC3A | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 192.168.255.1 | PASS |  |
| 484 | DC1-SVC3A | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 192.168.255.2 | PASS |  |
| 485 | DC1-SVC3A | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 192.168.255.3 | PASS |  |
| 486 | DC1-SVC3A | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 192.168.255.4 | PASS |  |
| 487 | DC1-SVC3B | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 192.168.255.1 | PASS |  |
| 488 | DC1-SVC3B | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 192.168.255.2 | PASS |  |
| 489 | DC1-SVC3B | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 192.168.255.3 | PASS |  |
| 490 | DC1-SVC3B | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 192.168.255.4 | PASS |  |
| 491 | DC1-BL1A | Reload Cause | Reload Cause: Reload requested by the user | Reload Cause | PASS |  |
| 492 | DC1-BL1B | Reload Cause | Reload Cause: Reload requested by the user | Reload Cause | PASS |  |
| 493 | DC1-L2LEAF1A | Reload Cause | Reload Cause: Reload requested by the user | Reload Cause | PASS |  |
| 494 | DC1-L2LEAF2A | Reload Cause | Reload Cause: Reload requested by the user | Reload Cause | PASS |  |
| 495 | DC1-L2LEAF2B | Reload Cause | Reload Cause: Reload requested by the user | Reload Cause | PASS |  |
| 496 | DC1-LEAF1A | Reload Cause | Reload Cause: Reload requested by the user | Reload Cause | PASS |  |
| 497 | DC1-LEAF2A | Reload Cause | Reload Cause: Reload requested by the user | Reload Cause | PASS |  |
| 498 | DC1-LEAF2B | Reload Cause | Reload Cause: Reload requested by the user | Reload Cause | PASS |  |
| 499 | DC1-SPINE1 | Reload Cause | Reload Cause: Reload requested by the user | Reload Cause | PASS |  |
| 500 | DC1-SPINE2 | Reload Cause | Reload Cause: Reload requested by the user | Reload Cause | PASS |  |
| 501 | DC1-SPINE3 | Reload Cause | Reload Cause: Reload requested by the user | Reload Cause | PASS |  |
| 502 | DC1-SPINE4 | Reload Cause | Reload Cause: Reload requested by the user | Reload Cause | PASS |  |
| 503 | DC1-SVC3A | Reload Cause | Reload Cause: Reload requested by the user | Reload Cause | PASS |  |
| 504 | DC1-SVC3B | Reload Cause | Reload Cause: Reload requested by the user | Reload Cause | PASS |  |
