#/bin/bash

#Author: Floyd Holliday
#This is a Bash script file.  It is used to compile, link, and execute the program "Floating point input output".

rm *.o *.lis *.out

echo "Assemble the X86 file fp-io.asm"
nasm -f elf64 -l AreaOfCircuference.lis -o AreaOfCircuference.o AreaOfCircuference.asm

echo "Compile the C++ file floatinng-point-main.cpp"
g++ -c -m64 -Wall -l circuference.lis -o circuference.o circuference.cpp

echo "Link the two 'O' files fp-io.o and floating-point-main.o"
g++ -m64 -o AreaOfCircuference.out circuference.o AreaOfCircuference.o 

echo "Run the program Floating Point Input Output"
./AreaOfCircuference.out
