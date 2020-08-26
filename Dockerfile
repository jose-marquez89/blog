FROM ruby:2.7
RUN gem install jekyll bundler
RUN mkdir blog
WORKDIR /blog
ENTRYPOINT bundle update && bundle exec jekyll serve \
  --host 0.0.0.0 --config _config.yml
