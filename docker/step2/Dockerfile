# Step 2: Apply multi-stage

# Stage 1
FROM ubuntu AS stage1
ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y golang-go

COPY src/main.go .
RUN CGO_ENABLED=0 go build main.go

# Stage 2
FROM alpine

COPY --from=stage1 ./main .

CMD ["./main"]
