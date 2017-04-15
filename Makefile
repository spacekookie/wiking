mkfile_path := $(dir $(abspath $(lastword $(MAKEFILE_LIST))))

default: dirs js themes

js: bootstrap jquery html5shiv respond

curlargs = --progress-bar

help:
	@echo 'Makefile for WikiNG javascript dependencies'
	@echo '                                           '
	@echo 'Usage:                                     '
	@echo '   make dirs             create static dirs'
	@echo '   make js       downloads javascript files'
	@echo '   make themes   downloads bootstrap themes'

dirs:
	mkdir -p ${mkfile_path}static/css
	mkdir -p ${mkfile_path}static/js
	mkdir -p ${mkfile_path}static/fonts

bootstrap:
	curl $(curlargs) http://getbootstrap.com/dist/css/bootstrap-theme.css -o ${mkfile_path}static/css/bootstrap-theme.css
	curl $(curlargs) http://getbootstrap.com/dist/css/bootstrap-theme.min.css -o ${mkfile_path}static/css/bootstrap-theme.min.css
	curl $(curlargs) http://getbootstrap.com/dist/css/bootstrap.css -o ${mkfile_path}static/css/bootstrap.css
	curl $(curlargs) http://getbootstrap.com/dist/css/bootstrap.min.css -o ${mkfile_path}static/css/bootstrap.min.css
	curl $(curlargs) http://getbootstrap.com/dist/fonts/glyphicons-halflings-regular.eot -o ${mkfile_path}static/fonts/glyphicons-halflings-regular.eot
	curl $(curlargs) http://getbootstrap.com/dist/fonts/glyphicons-halflings-regular.svg -o ${mkfile_path}static/fonts/glyphicons-halflings-regular.svg
	curl $(curlargs) http://getbootstrap.com/dist/fonts/glyphicons-halflings-regular.ttf -o ${mkfile_path}static/fonts/glyphicons-halflings-regular.ttf
	curl $(curlargs) http://getbootstrap.com/dist/fonts/glyphicons-halflings-regular.woff -o ${mkfile_path}static/fonts/glyphicons-halflings-regular.woff
	curl $(curlargs) http://getbootstrap.com/dist/fonts/glyphicons-halflings-regular.woff2 -o ${mkfile_path}static/fonts/glyphicons-halflings-regular.woff2
	curl $(curlargs) http://getbootstrap.com/dist/js/bootstrap.js -o ${mkfile_path}static/js/bootstrap.js
	curl $(curlargs) http://getbootstrap.com/dist/js/bootstrap.min.js -o ${mkfile_path}static/js/bootstrap.min.js

jquery:
	curl $(curlargs) https://code.jquery.com/jquery-3.2.1.js -o ${mkfile_path}static/js/jquery.js
	curl $(curlargs) https://code.jquery.com/jquery-3.2.1.min.js -o ${mkfile_path}static/js/jquery.min.js
	curl $(curlargs) https://code.jquery.com/jquery-3.2.1.min.map -o ${mkfile_path}static/js/jquery.min.map
	curl $(curlargs) https://code.jquery.com/jquery-migrate-3.0.0.js -o ${mkfile_path}static/js/jquery-migrate.js
	curl $(curlargs) https://code.jquery.com/jquery-migrate-3.0.0.min.js -o ${mkfile_path}static/js/jquery-migrate.min.js

html5shiv:
	curl $(curlargs) https://raw.githubusercontent.com/aFarkas/html5shiv/master/dist/html5shiv-printshiv.js -o ${mkfile_path}static/js/html5shiv-printshiv.js
	curl $(curlargs) https://raw.githubusercontent.com/aFarkas/html5shiv/master/dist/html5shiv-printshiv.min.js -o ${mkfile_path}static/js/html5shiv-printshiv.min.js
	curl $(curlargs) https://raw.githubusercontent.com/aFarkas/html5shiv/master/dist/html5shiv.js -o ${mkfile_path}static/js/html5shiv.js
	curl $(curlargs) https://raw.githubusercontent.com/aFarkas/html5shiv/master/dist/html5shiv.min.js -o ${mkfile_path}static/js/html5shiv.min.js

respond:
	curl $(curlargs) https://raw.githubusercontent.com/scottjehl/Respond/master/dest/respond.src.js -o ${mkfile_path}static/js/respond.js
	curl $(curlargs) https://raw.githubusercontent.com/scottjehl/Respond/master/dest/respond.min.js -o ${mkfile_path}static/js/respond.min.js

