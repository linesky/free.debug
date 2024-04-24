printf "\x1bc\x1b[43;37m"
clang -c -emit-llvm hello.c -o hello.bc
lli ./hello.bc < in.txt
