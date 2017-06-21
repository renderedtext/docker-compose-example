[![Build
Status](https://semaphoreci.com/api/v1/renderedtext/docker-compose-example/branches/master/badge.svg)](https://semaphoreci.com/renderedtext/docker-compose-example)

A simple Rails 4 app, accompanying the [Testing multi-container applications with Docker Compose and Semaphore](https://semaphoreci.com/docs/docker/testing-multicontainer-apps-with-docker-compose-and-semaphore.html) on Semaphore Docs.

## Usage

1. Fork the project to your GitHub account
2. Follow [the
   guide](https://semaphoreci.com/docs/docker/testing-multicontainer-apps-with-docker-compose-and-semaphore.html) on Semaphore Docs
3. Use the following set of commands to build and test the project on Semaphore

```
# Setup
docker-compose up -d && sleep 3
docker-compose run web rake db:create

# Job 1
docker-compose run web rake test
```

To avoid using `sleep 3` for waiting for the DB, you can use the `./wait-for-it`
script, like described [here](https://docs.docker.com/compose/startup-order/).
