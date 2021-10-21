
.PHONY: clean test docs cleandocs cleanall

env:
	conda env create

test:
	python -m unittest discover --verbose --start-directory tests

docs:
	sphinx-apidoc -f -o docs/source package/
	sphinx-build -b html docs/source docs/build

cleandocs:
	git clean -Xdf docs

clean:
	git clean -Xdf -e docs

cleanall: clean cleandocs