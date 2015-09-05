FROM jekyll/stable
MAINTAINER Jordon Bedwell <jordon@envygeeks.io>
RUN \
  apk --update add readline-dev libxml2-dev libxslt-dev \
    zlib-dev ruby-dev yaml-dev libffi-dev \
      build-base && \

  cd ~ && \
  gem install --no-document octopress octopress-genesis-theme octopress-debugger \
    octopress-quote-tag octopress-solarized octopress-codefence && \
  apk del readline-dev libxml2-dev libxslt-dev zlib-dev \
    ruby-dev yaml-dev libffi-dev build-base
