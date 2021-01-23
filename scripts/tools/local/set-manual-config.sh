#!/bin/bash

if [[ $# -ne 3 ]]; then
    1>&2 echo "Usage: set-manual-config.sh <GOOGLE_OAUTH_CLIENT_ID> <GOOGLE_OAUTH_CLIENT_SECRET>"
    exit 1
fi

GOOGLE_OAUTH_CLIENT_ID=$1
GOOGLE_OAUTH_CLIENT_SECRET=$2

kubectl create secret generic jenkins-controller-from-manual-config \
    --from-literal=google_oauth_client_id=$GOOGLE_OAUTH_CLIENT_ID \
    --from-literal=google_oauth_client_secret=$GOOGLE_OAUTH_CLIENT_SECRET
