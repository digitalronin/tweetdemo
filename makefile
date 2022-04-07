# Requires dip - `gem install dip`
# See: https://github.com/evilmartians/ruby-on-whales

# This seems to install all the gems. I'm not sure if it's needed, or if `dip
# up` does this anyway, if gems are missing
init:
	dip provision

server:
	dip up

stop:
	dip down

shell:
	# docker run -it -v $$(pwd):/app tweetdemo-application-dev:1.0.0 bash
	dip bash
