#!/bin/bash
cur="$( cd "$( dirname "$0" )" && pwd )"
git add -A
git commit -m "归档更新"
git push