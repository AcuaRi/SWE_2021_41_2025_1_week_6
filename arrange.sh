#!/bin/bash

for file in ./files/*; do
  filename=$(basename "$file")
  first_char=$(echo "${filename:0:1}" | tr '[:upper:]' '[:lower:]')

  if [[ "$first_char" =~ [a-z] ]]; then
    mv "$file" "./$first_char/"
  else
    mv "$file" "./others/"
  fi
done