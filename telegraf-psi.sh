#!/bin/sh

for resource in cpu memory io; do
    sed "s/ /,/g" < /proc/pressure/$resource | \
    sed "s/full,/pressure,resource=$resource,share=full /" | \
    sed "s/some,/pressure,resource=$resource,share=some /"
done
