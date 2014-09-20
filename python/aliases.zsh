AWK_ARG='BEGIN {FS=":"} {print $1}'
alias pepify="flake8 | awk '${AWK_ARG}' | cut -c 3- | sort | uniq | xargs -o vim -p"
