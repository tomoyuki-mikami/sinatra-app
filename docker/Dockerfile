FROM ruby:2.5.5

ENV APP_ROOT /app

RUN gem install bundler

COPY app $APP_ROOT
WORKDIR $APP_ROOT
RUN bundle install

EXPOSE 9292
ENTRYPOINT [ "bundle", "exec" ]
CMD [ "rackup", "--host", "0.0.0.0" ]