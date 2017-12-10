.PHONY: all clean 
default: all

# the name of the article file (without extension)
ARTICLE = v2-acmsmall-sample

all: prepare
	cd temp && \
	pdflatex $(ARTICLE) && \
	bibtex $(ARTICLE) && \
	pdflatex $(ARTICLE) && \
	pdflatex $(ARTICLE)
	mv -f temp/$(ARTICLE).pdf docs
	echo created docs/$(ARTICLE).pdf 

# copy all files required by latex to the temp dir
prepare: 
	mkdir -p temp
	cp templates/ACM-Reference-Format-Journals.bst temp
	cp templates/acmsmall.cls temp
	cp templates/acmsmall-mouse.eps temp
	cp docs/$(ARTICLE).tex temp
	cp docs/$(ARTICLE).bib temp

# cleanup output and temp files
clean:
	rm -f docs/$(ARTICLE).pdf
	rm -f temp/*

