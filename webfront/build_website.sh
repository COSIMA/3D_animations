


init_readme="../README.rst"

awk '/.. init_info../{while(getline line <"'${init_readme}'"){print line}} //' ./index_template.rst > ./index.rst

