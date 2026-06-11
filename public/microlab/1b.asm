;ALP for Arithmetic Operations
        AREA    register, CODE, READONLY
        ENTRY

        MOV     R1, #0x00F0

        ADD     R0, R1, #0xFFFFFF4F      ; R0 = R1 + 0xFFFFFF4F

        ADDS    R2, R1, #0xFFFFFF4F      ; R2 = R1 + 0xFFFFFF4F, flags updated

        ADCS    R3, R1, R2               ; R3 = R1 + R2 + Carry, flags updated

        ADD     R4, R1, R1, LSL #1       ; R4 = 3 × R1

        MOV     R5, #0x00F0

        SUB     R6, R5, #0x0F0           ; R6 = R5 - 0x0F0

        SUBS    R7, R5, #0x0F0           ; R7 = R5 - 0x0F0, flags updated

        SBCS    R8, R5, R6               ; R8 = R5 - R6 - !Carry, flags updated

        SUBS    R9, R1, R1, LSL #1       ; R9 = R1 - 2×R1, result negative

STOP    B       STOP

        END
