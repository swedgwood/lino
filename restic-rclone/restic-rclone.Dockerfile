FROM alpine:3.14

ENV USER=rclone
ENV UID=12345
ENV GID=23456

RUN adduser \
    --disabled-password \
    --gecos "" \
    --home "/home/rclone" \
    --ingroup "$USER" \
    --uid "$UID" \
    "$USER"

RUN apk add --no-cache rclone

USER rclone
WORKDIR /home/rclone
COPY rclone.conf /home/rclone/.config/rclone/rclone.conf



CMD ["rclone", "serve", "restic"]