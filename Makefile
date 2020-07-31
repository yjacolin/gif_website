export JEKYLL_VERSION=latest
run:
	docker run --rm --name=gif_website --volume="${PWD}:/srv/jekyll" -p 4000:4000 -it jekyll/jekyll:${JEKYLL_VERSION} jekyll serve --watch --incremental

stop:
	docker stop gif_website
