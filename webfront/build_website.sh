#!/bin/bash

# File containing initial info to display in website.
init_readme="../README.rst"

# Replace string .. init_info.. with contents of init_readme file.
awk '/.. init_info../{while(getline line <"'${init_readme}'"){print line}} //' ./index_template.rst > ./index.rst

# Create directory with contents.
mkdir -p content 
contents=""
# Construct content table. 
for directory in ../*/; do
    # Separate path to get folder name
    renamed_file=$(cut -d'/' -f2 <<<"$directory")
    # Ignore folder webfront
    if [ $renamed_file == 'extras' ]
    then 
    cp "$directory"*.rst ./content/
    cp "$directory"*.png ./content/
    elif [ $renamed_file != 'webfront' ]
    then
    cp "$directory"*.rst ./content/
    cp "$directory"*.png ./content/
    # Files in folder for docs
    ls_files=$(ls "$directory"*.rst)
    rst_f=()
    # Get all the file names.
    for file in $ls_files; do
        rst_file=$(cut -d'/' -f3 <<<"$file")
        rst_f+=$rst_file"*" 
    done
    # Construct content variable with separated by space, - and *
    contents+=$renamed_file-$rst_f" "
    fi
done

echo $contents

create_toctree () {
    # Create toctree function by looking at content to construct.
    IFS=' ' read -r -a content <<< "$1"
    str=".. toctree::\n\t:maxdepth: 1\n"  
    str+="\t:caption: Animations\n"
    for cont in "${content[@]}"; do
        IFS='-' read -r -a folder_name <<< "$cont"
        IFS='*' read -r -a files <<< "${folder_name[1]}"
        str+=$(toctree_str "${files[@]}")
    done
    echo $str'\n\n'
}

toctree_str () {
    # Generate string for the files and folder name.
    str=''
    for file in "${@:1}"; do
        str+="\n\t./content/$file"
    done
    echo $str
}

# Get the toctree string
toctree=$(create_toctree "$contents")

# Store in file for replacement
echo -e $"$toctree" > toctree_file.rst

toctree_file="./toctree_file.rst"

# Replace string from file
awk '/.. add_contents../{while(getline line <"'${toctree_file}'"){print line}} //' ./index.rst > ./index_bk.rst

# Move file to become the index
mv ./index_bk.rst ./index.rst

# Remove toctree file
rm $toctree_file

foo=