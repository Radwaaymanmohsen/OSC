#!/bin/bash

if [ "$#" -ne 2 ]; then
  echo "Usage: $0 <extension> <new_name>"
  exit 1
fi

extension="$1"
new_name="$2"
counter=1


for file in *."$extension"; do
  if [ -f "$file" ]; then
    new_file_name="$new_name$counter.$extension"
    mv "$file" "$new_file_name"
    echo "Renamed '$file' to '$new_file_name'"
    counter=$((counter + 1))
  fi
done
