# HestiaCP with Node.JS support.

Nginx Templates to make reverse proxy for NodeJS App with stats support

## Installation

Upload `*.tpl`, `*.stpl` to `/usr/local/hestia/data/templates/web/nginx/`

NodeJS Port 3000 template redirect ALL request from %domain% to http://127.0.0.1:3000 NodeJS App.

NodeJS Port 3000 Assets redirect request from %domain% to http://127.0.0.1:3000 NodeJS App, but assets folder will be served by Nginx (assets folder must be available inside public_html folder).

NodeJS Socket template redirect ALL request from %domain% to unix socket.