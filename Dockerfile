FROM node:18-alpine AS builder
WORKDIR /app
COPY package*.json ./
RUN npm install --include=dev
COPY . .
RUN npm run build

FROM node:18-alpine AS runner
WORKDIR /app
COPY --from=builder /app/dist ./dist
COPY --from=builder /app/node_modules ./node_modules
COPY --from=builder /app/package.json ./package.json
COPY scripts/startup.sh ./startup.sh

EXPOSE 3000
CMD ["sh", "startup.sh"]