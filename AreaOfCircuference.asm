extern scanf
extern printf

global Circle

segment .data
Circle.initialmessage db "Please enter the radius of the circle: ", 0

Circle.radiousMessage db "The circle with radius ", 0

Stringformat db "%s", 0

eight_byte_format db "%lf", 0

segment .bss
align 64 

segment .text

Circle:

push    rbp
mov			rbp, rsp

mov qword rax, 0
mov   rdi, Stringformat
mov   rsi, .initialmessage
call  printf


push 		qword 0
mov qword	rax, 0
mov			rdi, eight_byte_format
mov			rsi, rsp
call    scanf
movsd   xmm0, [rsp]
pop			rax

push qword 0
movsd [rsp], xmm0

push qword -1
mov rax, 0x4008000000000000
mov rdi, .radiousMessage
call printf
pop rax	


pop 		rbp
res

