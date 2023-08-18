#!/usr/bin/env sh

docker run -v $PWD:/md peterdavehello/markdownlint markdownlint --fix docs --disable MD013 MD029 MD033 MD024
