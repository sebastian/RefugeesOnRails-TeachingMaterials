#!/usr/bin/env bash

# Creates slides for a particular class.
# Usage:
#   ./create-slides.sh <class-folder>

class_name=$1
if [ -z $class_name ]; then
  echo "Usage: $0 <class-folder>"
  exit 1
fi

pandoc -v >/dev/null 2>&1 || {
  echo >&2 "Pandoc needs to be installed to generate the slides. "
  echo >&2 "Please go to http://pandoc.org/ for more information."
  echo >&2 "Aborting."
  exit 1;
}

if [ ! -d "slide-support/reveal.js/lib" ]; then
  echo "Downloading reveal.js"
  git submodule init
  git submodule update
fi

if [ -f $class_name/slides.md ]; then
  echo "Creating slides with pandoc"
  pandoc --variable theme="solarized" --variable transition="none" --standalone --section-divs -t html5 -s --template=slide-support/template-revealjs.html -o $class_name/slides.html $class_name/slides.md
else
  echo "ERROR: No slides found at $class_name/slides.md"
  exit 1
fi

echo "Slides generated and available at $class_name/slides.html"
