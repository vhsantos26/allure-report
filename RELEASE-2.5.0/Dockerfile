FROM anapsix/alpine-java
LABEL maintainer="Victor Hugo dos Santos (vhsantos26@gmail.com)"

ENV BUILD_PACKAGES ca-certificates openssl gzip tar

ADD https://dl.bintray.com/qameta/generic/io/qameta/allure/allure/2.5.0/allure-2.5.0.tgz .

RUN mkdir -p allure allure-results allure-report allure-config allure-history && \
    apk update && \
    apk upgrade && \
    apk add $BUILD_PACKAGES && \
    update-ca-certificates && \ 
    tar -xzf allure-2.5.0.tgz -C ./ && \ 
    apk del gzip tar && \
    rm -rf allure-2.5.0.tgz /var/cache/apk/*

ENV PATH="/allure-2.5.0/bin:$PATH" ALLURE_CONFIG="/allure-config/allure.properties"

COPY categories.json .
COPY generate-report.sh .

CMD sh generate-report.sh