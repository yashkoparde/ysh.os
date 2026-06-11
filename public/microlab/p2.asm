;Multiplication of Two 16-bit Binary Numbers
        AREA    Multiply, CODE, READONLY
        ENTRY

        LDR     R0, =NUM1          ; Load address of NUM1
        LDRH    R1, [R0]           ; Load first number
        LDRH    R2, [R0, #2]       ; Load second number

        MUL     R3, R1, R2         ; R3 = R1 × R2

        LDR     R4, =NUM2          ; Load address of NUM2
        LDRH    R5, [R4]           ; Load first number
        LDRH    R6, [R4, #2]       ; Load second number

        SMULLS  R7, R8, R5, R6     ; R8:R7 = R5 × R6 (64-bit result)

STOP    B       STOP

NUM1    DCW     0x1222, 0x1133     ; Numbers to multiply
NUM2    DCW     0xFFFF, 0xFFFF

        END
