# Docker battlenet-lancache-prefill

Dockerized version of the [Battlenet-lancache-prefill](https://github.com/tpill90/Battlenet-lancache-prefill/)

This allow ot prefill your cache

## usage

### build

`docker build . -t bnet-prefill`

### run

Use to prefill cache with all available products:

`docker run egguy/bnet-prefill prefill --all`

With specific products (Heartstone + Overwatch):

`docker run -it egguy/bnet-prefill prefill -p hsb -p pro`
