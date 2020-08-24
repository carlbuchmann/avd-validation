### Generic Variables
SHELL := /bin/zsh

### Ansible variables
# Inventory for EOS playbooks
INVENTORY ?= inventories/avd-lab-ebgp
# Inventory for Linux tool box
LAB_SERVICES ?= inventories/avd-lab-services
# Default Inventory file to look for
INVENTORY_FILE = inventory.yml
# For optional ansible options
ANSIBLE_ARGS ?=
FACTS_LOG ?= ../cvp-debug-logs/arista.cvp.facts.json

### Docker variables
CURRENT_DIR = $(shell pwd)
DOCKER_NAME ?= avdteam/base
DOCKER_TAG ?= 3.6
AVD_REPOSITORY ?= ../ansible-avd/development/
ANSIBLE_VERSION ?=

.PHONY: help
help: ## Display help message (*: main entry points / []: part of an entry point)
	@grep -E '^[0-9a-zA-Z_-]+\.*[0-9a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

.PHONY: facts
facts: ## Get facts from CVP and save locally
	ansible-playbook playbooks/extract-facts.yml --extra-vars "output_file=${FACTS_LOG}" -i $(INVENTORY)/$(INVENTORY_FILE)

################################################################################
# Summarized Tests
###############################################################################

.PHONY: test-avd-build
test-avd-build:
	make avd-lab-l3ls-evpn-ebgp-build
	make avd-lab-l3ls-evpn-ospf-build
	make avd-lab-l3ls-evpn-isis-build
	make ohio-lab-l3ls-evpn-ebgp-build


.PHONY: avd-lab-all-eapi-provision
avd-lab-all-eapi-provision: avd-lab-l3ls-evpn-ebgp-eapi-provision avd-lab-l3ls-evpn-ospf-eapi-provision avd-lab-l3ls-evpn-isis-eapi-provision ## run build test on all inventories


################################################################################
# avd-lab-l3ls-evpn-ebgp
################################################################################

.PHONY: avd-lab-l3ls-evpn-ebgp-build
avd-lab-l3ls-evpn-ebgp-build: ## Run ansible playbook to build EVPN Fabric configuration with DC1 and CV
	ansible-playbook playbooks/dc1-fabric-deploy-eapi.yml --tags build -i inventories/avd-lab-l3ls-evpn-ebgp/inventory.yml --diff

.PHONY: avd-lab-l3ls-evpn-ebgp-eapi-provision
avd-lab-l3ls-evpn-ebgp-eapi-provision: ## Run ansible playbook to build EVPN Fabric configuration with DC1 and CV
	ansible-playbook playbooks/dc1-fabric-deploy-eapi.yml --tags provision -i inventories/avd-lab-l3ls-evpn-ebgp/inventory.yml --diff

.PHONY: avd-lab-l3ls-evpn-ebgp-cvp-provision
avd-lab-l3ls-evpn-ebgp-cvp-provision: ## Run ansible playbook to deploy EVPN Fabric.
	ansible-playbook playbooks/dc1-fabric-deploy-cvp.yml --tags provision -i inventories/avd-lab-l3ls-evpn-ebgp/inventory.yml --diff

.PHONY: avd-lab-l3ls-evpn-ebgp-deploy
avd-lab-l3ls-evpn-ebgp-deploy: ## Run ansible playbook to deploy EVPN Fabric.
	ansible-playbook playbooks/dc1-fabric-deploy-cvp.yml --extra-vars "execute_tasks=true" --tags "build,provision,apply" -i inventories/avd-lab-l3ls-evpn-ebgp/inventory.yml --diff


################################################################################
# avd-lab-l3ls-evpn-ospf
################################################################################

.PHONY: avd-lab-l3ls-evpn-ospf-build
avd-lab-l3ls-evpn-ospf-build: ## Run ansible playbook to build EVPN Fabric configuration with DC1 and CV
	ansible-playbook playbooks/dc1-fabric-deploy-eapi.yml --tags build -i inventories/avd-lab-l3ls-evpn-ospf/inventory.yml --diff

