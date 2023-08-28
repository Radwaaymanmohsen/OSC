#!/bin/bash

if [ "$#" -ne 2 ]; then
  echo "Usage: $0 <filename> <directory_path>"
  exit 1
fi

filename="$1"
directory_path="$2"

if [ -f "$directory_path/$filename" ]; then
  echo "File exists"
  echo "Contents of $filename:"
  cat "$directory_path/$filename"
else
  echo "File does not exist"
fi
