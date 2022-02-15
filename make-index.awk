#/bin/bash/awk
$0 ~ /^### / {gsub(/^### /,"",$0); gsub(/ $/,"",$0); mytitle=$0; $0=tolower($0);  gsub(/\(|\)|\[|\]|\/|\:|\./,"",$0);    gsub(/ /,"-",$0);    print "["mytitle"]""(#"$0")" }
