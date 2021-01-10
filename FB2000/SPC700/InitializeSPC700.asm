
%SPCDataBlockStart(0700)
        CLRP
        MOV X, #$FF
        MOV SP, X
        MOV $F2, #$6C
        MOV $F3, X
        MOV $F1, #$B0
        CALL CODE_0768
        JMP CODE_074F

CODE_0712:
        MOV Y, #$00
        MOV $F4, #$AA
        MOV $F5, #$BB
CODE_071A:
        MOV X, $F4
        CMP X, #$CC
        BNE CODE_071A
CODE_0720:
        MOV $03, $F6
        MOV $04, $F7
        MOV A, X
        MOV X, $F5
        MOV $F4, A
        BNE CODE_0732
        MOV $F6, X
        JMP ($0003+x)

CODE_0732:
        MOV X, #$00
CODE_0734:
        CMP X, $F4
        BNE CODE_0734
CODE_0738:
        MOV A, $F5
        MOV ($03)+y, A
        MOV X, $F4
        MOV $F4, X
        INCW $03
CODE_0742:
        CMP X, $F4
        BEQ CODE_0742
        INC X
        CMP X, $F4
        BEQ CODE_0738
        MOV X, $F4
        BRA CODE_0720

CODE_074F:
        MOV $F2, #$6C
        MOV $F3, #$FF
        MOV $F1, #$B0
        MOV X, #$00
CODE_075A:
        MOV A, $0712+x
        MOV $0100+x, A
        INC X
        CMP X, #$3D
        BCC CODE_075A
        JMP $0100

CODE_0768:
        MOV X, #DATA_0787
        MOV Y, #DATA_0787>>8
        CALL CODE_0770
        RET

CODE_0770:
        MOV $03, X
        MOV $04, Y
        MOV Y, #$00
CODE_0776:
        MOV A, ($03)+y
        CMP A, #$FF
        BEQ CODE_0786
        MOV $F2, A
        INC Y
        MOV A, ($03)+y
        MOV $F3, A
        INC Y
        BNE CODE_0776
CODE_0786:
        RET

DATA_0787:
	db $6C,$FF,$3D,$00,$4D,$00,$7D,$00,$6D,$FF,$5D,$18,$5C,$00,$2D,$00
	db $05,$00,$15,$00,$25,$00,$35,$00,$45,$00,$55,$00,$65,$00,$75,$00
	db $07,$00,$17,$00,$27,$00,$37,$00,$47,$00,$57,$00,$67,$00,$77,$00
	db $7C,$00,$2C,$00,$3C,$00,$0C,$7F,$1C,$7F,$04,$00,$14,$00,$24,$00
	db $34,$00,$44,$00,$54,$00,$64,$00,$74,$00,$FF
%SPCDataBlockEnd(0700)

%EndSPCUploadAndJumpToEngine($0700)
