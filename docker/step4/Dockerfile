# Step 4: Don’t run as root

# Stage 1
FROM ubuntu:20.04 AS stage1
ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y golang-go

COPY src/main.go .
RUN CGO_ENABLED=0 go build main.go

# Stage 2
FROM alpine:3.18.6

RUN addgroup -S group && adduser -h /home/user -s sh -G group -S user

COPY --from=stage1 ./main /home/user/

WORKDIR /home/user
USER user

CMD ["./main"]
