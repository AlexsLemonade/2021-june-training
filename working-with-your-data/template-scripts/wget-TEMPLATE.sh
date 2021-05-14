#!/bin/bash

# This is a template script for downloading data using the wget command
# See docs here: https://www.gnu.org/software/wget/manual/wget.html

mkdir <FOLDER_TO_SAVE_TO>

# To see wget options, use -h (the help flag)
wget -h

wget -O <FOLDER/FILE_TO_SAVE_TO> <URL>
