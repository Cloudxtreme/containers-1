#!/bin/bash

PASS=$(pass providers/aws)

export AWS_ACCESS_KEY_ID=$(sed -En 's/^Access-Key: (.*)/\1/p' <<< "$PASS")
export AWS_SECRET_ACCESS_KEY=$(sed -En 's/^Secret-Key: (.*)/\1/p' <<< "$PASS")

MACHINE_ID="docker-spot"

docker-machine -D create -d amazonec2 \
	--amazonec2-ami "ami-e31a6594" \
	--amazonec2-instance-type "m4.large" \
	--amazonec2-region "eu-west-1" \
	--amazonec2-zone "a" \
	--amazonec2-vpc-id "vpc-ae20bbcb" \
	--amazonec2-request-spot-instance \
	--amazonec2-spot-price "0.05" \
	--amazonec2-root-size "32" \
	--amazonec2-security-group "docker" \
	--amazonec2-ssh-user "admin" $MACHINE_ID

#	--amazonec2-subnet-id "subnet-00c19465" \
