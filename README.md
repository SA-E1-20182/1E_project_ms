# Krajono - meta-ms microservice

Microservice that serves information about the projects in the platform.

## Usage

Check the `api.yml` file for info on how to consume this API.

## Deployment

On a Docker container built on a Rancher image,

```sh
docker-compose build
docker-compose up
```
If it's the first time you're deploying this app in your machine, create the database with:

```sh
docker-compose run meta-ms rake db:create
docker-compose run meta-ms rake db:migrate
```
