FROM nimmis/java:openjdk-8-jdk

MAINTAINER Samuel Seidel <samuel@samistine.com>

# Java options for Minecraft server
ENV MC_JAVA_OPS '-Xmx1G -Xms1G'

# add extra files needed
COPY rootfs /

# Make special user for minecraft to run in
RUN useradd -s /bin/bash -d /minecraft -m minecraft

# expose minecraft port
EXPOSE 25565
