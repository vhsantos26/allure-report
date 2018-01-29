#!/bin/bash +x

cp -a categories.json allure-results/

cp -a allure-report/history/ allure-results/

echo "----|---- INFO: GERANDO RELATORIOS"
allure generate allure-results/ --clean
