FROM ruby:2.3.1

RUN adduser --disabled-password --gecos '' errbit
WORKDIR /home/errbit/app

RUN git clone https://github.com/errbit/errbit.git .
RUN bundle install

COPY docker-entrypoint.sh .
RUN chmod u+x docker-entrypoint.sh

RUN chown -R errbit:errbit .

USER errbit

EXPOSE 8080

ENTRYPOINT ["./docker-entrypoint.sh"]
CMD ["puma", "-C", "config/puma.default.rb"]
