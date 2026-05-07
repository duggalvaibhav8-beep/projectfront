FROM node:22-alpine

WORKDIR /app

COPY . . 
RUN npm install


EXPOSE 4201

CMD ["npm", "start", "--", "--host", "0.0.0.0", "--port", "4201" , "--disable-host-check"]
