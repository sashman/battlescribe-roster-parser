FROM haskell:9.2.5
RUN mkdir /app
WORKDIR /app

RUN stack update

COPY . .
RUN stack build --no-docker
# RUN stack install --no-docker

# COPY models ./models
# CMD ["/opt/app/battlescribe-roster-parser"]

