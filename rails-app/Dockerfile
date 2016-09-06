FROM ruby:2.3.1

RUN curl -sL https://deb.nodesource.com/setup_6.x | bash -
RUN apt-get update && apt-get install -y nodejs less

RUN adduser --disabled-password --gecos '' rails
WORKDIR /home/rails/app

COPY Gemfile .
COPY Gemfile.lock .
RUN bundle

COPY . .
RUN chown -R rails:rails .

USER rails

CMD ["rails", "s", "-b", "0.0.0.0"]
