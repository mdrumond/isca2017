#! /bin/bash

# 
# cp ~/Downloads/isca2018-pcinfo.csv data/isca2017db-pcinfo.csv
# 
check_and_copy_file () {
    if [ -e "$HOME/Downloads/$1" ]; then
        echo "$3 exists in downloads, copying it..."
        cp ~/Downloads/isca2018-data.json data/isca2017db-data.json
    else
        if [ -e "data/$2" ]; then
            echo "$3 exists in data, will use old file"
        else
            echo "error: no $3 file"
            exit -1
        fi
    fi
}

check_and_copy_file isca2018-pcinfo.csv isca2017db-pcinfo.csv "pcinfo"
check_and_copy_file isca2018-data.json isca2017db-data.json "paper-data"

mkdir -p results
mkdir -p correct
mkdir -p paperpartitions
mkdir -p pcpartitions
mkdir -p plots


