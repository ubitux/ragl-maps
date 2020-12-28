#!/bin/sh

for map in basemaps/*; do
	for refdata in ref-data/*; do
		cp -v $refdata/* $map
	done
	python scripts/map-brief-gen.py ragl-s10-briefing.txt > $map/ragl-briefing-rules.yaml
done
