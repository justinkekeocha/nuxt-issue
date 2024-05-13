#!/bin/bash

#Specifying env_file in docker-compose is important for [$NODE_ENV] this to work
# Run the command to start the server using "dumb-init"

if [ "$NODE_ENV" = "production" ]; then
  echo "Starting in production mode"
  npm run build
  exec dumb-init npm run start
else
  echo "Starting in development mode"
  #adding -- --host below or specifying HOST=0.0.0.0 in env is needed for this to expose the port to the host
  #https://github.com/vitejs/vite/discussions/3396#discussioncomment-4581934
  exec dumb-init npm run dev --public
fi
#for debugging purposes
#exit 1
