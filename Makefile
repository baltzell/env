build:
	+mkdocs build -f ./bm/mkdocs.yml -d $(shell pwd)/public

clean:
	+rm -rf build
