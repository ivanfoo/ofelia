# Package configuration
PROJECT = ofelia
COMMANDS = ofelia
DEPENDENCIES = golang.org/x/tools/cmd/cover
PACKAGES = github.com/mcuadros/ofelia/core \
	github.com/mcuadros/ofelia/middlewares \
	github.com/mcuadros/ofelia/cli
# End configuration

MAKEFILE = Makefile.main
MAKEFILE_SRC = git@github.com:src-d/devops.git
MAKEFILE_DEST = .devops
MAKEFILE_TMP = $(MAKEFILE_DEST)/common/$(MAKEFILE)

$(MAKEFILE):
	git clone $(MAKEFILE_SRC) $(MAKEFILE_DEST)
	cp $(MAKEFILE_TMP) ./
	rm -rf $(MAKEFILE_DEST)

include $(MAKEFILE)
