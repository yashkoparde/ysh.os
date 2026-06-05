AREA LARGE,CODE,READONLY
ENTRY

MOV R5,#5          ; R5 = length of array - 1
LDR R1,=ARRAY      ; Load starting address of array
LDR R2,[R1],#4     ; Load first element into R2

LOOP
LDR R4,[R1],#4     ; Load next element
CMP R2,R4          ; Compare current largest with next element
BHI NEXT           ; If R2 > R4, keep R2 unchanged
MOV R2,R4          ; Else update largest value

NEXT
SUBS R5,R5,#1      ; Decrement counter
BNE LOOP           ; Repeat until all elements are checked

STOP B STOP

ARRAY DCD 0X23,0X45,0XFF,0X76,0X12,0X99

END

