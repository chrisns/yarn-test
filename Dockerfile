FROM quay.io/ukhomeofficedigital/nodejs-base:v4.4.2

RUN yum clean all && \
  yum update -y -q && \
  yum install -y -q git && \
  yum clean all && \
  rpm --rebuilddb && \
  npm install -g yarn@*

COPY . /app
RUN yarn config set cache ~/.yarn-cache
RUN yarn install
CMD npm start