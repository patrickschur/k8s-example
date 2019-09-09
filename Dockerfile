FROM node:12.10-alpine
USER node
WORKDIR /home/node
COPY index.js .
CMD ["index.js"]
EXPOSE 3000
