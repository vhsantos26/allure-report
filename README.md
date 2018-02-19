# Allure Report 

[![Docker Pulls](https://img.shields.io/docker/pulls/vhsantos26/allure-report.svg)](https://hub.docker.com/r/vhsantos26/allure-report/) [![](https://images.microbadger.com/badges/image/vhsantos26/allure-report.svg)](https://microbadger.com/images/vhsantos26/allure-report)


## About

Here you can find a simple way to generate your own Allure Report. This image is based on Alpine Linux developed by [anapsix](https://hub.docker.com/r/anapsix/) to keep the size down.

### Tags

- 2.6.0 (latest)
- 2.5.0

## Roadmap

### Done

- Create a Dockerfile with last version from Allure2
- Custom categories
- Trend history
- Translate to PT-BR [#736](https://github.com/allure-framework/allure2/pull/736)

### Undone

- Custom launchers
- Custom environments

## Requirements

- Docker
- Allure results file

## Usage

Example: 

```docker
  docker run --rm -v allure-results:/allure-results -v allure-report:/allure-report -v allure-report-old/:/allure-history vhsantos26/allure-report:latest
```

## Disclaimer

By using Dockerfiles contained in this repo and/or container images derived from them, you are agreeing to any and all applicable license agreements & export rules related to unlimited strength crypto, etc..