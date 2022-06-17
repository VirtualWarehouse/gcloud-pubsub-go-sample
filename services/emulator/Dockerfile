FROM ubuntu:20.04
WORKDIR /

# Install dependencies
# https://cloud.google.com/sdk/docs/install#deb
# https://cloud.google.com/pubsub/docs/emulator#prereq
RUN apt update && apt install -y \
  apt-transport-https \
  ca-certificates \
  gnupg \
  curl \
  python3 python3-dev python3-venv

# Install google-cloud-sdk and pubsub-emulator
RUN echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] http://packages.cloud.google.com/apt cloud-sdk main" | tee -a /etc/apt/sources.list.d/google-cloud-sdk.list && curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key --keyring /usr/share/keyrings/cloud.google.gpg  add - && apt update -y && apt install google-cloud-sdk -y
RUN apt install google-cloud-sdk-pubsub-emulator -y

# Run pubsub emulator
COPY run.sh /run.sh
CMD ["/run.sh"]
