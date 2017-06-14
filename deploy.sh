#!/bin/bash

# aws s3 rm s3://elmcitylabs.com-06-2017 --recursive

aws s3 cp . s3://elmcitylabs.com-06-2017/ \
    --recursive \
    --exclude ".git/*" \
    --exclude "node_modules/*" \
    --exclude "first import archived files/*" \
    --exclude "CNAME" \
    --exclude "package.json" \
    --exclude ".*" \
    --exclude "*.md" \
    --exclude "*.sh" \
    --exclude "*.un~" \
    --acl "public-read"
