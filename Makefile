build:
	docker build -t blog .

run:
	docker run -v $(PWD):/srv/jekyll --rm -p 4000:4000 -p 35729:35729 -t blog bundle exec jekyll serve --host 0.0.0.0 --livereload -P 4000

how:
	docker run --rm --volume="$(PWD):/srv/jekyll:Z" -it jekyll/jekyll:3.8 jekyll build

serve:
	docker run --rm --volume="$(PWD):/srv/jekyll:Z" --publish [::1]:4000:4000 jekyll/jekyll:3.8 jekyll serve
