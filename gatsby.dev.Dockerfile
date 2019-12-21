FROM pirobtumen/gatsbyjs:latest
WORKDIR /app
COPY package.json .
COPY package-lock.json .
RUN npm ci
COPY . .
CMD ["gatsby", "develop", "-H", "0.0.0.0"]
