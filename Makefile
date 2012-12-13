.PHONY: install

all: install

install:
	rsync -avz . ~
