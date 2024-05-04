FROM node:22-alpine3.18 as build-stage
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build


FROM nginx:stable-alpine as production-stage
COPY --from=build-stage /app/.nginx/nginx.conf /etc/nginx/conf.d/default.conf

WORKDIR /usr/share/nginx/html
RUN rm -rf ./*
COPY --from=build-stage /app/dist .
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]