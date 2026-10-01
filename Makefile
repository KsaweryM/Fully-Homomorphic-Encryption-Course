# Builds every presentation in FHE_part_*/ into builded_presentation/<part>.pdf.
#
#   make                 build all presentations
#   make FHE_part_II     build a single presentation
#   make clean           remove auxiliary files and PDFs

LATEXMK   := latexmk
LATEXOPTS := -pdf -interaction=nonstopmode -halt-on-error -file-line-error

BUILD := build
PDF   := builded_presentation
PARTS := $(sort $(patsubst %/main.tex,%,$(wildcard FHE_part_*/main.tex)))
PDFS  := $(PARTS:%=$(PDF)/%.pdf)

.PHONY: all clean $(PARTS)

all: $(PDFS)

$(PARTS): %: $(PDF)/%.pdf

# Auxiliary files go to build/<part>/; latexmk runs inside the part directory
# so \graphicspath{{images/}} resolves relative to the sources.
.SECONDEXPANSION:
$(PDF)/%.pdf: $$(wildcard %/*.tex) $$(wildcard %/images/*)
	cd $* && $(LATEXMK) $(LATEXOPTS) -outdir=$(CURDIR)/$(BUILD)/$* main.tex
	@mkdir -p $(PDF)
	cp $(BUILD)/$*/main.pdf $@

clean:
	rm -rf $(BUILD) $(PDF)
