# Build stage
FROM node:18-alpine AS build
WORKDIR /app
COPY package*.json ./
RUN npm install --production
COPY . .

# Production stage
FROM node:18-alpine
RUN addgroup -S nodeapp && adduser -S nodeapp -G nodeapp
WORKDIR /app
COPY --from=build /app .
RUN chown -R nodeapp:nodeapp /app
USER nodeapp
EXPOSE 3000
CMD ["node", "server.js"]