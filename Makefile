# A Makefile to compile LaTeX more easily
TARGET := presentation

mupdf: $(TARGET).pdf
	mupdf $(TARGET).pdf

# needs to be run twice for toc, etc.
presentation.pdf:
	pdflatex $(TARGET).tex
	pdflatex $(TARGET).tex

edit:
	vimx $(TARGET).tex

clean:
	rm $(TARGET).pdf
	rm *.aux *.log *.nav *.out *.snm *.toc