.PHONY: avd-lab-l3ls-evpn-ospf-eapi-provision
avd-lab-l3ls-evpn-ospf-eapi-provision: ## Run ansible playbook to build EVPN Fabric configuration with DC1 and CV
	ansible-playbook playbooks/dc1-fabric-deploy-eapi.yml --tags provision -i inventories/avd-lab-l3ls-evpn-ospf/inventory.yml --diff

.PHONY: avd-lab-l3ls-evpn-ospf-cvp-provision
avd-lab-l3ls-evpn-ospf-cvp-provision: ## Run ansible playbook to deploy EVPN Fabric.
	ansible-playbook playbooks/dc1-fabric-deploy-cvp.yml --tags provision -i inventories/avd-lab-l3ls-evpn-ospf/inventory.yml --diff

.PHONY: avd-lab-l3ls-evpn-ospf-deploy
avd-lab-l3ls-evpn-ospf-deploy: ## Run ansible playbook to deploy EVPN Fabric.
	ansible-playbook playbooks/dc1-fabric-deploy-cvp.yml --extra-vars "execute_tasks=true" --tags "build,provision,apply" -i inventories/avd-lab-l3ls-evpn-ospf/inventory.yml --diff


################################################################################
# avd-lab-l3ls-evpn-isis
################################################################################

.PHONY: avd-lab-l3ls-evpn-isis-build
avd-lab-l3ls-evpn-isis-build: ## Run ansible playbook to build EVPN Fabric configuration with DC1 and CV
	ansible-playbook playbooks/dc1-fabric-deploy-eapi.yml --tags build -i inventories/avd-lab-l3ls-evpn-isis/inventory.yml --diff

.PHONY: avd-lab-l3ls-evpn-isis-eapi-provision
avd-lab-l3ls-evpn-isis-eapi-provision: ## Run ansible playbook to build EVPN Fabric configuration with DC1 and CV
	ansible-playbook playbooks/dc1-fabric-deploy-eapi.yml --tags provision -i inventories/avd-lab-l3ls-evpn-isis/inventory.yml --diff

.PHONY: avd-lab-l3ls-evpn-isis-cvp-provision
avd-lab-l3ls-evpn-isis-cvp-provision: ## Run ansible playbook to deploy EVPN Fabric.
	ansible-playbook playbooks/dc1-fabric-deploy-cvp.yml --tags provision -i inventories/avd-lab-l3ls-evpn-isis/inventory.yml --diff

.PHONY: avd-lab-l3ls-evpn-isis-deploy
avd-lab-l3ls-evpn-isis-deploy: ## Run ansible playbook to deploy EVPN Fabric.
	ansible-playbook playbooks/dc1-fabric-deploy-cvp.yml --extra-vars "execute_tasks=true" --tags "build,provision,apply" -i inventories/avd-lab-l3ls-evpn-isis/inventory.yml --diff


################################################################################
# ohio-lab-l3ls-evpn-ebgp
################################################################################

.PHONY: ohio-lab-l3ls-evpn-ebgp-build
ohio-lab-l3ls-evpn-ebgp-build: ## Run ansible playbook to build EVPN Fabric configuration with DC1 and CV
	ansible-playbook playbooks/dc1-fabric-deploy-eapi.yml --tags build -i inventories/ohio-lab-l3ls-evpn-ebgp/inventory.yml --diff

.PHONY: ohio-lab-l3ls-evpn-ebgp-eapi-provision
ohio-lab-l3ls-evpn-ebgp-eapi-provision: ## Run ansible playbook to build EVPN Fabric configuration with DC1 and CV
	ansible-playbook playbooks/dc1-fabric-deploy-eapi.yml --tags provision -i inventories/ohio-lab-l3ls-evpn-ebgp/inventory.yml --diff

.PHONY: ohio-lab-l3ls-evpn-ebgp-cvp-provision
ohio-lab-l3ls-evpn-ebgp-cvp-provision: ## Run ansible playbook to deploy EVPN Fabric.
	ansible-playbook playbooks/dc1-fabric-deploy-cvp.yml --tags provision -i inventories/ohio-lab-l3ls-evpn-ebgp/inventory.yml --diff

