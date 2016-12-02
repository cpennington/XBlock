PHONY: test docs types quality package

test:
	tox

docs:
	cd doc && make html

types:
	tox -e types

quality:
	pep8
	script/max_pylint_violations

package:
	python setup.py register sdist upload
