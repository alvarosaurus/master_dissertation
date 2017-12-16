.PHONY: all prepare clean 
default: all

# the name of the article file (without extension)
ARTICLE = master

all: prepare
	cd temp && \
	pdflatex $(ARTICLE).tex && \
	bibtex $(ARTICLE) && \
	pdflatex $(ARTICLE) && \
	pdflatex $(ARTICLE).tex
	mv -f temp/$(ARTICLE).pdf docs
	echo created docs/$(ARTICLE).pdf 

# copy all files required by latex to the temp dir
prepare: 
	mkdir -p temp
	cp -r templates/* temp
	cp -r docs/* temp
	mv temp/Chapters/*.tex temp
	cp -r figures/* temp
	cp -r tables/* temp

# cleanup output and temp files
clean:
	rm -f docs/$(ARTICLE).pdf
	rm -fr temp/*

