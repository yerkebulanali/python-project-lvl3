pypi:
	python3 -m pip install --user --index-url https://test.pypi.org/simple --extra-index-url https://pypi.org/simple yerkebulanali-page_loader

install:
	poetry install

config:
	poetry config repositories.yerkebulanali https://test.pypi.org/legacy/

build:
	poetry build

publish:
	poetry publish -r yerkebulanali

lint:
	poetry run flake8 tests page_loader

test:
	poetry run pytest --cov-config=.coveragerc --cov=page_loader --cov-report=xml tests/