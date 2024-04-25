printf "\x1bc\x1b[43;37m"
roots=$(pwd)/roots
tmps=/tmp/lists.txt
tmps2=/tmp/lists2.txt
gcc ./hello.c -o my
mkdir -p $roots
mkdir -p $roots/usr
mkdir -p $roots/usr/bin
mkdir -p $roots/bin
mkdir -p $roots/tmp
mkdir -p $roots/lib
mkdir -p $roots/dev
mkdir -p $roots/boot
mkdir -p $roots/lib/i386-linux-gnu
cp  ./my $roots/usr/bin
cp  ./my $roots/bin
cp  ./in.txt $roots/usr/bin
cp  ./in.txt $roots/bin
cp  /usr/bin/bash $roots/usr/bin
cp  /usr/bin/bash $roots/bin
cp  /usr/bin/sh $roots/usr/bin
cp  /usr/bin/sh $roots/bin
cp  /usr/bin/ldd $roots/usr/bin
cp  /usr/bin/ldd $roots/bin
cp  /usr/bin/gdb $roots/usr/bin
cp  /usr/bin/gdb $roots/bin
printf "" > $roots/dev/null
printf "" > $roots/dev/stdio
printf "" > $roots/dev/stdout
printf "" > $roots/dev/stdin
chmod 777 $roots/bin/*
chmod 777 $roots/usr/bin/*
printf "" > $tmps
list1=$(ls $roots/usr/bin/*)
for l1 in $list1
do
ldd "$l1" | grep  '/lib/' >> $tmps
done
awk '{for(i=1;i<=NF;i++) if($i ~ /\/lib\//) print $i}' $tmps > $tmps2
while IFS= read -r l1
do

rt="$roots$l1"
cp "$l1" "$rt" 
done < "$tmps2"




