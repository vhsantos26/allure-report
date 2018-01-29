# Allure Report v. 2.5.0 

[![Docker Pulls](https://img.shields.io/docker/pulls/vhsantos26/allure-report.svg)](https://hub.docker.com/r/vhsantos26/allure-report/) [![](https://images.microbadger.com/badges/image/vhsantos26/allure-report.svg)](https://microbadger.com/images/vhsantos26/allure-report)


## About

Here you can find a simple way to generate your own Allure Report. This image is based on Alpine Linux developed by [anapsix](https://hub.docker.com/r/anapsix/) to keep the size down.

## Roadmap

### Done

- Create a Dockerfile with last version from Allure2
- Custom categories
- Trend history

### Undone

- Custom launchers
- Custom environments
- Translate to PT-BR

## Requirements

- Docker
- Allure results file

## Usage

Example: 

```docker
  docker run --rm -v #allure-results-path:/allure-result -v $allure-report-path:/allure-report vhsantos26/allure-report
```

## Disclaimer

By using Dockerfiles contained in this repo and/or container images derived from them, you are agreeing to any and all applicable license agreements & export rules related to unlimited strength crypto, etc..