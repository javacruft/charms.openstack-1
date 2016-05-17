#!/usr/bin/make
PYTHON := /usr/bin/env python

clean:
	@rm -rf .testrepository .unit-state.db .tox .eggs charm.openstack.egg-info
	@find . -iname '*.pyc' -delete

lint:
	@tox -e pep8

test:
	@echo Starting unit tests...
	@tox -e py27
