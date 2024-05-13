FROM node:20-bullseye-slim

# Install dumb-init to handle process management
RUN apt-get update && apt-get install -y dumb-init && rm -rf /var/lib/apt/lists/*

# Set the working directory
WORKDIR /var/www/html

# Copy application directory contents and permissions
COPY --chown=node:node . .

ENV HOST='0.0.0.0'
#This port can be changed to something like 5000
ENV PORT='3000'
#node-server is the default preset for nuxt, but it is still nice to set it here.
#This set up will still work without setting it since the default is node-server.
#https://nuxt.com/docs/getting-started/deployment#presets
ENV NITRO_PRESET=node-server

COPY entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod +x /usr/local/bin/entrypoint.sh

# Change to non-root user
USER node

ENTRYPOINT ["entrypoint.sh"]

EXPOSE $PORT
