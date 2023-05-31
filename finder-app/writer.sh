#!/bin/sh

if [ $# -ne 2 ]
then
  echo "Not enough arguments"
  exit 1
fi

touch $1
if [ ! -f $1 ]
then
  echo "File couldn't be created"
  exit 1
fi

echo $2 > $1
