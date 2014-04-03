MASTER = bare_conf

.PHONY : watch build clean distclean

watch:
	latexmk -pdf -pvc $(MASTER)

build:
	latexmk -pdf $(MASTER)

clean:
	latexmk -c $(MASTER)

distclean:
	latexmk -C $(MASTER)
