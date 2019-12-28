#!/bin/sh

if [ "$(ls -A /usr/share/nginx/html/config/)" ]; then
	echo "INFO: Config dir contains files, folder not gets reinitialized."
else
	cp particles.json config/particles.json
	cp config.json config/config.json
	cp common/css/main.css config/main.css

	sed -i 's/particles.json/config\/particles.json/g' common/js/app.js
	sed -i 's/config.json/config\/config.json/g' index.html
	sed -i 's/common\/css\/main.css/config\/main.css/g' index.html
fi

nginx -g 'daemon off;'
