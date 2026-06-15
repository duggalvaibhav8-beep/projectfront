FROM node:22-alpine 
WORKDIR /app
COPY . . 
RUN npm i 
EXPOSE 4200 
CMD ["npm", "start"]

