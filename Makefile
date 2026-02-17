.PHONY: run test fmt
.DEFAULT_GOAL := run

run:
	lua ./notnix

test:
	export NOTNIX_RUN_TEST=true \
		NOTNIX_INSTALL_CMD="sudo dnf install" \
		NOTNIX_REMOVE_CMD="sudo dnf remove" \
		&& lua ./notnix -v

fmt:
	stylua ./notnix
