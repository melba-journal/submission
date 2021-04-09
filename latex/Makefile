CC = latexmk
CFLAGS = -use-make -pdflatex -silent -time

.PHONY: all clean FORCE

PDFS = melba-sample-accepted-special-issue.pdf \
	melba-sample-accepted.pdf \
	melba-sample-in-submission.pdf


all: $(PDFS)

melba-sample-%.tex: melba-sample.tex melba-sample-%.patch
	patch $^ -o $@

melba-sample-%.pdf: melba-sample-%.tex melba.sty FORCE
	$(CC) $(CFLAGS) $<

melba-sample.pdf: melba-sample.tex melba.sty FORCE
	$(CC) $(CFLAGS) $<


clean:
	$(CC) -c
	rm -f *.aux *.bbl *.blg *.log *.fls *.fdb_latexmk
	rm -f melba-sample-*.tex

FORCE:
