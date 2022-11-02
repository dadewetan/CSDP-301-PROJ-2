;Written by: Daniel Adewetan
;Date/Modified: 11/2/2022
;Name: Project 2 "ProjTypeDef"
;Description: Creating 3 arrays and computating the arrays.

.386
.model flat

PBYTE  TYPEDEF  PTR BYTE 
PWORD  TYPEDEF  PTR WORD
PDWORD TYPEDEF  PTR DWORD

.data
 arrayB BYTE   10h, 20h, 30h, 40h, 50h
 arrayW WORD   100, 200, 300, 400, 500
 ARRAYD DWORD  1000, 2000,3000, 4000, 5000

 ptr_1 PBYTE  arrayB
 ptr_2 PWORD  arrayW
 ptr_3 PDWORD arrayD

.code

thisIsMain   proc
        
        mov esi, ptr_1
        mov al, [arrayB]    ;reading the first line of arrayB in the al register
        add al, [arrayB+1] ;reading the second line of arrayB in the al register
        add al, [arrayB+2] ;reading the third line of arrayB in the al register
        add al, [arrayB+3] ;reading the fourth line of arrayB in the al register
        add al, [arrayB+4] ;reading the fifth line of arrayB in the al register

       mov esi, ptr_2
        mov bx, [arrayW]     ;reading the first line of arrayW in the bx register
        add bx, [arrayW+2] ;reading the second line of arrayW in the bx register
        add bx, [arrayW+4] ;reading the third line of arrayW in the bx register
        add bx, [arrayW+6] ;reading the fourth line of arrayW in the bx register
        add bx, [arrayW+8] ;reading the fifth line of arrayW in the bx register

      
      mov esi, ptr_3
        mov ecx, [arrayD]    ;reading the first line of arrayD in the ecx register
        add ecx, [arrayD+4];reading the second line of arrayD in the ecx register
        add ecx, [arrayD+8];reading the third line of arrayD in the ecx register
        add ecx, [arrayD+12];reading the fourth line of arrayD in the ecx register
        add ecx, [arrayD+16];reading the fifth line of arrayD in the ecx register      

        ret

thisIsMain   endp
end     thisIsMain

