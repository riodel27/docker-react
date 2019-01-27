#Filename: Dockerfile
FROM node:latest
# Create a work directory and copy over our dependency manifest files.
RUN mkdir /app
WORKDIR /app
COPY /src /app/src
COPY ["package.json", "package-lock.json*", "./"]
RUN npm install
#Expose Port 3000 since this is our dev environment
EXPOSE 3000