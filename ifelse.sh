#!/bin/bash

echo -e "Enter the name of file: \c"
read filename

# e for file exixt or not
# f for file is a normal file or not
# d for checking the dir 
# s for file is empty or not
# b for block special file like audio video
# c for chararacter special file
# r w x for checking the file permissions
if [ -e $filename ]
then
  echo "File Exist"
else
  echo "Not Found"
fi