.PHONY: ohio-lab-l3ls-evpn-ebgp-deploy
ohio-lab-l3ls-evpn-ebgp-deploy: ## Run ansible playbook to deploy EVPN Fabric.
	ansible-playbook playbooks/dc1-fabric-deploy-cvp.yml --extra-vars "execute_tasks=true" --tags "build,provision,apply" -i inventories/ohio-lab-l3ls-evpn-ebgp/inventory.yml --diff




### Cleanup CVP

.PHONY: avd-reset
avd-reset: ## Run ansible playbook to reset all devices.
	ansible-playbook playbooks/dc1-fabric-reset-cvp.yml -i $(INVENTORY)/$(INVENTORY_FILE)

### Debug Actions

.PHONY: avd-vars-input
avd-vars-input: ## Run ansible playbook to extract EVPN Fabric variables.
	ansible-playbook playbooks/extract-avd-vars.yml --tags eos_l3ls_evpn -i $(INVENTORY)/$(INVENTORY_FILE)

.PHONY: avd-vars-devices
avd-vars-devices: ## Run ansible playbook to extract Devices variables.
	ansible-playbook playbooks/extract-avd-vars.yml --tags cli -i $(INVENTORY)/$(INVENTORY_FILE)

################################################################################
# AVD Commands for Generic Inventory and NO CV instance
################################################################################

.PHONY: eapi-build
eapi-build: ## Run ansible playbook to build EVPN Fabric configuration for generic EOS AVD topology and NO CV
	ansible-playbook playbooks/avd-eapi-generic.yml --tags build --tags build -i $(INVENTORY)/$(INVENTORY_FILE) $(ANSIBLE_ARGS)

.PHONY: eapi-deploy
eapi-deploy: ## Run ansible playbook to build EVPN Fabric configuration for generic EOS AVD topology and NO CV
	ansible-playbook playbooks/avd-eapi-generic.yml --tags "build, deploy" -i $(INVENTORY)/$(INVENTORY_FILE) $(ANSIBLE_ARGS)

.PHONY: eapi-check
eapi-check: ## Run ansible playbook to build EVPN Fabric configuration for generic EOS AVD topology and NO CV
	ansible-playbook playbooks/avd-eapi-generic.yml --tags "build, deploy" -i $(INVENTORY)/$(INVENTORY_FILE) --check --diff

.PHONY: eapi-states-validation
eapi-states-validation: ## eapi-states-validation description
	ansible-playbook playbooks/avd-eapi-states-validation.yml -i $(INVENTORY)/$(INVENTORY_FILE)

.PHONY: eapi-build-isis
eapi-build-isis: ## Run ansible playbook to build EVPN Fabric configuration for generic EOS AVD topology and NO CV with ISIS underlay
	ansible-playbook playbooks/avd-eapi-generic.yml --tags build --tags build --extra-vars "underlay_routing_protocol=ISIS" -i $(INVENTORY)/$(INVENTORY_FILE) $(ANSIBLE_ARGS)

.PHONY: eapi-deploy-isis
eapi-deploy-isis: ## Run ansible playbook to build EVPN Fabric configuration for generic EOS AVD topology and NO CV with ISIS underlay
	ansible-playbook playbooks/avd-eapi-generic.yml --tags "build, deploy" --extra-vars "underlay_routing_protocol=ISIS" -i $(INVENTORY)/$(INVENTORY_FILE) $(ANSIBLE_ARGS)

.PHONY: eapi-build-ospf
eapi-build-ospf: ## Run ansible playbook to build EVPN Fabric configuration for generic EOS AVD topology and NO CV with OSPF underlay
	ansible-playbook playbooks/avd-eapi-generic.yml --tags build --tags build --extra-vars "underlay_routing_protocol=OSPF" -i $(INVENTORY)/$(INVENTORY_FILE) $(ANSIBLE_ARGS)

.PHONY: eapi-deploy-ospf
eapi-deploy-ospf: ## Run ansible playbook to build EVPN Fabric configuration for generic EOS AVD topology and NO CV with OSPF underlay
	ansible-playbook playbooks/avd-eapi-generic.yml --tags "build, deploy" --extra-vars "underlay_routing_protocol=OSPF" -i $(INVENTORY)/$(INVENTORY_FILE) $(ANSIBLE_ARGS)

