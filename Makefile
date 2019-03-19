all: build/dpg19.tex

texoptions = \
	     --lualatex \
	     --interaction=nonstopmode \
	     --halt-on-error \
	     --output-directory=build

build/dpg19.tex: FORCE | build
	latexmk $(texoptions) dpg19.tex

preview: FORCE | build
	latexmk $(texoptions) -pvc dpg19.tex

FORCE:

build:
	mkdir -p build

clean:
	rm -r build
