.DEFAULT_GOAL := help

define HELP_COMMAND
Usage:
  make <command>

Commands:
  test                       Test this project using pytest.
  format                     Format the source code using black and isort.
  lint                       Runs the linting tool (mypy)
  help                       Show this text
endef
export HELP_COMMAND

test:
	@pytest \
		--html=tests/report/index.html \
		--cov-config=.coveragerc \
		--cov-context=test \
		--cov-report=term-missing \
		--cov-report=html:tests/htmlcov \
		--cov=asynctranslator \
		tests

format:
	@black asynctranslator
	@isort asynctranslator

lint:
	@mypy asynctranslator

tox:
	@tox .

help:
	@$(info $(HELP_COMMAND))
