function lasand
    # pdflatex sand.tex
    # pdflatex -shell-escape sand.tex
    pdflatex -shell-escape --output-directory=temp sand.tex
end
