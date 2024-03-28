; 
; CSCI268 - Asgn 1 - Integer Expression Calculation
;
; Miranda Morris
; 3/20/2024
; This code is meant to perform this expression A = (A - B) + (C - D). 
; The integer values of A, B, C, & D are assigned to the EAX, EBX, ECX, 
; & EDX registers then the above expression is performed and the resulting
; value is stored in the eax register.

.586
.model flat, stdcall
option casemap : none; case-sensitive

ExitProcess proto,dwExitCode:dword

.data ; showing this is the data area 

.code ; showing this is the code area
main proc ; starts the main procedure
	mov eax, 8 ; stores the integer value of 1 in the register eax which makes A = 8
	mov ebx, 7 ; stores the integer value of 7 in the register ebx which makes B = 7
	mov ecx, 7 ; stores the integer value of 7 in the register ecx which makes C = 7
	mov edx, 1 ; stores the integer value of 1 in the register edx which makes D = 1

	sub eax, ebx ; subtracts the integer value of (A = 8) - (B = 7) making the new value of register eax = 1
	sub ecx, edx ; subtracts the integer value of (C = 7) - (D = 1) making the new value of register ecx = 6
	add eax, ecx ; adds the register values of (A - B = 1) and (C - D = 6) making the new value register eax = 7

	invoke ExitProcess,0 ; calls a Windows service (also known as a function named ExitProcess that halts the program and returns)
main endp  ; is the ending marker of the main procedure.

end main