
for F in 03 21 22 52 53 55 69 70 71 73 75 76; do cp CUCFN/puvodni/speaker$F/* CUCFN/test; done
for F in 00 01 02 04 05 06 07 08 09 10 11 12 13 14 15 16 17 18 19 20 23 24 25 50 51 56 57 58 59 60 61 62 63 64 65 66 67 68 72 74; do cp CUCFN/puvodni/speaker$F/* CUCFN/train; done

cd ./CUCFN/test
for F in ls*.wav; do sox $F -r 16k c$F; done
rm ls*.wav
cd ../train
for F in *.wav; do sox $F -r 16k c$F; done
rm ls*.wav

cd ../..
