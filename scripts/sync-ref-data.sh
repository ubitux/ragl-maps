#!/bin/sh

for map in basemaps/*; do
	for refdata in ref-data/*; do
		cp -v $refdata/* $map
	done
done
