doc := "cv"

all: format spell longlines build warn thumbnail compress

alias c := clean
alias f := format
alias w := warn
alias s := spell
alias l := longlines
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

warn:
    @tex-check {{doc}}.log

longlines:
    @long-lines {{doc}}.tex {{doc}}.bib justfile

spell:
    @spell-check -b {{doc}}.tex {{doc}}.bib

clean:
    @tex-clean
    @rm -f *.html
    @rm -f *.bak[0-9]*