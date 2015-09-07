# Octopress Docker Images

This image provides an isolated full install of Octopress with all the benefits
of `jekyll/stable` Docker image so if you are looking to do cool stuff you
should check out https://github.com/jekyll/docker-jekyll too because it has a
lot of neat stuff this image inherits.

## Installing Octopress

```sh
docker run --rm --volume=$(pwd):/srv/jekyll -it octopress/octopress \
  octopress install
```

## Normalizing for Jekyll Workflow

The `octopress` command has been shivved to provided a `jekyllize` sub-command
that will ask you a few questions and get you going quickly.  It will also ask
you if you would like to modify Octopress to work with the standard Jekyll
workflow so that you can do `jekyll s` instead of using Rake and custom tasks.
***Dully note that this is only for stable Octopress and could change in the
future when Octopress moves to the gem version of itself.***

```sh
docker run --rm --volume=$(pwd):/srv/jekyll -it octopress/octopress \
  octopress jekyllize
```


## Data and mount location

Just like `jekyll/stable` this image uses `/srv/jekyll` for your data so mount
your volume to `/srv/jekyll` and run `jekyll s` and you'll be good to go from
there on out.
