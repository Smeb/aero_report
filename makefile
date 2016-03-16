.PHONY: aero_report.pdf all clean

all: aero_report.pdf

aero_report.pdf: aero_report.tex
	latexmk -pdf -pdflatex="pdflatex -interaction=nonstopmode" -use-make aero_report.tex -jobname=./output/aero_report

clean:
	rm ./output/*
