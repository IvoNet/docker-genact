#!/usr/bin/env bash
NAME=genact
docker run                                   \
    -it                                      \
    --rm                                     \
    --name $NAME                             \
    ivonet/$NAME
