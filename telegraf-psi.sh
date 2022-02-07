#!/bin/sh

for resource in cpu memory io; do
    sed "s/full/pressure resource=$resource,share=full/" < /proc/pressure/$resource | \
    sed "s/some/pressure resource=$resource,share=some/"
done
