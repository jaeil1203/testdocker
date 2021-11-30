export source="xxxxxxxxxxxx"
export destination="xxxxxxxxxxxxxxx"

export APP="test-copys3"
export CONTAINER_NAME="test-copys3"

export AWS_ACCESS_KEY_ID=""
export AWS_SECRET_ACCESS_KEY=""

# run
docker run --privileged --rm --name "$CONTAINER_NAME" \
-e AWS_ACCESS_KEY_ID="${AWS_ACCESS_KEY_ID}" -e AWS_SECRET_ACCESS_KEY="${AWS_SECRET_ACCESS_KEY}" \
-e source="${source}" -e destination="${destination}" "${CONTAINER_NAME}"