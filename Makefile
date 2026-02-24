.PHONY: run test fmt
.DEFAULT_GOAL := run

run:
	lua ./notnix

test:
	export NOTNIX_RUN_TEST=true \
		NOTNIX_INSTALL_CMD="sudo dnf install" \
		NOTNIX_REMOVE_CMD="sudo dnf remove" \
		&& lua ./notnix -v -x pkg.  

# -x is not documented, fortunately i read the code not the docs
# code is the best docs

fmt:
	stylua ./notnix
