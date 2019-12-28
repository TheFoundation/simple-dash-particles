# simple-dash-particles

A simple, and highly configurable dashboard for self-hosted environments (or basically any link based navigation). Builded on the [simple-dash](https://github.com/kutyla-philipp/simple-dash) project, with modifications to match my likings. The cool particle effect provided by [particlesJS](https://github.com/VincentGarreau/particles.js/).

<p align="center"> <img src="https://github.com/danielbene/simple-dash-particles/blob/master/readme-gif/example-gif.gif"> </p>

I use this for a homelab environment, because it's quicker to setup than a reverse proxy, and I do not have to remember the countless port numbers.

## Usage

Personally prefer to use it as a container, but in theory it will simply run behind any web server (eg nginx, apache etc).

### Docker-hosting

[dbene/simple-dash-particles](https://hub.docker.com/r/dbene/simple-dash-particles)

For basic configuration, you can use the command below. Change the host dir to a path, where the dashboard configuration files should be.

`sudo docker run -d --name simple-dash-particles -p 80:80 -v /path/to/dir/:/usr/share/nginx/html/config/ dbene/simple-dash-particles`

The given volume folder will contain the files for configuration, and customization. (You should change the `/path/to/dir/` part with a valid path. ;) )



### Local-hosting

If you want to host, and use it in the same machine (without containerization) than you have to enable CORS requests, or modify the config file usage, and fix the particleJS settings in code. [starting point](https://github.com/VincentGarreau/particles.js/blob/master/demo/js/app.js)

Configuration/customization options are the same as the container based version. The only difference is that you need to modify the repo files directly (config.json / particles.json / main.css), instead of volume creation.

## Configuration

The dashboard is easily and highly configurable. The changes are dynamic, container restart not needed (just browser refresh). There's only 3 files that defines the most part of the look, these are:

### config.json

In the config.json file, you can setup the icons, and the page title. The config is pretty straigthforward:
 - every icon must have an alt (like a hint, or a tooltip) string
 - an icon code (you can look one up in the [Font Awesome Gallery](https://fontawesome.com/icons?d=gallery))
 - and a link that will open on click action
 
You can add as many icons (blocks) as you like. They have to be comma separated, but do not put a comma after the last one.

**TL;DR:** just follow the sample pattern, and you will be good.

### particles.json

This file describes the looks, and behaviour of the particles. You can fine tune this manually, or generate a new config on this site: [particles.js](https://vincentgarreau.com/particles.js/). The existing file can be replaced with the saved file.

### main.css

Contains the styling of the page. Nearly every style aspect of the dash can be modified here. For a really simple example: you can modify the background color in the `background-color: #1e1e1e;` row. 
