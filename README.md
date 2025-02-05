# SimpleTimeService

This is a simple microservice that returns the current timestamp and the IP address of the visitor in JSON format.

## Prerequisites

- Docker installed on your machine

## Build Docker Image

To build the Docker image, run the following command:

```bash
docker build -t <your-dockerhub-username>/simpletimeservice:latest .

To run the container, use the following command:

docker run -p 5000:5000 <your-dockerhub-username>/simpletimeservice:latest

