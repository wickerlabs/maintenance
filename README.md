# Maintenance

A simple maintenance page in a simple docker image.

![Docker Cloud Build Status](https://img.shields.io/docker/cloud/build/wickerlabs/maintenance?style=for-the-badge) 
![MicroBadger Downloads](https://img.shields.io/docker/pulls/wickerlabs/maintenance?style=for-the-badge)
![MicroBadger Size](https://img.shields.io/docker/image-size/wickerlabs/maintenance?style=for-the-badge) 

## Contents

 1. Introduction
	 - Environment variables.
 2. Docker.
 3. Docker Compose.
 4. Live demo: [Click Here!](https://playground.wickerlabs.com)

## Introduction
This image came as a result for the need to place a simple maintenance page in times of server downtime or maintenance. The main requirement was to use a simple static HTML file.

 This led us to the gist [here](https://gist.github.com/pitch-gist/2999707). To make it so that it may be fit for most general use cases, We modified some of the elements in the HTML to introduce variables that can be customized for different deployments.
 
 #### Environment variables
 We introduced a few variables that would change different parts of the maintenance page as shown below.
 
|Variable|Description  |
|--|--|
|`TITLE`|Modifies the site *title* displayed. Defaults to `Site Maintenance`|
|`HEADLINE`| H1 headline Defaults to `We'll be back soon!` |
|`MESSAGE`| Page message Defaults to `Sorry for the inconvenience but we're performing some maintenance at the moment. If you need to you can always {{contact}}, otherwise we'll be back online shortly!` |
|`CONTACT_LINK`| Include `{{contact}}` in your custom message to set the word you want to use instead of the default `contact us`. |
|`MAIL_ADDRESS`| This modifies the email address provided for the *contact us* link in the page. Defaults to `mail@example.com`|
|`TEAM_NAME`| Modifies the *team* or *company name* displayed on the page. Defaults to `The Team`|
|`LINK_COLOR`|Modifies the link color for the *contact us* link. Defaults to `#dc8100` |
|`RESPONSE_CODE`| Specifies the HTTP response code to serve with the maintenance page. Defaults to `503 Service Unavailable` |
|`PORT`| Specifies the port to serve the maintenance page. Defaults to `8080` |

## Docker
You can easily run or create a docker container for  this [image](https://hub.docker.com/r/wickerlabs/maintenance) by using the command: 

`docker run -p 80:8080 wickerlabs/maintenance`

This will serve the *default* static maintenance page on port 80 of the host machine. You can modify specific variables within the run command which would then look like: 

`docker run -e TEAM_NAME='Team name' -e TITLE='Oops!' -e MAIL_ADDRESS=mail@domain.com -e PORT=9000 --rm -p 80:9000 wickerlabs/maintenance`

## Docker Compose
For docker compose, you can choose to refer to the *docker-compose.yml* file in the [repo](https://www.github.com/wickerlabs/maintenance) or you can have look at the example below.
```
version: '3.5'

services:
  maintenance:
    image: wickerlabs/maintenance
    container_name: maintenance-page
    environment:
      TEAM_NAME: "Team name"
      TITLE: "Oops!"
      MAIL_ADDRESS: "mail@domain.com"
      LINK_COLOR: "#dc8100"
      PORT: 8080
      RESPONSE_CODE: "503 Service Unavailable"
      MESSAGE: "This is my custom message. {{contact}} now"
      CONTACT_LINK: "contact us"
    ports:
      - 80:8080
```

