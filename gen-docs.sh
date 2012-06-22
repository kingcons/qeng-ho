#!/bin/sh
sbcl --eval "(ql:quickload '(qeng-ho sb-introspect cl-api))" 
     --eval "(cl-api:api-gen :qeng-ho "docs/index.html")" 
     --eval "(progn (terpri) (sb-ext:quit))"
