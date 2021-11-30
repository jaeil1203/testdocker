### Builder Image
ARG ECR
ARG APP
ARG TARGET

FROM python:3.7.12-slim as Builder
RUN apt-get update 
RUN apt-get install awscli -yqq

WORKDIR /root
COPY . .

ENTRYPOINT ["python", "./cmd/copys3.py"]