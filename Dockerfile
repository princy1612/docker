FROM budtmo/docker-android-real-device

COPY  Dependencies.sh .
# COPY  Framework3 .
RUN chmod a+x Dependencies.sh && ./Dependencies.sh

ENV JAVA_HOME="/usr/lib/jvm/java-11-openjdk-amd64/bin"  PATH=$PATH:$JAVA_HOME

EXPOSE 4723
EXPOSE 5554
EXPOSE 5555
EXPOSE 6080

# Sauce Labs Credentials
ARG SAUCE_USERNAME='sso-lilly-L001867'
ARG SAUCE_ACCESS_KEY='33f9fff7-20f3-4c55-80b0-82f8082a27b0'

# Device info parameters
ARG APPIUM_VERSION='1.17.1'
ARG DEVICE_NAME='Samsung Galaxy S9 WQHD GoogleAPI Emulator'
ARG PLATFORM_VERSION='14.0.1'
ARG PLATFORM_NAME='android'
ARG APP_PATH='sauce-storage:Tempo-v2.0.30.apk'
ARG AUTOMATION_NAME='uiautomator2'

ENV APPIUM_VERSION=$APPIUM_VERSION
ENV DEVICE_NAME=$DEVICE_NAME
ENV PLATFORM_VERSION=$PLATFORM_VERSION
ENV PLATFORM_NAME=$PLATFORM_NAME
ENV APP_PATH=$APP_PATH
ENV AUTOMATION_NAME=$AUTOMATION_NAME


ENV SAUCE_USERNAME=$SAUCE_USERNAME
ENV SAUCE_ACCESS_KEY=$SAUCE_ACCESS_KEY

# RUN ["npm","run","cloud"]