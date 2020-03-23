I use this Docker image to create my resume using LaTeX.

## Requirements

* Docker
* Make

## Instructions

```
# clone the repo
mkdir resume && git clone https://github.com/ej-f/docker-latex-resume.git $_ && cd $_
# build a LaTeX docker image 
make build
# put your .tex files inside src folder
# compile your documents using pdflatex
make run
# have fun :-)
```
