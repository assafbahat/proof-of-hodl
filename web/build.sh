#!/bin/sh

(cat static/jquery-3.1.1.slim.min.js \
     static/bootstrap/js/bootstrap.mini.js; \
 echo ';'; \
 browserify client.js | uglifyjs -c warnings=false -m \
)  > static/q.js

