#!/bin/bash

# Check that all required arguments are provided
if [ $# -ne 3 ]; then
  echo "Usage: $0 <type> <name> <description>"
  exit 1
fi

# Assign arguments to variables
type="$1"
name="$2"
description="$3"

# Generate lowercase name with spaces replaced by "-"
lowercase_name=$(echo "$name" | tr '[:upper:]' '[:lower:]' | tr ' ' '-')

# Check that the type directory exists
if [ ! -d "$type" ]; then
  echo "Error: Directory '$type' does not exist"
  exit 1
fi

# Check that the generic.html file exists in the type directory
if [ ! -f "$type/posts/generic.html" ]; then
  echo "Error: File '$type/posts/generic.html' does not exist"
  exit 1
fi

# Copy the generic.html file to the new file with the provided name
cp "$type/posts/generic.html" "$type/posts/$lowercase_name.html"

replaceText="<!-- NEW POSTS GO HERE -->"
tabs="\t\t\t\t"

# Replace {name} and {description} placeholders with provided values
sed -i "s/{TITLE}/$name/g" "$type/posts/$lowercase_name.html"
sed -i "s/{DESCRIPTION}/$description/g" "$type/posts/$lowercase_name.html"

# If we're not adding directly to the blog, we want to anyway
if [ "$type" != "blog" ]; then
  postHTML="<li>A BBB $(date +%Y) 00 - <a href=\"/$type/posts/$lowercase_name.html\">$name</a></li>\n$tabs$replaceText"
  sed -i "s#$replaceText#$postHTML#g" "$type/index.html"
  
  postHTMLBlog="$replaceText\n$tabs<li>A BBB $(date +%Y) 00 - <a href=\"/$type/posts/$lowercase_name.html\">$name</a></li>"
  sed -i "s#$replaceText#$postHTMLBlog#g" "blog/index.html"
else
  postHTML="$replaceText\n$tabs<li>A BBB $(date +%Y) 00 - <a href=\"/$type/posts/$lowercase_name.html\">$name</a></li>"
  sed -i "s#$replaceText#$postHTML#g" "$type/index.html"
fi

# Success message
echo "File '$lowercase_name.html' created successfully in directory '$type/posts'"
