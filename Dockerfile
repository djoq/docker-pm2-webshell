FROM node:argon
RUN npm install pm2 -g
RUN pm2 install pm2-webshell
RUN mkdir -p /app
ARG VERSION=0.0.1
COPY . /app
EXPOSE 7890
RUN apt-get update
RUN chmod +x /app/run.sh
CMD ["bash", "/app/run.sh"]
