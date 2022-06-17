#!/bin/bash
echo "Project ID: ${project_id}"
gcloud beta emulators pubsub start --project=${project_id}
