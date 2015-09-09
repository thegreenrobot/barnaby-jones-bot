
.PHONY: lint test help
.SILENT: help

default: help

lint:  ## Lint the CoffeeScript files in the scripts/ directory.
	node_modules/.bin/coffeelint -f coffeelint.json scripts/ tests/

spec: test
test:  ## Run the mocha tests against the scripts directory.
	node_modules/.bin/mocha --compilers coffee:coffee-script/register tests --reporter spec

help:  ## This help dialog.
	echo "                _           _    "
	echo "    /\  /\_   _| |__   ___ | |_  "
	echo "   / /_/ / | | | '_ \ / _ \| __| "
	echo "  / __  /| |_| | |_) | (_) | |_  "
	echo "  \/ /_/  \__,_|_.__/ \___/ \__| "
	echo "                                                                  "
	echo "      You can run the following commands from this$(MAKEFILE_LIST):\n"
	IFS=$$'\n' ; \
	help_lines=(`fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sort`) ; \
	for help_line in $${help_lines[@]}; do \
		IFS=$$'#' ; \
		help_split=($$help_line) ; \
		help_command=`echo $${help_split[0]} | sed -e 's/^ *//' -e 's/ *$$//'` ; \
		help_info=`echo $${help_split[2]} | sed -e 's/^ *//' -e 's/ *$$//'` ; \
		printf "%-30s %s\n" $$help_command $$help_info ; \
	done

