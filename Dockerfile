FROM nimmis/java:openjdk-8-jdk

MAINTAINER Samuel Seidel <samuel@samistine.com>

# User name running the minecraft server
ENV MC_USER minecraft

# Directory where the server should run
ENV MC_DIR /minecraft

# Name of Minecraft jar file
ENV MC_PROC minecraft.jar

# Java options for Minecraft server
ENV MC_JAVA_OPS '-Xmx1G -Xms1G'

# add extra files needed
COPY rootfs /

# Make special user for minecraft to run in
RUN useradd -s /bin/bash -d /minecraft -m minecraft

# expose minecraft port
EXPOSE 25565
