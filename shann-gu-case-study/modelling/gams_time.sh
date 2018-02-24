#!/bin/bash
#
# Tom Ravalde 
# 13 May 2016
# (Adapted from James Keirstead, 28 July 2010)
#
# A shell script to time the running of a gams model, and push a notification to Tom's phone upon completion

START=$(date +%s)

gams $1

END=$(date +%s)
DIFF=$(( $END - $START))
TIME="($DIFF seconds)"
echo $TIME
./pu.sh "Finished $1 $TIME"
