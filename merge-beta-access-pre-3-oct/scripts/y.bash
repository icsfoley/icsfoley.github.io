#!/usr/bin/env bash

jq -ca . | gbase64 | tr -d '[:space:]'
