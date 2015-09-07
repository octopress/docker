FROM jekyll/jekyll:stable
MAINTAINER Jordon Bedwell <jordon@envygeeks.io>
COPY copy /
RUN \
  apk --update add readline-dev libxml2-dev libxslt-dev \
    zlib-dev ruby-dev yaml-dev libffi-dev \
      build-base git && \

  cd ~ && \
  gem install --no-document octopress && \
  mkdir -p /opt/octopress && cd /opt/octopress && \
  git clone https://github.com/imathis/octopress.git . && \
  bundle install && bundle update && bundle clean --force && \
  apk del readline-dev libxml2-dev libxslt-dev zlib-dev \
    ruby-dev yaml-dev libffi-dev build-base git && \

  rm -rf .editorconfig .git .gitattributes .gitignore .powrc .travis.yml \
    CHANGELOG.markdown README.markdown config.rb config.ru
