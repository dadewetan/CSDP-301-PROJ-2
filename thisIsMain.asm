.386
.model flat

PBYTE  TYPEDEF  PTR BYTE 
PWORD  TYPEDEF  PTR WORD
PDWORD TYPEDEF  PTR DWORD

.data
 arrayB BYTE   10h, 20h, 30h, 40h, 50h
 arrayW WORD   100, 200, 300, 400, 500
 ARRAYD DWORD  1000, 2000,3000, 4000, 5000

  PBYTE  arrayB
  PWORD  arrayW
  PDWORD arrayD

.code

thisIsMain   proc
      
        mov al, arrayB     ;reading the first line of arrayB in the al register
        mov al, [arrayB+1] ;reading the second line of arrayB in the al register
        mov al, [arrayB+2] ;reading the third line of arrayB in the al register
        mov al, [arrayB+3] ;reading the fourth line of arrayB in the al register
        mov al, [arrayB+4] ;reading the fifth line of arrayB in the al register

       
        mov bx, arrayW     ;reading the first line of arrayW in the bx register
        mov bx, [arrayW+1] ;reading the first line of arrayW in the bx register
        mov bx, [arrayW+2] ;reading the first line of arrayW in the bx register
        mov bx, [arrayW+3] ;reading the first line of arrayW in the bx register
        mov bx, [arrayW+4] ;reading the first line of arrayW in the bx register

      
        mov ecx, arrayD    ;reading the first line of arrayD in the ecx register
        mov ecx, [arrayD+1];reading the first line of arrayD in the ecx register
        mov ecx, [arrayD+2];reading the first line of arrayD in the ecx register
        mov ecx, [arrayD+3];reading the first line of arrayD in the ecx register
        mov ecx, [arrayD+4];reading the first line of arrayD in the ecx register      

thisIsMain   endp
end     thisIsMain

