FROM node:18-alpine

WORKDIR /app

# RUN apt-get update && \
#     apt-get install -y libvips-dev && \
#     rm -rf /var/lib/apt/lists/*

COPY . .

RUN npm install && npm run build

EXPOSE 1337

CMD ["npm", "start"]
