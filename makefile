POSSIBLE += $(shell ls -1 | egrep -v '\.dat|\.sh|README|makefile' | sed -e 's/$$/.dat/g')
MYPATH = $(shell fortune -f 2>&1 | head -1 | cut -d' ' -f2)
all: ${POSSIBLE}

%.dat : %
	@strfile $< $@ 
	@cp $@ "${MYPATH}"
	@cp $(shell basename $@ .dat) "${MYPATH}" 
	@echo "Copied $@ and $(shell basename $@ .dat) to ${MYPATH}"