################################################################################
# AVD Commands for eos_cli_config_gen role
################################################################################

.PHONY: cli-config-gen
cli-config-gen: ## Run ansible playbook to build EVPN Fabric configuration for generic EOS AVD topology and NO CV with OSPF underlay
	ansible-playbook playbooks/avd-eos-cli-config-gen.yml -i $(INVENTORY)/$(INVENTORY_FILE) $(ANSIBLE_ARGS)

################################################################################
# AVD Commands for Generic Inventory and NO CV instance
################################################################################

.PHONY: eos-backup
eos-backup: ## Backup current running configuration
	ansible-playbook playbooks/eos-configuration-backup.yml -i $(INVENTORY)/$(INVENTORY_FILE) $(ANSIBLE_ARGS)


################################################################################
# Configlet Management
################################################################################

.PHONY: configlet-upload
configlet-upload: ## Upload configlets available in configlets/ to CVP.
	ansible-playbook playbooks/dc1-upload-configlets.yml -i $(INVENTORY)/$(INVENTORY_FILE)

.PHONY: configlet-unbound
configlet-unbound: ## Rebuild configlets binding based on AVD standard
	ansible-playbook playbooks/dc1-fabric-rollback-to-avd.yml --extra-vars "execute_tasks=true" -i $(INVENTORY)/$(INVENTORY_FILE)

.PHONY: configlet-delete
configlet-delete: ## Delete Configlets (GLOBAL-ALIASES*) from CVP
	ansible-playbook playbooks/dc1-remove-configlets.yml -i $(INVENTORY)/$(INVENTORY_FILE)

################################################################################
# Container Management
################################################################################

.PHONY: container-create
container-create: ## Create DC2 container topology on CVP.
	ansible-playbook playbooks/cv-container-testing.yml --extra-vars "run_mode=merge" -i $(INVENTORY)/$(INVENTORY_FILE)

.PHONY: container-delete
container-delete: ## Remove DC2 container topology from CVP.
	ansible-playbook playbooks/cv-container-testing.yml --extra-vars "run_mode=delete" -i $(INVENTORY)/$(INVENTORY_FILE)

.PHONY: dhcp-configure
dhcp-configure: ## Configure DHCP server with topology information.
	ansible-playbook playbooks/dhcp-configuration.yml -i $(INVENTORY)/$(INVENTORY_FILE)

.PHONY: dhcp-generate
dhcp-generate: ## Generate DHCPd configuration
	ansible-playbook playbooks/dhcp-generate-dhcpd-conf.yml -i $(INVENTORY)/$(INVENTORY_FILE)

################################################################################
# Tooling Management
################################################################################

.PHONY: centos-bootstrap
centos-bootstrap: ## Initial Centos 7 Configuration
	ansible-playbook playbooks/centos07-bootstrap.yml -i $(TOOLS)/$(INVENTORY_FILE)

.PHONY: dhcp-bootstrap
dhcp-bootstrap: ## Configure DHCP service
	ansible-playbook playbooks/dhcp-configuration.yml -i $(TOOLS)/$(INVENTORY_FILE)

################################################################################
# Repository Management
################################################################################

.PHONY: repo-rebuild
repo-rebuild: ## Delete previously generated outputs
	ansible-playbook playbooks/cleanup-outputs.yml -i $(INVENTORY)/$(INVENTORY_FILE)

.PHONY: repo-clean
repo-clean: ## Delete previously generated outputs
	sh playbooks/repository-cleanup.sh

.PHONY: log-clean
log-clean: ## log-clean description
	rm -f cvp-debug-logs/arista.cvp.debug.log*

################################################################################
# Docker Runner
################################################################################

.PHONY: docker-run
docker-run: ## Connect to docker container
	docker run -it --rm -e AVD_ANSIBLE=$(ANSIBLE_VERSION) -v $(CURRENT_DIR)/../:/projects $(DOCKER_NAME):$(DOCKER_TAG)
