.PHONY: tar

FULL_NAME := packer-maas-$(shell git describe --dirty)

tar:
	git ls-files --recurse-submodules vmware-esxi | \
	tar -cJf $(FULL_NAME).tar.xz --transform="s,^,$(FULL_NAME)/," -T -