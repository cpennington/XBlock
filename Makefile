PHONY: test docs types quality package

test:
	coverage run -m nose

docs:
	cd doc && make html

types:
	tox -e types

quality:
	pep8
	script/max_pylint_violations

package:
	python setup.py register sdist upload
