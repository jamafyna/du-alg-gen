
export LC_ALL=C
for F in *; do sort $F > $F.so; done
find -iname '*' -exec mv {}.so {} \;
