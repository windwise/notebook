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

rm -rf $DIR/book
rm -rf $DIR/book.toml
cat <<EOF >> $DIR/book.toml

[build]
build-dir = "docs"
create-missing = false
EOF
