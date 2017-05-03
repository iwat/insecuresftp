#!/bin/sh
docker run -it -v `pwd`/upload:/home/foo/upload -p 2222:22 iwatth/insecuresftp
