# SPDX-License-Identifier: AGPL-3.0-or-later

include ./build.mk

all: build-ant

install:
	cp build/lib/nekohtml.jar build/lib/nekohtml-1.9.13.1z.jar
	$(call install_jetty_lib, build/lib/nekohtml-1.9.13.1z.jar)
	$(call install_jar_lib, build/lib/nekohtml-1.9.13.1z.jar)

clean: clean-ant
