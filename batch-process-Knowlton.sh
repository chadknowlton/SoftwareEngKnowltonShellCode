#! /bin/sh
for f in "$1"/*; do
  if [ -f "$f" ]; then
    WORD_COUNT="$(wc -w "${f}" | cut -d' ' -f1)"
    SIZE="$(du -sh "${f}" | cut -f1)"
    echo "Processing $f file..."
    echo "Size: $SIZE"
    echo "Word Count: $WORD_COUNT"
  fi
done
