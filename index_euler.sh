#!/bin/bash

# list only (data directories)
directories=`ls -d $1/*/`

# loop over all data directories
# and summarize data content and
# readme content

# initiate output file
echo "" > data_summary.txt

# loop over all directories
# and summarize content
for directory in $directories
do 
  # create header for each directory
  echo "######################################" >> data_summary.txt
  echo "Content of $directory" >> data_summary.txt
  echo "######################################" >> data_summary.txt
  echo "" >> data_summary.txt
 
  # list all directory sizes up to level 1
  # to get an idea of content size
  du -h -d 1 $directory >> data_summary.txt
  echo "" >> data_summary.txt
  
  # output all possible README data into
  # the summary file
  # case incensitive search (-iname) for
  # files (-f) for anything containing
  # readme
  readmes=`find $directory -type f -iname "readme.md" -iname "readme.txt"`
  for readme in $readmes
  do
   echo "--------------------------------------" >> data_summary.txt
   echo "File: $readme" >> data_summary.txt
   echo "--------------------------------------" >> data_summary.txt
   echo "" >> data_summary.txt
   cat $readme >> data_summary.txt
   echo "" >> data_summary.txt
  done
 echo "######################################" >> data_summary.txt
 echo "" >> data_summary.txt
done



