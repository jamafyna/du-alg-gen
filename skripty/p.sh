trans=`head -3 "$1" |tail -1| sed -r 's (.*) \U\1 ' | tr -d '[[:punct:]]'`
id=`echo $1 | basename "$1" | cut -d. -f1 | sed 's ^c cls '`
echo "$id $trans"
