POSSIBLE += $(shell ls -1 | egrep -v '\.dat|\.sh|README|makefile' | sed -e 's/$$/.dat/g')

all: ${POSSIBLE}

%.dat : %
	@strfile $< $@
