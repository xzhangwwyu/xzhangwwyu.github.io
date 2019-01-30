#!/usr/bin/env bash

cd $(dirname $0)

cd ../

jekyll serve --host=0.0.0.0 --incremental -V
