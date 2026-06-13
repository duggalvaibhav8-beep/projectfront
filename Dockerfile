FROM node:22-alpine 
WORKDIR /app
COPY . . 
RUN npm i 
EXPOSE 4200 
CMD ["npm", "start", "--" "--host", "0.0.0.0" "4200" , "--disable-host-check" ]

