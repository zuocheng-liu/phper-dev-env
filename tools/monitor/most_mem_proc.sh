#!/bin/sh
ps -aux | sort -k4nr | head -n 10
