CC = latexmk
CFLAGS = -use-make -pdflatex -silent -time

.PHONY: all clean FORCE

MAINDIR = ..

PDFS = $(MAINDIR)/melba-sample-accepted-special-issue.pdf \
	$(MAINDIR)/melba-sample-accepted.pdf \
	$(MAINDIR)/melba-sample-in-submission.pdf


all: $(PDFS)

melba.sty: $(MAINDIR)/melba.sty
	cp $< $@

sample.bib: $(MAINDIR)/sample.bib
	cp $< $@

melba-sample-%.tex: $(MAINDIR)/melba-sample.tex melba-sample-%.patch
	patch $^ -o $@

$(MAINDIR)/melba-sample-%.pdf: melba-sample-%.tex melba.sty FORCE
	$(CC) $(CFLAGS) $<
	cp $(@F) $@

$(MAINDIR)/melba-sample.pdf: melba-sample.tex melba.sty FORCE
	$(CC) $(CFLAGS) $<
	cp $(@F) $@


clean:
	rm -f *.aux *.bbl *.blg *.log *.fls *.fdb_latexmk
	rm -f melba-sample-*.tex
	rm -f *.tex melba.sty sample.bib

FORCE:
