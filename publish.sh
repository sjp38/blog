#!/bin/bash

hugo
pushd public/
git add --all
git commit -as -m "Update by $0"
git push origin master
popd
