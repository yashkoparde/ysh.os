;Sum of First 10 Integer Numbers
        AREA    ADD1TO10, CODE, READONLY
        ENTRY

        MOV     R1, #10            ; Length of array
        LDR     R2, =ARRAY         ; Load starting address of array
        MOV     R4, #0             ; Initialize sum

NEXT    LDR     R3, [R2], #4       ; Load array element and increment pointer
        ADD     R4, R4, R3         ; Add element to sum

        SUBS    R1, R1, #1         ; Decrement counter
        BNE     NEXT               ; Repeat until R1 = 0

        MOV     R5, #0x40000000    ; Memory location for result
        STR     R4, [R5]           ; Store sum at address 0x40000000

STOP    B       STOP

ARRAY   DCD     1,2,3,4,5,6,7,8,9,10

        END
