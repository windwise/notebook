#!/bin/bash
DIR="$( cd "$( dirname "$0"  )" && pwd  )"
export PATH=$PATH:$DIR/_PATH
trap "ps|grep $cur/mdbook|awk '{print $1}'|xargs kill" EXIT
mdbook serve -p 4001 --open


