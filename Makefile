mkfile_path := $(dir $(abspath $(lastword $(MAKEFILE_LIST))))

help:
	@echo 'Makefile for WikiNG javascript dependencies'
	@echo '                                           '
	@echo 'Usage:                                     '
	@echo '   make js       downloads javascript files'

js:
	yarn install

	mkdir -p ${mkfile_path}static/{css,js,fonts}

	# bootstrap
	cp node_modules/bootstrap/dist/css/bootstrap-theme.css ${mkfile_path}static/css/
	cp node_modules/bootstrap/dist/css/bootstrap-theme.min.css ${mkfile_path}static/css/
	cp node_modules/bootstrap/dist/css/bootstrap.css ${mkfile_path}static/css/
	cp node_modules/bootstrap/dist/css/bootstrap.min.css ${mkfile_path}static/css/
	cp node_modules/bootstrap/dist/fonts/glyphicons-halflings-regular.eot ${mkfile_path}static/fonts/
	cp node_modules/bootstrap/dist/fonts/glyphicons-halflings-regular.svg ${mkfile_path}static/fonts/
	cp node_modules/bootstrap/dist/fonts/glyphicons-halflings-regular.ttf ${mkfile_path}static/fonts/
	cp node_modules/bootstrap/dist/fonts/glyphicons-halflings-regular.woff ${mkfile_path}static/fonts/
	cp node_modules/bootstrap/dist/fonts/glyphicons-halflings-regular.woff2 ${mkfile_path}static/fonts/
	cp node_modules/bootstrap/dist/js/bootstrap.js ${mkfile_path}static/js/
	cp node_modules/bootstrap/dist/js/bootstrap.min.js ${mkfile_path}static/js/

	# jquery
	cp node_modules/jquery/dist/jquery.js ${mkfile_path}static/js/
	cp node_modules/jquery/dist/jquery.min.js ${mkfile_path}static/js/
	cp node_modules/jquery/dist/jquery.min.map ${mkfile_path}static/js/

	# html5shiv
	cp node_modules/html5shiv/dist/html5shiv-printshiv.js ${mkfile_path}static/js/
	cp node_modules/html5shiv/dist/html5shiv-printshiv.min.js ${mkfile_path}static/js/
	cp node_modules/html5shiv/dist/html5shiv.js ${mkfile_path}static/js/
	cp node_modules/html5shiv/dist/html5shiv.min.js ${mkfile_path}static/js/

	# respond.js
	cp node_modules/respond.js/dest/respond.min.js ${mkfile_path}static/js/respond.min.js
	cp node_modules/respond.js/dest/respond.src.js ${mkfile_path}static/js/respond.js

