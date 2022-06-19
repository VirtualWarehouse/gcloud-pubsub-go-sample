# gcloud-pubsub-go-example
A simple pubsub system consisting of multiple Docker containers.

## Requirements
Docker v20.10.11 or later

## Getting Started
### Start up
```
docker-compose up
```
The pubsub emulator will be running at port `8085`, and the subscriber will be running at port `8080`.

### Create a project, topic, and subscription
Open another terminal and,

```
docker-compose exec operator /operator
```
The operator app will be creating a project, topic, and subscription, according to the variables in the `.env` file.

### Publish messages
```
docker-compose exec pub /publish
```
The pub app will be publishing ten messages.

## References
[Using Pub/Sub with Cloud Run tutorial - Google Cloud](https://cloud.google.com/run/docs/tutorials/pubsub)

[Publish messages to topics - Google Cloud ](https://cloud.google.com/pubsub/docs/publisher#go)

[Testing apps locally with the emulator - Google Cloud](https://cloud.google.com/pubsub/docs/emulator)


