FROM node:18-slim
WORKDIR /app
COPY . .
RUN npm install
# Railway uses the PORT env var, so we tell the app to use it
EXPOSE 3000
CMD ["npx", "serve", "src", "-p", "3000"]
