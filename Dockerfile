FROM node:22-alpine AS build
WORKDIR /app
COPY package*.json ./
RUN npm ci
COPY . .
RUN npm run build --configuration=production

FROM nginx:alpine

RUN sed -i 's/listen  *80;/listen 4200;/g' /etc/nginx/conf.d/default.conf

COPY --from=build /app/dist/projectfront /usr/share/nginx/html

EXPOSE 4200
CMD ["nginx", "-g", "daemon off;"]

