#!/bin/bash
podman run --interactive --rm --security-opt label=disable --volume "${PWD}":/config/rclone docker.io/rclone/rclone config
