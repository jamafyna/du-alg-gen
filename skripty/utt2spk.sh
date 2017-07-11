
ls *.txt |  sed -r 's/c([0-9]+)x([0-9]+).txt/\1x\2\  \1/g' > utt2spk


