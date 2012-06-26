#!/bin/sh
sbcl --load daemonize.lisp daemon.conf $1
