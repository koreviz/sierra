##
# Sierra Make
# Copyright(c) 2017 Koreviz
##
SHELL := /bin/bash

REPO = koreviz/sierra

all: configure

clean:
	rm -fR node_modules

configure:
	npm install

push:
	rm -fR .git
	git init
	git add .
	git commit -m "Initial release"
	git remote add origin gh:$(REPO).git
	git push origin master

update:
	npm update

.PHONY: test
