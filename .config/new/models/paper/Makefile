
TARGET = paper

SECTIONSDIR = sec
SECTIONS := $(shell find $(SECTIONSDIR) -name '*.tex')
APPENDIXDIR = app
APPENDIX := $(shell find $(APPENDIXDIR) -name '*.tex')
# cannot find the figures since they are generated
FIGSDIR = fig

all: figures $(TARGET).pdf
	killall -HUP mupdf || true

diff:
	git difftex $(TARGET).tex > $(TARGET).diff
	pdflatex -synctex=1 -interaction=nonstopmode -halt-on-error $(TARGET).diff
	killall -HUP mupdf || true

figures:
	@make --no-print-directory -C $(FIGSDIR) all

$(TARGET).pdf: $(FIGSDIR)/.updated $(TARGET).tex $(TARGET).sty $(TARGET).bib $(SECTIONS) $(APPENDIX)
	pdflatex -interaction=nonstopmode -halt-on-error $(TARGET).tex
	#bibtex $(TARGET)
	#pdflatex -interaction=nonstopmode -halt-on-error $(TARGET).tex
	pdflatex -interaction=nonstopmode -halt-on-error $(TARGET).tex

clean:
	rm -f $(TARGET).{out,log,aux,pdf,bbl,blg,vtc}
	@make --no-print-directory -C $(FIGSDIR) clean

zip: all
	rm -f $(TARGET).zip
	zip -r $(TARGET).zip \
		$(TARGET).tex \
		$(TARGET).sty \
		$(TARGET).bib \
		$(SECTIONS) \
		$(APPENDIX) \
		$(FIGSDIR)/*.pdf

arxiv: all
	rm -f 'arxiv.zip'
	$(eval TMP := $(shell mktemp --tmpdir --directory))
	cp -r $(TARGET).tex \
		$(TARGET).bbl \
		$(TARGET).sty \
		$(SECTIONSDIR) \
		$(APPENDIXDIR) \
		$(FIGSDIR) \
		$(TMP)/
	cd $(TMP) ; \
		sed -r \
		-e 's/^\%.*$$/\%/g' \
		-e 's/^(([^%]|\\%)*[^\])%.*$$/\1\%/g' \
		-i {,**/}*.tex $(TARGET).sty ; \
		zip -r 'arxiv.zip' \
		$(TARGET).tex \
		$(TARGET).bbl \
		$(TARGET).sty \
		$(SECTIONS) \
		$(APPENDIX) \
		$(FIGSDIR)/*.pdf
	cp {$(TMP),.}/arxiv.zip
	rm -r $(TMP)

