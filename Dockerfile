FROM elixir:1.11.2

ARG UID=1000
ARG GID=1000
RUN groupadd -g $GID devel
RUN useradd -u $UID -g $GID -m devel

COPY --chown=devel:devel . /ex_book1
USER devel
WORKDIR /ex_book1
RUN mix local.hex --force
