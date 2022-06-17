#!/bin/bash
echo "Project ID: ${PUBSUB_PROJECT_ID}"
gcloud beta emulators pubsub start --host-port=0.0.0.0:8085 --project=${PUBSUB_PROJECT_ID}
# gcloud beta emulators pubsub start --host-port=0.0.0.0:8085 --project="dummy-project"