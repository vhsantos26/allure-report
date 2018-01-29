#!/bin/bash +x

cp -a categories.json allure-results/

if [ -d allure-report/history/ ]; then
  echo "----|---- INFO: COPYING HISTORY FILES"
  ls -t allure-report/history/
  cp -a allure-report/history/ allure-results/
fi

echo "----|---- INFO: GENERATE REPORT"
allure generate allure-results/ --clean
