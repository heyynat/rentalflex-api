FROM ruby:2.7

WORKDIR /app

COPY Gemfile Gemfile.lock /app/
RUN bundle install

COPY . /app/

EXPOSE 4567
CMD ["bundle", "exec", "rackup", "-o", "0.0.0.0"]