themes:
	curl $(curlargs) https://bootswatch.com/cerulean/bootstrap.css -o ${mkfile_path}static/css/bootstrap-cerulean.css
	curl $(curlargs) https://bootswatch.com/cerulean/bootstrap.min.css -o ${mkfile_path}static/css/bootstrap-cerulean.min.css
	curl $(curlargs) https://bootswatch.com/cosmo/bootstrap.css -o ${mkfile_path}static/css/bootstrap-cosmo.css
	curl $(curlargs) https://bootswatch.com/cosmo/bootstrap.min.css -o ${mkfile_path}static/css/bootstrap-cosmo.min.css
	curl $(curlargs) https://bootswatch.com/cyborg/bootstrap.css -o ${mkfile_path}static/css/bootstrap-cyborg.css
	curl $(curlargs) https://bootswatch.com/cyborg/bootstrap.min.css -o ${mkfile_path}static/css/bootstrap-cyborg.min.css
	curl $(curlargs) https://bootswatch.com/darkly/bootstrap.css -o ${mkfile_path}static/css/bootstrap-darkly.css
	curl $(curlargs) https://bootswatch.com/darkly/bootstrap.min.css -o ${mkfile_path}static/css/bootstrap-darkly.min.css
	curl $(curlargs) https://bootswatch.com/flatly/bootstrap.css -o ${mkfile_path}static/css/bootstrap-flatly.css
	curl $(curlargs) https://bootswatch.com/flatly/bootstrap.min.css -o ${mkfile_path}static/css/bootstrap-flatly.min.css
	curl $(curlargs) https://bootswatch.com/journal/bootstrap.css -o ${mkfile_path}static/css/bootstrap-journal.css
	curl $(curlargs) https://bootswatch.com/journal/bootstrap.min.css -o ${mkfile_path}static/css/bootstrap-journal.min.css
	curl $(curlargs) https://bootswatch.com/lumen/bootstrap.css -o ${mkfile_path}static/css/bootstrap-lumen.css
	curl $(curlargs) https://bootswatch.com/lumen/bootstrap.min.css -o ${mkfile_path}static/css/bootstrap-lumen.min.css
	curl $(curlargs) https://bootswatch.com/paper/bootstrap.css -o ${mkfile_path}static/css/bootstrap-paper.css
	curl $(curlargs) https://bootswatch.com/paper/bootstrap.min.css -o ${mkfile_path}static/css/bootstrap-paper.min.css
	curl $(curlargs) https://bootswatch.com/readable/bootstrap.css -o ${mkfile_path}static/css/bootstrap-readable.css
	curl $(curlargs) https://bootswatch.com/readable/bootstrap.min.css -o ${mkfile_path}static/css/bootstrap-readable.min.css
	curl $(curlargs) https://bootswatch.com/sandstone/bootstrap.css -o ${mkfile_path}static/css/bootstrap-sandstone.css
	curl $(curlargs) https://bootswatch.com/sandstone/bootstrap.min.css -o ${mkfile_path}static/css/bootstrap-sandstone.min.css
	curl $(curlargs) https://bootswatch.com/simplex/bootstrap.css -o ${mkfile_path}static/css/bootstrap-simplex.css
	curl $(curlargs) https://bootswatch.com/simplex/bootstrap.min.css -o ${mkfile_path}static/css/bootstrap-simplex.min.css
	curl $(curlargs) https://bootswatch.com/slate/bootstrap.css -o ${mkfile_path}static/css/bootstrap-slate.css
	curl $(curlargs) https://bootswatch.com/slate/bootstrap.min.css -o ${mkfile_path}static/css/bootstrap-slate.min.css
	curl $(curlargs) https://bootswatch.com/solar/bootstrap.css -o ${mkfile_path}static/css/bootstrap-solar.css
	curl $(curlargs) https://bootswatch.com/solar/bootstrap.min.css -o ${mkfile_path}static/css/bootstrap-solar.min.css
	curl $(curlargs) https://bootswatch.com/spacelab/bootstrap.css -o ${mkfile_path}static/css/bootstrap-spacelab.css
	curl $(curlargs) https://bootswatch.com/spacelab/bootstrap.min.css -o ${mkfile_path}static/css/bootstrap-spacelab.min.css
	curl $(curlargs) https://bootswatch.com/superhero/bootstrap.css -o ${mkfile_path}static/css/bootstrap-superhero.css
	curl $(curlargs) https://bootswatch.com/superhero/bootstrap.min.css -o ${mkfile_path}static/css/bootstrap-superhero.min.css
	curl $(curlargs) https://bootswatch.com/united/bootstrap.css -o ${mkfile_path}static/css/bootstrap-united.css
	curl $(curlargs) https://bootswatch.com/united/bootstrap.min.css -o ${mkfile_path}static/css/bootstrap-united.min.css
	curl $(curlargs) https://bootswatch.com/yeti/bootstrap.css -o ${mkfile_path}static/css/bootstrap-yeti.css
	curl $(curlargs) https://bootswatch.com/yeti/bootstrap.min.css -o ${mkfile_path}static/css/bootstrap-yeti.min.css

