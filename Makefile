all: article

article: article.pdf

%.pdf: %.tex main.bib
	latexmk -pdf $<

clean:
	for e in pdf dvi aux toc ind fdb_latexmk log ilg fls idx out; do \
	  rm -rf *.$${e}; \
	done
