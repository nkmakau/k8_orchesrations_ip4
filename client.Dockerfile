FROM alpine:latest

LABEL maintainer="Noah Makau <noshkim78@gmail.com>"
LABEL build_date="2020-12-07"

ARG BUILD_DATE

# Labels
LABEL org.label-schema.schema-version="1.0"
LABEL org.label-schema.name="Yolomy Client"
LABEL org.label-schema.build-date=$BUILD_DATE
LABEL org.label-schema.description="Yolomy website front-end container"

RUN echo "Build Date: $BUILD_DATE"
RUN apk update && apk add nodejs nodejs-npm
COPY client /client
WORKDIR /client
RUN npm install
RUN npm run build
RUN npm install -g serve
EXPOSE 3000
CMD [ "serve", "-s", "build", "-l", "3000" ]

