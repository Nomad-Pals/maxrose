#!/bin/bash

#use this script to output a blank list of works from a folder
# and convert them into the proper YAML format!

touch gallery.yaml

out=""

for img in *
do
read -r -d '' out <<-EOF
$out
  - 
    src: "/gallery/work/$img"
    title: ""
    medium: ""
    year: ""
EOF
done

echo "$out" > gallery.yaml