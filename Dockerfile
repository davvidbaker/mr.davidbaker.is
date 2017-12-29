# # stage 1

# FROM elixir:latest

# WORKDIR /app

# ADD . /app


# # Install Hex and Rebar
# RUN mix local.hex --force && mix local.rebar --force

# RUN mix do deps.get, deps.compile
# RUN MIX_ENV=prod mix release --env=prod

# stage 2

FROM erlang:latest

EXPOSE 80
ENV PORT=80 \
    MIX_ENV=prod \
    REPLACE_OS_VARS=true \
    SHELL=/bin/sh \
    LANG="en_US.UTF-8" \
    LC_COLLATE="en_US.UTF-8" \
    LC_CTYPE="en_US.UTF-8" \
    LC_MESSAGES="en_US.UTF-8" \
    LC_MONETARY="en_US.UTF-8" \
    LC_NUMERIC="en_US.UTF-8" \
    LC_TIME="en_US.UTF-8" \
    LC_ALL="en_US.UTF-8"

COPY ./bin ./bin
COPY ./mr.tar.gz ./mr.tar.gz
RUN tar -xzvf mr.tar.gz

# USER default

CMD ./bin/mr foreground