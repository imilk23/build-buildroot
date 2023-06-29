include common.mk

TF_A_PATH			?= $(ROOT)/trusted-firmware-a

all: buildroot optee-os u-boot linux update_rootfs
	@echo "done"

.PHONY: update_rootfs
buildroot: update_rootfs
update_rootfs: arm-tf linux u-boot
	@echo "buildroot from Makefile"

optee-os:
	@echo "optee-os"

.PHONY: u-boot
u-boot:
	@echo "u-boot"

.PHONY: linux
linux:
	@echo "linux"

.PHONY: arm-tf
arm-tf: optee-os
	@echo "arm-tf"
