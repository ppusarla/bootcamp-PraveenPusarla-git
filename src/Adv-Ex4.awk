BEING {printf "Time\theader 1\theader 2\theader 3\theader 4\n"}
/^[[:digit:] [:punct:][:space:][:alpha:]]+$/{print $1,$4,$5,$6}

