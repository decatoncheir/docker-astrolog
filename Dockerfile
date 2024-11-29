FROM gcc:14.2.0 AS build

WORKDIR /src
COPY src/ .

RUN make

FROM alpine:3.20

RUN <<EOT
apk add --no-cache gcompat libstdc++ libx11 ghostscript
EOT

WORKDIR /app
COPY --from=build /src/astrolog /app/
COPY config/ /app/
COPY root/ /
ENTRYPOINT ["/app/astrolog"]