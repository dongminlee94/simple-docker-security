# Step 1: Create base image
FROM ubuntu
ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y golang-go

COPY src/main.go .
RUN CGO_ENABLED=0 go build main.go

CMD ["./main"]
