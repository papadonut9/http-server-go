#!/bin/sh
# A small shellscript for running the server
set -e
tmpFile=$(mktemp)
go build -o "$tmpFile" app/*.go
exec "$tmpFile" "$@"
