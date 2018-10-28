#!/bin/sh
set -e
ACTIVE_PROFILE=${PROFILE:=default}
java -Xmx256m -Djava.security.egd=file:/dev/./urandom -jar gs-spring-boot.jar --spring.profiles.active=${ACTIVE_PROFILE} $@
