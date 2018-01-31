#!/bin/bash +x

if [ ! -f allure-results/categories.json ]; then
  echo "----|---- INFO: COPYING DEFAULT CATEGORY FILE"
  cp -a ./categories.json allure-results/
else
  echo "----|---- INFO: CATEGORY FILE ALREADY EXIST"
fi

if [ -d allure-report/history/ ]; then
  echo "----|---- INFO: COPYING HISTORY FILES"
  ls -t allure-report/history/
  cp -a allure-report/history/ allure-results/
else 
  echo "----|---- INFO: YOU DON'T HAVE HISTORY YET"
fi

echo "----|---- INFO: GENERATE REPORT"
allure generate allure-results/ --clean
