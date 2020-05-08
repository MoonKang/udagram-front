FROM beevelop/ionic AS ionic

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY . .

RUN ionic build

# EXPOSE 8080

# CMD ["ionic", "serve"]
FROM nginx:alpine
 
COPY nginx.conf /etc/nginx/nginx.conf
