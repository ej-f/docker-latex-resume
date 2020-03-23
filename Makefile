image_name="texlive-ubuntu"
build:
	docker build --no-cache -t $(image_name) .
run:
	docker run --name latex --rm -v $(PWD)/src:/resume -w /resume -it $(image_name) bash -c "ls *.tex | xargs -n 1 pdflatex -iteraction=nonstopmode"
