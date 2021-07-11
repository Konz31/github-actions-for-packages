# Your Dockerfile contents go here!
FROM nginx:1.17
COPY . /usr/share/nginx/html

RUN apt-get update
RUN apt-get -y install npm

WORKDIR "/usr/share/nginx/html"
RUN npm install
RUN npm run build