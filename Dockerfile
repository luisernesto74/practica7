FROM ubuntu:20.04
WORKDIR /app
COPY src /app
RUN apt-get update && apt-get install -y python3
ENTRYPOINT [ "python3", "-m", "http.server" ]