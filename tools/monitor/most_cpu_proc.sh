#!/bin/sh
ps -aux | sort -k3nr | head -n 10
