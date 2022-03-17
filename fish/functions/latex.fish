function latex
    # pdflatex main.tex
    # pdflatex -shell-escape main.tex
    pdflatex -shell-escape --output-directory=temp main.tex
end
