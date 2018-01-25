# Docker - Allure report

## :information_source: About

This project is just a place for me learn how automated UI with Java. If you have any suggestions, please, let me know!

## :rocket: Roadmap

### Done

- Create a Dockerfile with last version from Allure2
- When it run, generate a report from allure-results

### Undone

- Push the image to Docker Hub
- Custom categories
- Custom launchers
- Custom environments
- Translate to PT-BR

## :heavy_exclamation_mark: Requirements

- Docker
- Allure results file

## :arrow_forward: How to run

- Clone this project
- On path `docker-allure-report` execute `docker build --no-cache -t allure-report:1.0.0 .`
- - Plus: If you want, you can pass to Dockerfile on build which version you want with `--build-arg version=#{VERSION_HERE}`
- Execute `docker run --rm --name se-allure-report -v #{REPLACE_FOR_ALLURE_RESULTS_PATH}:/allure-results -v #{REPLACE_FOR_DESIRED_ALLURE_REPORT_PATH}:/allure-report allure-report:1.0.0`
- Check report
