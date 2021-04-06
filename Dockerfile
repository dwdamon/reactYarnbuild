FROM node:12.21.0-alpine3.11

ADD package.json package.json

# Set the locale
RUN apk update
RUN apk upgrade

RUN apk add py3-pip bash yarn curl
RUN pip3 install --upgrade pip
RUN pip3 install awscli

RUN yarn install


RUN npx browserslist@latest --update-db


#ENTRYPOINT ["/usr/bin/bash", "-i"]
CMD ["/bin/bash"]
