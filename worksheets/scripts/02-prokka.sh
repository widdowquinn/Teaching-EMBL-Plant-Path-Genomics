#!/usr/bin/env bash
#
# 02-prokka.sh
#
# Carries out Prokka runs for worksheet 02
#
# Run from the worksheets directory with
# sh scripts/02-prokka.sh
#
# (C) The James Hutton Institute 2016
# Author: Leighton Pritchard

for fname in Pantoea_agglomerans/*.fasta
do
  filename=$(basename ${fname})
  stem=${filename%.*}
  cmd="prokka ${fname} --genus Pantoea --species agglomerans --outdir prokka_out/${stem} --prefix ${stem}"
  echo ${cmd}
  ${cmd}
done