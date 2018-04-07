#!/usr/bin/env bash

GAE_VERSION_COUNT=`gcloud app versions list | grep default | wc -l`
GAE_OLD_VERSION=`gcloud app versions list | grep default | sort -k 4,4 | awk '{print $2}' | head -n 1`

test $GAE_VERSION_COUNT -gt 10 && echo Y | gcloud app versions delete $GAE_OLD_VERSION

gcloud app versions list
