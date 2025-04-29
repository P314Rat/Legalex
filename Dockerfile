FROM node:18-alpine AS builder

WORKDIR /app
COPY . .
RUN npm install --force && npm run build

FROM node:18-alpine
RUN npm install -g serve
WORKDIR /app
COPY --from=builder /app/build ./build

EXPOSE 2446
CMD ["serve", "-s", "build", "-l", "2446"]
