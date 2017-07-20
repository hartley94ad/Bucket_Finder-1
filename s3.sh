#!/bin/bash

dot="$1."
dash="$1-"

sed -e 's/^/'$dot'/' directories.txt > lists/$1.bucket.lst
sed -e 's/^/'$dash'/' directories.txt > lists/$1-bucket.lst

./bucket_finder.rb lists/$1.bucket.lst &
./bucket_finder.rb lists/$1-bucket.lst &
wait

