#!/bin/sh

id=1

for f in $@
do
	convert $f -resize 800 `dirname $f`/$id.jpg

	echo "![foo]"
	echo "(`dirname $f`/$id.jpg)"
	echo

	id=$(($id + 1))
done
