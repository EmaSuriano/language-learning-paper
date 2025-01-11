MAINDOC = memoria
DOCS = $(wildcard *.tex)
DVIFILE = $(patsubst %,%.dvi,$(MAINDOC))
PSFILE = $(patsubst %,%.ps,$(MAINDOC))
PDFFILE = $(patsubst %,%.pdf,$(MAINDOC))
TEXCODE = $(patsubst code/%.cc, code/%.tex, $(wildcard code/*.cc))

all:  $(PDFFILE)

$(DVIFILE): $(TEXCODE) ${DOCS}
$(PDFFILE): $(TEXCODE) ${DOCS}

code/%.tex: code/%.cc
	cpp2latex -h -s 0 -t 4 $< > code/$*.tex
	#lgrind -i -lc -t 4 $< > code/$*.tex

%.pdf: %.tex
	pdflatex --shell-escape $*
	makeglossaries $*
	bibtex $*
	pdflatex --shell-escape $*
	pdflatex --shell-escape $*

%.dvi: %.tex
	latex  $*
	bibtex $*
	latex  $*
	latex  $*

%.ps: %.dvi
	dvips $< -o $@

#%.pdf: %.ps
#	ps2pdf -dMaxSubsetPct=100 -dCompatibilityLevel=1.2 -dSubsetFonts=true -dEmbedAllFonts=true $<

clean:
	@rm -f *.aux *.log *.out *.toc *.lof *.lot *.bbl *.blg *.synctex.gz *.fls *.fdb_latexmk *.gls *.ist *.acn *.acr *.alg *.glg *.glo *.glsdefs *.loa *.xdy *.dvi *~ *.ps *.pdf *.bak
