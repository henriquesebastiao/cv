doc := "cv"

all: format build thumbnail compress

alias c := clean
alias f := format
alias b := build

format:
    @tex-fmt {{doc}}.tex {{doc}}.cls

build:
    @latexmk -pdfxe {{doc}}.tex

compress:
    @compress-pdf {{doc}}.pdf
    @compress-pdf {{doc}}.pdf
    @compress-pdf {{doc}}.pdf
    @compress-pdf {{doc}}.pdf

thumbnail:
    @pdftoppm -png -hide-annotations -scale-to 800 {{doc}}.pdf temp
    @magick temp-1.png -bordercolor gray20 -border 3x3 -append temp.png
    @magick temp.png -bordercolor gray20 -border 3x3 temp.png
    @pngquant temp.png -Q 0-10 -f -o thumbnail.png
    @rm -f temp*.png

clean:
    @tex-clean
    @rm -f *.html
    @rm -f *.bak[0-9]*