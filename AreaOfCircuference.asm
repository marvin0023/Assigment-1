

extern scanf
extern printf

global radius_io
global area_io
global circumference_io

segment .data
radius_io.initialmessage db "Please enter the radius of the circle: ",10, 0

Stringformat db "%s", 0

eight_byte_format db "%lf", 0

segment .bss

segment .text

radius_io:

push		rbp
mov		rbp, rsp

mov qword rax, 0
mov 		rdi, Stringformat
mov		rsi, .initialmessage
call		printf

mov qword	rax, 0
mov		rdi, eight_byte_format
mov		rsi, rsp
call 	scanf
movsd 	xmm0, [rsp]
pop		rax


