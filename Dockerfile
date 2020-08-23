FROM ruby:2.7

COPY . /app

WORKDIR /app

RUN gem install jekyll bundler

RUN jekyll new blog

WORKDIR ./blog

CMD ["bundle", "exec", "jekyll", "serve", "--host", "0.0.0.0"]

EXPOSE 4000 
