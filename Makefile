help:
	@echo 'Makefile for WikiNG javascript dependencies'
	@echo '                                           '
	@echo 'Usage:                                     '
	@echo '   make js       downloads javascript files'

js:
	yarn install

	mkdir -p static/{css,js,fonts}

	# bootstrap
	cp node_modules/bootstrap/dist/css/bootstrap-theme.css static/css/
	cp node_modules/bootstrap/dist/css/bootstrap-theme.min.css static/css/
	cp node_modules/bootstrap/dist/css/bootstrap.css static/css/
	cp node_modules/bootstrap/dist/css/bootstrap.min.css static/css/
	cp node_modules/bootstrap/dist/fonts/glyphicons-halflings-regular.eot static/fonts/
	cp node_modules/bootstrap/dist/fonts/glyphicons-halflings-regular.svg static/fonts/
	cp node_modules/bootstrap/dist/fonts/glyphicons-halflings-regular.ttf static/fonts/
	cp node_modules/bootstrap/dist/fonts/glyphicons-halflings-regular.woff static/fonts/
	cp node_modules/bootstrap/dist/fonts/glyphicons-halflings-regular.woff2 static/fonts/
	cp node_modules/bootstrap/dist/js/bootstrap.js static/js/
	cp node_modules/bootstrap/dist/js/bootstrap.min.js static/js/

	# jquery
	cp node_modules/jquery/dist/jquery.js static/js/
	cp node_modules/jquery/dist/jquery.min.js static/js/
	cp node_modules/jquery/dist/jquery.min.map static/js/

	# html5shiv
	cp node_modules/html5shiv/dist/html5shiv-printshiv.js static/js/
	cp node_modules/html5shiv/dist/html5shiv-printshiv.min.js static/js/
	cp node_modules/html5shiv/dist/html5shiv.js static/js/
	cp node_modules/html5shiv/dist/html5shiv.min.js static/js/

	# respond.js
	cp node_modules/respond.js/dest/respond.min.js static/js/respond.min.js
	cp node_modules/respond.js/dest/respond.src.js static/js/respond.js

