#!/bin/sh
# T-0160 read-only filename search. Lists names and metadata only; opens, moves or copies nothing.
# Usage: sh search.sh OUTDIR   (writes find-raw.txt, find-errors.txt, candidates.tsv into OUTDIR)
OUT="${1:?give an output folder}"
date -u +%Y-%m-%dT%H:%M:%SZ > "$OUT/searched-at.txt"
find /Users/donovan \( -iname '*sloura*' -o -iname '*slow?aura*' -o -iname '*slowaura*' \
  -o -iname '*weave*' -o -iname '*time?moves?slow*' -o -iname '*timemovesslow*' \
  -o -iname '*ocean?eyes*' -o -iname '*oceaneyes*' -o -iname '*angels*' \
  -o -iname '*future?screw*' -o -iname '*futurescrew*' \) -print 2> "$OUT/find-errors.txt" | sort > "$OUT/find-raw.txt"
# Candidates: hits outside /Users/donovan/work, minus software and stock-sample noise,
# plus the cover-art folders and the [master].als sets inside the three matched Ableton projects
# (those names carry no search term, except angels screw [master].als).
S=/Users/donovan/Music/tunes/production/screw
{
  grep -v -E '^/Users/donovan/(work|Library|\.claude|\.hermes)/|Factory Packs|ableton packs|site-packages|your_facebook_activity|Screen Weaver|Angels Crest' "$OUT/find-raw.txt"
  find "$S/screw moves slow Project/cover" "$S/screw eyes Project/cover" "$S/angels screw Project/cover art" -type f
  for m in "screw moves slow" "screw eyes" "angels screw"; do echo "$S/$m Project/$m [master].als"; done
} | sort -u | while IFS= read -r p; do
  [ -d "$p" ] && t=folder || t="${p##*.}"
  stat -f "%N	$t	%z	%Sm" -t '%Y-%m-%d %H:%M' "$p"
done > "$OUT/candidates.tsv"
wc -l "$OUT/find-raw.txt" "$OUT/find-errors.txt" "$OUT/candidates.tsv"
