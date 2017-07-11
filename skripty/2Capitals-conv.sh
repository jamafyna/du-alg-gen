

#use from test or train directory
for F in *.txt; do cat $F | ../Definition/2Capitals.sh > $F.out; done
for F in *.txt.out; do iconv -f latin2 -t utf8 $F -o $F.conv;done 
find -iname '*.txt' -exec mv {}.out.conv {} \;
rm *.out                
