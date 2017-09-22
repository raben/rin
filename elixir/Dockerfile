FROM elixir:1.5.1-alpine
MAINTAINER rabe_ame rabe.ame@gmail.com

RUN apk add --update --no-cache vim nodejs-npm \
	&& rm -rf /var/cache/apk/*

WORKDIR /var/www/rin

ADD ./src/rin/deps ./deps
ADD ./src/rin/mix.exs .
ADD ./src/rin/mix.lock .

WORKDIR /var/www/rin
RUN mix local.hex --force \
	&& mix archive.install https://github.com/phoenixframework/archives/raw/master/phx_new-1.3.0.ez --force \
	&& mix local.rebar --force \
	&& mix deps.get \
	&& mix ecto.create

CMD tail -f /dev/null

#ENTRYPOINT mix phx.server
