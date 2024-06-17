#!/bin/sh

rm -rf *.tgz
helm-docs
helm package */
helm repo index .
rclone sync -P . e2charts:charts
rm -rf *.tgz
