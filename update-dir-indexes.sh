#!/bin/zsh -x

update_dir_indexes () {
    for DIR in $(find ./pkgs/channel/$1 -type d); do
      (
        echo -e "<html>\n<body>\n<h1>Available packages</h1>\n<hr/>\n<pre>"
        ls -1pa "${DIR}" | grep .tar.bz2 | awk '{ printf "<a href=\"%s\">%s</a>\n",$1,$1 }' 
        echo -e "</pre>\n</body>\n</html>"
      ) > "${DIR}/index.html"
    done
}


update_dir_indexes 'linux-32'
update_dir_indexes 'linux-64'
update_dir_indexes 'osx-64'
update_dir_indexes 'win-32'
update_dir_indexes 'win-64'
