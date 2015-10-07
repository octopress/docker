# Octopress Docker Images

* [![](https://badge.imagelayers.io/octopress/octopress:latest.svg)][latest] `latest`
[latest]:   https://imagelayers.io?images=octopress/octopress:latest

This image provides an isolated full install of Octopress with all the benefits
of `jekyll/stable` Docker image so if you are looking to do cool stuff you
should check out https://github.com/jekyll/jekyll-docker too because it has a
lot of neat stuff this image inherits.

## Installing Octopress

```sh
docker run --rm --volume=$(pwd):/srv/jekyll -it octopress/octopress \
  octopress install
```

## Data and mount location

Just like `jekyll/stable` this image uses `/srv/jekyll` for your data so mount
your volume to `/srv/jekyll` and run `jekyll s` and you'll be good to go from
there on out.
