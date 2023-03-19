build: pdf

pdf: main.tex out
	pdflatex --jobname=Algo_Surkis_Anton_HW05 --shell-escape --output-directory=out $<

out:
	mkdir -p out

clean:
	rm -rf out
