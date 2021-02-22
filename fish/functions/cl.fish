function cl
    # helper function for cleaning LaTeX directory
    # use rm -f where the -f (force) removes silently
    # cd temp
    rm -f *.aux
    rm -f *.bbl
	rm -f *.bcf
    rm -f *.blg
    rm -f *.lof
    rm -f *.lot
    rm -f *.log
    rm -f *.out
    rm -f *.toc
    rm -f *.synctex.gz
    rm -f *.pyg
    rm -f *.fdb_latexmk
    rm -f *.fls
	rm -f main.run.xml
    # cd ../
    echo Completed cleaning of temp folder.
end
