# Docker

Docker to run a linux container to test the swt and browser cordova apps. The container can build android app but emulator performance is very slow.

Clone the repository and run the below command to run the docker container:

**docker compose down**

**docker compose build --no-cache**

**docker compose up**

This installs Hello World, Playground, ECommerce App and Trading App in /app folder.

To run playground app, go to /app/playground and run the following commands:

**cordova prepare**

**npm run start-dev**

**npm run browser** or **npm run swt**
