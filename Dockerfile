FROM anapsix/alpine-java
LABEL maintainer="Victor Hugo dos Santos (vhsantos26@gmail.com)"
ARG version=2.5.0
ADD https://dl.bintray.com/qameta/generic/io/qameta/allure/allure/$version/allure-$version.tgz .
RUN mkdir /allure && mkdir /allure-results && mkdir /allure-report && mkdir /allure-config \
    && apk add --update ca-certificates openssl gzip tar \
    && update-ca-certificates \ 
    && tar -xzf allure-$version.tgz -C ./ \ 
    && apk del gzip tar \
    && rm -rf allure-$version.tgz /var/cache/apk/*
ENV PATH="/allure-$version/bin:$PATH" ALLURE_CONFIG="/allure-config/allure.properties"
COPY categories.json /allure-results
COPY generate-report.sh ./
CMD sh generate-report.sh