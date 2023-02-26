#!/bin/bash
podman run --interactive --rm quay.io/coreos/butane:release \
       --pretty --strict < config.bu > config.ign
