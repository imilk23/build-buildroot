.PHONY: all
all:

SHELL := bash
BASH ?= bash
ROOT ?= $(shell pwd)/..

UNAME_M				:= $(shell uname -m)
BUILD_PATH			?= $(ROOT)/build
LINUX_PATH			?= $(ROOT)/linux
UBOOT_PATH			?= $(ROOT)/u-boot

.PHONY: buildroot
buildroot: optee-os
	@echo "buildroot from common.mk"
