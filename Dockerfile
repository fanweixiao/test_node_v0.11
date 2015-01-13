FROM node:latest
MAINTAINER fanweixiao <fanweixiao@gmail.com>

EXPOSE 8000
ADD start.sh start.sh
RUN chmod +x start.sh
CMD ./start.sh
