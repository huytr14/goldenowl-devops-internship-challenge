# Dockerfile - chuẩn Golden Owl
FROM node:20-alpine

WORKDIR /app


COPY src/package*.json ./
RUN npm ci --only=production


COPY src/ ./

EXPOSE 3000

HEALTHCHECK --interval=30s --timeout=3s \
  CMD wget -qO- http://127.0.0.1:3000/ || exit 1

CMD ["npm", "start"]
