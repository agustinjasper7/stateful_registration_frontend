from node:18

# install angular
RUN npm install -g @angular/cli

# set directory
ARG APP_HOME=/app
WORKDIR ${APP_HOME}

# copy app files to work dir
COPY . ${APP_HOME}

# update npm modules
RUN npm ci

# run server
CMD ["ng", "serve", "--host", "0.0.0.0"]
