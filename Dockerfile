FROM russmckendrick/nodejs
ADD src /srv/app
WORKDIR /srv/app
ARG npm_config_registry=""
RUN echo $npm_config_registry
RUN npm install
EXPOSE 80
ENTRYPOINT ["node", "index.js"]
