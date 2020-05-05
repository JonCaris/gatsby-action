  FROM node:12

LABEL version="0.0.1"
LABEL "repository"="https://github.com/JonCaris/gatsby-action"
LABEL "homepage"="https://github.com/JonCaris"
LABEL "maintainer"="Jon Caris <https://github.com/JonCaris>"

RUN yarn global add gatsby-cli \
    && gatsby telemetry --disable

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]