.PHONY: install

all: install

install:
	rsync -avz --exclude '.git' . ~
