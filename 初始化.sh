#!/bin/bash
DIR="$( cd "$( dirname "$0"  )" && pwd  )"
export PATH=$PATH:$DIR/_PATH
rm -rf $DIR/theme
n|mdbook init --theme
cat <<EOF >> $DIR/theme/highlight.css

table {
	width : 100%;
	text-align:left;
}
EOF