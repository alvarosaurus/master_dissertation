.PHONY: all prepare clean 
default: all

# the name of the article file (without extension)
ARTICLE = master
# the name of the extended abstract file (without extension)
ABSTRACT = ext_abstract

# build the thesis and save it to docs/master.pdf
all: prepare
	cd temp && \
	pdflatex $(ARTICLE).tex && \
	bibtex $(ARTICLE) && \
	pdflatex $(ARTICLE) && \
	pdflatex $(ARTICLE).tex
	mv -f temp/$(ARTICLE).pdf docs
	echo created docs/$(ARTICLE).pdf 

# build the extended abstract and save it to docs/ext_abstract.pdf
abstract: prepare
	cd temp && \
	pdflatex $(ABSTRACT).tex && \
	bibtex $(ABSTRACT) && \
	pdflatex $(ABSTRACT) && \
	pdflatex $(ABSTRACT).tex
	mv -f temp/$(ABSTRACT).pdf docs
	echo created docs/$(ABSTRACT).pdf 

# copy all files required by latex to the temp dir
prepare: 
	mkdir -p temp
	cp -r templates/* temp
	cp -r docs/* temp
	mv temp/Chapters/*.tex temp
	mv temp/Appendices/*.tex temp
	cp -r figures/* temp
	cp -r tables/* temp

# cleanup output and temp files
clean:
	rm -f docs/$(ARTICLE).pdf
	rm -fr temp/*

