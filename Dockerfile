### Builder Image
ARG ECR
ARG APP
ARG TARGET

FROM cszubert/awscli-python as Builder

WORKDIR /root
COPY . .

ENTRYPOINT ["python", "./cmd/copys3.py"]