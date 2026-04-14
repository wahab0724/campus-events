FROM node:18

WORKDIR /app
COPY . .

RUN npm install -g parcel
RUN parcel build src/index.html

EXPOSE 1234

CMD ["npx", "serve", "dist"]