FROM node:latest
MAINTAINER fanweixiao <fanweixiao@gmail.com>

ADD repo-key /
RUN \
    chmod 600 repo-key
    echo "IdentityFile /repo-key" >> /etc/ssh/ssh_config && \
    echo -e "StrictHostKeyChecking no" >> /etc/ssh/ssh_config

EXPOSE 8000
ADD start.sh start.sh
RUN chmod +x start.sh
CMD ./start.sh
