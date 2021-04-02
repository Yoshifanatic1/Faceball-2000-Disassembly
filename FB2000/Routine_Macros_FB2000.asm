
;#############################################################################################################
;#############################################################################################################

macro FB2000Bank00Macros(StartBank, EndBank)
%BANK_START(<StartBank>)

CODE_008000:
	NOP
	REP.b #$30
	LDA.w #$7E2000
	STA.b $00
	SEP.b #$20
	LDA.b #$7E2000>>16
	STA.b $02
	LDY.w #$0000
	LDX.w #$0000
CODE_008014:
	LDA.w DATA_038000,x
	STA.b [$00],y
	INY
	INX
	CPX.w #$0007
	BNE.b CODE_008014
	REP.b #$30
	LDA.w #$7E2007
	STA.b $00
	SEP.b #$20
	LDA.b #$7E2007>>16
	STA.b $02
	LDY.w #$0000
	SEP.b #$20
CODE_008032:
	LDA.b #$00
	STA.b [$00],y
	INY
	CPY.w #$00E0
	BNE.b CODE_008032
	REP.b #$30
	LDA.w #$7E20E7
	STA.b $00
	SEP.b #$20
	LDA.b #$7E20E7>>16
	STA.b $02
	LDY.w #$0000
	LDX.w #$0000
	SEP.b #$20
CODE_008051:
	LDA.w DATA_038007,x
	STA.b [$00],y
	INY
	INX
	CPX.w #$0007
	BNE.b CODE_008051
	SEP.b #$20
	STZ.w !REGISTER_BGModeAndTileSizeSetting
	STZ.w !REGISTER_MosaicSizeAndBGEnable
	STZ.w $020A
	STZ.w $020B
	STZ.w !REGISTER_BG1AddressAndSize
	STZ.w !REGISTER_BG2AddressAndSize
	STZ.w !REGISTER_BG3AddressAndSize
	STZ.w !REGISTER_BG4AddressAndSize
	STZ.w !REGISTER_BG1And2TileDataDesignation
	STZ.w !REGISTER_BG3And4TileDataDesignation
	STZ.w !REGISTER_BG1HorizScrollOffset
	STZ.w !REGISTER_BG1HorizScrollOffset
	STZ.w !REGISTER_BG1VertScrollOffset
	STZ.w !REGISTER_BG1VertScrollOffset
	STZ.w !REGISTER_BG2HorizScrollOffset
	STZ.w !REGISTER_BG2HorizScrollOffset
	STZ.w !REGISTER_BG2VertScrollOffset
	STZ.w !REGISTER_BG2VertScrollOffset
	STZ.w !REGISTER_BG3HorizScrollOffset
	STZ.w !REGISTER_BG3HorizScrollOffset
	STZ.w !REGISTER_BG3VertScrollOffset
	STZ.w !REGISTER_BG3VertScrollOffset
	STZ.w !REGISTER_BG4HorizScrollOffset
	STZ.w !REGISTER_BG4HorizScrollOffset
	STZ.w !REGISTER_BG4VertScrollOffset
	STZ.w !REGISTER_BG4VertScrollOffset
	STZ.w !REGISTER_Mode7TilemapSettings
	SEP.b #$20
	LDA.b #$4C
	STA.w $0213
	SEP.b #$20
	LDA.b #$4C
	STA.w $0216
	SEP.b #$20
	LDA.b #$7E244E>>16
	STA.b $4C
	STA.b $4F
	STA.b $52
	STZ.w $0279
	STZ.w $027A
	STZ.w $027B
	STZ.w $027C
	STZ.w $027D
	STZ.w $027E
	SEP.b #$20
	LDA.w $0279
	XBA
	LDA.w $0279
	REP.b #$20
	LDX.w #$7E244E
	JSR.w CODE_009293
	SEP.b #$20
	LDA.w $0279
	XBA
	LDA.w $0279
	REP.b #$20
	LDX.w #$7E43CE
	JSR.w CODE_009293
	SEP.b #$20
	LDA.w $027A
	XBA
	LDA.w $027A
	REP.b #$20
	LDX.w #$7E634E
	JSR.w CODE_009293
	SEP.b #$20
	LDA.w $027A
	XBA
	LDA.w $027A
	REP.b #$20
	LDX.w #$7E82CE
	JSR.w CODE_009293
	SEP.b #$20
	STZ.w !REGISTER_DMAEnable
	STZ.w !REGISTER_HDMAEnable
	STZ.w $02FF
	REP.b #$20
	LDA.w #$027F
	STA.b $53
	STZ.w $027F
	STZ.w $0287
	STZ.w $028F
	STZ.w $0297
	STZ.w $029F
	STZ.w $02A7
	STZ.w $02AF
	STZ.w $02B7
	STZ.w $02BF
	STZ.w $02C7
	STZ.w $02CF
	STZ.w $02D7
	STZ.w $02DF
	STZ.w $02E7
	STZ.w $02EF
	STZ.w $02F7
	SEP.b #$20
	STZ.w !REGISTER_IRQNMIAndJoypadEnableFlags
	STZ.w $03C5
	STZ.w !REGISTER_HCountTimerLo
	STZ.w !REGISTER_HCountTimerHi
	STZ.w !REGISTER_VCountTimerLo
	STZ.w !REGISTER_VCountTimerHi
	REP.b #$20
	STZ.w $03C6
	STZ.w $03C8
	STZ.w $03CA
	STZ.w $03CC
	REP.b #$20
	STZ.b $71
	LDA.w #DATA_0F8000
	STA.b $74
	LDA.w #DATA_0F80F6
	STA.b $77
	SEP.b #$20
	LDA.b #DATA_0F8000>>16
	STA.b $73
	STA.b $76
	STA.b $79
	SEP.b #$20
	STZ.w !REGISTER_Multiplicand
	STZ.w !REGISTER_Multiplier
	STZ.w !REGISTER_DividendLo
	STZ.w !REGISTER_DividendHi
	STZ.w !REGISTER_Divisor
	SEP.b #$20
	STZ.w !REGISTER_CGRAMAddress
	STZ.w $0B74
	REP.b #$20
	STZ.w $0B77
	STZ.w $0B79
	STZ.w $0B7B
	SEP.b #$20
	STZ.w $0B86
	REP.b #$20
	LDA.w #$0001
	STA.w $12A2
	SEP.b #$20
	LDA.b #$80
	STA.w !REGISTER_ScreenDisplayRegister
	STZ.w $1335
	STZ.w $1336
	LDA.b #$80
	STA.w !REGISTER_VRAMAddressIncrementValue
	STZ.w !REGISTER_VRAMAddressLo
	STZ.w !REGISTER_VRAMAddressHi
	STZ.w !REGISTER_Mode7MatrixParameterA
	LDA.b #$01
	STA.w !REGISTER_Mode7MatrixParameterA
	STZ.w !REGISTER_Mode7MatrixParameterB
	STZ.w !REGISTER_Mode7MatrixParameterB
	STZ.w !REGISTER_Mode7MatrixParameterC
	STZ.w !REGISTER_Mode7MatrixParameterC
	STZ.w !REGISTER_Mode7MatrixParameterD
	LDA.b #$01
	STA.w !REGISTER_Mode7MatrixParameterD
	STZ.w !REGISTER_Mode7CenterX
	STZ.w !REGISTER_Mode7CenterX
	STZ.w !REGISTER_Mode7CenterY
	STZ.w !REGISTER_Mode7CenterY
	STZ.w !REGISTER_BG1And2WindowMaskSettings
	STZ.w !REGISTER_BG3And4WindowMaskSettings
	STZ.w !REGISTER_ObjectAndColorWindowSettings
	STZ.w !REGISTER_Window1LeftPositionDesignation
	STZ.w !REGISTER_Window1RightPositionDesignation
	STZ.w !REGISTER_Window2LeftPositionDesignation
	STZ.w !REGISTER_Window2RightPositionDesignation
	STZ.w !REGISTER_BGWindowLogicSettings
	STZ.w !REGISTER_ColorAndObjectWindowLogicSettings
	STZ.w !REGISTER_MainScreenLayers
	STZ.w !REGISTER_SubScreenLayers
	STZ.w !REGISTER_MainScreenWindowMask
	STZ.w !REGISTER_SubScreenWindowMask
	LDA.b #$30
	STA.w !REGISTER_ColorMathInitialSettings
	STZ.w !REGISTER_ColorMathSelectAndEnable
	LDA.b #$E0
	STA.w !REGISTER_FixedColorData
	STZ.w !REGISTER_InitialScreenSettings
	REP.b #$20
	STZ.w $1C05
	SEP.b #$20
	STZ.w !REGISTER_OAMSizeAndDataAreaDesignation
	STZ.w $1C09
	STZ.w $1C0A
	LDA.b #$7EA285>>16
	STA.b $B4
	REP.b #$20
	STZ.w !REGISTER_OAMAddressLo
	LDA.w #$7EA285
	STA.b $B2
	SEP.b #$20
	LDA.b #$00
	STA.w $1F64
	RTS

CODE_008268:
	REP.b #$30
	PHA
	PHX
	PHY
	PHD
	PHB
	CLD
	SEP.b #$20
	LDA.w !REGISTER_NMIEnable
	STZ.w !REGISTER_HDMAEnable
	LDA.b #$80
	STA.w !REGISTER_ScreenDisplayRegister
	LDA.b #DATA_038000>>16
	PHA
	PLB
	REP.b #$20
	LDA.w #$0071
	AND.w #$FF00
	TCD
	SEP.b #$20
	LDA.w $03C5
	AND.b #$7F
	STA.w !REGISTER_IRQNMIAndJoypadEnableFlags
	STA.w $03C5
	SEP.b #$20
	LDA.w $027D
	BNE.b CODE_0082A1
	BRL.w CODE_0083A7

CODE_0082A1:
	LDA.w $027B
	BNE.b CODE_0082A9
	BRL.w CODE_008326

CODE_0082A9:
	DEC.w $027D
	BEQ.b CODE_0082E5
	SEP.b #$20
	LDA.b #$80
	STA.w !REGISTER_VRAMAddressIncrementValue
	REP.b #$30
	LDA.w #$4000
	STA.w !REGISTER_VRAMAddressLo
	LDA.w #$7E244E>>16
	LDX.w #$7E244E
	LDY.w #$0FC0
	REP.b #$10
	STX.w DMA[$06].SourceLo
	STY.w DMA[$06].SizeLo
	SEP.b #$20
	STA.w DMA[$06].SourceBank
	LDA.b #!REGISTER_WriteToVRAMPortLo
	STA.w DMA[$06].Destination
	LDA.b #$01
	STA.w DMA[$06].Parameters
	LDA.b #$40
	STA.w !REGISTER_DMAEnable
	BRL.w CODE_0084B4

CODE_0082E5:
	SEP.b #$20
	LDA.b #$80
	STA.w !REGISTER_VRAMAddressIncrementValue
	REP.b #$30
	LDA.w #$47E0
	STA.w !REGISTER_VRAMAddressLo
	LDA.w #$7E340E>>16
	LDX.w #$7E340E
	LDY.w #$0FC0
	REP.b #$10
	STX.w DMA[$06].SourceLo
	STY.w DMA[$06].SizeLo
	SEP.b #$20
	STA.w DMA[$06].SourceBank
	LDA.b #!REGISTER_WriteToVRAMPortLo
	STA.w DMA[$06].Destination
	LDA.b #$01
	STA.w DMA[$06].Parameters
	LDA.b #$40
	STA.w !REGISTER_DMAEnable
	SEP.b #$20
	STZ.w $027B
	LDA.b #$03
	STA.w $027D
	BRL.w CODE_0084B4

CODE_008326:
	SEP.b #$20
	DEC.w $027D
	BEQ.b CODE_008364
	SEP.b #$20
	LDA.b #$80
	STA.w !REGISTER_VRAMAddressIncrementValue
	REP.b #$30
	LDA.w #$5000
	STA.w !REGISTER_VRAMAddressLo
	LDA.w #$7E43CE>>16
	LDX.w #$7E43CE
	LDY.w #$0FC0
	REP.b #$10
	STX.w DMA[$06].SourceLo
	STY.w DMA[$06].SizeLo
	SEP.b #$20
	STA.w DMA[$06].SourceBank
	LDA.b #!REGISTER_WriteToVRAMPortLo
	STA.w DMA[$06].Destination
	LDA.b #$01
	STA.w DMA[$06].Parameters
	LDA.b #$40
	STA.w !REGISTER_DMAEnable
	BRL.w CODE_0084B4

CODE_008364:
	SEP.b #$20
	LDA.b #$80
	STA.w !REGISTER_VRAMAddressIncrementValue
	REP.b #$30
	LDA.w #$57E0
	STA.w !REGISTER_VRAMAddressLo
	LDA.w #$7E538E>>16
	LDX.w #$7E538E
	LDY.w #$0FC0
	REP.b #$10
	STX.w DMA[$06].SourceLo
	STY.w DMA[$06].SizeLo
	SEP.b #$20
	STA.w DMA[$06].SourceBank
	LDA.b #!REGISTER_WriteToVRAMPortLo
	STA.w DMA[$06].Destination
	LDA.b #$01
	STA.w DMA[$06].Parameters
	LDA.b #$40
	STA.w !REGISTER_DMAEnable
	SEP.b #$20
	LDA.b #$01
	STA.w $027B
	LDA.b #$03
	STA.w $027D
	BRL.w CODE_0084B4

CODE_0083A7:
	SEP.b #$20
	LDA.w $027E
	BNE.b CODE_0083B1
	BRL.w CODE_0084B4

CODE_0083B1:
	LDA.w $027C
	BNE.b CODE_0083B9
	BRL.w CODE_008436

CODE_0083B9:
	DEC.w $027E
	BEQ.b CODE_0083F5
	SEP.b #$20
	LDA.b #$80
	STA.w !REGISTER_VRAMAddressIncrementValue
	REP.b #$30
	LDA.w #$2000
	STA.w !REGISTER_VRAMAddressLo
	LDA.w #$7E634E>>16
	LDX.w #$7E634E
	LDY.w #$0FC0
	REP.b #$10
	STX.w DMA[$06].SourceLo
	STY.w DMA[$06].SizeLo
	SEP.b #$20
	STA.w DMA[$06].SourceBank
	LDA.b #!REGISTER_WriteToVRAMPortLo
	STA.w DMA[$06].Destination
	LDA.b #$01
	STA.w DMA[$06].Parameters
	LDA.b #$40
	STA.w !REGISTER_DMAEnable
	BRL.w CODE_0084B4

CODE_0083F5:
	SEP.b #$20
	LDA.b #$80
	STA.w !REGISTER_VRAMAddressIncrementValue
	REP.b #$30
	LDA.w #$27E0
	STA.w !REGISTER_VRAMAddressLo
	LDA.w #$7E730E>>16
	LDX.w #$7E730E
	LDY.w #$0FC0
	REP.b #$10
	STX.w DMA[$06].SourceLo
	STY.w DMA[$06].SizeLo
	SEP.b #$20
	STA.w DMA[$06].SourceBank
	LDA.b #!REGISTER_WriteToVRAMPortLo
	STA.w DMA[$06].Destination
	LDA.b #$01
	STA.w DMA[$06].Parameters
	LDA.b #$40
	STA.w !REGISTER_DMAEnable
	SEP.b #$20
	STZ.w $027C
	LDA.b #$03
	STA.w $027E
	BRL.w CODE_0084B4

CODE_008436:
	SEP.b #$20
	DEC.w $027E
	BEQ.b CODE_008474
	SEP.b #$20
	LDA.b #$80
	STA.w !REGISTER_VRAMAddressIncrementValue
	REP.b #$30
	LDA.w #$3000
	STA.w !REGISTER_VRAMAddressLo
	LDA.w #$7E82CE>>16
	LDX.w #$7E82CE
	LDY.w #$0FC0
	REP.b #$10
	STX.w DMA[$06].SourceLo
	STY.w DMA[$06].SizeLo
	SEP.b #$20
	STA.w DMA[$06].SourceBank
	LDA.b #!REGISTER_WriteToVRAMPortLo
	STA.w DMA[$06].Destination
	LDA.b #$01
	STA.w DMA[$06].Parameters
	LDA.b #$40
	STA.w !REGISTER_DMAEnable
	BRL.w CODE_0084B4

CODE_008474:
	SEP.b #$20
	LDA.b #$80
	STA.w !REGISTER_VRAMAddressIncrementValue
	REP.b #$30
	LDA.w #$37E0
	STA.w !REGISTER_VRAMAddressLo
	LDA.w #$7E928E>>16
	LDX.w #$7E928E
	LDY.w #$0FC0
	REP.b #$10
	STX.w DMA[$06].SourceLo
	STY.w DMA[$06].SizeLo
	SEP.b #$20
	STA.w DMA[$06].SourceBank
	LDA.b #!REGISTER_WriteToVRAMPortLo
	STA.w DMA[$06].Destination
	LDA.b #$01
	STA.w DMA[$06].Parameters
	LDA.b #$40
	STA.w !REGISTER_DMAEnable
	SEP.b #$20
	LDA.b #$01
	STA.w $027C
	LDA.b #$03
	STA.w $027E
CODE_0084B4:
	REP.b #$30
	LDY.w #$0000
	LDX.w #$0010
CODE_0084BC:
	PHY
	PHX
	LDA.b ($53),y
	TAX
	AND.w #$0070
	BNE.b CODE_0084C9
	BRL.w CODE_008570

CODE_0084C9:
	LDA.w #$0000
	STA.b ($53),y
	INY
	INY
	LDA.b ($53),y
	PHA
	INY
	INY
	LDA.b ($53),y
	PHA
	INY
	INY
	LDA.b ($53),y
	PHA
	TXA
	BIT.w #$0010
	BNE.b CODE_0084EE
	BIT.w #$0020
	BNE.b CODE_008518
	BIT.w #$0040
	BNE.b CODE_008547
	db $00					; Note: This BRK is intentional, not due to bad disassembly.
CODE_0084EE:
	PLA
	SEP.b #$20
	STA.w !REGISTER_CGRAMAddress
	REP.b #$30
	TXA
	XBA
	PLY
	PLX
	REP.b #$10
	STX.w DMA[$06].SourceLo
	STY.w DMA[$06].SizeLo
	SEP.b #$20
	STA.w DMA[$06].SourceBank
	LDA.b #!REGISTER_WriteToCGRAMPort
	STA.w DMA[$06].Destination
	LDA.b #$00
	STA.w DMA[$06].Parameters
	LDA.b #$40
	STA.w !REGISTER_DMAEnable
	BRA.b CODE_008570

CODE_008518:
	SEP.b #$20
	AND.b #$8F
	STA.w !REGISTER_VRAMAddressIncrementValue
	REP.b #$30
	PLA
	STA.w !REGISTER_VRAMAddressLo
	TXA
	XBA
	PLY
	PLX
	REP.b #$10
	STX.w DMA[$06].SourceLo
	STY.w DMA[$06].SizeLo
	SEP.b #$20
	STA.w DMA[$06].SourceBank
	LDA.b #!REGISTER_WriteToVRAMPortLo
	STA.w DMA[$06].Destination
	LDA.b #$01
	STA.w DMA[$06].Parameters
	LDA.b #$40
	STA.w !REGISTER_DMAEnable
	BRA.b CODE_008570

CODE_008547:
	REP.b #$30
	PLA
	ORA.w #$8000
	STA.w !REGISTER_OAMAddressLo
	TXA
	XBA
	PLY
	PLX
	REP.b #$10
	STX.w DMA[$06].SourceLo
	STY.w DMA[$06].SizeLo
	SEP.b #$20
	STA.w DMA[$06].SourceBank
	LDA.b #!REGISTER_OAMDataWritePort
	STA.w DMA[$06].Destination
	LDA.b #$00
	STA.w DMA[$06].Parameters
	LDA.b #$40
	STA.w !REGISTER_DMAEnable
CODE_008570:
	REP.b #$30
	PLX
	PLY
	INY
	INY
	INY
	INY
	INY
	INY
	INY
	INY
	DEX
	BEQ.b CODE_008582
	BRL.w CODE_0084BC

CODE_008582:
	REP.b #$20
	INC.w $0206
	SEP.b #$20
	LDA.w $020A
	BEQ.b CODE_0085B7
	TAX
	DEC.w $020E
	BNE.b CODE_0085B7
	LDA.w $020D
	STA.w $020E
	TXA
	CLC
	ADC.w $020B
	STA.w $020B
	TAX
	ASL
	ASL
	ASL
	ASL
	ORA.w $020C
	STA.w !REGISTER_MosaicSizeAndBGEnable
	TXA
	BEQ.b CODE_0085B4
	CMP.b #$0F
	BNE.b CODE_0085B7
CODE_0085B4:
	STZ.w $020A
CODE_0085B7:
	SEP.b #$20
	LDA.b #$39
	STA.w !REGISTER_Window1LeftPositionDesignation
	LDA.b #$C7
	STA.w !REGISTER_Window1RightPositionDesignation
	LDA.b $57
	STA.w !REGISTER_BG1HorizScrollOffset
	LDA.b $58
	STA.w !REGISTER_BG1HorizScrollOffset
	LDA.b $5F
	STA.w !REGISTER_BG2HorizScrollOffset
	LDA.b $60
	STA.w !REGISTER_BG2HorizScrollOffset
	REP.b #$30
	LDA.w !RAM_FB2000_Level_MasterDeathTimerLo
	BEQ.b CODE_0085EB
	AND.w #$000F
	ASL
	TAX
	LDA.w DATA_038A05,x
	SEP.b #$20
	STA.w !REGISTER_MosaicSizeAndBGEnable
CODE_0085EB:
	REP.b #$30
	LDA.w $03A1
	BEQ.b CODE_008639
	LDA.w $1C91
	AND.w #$001F
	ASL
	TAX
	SEP.b #$20
	LDA.b #$78
	STA.w !REGISTER_CGRAMAddress
	REP.b #$20
	LDA.w DATA_038A25,x
	SEP.b #$20
	STA.w !REGISTER_WriteToCGRAMPort
	XBA
	STA.w !REGISTER_WriteToCGRAMPort
	SEP.b #$20
	LDA.b #$7C
	STA.w !REGISTER_CGRAMAddress
	REP.b #$20
	LDA.w DATA_038A65,x
	SEP.b #$20
	STA.w !REGISTER_WriteToCGRAMPort
	XBA
	STA.w !REGISTER_WriteToCGRAMPort
	SEP.b #$20
	LDA.b #$7E
	STA.w !REGISTER_CGRAMAddress
	REP.b #$20
	LDA.w DATA_038AA5,x
	SEP.b #$20
	STA.w !REGISTER_WriteToCGRAMPort
	XBA
	STA.w !REGISTER_WriteToCGRAMPort
CODE_008639:
	REP.b #$20
	LDA.w $038D
	CMP.w #$55DD
	BNE.b CODE_00866B
	LDA.w $03C6
	EOR.w #$B080
	BNE.b CODE_008653
	JSL.l CODE_02C8FF
	JML.l CODE_00C94B

CODE_008653:
	LDA.w $12A2
	CMP.w #$0002
	BCC.b CODE_00866B
	LDA.w $03C8
	EOR.w #$B080
	BNE.b CODE_00866B
	JSL.l CODE_02C8FF
	JML.l CODE_00C94B

CODE_00866B:
	REP.b #$20
	LDA.w $038F
	BEQ.b CODE_008675
	DEC.w $038F
CODE_008675:
	REP.b #$30
	LDA.w $1C91
	LSR
	BCC.b CODE_00869F
	LDA.w $0391
	BEQ.b CODE_00868E
	DEC.w $0391
	TAX
	LDA.w DATA_038AE5,x
	CLC
	ADC.b $59
	STA.b $57
CODE_00868E:
	LDA.w $0393
	BEQ.b CODE_00869F
	DEC.w $0393
	TAX
	LDA.w DATA_038AE5,x
	CLC
	ADC.b $5D
	STA.b $5B
CODE_00869F:
	SEP.b #$30
	LDA.w $0B74
	BNE.b CODE_0086A9
	BRL.w CODE_008739

CODE_0086A9:
	LDX.w $0B75
	LDY.w $0B76
CODE_0086AF:
	STX.w !REGISTER_CGRAMAddress
	LDA.w !REGISTER_ReadFromCGRAMPort
	STA.b $A5
	LDA.w !REGISTER_ReadFromCGRAMPort
	STA.b $A6
	REP.b #$20
	LDA.b $A5
	AND.w #$001F
	CMP.w $0B77
	BEQ.b CODE_0086DF
	BCS.b CODE_0086D0
	CLC
	ADC.w #$0001
	BRA.b CODE_0086D4

CODE_0086D0:
	SEC
	SBC.w #$0001
CODE_0086D4:
	PHA
	LDA.b $A5
	AND.w #$7FE0
	ORA.b $01,S
	STA.b $A5
	PLA
CODE_0086DF:
	LDA.b $A5
	AND.w #$03E0
	CMP.w $0B79
	BEQ.b CODE_008700
	BCS.b CODE_0086F1
	CLC
	ADC.w #$0020
	BRA.b CODE_0086F5

CODE_0086F1:
	SEC
	SBC.w #$0020
CODE_0086F5:
	PHA
	LDA.b $A5
	AND.w #$7C1F
	ORA.b $01,S
	STA.b $A5
	PLA
CODE_008700:
	LDA.b $A5
	AND.w #$7C00
	CMP.w $0B7B
	BEQ.b CODE_008721
	BCS.b CODE_008712
	CLC
	ADC.w #$0400
	BRA.b CODE_008716

CODE_008712:
	SEC
	SBC.w #$0400
CODE_008716:
	PHA
	LDA.b $A5
	AND.w #$03FF
	ORA.b $01,S
	STA.b $A5
	PLA
CODE_008721:
	STX.w !REGISTER_CGRAMAddress
	LDA.b $A5
	SEP.b #$20
	STA.w !REGISTER_WriteToCGRAMPort
	XBA
	STA.w !REGISTER_WriteToCGRAMPort
	INX
	DEY
	BEQ.b CODE_008736
	BRL.w CODE_0086AF

CODE_008736:
	DEC.w $0B74
CODE_008739:
	SEP.b #$30
	LDA.w $1335
	BEQ.b CODE_00875F
	TAX
	DEC.w $1338
	BNE.b CODE_00875F
	LDA.w $1337
	STA.w $1338
	TXA
	CLC
	ADC.w $1336
	STA.w $1336
	AND.b #$0F
	BEQ.b CODE_00875C
	CMP.b #$0F
	BNE.b CODE_00875F
CODE_00875C:
	STZ.w $1335
CODE_00875F:
	REP.b #$20
	LDA.w $1C05
	BEQ.b CODE_008769
	DEC.w $1C05
CODE_008769:
	REP.b #$20
	INC.w $1C91
	REP.b #$30
	LDX.w #$1C95
	LDY.w #$000A
CODE_008776:
	LDA.b $00,x
	BIT.w #$0001
	BEQ.b CODE_008782
	AND.w #$FFFE
	STA.b $00,x
CODE_008782:
	TXA
	CLC
	ADC.w #$0046
	TAX
	DEY
	BNE.b CODE_008776
	SEP.b #$20
	LDA.w $1336
	ORA.w $1339
	STA.w !REGISTER_ScreenDisplayRegister
	REP.b #$20
	LDA.w $1C93
	BIT.w #$0008
	BEQ.b CODE_0087A3
	BRL.w CODE_008854

CODE_0087A3:
	SEP.b #$20
	LDA.b #$03
	CMP.w $027D
	BNE.b CODE_0087FD
	STZ.w $027D
	LDA.w $027B
	BEQ.b CODE_0087DA
	SEP.b #$20
	LDA.b #$7E244E>>16
	PHA
	LDA.w $0279
	REP.b #$30
	AND.w #$00FF
	LDX.w #$7E244E
	LDY.w #$1F80
	JSL.l CODE_00939B
	SEP.b #$20
	PLA
	REP.b #$20
	LDA.w #$0100
	STA.b $57
	STA.b $59
	BRL.w CODE_008854

CODE_0087DA:
	SEP.b #$20
	LDA.b #$7E43CE>>16
	PHA
	LDA.w $0279
	REP.b #$30
	AND.w #$00FF
	LDX.w #$7E43CE
	LDY.w #$1F80
	JSL.l CODE_00939B
	SEP.b #$20
	PLA
	REP.b #$20
	STZ.b $57
	STZ.b $59
	BRL.w CODE_008854

CODE_0087FD:
	SEP.b #$20
	LDA.b #$03
	CMP.w $027E
	BNE.b CODE_008854
	STZ.w $027E
	LDA.w $027C
	BEQ.b CODE_008834
	SEP.b #$20
	LDA.b #$7E634E>>16
	PHA
	LDA.w $027A
	REP.b #$30
	AND.w #$00FF
	LDX.w #$7E634E
	LDY.w #$1F80
	JSL.l CODE_00939B
	SEP.b #$20
	PLA
	REP.b #$20
	LDA.w #$0100
	STA.b $5B
	STA.b $5D
	BRL.w CODE_008854

CODE_008834:
	SEP.b #$20
	LDA.b #$7E82CE>>16
	PHA
	LDA.w $027A
	REP.b #$30
	AND.w #$00FF
	LDX.w #$7E82CE
	LDY.w #$1F80
	JSL.l CODE_00939B
	SEP.b #$20
	PLA
	REP.b #$20
	STZ.b $5B
	STZ.b $5D
CODE_008854:
	SEP.b #$20
	LDA.w $03C5
	ORA.b #$80
	STA.w !REGISTER_IRQNMIAndJoypadEnableFlags
	STA.w $03C5
	SEP.b #$20
	LDA.w $02FF
	STA.w !REGISTER_HDMAEnable
	REP.b #$30
	PLB
	PLD
	PLY
	PLX
	PLA
	RTI

CODE_008871:
	SEP.b #$30
	TAY
	LDA.w $020B
	AND.b #$0F
	CMP.b #$0F
	BEQ.b CODE_00888B
	STX.w $020C
	STY.w $020D
	STY.w $020E
	LDA.b #$01
	STA.w $020A
CODE_00888B:
	RTL

CODE_00888C:
	SEP.b #$30
	TAY
	LDA.w $020B
	BEQ.b CODE_0088A2
	STX.w $020C
	STY.w $020D
	STY.w $020E
	LDA.b #$FF
	STA.w $020A
CODE_0088A2:
	RTL

CODE_0088A3:
	REP.b #$30
	LDA.w #CODE_00AAF7
	BRA.b CODE_008911

CODE_0088AA:
	REP.b #$30
	LDA.w #CODE_00ABAA
	BRA.b CODE_008911

CODE_0088B1:
	REP.b #$30
	LDA.w #CODE_00AC9C
	BRA.b CODE_008911

CODE_0088B8:
	REP.b #$30
	LDA.w #CODE_00AD90
	BRA.b CODE_008911

CODE_0088BF:
	REP.b #$30
	LDA.w #CODE_00AE48
	BRA.b CODE_008911

CODE_0088C6:
	REP.b #$30
	LDA.w #CODE_00AF30
	BRA.b CODE_008911

CODE_0088CD:
	REP.b #$30
	LDA.w #CODE_00B01F
	BRA.b CODE_008911

CODE_0088D4:
	REP.b #$30
	LDA.w #CODE_00B113
	BRA.b CODE_008911

CODE_0088DB:
	REP.b #$30
	LDA.w #CODE_00B1F3
	BRA.b CODE_008911

CODE_0088E2:
	REP.b #$30
	LDA.w #CODE_00B2D9
	BRA.b CODE_008911

CODE_0088E9:
	REP.b #$30
	LDA.w #CODE_00B3CB
	BRA.b CODE_008911

CODE_0088F0:
	REP.b #$30
	LDA.w #CODE_00B4BC
	BRA.b CODE_008911

CODE_0088F7:
	REP.b #$30
	LDA.w #CODE_00B598
	BRA.b CODE_008911

CODE_0088FE:
	REP.b #$30
	LDA.w #CODE_00B659
	BRA.b CODE_008911

CODE_008905:
	REP.b #$30
	LDA.w #CODE_00B74B
	BRA.b CODE_008911

CODE_00890C:
	REP.b #$30
	LDA.w #CODE_00B83F
CODE_008911:					; Note: Something related to the demo
	STA.w $0214
	STX.w $020F
	LDA.b $04,S
	CLC
	ADC.w $020F
	DEC
	STA.w $0211
	LDA.b $06,S
	TAX
	TYA
CODE_008925:
	PHA
	PHX
	LDX.w $020F
	LDY.w $0211
	JSL.l ($000213&$00FFFF)|(!CurrentBank<<16)
	REP.b #$30
	PLX
	PLA
	INC
	DEX
	BNE.b CODE_008925
	RTL

CODE_00893A:
	REP.b #$20
	STA.b $03
	LDA.w #$00C8
	BRA.b CODE_008980

CODE_008943:
	REP.b #$20
	STA.b $03
	LDA.w #$00C4
	BRA.b CODE_008980

CODE_00894C:
	REP.b #$20
	STA.b $03
	LDA.w #$0084
	BRA.b CODE_008980

CODE_008955:
	REP.b #$20
	STA.b $03
	LDA.w #$0044
	BRA.b CODE_008980

CODE_00895E:
	REP.b #$20
	STA.b $03
	LDA.w #$00C2
	BRA.b CODE_008980

CODE_008967:
	REP.b #$20
	STA.b $03
	LDA.w #$00C1
	BRA.b CODE_008980

CODE_008970:
	REP.b #$20
	STA.b $03
	LDA.w #$0081
	BRA.b CODE_008980

CODE_008979:
	REP.b #$20
	STA.b $03
	LDA.w #$0041
CODE_008980:
	SEP.b #$20
	STA.b $05
	REP.b #$20
	LDA.w #CODE_00AAF7
	JMP.w CODE_008E5A

CODE_00898C:
	REP.b #$20
	STA.b $03
	LDA.w #$00C8
	BRA.b CODE_0089D2

CODE_008995:
	REP.b #$20
	STA.b $03
	LDA.w #$00C4
	BRA.b CODE_0089D2

CODE_00899E:
	REP.b #$20
	STA.b $03
	LDA.w #$0084
	BRA.b CODE_0089D2

CODE_0089A7:
	REP.b #$20
	STA.b $03
	LDA.w #$0044
	BRA.b CODE_0089D2

CODE_0089B0:
	REP.b #$20
	STA.b $03
	LDA.w #$00C2
	BRA.b CODE_0089D2

CODE_0089B9:
	REP.b #$20
	STA.b $03
	LDA.w #$00C1
	BRA.b CODE_0089D2

CODE_0089C2:
	REP.b #$20
	STA.b $03
	LDA.w #$0081
	BRA.b CODE_0089D2

CODE_0089CB:
	REP.b #$20
	STA.b $03
	LDA.w #$0041
CODE_0089D2:
	SEP.b #$20
	STA.b $05
	REP.b #$20
	LDA.w #CODE_00ABAA
	JMP.w CODE_008E5A

CODE_0089DE:
	REP.b #$20
	STA.b $03
	LDA.w #$00C8
	BRA.b CODE_008A24

CODE_0089E7:
	REP.b #$20
	STA.b $03
	LDA.w #$00C4
	BRA.b CODE_008A24

CODE_0089F0:
	REP.b #$20
	STA.b $03
	LDA.w #$0084
	BRA.b CODE_008A24

CODE_0089F9:
	REP.b #$20
	STA.b $03
	LDA.w #$0044
	BRA.b CODE_008A24

CODE_008A02:
	REP.b #$20
	STA.b $03
	LDA.w #$00C2
	BRA.b CODE_008A24

CODE_008A0B:
	REP.b #$20
	STA.b $03
	LDA.w #$00C1
	BRA.b CODE_008A24

CODE_008A14:
	REP.b #$20
	STA.b $03
	LDA.w #$0081
	BRA.b CODE_008A24

CODE_008A1D:
	REP.b #$20
	STA.b $03
	LDA.w #$0041
CODE_008A24:
	SEP.b #$20
	STA.b $05
	REP.b #$20
	LDA.w #CODE_00AC9C
	JMP.w CODE_008E5A

CODE_008A30:
	REP.b #$20
	STA.b $03
	LDA.w #$00C8
	BRA.b CODE_008A76

CODE_008A39:
	REP.b #$20
	STA.b $03
	LDA.w #$00C4
	BRA.b CODE_008A76

CODE_008A42:
	REP.b #$20
	STA.b $03
	LDA.w #$0084
	BRA.b CODE_008A76

CODE_008A4B:
	REP.b #$20
	STA.b $03
	LDA.w #$0044
	BRA.b CODE_008A76

CODE_008A54:
	REP.b #$20
	STA.b $03
	LDA.w #$00C2
	BRA.b CODE_008A76

CODE_008A5D:
	REP.b #$20
	STA.b $03
	LDA.w #$00C1
	BRA.b CODE_008A76

CODE_008A66:
	REP.b #$20
	STA.b $03
	LDA.w #$0081
	BRA.b CODE_008A76

CODE_008A6F:
	REP.b #$20
	STA.b $03
	LDA.w #$0041
CODE_008A76:
	SEP.b #$20
	STA.b $05
	REP.b #$20
	LDA.w #CODE_00AD90
	JMP.w CODE_008E5A

CODE_008A82:
	REP.b #$20
	STA.b $03
	LDA.w #$00C8
	BRA.b CODE_008AC8

CODE_008A8B:
	REP.b #$20
	STA.b $03
	LDA.w #$00C4
	BRA.b CODE_008AC8

CODE_008A94:
	REP.b #$20
	STA.b $03
	LDA.w #$0084
	BRA.b CODE_008AC8

CODE_008A9D:
	REP.b #$20
	STA.b $03
	LDA.w #$0044
	BRA.b CODE_008AC8

CODE_008AA6:
	REP.b #$20
	STA.b $03
	LDA.w #$00C2
	BRA.b CODE_008AC8

CODE_008AAF:
	REP.b #$20
	STA.b $03
	LDA.w #$00C1
	BRA.b CODE_008AC8

CODE_008AB8:
	REP.b #$20
	STA.b $03
	LDA.w #$0081
	BRA.b CODE_008AC8

CODE_008AC1:
	REP.b #$20
	STA.b $03
	LDA.w #$0041
CODE_008AC8:
	SEP.b #$20
	STA.b $05
	REP.b #$20
	LDA.w #CODE_00AE48
	JMP.w CODE_008E5A

CODE_008AD4:
	REP.b #$20
	STA.b $03
	LDA.w #$00C8
	BRA.b CODE_008B1A

CODE_008ADD:
	REP.b #$20
	STA.b $03
	LDA.w #$00C4
	BRA.b CODE_008B1A

CODE_008AE6:
	REP.b #$20
	STA.b $03
	LDA.w #$0084
	BRA.b CODE_008B1A

CODE_008AEF:
	REP.b #$20
	STA.b $03
	LDA.w #$0044
	BRA.b CODE_008B1A

CODE_008AF8:
	REP.b #$20
	STA.b $03
	LDA.w #$00C2
	BRA.b CODE_008B1A

CODE_008B01:
	REP.b #$20
	STA.b $03
	LDA.w #$00C1
	BRA.b CODE_008B1A

CODE_008B0A:
	REP.b #$20
	STA.b $03
	LDA.w #$0081
	BRA.b CODE_008B1A

CODE_008B13:
	REP.b #$20
	STA.b $03
	LDA.w #$0041
CODE_008B1A:
	SEP.b #$20
	STA.b $05
	REP.b #$20
	LDA.w #CODE_00AF30
	JMP.w CODE_008E5A

CODE_008B26:
	REP.b #$20
	STA.b $03
	LDA.w #$00C8
	BRA.b CODE_008B6C

CODE_008B2F:
	REP.b #$20
	STA.b $03
	LDA.w #$00C4
	BRA.b CODE_008B6C

CODE_008B38:
	REP.b #$20
	STA.b $03
	LDA.w #$0084
	BRA.b CODE_008B6C

CODE_008B41:
	REP.b #$20
	STA.b $03
	LDA.w #$0044
	BRA.b CODE_008B6C

CODE_008B4A:
	REP.b #$20
	STA.b $03
	LDA.w #$00C2
	BRA.b CODE_008B6C

CODE_008B53:
	REP.b #$20
	STA.b $03
	LDA.w #$00C1
	BRA.b CODE_008B6C

CODE_008B5C:
	REP.b #$20
	STA.b $03
	LDA.w #$0081
	BRA.b CODE_008B6C

CODE_008B65:
	REP.b #$20
	STA.b $03
	LDA.w #$0041
CODE_008B6C:
	SEP.b #$20
	STA.b $05
	REP.b #$20
	LDA.w #CODE_00B01F
	JMP.w CODE_008E5A

CODE_008B78:
	REP.b #$20
	STA.b $03
	LDA.w #$00C8
	BRA.b CODE_008BBE

CODE_008B81:
	REP.b #$20
	STA.b $03
	LDA.w #$00C4
	BRA.b CODE_008BBE

CODE_008B8A:
	REP.b #$20
	STA.b $03
	LDA.w #$0084
	BRA.b CODE_008BBE

CODE_008B93:
	REP.b #$20
	STA.b $03
	LDA.w #$0044
	BRA.b CODE_008BBE

CODE_008B9C:
	REP.b #$20
	STA.b $03
	LDA.w #$00C2
	BRA.b CODE_008BBE

CODE_008BA5:
	REP.b #$20
	STA.b $03
	LDA.w #$00C1
	BRA.b CODE_008BBE

CODE_008BAE:
	REP.b #$20
	STA.b $03
	LDA.w #$0081
	BRA.b CODE_008BBE

CODE_008BB7:
	REP.b #$20
	STA.b $03
	LDA.w #$0041
CODE_008BBE:
	SEP.b #$20
	STA.b $05
	REP.b #$20
	LDA.w #CODE_00B113
	JMP.w CODE_008E5A

CODE_008BCA:
	REP.b #$20
	STA.b $03
	LDA.w #$00C8
	BRA.b CODE_008C10

CODE_008BD3:
	REP.b #$20
	STA.b $03
	LDA.w #$00C4
	BRA.b CODE_008C10

CODE_008BDC:
	REP.b #$20
	STA.b $03
	LDA.w #$0084
	BRA.b CODE_008C10

CODE_008BE5:
	REP.b #$20
	STA.b $03
	LDA.w #$0044
	BRA.b CODE_008C10

CODE_008BEE:
	REP.b #$20
	STA.b $03
	LDA.w #$00C2
	BRA.b CODE_008C10

CODE_008BF7:
	REP.b #$20
	STA.b $03
	LDA.w #$00C1
	BRA.b CODE_008C10

CODE_008C00:
	REP.b #$20
	STA.b $03
	LDA.w #$0081
	BRA.b CODE_008C10

CODE_008C09:
	REP.b #$20
	STA.b $03
	LDA.w #$0041
CODE_008C10:
	SEP.b #$20
	STA.b $05
	REP.b #$20
	LDA.w #CODE_00B1F3
	JMP.w CODE_008E5A

CODE_008C1C:
	REP.b #$20
	STA.b $03
	LDA.w #$00C8
	BRA.b CODE_008C62

CODE_008C25:
	REP.b #$20
	STA.b $03
	LDA.w #$00C4
	BRA.b CODE_008C62

CODE_008C2E:
	REP.b #$20
	STA.b $03
	LDA.w #$0084
	BRA.b CODE_008C62

CODE_008C37:
	REP.b #$20
	STA.b $03
	LDA.w #$0044
	BRA.b CODE_008C62

CODE_008C40:
	REP.b #$20
	STA.b $03
	LDA.w #$00C2
	BRA.b CODE_008C62

CODE_008C49:
	REP.b #$20
	STA.b $03
	LDA.w #$00C1
	BRA.b CODE_008C62

CODE_008C52:
	REP.b #$20
	STA.b $03
	LDA.w #$0081
	BRA.b CODE_008C62

CODE_008C5B:
	REP.b #$20
	STA.b $03
	LDA.w #$0041
CODE_008C62:
	SEP.b #$20
	STA.b $05
	REP.b #$20
	LDA.w #CODE_00B2D9
	JMP.w CODE_008E5A

CODE_008C6E:
	REP.b #$20
	STA.b $03
	LDA.w #$00C8
	BRA.b CODE_008CB4

CODE_008C77:
	REP.b #$20
	STA.b $03
	LDA.w #$00C4
	BRA.b CODE_008CB4

CODE_008C80:
	REP.b #$20
	STA.b $03
	LDA.w #$0084
	BRA.b CODE_008CB4

CODE_008C89:
	REP.b #$20
	STA.b $03
	LDA.w #$0044
	BRA.b CODE_008CB4

CODE_008C92:
	REP.b #$20
	STA.b $03
	LDA.w #$00C2
	BRA.b CODE_008CB4

CODE_008C9B:
	REP.b #$20
	STA.b $03
	LDA.w #$00C1
	BRA.b CODE_008CB4

CODE_008CA4:
	REP.b #$20
	STA.b $03
	LDA.w #$0081
	BRA.b CODE_008CB4

CODE_008CAD:
	REP.b #$20
	STA.b $03
	LDA.w #$0041
CODE_008CB4:
	SEP.b #$20
	STA.b $05
	REP.b #$20
	LDA.w #CODE_00B3CB
	JMP.w CODE_008E5A

CODE_008CC0:
	REP.b #$20
	STA.b $03
	LDA.w #$00C8
	BRA.b CODE_008D06

CODE_008CC9:
	REP.b #$20
	STA.b $03
	LDA.w #$00C4
	BRA.b CODE_008D06

CODE_008CD2:
	REP.b #$20
	STA.b $03
	LDA.w #$0084
	BRA.b CODE_008D06

CODE_008CDB:
	REP.b #$20
	STA.b $03
	LDA.w #$0044
	BRA.b CODE_008D06

CODE_008CE4:
	REP.b #$20
	STA.b $03
	LDA.w #$00C2
	BRA.b CODE_008D06

CODE_008CED:
	REP.b #$20
	STA.b $03
	LDA.w #$00C1
	BRA.b CODE_008D06

CODE_008CF6:
	REP.b #$20
	STA.b $03
	LDA.w #$0081
	BRA.b CODE_008D06

CODE_008CFF:
	REP.b #$20
	STA.b $03
	LDA.w #$0041
CODE_008D06:
	SEP.b #$20
	STA.b $05
	REP.b #$20
	LDA.w #CODE_00B4BC
	JMP.w CODE_008E5A

CODE_008D12:
	REP.b #$20
	STA.b $03
	LDA.w #$00C8
	BRA.b CODE_008D58

CODE_008D1B:
	REP.b #$20
	STA.b $03
	LDA.w #$00C4
	BRA.b CODE_008D58

CODE_008D24:
	REP.b #$20
	STA.b $03
	LDA.w #$0084
	BRA.b CODE_008D58

CODE_008D2D:
	REP.b #$20
	STA.b $03
	LDA.w #$0044
	BRA.b CODE_008D58

CODE_008D36:
	REP.b #$20
	STA.b $03
	LDA.w #$00C2
	BRA.b CODE_008D58

CODE_008D3F:
	REP.b #$20
	STA.b $03
	LDA.w #$00C1
	BRA.b CODE_008D58

CODE_008D48:
	REP.b #$20
	STA.b $03
	LDA.w #$0081
	BRA.b CODE_008D58

CODE_008D51:
	REP.b #$20
	STA.b $03
	LDA.w #$0041
CODE_008D58:
	SEP.b #$20
	STA.b $05
	REP.b #$20
	LDA.w #CODE_00B598
	JMP.w CODE_008E5A

CODE_008D64:
	REP.b #$20
	STA.b $03
	LDA.w #$00C8
	BRA.b CODE_008DAA

CODE_008D6D:
	REP.b #$20
	STA.b $03
	LDA.w #$00C4
	BRA.b CODE_008DAA

CODE_008D76:
	REP.b #$20
	STA.b $03
	LDA.w #$0084
	BRA.b CODE_008DAA

CODE_008D7F:
	REP.b #$20
	STA.b $03
	LDA.w #$0044
	BRA.b CODE_008DAA

CODE_008D88:
	REP.b #$20
	STA.b $03
	LDA.w #$00C2
	BRA.b CODE_008DAA

CODE_008D91:
	REP.b #$20
	STA.b $03
	LDA.w #$00C1
	BRA.b CODE_008DAA

CODE_008D9A:
	REP.b #$20
	STA.b $03
	LDA.w #$0081
	BRA.b CODE_008DAA

CODE_008DA3:
	REP.b #$20
	STA.b $03
	LDA.w #$0041
CODE_008DAA:
	SEP.b #$20
	STA.b $05
	REP.b #$20
	LDA.w #CODE_00B659
	JMP.w CODE_008E5A

CODE_008DB6:
	REP.b #$20
	STA.b $03
	LDA.w #$00C8
	BRA.b CODE_008DFC

CODE_008DBF:
	REP.b #$20
	STA.b $03
	LDA.w #$00C4
	BRA.b CODE_008DFC

CODE_008DC8:
	REP.b #$20
	STA.b $03
	LDA.w #$0084
	BRA.b CODE_008DFC

CODE_008DD1:
	REP.b #$20
	STA.b $03
	LDA.w #$0044
	BRA.b CODE_008DFC

CODE_008DDA:
	REP.b #$20
	STA.b $03
	LDA.w #$00C2
	BRA.b CODE_008DFC

CODE_008DE3:
	REP.b #$20
	STA.b $03
	LDA.w #$00C1
	BRA.b CODE_008DFC

CODE_008DEC:
	REP.b #$20
	STA.b $03
	LDA.w #$0081
	BRA.b CODE_008DFC

CODE_008DF5:
	REP.b #$20
	STA.b $03
	LDA.w #$0041
CODE_008DFC:
	SEP.b #$20
	STA.b $05
	REP.b #$20
	LDA.w #CODE_00B74B
	JMP.w CODE_008E5A

CODE_008E08:
	REP.b #$20
	STA.b $03
	LDA.w #$00C8
	BRA.b CODE_008E4E

CODE_008E11:
	REP.b #$20
	STA.b $03
	LDA.w #$00C4
	BRA.b CODE_008E4E

CODE_008E1A:
	REP.b #$20
	STA.b $03
	LDA.w #$0084
	BRA.b CODE_008E4E

CODE_008E23:
	REP.b #$20
	STA.b $03
	LDA.w #$0044
	BRA.b CODE_008E4E

CODE_008E2C:
	REP.b #$20
	STA.b $03
	LDA.w #$00C2
	BRA.b CODE_008E4E

CODE_008E35:
	REP.b #$20
	STA.b $03
	LDA.w #$00C1
	BRA.b CODE_008E4E

CODE_008E3E:
	REP.b #$20
	STA.b $03
	LDA.w #$0081
	BRA.b CODE_008E4E

CODE_008E47:
	REP.b #$20
	STA.b $03
	LDA.w #$0041
CODE_008E4E:
	SEP.b #$20
	STA.b $05
	REP.b #$20
	LDA.w #CODE_00B83F
	JMP.w CODE_008E5A

CODE_008E5A:
	REP.b #$30
	STA.w $0217
	STX.b $0A
	STY.b $0C
	LDA.b $03
	BNE.b CODE_008E68
	RTL

CODE_008E68:
	EOR.w #$FFFF
	INC
	ASL
	PHP
	ROR
	PLP
	ROR
	STA.b $06
	STZ.b $08
CODE_008E75:
	REP.b #$30
	LDA.b $0A
	SEC
	SBC.b $03
	TAX
	LDA.b $0A
	CLC
	ADC.b $03
	TAY
	SEP.b #$20
	LDA.b $05
	AND.b #$3F
	CMP.b #$01
	BEQ.b CODE_008E99
	CMP.b #$02
	BEQ.b CODE_008EA1
	CMP.b #$04
	BEQ.b CODE_008EAE
	CMP.b #$08
	BEQ.b CODE_008EC0
CODE_008E99:
	REP.b #$20
	LDA.b $08
	STA.b $0E
	BRA.b CODE_008ED5

CODE_008EA1:
	REP.b #$20
	LDA.b $08
	ASL
	PHP
	ROR
	PLP
	ROR
	STA.b $0E
	BRA.b CODE_008ED5

CODE_008EAE:
	REP.b #$20
	LDA.b $08
	ASL
	PHP
	ROR
	PLP
	ROR
	ASL
	PHP
	ROR
	PLP
	ROR
	STA.b $0E
	BRA.b CODE_008ED5

CODE_008EC0:
	REP.b #$20
	LDA.b $08
	ASL
	PHP
	ROR
	PLP
	ROR
	ASL
	PHP
	ROR
	PLP
	ROR
	ASL
	PHP
	ROR
	PLP
	ROR
	STA.b $0E
CODE_008ED5:
	SEP.b #$20
	LDA.b $05
	BIT.b #$80
	BEQ.b CODE_008EF0
	REP.b #$20
	LDA.b $0C
	SEC
	SBC.b $0E
	BCC.b CODE_008EF0
	PHX
	PHY
	JSL.l ($000216&$00FFFF)|(!CurrentBank<<16)
	REP.b #$30
	PLY
	PLX
CODE_008EF0:
	SEP.b #$20
	LDA.b $05
	BIT.b #$40
	BEQ.b CODE_008F0F
	REP.b #$20
	LDA.b $0C
	CLC
	ADC.b $0E
	DEC
	CMP.w #$0070
	BCS.b CODE_008F0F
	PHX
	PHY
	JSL.l ($000216&$00FFFF)|(!CurrentBank<<16)
	REP.b #$30
	PLY
	PLX
CODE_008F0F:
	SEP.b #$30
	LDA.b $05
	AND.b #$3F
	TAX
CODE_008F16:
	REP.b #$20
	LDA.b $06
	BMI.b CODE_008F28
	DEC.b $03
	BMI.b CODE_008F27
	SEC
	SBC.b $03
	STA.b $06
	BRA.b CODE_008F16

CODE_008F27:
	RTL

CODE_008F28:
	INC.b $08
	LDA.b $08
	CLC
	ADC.b $06
	STA.b $06
	DEX
	BNE.b CODE_008F16
	BRL.w CODE_008E75

CODE_008F37:
	REP.b #$20
	STA.b $03
	LDA.w #$00C0
	BRA.b CODE_008F50

CODE_008F40:
	REP.b #$20
	STA.b $03
	LDA.w #$0080
	BRA.b CODE_008F50

CODE_008F49:
	REP.b #$20
	STA.b $03
	LDA.w #$0040
CODE_008F50:
	SEP.b #$20
	STA.b $05
	REP.b #$20
	LDA.w #CODE_00AAF7
	JMP.w CODE_009187

CODE_008F5C:
	REP.b #$20
	STA.b $03
	LDA.w #$00C0
	BRA.b CODE_008F75

CODE_008F65:
	REP.b #$20
	STA.b $03
	LDA.w #$0080
	BRA.b CODE_008F75

CODE_008F6E:
	REP.b #$20
	STA.b $03
	LDA.w #$0040
CODE_008F75:
	SEP.b #$20
	STA.b $05
	REP.b #$20
	LDA.w #CODE_00ABAA
	JMP.w CODE_009187

CODE_008F81:
	REP.b #$20
	STA.b $03
	LDA.w #$00C0
	BRA.b CODE_008F9A

CODE_008F8A:
	REP.b #$20
	STA.b $03
	LDA.w #$0080
	BRA.b CODE_008F9A

CODE_008F93:
	REP.b #$20
	STA.b $03
	LDA.w #$0040
CODE_008F9A:
	SEP.b #$20
	STA.b $05
	REP.b #$20
	LDA.w #CODE_00AC9C
	JMP.w CODE_009187

CODE_008FA6:
	REP.b #$20
	STA.b $03
	LDA.w #$00C0
	BRA.b CODE_008FBF

CODE_008FAF:
	REP.b #$20
	STA.b $03
	LDA.w #$0080
	BRA.b CODE_008FBF

CODE_008FB8:
	REP.b #$20
	STA.b $03
	LDA.w #$0040
CODE_008FBF:
	SEP.b #$20
	STA.b $05
	REP.b #$20
	LDA.w #CODE_00AD90
	JMP.w CODE_009187

CODE_008FCB:
	REP.b #$20
	STA.b $03
	LDA.w #$00C0
	BRA.b CODE_008FE4

CODE_008FD4:
	REP.b #$20
	STA.b $03
	LDA.w #$0080
	BRA.b CODE_008FE4

CODE_008FDD:
	REP.b #$20
	STA.b $03
	LDA.w #$0040
CODE_008FE4:
	SEP.b #$20
	STA.b $05
	REP.b #$20
	LDA.w #CODE_00AE48
	JMP.w CODE_009187

CODE_008FF0:
	REP.b #$20
	STA.b $03
	LDA.w #$00C0
	BRA.b CODE_009009

CODE_008FF9:
	REP.b #$20
	STA.b $03
	LDA.w #$0080
	BRA.b CODE_009009

CODE_009002:
	REP.b #$20
	STA.b $03
	LDA.w #$0040
CODE_009009:
	SEP.b #$20
	STA.b $05
	REP.b #$20
	LDA.w #CODE_00AF30
	JMP.w CODE_009187

CODE_009015:
	REP.b #$20
	STA.b $03
	LDA.w #$00C0
	BRA.b CODE_00902E

CODE_00901E:
	REP.b #$20
	STA.b $03
	LDA.w #$0080
	BRA.b CODE_00902E

CODE_009027:
	REP.b #$20
	STA.b $03
	LDA.w #$0040
CODE_00902E:
	SEP.b #$20
	STA.b $05
	REP.b #$20
	LDA.w #CODE_00B01F
	JMP.w CODE_009187

CODE_00903A:
	REP.b #$20
	STA.b $03
	LDA.w #$00C0
	BRA.b CODE_009053

CODE_009043:
	REP.b #$20
	STA.b $03
	LDA.w #$0080
	BRA.b CODE_009053

CODE_00904C:
	REP.b #$20
	STA.b $03
	LDA.w #$0040
CODE_009053:
	SEP.b #$20
	STA.b $05
	REP.b #$20
	LDA.w #CODE_00B113
	JMP.w CODE_009187

CODE_00905F:
	REP.b #$20
	STA.b $03
	LDA.w #$00C0
	BRA.b CODE_009078

CODE_009068:
	REP.b #$20
	STA.b $03
	LDA.w #$0080
	BRA.b CODE_009078

CODE_009071:
	REP.b #$20
	STA.b $03
	LDA.w #$0040
CODE_009078:
	SEP.b #$20
	STA.b $05
	REP.b #$20
	LDA.w #CODE_00B1F3
	JMP.w CODE_009187

CODE_009084:
	REP.b #$20
	STA.b $03
	LDA.w #$00C0
	BRA.b CODE_00909D

CODE_00908D:
	REP.b #$20
	STA.b $03
	LDA.w #$0080
	BRA.b CODE_00909D

CODE_009096:
	REP.b #$20
	STA.b $03
	LDA.w #$0040
CODE_00909D:
	SEP.b #$20
	STA.b $05
	REP.b #$20
	LDA.w #CODE_00B2D9
	JMP.w CODE_009187

CODE_0090A9:
	REP.b #$20
	STA.b $03
	LDA.w #$00C0
	BRA.b CODE_0090C2

CODE_0090B2:
	REP.b #$20
	STA.b $03
	LDA.w #$0080
	BRA.b CODE_0090C2

CODE_0090BB:
	REP.b #$20
	STA.b $03
	LDA.w #$0040
CODE_0090C2:
	SEP.b #$20
	STA.b $05
	REP.b #$20
	LDA.w #CODE_00B3CB
	JMP.w CODE_009187

CODE_0090CE:
	REP.b #$20
	STA.b $03
	LDA.w #$00C0
	BRA.b CODE_0090E7

CODE_0090D7:
	REP.b #$20
	STA.b $03
	LDA.w #$0080
	BRA.b CODE_0090E7

CODE_0090E0:
	REP.b #$20
	STA.b $03
	LDA.w #$0040
CODE_0090E7:
	SEP.b #$20
	STA.b $05
	REP.b #$20
	LDA.w #CODE_00B4BC
	JMP.w CODE_009187

CODE_0090F3:
	REP.b #$20
	STA.b $03
	LDA.w #$00C0
	BRA.b CODE_00910C

CODE_0090FC:
	REP.b #$20
	STA.b $03
	LDA.w #$0080
	BRA.b CODE_00910C

CODE_009105:
	REP.b #$20
	STA.b $03
	LDA.w #$0040
CODE_00910C:
	SEP.b #$20
	STA.b $05
	REP.b #$20
	LDA.w #CODE_00B598
	JMP.w CODE_009187

CODE_009118:
	REP.b #$20
	STA.b $03
	LDA.w #$00C0
	BRA.b CODE_009131

CODE_009121:
	REP.b #$20
	STA.b $03
	LDA.w #$0080
	BRA.b CODE_009131

CODE_00912A:
	REP.b #$20
	STA.b $03
	LDA.w #$0040
CODE_009131:
	SEP.b #$20
	STA.b $05
	REP.b #$20
	LDA.w #CODE_00B659
	JMP.w CODE_009187

CODE_00913D:
	REP.b #$20
	STA.b $03
	LDA.w #$00C0
	BRA.b CODE_009156

CODE_009146:
	REP.b #$20
	STA.b $03
	LDA.w #$0080
	BRA.b CODE_009156

CODE_00914F:
	REP.b #$20
	STA.b $03
	LDA.w #$0040
CODE_009156:
	SEP.b #$20
	STA.b $05
	REP.b #$20
	LDA.w #CODE_00B74B
	JMP.w CODE_009187

CODE_009162:
	REP.b #$20
	STA.b $03
	LDA.w #$00C0
	BRA.b CODE_00917B

CODE_00916B:
	REP.b #$20
	STA.b $03
	LDA.w #$0080
	BRA.b CODE_00917B

CODE_009174:
	REP.b #$20
	STA.b $03
	LDA.w #$0040
CODE_00917B:
	SEP.b #$20
	STA.b $05
	REP.b #$20
	LDA.w #CODE_00B83F
	JMP.w CODE_009187

CODE_009187:
	REP.b #$30
	STA.w $0217
	STX.b $0A
	STY.b $0C
	LDA.b $03
	BNE.b CODE_009195
	RTL

CODE_009195:
	EOR.w #$FFFF
	INC
	ASL
	PHP
	ROR
	PLP
	ROR
	STA.b $06
	STZ.b $08
CODE_0091A2:
	REP.b #$30
	LDA.b $0A
	SEC
	SBC.b $03
	TAX
	LDA.b $0A
	CLC
	ADC.b $03
	TAY
	LDA.b $08
	STA.b $0E
	SEP.b #$20
	LDA.b $05
	BIT.b #$80
	BEQ.b CODE_0091CF
	REP.b #$20
	LDA.b $0C
	SEC
	SBC.b $0E
	BCC.b CODE_0091CF
	PHX
	PHY
	JSL.l ($000216&$00FFFF)|(!CurrentBank<<16)
	REP.b #$30
	PLY
	PLX
CODE_0091CF:
	SEP.b #$20
	LDA.b $05
	BIT.b #$40
	BEQ.b CODE_0091EE
	REP.b #$20
	LDA.b $0C
	CLC
	ADC.b $0E
	DEC
	CMP.w #$0070
	BCS.b CODE_0091EE
	PHX
	PHY
	JSL.l ($000216&$00FFFF)|(!CurrentBank<<16)
	REP.b #$30
	PLY
	PLX
CODE_0091EE:
	REP.b #$20
	DEC.b $03
	BPL.b CODE_0091F5
	RTL

CODE_0091F5:
	INC.b $08
	BRL.w CODE_0091A2

CODE_0091FA:
	SEP.b #$20
	CMP.w $0279
	BEQ.b CODE_009213
	STA.w $0279
CODE_009204:
	LDA.w $027D
	BNE.b CODE_009204
	LDA.b #$03
	STA.w $027D
CODE_00920E:
	CMP.w $027D
	BEQ.b CODE_00920E
CODE_009213:
	RTL

CODE_009214:
	SEP.b #$20
	CMP.w $027A
	BEQ.b CODE_00922D
	STA.w $027A
CODE_00921E:
	LDA.w $027E
	BNE.b CODE_00921E
	LDA.b #$03
	STA.w $027E
CODE_009228:
	CMP.w $027E
	BEQ.b CODE_009228
CODE_00922D:
	RTL

CODE_00922E:
	SEP.b #$20
CODE_009230:
	LDA.w $027D
	BNE.b CODE_009230
	LDA.w $027E
	BNE.b CODE_009230
	RTL

CODE_00923B:
	SEP.b #$20
	CMP.b #$00
	BNE.b CODE_00925B
CODE_009241:
	LDA.w $027D
	BNE.b CODE_009241
	LDA.w $027B
	BEQ.b CODE_009253
	REP.b #$20
	LDA.w #$244E
	STA.b $4A
	RTL

CODE_009253:
	REP.b #$20
	LDA.w #$43CE
	STA.b $4A
	RTL

CODE_00925B:
	SEP.b #$20
	CMP.b #$01
	BNE.b CODE_00927B
CODE_009261:
	LDA.w $027E
	BNE.b CODE_009261
	LDA.w $027C
	BEQ.b CODE_009273
	REP.b #$20
	LDA.w #$634E
	STA.b $4A
	RTL

CODE_009273:
	REP.b #$20
	LDA.w #$82CE
	STA.b $4A
	RTL

CODE_00927B:
	RTL

CODE_00927C:
	SEP.b #$20
	CMP.b #$00
	BNE.b CODE_009288
	LDA.b #$02
	STA.w $027D
	RTL

CODE_009288:
	CMP.b #$01
	BNE.b CODE_009292
	LDA.b #$02
	STA.w $027E
	RTL

CODE_009292:
	RTL

CODE_009293:
	REP.b #$30
	STX.b $4A
	LDX.w #$00FC
	LDY.w #$0000
CODE_00929D:
	STA.b [$4A],y
	INY
	INY
	STA.b [$4A],y
	INY
	INY
	STA.b [$4A],y
	INY
	INY
	STA.b [$4A],y
	INY
	INY
	STA.b [$4A],y
	INY
	INY
	STA.b [$4A],y
	INY
	INY
	STA.b [$4A],y
	INY
	INY
	STA.b [$4A],y
	INY
	INY
	STA.b [$4A],y
	INY
	INY
	STA.b [$4A],y
	INY
	INY
	STA.b [$4A],y
	INY
	INY
	STA.b [$4A],y
	INY
	INY
	STA.b [$4A],y
	INY
	INY
	STA.b [$4A],y
	INY
	INY
	STA.b [$4A],y
	INY
	INY
	STA.b [$4A],y
	INY
	INY
	DEX
	BNE.b CODE_00929D
	RTS

CODE_0092E1:
	REP.b #$30
CODE_0092E3:
	LDA.w #$0070
	BIT.w $027F
	BNE.b CODE_0092E3
	BIT.w $0287
	BNE.b CODE_0092E3
	BIT.w $028F
	BNE.b CODE_0092E3
	BIT.w $0297
	BNE.b CODE_0092E3
	BIT.w $029F
	BNE.b CODE_0092E3
	BIT.w $02A7
	BNE.b CODE_0092E3
	BIT.w $02AF
	BNE.b CODE_0092E3
	BIT.w $02B7
	BNE.b CODE_0092E3
	BIT.w $02BF
	BNE.b CODE_0092E3
	BIT.w $02C7
	BNE.b CODE_0092E3
	BIT.w $02CF
	BNE.b CODE_0092E3
	BIT.w $02D7
	BNE.b CODE_0092E3
	BIT.w $02DF
	BNE.b CODE_0092E3
	BIT.w $02E7
	BNE.b CODE_0092E3
	BIT.w $02EF
	BNE.b CODE_0092E3
	BIT.w $02F7
	BNE.b CODE_0092E3
	RTL

CODE_009337:
	REP.b #$30
	PHA
	PHX
	PHY
CODE_00933C:
	LDY.w #$0000
	LDX.w #$0010
CODE_009342:
	LDA.w #$0070
	AND.b ($53),y
	BEQ.b CODE_009356
	INY
	INY
	INY
	INY
	INY
	INY
	INY
	INY
	DEX
	BNE.b CODE_009342
	BRA.b CODE_00933C

CODE_009356:
	INY
	INY
	INY
	INY
	INY
	INY
	PLA
	STA.b ($53),y
	DEY
	DEY
	PLA
	STA.b ($53),y
	DEY
	DEY
	PLA
	STA.b ($53),y
	DEY
	DEY
	RTS

CODE_00936C:
	JSR.w CODE_009337
	SEP.b #$20
	LDA.b $04,S
	XBA
	LDA.b $05,S
	ORA.b #$20
	REP.b #$20
	STA.b ($53),y
	RTL

CODE_00937D:
	JSR.w CODE_009337
	SEP.b #$20
	LDA.b $04,S
	XBA
	LDA.b #$10
	REP.b #$20
	STA.b ($53),y
	RTL

CODE_00938C:
	JSR.w CODE_009337
	SEP.b #$20
	LDA.b $04,S
	XBA
	LDA.b #$40
	REP.b #$20
	STA.b ($53),y
	RTL

CODE_00939B:
	SEP.b #$20
	STA.w !REGISTER_Mode7MatrixParameterA
	STZ.w !REGISTER_Mode7MatrixParameterA
	LDA.b #$01
	STA.w !REGISTER_Mode7MatrixParameterB
	LDA.b $04,S
	REP.b #$10
	STX.w DMA[$07].SourceLo
	STY.w DMA[$07].SizeLo
	SEP.b #$20
	STA.w DMA[$07].SourceBank
	LDA.b #!REGISTER_PPUMultiplicationProductLo
	STA.w DMA[$07].Destination
	LDA.b #$80
	STA.w DMA[$07].Parameters
	LDA.b #$80
	STA.w !REGISTER_DMAEnable
	RTL

CODE_0093C7:
	REP.b #$20
	STZ.w $032A
	STZ.w $032C
	STZ.w $032E
	STZ.w $0330
	STZ.w $0332
	STZ.w $0334
	STZ.w $0336
	STZ.w $0338
	STZ.w $033A
	RTL

CODE_0093E5:
	REP.b #$20
	LDA.w #$FFFF
	AND.w $032A
	AND.w $032C
	AND.w $032E
	AND.w $0330
	AND.w $0332
	AND.w $0334
	AND.w $0336
	AND.w $0338
	AND.w $033A
	EOR.w #$FFFF
	BNE.b CODE_00940C
	SEC
	RTL

CODE_00940C:
	CLC
	RTL

CODE_00940E:
	REP.b #$30
	TXA
	CLC
	ADC.w #$0048
	TAX
	TYA
	CLC
	ADC.w #$0048
	TAY
	TXA
	BMI.b CODE_00942A
	STA.b $55
	TYA
	BMI.b CODE_009428
	CMP.b $55
	BCS.b CODE_00942A
CODE_009428:
	TXY
	TAX
CODE_00942A:
	TXA
	BPL.b CODE_009430
	LDX.w #$0000
CODE_009430:
	CPX.w #$0090
	BCS.b CODE_009442
	TYA
	BMI.b CODE_009442
	CPY.w #$0090
	BCC.b CODE_009444
	LDY.w #$008F
	BRA.b CODE_009444

CODE_009442:
	CLC
	RTL

CODE_009444:
	PHX
	TXA
	AND.w #$000F
	ASL
	TAX
	LDA.w DATA_0389A1,x
	STA.w $033C
	TYA
	AND.w #$000F
	ASL
	TAX
	LDA.w DATA_0389C1,x
	STA.w $033E
	PLA
	LSR
	LSR
	LSR
	LSR
	ASL
	TAX
	STX.b $55
	TYA
	LSR
	LSR
	LSR
	LSR
	ASL
	SEC
	SBC.b $55
	LSR
	TAY
	BNE.b CODE_009486
	LDA.w $033C
	AND.w $033E
	STA.w $0340
	AND.w $032A,x
	EOR.w $0340
	BNE.b CODE_0094B2
	CLC
	RTL

CODE_009486:
	PHX
	PHY
	LDA.w $032A,x
	AND.w $033C
	EOR.w $033C
	BNE.b CODE_0094B0
	INX
	INX
	DEY
	BEQ.b CODE_0094A5
CODE_009498:
	LDA.w #$FFFF
	EOR.w $032A,x
	BNE.b CODE_0094B0
	INX
	INX
	DEY
	BNE.b CODE_009498
CODE_0094A5:
	LDA.w $032A,x
	AND.w $033E
	EOR.w $033E
	BEQ.b CODE_0094B4
CODE_0094B0:
	PLY
	PLX
CODE_0094B2:
	SEC
	RTL

CODE_0094B4:
	PLY
	PLX
	CLC
	RTL

CODE_0094B8:
	REP.b #$30
	TXA
	CLC
	ADC.w #$0048
	TAX
	TYA
	CLC
	ADC.w #$0048
	TAY
	TXA
	BMI.b CODE_0094D4
	STA.b $55
	TYA
	BMI.b CODE_0094D2
	CMP.b $55
	BCS.b CODE_0094D4
CODE_0094D2:
	TXY
	TAX
CODE_0094D4:
	DEX
	INY
	JSL.l CODE_00942A
	BCS.b CODE_0094DD
	RTL

CODE_0094DD:
	REP.b #$30
	TYA
	BNE.b CODE_0094ED
	LDA.w $0340
	ORA.w $032A,x
	STA.w $032A,x
	SEC
	RTL

CODE_0094ED:
	LDA.w $033C
	ORA.w $032A,x
	STA.w $032A,x
	INX
	INX
	DEY
	BEQ.b CODE_009506
	LDA.w #$FFFF
CODE_0094FE:
	STA.w $032A,x
	INX
	INX
	DEY
	BNE.b CODE_0094FE
CODE_009506:
	LDA.w $033E
	ORA.w $032A,x
	STA.w $032A,x
	SEC
	RTL

CODE_009511:
	SEP.b #$20
	LDA.b #$80
	STA.w $1339
	STA.w !REGISTER_ScreenDisplayRegister
	JSL.l CODE_00A199
	JSL.l CODE_00C833
	JSL.l CODE_009C39
	REP.b #$20
	LDA.w #$0001
	JSL.l CODE_00C933
	REP.b #$30
	LDA.w #$001F
	STA.w $0B77
	LDA.w #$03E0
	STA.w $0B79
	LDA.w #$7C00
	STA.w $0B7B
	LDA.w #$0020
	LDX.w #$0000
	LDY.w #$0004
	JSL.l CODE_00C8EA
	REP.b #$30
	LDA.w #$0000
	LDX.w #$0020
	JSL.l CODE_009A75
	REP.b #$20
	LDA.w #$0004
	JSL.l CODE_02C90B
	REP.b #$20
	LDA.w #$0010
	JSL.l CODE_00C91F
	SEP.b #$20
CODE_009571:
	LDA.w $1335
	BNE.b CODE_009571
	JML.l CODE_00957A

CODE_00957A:
	REP.b #$20
	LDA.w #$0002
	JSL.l CODE_00C91F
	SEP.b #$20
CODE_009585:
	LDA.w $1335
	BNE.b CODE_009585
	REP.b #$20
	STZ.w $03A1
	JSL.l CODE_02C8FF
	JSL.l CODE_02C8D2
	JSL.l CODE_018038
	REP.b #$20
	LDA.w #!Define_FB2000_Music_AsteroidZone
	JSL.l CODE_02C87E
	JSL.l CODE_02833C
	JSL.l CODE_02C8FF
	JML.l CODE_00C94B

CODE_0095B0:
	REP.b #$30
	LDY.w #$0000
CODE_0095B5:
	LDA.b $51,x
	STA.w $036C,y
	INX
	INY
	CPY.w #$000A
	BNE.b CODE_0095B5
CODE_0095C1:
	LDA.w #$0000
	STA.w $036C,y
	DEY
	BEQ.b CODE_0095D2
	LDA.w $036C,y
	CMP.w #$0021
	BCC.b CODE_0095C1
CODE_0095D2:
	INY
	RTL

CODE_0095D4:
	BRA.b CODE_0095D4

CODE_0095D6:
	RTL

CODE_0095D7:
	REP.b #$30
	ASL
	TAX
	CPX.w #$0002
	BEQ.b CODE_0095F8
	LDA.w $12A2
	CMP.w #$0002
	BEQ.b CODE_0095F0
	LDA.w #$7E40
	STA.w $1F5B
	BRA.b CODE_0095FE

CODE_0095F0:
	LDA.w #$7D60
	STA.w $1F5B
	BRA.b CODE_0095FE

CODE_0095F8:
	LDA.w #$7F20
	STA.w $1F5B
CODE_0095FE:
	LDA.w $0397
	CMP.w #$FFFF
	BEQ.b CODE_009635
	CMP.w $039B,x
	BEQ.b CODE_009654
	STA.w $039B,x
	TAY
	LDA.w $0006,y
	AND.w #$00FF
	ASL
	PHA
	LDA.w #DATA_03982C
	LDX.w #$0000
	LDY.w #$0001
	JSL.l CODE_00CCE3
	REP.b #$30
	PLX
	LDA.w DATA_03AD16,x
	LDX.w #$0000
	LDY.w #$0001
	JSL.l CODE_00CCE3
	RTS

CODE_009635:
	REP.b #$30
	LDA.w $0395
	CMP.w #$FFFF
	BNE.b CODE_009655
	CMP.w $039B,x
	BEQ.b CODE_009654
	STA.w $039B,x
	LDA.w #DATA_03982C
	LDX.w #$0000
	LDY.w #$0003
	JSL.l CODE_00CCE3
CODE_009654:
	RTS

CODE_009655:
	CMP.w $039B,x
	BEQ.b CODE_009680
	STA.w $039B,x
	TAX
	JSL.l CODE_0095B0
	REP.b #$30
	LDA.w #DATA_03982C
	LDX.w #$0000
	LDY.w #$0003
	JSL.l CODE_00CCE3
	REP.b #$30
	LDA.w #$036C
	LDX.w #$0000
	LDY.w #$0003
	JSL.l CODE_00CCE3
CODE_009680:
	RTS

CODE_009681:
	REP.b #$20
	LDA.w #$FFFF
	STA.w $0395
	STA.w $0399
	STA.w $0397
	RTS

CODE_009690:
	LDA.w #$8000
	STA.w $039B
	STA.w $039D
	RTS

CODE_00969A:
	REP.b #$30
	LDA.b $13,x
	CMP.w $0399
	BCS.b CODE_0096A9
	STA.w $0399
	STX.w $0395
CODE_0096A9:
	RTL

CODE_0096AA:
	REP.b #$10
	STX.w $0397
	RTL

CODE_0096B0:
	SEP.b #$20
	LDA.w $1336
	BEQ.b CODE_0096C7
	LDA.w $1335
	CMP.b #$FF
	BEQ.b CODE_0096C7
	REP.b #$20
	LDA.w #$0002
	JSL.l CODE_00C91F
CODE_0096C7:
	SEP.b #$20
CODE_0096C9:
	LDA.w $1335
	BNE.b CODE_0096C9
	JSL.l CODE_019A4E
	JSL.l CODE_01A974
	JSL.l CODE_02A579
	REP.b #$20
	LDA.w #$FFFF
	STA.w $034C
	STZ.w $034E
	STZ.w !RAM_FB2000_Level_MasterDeathTimerLo
	STZ.w $034A
	REP.b #$20
	LDA.w #$0100
	STA.w $0342
	REP.b #$20
	LDA.w #$0000
	JSL.l CODE_00C6C5
	REP.b #$20
	LDA.w #$0001
	STA.w $12A2
	STZ.w $0300
	REP.b #$30
	LDA.w #!Define_FB2000_Smiloid_Turkey
	LDX.w #!RAM_FB2000_Level_Smiloids_SpriteTableStart
	JSL.l CODE_0284A4
	REP.b #$10
	LDX.w #!RAM_FB2000_Level_Smiloids_SpriteTableStart
	JSL.l CODE_019B05
	REP.b #$30
	LDA.w #$0100
	ORA.w $0B9A
	STA.w $0B9A
	REP.b #$30
	LDA.w #!Define_FB2000_Smiloid_Rover
	LDX.w #$0C0A
	JSL.l CODE_0284A4
	REP.b #$10
	LDX.w #$0C0A
	JSL.l CODE_019B05
	REP.b #$30
	LDA.w #$0100
	ORA.w $0C0A
	STA.w $0C0A
	REP.b #$30
	LDA.w #!Define_FB2000_Smiloid_Ninja
	LDX.w #$0C7A
	JSL.l CODE_0284A4
	REP.b #$10
	LDX.w #$0C7A
	JSL.l CODE_019B05
	REP.b #$30
	LDA.w #$0100
	ORA.w $0C7A
	STA.w $0C7A
	JSL.l CODE_00A199
	JSL.l CODE_00A101
	REP.b #$20
	LDA.w #$0002
	JSL.l CODE_00C933
CODE_009778:
	REP.b #$20
	INC.w $034A
	LDA.w $034A
	CMP.w #$0080
	BCC.b CODE_009797
	REP.b #$20
	LDA.w #$0002
	JSL.l CODE_00C91F
	SEP.b #$20
CODE_009790:
	LDA.w $1335
	BNE.b CODE_009790
	CLC
	RTL

CODE_009797:
	JSL.l CODE_01AAA5
	JSR.w CODE_009D03
	JSR.w CODE_00A241
	JSR.w CODE_00A576
	JSL.l CODE_00B8F9
	REP.b #$20
	LDA.w $03C6
	BIT.w #$9080
	BNE.b CODE_009803
	LDA.w $03C8
	BIT.w #$9080
	BNE.b CODE_009803
	JSR.w CODE_00A542
	REP.b #$20
	LDA.w #$0000
	JSL.l CODE_0091FA
	SEP.b #$20
	LDA.w $0BA6
	EOR.b #$FF
	INC
	REP.b #$30
	AND.w #$00FF
	STA.b $5F
	REP.b #$30
	LDA.w #$0000
	STA.w $039F
	LDA.w $0B9E
	STA.w $1F6F
	LDA.w $0BA1
	STA.w $1F71
	SEP.b #$20
	LDA.w $0BA6
	STA.w $1F73
	JSL.l CODE_01ADC9
	LDX.w #!RAM_FB2000_Level_Smiloids_SpriteTableStart
	JSL.l CODE_02CEA2
	JSL.l CODE_01AAAE
	BRL.w CODE_009778

CODE_009803:
	REP.b #$20
	LDA.w #$0002
	JSL.l CODE_00C91F
	SEP.b #$20
CODE_00980E:
	LDA.w $1335
	BNE.b CODE_00980E
	SEC
	RTL

CODE_009815:
	REP.b #$30
	PHX
	PHY
	TAY
	LDX.w #$0000
	SEP.b #$20
CODE_00981F:
	LDA.w $0000,y
	STA.w $036C,x
	BEQ.b CODE_009831
	INY
	INX
	CPX.w #$0010
	BCC.b CODE_00981F
	STZ.w $036C,x
CODE_009831:
	PLY
	PLX
	REP.b #$20
	LDA.w #$036C
	JSL.l CODE_00CCE3
	RTL

CODE_00983D:
	REP.b #$30
	PHA
	PHX
	PHY
	TAX
	LDY.w #$0000
CODE_009846:
	SEP.b #$20
	LDA.b $00,x
	BEQ.b CODE_009850
	INX
	INY
	BRA.b CODE_009846

CODE_009850:
	CPY.w #$0005
	BCS.b CODE_00985D
	LDA.b #$20
	STA.b $00,x
	INY
	INX
	BRA.b CODE_009850

CODE_00985D:
	STZ.b $00,x
	REP.b #$30
	PLY
	PLX
	PLA
	JSL.l CODE_00CCC9
	RTL

CODE_009869:
	REP.b #$20
	LDA.w #$7EA24E
	STA.b $63
	SEP.b #$20
	LDA.b #$7EA24E>>16
	STA.b $65
	REP.b #$30
	LDY.w #$0000
	LDA.w $0BC6
	STA.b [$63],y
	LDY.w #$0008
	LDA.w $0BC8
	STA.b [$63],y
	LDY.w #$000C
	LDA.w $0BB4
	STA.b [$63],y
	REP.b #$30
	LDY.w #$0002
	LDA.w $0C36
	STA.b [$63],y
	LDY.w #$000A
	LDA.w $0C38
	STA.b [$63],y
	LDY.w #$000E
	LDA.w $0C24
	STA.b [$63],y
	SEP.b #$20
	REP.b #$10
	LDY.w #$001A
	LDX.w #$000A
CODE_0098B4:
	LDA.w $0BEB,x
	STA.b [$63],y
	DEY
	DEX
	BPL.b CODE_0098B4
	SEP.b #$20
	REP.b #$10
	LDY.w #$0025
	LDX.w #$000A
CODE_0098C7:
	LDA.w $0C5B,x
	STA.b [$63],y
	DEY
	DEX
	BPL.b CODE_0098C7
	REP.b #$30
	LDY.w #$0026
	LDA.w $0342
	STA.b [$63],y
	LDY.w #$0028
	LDA.w $0346
	STA.b [$63],y
	LDY.w #$002A
	LDA.w $12A2
	STA.b [$63],y
	LDY.w #$002C
	LDA.w $0348
	STA.b [$63],y
	LDY.w #$002E
	LDA.w $133A
	STA.b [$63],y
	LDY.w #$0030
	LDA.w $133C
	STA.b [$63],y
	LDY.w #$0032
	LDA.w $133E
	STA.b [$63],y
	LDY.w #$0034
	LDA.w $1340
	STA.b [$63],y
	RTL

CODE_009913:
	REP.b #$20
	LDA.w $1C93
	BIT.w #$0001
	BNE.b CODE_009924
	LDA.w #$0001
	STA.w $12A2
	RTL

CODE_009924:
	REP.b #$20
	LDA.w #$7EA24E
	STA.b $63
	SEP.b #$20
	LDA.b #$7EA24E>>16
	STA.b $65
	REP.b #$30
	LDY.w #$002A
	LDA.b [$63],y
	STA.w $12A2
	RTL

CODE_00993C:
	REP.b #$20
	LDA.w $1C93
	BIT.w #$0001
	BNE.b CODE_009947
	RTL

CODE_009947:
	REP.b #$20
	LDA.w #$7EA24E
	STA.b $63
	SEP.b #$20
	LDA.b #$7EA24E>>16
	STA.b $65
	REP.b #$30
	LDY.w #$0000
	LDA.b [$63],y
	STA.w $0BC6
	LDY.w #$0008
	LDA.b [$63],y
	STA.w $0BC8
	LDY.w #$000C
	LDA.b [$63],y
	STA.w $0BB4
	REP.b #$30
	LDY.w #$0002
	LDA.b [$63],y
	STA.w $0C36
	LDY.w #$000A
	LDA.b [$63],y
	STA.w $0C38
	LDY.w #$000E
	LDA.b [$63],y
	STA.w $0C24
	SEP.b #$20
	REP.b #$10
	LDY.w #$001A
	LDX.w #$000A
CODE_009992:
	LDA.b [$63],y
	STA.w $0BEB,x
	DEY
	DEX
	BPL.b CODE_009992
	SEP.b #$20
	REP.b #$10
	LDY.w #$0025
	LDX.w #$000A
CODE_0099A5:
	LDA.b [$63],y
	STA.w $0C5B,x
	DEY
	DEX
	BPL.b CODE_0099A5
	REP.b #$30
	LDY.w #$0026
	LDA.b [$63],y
	STA.w $0342
	LDY.w #$0028
	LDA.b [$63],y
	STA.w $0346
	LDY.w #$002C
	LDA.b [$63],y
	STA.w $0348
	LDY.w #$002E
	LDA.b [$63],y
	STA.w $133A
	LDY.w #$0030
	LDA.b [$63],y
	STA.w $133C
	LDY.w #$0032
	LDA.b [$63],y
	STA.w $133E
	LDY.w #$0034
	LDA.b [$63],y
	STA.w $1340
	RTL

CODE_0099E9:
	REP.b #$30
	LSR
	LSR
	LSR
	LSR
	AND.w #$000E
	TAX
	LDA.w DATA_039837,x
	STA.b $66
	SEP.b #$20
	LDA.b #DATA_038F03>>16
	STA.b $68
	REP.b #$30
	LDX.w #$0008
	LDY.w #$0008
	LDA.w #$0000
	JSL.l CODE_00AA4C
	RTS

CODE_009A0E:
	REP.b #$20
	LDA.w $0B9E
	AND.w #$FF00
	XBA
	TAX
	LDA.w $0BA1
	AND.w #$FF00
	XBA
	TAY
	REP.b #$30
	LDA.w #$0000
	PHX
	TYA
	XBA
	LSR
	LSR
	LSR
	CLC
	ADC.b $01,S
	ADC.b $01,S
	TAX
	PLA
	REP.b #$20
	LDA.w #$0010
	ORA.w $0415,x
	STA.w $0415,x
	REP.b #$20
	LDA.w $12A2
	CMP.w #$0001
	BEQ.b CODE_009A74
	LDA.w $0C0E
	AND.w #$FF00
	XBA
	TAX
	LDA.w $0C11
	AND.w #$FF00
	XBA
	TAY
	REP.b #$30
	LDA.w #$0000
	PHX
	TYA
	XBA
	LSR
	LSR
	LSR
	CLC
	ADC.b $01,S
	ADC.b $01,S
	TAX
	PLA
	REP.b #$20
	LDA.w #$0010
	ORA.w $0415,x
	STA.w $0415,x
CODE_009A74:
	RTS

CODE_009A75:
	REP.b #$30
	PHA
CODE_009A78:
	PHX
	LDA.w $1C91
CODE_009A7C:
	CMP.w $1C91
	BEQ.b CODE_009A7C
	JSL.l CODE_00B8F9
	REP.b #$30
	PLX
	LDA.w $03C6
	AND.b $01,S
	BNE.b CODE_009A99
	LDA.w $03C8
	AND.b $01,S
	BNE.b CODE_009A99
	DEX
	BNE.b CODE_009A78
CODE_009A99:
	PLA
	RTL

CODE_009A9B:
	REP.b #$20
	LDA.w $0BD1
	BNE.b CODE_009AAF
	LDA.w $12A2
	CMP.w #$0001
	BEQ.b CODE_009AB0
	LDA.w $0C41
	BEQ.b CODE_009AB0
CODE_009AAF:
	RTS

CODE_009AB0:
	LDA.w #$0200
	BIT.w $0342
	BNE.b CODE_009AC8
	ORA.w $0342
	STA.w $0342
	LDA.w #$0258
	STA.w $038F
	JSL.l CODE_02C8BA
CODE_009AC8:
	RTS

CODE_009AC9:
	REP.b #$30
	LDA.b $37,x
	BEQ.b CODE_009AE2
	LDA.w #$0020
	ORA.b $02,x
	STA.b $02,x
	DEC.b $37,x
	BNE.b CODE_009AE2
	PHX
	JSL.l CODE_02D1D2
	REP.b #$10
	PLX
CODE_009AE2:
	RTS

CODE_009AE3:
	REP.b #$30
	LDA.w #$FFFF
	STA.w $034C
	LDA.w #$0001
	ORA.w $0BF6
	STA.w $0BF6
	LDA.w #$FFF7
	AND.w $0BF6
	STA.w $0BF6
	LDA.w #$0001
	CLC
	ADC.w $03CE
	STA.w $03D0
	REP.b #$20
	LDA.w #$0002
	JSL.l CODE_00C91F
	SEP.b #$20
CODE_009B12:
	LDA.w $1335
	BNE.b CODE_009B12
	RTS

CODE_009B18:
	REP.b #$20
	LDA.w !RAM_FB2000_Level_MasterDeathTimerLo
	BNE.b CODE_009B58
	LDA.w $0342
	BIT.w #$0200
	BNE.b CODE_009B58
	BIT.w #$0400
	BEQ.b CODE_009B31
	BIT.w #$0800
	BEQ.b CODE_009B58
CODE_009B31:
	LDA.w #$0007
	AND.w $034A
	BNE.b CODE_009B58
	LDA.w #$0002
	ORA.w $0B9C
	STA.w $0B9C
	LDA.w $12A2
	CMP.w #$0002
	BNE.b CODE_009B53
	LDA.w #$0002
	ORA.w $0C0C
	STA.w $0C0C
CODE_009B53:
	DEC.w $0344
	BEQ.b CODE_009B59
CODE_009B58:
	RTS

CODE_009B59:
	JSL.l CODE_02C8FF
	REP.b #$20
	LDA.w #$0004
	JSL.l CODE_02C90B
	REP.b #$20
	LDA.w $0342
	BIT.w #$0400
	BEQ.b CODE_009B74
	JSR.w CODE_009AE3
	RTS

CODE_009B74:
	REP.b #$20
	LDA.w #$0002
	JSL.l CODE_00C91F
	SEP.b #$20
CODE_009B7F:
	LDA.w $1335
	BNE.b CODE_009B7F
	JSL.l CODE_00A199
	REP.b #$20
	LDA.w #$7C00
	STA.w $1F5B
	JSL.l CODE_00C833
	JSL.l CODE_009C39
	SEP.b #$20
	STZ.w !REGISTER_BG1VertScrollOffset
	STZ.w !REGISTER_BG1VertScrollOffset
	STZ.w !REGISTER_BG1HorizScrollOffset
	STZ.w !REGISTER_BG1HorizScrollOffset
	JSL.l CODE_02804D
	REP.b #$30
	LDA.w #$0000
	LDY.w #$0030
	LDX.w #$0002
	JSL.l CODE_02806C
	JSL.l CODE_028000
	REP.b #$20
	LDA.w #DATA_039794
	JSL.l CODE_00CB69
	REP.b #$20
	LDA.w #$0002
	JSL.l CODE_00C933
	SEP.b #$20
CODE_009BD1:
	LDA.w $1335
	BNE.b CODE_009BD1
	REP.b #$30
	LDA.w #$9080
	LDX.w #$00B4
	JSL.l CODE_009A75
	REP.b #$20
	LDA.w #$0002
	JSL.l CODE_00C91F
	SEP.b #$20
CODE_009BED:
	LDA.w $1335
	BNE.b CODE_009BED
	REP.b #$30
	LDX.w #!RAM_FB2000_Level_Smiloids_SpriteTableStart
	JSR.w CODE_009AC9
	REP.b #$30
	LDA.w $12A2
	CMP.w #$0002
	BNE.b CODE_009C0A
	LDX.w #$0C0A
	JSR.w CODE_009AC9
CODE_009C0A:
	JSR.w CODE_009A9B
	REP.b #$20
	LDA.w #$0200
	BIT.w $0342
	BNE.b CODE_009C24
	LDA.w #$0008
	ORA.w $0BF6
	STA.w $0BF6
	JSL.l CODE_02C46C
CODE_009C24:
	REP.b #$20
	LDA.w #$0002
	JSL.l CODE_00C91F
	SEP.b #$20
CODE_009C2F:
	LDA.w $1335
	BNE.b CODE_009C2F
	JSL.l CODE_00A101
	RTS

CODE_009C39:
	SEP.b #$20
	LDA.b #$80
	STA.w $1339
	STA.w !REGISTER_ScreenDisplayRegister
	REP.b #$30
	LDA.w #DATA_05CF35
	PHA
	LDX.w #$1800
	LDY.w #$1000
	SEP.b #$20
	LDA.b #DATA_05CF35>>16
	XBA
	LDA.b #$60
	JSL.l CODE_01A9EF
	REP.b #$20
	PLA
	SEP.b #$20
	LDA.b #DATA_039694>>16
	PHA
	REP.b #$30
	LDA.w #DATA_039694
	LDX.w #$0100
	LDY.w #$0080
	JSL.l CODE_00937D
	SEP.b #$20
	PLA
	SEP.b #$20
	LDA.b #DATA_039594>>16
	PHA
	REP.b #$30
	LDA.w #DATA_039594
	LDX.w #$0100
	LDY.w #$0000
	JSL.l CODE_00937D
	SEP.b #$20
	PLA
	PEA.w DATA_0495F9
	PEA.w DATA_0495F9>>16
	PEA.w $7F0000
	PEA.w $7F0000>>16
	JSL.l CODE_0188AC
	REP.b #$20
	PLA
	PLA
	PLA
	PLA
	SEP.b #$20
	LDA.b #$80
	PHA
	LDA.b #$7F0000>>16
	PHA
	REP.b #$30
	LDA.w #$7F0000
	LDX.w #$1000
	LDY.w #$6000
	JSL.l CODE_00936C
	SEP.b #$20
	PLA
	PLA
	JSL.l CODE_0092E1
	PEA.w DATA_049AF5
	PEA.w DATA_049AF5>>16
	PEA.w $7F0000
	PEA.w $7F0000>>16
	JSL.l CODE_0188AC
	REP.b #$20
	PLA
	PLA
	PLA
	PLA
	SEP.b #$20
	LDA.b #$80
	PHA
	LDA.b #$7F0000>>16
	PHA
	REP.b #$30
	LDA.w #$7F0000
	LDX.w #$1000
	LDY.w #$6800
	JSL.l CODE_00936C
	SEP.b #$20
	PLA
	PLA
	JSL.l CODE_0092E1
	SEP.b #$20
	STZ.w $1339
	LDA.b #$0F
	AND.w $1336
	STA.w !REGISTER_ScreenDisplayRegister
	RTL

CODE_009D03:
	REP.b #$30
	LDX.w #$6778
	LDA.w $12A2
	CMP.w #$0002
	BCC.b CODE_009D13
	LDX.w #$2F78
CODE_009D13:
	LDA.w $0B9A
	BIT.w #$04C0
	BNE.b CODE_009D2F
	LDA.w $0342
	BIT.w #$1200
	BNE.b CODE_009D2F
	LDA.w #$3184
	LDY.w #$0022
	JSL.l CODE_01AA0B
	BRA.b CODE_009D3B

CODE_009D2F:
	REP.b #$30
	LDA.w #$0184
	LDY.w #$8022
	JSL.l CODE_01AA0B
CODE_009D3B:
	REP.b #$30
	LDA.w $12A2
	CMP.w #$0001
	BEQ.b CODE_009D70
	LDX.w #$9F78
	LDA.w $0C0A
	BIT.w #$04C0
	BNE.b CODE_009D64
	LDA.w $0342
	BIT.w #$1200
	BNE.b CODE_009D64
	LDA.w #$3184
	LDY.w #$0023
	JSL.l CODE_01AA0B
	BRA.b CODE_009D70

CODE_009D64:
	REP.b #$30
	LDA.w #$3184
	LDY.w #$8023
	JSL.l CODE_01AA0B
CODE_009D70:
	RTS

CODE_009D71:
	REP.b #$30
	LDA.w $03CE
	LDX.w #!Define_FB2000_Music_CityZone
	CMP.w #$0006
	BCC.b CODE_009DB1
	LDX.w #!Define_FB2000_Music_DesertZone
	CMP.w #$000C
	BCC.b CODE_009DB1
	LDX.w #!Define_FB2000_Music_AsteroidZone
	CMP.w #$0012
	BCC.b CODE_009DB1
	LDX.w #!Define_FB2000_Music_IceZone
	CMP.w #$0018
	BCC.b CODE_009DB1
	LDX.w #!Define_FB2000_Music_SpaceZone
	CMP.w #$001E
	BCC.b CODE_009DB1
	LDX.w #!Define_FB2000_Music_MarsZone
	CMP.w #$0024
	BCC.b CODE_009DB1
	LDX.w #!Define_FB2000_Music_StarZone
	CMP.w #$002A
	BCC.b CODE_009DB1
	LDX.w #!Define_FB2000_Music_CyberZone
CODE_009DB1:
	RTS

CODE_009DB2:
	REP.b #$30
	LDA.w $03CE
	SEC
	SBC.w #$0030
	LDX.w #!Define_FB2000_Music_CityZone
	CMP.w #$000A
	BCC.b CODE_009DF6
	LDX.w #!Define_FB2000_Music_DesertZone
	CMP.w #$0014
	BCC.b CODE_009DF6
	LDX.w #!Define_FB2000_Music_AsteroidZone
	CMP.w #$001E
	BCC.b CODE_009DF6
	LDX.w #!Define_FB2000_Music_IceZone
	CMP.w #$0028
	BCC.b CODE_009DF6
	LDX.w #!Define_FB2000_Music_SpaceZone
	CMP.w #$0032
	BCC.b CODE_009DF6
	LDX.w #!Define_FB2000_Music_MarsZone
	CMP.w #$003C
	BCC.b CODE_009DF6
	LDX.w #!Define_FB2000_Music_StarZone
	CMP.w #$0046
	BCC.b CODE_009DF6
	LDX.w #!Define_FB2000_Music_CyberZone
CODE_009DF6:
	RTS

CODE_009DF7:
	REP.b #$30
	LDA.w $0342
	BIT.w #$0008
	BEQ.b CODE_009E10
	BIT.w #$0400
	BEQ.b CODE_009E0B
	JSR.w CODE_009D71
	BRA.b CODE_009E15

CODE_009E0B:
	JSR.w CODE_009DB2
	BRA.b CODE_009E15

CODE_009E10:
	REP.b #$10
	LDX.w $0346
CODE_009E15:
	REP.b #$30
	TXA
	AND.w #$0007
	JSL.l CODE_02C87E
	REP.b #$20
	LDA.w #$0020
	BIT.w $0342
	BNE.b CODE_009E2D
	JSL.l CODE_02C96A
CODE_009E2D:
	RTL

CODE_009E2E:
	SEP.b #$20
	LDA.b #$80
	STA.w $1339
	STA.w !REGISTER_ScreenDisplayRegister
	JSL.l CODE_00CAC1
	JSL.l CODE_0092E1
	REP.b #$20
	LDA.w $12A2
	CMP.w #$0002
	BEQ.b CODE_009EBB
	PEA.w DATA_0495F9
	PEA.w DATA_0495F9>>16
	PEA.w $7F0000
	PEA.w $7F0000>>16
	JSL.l CODE_0188AC
	REP.b #$20
	PLA
	PLA
	PLA
	PLA
	SEP.b #$20
	LDA.b #$80
	PHA
	LDA.b #$7F0000>>16
	PHA
	REP.b #$30
	LDA.w #$7F0000
	LDX.w #$1000
	LDY.w #$2000
	JSL.l CODE_00936C
	SEP.b #$20
	PLA
	PLA
	JSL.l CODE_0092E1
	PEA.w DATA_049AF5
	PEA.w DATA_049AF5>>16
	PEA.w $7F0000
	PEA.w $7F0000>>16
	JSL.l CODE_0188AC
	REP.b #$20
	PLA
	PLA
	PLA
	PLA
	SEP.b #$20
	LDA.b #$80
	PHA
	LDA.b #$7F0000>>16
	PHA
	REP.b #$30
	LDA.w #$7F0000
	LDX.w #$1000
	LDY.w #$2800
	JSL.l CODE_00936C
	SEP.b #$20
	PLA
	PLA
	JSL.l CODE_0092E1
	SEP.b #$20
	LDA.b #$02
	STA.w !REGISTER_BG3And4TileDataDesignation
CODE_009EBB:
	SEP.b #$20
	STZ.w !REGISTER_CGRAMAddress
	STZ.w !REGISTER_WriteToCGRAMPort
	STZ.w !REGISTER_WriteToCGRAMPort
	REP.b #$20
	LDA.w $0342
	BIT.w #$0008
	BEQ.b CODE_009ED3
	BRL.w CODE_009F9B

CODE_009ED3:
	REP.b #$20
	LDA.w $12A2
	CMP.w #$0002
	BEQ.b CODE_009F3C
	SEP.b #$20
	LDA.b #$80
	PHA
	LDA.b #DATA_049E9C>>16
	PHA
	REP.b #$30
	LDA.w #DATA_049E9C
	LDX.w #$1000
	LDY.w #$3000
	JSL.l CODE_00936C
	SEP.b #$20
	PLA
	PLA
	SEP.b #$20
	LDA.b #$80
	PHA
	LDA.b #DATA_04A2FC>>16
	PHA
	REP.b #$30
	LDA.w #DATA_04A2FC
	LDX.w #$0700
	LDY.w #$7C00
	JSL.l CODE_00936C
	SEP.b #$20
	PLA
	PLA
	SEP.b #$20
	LDA.b #DATA_04A9FC>>16
	PHA
	REP.b #$30
	LDA.w #DATA_04A9FC
	LDX.w #$0020
	LDY.w #$0010
	JSL.l CODE_00937D
	SEP.b #$20
	PLA
	JSL.l CODE_0092E1
	SEP.b #$20
	STZ.w $1339
	LDA.b #$0F
	AND.w $1336
	STA.w !REGISTER_ScreenDisplayRegister
	RTS

CODE_009F3C:
	SEP.b #$20
	LDA.b #$80
	PHA
	LDA.b #DATA_04AA3C>>16
	PHA
	REP.b #$30
	LDA.w #DATA_04AA3C
	LDX.w #$0400
	LDY.w #$7800
	JSL.l CODE_00936C
	SEP.b #$20
	PLA
	PLA
	SEP.b #$20
	LDA.b #$80
	PHA
	LDA.b #DATA_04AD4C>>16
	PHA
	REP.b #$30
	LDA.w #DATA_04AD4C
	LDX.w #$0700
	LDY.w #$7C00
	JSL.l CODE_00936C
	SEP.b #$20
	PLA
	PLA
	SEP.b #$20
	LDA.b #DATA_04B44C>>16
	PHA
	REP.b #$30
	LDA.w #DATA_04B44C
	LDX.w #$0020
	LDY.w #$0010
	JSL.l CODE_00937D
	SEP.b #$20
	PLA
	JSL.l CODE_0092E1
	SEP.b #$20
	STZ.w $1339
	LDA.b #$0F
	AND.w $1336
	STA.w !REGISTER_ScreenDisplayRegister
	RTS

CODE_009F9B:
	REP.b #$20
	LDA.w $12A2
	CMP.w #$0002
	BEQ.b CODE_00A004
	SEP.b #$20
	LDA.b #$80
	PHA
	LDA.b #DATA_05B785>>16
	PHA
	REP.b #$30
	LDA.w #DATA_05B785
	LDX.w #$1000
	LDY.w #$3000
	JSL.l CODE_00936C
	SEP.b #$20
	PLA
	PLA
	SEP.b #$20
	LDA.b #$80
	PHA
	LDA.b #DATA_05BCF5>>16
	PHA
	REP.b #$30
	LDA.w #DATA_05BCF5
	LDX.w #$0700
	LDY.w #$7C00
	JSL.l CODE_00936C
	SEP.b #$20
	PLA
	PLA
	SEP.b #$20
	LDA.b #DATA_05C3F5>>16
	PHA
	REP.b #$30
	LDA.w #DATA_05C3F5
	LDX.w #$0020
	LDY.w #$0010
	JSL.l CODE_00937D
	SEP.b #$20
	PLA
	JSL.l CODE_0092E1
	SEP.b #$20
	STZ.w $1339
	LDA.b #$0F
	AND.w $1336
	STA.w !REGISTER_ScreenDisplayRegister
	RTS

CODE_00A004:
	SEP.b #$20
	LDA.b #$80
	PHA
	LDA.b #DATA_05C435>>16
	PHA
	REP.b #$30
	LDA.w #DATA_05C435
	LDX.w #$0400
	LDY.w #$7800
	JSL.l CODE_00936C
	SEP.b #$20
	PLA
	PLA
	SEP.b #$20
	LDA.b #$80
	PHA
	LDA.b #DATA_05C7F5>>16
	PHA
	REP.b #$30
	LDA.w #DATA_05C7F5
	LDX.w #$0700
	LDY.w #$7C00
	JSL.l CODE_00936C
	SEP.b #$20
	PLA
	PLA
	SEP.b #$20
	LDA.b #DATA_05CEF5>>16
	PHA
	REP.b #$30
	LDA.w #DATA_05CEF5
	LDX.w #$0020
	LDY.w #$0010
	JSL.l CODE_00937D
	SEP.b #$20
	PLA
	JSL.l CODE_0092E1
	SEP.b #$20
	STZ.w $1339
	LDA.b #$0F
	AND.w $1336
	STA.w !REGISTER_ScreenDisplayRegister
	RTS

CODE_00A063:
	REP.b #$30
	LDA.w $03CE
	INC
	LDX.w #!Define_FB2000_Tileset_CityZone
	CMP.w #$0006
	BEQ.b CODE_00A0B7
	BCC.b CODE_00A0B7
	LDX.w #!Define_FB2000_Tileset_DesertZone
	CMP.w #$000C
	BEQ.b CODE_00A0B7
	BCC.b CODE_00A0B7
	LDX.w #!Define_FB2000_Tileset_AsteroidZone
	CMP.w #$0012
	BEQ.b CODE_00A0B7
	BCC.b CODE_00A0B7
	LDX.w #!Define_FB2000_Tileset_IceZone
	CMP.w #$0018
	BEQ.b CODE_00A0B7
	BCC.b CODE_00A0B7
	LDX.w #!Define_FB2000_Tileset_SpaceZone
	CMP.w #$001E
	BEQ.b CODE_00A0B7
	BCC.b CODE_00A0B7
	LDX.w #!Define_FB2000_Tileset_MarsZone
	CMP.w #$0024
	BEQ.b CODE_00A0B7
	BCC.b CODE_00A0B7
	LDX.w #!Define_FB2000_Tileset_StarZone
	CMP.w #$002A
	BEQ.b CODE_00A0B7
	BCC.b CODE_00A0B7
	LDX.w #!Define_FB2000_Tileset_CyberZone
	CMP.w #$0030
	BEQ.b CODE_00A0B8
CODE_00A0B7:
	RTS

CODE_00A0B8:
	LDX.w #!Define_FB2000_Tileset_MasterControl
	RTS

CODE_00A0BC:
	REP.b #$30
	LDA.w $03CE
	SEC
	SBC.w #$0030
	LDX.w #!Define_FB2000_Tileset_CityZone
	CMP.w #$000A
	BCC.b CODE_00A100
	LDX.w #!Define_FB2000_Tileset_AsteroidZone
	CMP.w #$0014
	BCC.b CODE_00A100
	LDX.w #!Define_FB2000_Tileset_IceZone
	CMP.w #$001E
	BCC.b CODE_00A100
	LDX.w #!Define_FB2000_Tileset_DesertZone
	CMP.w #$0028
	BCC.b CODE_00A100
	LDX.w #!Define_FB2000_Tileset_MarsZone
	CMP.w #$0032
	BCC.b CODE_00A100
	LDX.w #!Define_FB2000_Tileset_SpaceZone
	CMP.w #$003C
	BCC.b CODE_00A100
	LDX.w #!Define_FB2000_Tileset_CyberZone
	CMP.w #$0046
	BCC.b CODE_00A100
	LDX.w #!Define_FB2000_Tileset_StarZone
CODE_00A100:
	RTS

CODE_00A101:
	REP.b #$20
	LDA.w $12A2
	CMP.w #$0002
	BEQ.b CODE_00A111
	JSL.l CODE_00C833
	BRA.b CODE_00A115

CODE_00A111:
	JSL.l CODE_00C870
CODE_00A115:
	JSL.l CODE_009C39
	SEP.b #$20
	STZ.w !REGISTER_BG1VertScrollOffset
	STZ.w !REGISTER_BG1VertScrollOffset
	STZ.w !REGISTER_BG1HorizScrollOffset
	STZ.w !REGISTER_BG1HorizScrollOffset
	STZ.w !REGISTER_BG2VertScrollOffset
	STZ.w !REGISTER_BG2VertScrollOffset
	STZ.w !REGISTER_BG2HorizScrollOffset
	STZ.w !REGISTER_BG2HorizScrollOffset
	STZ.w !REGISTER_BG3VertScrollOffset
	STZ.w !REGISTER_BG3VertScrollOffset
	STZ.w !REGISTER_BG3HorizScrollOffset
	STZ.w !REGISTER_BG3HorizScrollOffset
	REP.b #$20
	LDA.w $0342
	BIT.w #$0008
	BEQ.b CODE_00A158
	BIT.w #$0400
	BEQ.b CODE_00A153
	JSR.w CODE_00A063
	BRA.b CODE_00A15D

CODE_00A153:
	JSR.w CODE_00A0BC
	BRA.b CODE_00A15D

CODE_00A158:
	REP.b #$30
	LDX.w #!Define_FB2000_Tileset_Arena
CODE_00A15D:
	TXA
	JSL.l CODE_028237
	SEP.b #$20
	LDA.b #$33
	STA.w !REGISTER_BG1And2WindowMaskSettings
	LDA.b #$03
	STA.w !REGISTER_MainScreenWindowMask
	REP.b #$20
	LDA.w $12A2
	CMP.w #$0001
	BEQ.b CODE_00A17C
	JSL.l CODE_00A184
CODE_00A17C:
	JSR.w CODE_009E2E
	JSL.l CODE_02C9F1
	RTL

CODE_00A184:
	SEP.b #$20
	LDA.b #$70
	STA.w !REGISTER_VCountTimerLo
	SEP.b #$20
	LDA.w $03C5
	ORA.b #$20
	STA.w !REGISTER_IRQNMIAndJoypadEnableFlags
	STA.w $03C5
	RTL

CODE_00A199:
	REP.b #$30
	STZ.b $57
	STZ.b $59
	STZ.b $5B
	STZ.b $5D
	STZ.b $5F
	STZ.b $61
	JSR.w CODE_009681
	REP.b #$30
	LDA.w #$0000
	LDX.w #$0002
	JSL.l CODE_009A75
	SEP.b #$20
	LDA.w $03C5
	AND.b #$DF
	STA.w !REGISTER_IRQNMIAndJoypadEnableFlags
	STA.w $03C5
	SEP.b #$20
	LDA.b #$00
	STA.w !REGISTER_BG1And2WindowMaskSettings
	SEP.b #$20
	STZ.w !REGISTER_BG1VertScrollOffset
	STZ.w !REGISTER_BG1VertScrollOffset
	STZ.w !REGISTER_BG1HorizScrollOffset
	STZ.w !REGISTER_BG1HorizScrollOffset
	STZ.w !REGISTER_BG2VertScrollOffset
	STZ.w !REGISTER_BG2VertScrollOffset
	STZ.w !REGISTER_BG2HorizScrollOffset
	STZ.w !REGISTER_BG2HorizScrollOffset
	STZ.w !REGISTER_BG3VertScrollOffset
	STZ.w !REGISTER_BG3VertScrollOffset
	STZ.w !REGISTER_BG3HorizScrollOffset
	STZ.w !REGISTER_BG3HorizScrollOffset
	RTL

CODE_00A1F1:
	REP.b #$30
	LDA.w #$0001
	BIT.w $0BF6
	BNE.b CODE_00A20B
	LDA.w $12A2
	CMP.w #$0002
	BCC.b CODE_00A23F
	LDA.w #$0001
	BIT.w $0C66
	BEQ.b CODE_00A23F
CODE_00A20B:
	JSL.l CODE_029162
	REP.b #$30
	LDA.w $03D0
	STA.w $03CE
	JSL.l CODE_02C46C
	SEP.b #$20
	LDA.w $1336
	BEQ.b CODE_00A232
	LDA.w $1335
	CMP.b #$FF
	BEQ.b CODE_00A232
	REP.b #$20
	LDA.w #$0002
	JSL.l CODE_00C91F
CODE_00A232:
	SEP.b #$20
CODE_00A234:
	LDA.w $1335
	BNE.b CODE_00A234
	JSL.l CODE_00A101
	SEC
	RTS

CODE_00A23F:
	CLC
	RTS

CODE_00A241:
	REP.b #$30
	LDX.w #!RAM_FB2000_Level_Smiloids_SpriteTableStart
CODE_00A246:
	LDA.w #$81FF
	AND.b $02,x
	STA.b $02,x
	TXA
	CLC
	ADC.w #$0070
	TAX
	CPX.w #$129A
	BNE.b CODE_00A246
	RTS

CODE_00A259:
	REP.b #$30
	LDA.w #$1000
	ORA.w $0342
	STA.w $0342
	LDA.w $03C6
	BIT.w #$4000
	BNE.b CODE_00A274
	LDA.w $03C8
	BIT.w #$4000
	BEQ.b CODE_00A2B6
CODE_00A274:
	JSL.l CODE_02C976
CODE_00A278:
	JSL.l CODE_00CA17
	JSL.l CODE_00B8F9
	REP.b #$30
	LDA.w $03C6
	BIT.w #$1000
	BNE.b CODE_00A278
	LDA.w #$0000
	LDX.w #$0008
	JSL.l CODE_009A75
CODE_00A294:
	JSL.l CODE_00CA17
	JSL.l CODE_00B8F9
	REP.b #$30
	LDA.w $03C6
	BIT.w #$1000
	BEQ.b CODE_00A294
	JSL.l CODE_02C982
	REP.b #$20
	LDA.w #$EFFF
	AND.w $0342
	STA.w $0342
	RTS

CODE_00A2B6:
	REP.b #$20
	LDA.w $0342
	BIT.w #$0400
	BNE.b CODE_00A2C3
	BRL.w CODE_00A3F1

CODE_00A2C3:
	JSL.l CODE_00CA17
	JSL.l CODE_00B8F9
	REP.b #$30
	LDA.w $03C6
	BIT.w #$1000
	BNE.b CODE_00A2C3
	LDA.w #$0000
	LDX.w #$0008
	JSL.l CODE_009A75
	JSL.l CODE_02C976
	REP.b #$20
	LDA.w $0BD1
	BEQ.b CODE_00A2EE
	JSL.l CODE_00A4D9
CODE_00A2EE:
	REP.b #$20
	LDA.w $12A2
	CMP.w #$0001
	BEQ.b CODE_00A301
	LDA.w $0C41
	BEQ.b CODE_00A301
	JSL.l CODE_00A507
CODE_00A301:
	JSR.w CODE_009D03
	JSL.l CODE_01AAAE
	REP.b #$20
	LDA.w #$FFFF
	STA.w $0395
	STA.w $0397
	LDA.w $0BD1
	BEQ.b CODE_00A31E
	LDA.w #$0000
	JSR.w CODE_0095D7
CODE_00A31E:
	REP.b #$20
	LDA.w $12A2
	CMP.w #$0001
	BEQ.b CODE_00A333
	LDA.w $0C41
	BEQ.b CODE_00A333
	LDA.w #$0001
	JSR.w CODE_0095D7
CODE_00A333:
	REP.b #$20
	INC.w $034A
	JSL.l CODE_00CA17
	JSL.l CODE_00B8F9
	REP.b #$20
	LDA.w $03C6
	BIT.w #$1000
	BEQ.b CODE_00A34D
	BRL.w CODE_00A466

CODE_00A34D:
	REP.b #$20
	LDA.w $0BD1
	BEQ.b CODE_00A398
	REP.b #$20
	LDA.w #$00FF
	JSL.l CODE_0091FA
	REP.b #$20
	LDA.w #$0000
	JSL.l CODE_00923B
	JSR.w CODE_00A4C1
	REP.b #$20
	LDA.w #DATA_039817
	JSL.l CODE_00CB69
	REP.b #$20
	LDA.w #$0080
	STA.w $1F6D
	LDA.w #$0040
	ORA.w $0B9C
	STA.w $0B9C
	JSL.l CODE_01ABEF
	SEP.b #$20
	LDA.w $0BA6
	JSR.w CODE_0099E9
	REP.b #$20
	LDA.w #$0000
	JSL.l CODE_00927C
CODE_00A398:
	REP.b #$20
	LDA.w $0C41
	BEQ.b CODE_00A3EE
	LDA.w $12A2
	CMP.w #$0001
	BEQ.b CODE_00A3EE
	REP.b #$20
	LDA.w #$00FF
	JSL.l CODE_009214
	REP.b #$20
	LDA.w #$0001
	JSL.l CODE_00923B
	REP.b #$20
	LDA.w #$0080
	STA.w $1F6D
	LDA.w #$7DC7
	STA.w $1F5B
	REP.b #$20
	LDA.w #DATA_039817
	JSL.l CODE_00CB69
	LDA.w #$0040
	ORA.w $0C0C
	STA.w $0C0C
	JSL.l CODE_01ABEF
	SEP.b #$20
	LDA.w $0C16
	JSR.w CODE_0099E9
	REP.b #$20
	LDA.w #$0001
	JSL.l CODE_00927C
CODE_00A3EE:
	BRL.w CODE_00A333

CODE_00A3F1:
	REP.b #$30
	LDX.w #DATA_0397A3
	LDA.w $034C
	CMP.w #$FFFF
	BNE.b CODE_00A401
	LDX.w #DATA_0397E6
CODE_00A401:
	TXA
	JSL.l CODE_029DE8
	REP.b #$30
	LDA.w $0342
	BIT.w #$0008
	BNE.b CODE_00A41F
	LDA.w #$0615
	LDX.w #$0300
	LDY.w #$0002
	JSL.l CODE_00CCE3
	BRA.b CODE_00A454

CODE_00A41F:
	SEP.b #$20
	REP.b #$10
	LDX.w #$0007
CODE_00A426:
	LDA.w DATA_039824,x
	STA.w $036C,x
	DEX
	BPL.b CODE_00A426
	LDX.w #$0373
	JSL.l CODE_028BFB
	REP.b #$30
	LDA.w #$036C
	LDX.w #$0300
	LDY.w #$0003
	JSL.l CODE_00CCE3
	REP.b #$30
	LDA.w #$03D2
	LDX.w #$0320
	LDY.w #$0002
	JSL.l CODE_00CCE3
CODE_00A454:
	JSL.l CODE_00CA17
	JSL.l CODE_00B8F9
	REP.b #$20
	LDA.w $03C6
	BIT.w #$1000
	BEQ.b CODE_00A454
CODE_00A466:
	REP.b #$20
	LDA.w $0342
	BIT.w #$0400
	BNE.b CODE_00A48A
	REP.b #$20
	LDA.w #$0002
	JSL.l CODE_00C91F
	SEP.b #$20
CODE_00A47B:
	LDA.w $1335
	BNE.b CODE_00A47B
	JSL.l CODE_02C9F1
	JSL.l CODE_00A101
	BRA.b CODE_00A4AD

CODE_00A48A:
	JSR.w CODE_00A4C1
	REP.b #$20
	LDA.w #DATA_039574
	JSL.l CODE_00CB69
	REP.b #$20
	LDA.w $12A2
	CMP.w #$0001
	BEQ.b CODE_00A4AD
	LDA.w #$7DC7
	STA.w $1F5B
	LDA.w #DATA_039574
	JSL.l CODE_00CB69
CODE_00A4AD:
	JSL.l CODE_00CA17
	JSL.l CODE_02C982
	REP.b #$20
	LDA.w #$EFFF
	AND.w $0342
	STA.w $0342
	RTS

CODE_00A4C1:
	REP.b #$20
	LDA.w $12A2
	CMP.w #$0002
	BEQ.b CODE_00A4D2
	LDA.w #$7CE7
	STA.w $1F5B
	RTS

CODE_00A4D2:
	LDA.w #$7C07
	STA.w $1F5B
	RTS

CODE_00A4D9:
	REP.b #$20
	LDA.w $0B9C
	BIT.w #$0040
	BEQ.b CODE_00A506
	AND.w #$FFBF
	STA.w $0B9C
	REP.b #$20
	LDA.w #$7C07
	STA.w $1F5B
	LDA.w $12A2
	CMP.w #$0002
	BEQ.b CODE_00A4FF
	LDA.w #$7CE7
	STA.w $1F5B
CODE_00A4FF:
	LDA.w #DATA_039574
	JSL.l CODE_00CB69
CODE_00A506:
	RTL

CODE_00A507:
	REP.b #$20
	LDA.w $12A2
	CMP.w #$0002
	BCS.b CODE_00A512
	RTL

CODE_00A512:
	LDA.w $0C0C
	BIT.w #$0040
	BEQ.b CODE_00A52F
	AND.w #$FFBF
	STA.w $0C0C
	REP.b #$20
	LDA.w #$7DC7
	STA.w $1F5B
	LDA.w #DATA_039574
	JSL.l CODE_00CB69
CODE_00A52F:
	RTL

CODE_00A530:
	REP.b #$20
	LDA.w #$000E
	STA.w $0391
	RTL

CODE_00A539:
	REP.b #$20
	LDA.w #$000E
	STA.w $0393
	RTL

CODE_00A542:
	JSL.l CODE_01A75D
	REP.b #$20
	LDA.w !RAM_FB2000_Level_MasterDeathTimerLo
	BNE.b CODE_00A575
	REP.b #$30
	LDX.w #!RAM_FB2000_Level_Smiloids_SpriteTableStart
CODE_00A552:
	LDA.b $00,x
	BIT.w #$0010
	BEQ.b CODE_00A566
	BIT.w #$0040
	BNE.b CODE_00A566
	PHX
	JSL.l CODE_019DF7
	REP.b #$30
	PLX
CODE_00A566:
	TXA
	CLC
	ADC.w #$0070
	TAX
	CPX.w #$129A
	BNE.b CODE_00A552
	JSL.l CODE_02856F
CODE_00A575:
	RTS

CODE_00A576:
	REP.b #$30
	LDX.w #!RAM_FB2000_Level_Smiloids_SpriteTableStart
CODE_00A57B:
	LDA.b $39,x
	STA.b $3B,x
	TXA
	CLC
	ADC.w #$0070
	TAX
	CPX.w #$129A
	BNE.b CODE_00A57B
	RTS

CODE_00A58B:
	REP.b #$20
	STZ.w $03A1
	STZ.w $038D
	LDA.w DATA_039594
	AND.w #$001F
	STA.w $0B77
	LDA.w DATA_039594
	AND.w #$03E0
	STA.w $0B79
	LDA.w DATA_039594
	AND.w #$7C00
	STA.w $0B7B
	JSL.l CODE_02D4AB
	JSL.l CODE_009913
	REP.b #$20
	LDA.w $1C93
	BIT.w #$0004
	BNE.b CODE_00A5CD
	BIT.w #$0001
	BNE.b CODE_00A5C9
	JSL.l CODE_018152
CODE_00A5C9:
	JSL.l CODE_02D575
CODE_00A5CD:
	JSL.l CODE_02C5FF
	REP.b #$20
	LDA.w #$55DD
	STA.w $038D
	JSL.l CODE_00A101
	JSR.w CODE_009690
	REP.b #$20
	LDA.w #$FFFF
	STA.w $034C
	STZ.w $034E
	STZ.w $034A
	SEP.b #$20
	STZ.w !REGISTER_BG1VertScrollOffset
	STZ.w !REGISTER_BG1VertScrollOffset
	STZ.w !REGISTER_BG1HorizScrollOffset
	STZ.w !REGISTER_BG1HorizScrollOffset
	STZ.w !REGISTER_BG2VertScrollOffset
	STZ.w !REGISTER_BG2VertScrollOffset
	STZ.w !REGISTER_BG2HorizScrollOffset
	STZ.w !REGISTER_BG2HorizScrollOffset
	STZ.w !REGISTER_BG3VertScrollOffset
	STZ.w !REGISTER_BG3VertScrollOffset
	STZ.w !REGISTER_BG3HorizScrollOffset
	STZ.w !REGISTER_BG3HorizScrollOffset
	REP.b #$20
	STZ.w $038F
	STZ.w !RAM_FB2000_Level_MasterDeathTimerLo
	LDA.w #$FFFB
	AND.w $1C93
	STA.w $1C93
	LDA.w #$0001
	STA.w $03A1
CODE_00A62B:
	REP.b #$20
	INC.w $034A
	LDA.w #$0200
	BIT.w $0342
	BEQ.b CODE_00A640
	LDA.w $038F
	BNE.b CODE_00A640
	BRL.w CODE_00AA20

CODE_00A640:
	JSL.l CODE_01AAA5
	JSR.w CODE_009D03
	JSR.w CODE_00A241
	SEP.b #$20
	LDA.w $1336
	CMP.b #$0F
	BEQ.b CODE_00A663
	LDA.w $1335
	CMP.b #$01
	BEQ.b CODE_00A663
	REP.b #$20
	LDA.w #$0002
	JSL.l CODE_00C933
CODE_00A663:
	SEP.b #$20
	LDA.w $020B
	BEQ.b CODE_00A67D
	LDA.w $020A
	CMP.b #$FF
	BEQ.b CODE_00A67D
	REP.b #$30
	LDX.w #$0005
	LDA.w #$0002
	JSL.l CODE_00888C
CODE_00A67D:
	REP.b #$20
	LDA.w $0342
	BIT.w #$0008
	BEQ.b CODE_00A6B0
	LDA.w $03D0
	CMP.w #$0100
	BCC.b CODE_00A693
	JML.l CODE_00957A

CODE_00A693:
	JSR.w CODE_009A0E
	JSR.w CODE_009B18
	JSR.w CODE_009A9B
	JSR.w CODE_00A1F1
	BCC.b CODE_00A6A4
	BRL.w CODE_00A9C4

CODE_00A6A4:
	JSL.l CODE_02A4DD
	JSL.l CODE_0183F4
	JSL.l CODE_01848B
CODE_00A6B0:
	JSR.w CODE_00A576
	JSL.l CODE_00B8F9
	REP.b #$20
	LDA.w $03C6
	STA.w $0BD3
	LDA.w $12A2
	CMP.w #$0002
	BNE.b CODE_00A6CD
	LDA.w $03C8
	STA.w $0C43
CODE_00A6CD:
	REP.b #$20
	LDA.w $0342
	BIT.w #$0200
	BNE.b CODE_00A70D
	JSR.w CODE_00A542
	JSR.w CODE_00A542
	REP.b #$20
	LDA.w $12A2
	CMP.w #$0002
	BCC.b CODE_00A6ED
	JSR.w CODE_00A542
	JSR.w CODE_00A542
CODE_00A6ED:
	REP.b #$20
	LDA.w $0342
	BIT.w #$0400
	BNE.b CODE_00A6FF
	BIT.w #$0008
	BEQ.b CODE_00A6FF
	JSR.w CODE_00A542
CODE_00A6FF:
	REP.b #$20
	LDA.w $0342
	BIT.w #$0008
	BEQ.b CODE_00A70D
	JSL.l CODE_02A351
CODE_00A70D:
	REP.b #$30
	LDA.w #$1000
	BIT.w $0BD3
	BEQ.b CODE_00A731
	BIT.w $0BD5
	BNE.b CODE_00A731
	LDA.w !RAM_FB2000_Level_MasterDeathTimerLo
	BNE.b CODE_00A731
	LDA.w $0342
	BIT.w #$0200
	BNE.b CODE_00A72E
	JSR.w CODE_00A259
	BRA.b CODE_00A731

CODE_00A72E:
	BRL.w CODE_00AA20

CODE_00A731:
	JSR.w CODE_009681
	REP.b #$20
	LDA.w $0BF6
	BIT.w #$0002
	BNE.b CODE_00A746
	LDA.w $0342
	BIT.w #$0200
	BEQ.b CODE_00A770
CODE_00A746:
	REP.b #$20
	LDA.w #$00FF
	JSL.l CODE_0091FA
	REP.b #$20
	LDA.w #$0000
	JSL.l CODE_00923B
	JSR.w CODE_00A4C1
	REP.b #$10
	LDX.w #!RAM_FB2000_Level_Smiloids_SpriteTableStart
	JSL.l CODE_02D06B
	REP.b #$20
	LDA.w #$0000
	JSL.l CODE_00927C
	BRL.w CODE_00A853

CODE_00A770:
	REP.b #$20
	LDA.w !RAM_FB2000_Level_MasterDeathTimerLo
	BNE.b CODE_00A78F
	LDA.w #$0020
	BIT.w $0B9A
	BNE.b CODE_00A7D0
	LDA.w #$0040
	BIT.w $0B9A
	BNE.b CODE_00A7EE
	LDA.w #$0400
	BIT.w $0B9A
	BNE.b CODE_00A792
CODE_00A78F:
	BRL.w CODE_00A817

CODE_00A792:
	REP.b #$20
	LDA.w #$00FF
	JSL.l CODE_0091FA
	REP.b #$20
	LDA.w #$0000
	JSL.l CODE_00923B
	JSR.w CODE_00A4C1
	REP.b #$20
	LDA.w #$0080
	STA.w $1F6D
	LDA.w #$0040
	ORA.w $0B9C
	STA.w $0B9C
	JSL.l CODE_01ABEF
	SEP.b #$20
	LDA.w $0BA6
	JSR.w CODE_0099E9
	REP.b #$20
	LDA.w #$0000
	JSL.l CODE_00927C
	BRL.w CODE_00A853

CODE_00A7D0:
	REP.b #$20
	LDA.w #$0000
	JSL.l CODE_00923B
	REP.b #$10
	LDX.w #!RAM_FB2000_Level_Smiloids_SpriteTableStart
	JSL.l CODE_02D132
	REP.b #$20
	LDA.w #$0000
	JSL.l CODE_00927C
	BRL.w CODE_00A853

CODE_00A7EE:
	REP.b #$20
	LDA.w #$00FF
	JSL.l CODE_0091FA
	REP.b #$20
	LDA.w #$0000
	JSL.l CODE_00923B
	JSR.w CODE_00A4C1
	REP.b #$10
	LDX.w #!RAM_FB2000_Level_Smiloids_SpriteTableStart
	JSL.l CODE_02CF45
	REP.b #$20
	LDA.w #$0000
	JSL.l CODE_00927C
	BRA.b CODE_00A853

CODE_00A817:
	REP.b #$20
	LDA.w #$0000
	JSL.l CODE_0091FA
	SEP.b #$20
	LDA.w $0BA6
	EOR.b #$FF
	INC
	REP.b #$30
	AND.w #$00FF
	STA.b $5F
	JSL.l CODE_00A4D9
	REP.b #$30
	LDA.w #$0000
	STA.w $039F
	LDA.w $0B9E
	STA.w $1F6F
	LDA.w $0BA1
	STA.w $1F71
	SEP.b #$20
	LDA.w $0BA6
	STA.w $1F73
	JSL.l CODE_01ADC9
CODE_00A853:
	REP.b #$10
	LDX.w #!RAM_FB2000_Level_Smiloids_SpriteTableStart
	JSL.l CODE_02CEA2
	REP.b #$20
	LDA.w #$0000
	JSR.w CODE_0095D7
	REP.b #$20
	LDA.w $12A2
	CMP.w #$0002
	BCS.b CODE_00A871
	BRL.w CODE_00A9AD

CODE_00A871:
	JSR.w CODE_009681
	REP.b #$20
	LDA.w $0C66
	BIT.w #$0002
	BNE.b CODE_00A886
	LDA.w #$0200
	BIT.w $0342
	BEQ.b CODE_00A8B3
CODE_00A886:
	REP.b #$20
	LDA.w #$00FF
	JSL.l CODE_009214
	REP.b #$20
	LDA.w #$0001
	JSL.l CODE_00923B
	REP.b #$30
	LDA.w #$7DC7
	STA.w $1F5B
	LDX.w #$0C0A
	JSL.l CODE_02D06B
	REP.b #$20
	LDA.w #$0001
	JSL.l CODE_00927C
	BRL.w CODE_00A99C

CODE_00A8B3:
	REP.b #$20
	LDA.w !RAM_FB2000_Level_MasterDeathTimerLo
	BNE.b CODE_00A8D2
	LDA.w #$0020
	BIT.w $0C0A
	BNE.b CODE_00A916
	LDA.w #$0040
	BIT.w $0C0A
	BNE.b CODE_00A934
	LDA.w #$0400
	BIT.w $0C0A
	BNE.b CODE_00A8D5
CODE_00A8D2:
	BRL.w CODE_00A960

CODE_00A8D5:
	REP.b #$20
	LDA.w #$00FF
	JSL.l CODE_009214
	REP.b #$20
	LDA.w #$0001
	JSL.l CODE_00923B
	REP.b #$20
	LDA.w #$0080
	STA.w $1F6D
	LDA.w #$7DC7
	STA.w $1F5B
	LDA.w #$0040
	ORA.w $0C0C
	STA.w $0C0C
	JSL.l CODE_01ABEF
	SEP.b #$20
	LDA.w $0C16
	JSR.w CODE_0099E9
	REP.b #$20
	LDA.w #$0001
	JSL.l CODE_00927C
	BRL.w CODE_00A99C

CODE_00A916:
	REP.b #$20
	LDA.w #$0001
	JSL.l CODE_00923B
	REP.b #$10
	LDX.w #$0C0A
	JSL.l CODE_02D132
	REP.b #$20
	LDA.w #$0001
	JSL.l CODE_00927C
	BRL.w CODE_00A99C

CODE_00A934:
	REP.b #$20
	LDA.w #$00FF
	JSL.l CODE_009214
	REP.b #$20
	LDA.w #$0001
	JSL.l CODE_00923B
	REP.b #$30
	LDA.w #$7DC7
	STA.w $1F5B
	LDX.w #$0C0A
	JSL.l CODE_02CF45
	REP.b #$20
	LDA.w #$0001
	JSL.l CODE_00927C
	BRA.b CODE_00A99C

CODE_00A960:
	REP.b #$20
	LDA.w #$0000
	JSL.l CODE_009214
	SEP.b #$20
	LDA.w $0C16
	EOR.b #$FF
	INC
	REP.b #$30
	AND.w #$00FF
	STA.b $61
	JSL.l CODE_00A507
	REP.b #$20
	LDA.w #$0001
	STA.w $039F
	LDA.w $0C0E
	STA.w $1F6F
	LDA.w $0C11
	STA.w $1F71
	SEP.b #$20
	LDA.w $0C16
	STA.w $1F73
	JSL.l CODE_01ADC9
CODE_00A99C:
	REP.b #$10
	LDX.w #$0C0A
	JSL.l CODE_02CEA2
	REP.b #$20
	LDA.w #$0001
	JSR.w CODE_0095D7
CODE_00A9AD:
	REP.b #$20
	LDA.w $0342
	BIT.w #$0200
	BNE.b CODE_00A9C4
	LDA.w !RAM_FB2000_Level_MasterDeathTimerLo
	BNE.b CODE_00A9C4
	JSL.l CODE_02CB46
	JSL.l CODE_02CFB5
CODE_00A9C4:
	JSL.l CODE_01AAAE
	REP.b #$30
	LDA.w !RAM_FB2000_Level_MasterDeathTimerLo
	BEQ.b CODE_00AA1D
	CMP.w #$0010
	BCS.b CODE_00A9F2
	SEP.b #$20
	LDA.w !REGISTER_SoftwareLatchForHVCounter
	LDA.w !REGISTER_VCounter
	EOR.w !REGISTER_HCounter
	REP.b #$20
	AND.w #$001F
	SEP.b #$20
	STA.w !REGISTER_BG3HorizScrollOffset
	STZ.w !REGISTER_BG3HorizScrollOffset
	STA.w !REGISTER_BG3VertScrollOffset
	STZ.w !REGISTER_BG3VertScrollOffset
CODE_00A9F2:
	REP.b #$30
	DEC.w !RAM_FB2000_Level_MasterDeathTimerLo
	BNE.b CODE_00AA1D
	LDX.w #!RAM_FB2000_Level_Smiloids_SpriteTableStart
CODE_00A9FC:
	LDA.b $00,x
	BIT.w #$0010
	BEQ.b CODE_00AA0F
	BIT.w #$0100
	BEQ.b CODE_00AA0F
	LDA.w #$FFEF
	AND.b $00,x
	STA.b $00,x
CODE_00AA0F:
	TXA
	CLC
	ADC.w #$0070
	TAX
	CPX.w #$129A
	BCC.b CODE_00A9FC
	JMP.w CODE_009511

CODE_00AA1D:
	JMP.w CODE_00A62B

CODE_00AA20:
	JSL.l CODE_02C8FF
	JSL.l CODE_018228
	JSL.l CODE_02C8FF
	JML.l CODE_00C94B

CODE_00AA30:
	SEP.b #$20
	PHA
	LDA.b $5B
	STA.w !REGISTER_BG1HorizScrollOffset
	LDA.b $5C
	STA.w !REGISTER_BG1HorizScrollOffset
	LDA.b $61
	STA.w !REGISTER_BG2HorizScrollOffset
	LDA.b $62
	STA.w !REGISTER_BG2HorizScrollOffset
	LDA.w !REGISTER_IRQEnable
	PLA
	RTI

CODE_00AA4C:
	REP.b #$30
	STA.w $03C1
	PHY
	LDY.w #$0000
	LDA.b [$66],y
	STA.w $03BD
	ASL
	ASL
	ASL
	STA.w $03C3
	LDY.w #$0002
	LDA.b [$66],y
	STA.w $03BF
	TXA
	AND.w #$0006
	CLC
	ADC.w #$0004
	TAY
	LDA.b [$66],y
	STA.b $66
	PLY
	TXA
	BMI.b CODE_00AA8E
	CLC
	ADC.w $03C3
	CMP.w #$0090
	BCS.b CODE_00AA8E
	TYA
	BMI.b CODE_00AA8E
	CLC
	ADC.w $03BF
	CMP.w #$0070
	BCC.b CODE_00AA8F
CODE_00AA8E:
	RTL

CODE_00AA8F:
	REP.b #$30
	PHX
	PHY
	TYA
	ASL
	TAY
	LDA.w DATA_038528,y
	CLC
	ADC.b $4A
	STA.b $4D
	CLC
	ADC.w #$0010
	STA.b $50
	TXA
	AND.w #$FFF8
	ASL
	ASL
	TAY
	LDX.w $03BD
CODE_00AAAE:
	PHY
	SEP.b #$20
	LDY.w #$0000
	LDA.b [$66],y
	INY
	ORA.b [$66],y
	INY
	ORA.b [$66],y
	INY
	ORA.b [$66],y
	EOR.b #$FF
	STA.b $69
	XBA
	LDA.b $69
	REP.b #$20
	STA.b $69
	PLY
	LDA.b [$4D],y
	AND.b $69
	ORA.b [$66]
	STA.b [$4D],y
	INC.b $66
	INC.b $66
	LDA.b [$50],y
	AND.b $69
	ORA.b [$66]
	STA.b [$50],y
	INC.b $66
	INC.b $66
	TYA
	CLC
	ADC.w #$0020
	TAY
	DEX
	BNE.b CODE_00AAAE
	PLY
	PLX
	INY
	DEC.w $03BF
	BEQ.b CODE_00AAF6
	BRA.b CODE_00AA8F

CODE_00AAF6:
	RTL

CODE_00AAF7:
	REP.b #$30
	PHA
	STY.b $6F
	TXA
	BMI.b CODE_00AB05
	CMP.b $6F
	BCC.b CODE_00AB05
	TYX
	TAY
CODE_00AB05:
	TXA
	BPL.b CODE_00AB0D
	LDX.w #$0000
	BRA.b CODE_00AB14

CODE_00AB0D:
	CPX.w #$0090
	BCC.b CODE_00AB14
	PLA
	RTL

CODE_00AB14:
	TYA
	BPL.b CODE_00AB19
	PLA
	RTL

CODE_00AB19:
	CPY.w #$0090
	BCC.b CODE_00AB21
	LDY.w #$008F
CODE_00AB21:
	PLA
	CMP.w #$0070
	BCS.b CODE_00AB76
	PHX
	ASL
	TAX
	LDA.w DATA_038528,x
	CLC
	ADC.b $4A
	STA.b $4D
	CLC
	ADC.w #$0010
	STA.b $50
	PLX
	SEP.b #$20
	LDA.w DATA_039847,x
	EOR.b #$FF
	STA.b $6B
	STA.b $6C
	LDA.w DATA_0398D7,y
	EOR.b #$FF
	STA.b $6D
	STA.b $6E
	REP.b #$20
	TXA
	LSR
	LSR
	LSR
	STA.b $6F
	ASL
	ASL
	ASL
	ASL
	ASL
	PHA
	TYA
	LSR
	LSR
	LSR
	SEC
	SBC.b $6F
	TAX
	BNE.b CODE_00AB77
	PLY
	REP.b #$20
	LDA.b $6B
	ORA.b $6D
	PHA
	AND.b [$4D],y
	STA.b [$4D],y
	PLA
	AND.b [$50],y
	STA.b [$50],y
CODE_00AB76:
	RTL

CODE_00AB77:
	PLY
	LDA.b $6B
	AND.b [$4D],y
	STA.b [$4D],y
	LDA.b $6B
	AND.b [$50],y
	STA.b [$50],y
	TYA
	CLC
	ADC.w #$0020
	TAY
	DEX
	BEQ.b CODE_00AB9D
CODE_00AB8D:
	LDA.w #$0000
	STA.b [$4D],y
	STA.b [$50],y
	TYA
	CLC
	ADC.w #$0020
	TAY
	DEX
	BNE.b CODE_00AB8D
CODE_00AB9D:
	LDA.b $6D
	AND.b [$4D],y
	STA.b [$4D],y
	LDA.b $6D
	AND.b [$50],y
	STA.b [$50],y
	RTL

CODE_00ABAA:
	REP.b #$30
	PHA
	STY.b $6F
	TXA
	BMI.b CODE_00ABB8
	CMP.b $6F
	BCC.b CODE_00ABB8
	TYX
	TAY
CODE_00ABB8:
	TXA
	BPL.b CODE_00ABC0
	LDX.w #$0000
	BRA.b CODE_00ABC7

CODE_00ABC0:
	CPX.w #$0090
	BCC.b CODE_00ABC7
	PLA
	RTL

CODE_00ABC7:
	TYA
	BPL.b CODE_00ABCC
	PLA
	RTL

CODE_00ABCC:
	CPY.w #$0090
	BCC.b CODE_00ABD4
	LDY.w #$008F
CODE_00ABD4:
	PLA
	CMP.w #$0070
	BCS.b CODE_00AC45
	PHX
	ASL
	TAX
	LDA.w DATA_038528,x
	CLC
	ADC.b $4A
	STA.b $4D
	CLC
	ADC.w #$0010
	STA.b $50
	PLX
	SEP.b #$20
	LDA.w DATA_039847,x
	STA.b $6B
	EOR.b #$FF
	STA.b $6C
	LDA.w DATA_0398D7,y
	STA.b $6D
	EOR.b #$FF
	STA.b $6E
	REP.b #$20
	TXA
	LSR
	LSR
	LSR
	STA.b $6F
	ASL
	ASL
	ASL
	ASL
	ASL
	PHA
	TYA
	LSR
	LSR
	LSR
	SEC
	SBC.b $6F
	TAX
	BNE.b CODE_00AC46
	PLY
	SEP.b #$20
	LDA.b $6B
	AND.b $6D
	STA.b $6B
	LDA.b $6C
	ORA.b $6E
	STA.b $6C
	REP.b #$20
	LDA.b [$4D],y
	SEP.b #$20
	ORA.b $6B
	XBA
	AND.b $6C
	XBA
	REP.b #$20
	STA.b [$4D],y
	LDA.b [$50],y
	SEP.b #$20
	AND.b $6C
	XBA
	AND.b $6C
	XBA
	REP.b #$20
	STA.b [$50],y
CODE_00AC45:
	RTL

CODE_00AC46:
	PLY
	SEP.b #$20
	LDA.b $6B
	ORA.b [$4D],y
	STA.b [$4D],y
	LDA.b $6C
	AND.b [$50],y
	STA.b [$50],y
	INY
	LDA.b $6C
	AND.b [$4D],y
	STA.b [$4D],y
	LDA.b $6C
	AND.b [$50],y
	STA.b [$50],y
	REP.b #$20
	TYA
	CLC
	ADC.w #$001F
	TAY
	DEX
	BEQ.b CODE_00AC80
CODE_00AC6D:
	LDA.w #$00FF
	STA.b [$4D],y
	LDA.w #$0000
	STA.b [$50],y
	TYA
	CLC
	ADC.w #$0020
	TAY
	DEX
	BNE.b CODE_00AC6D
CODE_00AC80:
	SEP.b #$20
	LDA.b $6D
	ORA.b [$4D],y
	STA.b [$4D],y
	LDA.b $6E
	AND.b [$50],y
	STA.b [$50],y
	INY
	LDA.b $6E
	AND.b [$4D],y
	STA.b [$4D],y
	LDA.b $6E
	AND.b [$50],y
	STA.b [$50],y
	RTL

CODE_00AC9C:
	REP.b #$30
	PHA
	STY.b $6F
	TXA
	BMI.b CODE_00ACAA
	CMP.b $6F
	BCC.b CODE_00ACAA
	TYX
	TAY
CODE_00ACAA:
	TXA
	BPL.b CODE_00ACB2
	LDX.w #$0000
	BRA.b CODE_00ACB9

CODE_00ACB2:
	CPX.w #$0090
	BCC.b CODE_00ACB9
	PLA
	RTL

CODE_00ACB9:
	TYA
	BPL.b CODE_00ACBE
	PLA
	RTL

CODE_00ACBE:
	CPY.w #$0090
	BCC.b CODE_00ACC6
	LDY.w #$008F
CODE_00ACC6:
	REP.b #$20
	PLA
	CMP.w #$0070
	BCS.b CODE_00AD39
	PHX
	ASL
	TAX
	LDA.w DATA_038528,x
	CLC
	ADC.b $4A
	STA.b $4D
	CLC
	ADC.w #$0010
	STA.b $50
	PLX
	SEP.b #$20
	LDA.w DATA_039847,x
	STA.b $6C
	EOR.b #$FF
	STA.b $6B
	LDA.w DATA_0398D7,y
	STA.b $6E
	EOR.b #$FF
	STA.b $6D
	REP.b #$20
	TXA
	LSR
	LSR
	LSR
	STA.b $6F
	ASL
	ASL
	ASL
	ASL
	ASL
	PHA
	TYA
	LSR
	LSR
	LSR
	SEC
	SBC.b $6F
	TAX
	BNE.b CODE_00AD3A
	PLY
	SEP.b #$20
	LDA.b $6B
	ORA.b $6D
	STA.b $6B
	LDA.b $6C
	AND.b $6E
	STA.b $6C
	REP.b #$20
	LDA.b [$4D],y
	SEP.b #$20
	AND.b $6B
	XBA
	ORA.b $6C
	XBA
	REP.b #$20
	STA.b [$4D],y
	LDA.b [$50],y
	SEP.b #$20
	AND.b $6B
	XBA
	AND.b $6B
	XBA
	REP.b #$20
	STA.b [$50],y
CODE_00AD39:
	RTL

CODE_00AD3A:
	PLY
	SEP.b #$20
	LDA.b $6B
	AND.b [$4D],y
	STA.b [$4D],y
	LDA.b $6B
	AND.b [$50],y
	STA.b [$50],y
	INY
	LDA.b $6C
	ORA.b [$4D],y
	STA.b [$4D],y
	LDA.b $6B
	AND.b [$50],y
	STA.b [$50],y
	REP.b #$20
	TYA
	CLC
	ADC.w #$001F
	TAY
	DEX
	BEQ.b CODE_00AD74
CODE_00AD61:
	LDA.w #$FF00
	STA.b [$4D],y
	LDA.w #$0000
	STA.b [$50],y
	TYA
	CLC
	ADC.w #$0020
	TAY
	DEX
	BNE.b CODE_00AD61
CODE_00AD74:
	SEP.b #$20
	LDA.b $6D
	AND.b [$4D],y
	STA.b [$4D],y
	LDA.b $6D
	AND.b [$50],y
	STA.b [$50],y
	INY
	LDA.b $6E
	ORA.b [$4D],y
	STA.b [$4D],y
	LDA.b $6D
	AND.b [$50],y
	STA.b [$50],y
	RTL

CODE_00AD90:
	REP.b #$30
	PHA
	STY.b $6F
	TXA
	BMI.b CODE_00AD9E
	CMP.b $6F
	BCC.b CODE_00AD9E
	TYX
	TAY
CODE_00AD9E:
	TXA
	BPL.b CODE_00ADA6
	LDX.w #$0000
	BRA.b CODE_00ADAD

CODE_00ADA6:
	CPX.w #$0090
	BCC.b CODE_00ADAD
	PLA
	RTL

CODE_00ADAD:
	TYA
	BPL.b CODE_00ADB2
	PLA
	RTL

CODE_00ADB2:
	CPY.w #$0090
	BCC.b CODE_00ADBA
	LDY.w #$008F
CODE_00ADBA:
	PLA
	CMP.w #$0070
	BCS.b CODE_00AE0B
	PHX
	ASL
	TAX
	LDA.w DATA_038528,x
	CLC
	ADC.b $4A
	STA.b $4D
	CLC
	ADC.w #$0010
	STA.b $50
	PLX
	SEP.b #$20
	LDA.w DATA_039847,x
	STA.b $6C
	STA.b $6B
	LDA.w DATA_0398D7,y
	STA.b $6E
	STA.b $6D
	REP.b #$20
	TXA
	LSR
	LSR
	LSR
	STA.b $6F
	ASL
	ASL
	ASL
	ASL
	ASL
	PHA
	TYA
	LSR
	LSR
	LSR
	SEC
	SBC.b $6F
	TAX
	BNE.b CODE_00AE0C
	PLY
	LDA.b $6B
	AND.b $6D
	ORA.b [$4D],y
	STA.b [$4D],y
	LDA.b $6B
	EOR.b $6D
	AND.b [$50],y
	STA.b [$50],y
CODE_00AE0B:
	RTL

CODE_00AE0C:
	PLY
	LDA.b $6B
	ORA.b [$4D],y
	STA.b [$4D],y
	LDA.b $6B
	EOR.w #$FFFF
	AND.b [$50],y
	STA.b [$50],y
	TYA
	CLC
	ADC.w #$0020
	TAY
	DEX
	BEQ.b CODE_00AE38
CODE_00AE25:
	LDA.w #$FFFF
	STA.b [$4D],y
	LDA.w #$0000
	STA.b [$50],y
	TYA
	CLC
	ADC.w #$0020
	TAY
	DEX
	BNE.b CODE_00AE25
CODE_00AE38:
	LDA.b $6D
	ORA.b [$4D],y
	STA.b [$4D],y
	LDA.b $6D
	EOR.w #$FFFF
	AND.b [$50],y
	STA.b [$50],y
	RTL

CODE_00AE48:
	REP.b #$30
	PHA
	STY.b $6F
	TXA
	BMI.b CODE_00AE56
	CMP.b $6F
	BCC.b CODE_00AE56
	TYX
	TAY
CODE_00AE56:
	TXA
	BPL.b CODE_00AE5E
	LDX.w #$0000
	BRA.b CODE_00AE65

CODE_00AE5E:
	CPX.w #$0090
	BCC.b CODE_00AE65
	PLA
	RTL

CODE_00AE65:
	TYA
	BPL.b CODE_00AE6A
	PLA
	RTL

CODE_00AE6A:
	CPY.w #$0090
	BCC.b CODE_00AE72
	LDY.w #$008F
CODE_00AE72:
	PLA
	CMP.w #$0070
	BCS.b CODE_00AEE1
	PHX
	ASL
	TAX
	LDA.w DATA_038528,x
	CLC
	ADC.b $4A
	STA.b $4D
	CLC
	ADC.w #$0010
	STA.b $50
	PLX
	SEP.b #$20
	LDA.w DATA_039847,x
	EOR.b #$FF
	STA.b $6B
	STA.b $6C
	LDA.w DATA_0398D7,y
	EOR.b #$FF
	STA.b $6D
	STA.b $6E
	REP.b #$20
	TXA
	LSR
	LSR
	LSR
	STA.b $6F
	ASL
	ASL
	ASL
	ASL
	ASL
	PHA
	TYA
	LSR
	LSR
	LSR
	SEC
	SBC.b $6F
	TAX
	BNE.b CODE_00AEE2
	PLY
	REP.b #$20
	LDA.b $6B
	ORA.b $6D
	AND.b [$4D],y
	STA.b [$4D],y
	SEP.b #$20
	LDA.b $6B
	ORA.b $6D
	EOR.b #$FF
	STA.b $6B
	LDA.b $6C
	ORA.b $6E
	STA.b $6C
	REP.b #$20
	LDA.b [$50],y
	SEP.b #$20
	ORA.b $6B
	XBA
	AND.b $6C
	XBA
	REP.b #$20
	STA.b [$50],y
CODE_00AEE1:
	RTL

CODE_00AEE2:
	PLY
	LDA.b $6B
	AND.b [$4D],y
	STA.b [$4D],y
	SEP.b #$20
	LDA.b $6B
	EOR.b #$FF
	ORA.b [$50],y
	STA.b [$50],y
	INY
	LDA.b $6C
	AND.b [$50],y
	STA.b [$50],y
	REP.b #$20
	TYA
	CLC
	ADC.w #$001F
	TAY
	DEX
	BEQ.b CODE_00AF18
CODE_00AF05:
	LDA.w #$0000
	STA.b [$4D],y
	LDA.w #$00FF
	STA.b [$50],y
	TYA
	CLC
	ADC.w #$0020
	TAY
	DEX
	BNE.b CODE_00AF05
CODE_00AF18:
	LDA.b $6D
	AND.b [$4D],y
	STA.b [$4D],y
	SEP.b #$20
	LDA.b $6D
	EOR.b #$FF
	ORA.b [$50],y
	STA.b [$50],y
	INY
	LDA.b $6E
	AND.b [$50],y
	STA.b [$50],y
	RTL

CODE_00AF30:
	REP.b #$30
	PHA
	STY.b $6F
	TXA
	BMI.b CODE_00AF3E
	CMP.b $6F
	BCC.b CODE_00AF3E
	TYX
	TAY
CODE_00AF3E:
	TXA
	BPL.b CODE_00AF46
	LDX.w #$0000
	BRA.b CODE_00AF4D

CODE_00AF46:
	CPX.w #$0090
	BCC.b CODE_00AF4D
	PLA
	RTL

CODE_00AF4D:
	TYA
	BPL.b CODE_00AF52
	PLA
	RTL

CODE_00AF52:
	CPY.w #$0090
	BCC.b CODE_00AF5A
	LDY.w #$008F
CODE_00AF5A:
	PLA
	CMP.w #$0070
	BCS.b CODE_00AFCB
	PHX
	ASL
	TAX
	LDA.w DATA_038528,x
	CLC
	ADC.b $4A
	STA.b $4D
	CLC
	ADC.w #$0010
	STA.b $50
	PLX
	SEP.b #$20
	LDA.w DATA_039847,x
	STA.b $6B
	EOR.b #$FF
	STA.b $6C
	LDA.w DATA_0398D7,y
	STA.b $6D
	EOR.b #$FF
	STA.b $6E
	REP.b #$20
	TXA
	LSR
	LSR
	LSR
	STA.b $6F
	ASL
	ASL
	ASL
	ASL
	ASL
	PHA
	TYA
	LSR
	LSR
	LSR
	SEC
	SBC.b $6F
	TAX
	BNE.b CODE_00AFCC
	PLY
	SEP.b #$20
	LDA.b $6B
	AND.b $6D
	STA.b $6B
	LDA.b $6C
	ORA.b $6E
	STA.b $6C
	REP.b #$20
	LDA.b [$4D],y
	SEP.b #$20
	ORA.b $6B
	XBA
	AND.b $6C
	XBA
	REP.b #$20
	STA.b [$4D],y
	LDA.b [$50],y
	SEP.b #$20
	ORA.b $6B
	XBA
	AND.b $6C
	XBA
	REP.b #$20
	STA.b [$50],y
CODE_00AFCB:
	RTL

CODE_00AFCC:
	PLY
	SEP.b #$20
	LDA.b $6B
	ORA.b [$4D],y
	STA.b [$4D],y
	LDA.b $6B
	ORA.b [$50],y
	STA.b [$50],y
	INY
	LDA.b $6C
	AND.b [$4D],y
	STA.b [$4D],y
	LDA.b $6C
	AND.b [$50],y
	STA.b [$50],y
	REP.b #$20
	TYA
	CLC
	ADC.w #$001F
	TAY
	DEX
	BEQ.b CODE_00B003
CODE_00AFF3:
	LDA.w #$00FF
	STA.b [$4D],y
	STA.b [$50],y
	TYA
	CLC
	ADC.w #$0020
	TAY
	DEX
	BNE.b CODE_00AFF3
CODE_00B003:
	SEP.b #$20
	LDA.b $6D
	ORA.b [$4D],y
	STA.b [$4D],y
	LDA.b $6D
	ORA.b [$50],y
	STA.b [$50],y
	INY
	LDA.b $6E
	AND.b [$4D],y
	STA.b [$4D],y
	LDA.b $6E
	AND.b [$50],y
	STA.b [$50],y
	RTL

CODE_00B01F:
	REP.b #$30
	PHA
	STY.b $6F
	TXA
	BMI.b CODE_00B02D
	CMP.b $6F
	BCC.b CODE_00B02D
	TYX
	TAY
CODE_00B02D:
	TXA
	BPL.b CODE_00B035
	LDX.w #$0000
	BRA.b CODE_00B03C

CODE_00B035:
	CPX.w #$0090
	BCC.b CODE_00B03C
	PLA
	RTL

CODE_00B03C:
	TYA
	BPL.b CODE_00B041
	PLA
	RTL

CODE_00B041:
	CPY.w #$0090
	BCC.b CODE_00B049
	LDY.w #$008F
CODE_00B049:
	REP.b #$20
	PLA
	CMP.w #$0070
	BCS.b CODE_00B0BC
	PHX
	ASL
	TAX
	LDA.w DATA_038528,x
	CLC
	ADC.b $4A
	STA.b $4D
	CLC
	ADC.w #$0010
	STA.b $50
	PLX
	SEP.b #$20
	LDA.w DATA_039847,x
	STA.b $6C
	EOR.b #$FF
	STA.b $6B
	LDA.w DATA_0398D7,y
	STA.b $6E
	EOR.b #$FF
	STA.b $6D
	REP.b #$20
	TXA
	LSR
	LSR
	LSR
	STA.b $6F
	ASL
	ASL
	ASL
	ASL
	ASL
	PHA
	TYA
	LSR
	LSR
	LSR
	SEC
	SBC.b $6F
	TAX
	BNE.b CODE_00B0BD
	PLY
	SEP.b #$20
	LDA.b $6B
	ORA.b $6D
	STA.b $6B
	LDA.b $6C
	AND.b $6E
	STA.b $6C
	REP.b #$20
	LDA.b [$4D],y
	SEP.b #$20
	AND.b $6B
	XBA
	ORA.b $6C
	XBA
	REP.b #$20
	STA.b [$4D],y
	LDA.b [$50],y
	SEP.b #$20
	ORA.b $6C
	XBA
	AND.b $6B
	XBA
	REP.b #$20
	STA.b [$50],y
CODE_00B0BC:
	RTL

CODE_00B0BD:
	PLY
	SEP.b #$20
	LDA.b $6B
	AND.b [$4D],y
	STA.b [$4D],y
	LDA.b $6C
	ORA.b [$50],y
	STA.b [$50],y
	INY
	LDA.b $6C
	ORA.b [$4D],y
	STA.b [$4D],y
	LDA.b $6B
	AND.b [$50],y
	STA.b [$50],y
	REP.b #$20
	TYA
	CLC
	ADC.w #$001F
	TAY
	DEX
	BEQ.b CODE_00B0F7
CODE_00B0E4:
	LDA.w #$FF00
	STA.b [$4D],y
	LDA.w #$00FF
	STA.b [$50],y
	TYA
	CLC
	ADC.w #$0020
	TAY
	DEX
	BNE.b CODE_00B0E4
CODE_00B0F7:
	SEP.b #$20
	LDA.b $6D
	AND.b [$4D],y
	STA.b [$4D],y
	LDA.b $6E
	ORA.b [$50],y
	STA.b [$50],y
	INY
	LDA.b $6E
	ORA.b [$4D],y
	STA.b [$4D],y
	LDA.b $6D
	AND.b [$50],y
	STA.b [$50],y
	RTL

CODE_00B113:
	REP.b #$30
	PHA
	STY.b $6F
	TXA
	BMI.b CODE_00B121
	CMP.b $6F
	BCC.b CODE_00B121
	TYX
	TAY
CODE_00B121:
	TXA
	BPL.b CODE_00B129
	LDX.w #$0000
	BRA.b CODE_00B130

CODE_00B129:
	CPX.w #$0090
	BCC.b CODE_00B130
	PLA
	RTL

CODE_00B130:
	TYA
	BPL.b CODE_00B135
	PLA
	RTL

CODE_00B135:
	CPY.w #$0090
	BCC.b CODE_00B13D
	LDY.w #$008F
CODE_00B13D:
	PLA
	CMP.w #$0070
	BCS.b CODE_00B1A4
	PHX
	ASL
	TAX
	LDA.w DATA_038528,x
	CLC
	ADC.b $4A
	STA.b $4D
	CLC
	ADC.w #$0010
	STA.b $50
	PLX
	SEP.b #$20
	LDA.w DATA_039847,x
	STA.b $6B
	STA.b $6C
	LDA.w DATA_0398D7,y
	STA.b $6D
	STA.b $6E
	REP.b #$20
	TXA
	LSR
	LSR
	LSR
	STA.b $6F
	ASL
	ASL
	ASL
	ASL
	ASL
	PHA
	TYA
	LSR
	LSR
	LSR
	SEC
	SBC.b $6F
	TAX
	BNE.b CODE_00B1A5
	PLY
	LDA.b $6B
	AND.b $6D
	ORA.b [$4D],y
	STA.b [$4D],y
	SEP.b #$20
	LDA.b $6B
	ORA.b $6D
	STA.b $6B
	LDA.b $6C
	AND.b $6E
	STA.b $6C
	REP.b #$20
	LDA.b [$50],y
	SEP.b #$20
	ORA.b $6C
	XBA
	AND.b $6B
	XBA
	REP.b #$20
	STA.b [$50],y
CODE_00B1A4:
	RTL

CODE_00B1A5:
	PLY
	LDA.b $6B
	ORA.b [$4D],y
	STA.b [$4D],y
	SEP.b #$20
	LDA.b $6B
	ORA.b [$50],y
	STA.b [$50],y
	INY
	LDA.b $6C
	EOR.b #$FF
	AND.b [$50],y
	STA.b [$50],y
	REP.b #$20
	TYA
	CLC
	ADC.w #$001F
	TAY
	DEX
	BEQ.b CODE_00B1DB
CODE_00B1C8:
	LDA.w #$FFFF
	STA.b [$4D],y
	LDA.w #$00FF
	STA.b [$50],y
	TYA
	CLC
	ADC.w #$0020
	TAY
	DEX
	BNE.b CODE_00B1C8
CODE_00B1DB:
	LDA.b $6D
	ORA.b [$4D],y
	STA.b [$4D],y
	SEP.b #$20
	LDA.b $6D
	ORA.b [$50],y
	STA.b [$50],y
	INY
	LDA.b $6E
	EOR.b #$FF
	AND.b [$50],y
	STA.b [$50],y
	RTL

CODE_00B1F3:
	REP.b #$30
	PHA
	STY.b $6F
	TXA
	BMI.b CODE_00B201
	CMP.b $6F
	BCC.b CODE_00B201
	TYX
	TAY
CODE_00B201:
	TXA
	BPL.b CODE_00B209
	LDX.w #$0000
	BRA.b CODE_00B210

CODE_00B209:
	CPX.w #$0090
	BCC.b CODE_00B210
	PLA
	RTL

CODE_00B210:
	TYA
	BPL.b CODE_00B215
	PLA
	RTL

CODE_00B215:
	CPY.w #$0090
	BCC.b CODE_00B21D
	LDY.w #$008F
CODE_00B21D:
	PLA
	CMP.w #$0070
	BCS.b CODE_00B28A
	PHX
	ASL
	TAX
	LDA.w DATA_038528,x
	CLC
	ADC.b $4A
	STA.b $4D
	CLC
	ADC.w #$0010
	STA.b $50
	PLX
	SEP.b #$20
	LDA.w DATA_039847,x
	EOR.b #$FF
	STA.b $6B
	STA.b $6C
	LDA.w DATA_0398D7,y
	EOR.b #$FF
	STA.b $6D
	STA.b $6E
	REP.b #$20
	TXA
	LSR
	LSR
	LSR
	STA.b $6F
	ASL
	ASL
	ASL
	ASL
	ASL
	PHA
	TYA
	LSR
	LSR
	LSR
	SEC
	SBC.b $6F
	TAX
	BNE.b CODE_00B28B
	PLY
	REP.b #$20
	LDA.b $6B
	ORA.b $6D
	AND.b [$4D],y
	STA.b [$4D],y
	SEP.b #$20
	LDA.b $6B
	AND.b $6D
	STA.b $6B
	LDA.b $6C
	ORA.b $6E
	STA.b $6C
	REP.b #$20
	LDA.b [$50],y
	SEP.b #$20
	AND.b $6C
	XBA
	ORA.b $6B
	XBA
	REP.b #$20
	STA.b [$50],y
CODE_00B28A:
	RTL

CODE_00B28B:
	PLY
	LDA.b $6B
	AND.b [$4D],y
	STA.b [$4D],y
	SEP.b #$20
	LDA.b $6C
	AND.b [$50],y
	STA.b [$50],y
	INY
	LDA.b $6C
	EOR.b #$FF
	ORA.b [$50],y
	STA.b [$50],y
	REP.b #$20
	TYA
	CLC
	ADC.w #$001F
	TAY
	DEX
	BEQ.b CODE_00B2C1
CODE_00B2AE:
	LDA.w #$0000
	STA.b [$4D],y
	LDA.w #$FF00
	STA.b [$50],y
	TYA
	CLC
	ADC.w #$0020
	TAY
	DEX
	BNE.b CODE_00B2AE
CODE_00B2C1:
	LDA.b $6D
	AND.b [$4D],y
	STA.b [$4D],y
	SEP.b #$20
	LDA.b $6E
	AND.b [$50],y
	STA.b [$50],y
	INY
	LDA.b $6E
	EOR.b #$FF
	ORA.b [$50],y
	STA.b [$50],y
	RTL

CODE_00B2D9:
	REP.b #$30
	PHA
	STY.b $6F
	TXA
	BMI.b CODE_00B2E7
	CMP.b $6F
	BCC.b CODE_00B2E7
	TYX
	TAY
CODE_00B2E7:
	TXA
	BPL.b CODE_00B2EF
	LDX.w #$0000
	BRA.b CODE_00B2F6

CODE_00B2EF:
	CPX.w #$0090
	BCC.b CODE_00B2F6
	PLA
	RTL

CODE_00B2F6:
	TYA
	BPL.b CODE_00B2FB
	PLA
	RTL

CODE_00B2FB:
	CPY.w #$0090
	BCC.b CODE_00B303
	LDY.w #$008F
CODE_00B303:
	PLA
	CMP.w #$0070
	BCS.b CODE_00B374
	PHX
	ASL
	TAX
	LDA.w DATA_038528,x
	CLC
	ADC.b $4A
	STA.b $4D
	CLC
	ADC.w #$0010
	STA.b $50
	PLX
	SEP.b #$20
	LDA.w DATA_039847,x
	STA.b $6B
	EOR.b #$FF
	STA.b $6C
	LDA.w DATA_0398D7,y
	STA.b $6D
	EOR.b #$FF
	STA.b $6E
	REP.b #$20
	TXA
	LSR
	LSR
	LSR
	STA.b $6F
	ASL
	ASL
	ASL
	ASL
	ASL
	PHA
	TYA
	LSR
	LSR
	LSR
	SEC
	SBC.b $6F
	TAX
	BNE.b CODE_00B375
	PLY
	SEP.b #$20
	LDA.b $6B
	AND.b $6D
	STA.b $6B
	LDA.b $6C
	ORA.b $6E
	STA.b $6C
	REP.b #$20
	LDA.b [$4D],y
	SEP.b #$20
	ORA.b $6B
	XBA
	AND.b $6C
	XBA
	REP.b #$20
	STA.b [$4D],y
	LDA.b [$50],y
	SEP.b #$20
	AND.b $6C
	XBA
	ORA.b $6B
	XBA
	REP.b #$20
	STA.b [$50],y
CODE_00B374:
	RTL

CODE_00B375:
	PLY
	SEP.b #$20
	LDA.b $6B
	ORA.b [$4D],y
	STA.b [$4D],y
	LDA.b $6C
	AND.b [$50],y
	STA.b [$50],y
	INY
	LDA.b $6C
	AND.b [$4D],y
	STA.b [$4D],y
	LDA.b $6B
	ORA.b [$50],y
	STA.b [$50],y
	REP.b #$20
	TYA
	CLC
	ADC.w #$001F
	TAY
	DEX
	BEQ.b CODE_00B3AF
CODE_00B39C:
	LDA.w #$00FF
	STA.b [$4D],y
	LDA.w #$FF00
	STA.b [$50],y
	TYA
	CLC
	ADC.w #$0020
	TAY
	DEX
	BNE.b CODE_00B39C
CODE_00B3AF:
	SEP.b #$20
	LDA.b $6D
	ORA.b [$4D],y
	STA.b [$4D],y
	LDA.b $6E
	AND.b [$50],y
	STA.b [$50],y
	INY
	LDA.b $6E
	AND.b [$4D],y
	STA.b [$4D],y
	LDA.b $6D
	ORA.b [$50],y
	STA.b [$50],y
	RTL

CODE_00B3CB:
	REP.b #$30
	PHA
	STY.b $6F
	TXA
	BMI.b CODE_00B3D9
	CMP.b $6F
	BCC.b CODE_00B3D9
	TYX
	TAY
CODE_00B3D9:
	TXA
	BPL.b CODE_00B3E1
	LDX.w #$0000
	BRA.b CODE_00B3E8

CODE_00B3E1:
	CPX.w #$0090
	BCC.b CODE_00B3E8
	PLA
	RTL

CODE_00B3E8:
	TYA
	BPL.b CODE_00B3ED
	PLA
	RTL

CODE_00B3ED:
	CPY.w #$0090
	BCC.b CODE_00B3F5
	LDY.w #$008F
CODE_00B3F5:
	REP.b #$20
	PLA
	CMP.w #$0070
	BCS.b CODE_00B468
	PHX
	ASL
	TAX
	LDA.w DATA_038528,x
	CLC
	ADC.b $4A
	STA.b $4D
	CLC
	ADC.w #$0010
	STA.b $50
	PLX
	SEP.b #$20
	LDA.w DATA_039847,x
	STA.b $6C
	EOR.b #$FF
	STA.b $6B
	LDA.w DATA_0398D7,y
	STA.b $6E
	EOR.b #$FF
	STA.b $6D
	REP.b #$20
	TXA
	LSR
	LSR
	LSR
	STA.b $6F
	ASL
	ASL
	ASL
	ASL
	ASL
	PHA
	TYA
	LSR
	LSR
	LSR
	SEC
	SBC.b $6F
	TAX
	BNE.b CODE_00B469
	PLY
	SEP.b #$20
	LDA.b $6B
	ORA.b $6D
	STA.b $6B
	LDA.b $6C
	AND.b $6E
	STA.b $6C
	REP.b #$20
	LDA.b [$4D],y
	SEP.b #$20
	AND.b $6B
	XBA
	ORA.b $6C
	XBA
	REP.b #$20
	STA.b [$4D],y
	LDA.b [$50],y
	SEP.b #$20
	AND.b $6B
	XBA
	ORA.b $6C
	XBA
	REP.b #$20
	STA.b [$50],y
CODE_00B468:
	RTL

CODE_00B469:
	PLY
	SEP.b #$20
	LDA.b $6B
	AND.b [$4D],y
	STA.b [$4D],y
	LDA.b $6B
	AND.b [$50],y
	STA.b [$50],y
	INY
	LDA.b $6C
	ORA.b [$4D],y
	STA.b [$4D],y
	LDA.b $6C
	ORA.b [$50],y
	STA.b [$50],y
	REP.b #$20
	TYA
	CLC
	ADC.w #$001F
	TAY
	DEX
	BEQ.b CODE_00B4A0
CODE_00B490:
	LDA.w #$FF00
	STA.b [$4D],y
	STA.b [$50],y
	TYA
	CLC
	ADC.w #$0020
	TAY
	DEX
	BNE.b CODE_00B490
CODE_00B4A0:
	SEP.b #$20
	LDA.b $6D
	AND.b [$4D],y
	STA.b [$4D],y
	LDA.b $6D
	AND.b [$50],y
	STA.b [$50],y
	INY
	LDA.b $6E
	ORA.b [$4D],y
	STA.b [$4D],y
	LDA.b $6E
	ORA.b [$50],y
	STA.b [$50],y
	RTL

CODE_00B4BC:
	REP.b #$30
	PHA
	STY.b $6F
	TXA
	BMI.b CODE_00B4CA
	CMP.b $6F
	BCC.b CODE_00B4CA
	TYX
	TAY
CODE_00B4CA:
	TXA
	BPL.b CODE_00B4D2
	LDX.w #$0000
	BRA.b CODE_00B4D9

CODE_00B4D2:
	CPX.w #$0090
	BCC.b CODE_00B4D9
	PLA
	RTL

CODE_00B4D9:
	TYA
	BPL.b CODE_00B4DE
	PLA
	RTL

CODE_00B4DE:
	CPY.w #$0090
	BCC.b CODE_00B4E6
	LDY.w #$008F
CODE_00B4E6:
	PLA
	CMP.w #$0070
	BCS.b CODE_00B54D
	PHX
	ASL
	TAX
	LDA.w DATA_038528,x
	CLC
	ADC.b $4A
	STA.b $4D
	CLC
	ADC.w #$0010
	STA.b $50
	PLX
	SEP.b #$20
	LDA.w DATA_039847,x
	STA.b $6C
	STA.b $6B
	LDA.w DATA_0398D7,y
	STA.b $6E
	STA.b $6D
	REP.b #$20
	TXA
	LSR
	LSR
	LSR
	STA.b $6F
	ASL
	ASL
	ASL
	ASL
	ASL
	PHA
	TYA
	LSR
	LSR
	LSR
	SEC
	SBC.b $6F
	TAX
	BNE.b CODE_00B54E
	PLY
	LDA.b $6B
	AND.b $6D
	ORA.b [$4D],y
	STA.b [$4D],y
	SEP.b #$20
	LDA.b $6B
	ORA.b $6D
	STA.b $6B
	LDA.b $6C
	AND.b $6E
	STA.b $6C
	REP.b #$20
	LDA.b [$50],y
	SEP.b #$20
	AND.b $6B
	XBA
	ORA.b $6C
	XBA
	REP.b #$20
	STA.b [$50],y
CODE_00B54D:
	RTL

CODE_00B54E:
	PLY
	LDA.b $6B
	ORA.b [$4D],y
	STA.b [$4D],y
	SEP.b #$20
	LDA.b $6B
	AND.b [$50],y
	STA.b [$50],y
	INY
	LDA.b $6C
	ORA.b [$50],y
	STA.b [$50],y
	REP.b #$20
	TYA
	CLC
	ADC.w #$001F
	TAY
	DEX
	BEQ.b CODE_00B582
CODE_00B56F:
	LDA.w #$FFFF
	STA.b [$4D],y
	LDA.w #$FF00
	STA.b [$50],y
	TYA
	CLC
	ADC.w #$0020
	TAY
	DEX
	BNE.b CODE_00B56F
CODE_00B582:
	LDA.b $6D
	ORA.b [$4D],y
	STA.b [$4D],y
	SEP.b #$20
	LDA.b $6D
	AND.b [$50],y
	STA.b [$50],y
	INY
	LDA.b $6E
	ORA.b [$50],y
	STA.b [$50],y
	RTL

CODE_00B598:
	REP.b #$30
	PHA
	STY.b $6F
	TXA
	BMI.b CODE_00B5A6
	CMP.b $6F
	BCC.b CODE_00B5A6
	TYX
	TAY
CODE_00B5A6:
	TXA
	BPL.b CODE_00B5AE
	LDX.w #$0000
	BRA.b CODE_00B5B5

CODE_00B5AE:
	CPX.w #$0090
	BCC.b CODE_00B5B5
	PLA
	RTL

CODE_00B5B5:
	TYA
	BPL.b CODE_00B5BA
	PLA
	RTL

CODE_00B5BA:
	CPY.w #$0090
	BCC.b CODE_00B5C2
	LDY.w #$008F
CODE_00B5C2:
	PLA
	CMP.w #$0070
	BCS.b CODE_00B61C
	PHX
	ASL
	TAX
	LDA.w DATA_038528,x
	CLC
	ADC.b $4A
	STA.b $4D
	CLC
	ADC.w #$0010
	STA.b $50
	PLX
	SEP.b #$20
	LDA.w DATA_039847,x
	EOR.b #$FF
	STA.b $6B
	STA.b $6C
	LDA.w DATA_0398D7,y
	EOR.b #$FF
	STA.b $6D
	STA.b $6E
	REP.b #$20
	TXA
	LSR
	LSR
	LSR
	STA.b $6F
	ASL
	ASL
	ASL
	ASL
	ASL
	PHA
	TYA
	LSR
	LSR
	LSR
	SEC
	SBC.b $6F
	TAX
	BNE.b CODE_00B61D
	PLY
	REP.b #$20
	LDA.b $6B
	ORA.b $6D
	AND.b [$4D],y
	STA.b [$4D],y
	LDA.b $6B
	ORA.b $6D
	EOR.w #$FFFF
	ORA.b [$50],y
	STA.b [$50],y
CODE_00B61C:
	RTL

CODE_00B61D:
	PLY
	LDA.b $6B
	AND.b [$4D],y
	STA.b [$4D],y
	LDA.b $6B
	EOR.w #$FFFF
	ORA.b [$50],y
	STA.b [$50],y
	TYA
	CLC
	ADC.w #$0020
	TAY
	DEX
	BEQ.b CODE_00B649
CODE_00B636:
	LDA.w #$0000
	STA.b [$4D],y
	LDA.w #$FFFF
	STA.b [$50],y
	TYA
	CLC
	ADC.w #$0020
	TAY
	DEX
	BNE.b CODE_00B636
CODE_00B649:
	LDA.b $6D
	AND.b [$4D],y
	STA.b [$4D],y
	LDA.b $6D
	EOR.w #$FFFF
	ORA.b [$50],y
	STA.b [$50],y
	RTL

CODE_00B659:
	REP.b #$30
	PHA
	STY.b $6F
	TXA
	BMI.b CODE_00B667
	CMP.b $6F
	BCC.b CODE_00B667
	TYX
	TAY
CODE_00B667:
	TXA
	BPL.b CODE_00B66F
	LDX.w #$0000
	BRA.b CODE_00B676

CODE_00B66F:
	CPX.w #$0090
	BCC.b CODE_00B676
	PLA
	RTL

CODE_00B676:
	TYA
	BPL.b CODE_00B67B
	PLA
	RTL

CODE_00B67B:
	CPY.w #$0090
	BCC.b CODE_00B683
	LDY.w #$008F
CODE_00B683:
	PLA
	CMP.w #$0070
	BCS.b CODE_00B6F4
	PHX
	ASL
	TAX
	LDA.w DATA_038528,x
	CLC
	ADC.b $4A
	STA.b $4D
	CLC
	ADC.w #$0010
	STA.b $50
	PLX
	SEP.b #$20
	LDA.w DATA_039847,x
	STA.b $6B
	EOR.b #$FF
	STA.b $6C
	LDA.w DATA_0398D7,y
	STA.b $6D
	EOR.b #$FF
	STA.b $6E
	REP.b #$20
	TXA
	LSR
	LSR
	LSR
	STA.b $6F
	ASL
	ASL
	ASL
	ASL
	ASL
	PHA
	TYA
	LSR
	LSR
	LSR
	SEC
	SBC.b $6F
	TAX
	BNE.b CODE_00B6F5
	PLY
	SEP.b #$20
	LDA.b $6B
	AND.b $6D
	STA.b $6B
	LDA.b $6C
	ORA.b $6E
	STA.b $6C
	REP.b #$20
	LDA.b [$4D],y
	SEP.b #$20
	ORA.b $6B
	XBA
	AND.b $6C
	XBA
	REP.b #$20
	STA.b [$4D],y
	LDA.b [$50],y
	SEP.b #$20
	ORA.b $6B
	XBA
	ORA.b $6B
	XBA
	REP.b #$20
	STA.b [$50],y
CODE_00B6F4:
	RTL

CODE_00B6F5:
	PLY
	SEP.b #$20
	LDA.b $6B
	ORA.b [$4D],y
	STA.b [$4D],y
	LDA.b $6B
	ORA.b [$50],y
	STA.b [$50],y
	INY
	LDA.b $6C
	AND.b [$4D],y
	STA.b [$4D],y
	LDA.b $6B
	ORA.b [$50],y
	STA.b [$50],y
	REP.b #$20
	TYA
	CLC
	ADC.w #$001F
	TAY
	DEX
	BEQ.b CODE_00B72F
CODE_00B71C:
	LDA.w #$00FF
	STA.b [$4D],y
	LDA.w #$FFFF
	STA.b [$50],y
	TYA
	CLC
	ADC.w #$0020
	TAY
	DEX
	BNE.b CODE_00B71C
CODE_00B72F:
	SEP.b #$20
	LDA.b $6D
	ORA.b [$4D],y
	STA.b [$4D],y
	LDA.b $6D
	ORA.b [$50],y
	STA.b [$50],y
	INY
	LDA.b $6E
	AND.b [$4D],y
	STA.b [$4D],y
	LDA.b $6D
	ORA.b [$50],y
	STA.b [$50],y
	RTL

CODE_00B74B:
	REP.b #$30
	PHA
	STY.b $6F
	TXA
	BMI.b CODE_00B759
	CMP.b $6F
	BCC.b CODE_00B759
	TYX
	TAY
CODE_00B759:
	TXA
	BPL.b CODE_00B761
	LDX.w #$0000
	BRA.b CODE_00B768

CODE_00B761:
	CPX.w #$0090
	BCC.b CODE_00B768
	PLA
	RTL

CODE_00B768:
	TYA
	BPL.b CODE_00B76D
	PLA
	RTL

CODE_00B76D:
	CPY.w #$0090
	BCC.b CODE_00B775
	LDY.w #$008F
CODE_00B775:
	REP.b #$20
	PLA
	CMP.w #$0070
	BCS.b CODE_00B7E8
	PHX
	ASL
	TAX
	LDA.w DATA_038528,x
	CLC
	ADC.b $4A
	STA.b $4D
	CLC
	ADC.w #$0010
	STA.b $50
	PLX
	SEP.b #$20
	LDA.w DATA_039847,x
	STA.b $6C
	EOR.b #$FF
	STA.b $6B
	LDA.w DATA_0398D7,y
	STA.b $6E
	EOR.b #$FF
	STA.b $6D
	REP.b #$20
	TXA
	LSR
	LSR
	LSR
	STA.b $6F
	ASL
	ASL
	ASL
	ASL
	ASL
	PHA
	TYA
	LSR
	LSR
	LSR
	SEC
	SBC.b $6F
	TAX
	BNE.b CODE_00B7E9
	PLY
	SEP.b #$20
	LDA.b $6B
	ORA.b $6D
	STA.b $6B
	LDA.b $6C
	AND.b $6E
	STA.b $6C
	REP.b #$20
	LDA.b [$4D],y
	SEP.b #$20
	AND.b $6B
	XBA
	ORA.b $6C
	XBA
	REP.b #$20
	STA.b [$4D],y
	LDA.b [$50],y
	SEP.b #$20
	ORA.b $6C
	XBA
	ORA.b $6C
	XBA
	REP.b #$20
	STA.b [$50],y
CODE_00B7E8:
	RTL

CODE_00B7E9:
	PLY
	SEP.b #$20
	LDA.b $6B
	AND.b [$4D],y
	STA.b [$4D],y
	LDA.b $6C
	ORA.b [$50],y
	STA.b [$50],y
	INY
	LDA.b $6C
	ORA.b [$4D],y
	STA.b [$4D],y
	LDA.b $6C
	ORA.b [$50],y
	STA.b [$50],y
	REP.b #$20
	TYA
	CLC
	ADC.w #$001F
	TAY
	DEX
	BEQ.b CODE_00B823
CODE_00B810:
	LDA.w #$FF00
	STA.b [$4D],y
	LDA.w #$FFFF
	STA.b [$50],y
	TYA
	CLC
	ADC.w #$0020
	TAY
	DEX
	BNE.b CODE_00B810
CODE_00B823:
	SEP.b #$20
	LDA.b $6D
	AND.b [$4D],y
	STA.b [$4D],y
	LDA.b $6E
	ORA.b [$50],y
	STA.b [$50],y
	INY
	LDA.b $6E
	ORA.b [$4D],y
	STA.b [$4D],y
	LDA.b $6E
	ORA.b [$50],y
	STA.b [$50],y
	RTL

CODE_00B83F:
	REP.b #$30
	PHA
	STY.b $6F
	TXA
	BMI.b CODE_00B84D
	CMP.b $6F
	BCC.b CODE_00B84D
	TYX
	TAY
CODE_00B84D:
	TXA
	BPL.b CODE_00B855
	LDX.w #$0000
	BRA.b CODE_00B85C

CODE_00B855:
	CPX.w #$0090
	BCC.b CODE_00B85C
	PLA
	RTL

CODE_00B85C:
	TYA
	BPL.b CODE_00B861
	PLA
	RTL

CODE_00B861:
	CPY.w #$0090
	BCC.b CODE_00B869
	LDY.w #$008F
CODE_00B869:
	PLA
	CMP.w #$0070
	BCS.b CODE_00B8B8
	PHX
	ASL
	TAX
	LDA.w DATA_038528,x
	CLC
	ADC.b $4A
	STA.b $4D
	CLC
	ADC.w #$0010
	STA.b $50
	PLX
	SEP.b #$20
	LDA.w DATA_039847,x
	STA.b $6C
	STA.b $6B
	LDA.w DATA_0398D7,y
	STA.b $6E
	STA.b $6D
	REP.b #$20
	TXA
	LSR
	LSR
	LSR
	STA.b $6F
	ASL
	ASL
	ASL
	ASL
	ASL
	PHA
	TYA
	LSR
	LSR
	LSR
	SEC
	SBC.b $6F
	TAX
	BNE.b CODE_00B8B9
	PLY
	LDA.b $6B
	AND.b $6D
	PHA
	ORA.b [$4D],y
	STA.b [$4D],y
	PLA
	ORA.b [$50],y
	STA.b [$50],y
CODE_00B8B8:
	RTL

CODE_00B8B9:
	PLY
	LDA.b $6B
	PHA
	ORA.b [$4D],y
	STA.b [$4D],y
	PLA
	ORA.b [$50],y
	STA.b [$50],y
	TYA
	CLC
	ADC.w #$0020
	TAY
	DEX
	BEQ.b CODE_00B8DF
CODE_00B8CF:
	LDA.w #$FFFF
	STA.b [$4D],y
	STA.b [$50],y
	TYA
	CLC
	ADC.w #$0020
	TAY
	DEX
	BNE.b CODE_00B8CF
CODE_00B8DF:
	LDA.b $6D
	PHA
	ORA.b [$4D],y
	STA.b [$4D],y
	PLA
	ORA.b [$50],y
	STA.b [$50],y
	RTL

CODE_00B8EC:
	RTI

CODE_00B8ED:
	JMP.w CODE_00B8ED

CODE_00B8F0:
	RTI

CODE_00B8F1:
	JMP.w CODE_00C99F

CODE_00B8F4:
	STP
	RTL

CODE_00B8F6:
	RTL

CODE_00B8F7:
	RTL

CODE_00B8F8:
	RTL

CODE_00B8F9:
	SEP.b #$30
	LDA.b #$01
	STA.w !REGISTER_JoypadSerialPort1
	DEC
	STA.w !REGISTER_JoypadSerialPort1
	LDX.b #$10
CODE_00B906:
	SEP.b #$20
	LDA.w !REGISTER_JoypadSerialPort1
	LSR
	REP.b #$20
	ROL.w $03C6
	SEP.b #$20
	LDA.w !REGISTER_JoypadSerialPort2
	LSR
	REP.b #$20
	ROL.w $03C8
	DEX
	BNE.b CODE_00B906
	RTL

CODE_00B920:
	REP.b #$30
	TXA
	BPL.b CODE_00B929
	EOR.w #$FFFF
	INC
CODE_00B929:
	TAX
	TYA
	BPL.b CODE_00B931
	EOR.w #$FFFF
	INC
CODE_00B931:
	TAY
	STY.b $84
	CPX.b $84
	BEQ.b CODE_00B964
	BCC.b CODE_00B964
	TYA
	ASL
	STA.b $84
	CPX.b $84
	BEQ.b CODE_00B94E
	BCC.b CODE_00B94E
	TXA
	STA.b $84
	TYA
	LSR
	LSR
	CLC
	ADC.b $84
	RTL

CODE_00B94E:
	STX.b $84
	STY.b $86
	TYA
	ASL
	ASL
	ASL
	SEC
	SBC.b $84
	SEC
	SBC.b $86
	LSR
	LSR
	LSR
	LSR
	CLC
	ADC.b $84
	RTL

CODE_00B964:
	TXA
	ASL
	STA.b $84
	CPY.b $84
	BEQ.b CODE_00B978
	BCC.b CODE_00B978
	TYA
	STA.b $84
	TXA
	LSR
	LSR
	CLC
	ADC.b $84
	RTL

CODE_00B978:
	STY.b $84
	STX.b $86
	TXA
	ASL
	ASL
	ASL
	SEC
	SBC.b $84
	SEC
	SBC.b $86
	LSR
	LSR
	LSR
	LSR
	CLC
	ADC.b $84
	RTL

CODE_00B98E:
	REP.b #$30
	STA.b $7A
	STX.b $7C
	STZ.b $81
	SEP.b #$10
	LDX.b $7A
	STX.w !REGISTER_Multiplicand
	LDX.b $7C
	STX.w !REGISTER_Multiplier
	LDX.b $7D
	LDY.b $7B
	LDA.w !REGISTER_ProductOrRemainderLo
	STX.w !REGISTER_Multiplier
	STA.b $7F
	CLC
	LDA.w !REGISTER_ProductOrRemainderLo
	STY.w !REGISTER_Multiplicand
	STX.w !REGISTER_Multiplier
	LDX.b $7C
	ADC.b $80
	STA.b $80
	LDA.w !REGISTER_ProductOrRemainderLo
	STX.w !REGISTER_Multiplier
	ADC.b $81
	STA.b $81
	LDA.w !REGISTER_ProductOrRemainderLo
	ADC.b $80
	STA.b $80
	BCC.b CODE_00B9D3
	INC.b $82
CODE_00B9D3:
	REP.b #$10
	RTL

CODE_00B9D6:
	PHP
	REP.b #$30
	STA.b $7A
	STX.b $7C
	SEP.b #$10
	STZ.b $7E
	STZ.b $7F
	STZ.b $81
	LDA.b $7A
	BPL.b CODE_00B9FB
	EOR.w #$FFFF
	INC
	STA.b $7A
	LDA.b $7C
	BPL.b CODE_00BA05
	EOR.w #$FFFF
	INC
	STA.b $7C
	BPL.b CODE_00BA09
CODE_00B9FB:
	LDA.b $7C
	BPL.b CODE_00BA09
	EOR.w #$FFFF
	INC
	STA.b $7C
CODE_00BA05:
	LDX.b #$FF
	STX.b $7E
CODE_00BA09:
	LDX.b $7A
	STX.w !REGISTER_Multiplicand
	LDX.b $7C
	STX.w !REGISTER_Multiplier
	LDX.b $7D
	LDY.b $7B
	LDA.w !REGISTER_ProductOrRemainderLo
	STX.w !REGISTER_Multiplier
	STA.b $7F
	CLC
	LDA.w !REGISTER_ProductOrRemainderLo
	STY.w !REGISTER_Multiplicand
	STX.w !REGISTER_Multiplier
	LDX.b $7C
	ADC.b $80
	STA.b $80
	LDA.w !REGISTER_ProductOrRemainderLo
	STX.w !REGISTER_Multiplier
	ADC.b $81
	STA.b $81
	LDA.w !REGISTER_ProductOrRemainderLo
	ADC.b $80
	STA.b $80
	BCC.b CODE_00BA44
	INC.b $82
CODE_00BA44:
	LDX.b $7E
	BPL.b CODE_00BA5D
	CLC
	LDA.b $7F
	EOR.w #$FFFF
	ADC.w #$0001
	STA.b $7F
	LDA.b $81
	EOR.w #$FFFF
	ADC.w #$0000
	STA.b $81
CODE_00BA5D:
	PLP
	RTL

CODE_00BA5F:
	REP.b #$30
	PHX
	AND.w #$00FF
	TAX
	SEP.b #$20
	LDA.w DATA_039B5C,x
	STA.b $88
	LDA.w DATA_039A5C,x
	STA.b $89
	PLX
	REP.b #$20
	LDA.w #$0008
	ORA.w $1C93
	STA.w $1C93
	TYA
	SEP.b #$20
	STA.w !REGISTER_Mode7MatrixParameterA
	XBA
	STA.w !REGISTER_Mode7MatrixParameterA
	LDA.b $88
	STA.w !REGISTER_Mode7MatrixParameterB
	LDA.w !REGISTER_PPUMultiplicationProductLo
	ASL
	REP.b #$20
	LDA.w !REGISTER_PPUMultiplicationProductMid
	ROL
	PHA
	TXA
	SEP.b #$20
	STA.w !REGISTER_Mode7MatrixParameterA
	XBA
	STA.w !REGISTER_Mode7MatrixParameterA
	LDA.b $89
	STA.w !REGISTER_Mode7MatrixParameterB
	LDA.w !REGISTER_PPUMultiplicationProductLo
	ASL
	REP.b #$20
	LDA.w !REGISTER_PPUMultiplicationProductMid
	ROL
	PHA
	TYA
	SEP.b #$20
	STA.w !REGISTER_Mode7MatrixParameterA
	XBA
	STA.w !REGISTER_Mode7MatrixParameterA
	LDA.b $89
	STA.w !REGISTER_Mode7MatrixParameterB
	LDA.w !REGISTER_PPUMultiplicationProductLo
	ASL
	REP.b #$20
	LDA.w !REGISTER_PPUMultiplicationProductMid
	ROL
	PHA
	TXA
	SEP.b #$20
	STA.w !REGISTER_Mode7MatrixParameterA
	XBA
	STA.w !REGISTER_Mode7MatrixParameterA
	LDA.b $88
	STA.w !REGISTER_Mode7MatrixParameterB
	LDA.w !REGISTER_PPUMultiplicationProductLo
	ASL
	REP.b #$20
	LDA.w !REGISTER_PPUMultiplicationProductMid
	ROL
	CLC
	ADC.b $01,S
	TAY
	PLA
	PLA
	SEC
	SBC.b $01,S
	TAX
	PLA
	REP.b #$20
	LDA.w #$FFF7
	AND.w $1C93
	STA.w $1C93
	RTL

CODE_00BAFC:
	REP.b #$30
	STZ.b $97
	LDA.w #$FF1F
	AND.w $0415
	STA.w $0415
	LDA.w #$FF1F
	AND.w $0417
	STA.w $0417
	LDA.w #$FF1F
	AND.w $0419
	STA.w $0419
	LDA.w #$FF1F
	AND.w $041B
	STA.w $041B
	LDA.w #$FF1F
	AND.w $041D
	STA.w $041D
	LDA.w #$FF1F
	AND.w $041F
	STA.w $041F
	LDA.w #$FF1F
	AND.w $0421
	STA.w $0421
	LDA.w #$FF1F
	AND.w $0423
	STA.w $0423
	LDA.w #$FF1F
	AND.w $0425
	STA.w $0425
	LDA.w #$FF1F
	AND.w $0427
	STA.w $0427
	LDA.w #$FF1F
	AND.w $0429
	STA.w $0429
	LDA.w #$FF1F
	AND.w $042B
	STA.w $042B
	LDA.w #$FF1F
	AND.w $042D
	STA.w $042D
	LDA.w #$FF1F
	AND.w $042F
	STA.w $042F
	LDA.w #$FF1F
	AND.w $0431
	STA.w $0431
	LDA.w #$FF1F
	AND.w $0433
	STA.w $0433
	LDA.w #$FF1F
	AND.w $0435
	STA.w $0435
	LDA.w #$FF1F
	AND.w $0437
	STA.w $0437
	LDA.w #$FF1F
	AND.w $0439
	STA.w $0439
	LDA.w #$FF1F
	AND.w $043B
	STA.w $043B
	LDA.w #$FF1F
	AND.w $043D
	STA.w $043D
	LDA.w #$FF1F
	AND.w $043F
	STA.w $043F
	LDA.w #$FF1F
	AND.w $0441
	STA.w $0441
	LDA.w #$FF1F
	AND.w $0443
	STA.w $0443
	LDA.w #$FF1F
	AND.w $0445
	STA.w $0445
	LDA.w #$FF1F
	AND.w $0447
	STA.w $0447
	LDA.w #$FF1F
	AND.w $0449
	STA.w $0449
	LDA.w #$FF1F
	AND.w $044B
	STA.w $044B
	LDA.w #$FF1F
	AND.w $044D
	STA.w $044D
	LDA.w #$FF1F
	AND.w $044F
	STA.w $044F
	LDA.w #$FF1F
	AND.w $0451
	STA.w $0451
	LDA.w #$FF1F
	AND.w $0453
	STA.w $0453
	LDA.w #$FF1F
	AND.w $0455
	STA.w $0455
	LDA.w #$FF1F
	AND.w $0457
	STA.w $0457
	LDA.w #$FF1F
	AND.w $0459
	STA.w $0459
	LDA.w #$FF1F
	AND.w $045B
	STA.w $045B
	LDA.w #$FF1F
	AND.w $045D
	STA.w $045D
	LDA.w #$FF1F
	AND.w $045F
	STA.w $045F
	LDA.w #$FF1F
	AND.w $0461
	STA.w $0461
	LDA.w #$FF1F
	AND.w $0463
	STA.w $0463
	LDA.w #$FF1F
	AND.w $0465
	STA.w $0465
	LDA.w #$FF1F
	AND.w $0467
	STA.w $0467
	LDA.w #$FF1F
	AND.w $0469
	STA.w $0469
	LDA.w #$FF1F
	AND.w $046B
	STA.w $046B
	LDA.w #$FF1F
	AND.w $046D
	STA.w $046D
	LDA.w #$FF1F
	AND.w $046F
	STA.w $046F
	LDA.w #$FF1F
	AND.w $0471
	STA.w $0471
	LDA.w #$FF1F
	AND.w $0473
	STA.w $0473
	LDA.w #$FF1F
	AND.w $0475
	STA.w $0475
	LDA.w #$FF1F
	AND.w $0477
	STA.w $0477
	LDA.w #$FF1F
	AND.w $0479
	STA.w $0479
	LDA.w #$FF1F
	AND.w $047B
	STA.w $047B
	LDA.w #$FF1F
	AND.w $047D
	STA.w $047D
	LDA.w #$FF1F
	AND.w $047F
	STA.w $047F
	LDA.w #$FF1F
	AND.w $0481
	STA.w $0481
	LDA.w #$FF1F
	AND.w $0483
	STA.w $0483
	LDA.w #$FF1F
	AND.w $0485
	STA.w $0485
	LDA.w #$FF1F
	AND.w $0487
	STA.w $0487
	LDA.w #$FF1F
	AND.w $0489
	STA.w $0489
	LDA.w #$FF1F
	AND.w $048B
	STA.w $048B
	LDA.w #$FF1F
	AND.w $048D
	STA.w $048D
	LDA.w #$FF1F
	AND.w $048F
	STA.w $048F
	LDA.w #$FF1F
	AND.w $0491
	STA.w $0491
	LDA.w #$FF1F
	AND.w $0493
	STA.w $0493
	LDA.w #$FF1F
	AND.w $0495
	STA.w $0495
	LDA.w #$FF1F
	AND.w $0497
	STA.w $0497
	LDA.w #$FF1F
	AND.w $0499
	STA.w $0499
	LDA.w #$FF1F
	AND.w $049B
	STA.w $049B
	LDA.w #$FF1F
	AND.w $049D
	STA.w $049D
	LDA.w #$FF1F
	AND.w $049F
	STA.w $049F
	LDA.w #$FF1F
	AND.w $04A1
	STA.w $04A1
	LDA.w #$FF1F
	AND.w $04A3
	STA.w $04A3
	LDA.w #$FF1F
	AND.w $04A5
	STA.w $04A5
	LDA.w #$FF1F
	AND.w $04A7
	STA.w $04A7
	LDA.w #$FF1F
	AND.w $04A9
	STA.w $04A9
	LDA.w #$FF1F
	AND.w $04AB
	STA.w $04AB
	LDA.w #$FF1F
	AND.w $04AD
	STA.w $04AD
	LDA.w #$FF1F
	AND.w $04AF
	STA.w $04AF
	LDA.w #$FF1F
	AND.w $04B1
	STA.w $04B1
	LDA.w #$FF1F
	AND.w $04B3
	STA.w $04B3
	LDA.w #$FF1F
	AND.w $04B5
	STA.w $04B5
	LDA.w #$FF1F
	AND.w $04B7
	STA.w $04B7
	LDA.w #$FF1F
	AND.w $04B9
	STA.w $04B9
	LDA.w #$FF1F
	AND.w $04BB
	STA.w $04BB
	LDA.w #$FF1F
	AND.w $04BD
	STA.w $04BD
	LDA.w #$FF1F
	AND.w $04BF
	STA.w $04BF
	LDA.w #$FF1F
	AND.w $04C1
	STA.w $04C1
	LDA.w #$FF1F
	AND.w $04C3
	STA.w $04C3
	LDA.w #$FF1F
	AND.w $04C5
	STA.w $04C5
	LDA.w #$FF1F
	AND.w $04C7
	STA.w $04C7
	LDA.w #$FF1F
	AND.w $04C9
	STA.w $04C9
	LDA.w #$FF1F
	AND.w $04CB
	STA.w $04CB
	LDA.w #$FF1F
	AND.w $04CD
	STA.w $04CD
	LDA.w #$FF1F
	AND.w $04CF
	STA.w $04CF
	LDA.w #$FF1F
	AND.w $04D1
	STA.w $04D1
	LDA.w #$FF1F
	AND.w $04D3
	STA.w $04D3
	LDA.w #$FF1F
	AND.w $04D5
	STA.w $04D5
	LDA.w #$FF1F
	AND.w $04D7
	STA.w $04D7
	LDA.w #$FF1F
	AND.w $04D9
	STA.w $04D9
	LDA.w #$FF1F
	AND.w $04DB
	STA.w $04DB
	LDA.w #$FF1F
	AND.w $04DD
	STA.w $04DD
	LDA.w #$FF1F
	AND.w $04DF
	STA.w $04DF
	LDA.w #$FF1F
	AND.w $04E1
	STA.w $04E1
	LDA.w #$FF1F
	AND.w $04E3
	STA.w $04E3
	LDA.w #$FF1F
	AND.w $04E5
	STA.w $04E5
	LDA.w #$FF1F
	AND.w $04E7
	STA.w $04E7
	LDA.w #$FF1F
	AND.w $04E9
	STA.w $04E9
	LDA.w #$FF1F
	AND.w $04EB
	STA.w $04EB
	LDA.w #$FF1F
	AND.w $04ED
	STA.w $04ED
	LDA.w #$FF1F
	AND.w $04EF
	STA.w $04EF
	LDA.w #$FF1F
	AND.w $04F1
	STA.w $04F1
	LDA.w #$FF1F
	AND.w $04F3
	STA.w $04F3
	LDA.w #$FF1F
	AND.w $04F5
	STA.w $04F5
	LDA.w #$FF1F
	AND.w $04F7
	STA.w $04F7
	LDA.w #$FF1F
	AND.w $04F9
	STA.w $04F9
	LDA.w #$FF1F
	AND.w $04FB
	STA.w $04FB
	LDA.w #$FF1F
	AND.w $04FD
	STA.w $04FD
	LDA.w #$FF1F
	AND.w $04FF
	STA.w $04FF
	LDA.w #$FF1F
	AND.w $0501
	STA.w $0501
	LDA.w #$FF1F
	AND.w $0503
	STA.w $0503
	LDA.w #$FF1F
	AND.w $0505
	STA.w $0505
	LDA.w #$FF1F
	AND.w $0507
	STA.w $0507
	LDA.w #$FF1F
	AND.w $0509
	STA.w $0509
	LDA.w #$FF1F
	AND.w $050B
	STA.w $050B
	LDA.w #$FF1F
	AND.w $050D
	STA.w $050D
	LDA.w #$FF1F
	AND.w $050F
	STA.w $050F
	LDA.w #$FF1F
	AND.w $0511
	STA.w $0511
	LDA.w #$FF1F
	AND.w $0513
	STA.w $0513
	LDA.w #$FF1F
	AND.w $0515
	STA.w $0515
	LDA.w #$FF1F
	AND.w $0517
	STA.w $0517
	LDA.w #$FF1F
	AND.w $0519
	STA.w $0519
	LDA.w #$FF1F
	AND.w $051B
	STA.w $051B
	LDA.w #$FF1F
	AND.w $051D
	STA.w $051D
	LDA.w #$FF1F
	AND.w $051F
	STA.w $051F
	LDA.w #$FF1F
	AND.w $0521
	STA.w $0521
	LDA.w #$FF1F
	AND.w $0523
	STA.w $0523
	LDA.w #$FF1F
	AND.w $0525
	STA.w $0525
	LDA.w #$FF1F
	AND.w $0527
	STA.w $0527
	LDA.w #$FF1F
	AND.w $0529
	STA.w $0529
	LDA.w #$FF1F
	AND.w $052B
	STA.w $052B
	LDA.w #$FF1F
	AND.w $052D
	STA.w $052D
	LDA.w #$FF1F
	AND.w $052F
	STA.w $052F
	LDA.w #$FF1F
	AND.w $0531
	STA.w $0531
	LDA.w #$FF1F
	AND.w $0533
	STA.w $0533
	LDA.w #$FF1F
	AND.w $0535
	STA.w $0535
	LDA.w #$FF1F
	AND.w $0537
	STA.w $0537
	LDA.w #$FF1F
	AND.w $0539
	STA.w $0539
	LDA.w #$FF1F
	AND.w $053B
	STA.w $053B
	LDA.w #$FF1F
	AND.w $053D
	STA.w $053D
	LDA.w #$FF1F
	AND.w $053F
	STA.w $053F
	LDA.w #$FF1F
	AND.w $0541
	STA.w $0541
	LDA.w #$FF1F
	AND.w $0543
	STA.w $0543
	LDA.w #$FF1F
	AND.w $0545
	STA.w $0545
	LDA.w #$FF1F
	AND.w $0547
	STA.w $0547
	LDA.w #$FF1F
	AND.w $0549
	STA.w $0549
	LDA.w #$FF1F
	AND.w $054B
	STA.w $054B
	LDA.w #$FF1F
	AND.w $054D
	STA.w $054D
	LDA.w #$FF1F
	AND.w $054F
	STA.w $054F
	LDA.w #$FF1F
	AND.w $0551
	STA.w $0551
	LDA.w #$FF1F
	AND.w $0553
	STA.w $0553
	LDA.w #$FF1F
	AND.w $0555
	STA.w $0555
	LDA.w #$FF1F
	AND.w $0557
	STA.w $0557
	LDA.w #$FF1F
	AND.w $0559
	STA.w $0559
	LDA.w #$FF1F
	AND.w $055B
	STA.w $055B
	LDA.w #$FF1F
	AND.w $055D
	STA.w $055D
	LDA.w #$FF1F
	AND.w $055F
	STA.w $055F
	LDA.w #$FF1F
	AND.w $0561
	STA.w $0561
	LDA.w #$FF1F
	AND.w $0563
	STA.w $0563
	LDA.w #$FF1F
	AND.w $0565
	STA.w $0565
	LDA.w #$FF1F
	AND.w $0567
	STA.w $0567
	LDA.w #$FF1F
	AND.w $0569
	STA.w $0569
	LDA.w #$FF1F
	AND.w $056B
	STA.w $056B
	LDA.w #$FF1F
	AND.w $056D
	STA.w $056D
	LDA.w #$FF1F
	AND.w $056F
	STA.w $056F
	LDA.w #$FF1F
	AND.w $0571
	STA.w $0571
	LDA.w #$FF1F
	AND.w $0573
	STA.w $0573
	LDA.w #$FF1F
	AND.w $0575
	STA.w $0575
	LDA.w #$FF1F
	AND.w $0577
	STA.w $0577
	LDA.w #$FF1F
	AND.w $0579
	STA.w $0579
	LDA.w #$FF1F
	AND.w $057B
	STA.w $057B
	LDA.w #$FF1F
	AND.w $057D
	STA.w $057D
	LDA.w #$FF1F
	AND.w $057F
	STA.w $057F
	LDA.w #$FF1F
	AND.w $0581
	STA.w $0581
	LDA.w #$FF1F
	AND.w $0583
	STA.w $0583
	LDA.w #$FF1F
	AND.w $0585
	STA.w $0585
	LDA.w #$FF1F
	AND.w $0587
	STA.w $0587
	LDA.w #$FF1F
	AND.w $0589
	STA.w $0589
	LDA.w #$FF1F
	AND.w $058B
	STA.w $058B
	LDA.w #$FF1F
	AND.w $058D
	STA.w $058D
	LDA.w #$FF1F
	AND.w $058F
	STA.w $058F
	LDA.w #$FF1F
	AND.w $0591
	STA.w $0591
	LDA.w #$FF1F
	AND.w $0593
	STA.w $0593
	LDA.w #$FF1F
	AND.w $0595
	STA.w $0595
	LDA.w #$FF1F
	AND.w $0597
	STA.w $0597
	LDA.w #$FF1F
	AND.w $0599
	STA.w $0599
	LDA.w #$FF1F
	AND.w $059B
	STA.w $059B
	LDA.w #$FF1F
	AND.w $059D
	STA.w $059D
	LDA.w #$FF1F
	AND.w $059F
	STA.w $059F
	LDA.w #$FF1F
	AND.w $05A1
	STA.w $05A1
	LDA.w #$FF1F
	AND.w $05A3
	STA.w $05A3
	LDA.w #$FF1F
	AND.w $05A5
	STA.w $05A5
	LDA.w #$FF1F
	AND.w $05A7
	STA.w $05A7
	LDA.w #$FF1F
	AND.w $05A9
	STA.w $05A9
	LDA.w #$FF1F
	AND.w $05AB
	STA.w $05AB
	LDA.w #$FF1F
	AND.w $05AD
	STA.w $05AD
	LDA.w #$FF1F
	AND.w $05AF
	STA.w $05AF
	LDA.w #$FF1F
	AND.w $05B1
	STA.w $05B1
	LDA.w #$FF1F
	AND.w $05B3
	STA.w $05B3
	LDA.w #$FF1F
	AND.w $05B5
	STA.w $05B5
	LDA.w #$FF1F
	AND.w $05B7
	STA.w $05B7
	LDA.w #$FF1F
	AND.w $05B9
	STA.w $05B9
	LDA.w #$FF1F
	AND.w $05BB
	STA.w $05BB
	LDA.w #$FF1F
	AND.w $05BD
	STA.w $05BD
	LDA.w #$FF1F
	AND.w $05BF
	STA.w $05BF
	LDA.w #$FF1F
	AND.w $05C1
	STA.w $05C1
	LDA.w #$FF1F
	AND.w $05C3
	STA.w $05C3
	LDA.w #$FF1F
	AND.w $05C5
	STA.w $05C5
	LDA.w #$FF1F
	AND.w $05C7
	STA.w $05C7
	LDA.w #$FF1F
	AND.w $05C9
	STA.w $05C9
	LDA.w #$FF1F
	AND.w $05CB
	STA.w $05CB
	LDA.w #$FF1F
	AND.w $05CD
	STA.w $05CD
	LDA.w #$FF1F
	AND.w $05CF
	STA.w $05CF
	LDA.w #$FF1F
	AND.w $05D1
	STA.w $05D1
	LDA.w #$FF1F
	AND.w $05D3
	STA.w $05D3
	LDA.w #$FF1F
	AND.w $05D5
	STA.w $05D5
	LDA.w #$FF1F
	AND.w $05D7
	STA.w $05D7
	LDA.w #$FF1F
	AND.w $05D9
	STA.w $05D9
	LDA.w #$FF1F
	AND.w $05DB
	STA.w $05DB
	LDA.w #$FF1F
	AND.w $05DD
	STA.w $05DD
	LDA.w #$FF1F
	AND.w $05DF
	STA.w $05DF
	LDA.w #$FF1F
	AND.w $05E1
	STA.w $05E1
	LDA.w #$FF1F
	AND.w $05E3
	STA.w $05E3
	LDA.w #$FF1F
	AND.w $05E5
	STA.w $05E5
	LDA.w #$FF1F
	AND.w $05E7
	STA.w $05E7
	LDA.w #$FF1F
	AND.w $05E9
	STA.w $05E9
	LDA.w #$FF1F
	AND.w $05EB
	STA.w $05EB
	LDA.w #$FF1F
	AND.w $05ED
	STA.w $05ED
	LDA.w #$FF1F
	AND.w $05EF
	STA.w $05EF
	LDA.w #$FF1F
	AND.w $05F1
	STA.w $05F1
	LDA.w #$FF1F
	AND.w $05F3
	STA.w $05F3
	LDA.w #$FF1F
	AND.w $05F5
	STA.w $05F5
	LDA.w #$FF1F
	AND.w $05F7
	STA.w $05F7
	LDA.w #$FF1F
	AND.w $05F9
	STA.w $05F9
	LDA.w #$FF1F
	AND.w $05FB
	STA.w $05FB
	LDA.w #$FF1F
	AND.w $05FD
	STA.w $05FD
	LDA.w #$FF1F
	AND.w $05FF
	STA.w $05FF
	LDA.w #$FF1F
	AND.w $0601
	STA.w $0601
	LDA.w #$FF1F
	AND.w $0603
	STA.w $0603
	LDA.w #$FF1F
	AND.w $0605
	STA.w $0605
	LDA.w #$FF1F
	AND.w $0607
	STA.w $0607
	LDA.w #$FF1F
	AND.w $0609
	STA.w $0609
	LDA.w #$FF1F
	AND.w $060B
	STA.w $060B
	LDA.w #$FF1F
	AND.w $060D
	STA.w $060D
	LDA.w #$FF1F
	AND.w $060F
	STA.w $060F
	LDA.w #$FF1F
	AND.w $0611
	STA.w $0611
	LDA.w #$FF1F
	AND.w $0613
	STA.w $0613
	RTL

CODE_00C401:
	RTL

CODE_00C402:
	REP.b #$30
	LDA.w #$0100
	STA.w $06F6
	STZ.w $06F8
	LDA.b $8F
	PHA
	LDA.b $91
	PHA
CODE_00C413:
	LDA.b $91
	CLC
	ADC.b $95
	ASL
	PHP
	ROR
	PLP
	ROR
	TAY
	STA.b $8C
	LDA.b $8F
	CLC
	ADC.b $93
	ASL
	PHP
	ROR
	PLP
	ROR
	CMP.b $8F
	BEQ.b CODE_00C45C
	CMP.b $93
	BEQ.b CODE_00C45C
	TAX
	BPL.b CODE_00C439
	EOR.w #$FFFF
	INC
CODE_00C439:
	CMP.b $8C
	BCC.b CODE_00C450
	STX.b $93
	STY.b $95
	LSR.w $06F6
	LDA.w $06F6
	CLC
	ADC.w $06F8
	STA.w $06F8
	BRA.b CODE_00C413

CODE_00C450:
	TYA
	BMI.b CODE_00C439
	STX.b $8F
	STY.b $91
	LSR.w $06F6
	BRA.b CODE_00C413

CODE_00C45C:
	STA.b $93
	TAX
	BPL.b CODE_00C465
	EOR.w #$FFFF
	INC
CODE_00C465:
	STA.b $95
	LSR.w $06F6
	LDA.w $06F6
	CLC
	ADC.w $06F8
	STA.w $06F8
	PLA
	STA.b $91
	PLA
	STA.b $8F
	RTS

CODE_00C47B:
	REP.b #$30
	LDA.b $8F
	PHA
	LDA.b $91
	PHA
	LDA.b $93
	PHA
	LDA.b $95
	PHA
CODE_00C489:
	LDA.b $91
	CLC
	ADC.b $95
	ASL
	PHP
	ROR
	PLP
	ROR
	STA.b $8C
	TAY
	LDA.b $8F
	CLC
	ADC.b $93
	ASL
	PHP
	ROR
	PLP
	ROR
	TAX
	BPL.b CODE_00C4A7
	EOR.w #$FFFF
	INC
CODE_00C4A7:
	CMP.b $8C
	BCS.b CODE_00C4C3
	LDA.b $8C
	BMI.b CODE_00C4C3
	STX.w $06E6
	STY.w $06E8
	PLA
	STA.b $95
	PLA
	STA.b $93
	PLA
	STA.b $91
	PLA
	STA.b $8F
	CLC
	RTS

CODE_00C4C3:
	TXA
	CMP.b $8F
	BEQ.b CODE_00C4DB
	CMP.b $93
	BEQ.b CODE_00C4DB
	TXA
	BMI.b CODE_00C4D5
	STX.b $93
	STY.b $95
	BRA.b CODE_00C489

CODE_00C4D5:
	STX.b $8F
	STY.b $91
	BRA.b CODE_00C489

CODE_00C4DB:
	PLA
	STA.b $95
	PLA
	STA.b $93
	PLA
	STA.b $91
	PLA
	STA.b $8F
	SEC
	RTS

CODE_00C4E9:
	REP.b #$30
	STZ.w $0407
	STZ.w $040D
	STZ.w $0413
	LDA.b $8F
	BPL.b CODE_00C4FC
	EOR.w #$FFFF
	INC
CODE_00C4FC:
	LDX.b $91
	BMI.b CODE_00C506
	CMP.b $91
	BEQ.b CODE_00C509
	BCC.b CODE_00C509
CODE_00C506:
	JMP.w CODE_00C5C1

CODE_00C509:
	LDA.b $93
	BPL.b CODE_00C511
	EOR.w #$FFFF
	INC
CODE_00C511:
	LDX.b $95
	BPL.b CODE_00C518
	BRL.w CODE_00C5AA

CODE_00C518:
	CMP.b $95
	BEQ.b CODE_00C521
	BCC.b CODE_00C521
	BRL.w CODE_00C5AA

CODE_00C521:
	REP.b #$30
	LDA.w $0407
	AND.w #$FFF0
	ORA.w #$0001
	STA.w $0407
	LDA.w $1F74
	ASL
	ASL
	ASL
	ASL
	AND.w #$0030
	ORA.w $0407
	STA.w $0407
	LDX.b $8F
	LDY.b $91
	LDA.w #$0090
	JSL.l CODE_019814
	REP.b #$30
	STA.w $040B
	LDX.b $93
	LDY.b $95
	LDA.w #$0090
	JSL.l CODE_019814
	REP.b #$30
	STA.w $0411
	TAX
	LDY.w $040B
	JSL.l CODE_0094B8
	BCS.b CODE_00C56B
	SEC
	RTL

CODE_00C56B:
	REP.b #$10
	LDY.b $91
	JSL.l CODE_01987E
	REP.b #$30
	STA.w $0409
	LDY.b $95
	JSL.l CODE_01987E
	REP.b #$30
	STA.w $040F
	REP.b #$30
	LDX.b $97
	LDY.w #$0000
	SEP.b #$20
CODE_00C58C:
	LDA.w $0407,y
	STA.w $063E,x
	INX
	INY
	CPY.w #$000E
	BNE.b CODE_00C58C
	REP.b #$20
	LDA.b $97
	CLC
	ADC.w #$063E
	CPX.w #$00A8
	BCS.b CODE_00C5A8
	STX.b $97
CODE_00C5A8:
	CLC
	RTL

CODE_00C5AA:
	JSR.w CODE_00C402
	REP.b #$20
	LDA.w #$4000
	ORA.w $0407
	STA.w $0407
	LDA.w $06F8
	STA.w $0413
	BRL.w CODE_00C521

CODE_00C5C1:
	REP.b #$30
	LDA.b $93
	BPL.b CODE_00C5CB
	EOR.w #$FFFF
	INC
CODE_00C5CB:
	LDX.b $95
	BMI.b CODE_00C610
	CMP.b $95
	BEQ.b CODE_00C5D5
	BCS.b CODE_00C610
CODE_00C5D5:
	REP.b #$30
	LDX.b $8F
	LDY.b $91
	LDA.b $93
	STA.b $8F
	LDA.b $95
	STA.b $91
	STX.b $93
	STY.b $95
	JSR.w CODE_00C402
	REP.b #$30
	LDX.b $8F
	LDY.b $91
	LDA.b $93
	STA.b $8F
	LDA.b $95
	STA.b $91
	STX.b $93
	STY.b $95
	REP.b #$20
	LDA.w #$2000
	ORA.w $0407
	STA.w $0407
	LDA.w $06F8
	STA.w $040D
	BRL.w CODE_00C521

CODE_00C610:
	REP.b #$20
	LDA.b $8F
	EOR.b $93
	ASL
	BCS.b CODE_00C61B
	SEC
	RTL

CODE_00C61B:
	STZ.w $06FA
	LDA.b $8F
	BMI.b CODE_00C637
	INC.w $06FA
	REP.b #$30
	LDX.b $8F
	LDY.b $91
	LDA.b $93
	STA.b $8F
	LDA.b $95
	STA.b $91
	STX.b $93
	STY.b $95
CODE_00C637:
	JSR.w CODE_00C47B
	BCC.b CODE_00C63E
	SEC
	RTL

CODE_00C63E:
	REP.b #$20
	LDA.b $8F
	PHA
	LDA.b $91
	PHA
	LDA.w $06E6
	STA.b $8F
	LDA.w $06E8
	STA.b $91
	JSR.w CODE_00C402
	REP.b #$30
	LDA.w $06F8
	STA.w $040D
	LDX.b $93
	LDY.b $95
	PLA
	STA.b $95
	PLA
	STA.b $93
	PHY
	PHX
	LDA.w $06E6
	STA.b $8F
	LDA.w $06E8
	STA.b $91
	JSR.w CODE_00C402
	REP.b #$20
	LDA.w $06F8
	STA.w $0413
	PLA
	STA.b $8F
	PLA
	STA.b $91
	LDA.w #$6000
	ORA.w $0407
	STA.w $0407
	REP.b #$30
	LDX.b $8F
	LDY.b $91
	LDA.b $93
	STA.b $8F
	LDA.b $95
	STA.b $91
	STX.b $93
	STY.b $95
	LDA.w $06FA
	BEQ.b CODE_00C6C2
	REP.b #$30
	LDX.b $8F
	LDY.b $91
	LDA.b $93
	STA.b $8F
	LDA.b $95
	STA.b $91
	STX.b $93
	STY.b $95
	REP.b #$30
	LDX.w $040D
	LDA.w $0413
	STA.w $040D
	STX.w $0413
CODE_00C6C2:
	BRL.w CODE_00C521

CODE_00C6C5:
	SEP.b #$10
	LDX.b #DATA_0F815E>>16
	STX.b $8E
	REP.b #$30
	LDX.w #DATA_0F815E
	STX.b $8C
	AND.w #$00FF
	ASL
	TAY
	LDA.b [$8C],y
	STA.b $8C
	SEP.b #$20
	LDA.b #DATA_0FCF67>>16
	STA.b $8E
	REP.b #$30
	LDY.w #$0100
	LDX.w #$0000
CODE_00C6E9:
	STZ.w $0415,x
	INX
	INX
	DEY
	BNE.b CODE_00C6E9
	LDY.w #$0000
	SEP.b #$20
	LDA.b [$8C],y
	STA.b $8A
	INY
	LDA.b [$8C],y
	STA.b $8B
	INY
	LDX.w #$0000
	SEP.b #$20
CODE_00C705:
	LDA.b [$8C],y
	STA.w $0615,x
	BEQ.b CODE_00C710
	INY
	INX
	BRA.b CODE_00C705

CODE_00C710:
	INY
	REP.b #$10
	PHY
	LDX.w #$0002
	SEP.b #$10
	LDY.b $8A
	REP.b #$10
CODE_00C71D:
	REP.b #$20
	LDA.w #$AA04
	STA.w $0415,x
	INX
	INX
	DEY
	BNE.b CODE_00C71D
	PLY
	SEP.b #$20
	LDA.b #$00
	STA.b $95
CODE_00C731:
	REP.b #$10
	PHY
	SEP.b #$30
	LDA.b $95
	INC
	LDX.b #$20
	SEP.b #$30
	STA.w !REGISTER_Multiplicand
	STX.w !REGISTER_Multiplier
	NOP #3
	REP.b #$30
	LDA.w !REGISTER_ProductOrRemainderLo
	TAX
	REP.b #$20
	LDA.w #$AA02
	STA.w $0415,x
	INX
	INX
	REP.b #$10
	PLY
	SEP.b #$20
	LDA.b $8A
	STA.b $93
CODE_00C75F:
	LDA.b [$8C],y
	REP.b #$20
	AND.w #$000F
	ORA.w #$AA00
	STA.w $0415,x
	INX
	INX
	INY
	SEP.b #$20
	DEC.b $93
	BNE.b CODE_00C75F
	REP.b #$20
	LDA.w #$AA08
	STA.w $0415,x
	SEP.b #$20
	INC.b $95
	LDA.b $95
	CMP.b $8B
	BCC.b CODE_00C731
	SEP.b #$30
	LDA.b $8B
	INC
	LDX.b #$20
	SEP.b #$30
	STA.w !REGISTER_Multiplicand
	STX.w !REGISTER_Multiplier
	NOP #3
	REP.b #$30
	LDA.w !REGISTER_ProductOrRemainderLo
	SEP.b #$10
	LDY.b $8A
	REP.b #$10
	TAX
	INX
	INX
CODE_00C7A7:
	REP.b #$20
	LDA.w #$AA01
	STA.w $0415,x
	INX
	INX
	DEY
	BNE.b CODE_00C7A7
	SEP.b #$20
	INC.b $8A
	INC.b $8A
	INC.b $8B
	INC.b $8B
	RTL

CODE_00C7BF:
	SEP.b #$20
	PHA
	LDA.b #$80
	STA.w !REGISTER_VRAMAddressIncrementValue
	PLA
	REP.b #$30
	STA.w !REGISTER_VRAMAddressLo
	LDA.w #$000E
CODE_00C7D0:
	PHA
	LDY.w #$0012
CODE_00C7D4:
	NOP
	TXA
	AND.w #$03FF
	ORA.w #$1C00
	STA.w !REGISTER_WriteToVRAMPortLo
	INX
	DEY
	BNE.b CODE_00C7D4
	PLA
	DEC
	BEQ.b CODE_00C7F7
	PHA
	LDY.w #$000E
CODE_00C7EB:
	LDA.w #$0000
	STA.w !REGISTER_WriteToVRAMPortLo
	DEY
	BNE.b CODE_00C7EB
	PLA
	BRA.b CODE_00C7D0

CODE_00C7F7:
	RTS

CODE_00C7F8:
	REP.b #$30
	LDA.w #$0000
	LDX.w #$8000
	JSL.l CODE_00C90C
	JSL.l CODE_01A9A1
	SEP.b #$20
	LDA.b #$09
	STA.w !REGISTER_BGModeAndTileSizeSetting
	LDA.b #$71
	STA.w !REGISTER_BG1AddressAndSize
	LDA.b #$78
	STA.w !REGISTER_BG2AddressAndSize
	LDA.b #$7C
	STA.w !REGISTER_BG3AddressAndSize
	LDA.b #$00
	STA.w !REGISTER_BG4AddressAndSize
	LDA.b #$02
	STA.w !REGISTER_BG1And2TileDataDesignation
	LDA.b #$06
	STA.w !REGISTER_BG3And4TileDataDesignation
	LDA.b #$17
	STA.w !REGISTER_MainScreenLayers
	RTS

CODE_00C833:
	SEP.b #$20
	LDA.b #$80
	STA.w $1339
	STA.w !REGISTER_ScreenDisplayRegister
	SEP.b #$20
	STZ.w $02FF
	STZ.w !REGISTER_HDMAEnable
	JSL.l CODE_0092E1
	JSR.w CODE_00C7F8
	REP.b #$30
	LDA.w #$70E7
	LDX.w #$0200
	JSR.w CODE_00C7BF
	REP.b #$30
	LDA.w #$74E7
	LDX.w #$0300
	JSR.w CODE_00C7BF
	SEP.b #$20
	STZ.w $1339
	LDA.b #$0F
	AND.w $1336
	STA.w !REGISTER_ScreenDisplayRegister
	RTL

CODE_00C870:
	SEP.b #$20
	LDA.b #$80
	STA.w $1339
	STA.w !REGISTER_ScreenDisplayRegister
	SEP.b #$20
	STZ.w $02FF
	STZ.w !REGISTER_HDMAEnable
	JSL.l CODE_0092E1
	JSR.w CODE_00C7F8
	REP.b #$30
	LDA.w #$7007
	LDX.w #$0200
	JSR.w CODE_00C7BF
	REP.b #$30
	LDA.w #$7407
	LDX.w #$0300
	JSR.w CODE_00C7BF
	REP.b #$30
	LDA.w #$71C7
	LDX.w #$0000
	JSR.w CODE_00C7BF
	REP.b #$30
	LDA.w #$75C7
	LDX.w #$0100
	JSR.w CODE_00C7BF
	SEP.b #$20
	STZ.w $1339
	LDA.b #$0F
	AND.w $1336
	STA.w !REGISTER_ScreenDisplayRegister
	RTL

CODE_00C8C3:
	SEP.b #$20
	LDA.b #$80
	STA.w $1339
	STA.w !REGISTER_ScreenDisplayRegister
	SEP.b #$20
	STZ.w $02FF
	STZ.w !REGISTER_HDMAEnable
	JSL.l CODE_0092E1
	JSR.w CODE_00C7F8
	SEP.b #$20
	STZ.w $1339
	LDA.b #$0F
	AND.w $1336
	STA.w !REGISTER_ScreenDisplayRegister
	RTL

CODE_00C8EA:
	SEP.b #$30
	STX.w $0B75
	STY.w $0B76
	STA.w $0B74
	RTL

CODE_00C8F6:
	REP.b #$30
	TYA
	SEC
	SBC.w #$8000
	TAY
	SEP.b #$20
CODE_00C900:
	LDA.w DATA_03CBD9&$FF8000,y
	STA.b $00,x
	INX
	INY
	CMP.b #$00
	BNE.b CODE_00C900
	RTL

CODE_00C90C:
	SEP.b #$10
	LDY.b #$80
	STY.w !REGISTER_VRAMAddressIncrementValue
	REP.b #$30
	STA.w !REGISTER_VRAMAddressLo
CODE_00C918:
	STZ.w !REGISTER_WriteToVRAMPortLo
	DEX
	BNE.b CODE_00C918
	RTL

CODE_00C91F:
	SEP.b #$30
	TAX
	LDA.w $1336
	BEQ.b CODE_00C932
	STX.w $1337
	STX.w $1338
	LDA.b #$FF
	STA.w $1335
CODE_00C932:
	RTL

CODE_00C933:
	SEP.b #$30
	TAX
	LDA.w $1336
	AND.b #$0F
	CMP.b #$0F
	BEQ.b CODE_00C94A
	STX.w $1337
	STX.w $1338
	LDA.b #$01
	STA.w $1335
CODE_00C94A:
	RTL

CODE_00C94B:
	SEI
	CLD
	CLV
	CLC
	XCE
	SEP.b #$20
	STZ.w !REGISTER_IRQNMIAndJoypadEnableFlags
	STZ.w !REGISTER_EnableFastROM
	SEP.b #$20
	LDA.b #$80
	STA.w $1339
	STA.w !REGISTER_ScreenDisplayRegister
	REP.b #$30
	LDA.w $1C93
	STA.b $00
	STZ.b $02
	LDX.w #$000002
	LDY.w #$000003
	LDA.w #$1FFD
	MVN $000003>>16,$000002>>16
	SEP.b #$20
	LDA.b #DATA_038000>>16
	PHA
	PLB
	REP.b #$20
	LDA.w #$01FF
	TCS
	LDA.w #$00B5
	AND.w #$FF00
	TCD
	LDA.b $00
	STA.w $1C93
	STZ.b $00
	REP.b #$20
	LDA.w #$0001
	ORA.w $1C93
	STA.w $1C93
	BRL.w CODE_00C9EA

CODE_00C99F:
	SEI
	CLD
	CLV
	CLC
	XCE
	SEP.b #$20
	STZ.w !REGISTER_IRQNMIAndJoypadEnableFlags
	STZ.w !REGISTER_EnableFastROM
	SEP.b #$20
	LDA.b #$80
	STA.w $1339
	STA.w !REGISTER_ScreenDisplayRegister
	REP.b #$30
	LDA.w $1C93
	STA.b $00
	STZ.b $02
	LDX.w #$000002
	LDY.w #$000003
	LDA.w #$1FFD
	MVN $000003>>16,$000002>>16
	SEP.b #$20
	LDA.b #DATA_038000>>16
	PHA
	PLB
	REP.b #$20
	LDA.w #$01FF
	TCS
	LDA.w #$00B5
	AND.w #$FF00
	TCD
	LDA.b $00
	STA.w $1C93
	STZ.b $00
	REP.b #$20
	STZ.w $1C93
CODE_00C9EA:
	SEP.b #$20
	LDA.b #$80
	STA.w !REGISTER_VRAMAddressIncrementValue
	REP.b #$30
	LDA.w #$0000
	STA.w !REGISTER_VRAMAddressLo
	LDX.w #$8000
CODE_00C9FC:
	STZ.w !REGISTER_WriteToVRAMPortLo
	DEX
	BNE.b CODE_00C9FC
	JSR.w CODE_008000
	CLI
	SEP.b #$20
	LDA.w $03C5
	ORA.b #$80
	STA.w !REGISTER_IRQNMIAndJoypadEnableFlags
	STA.w $03C5
	JML.l CODE_00A58B

CODE_00CA17:
	REP.b #$20
	PHA
	LDA.w $1C91
CODE_00CA1D:
	CMP.w $1C91
	BEQ.b CODE_00CA1D
	PLA
	RTL

CODE_00CA24:
	REP.b #$30
	LDY.w $1C8F
	BNE.b CODE_00CA34
	CMP.w $1C8D
	BEQ.b CODE_00CA34
	BCC.b CODE_00CA34
	INX
	RTS

CODE_00CA34:
	SEP.b #$20
	INC.b $00,x
	REP.b #$20
	PHA
	EOR.w #$FFFF
	INC
	CLC
	ADC.w $1C8D
	STA.w $1C8D
	LDA.w #$FFFF
	ADC.w $1C8F
	STA.w $1C8F
	PLA
	BRA.b CODE_00CA24

CODE_00CA52:
	REP.b #$30
	STA.w $1C8D
	STY.w $1C8F
	PHX
	SEP.b #$20
	LDA.b #$30
	STA.b $00,x
	STA.b $01,x
	STA.b $02,x
	STA.b $03,x
	STA.b $04,x
	STZ.b $05,x
	REP.b #$20
	LDA.w #$2710
	JSR.w CODE_00CA24
	REP.b #$20
	LDA.w #$03E8
	JSR.w CODE_00CA24
	REP.b #$20
	LDA.w #$0064
	JSR.w CODE_00CA24
	REP.b #$20
	LDA.w #$000A
	JSR.w CODE_00CA24
	REP.b #$20
	LDA.w #$0001
	JSR.w CODE_00CA24
	REP.b #$30
	PLX
	LDY.w #$0004
	SEP.b #$20
CODE_00CA9B:
	LDA.b $00,x
	CMP.b #$30
	BNE.b CODE_00CABC
	LDA.b $01,x
	BEQ.b CODE_00CABC
	LDA.b $01,x
	STA.b $00,x
	LDA.b $02,x
	STA.b $01,x
	LDA.b $03,x
	STA.b $02,x
	LDA.b $04,x
	STA.b $03,x
	LDA.b $05,x
	STA.b $04,x
	DEY
	BNE.b CODE_00CA9B
CODE_00CABC:
	RTL

UNK_00CABD:
	db $EA,$EA,$EA,$00

CODE_00CAC1:
	REP.b #$30
	LDX.w #$1C95
	LDY.w #$000A
CODE_00CAC9:
	LDA.b $00,x
	BIT.w #$0001
	BNE.b CODE_00CAC1
	TXA
	CLC
	ADC.w #$0046
	TAX
	DEY
	BNE.b CODE_00CAC9
	RTL

CODE_00CADA:
	SEP.b #$20
	LDA.w $1F64
	BNE.b CODE_00CB17
	LDA.b #$01
	STA.w $1F64
	JSL.l CODE_00CA17
	REP.b #$20
	LDA.w #$0008
	ORA.w $1C93
	STA.w $1C93
	SEP.b #$20
	LDA.b #$7EA4A5>>16
	PHA
	REP.b #$30
	LDA.w #$0000
	LDX.w #$7EA4A5
	LDY.w #$0700
	JSL.l CODE_00939B
	SEP.b #$20
	PLA
	REP.b #$20
	LDA.w #$FFF7
	AND.w $1C93
	STA.w $1C93
CODE_00CB17:
	SEP.b #$20
	LDA.b #$80
	STA.w $1339
	STA.w !REGISTER_ScreenDisplayRegister
	SEP.b #$20
	LDA.b #$80
	PHA
	LDA.b #$7EA4A5>>16
	PHA
	REP.b #$30
	LDA.w #$7EA4A5
	LDX.w #$0700
	LDY.w #$7C00
	JSL.l CODE_00936C
	SEP.b #$20
	PLA
	PLA
	SEP.b #$20
	STZ.w $1339
	LDA.b #$0F
	AND.w $1336
	STA.w !REGISTER_ScreenDisplayRegister
	RTL

CODE_00CB4A:
	REP.b #$30
	LDX.w #$1C95
	LDY.w #$000A
CODE_00CB52:
	LDA.b $00,x
	BIT.w #$0001
	BNE.b CODE_00CB5A
	RTS

CODE_00CB5A:
	TXA
	CLC
	ADC.w #$0046
	TAX
	DEY
	BNE.b CODE_00CB52
	JSL.l CODE_00CA17
	BRA.b CODE_00CB4A

CODE_00CB69:
	REP.b #$30
	STX.w $1F5D
CODE_00CB6E:
	PHA
	JSR.w CODE_00CB4A
	REP.b #$30
	PLY
	PHX
	STZ.w $1F62
	SEP.b #$20
	STZ.w $1F61
	REP.b #$30
	LDA.w $0000,y
	STA.w $1F5F
	INY
	INY
	REP.b #$20
	LDA.w $1F5F
	BIT.w #$0400
	BEQ.b CODE_00CB9A
	LDA.w $0000,y
	STA.w $1F5D
	INY
	INY
CODE_00CB9A:
	REP.b #$20
	LDA.w $1F5F
	BIT.w #$8000
	BEQ.b CODE_00CBAE
	SEP.b #$20
	LDA.b #$01
	ORA.w $1F61
	STA.w $1F61
CODE_00CBAE:
	REP.b #$20
	LDA.w $1F5F
	BIT.w #$4000
	BEQ.b CODE_00CBB9
	NOP
CODE_00CBB9:
	REP.b #$20
	LDA.w $1F5F
	BIT.w #$1000
	BEQ.b CODE_00CBCD
	SEP.b #$20
	LDA.b #$40
	ORA.w $1F61
	STA.w $1F61
CODE_00CBCD:
	REP.b #$20
	LDA.w $1F5F
	BIT.w #$2000
	BEQ.b CODE_00CBE1
	SEP.b #$20
	LDA.b #$80
	ORA.w $1F61
	STA.w $1F61
CODE_00CBE1:
	REP.b #$20
	LDA.w $1F5F
	BIT.w #$0800
	BEQ.b CODE_00CBF5
	LDA.w $0000,y
	PHA
	INY
	INY
	STY.w $1F59
	PLY
CODE_00CBF5:
	SEP.b #$20
	LDA.w $1F5F
	AND.b #$07
	ASL
	ASL
	ORA.b #$20
	ORA.w $1F61
	STA.w $1F61
	AND.b #$03
	BNE.b CODE_00CC35
CODE_00CC0A:
	SEP.b #$20
	LDA.w $0000,y
	BEQ.b CODE_00CC66
	CMP.b #$21
	BNE.b CODE_00CC16
	INC
CODE_00CC16:
	SEC
	SBC.b #$20
	STA.b $02,x
	INX
	LDA.w $1F61
	STA.b $02,x
	INX
	REP.b #$20
	INC.w $1F62
	LDA.w $1F62
	CMP.w #$0023
	BCC.b CODE_00CC32
CODE_00CC2F:
	BRL.w CODE_00CC2F

CODE_00CC32:
	INY
	BRA.b CODE_00CC0A

CODE_00CC35:
	SEP.b #$20
	LDA.w $0000,y
	BEQ.b CODE_00CC66
	SEC
	SBC.b #$20
	ASL
	STA.b $02,x
	INC
	STA.b $04,x
	INX
	LDA.w $1F61
	STA.b $02,x
	STA.b $04,x
	INX
	INX
	INX
	REP.b #$20
	INC.w $1F62
	INC.w $1F62
	LDA.w $1F62
	CMP.w #$0023
	BCC.b CODE_00CC63
CODE_00CC60:
	BRL.w CODE_00CC60

CODE_00CC63:
	INY
	BRA.b CODE_00CC35

CODE_00CC66:
	REP.b #$10
	INY
	PHY
	SEP.b #$20
	LDA.b #$80
	PHA
	LDA.b #$00
	PHA
	REP.b #$30
	LDA.w $1F5B
	CLC
	ADC.w $1F5D
	TAY
	LDA.w $1F62
	ASL
	TAX
	LDA.b $05,S
	INC
	INC
	JSL.l CODE_00936C
	SEP.b #$20
	PLA
	PLA
	REP.b #$30
	PLY
	PLX
	LDA.w #$0001
	ORA.b $00,x
	STA.b $00,x
	LDA.w $1F5F
	BIT.w #$0800
	BEQ.b CODE_00CCA3
	LDY.w $1F59
CODE_00CCA3:
	LDA.w $0000,y
	BEQ.b CODE_00CCB7
	TAX
	LDA.w #$0020
	CLC
	ADC.w $1F5D
	STA.w $1F5D
	TXA
	BRL.w CODE_00CB6E

CODE_00CCB7:
	RTL

CODE_00CCB8:
	REP.b #$30
	STA.b $B5
	LDY.w #$0000
	SEP.b #$20
CODE_00CCC1:
	LDA.b ($B5),y
	BEQ.b CODE_00CCC8
	INY
	BRA.b CODE_00CCC1

CODE_00CCC8:
	RTS

CODE_00CCC9:
	REP.b #$30
	STX.w $1F53
	STA.w $1F55
	STZ.w $1F57
	TYA
	ORA.w #$0C00
	STA.w $1F51
	LDA.w #$001F51
	JSL.l CODE_00CB69
	RTL

CODE_00CCE3:
	REP.b #$30
	PHA
	PHX
	PHY
	JSR.w CODE_00CCB8
	REP.b #$30
	LDA.b $01,S
	BIT.w #$8000
	BEQ.b CODE_00CCF7
	TYA
	ASL
	TAY
CODE_00CCF7:
	TYA
	LSR
	EOR.w #$FFFF
	INC
	CLC
	ADC.w #$0010
	STA.b $B5
	PLY
	PLX
	TXA
	CLC
	ADC.b $B5
	TAX
	PLA
	JSL.l CODE_00CCC9
	RTL

CODE_00CD10:
	REP.b #$30
	CMP.w #$0070
	BCC.b CODE_00CD18
	RTS

CODE_00CD18:
	PHA
	TXA
	BPL.b CODE_00CD2A
	EOR.w #$FFFF
	INC
	CLC
	ADC.b $BB
	STA.b $BB
	LDX.w #$0000
	BRA.b CODE_00CD31

CODE_00CD2A:
	CMP.w #$0090
	BCC.b CODE_00CD31
	PLA
	RTS

CODE_00CD31:
	TYA
	BPL.b CODE_00CD36
	PLA
	RTS

CODE_00CD36:
	CMP.w #$0090
	BCC.b CODE_00CD3E
	LDY.w #$008F
CODE_00CD3E:
	PLA
	PHX
	ASL
	TAX
	LDA.w DATA_0DB07F,x
	CLC
	ADC.b $4A
	STA.b $4D
	CLC
	ADC.w #$0010
	STA.b $50
	PLX
	SEP.b #$20
	LDA.w DATA_0DB15F,x
	STA.b $6B
	EOR.b #$FF
	STA.b $6C
	LDA.w DATA_0DB1EF,y
	STA.b $6D
	EOR.b #$FF
	STA.b $6E
	REP.b #$20
	TXA
	LSR
	LSR
	LSR
	STA.b $6F
	ASL
	ASL
	ASL
	ASL
	ASL
	PHA
	TYA
	LSR
	LSR
	LSR
	SEC
	SBC.b $6F
	TAX
	BEQ.b CODE_00CD80
	BRL.w CODE_00CE70

CODE_00CD80:
	REP.b #$20
	LDA.w #$0000
	STA.b $B9
	SEP.b #$20
	LDA.b $6B
	STA.b $6F
	ORA.b $6D
	STA.b $6B
	EOR.b #$FF
	STA.b $6C
	LDX.b $BB
	LDA.w DATA_0D8000,x
	CLC
	ADC.b $BD
	TAY
	LDA.b ($B7),y
	LSR
	ROL.b $B9
	LSR
	ROL.b $BA
	INX
	LSR.b $6F
	LSR.b $6F
	BCC.b CODE_00CDB0
	BRL.w CODE_00CE30

CODE_00CDB0:
	LDA.w DATA_0D8000,x
	ADC.b $BD
	TAY
	LDA.b ($B7),y
	LSR
	ROL.b $B9
	LSR
	ROL.b $BA
	INX
	LSR.b $6F
	BCS.b CODE_00CE30
	LDA.w DATA_0D8000,x
	ADC.b $BD
	TAY
	LDA.b ($B7),y
	LSR
	ROL.b $B9
	LSR
	ROL.b $BA
	INX
	LSR.b $6F
	BCS.b CODE_00CE30
	LDA.w DATA_0D8000,x
	ADC.b $BD
	TAY
	LDA.b ($B7),y
	LSR
	ROL.b $B9
	LSR
	ROL.b $BA
	INX
	LSR.b $6F
	BCS.b CODE_00CE30
	LDA.w DATA_0D8000,x
	ADC.b $BD
	TAY
	LDA.b ($B7),y
	LSR
	ROL.b $B9
	LSR
	ROL.b $BA
	INX
	LSR.b $6F
	BCS.b CODE_00CE30
	LDA.w DATA_0D8000,x
	ADC.b $BD
	TAY
	LDA.b ($B7),y
	LSR
	ROL.b $B9
	LSR
	ROL.b $BA
	INX
	LSR.b $6F
	BCS.b CODE_00CE30
	LDA.w DATA_0D8000,x
	ADC.b $BD
	TAY
	LDA.b ($B7),y
	LSR
	ROL.b $B9
	LSR
	ROL.b $BA
	INX
	LSR.b $6F
	BCS.b CODE_00CE30
	LDY.w DATA_0D8000,x
	ADC.b $BD
	TAY
	LDA.b ($B7),y
	LSR
	ROL.b $B9
	LSR
	ROL.b $BA
CODE_00CE30:
	LDA.b $6C
	AND.b $B9
	STA.b $B9
	LDA.b $6C
	AND.b $BA
	STA.b $BA
	LDA.b $6C
	AND.b $BE
	STA.b $6F
	LDA.b $6C
	AND.b $BF
	STA.b $70
	REP.b #$30
	PLY
	LDA.b [$4D],y
	SEP.b #$20
	AND.b $6B
	ORA.b $B9
	XBA
	AND.b $6B
	ORA.b $BA
	XBA
	REP.b #$20
	STA.b [$4D],y
	LDA.b [$50],y
	SEP.b #$20
	AND.b $6B
	ORA.b $6F
	XBA
	AND.b $6B
	ORA.b $70
	XBA
	REP.b #$20
	STA.b [$50],y
	RTS

CODE_00CE70:
	REP.b #$30
	PLY
	PHX
	PHY
	LDA.w #$0000
	STA.b $B9
	LDX.b $BB
	SEP.b #$20
	LDA.b $6B
	STA.b $6F
	LDA.w DATA_0D8000,x
	CLC
	ADC.b $BD
	TAY
	LDA.b ($B7),y
	LSR
	ROL.b $B9
	LSR
	ROL.b $BA
	INX
	LSR.b $6F
	LSR.b $6F
	BCC.b CODE_00CE9B
	BRL.w CODE_00CF1C

CODE_00CE9B:
	LDA.w DATA_0D8000,x
	ADC.b $BD
	TAY
	LDA.b ($B7),y
	LSR
	ROL.b $B9
	LSR
	ROL.b $BA
	INX
	LSR.b $6F
	BCS.b CODE_00CF1C
	LDA.w DATA_0D8000,x
	ADC.b $BD
	TAY
	LDA.b ($B7),y
	LSR
	ROL.b $B9
	LSR
	ROL.b $BA
	INX
	LSR.b $6F
	BCS.b CODE_00CF1C
	LDA.w DATA_0D8000,x
	ADC.b $BD
	TAY
	LDA.b ($B7),y
	LSR
	ROL.b $B9
	LSR
	ROL.b $BA
	INX
	LSR.b $6F
	BCS.b CODE_00CF1C
	LDA.w DATA_0D8000,x
	ADC.b $BD
	TAY
	LDA.b ($B7),y
	LSR
	ROL.b $B9
	LSR
	ROL.b $BA
	INX
	LSR.b $6F
	BCS.b CODE_00CF1C
	LDA.w DATA_0D8000,x
	ADC.b $BD
	TAY
	LDA.b ($B7),y
	LSR
	ROL.b $B9
	LSR
	ROL.b $BA
	INX
	LSR.b $6F
	BCS.b CODE_00CF1C
	LDA.w DATA_0D8000,x
	ADC.b $BD
	TAY
	LDA.b ($B7),y
	LSR
	ROL.b $B9
	LSR
	ROL.b $BA
	INX
	LSR.b $6F
	BCS.b CODE_00CF1C
	LDA.w DATA_0D8000,x
	ADC.b $BD
	TAY
	LDA.b ($B7),y
	LSR
	ROL.b $B9
	LSR
	ROL.b $BA
	INX
CODE_00CF1C:
	STX.b $BB
	PLY
	PLX
	LDA.b $6C
	AND.b $BE
	STA.b $6F
	LDA.b $6C
	AND.b $BF
	STA.b $70
	LDA.b $6B
	AND.b [$4D],y
	ORA.b $B9
	STA.b [$4D],y
	LDA.b $6B
	AND.b [$50],y
	ORA.b $6F
	STA.b [$50],y
	INY
	LDA.b $6B
	AND.b [$4D],y
	ORA.b $BA
	STA.b [$4D],y
	LDA.b $6B
	AND.b [$50],y
	ORA.b $70
	STA.b [$50],y
	REP.b #$20
	TYA
	CLC
	ADC.w #$001F
	TAY
	DEX
	BNE.b CODE_00CF5B
	BRL.w CODE_00CFFE

CODE_00CF5B:
	PHX
	PHY
	LDX.b $BB
	LDA.w #$0000
	SEP.b #$20
	LDA.w DATA_0D8000,x
	CLC
	ADC.b $BD
	TAY
	LDA.b ($B7),y
	LSR
	ROL.b $B9
	LSR
	ROL.b $BA
	INX
	LDA.w DATA_0D8000,x
	CLC
	ADC.b $BD
	TAY
	LDA.b ($B7),y
	LSR
	ROL.b $B9
	LSR
	ROL.b $BA
	INX
	LDA.w DATA_0D8000,x
	CLC
	ADC.b $BD
	TAY
	LDA.b ($B7),y
	LSR
	ROL.b $B9
	LSR
	ROL.b $BA
	INX
	LDA.w DATA_0D8000,x
	CLC
	ADC.b $BD
	TAY
	LDA.b ($B7),y
	LSR
	ROL.b $B9
	LSR
	ROL.b $BA
	INX
	LDA.w DATA_0D8000,x
	CLC
	ADC.b $BD
	TAY
	LDA.b ($B7),y
	LSR
	ROL.b $B9
	LSR
	ROL.b $BA
	INX
	LDA.w DATA_0D8000,x
	CLC
	ADC.b $BD
	TAY
	LDA.b ($B7),y
	LSR
	ROL.b $B9
	LSR
	ROL.b $BA
	INX
	LDA.w DATA_0D8000,x
	CLC
	ADC.b $BD
	TAY
	LDA.b ($B7),y
	LSR
	ROL.b $B9
	LSR
	ROL.b $BA
	INX
	LDA.w DATA_0D8000,x
	CLC
	ADC.b $BD
	TAY
	LDA.b ($B7),y
	LSR
	ROL.b $B9
	LSR
	ROL.b $BA
	INX
	STX.b $BB
	PLY
	PLX
	REP.b #$20
	LDA.b $B9
	STA.b [$4D],y
	LDA.b $BE
	STA.b [$50],y
	TYA
	CLC
	ADC.w #$0020
	TAY
	DEX
	BEQ.b CODE_00CFFE
	BRL.w CODE_00CF5B

CODE_00CFFE:
	REP.b #$20
	LDA.w #$0000
	SEP.b #$20
	PHY
	LDX.b $BB
	LDA.w DATA_0D8000,x
	CLC
	ADC.b $BD
	TAY
	LDA.b ($B7),y
	LSR
	ROL.b $B9
	LSR
	ROL.b $BA
	INX
	LDA.w DATA_0D8000,x
	CLC
	ADC.b $BD
	TAY
	LDA.b ($B7),y
	LSR
	ROL.b $B9
	LSR
	ROL.b $BA
	INX
	LDA.w DATA_0D8000,x
	CLC
	ADC.b $BD
	TAY
	LDA.b ($B7),y
	LSR
	ROL.b $B9
	LSR
	ROL.b $BA
	INX
	LDA.w DATA_0D8000,x
	CLC
	ADC.b $BD
	TAY
	LDA.b ($B7),y
	LSR
	ROL.b $B9
	LSR
	ROL.b $BA
	INX
	LDA.w DATA_0D8000,x
	CLC
	ADC.b $BD
	TAY
	LDA.b ($B7),y
	LSR
	ROL.b $B9
	LSR
	ROL.b $BA
	INX
	LDA.w DATA_0D8000,x
	CLC
	ADC.b $BD
	TAY
	LDA.b ($B7),y
	LSR
	ROL.b $B9
	LSR
	ROL.b $BA
	INX
	LDA.w DATA_0D8000,x
	CLC
	ADC.b $BD
	TAY
	LDA.b ($B7),y
	LSR
	ROL.b $B9
	LSR
	ROL.b $BA
	INX
	LDA.w DATA_0D8000,x
	CLC
	ADC.b $BD
	TAY
	LDA.b ($B7),y
	LSR
	ROL.b $B9
	LSR
	ROL.b $BA
	INX
	PLY
	LDA.b $6E
	AND.b $B9
	STA.b $B9
	LDA.b $6E
	AND.b $BA
	STA.b $BA
	LDA.b $6E
	AND.b $BE
	STA.b $6F
	LDA.b $6E
	AND.b $BF
	STA.b $70
	LDA.b $6D
	AND.b [$4D],y
	ORA.b $B9
	STA.b [$4D],y
	LDA.b $6D
	AND.b [$50],y
	ORA.b $6F
	STA.b [$50],y
	INY
	LDA.b $6D
	AND.b [$4D],y
	ORA.b $BA
	STA.b [$4D],y
	LDA.b $6D
	AND.b [$50],y
	ORA.b $70
	STA.b [$50],y
	RTS

CODE_00D0C3:
	REP.b #$30
	STA.b $03
	STA.b $C2
	STX.b $0A
	STY.b $0C
	LDA.b $06,S
	SEP.b #$20
	LSR
	LSR
	STA.b $BD
	REP.b #$20
	LDA.b $03
	BEQ.b CODE_00D0E0
	CMP.w #$003F
	BCC.b CODE_00D0E1
CODE_00D0E0:
	RTL

CODE_00D0E1:
	EOR.w #$FFFF
	INC
	ASL
	PHP
	ROR
	PLP
	ROR
	STA.b $06
	STZ.b $08
	PHB
	SEP.b #$20
	LDA.b #DATA_0D8000>>16
	PHA
	PLB
	REP.b #$30
	LDA.b $C2
	ASL
	TAX
	LDA.w DATA_0DA000,x
	SEC
	SBC.w #$8000
	STA.b $C0
CODE_00D104:
	REP.b #$30
	LDA.b $0A
	SEC
	SBC.b $03
	STA.b $C4
	LDA.b $0A
	CLC
	ADC.b $03
	STA.b $C6
	LDA.b $0C
	SEC
	SBC.b $08
	BCC.b CODE_00D14C
	STA.b $C8
	LDA.b $C2
	SEC
	SBC.b $08
	CLC
	ADC.b $C0
	TAX
	SEP.b #$20
	LDA.w DATA_0D8000,x
	REP.b #$20
	AND.w #$00FF
	XBA
	CLC
	ADC.b $05,S
	STA.b $B7
	LDA.b $03
	ASL
	TAX
	LDA.w DATA_0DA000,x
	SEC
	SBC.w #$8000
	STA.b $BB
	LDA.b $C8
	LDX.b $C4
	LDY.b $C6
	JSR.w CODE_00CD10
CODE_00D14C:
	REP.b #$30
	LDA.b $0C
	CLC
	ADC.b $08
	CMP.w #$0070
	BCS.b CODE_00D189
	STA.b $C8
	LDA.b $C2
	CLC
	ADC.b $08
	CLC
	ADC.b $C0
	TAX
	SEP.b #$20
	LDA.w DATA_0D8000,x
	REP.b #$20
	AND.w #$00FF
	XBA
	CLC
	ADC.b $05,S
	STA.b $B7
	LDA.b $03
	ASL
	TAX
	LDA.w DATA_0DA000,x
	SEC
	SBC.w #$8000
	STA.b $BB
	LDA.b $C8
	LDX.b $C4
	LDY.b $C6
	JSR.w CODE_00CD10
CODE_00D189:
	REP.b #$20
	LDA.b $06
	BMI.b CODE_00D19C
	DEC.b $03
	BMI.b CODE_00D19A
	SEC
	SBC.b $03
	STA.b $06
	BRA.b CODE_00D189

CODE_00D19A:
	PLB
	RTL

CODE_00D19C:
	INC.b $08
	LDA.b $08
	CLC
	ADC.b $06
	STA.b $06
	BRL.w CODE_00D104

CODE_00D1A8:
	REP.b #$30
	STA.b $03
	STA.b $C2
	STX.b $0A
	STY.b $0C
	LDA.b $06,S
	SEP.b #$20
	LSR
	LSR
	STA.b $BD
	REP.b #$20
	LDA.b $03
	BEQ.b CODE_00D1C5
	CMP.w #$003F
	BCC.b CODE_00D1C6
CODE_00D1C5:
	RTL

CODE_00D1C6:
	EOR.w #$FFFF
	INC
	ASL
	PHP
	ROR
	PLP
	ROR
	STA.b $06
	STZ.b $08
	PHB
	SEP.b #$20
	LDA.b #DATA_0D8000>>16
	PHA
	PLB
	REP.b #$30
	LDA.b $C2
	ASL
	TAX
	LDA.w DATA_0DA000,x
	SEC
	SBC.w #$8000
	STA.b $C0
CODE_00D1E9:
	REP.b #$30
	LDA.b $0A
	SEC
	SBC.b $03
	STA.b $C4
	LDA.b $0A
	CLC
	ADC.b $03
	STA.b $C6
	LDA.b $0C
	SEC
	SBC.b $08
	BCC.b CODE_00D231
	STA.b $C8
	LDA.b $C2
	SEC
	SBC.b $08
	CLC
	ADC.b $C0
	TAX
	SEP.b #$20
	LDA.w DATA_0D8000,x
	REP.b #$20
	AND.w #$00FF
	XBA
	CLC
	ADC.b $05,S
	STA.b $B7
	LDA.b $03
	ASL
	TAX
	LDA.w DATA_0DA000,x
	SEC
	SBC.w #$8000
	STA.b $BB
	LDA.b $C8
	LDX.b $C4
	LDY.b $C6
	JSR.w CODE_00CD10
CODE_00D231:
	REP.b #$20
	LDA.b $06
	BMI.b CODE_00D244
	DEC.b $03
	BMI.b CODE_00D242
	SEC
	SBC.b $03
	STA.b $06
	BRA.b CODE_00D231

CODE_00D242:
	PLB
	RTL

CODE_00D244:
	INC.b $08
	LDA.b $08
	CLC
	ADC.b $06
	STA.b $06
	BRL.w CODE_00D1E9

CODE_00D250:
	REP.b #$30
	STA.b $03
	STA.b $C2
	STX.b $0A
	STY.b $0C
	LDA.b $06,S
	SEP.b #$20
	LSR
	LSR
	STA.b $BD
	REP.b #$20
	LDA.b $03
	BEQ.b CODE_00D26D
	CMP.w #$003F
	BCC.b CODE_00D26E
CODE_00D26D:
	RTL

CODE_00D26E:
	EOR.w #$FFFF
	INC
	ASL
	PHP
	ROR
	PLP
	ROR
	STA.b $06
	STZ.b $08
	PHB
	SEP.b #$20
	LDA.b #DATA_0D8000>>16
	PHA
	PLB
	REP.b #$30
	LDA.b $C2
	ASL
	TAX
	LDA.w DATA_0DA000,x
	SEC
	SBC.w #$8000
	STA.b $C0
CODE_00D291:
	REP.b #$30
	LDA.b $0A
	SEC
	SBC.b $03
	STA.b $C4
	LDA.b $0A
	CLC
	ADC.b $03
	STA.b $C6
	REP.b #$30
	LDA.b $0C
	CLC
	ADC.b $08
	CMP.w #$0070
	BCS.b CODE_00D2DE
	STA.b $C8
	LDA.b $C2
	CLC
	ADC.b $08
	CLC
	ADC.b $C0
	TAX
	SEP.b #$20
	LDA.w DATA_0D8000,x
	REP.b #$20
	AND.w #$00FF
	XBA
	CLC
	ADC.b $05,S
	STA.b $B7
	LDA.b $03
	ASL
	TAX
	LDA.w DATA_0DA000,x
	SEC
	SBC.w #$8000
	STA.b $BB
	LDA.b $C8
	LDX.b $C4
	LDY.b $C6
	JSR.w CODE_00CD10
CODE_00D2DE:
	REP.b #$20
	LDA.b $06
	BMI.b CODE_00D2F1
	DEC.b $03
	BMI.b CODE_00D2EF
	SEC
	SBC.b $03
	STA.b $06
	BRA.b CODE_00D2DE

CODE_00D2EF:
	PLB
	RTL

CODE_00D2F1:
	INC.b $08
	LDA.b $08
	CLC
	ADC.b $06
	STA.b $06
	BRL.w CODE_00D291

CODE_00D2FD:
	REP.b #$30
	STA.b $03
	STA.b $C2
	STX.b $0A
	STY.b $0C
	LDA.b $06,S
	SEP.b #$20
	LSR
	LSR
	STA.b $BD
	REP.b #$20
	LDA.b $03
	BEQ.b CODE_00D31A
	CMP.w #$003F
	BCC.b CODE_00D31B
CODE_00D31A:
	RTL

CODE_00D31B:
	STZ.b $08
	PHB
	SEP.b #$20
	LDA.b #DATA_0D8000>>16
	PHA
	PLB
	REP.b #$30
	LDA.b $C2
	ASL
	TAX
	LDA.w DATA_0DA000,x
	SEC
	SBC.w #$8000
	STA.b $C0
CODE_00D333:
	REP.b #$30
	LDA.b $0A
	SEC
	SBC.b $C2
	STA.b $C4
	LDA.b $0A
	CLC
	ADC.b $C2
	STA.b $C6
	LDA.b $0C
	SEC
	SBC.b $08
	BCC.b CODE_00D37B
	STA.b $C8
	LDA.b $C2
	SEC
	SBC.b $08
	CLC
	ADC.b $C0
	TAX
	SEP.b #$20
	LDA.w DATA_0D8000,x
	REP.b #$20
	AND.w #$00FF
	XBA
	CLC
	ADC.b $05,S
	STA.b $B7
	LDA.b $C2
	ASL
	TAX
	LDA.w DATA_0DA000,x
	SEC
	SBC.w #$8000
	STA.b $BB
	LDA.b $C8
	LDX.b $C4
	LDY.b $C6
	JSR.w CODE_00CD10
CODE_00D37B:
	REP.b #$30
	LDA.b $0C
	CLC
	ADC.b $08
	CMP.w #$0070
	BCS.b CODE_00D3B8
	STA.b $C8
	LDA.b $C2
	CLC
	ADC.b $08
	CLC
	ADC.b $C0
	TAX
	SEP.b #$20
	LDA.w DATA_0D8000,x
	REP.b #$20
	AND.w #$00FF
	XBA
	CLC
	ADC.b $05,S
	STA.b $B7
	LDA.b $C2
	ASL
	TAX
	LDA.w DATA_0DA000,x
	SEC
	SBC.w #$8000
	STA.b $BB
	LDA.b $C8
	LDX.b $C4
	LDY.b $C6
	JSR.w CODE_00CD10
CODE_00D3B8:
	REP.b #$20
	DEC.b $03
	BPL.b CODE_00D3C0
	PLB
	RTL

CODE_00D3C0:
	INC.b $08
	BRL.w CODE_00D333

CODE_00D3C5:
	REP.b #$30
	STA.b $03
	STA.b $C2
	STX.b $0A
	STY.b $0C
	LDA.b $06,S
	SEP.b #$20
	LSR
	LSR
	STA.b $BD
	REP.b #$20
	LDA.b $03
	BEQ.b CODE_00D3E2
	CMP.w #$003F
	BCC.b CODE_00D3E3
CODE_00D3E2:
	RTL

CODE_00D3E3:
	STZ.b $08
	PHB
	SEP.b #$20
	LDA.b #DATA_0D8000>>16
	PHA
	PLB
	REP.b #$30
	LDA.b $C2
	ASL
	TAX
	LDA.w DATA_0DA000,x
	SEC
	SBC.w #$8000
	STA.b $C0
CODE_00D3FB:
	REP.b #$30
	LDA.b $0A
	SEC
	SBC.b $C2
	STA.b $C4
	LDA.b $0A
	CLC
	ADC.b $C2
	STA.b $C6
	LDA.b $0C
	SEC
	SBC.b $08
	BCC.b CODE_00D443
	STA.b $C8
	LDA.b $C2
	SEC
	SBC.b $08
	CLC
	ADC.b $C0
	TAX
	SEP.b #$20
	LDA.w DATA_0D8000,x
	REP.b #$20
	AND.w #$00FF
	XBA
	CLC
	ADC.b $05,S
	STA.b $B7
	LDA.b $C2
	ASL
	TAX
	LDA.w DATA_0DA000,x
	SEC
	SBC.w #$8000
	STA.b $BB
	LDA.b $C8
	LDX.b $C4
	LDY.b $C6
	JSR.w CODE_00CD10
CODE_00D443:
	REP.b #$20
	DEC.b $03
	BPL.b CODE_00D44B
	PLB
	RTL

CODE_00D44B:
	INC.b $08
	BRL.w CODE_00D3FB

CODE_00D450:
	REP.b #$30
	STA.b $03
	STA.b $C2
	STX.b $0A
	STY.b $0C
	LDA.b $06,S
	SEP.b #$20
	LSR
	LSR
	STA.b $BD
	REP.b #$20
	LDA.b $03
	BEQ.b CODE_00D46D
	CMP.w #$003F
	BCC.b CODE_00D46E
CODE_00D46D:
	RTL

CODE_00D46E:
	STZ.b $08
	PHB
	SEP.b #$20
	LDA.b #DATA_0D8000>>16
	PHA
	PLB
	REP.b #$30
	LDA.b $C2
	ASL
	TAX
	LDA.w DATA_0DA000,x
	SEC
	SBC.w #$8000
	STA.b $C0
CODE_00D486:
	REP.b #$30
	LDA.b $0A
	SEC
	SBC.b $C2
	STA.b $C4
	LDA.b $0A
	CLC
	ADC.b $C2
	STA.b $C6
	REP.b #$30
	LDA.b $0C
	CLC
	ADC.b $08
	CMP.w #$0070
	BCS.b CODE_00D4D3
	STA.b $C8
	LDA.b $C2
	CLC
	ADC.b $08
	CLC
	ADC.b $C0
	TAX
	SEP.b #$20
	LDA.w DATA_0D8000,x
	REP.b #$20
	AND.w #$00FF
	XBA
	CLC
	ADC.b $05,S
	STA.b $B7
	LDA.b $C2
	ASL
	TAX
	LDA.w DATA_0DA000,x
	SEC
	SBC.w #$8000
	STA.b $BB
	LDA.b $C8
	LDX.b $C4
	LDY.b $C6
	JSR.w CODE_00CD10
CODE_00D4D3:
	REP.b #$20
	DEC.b $03
	BPL.b CODE_00D4DB
	PLB
	RTL

CODE_00D4DB:
	INC.b $08
	BRL.w CODE_00D486

CODE_00D4E0:
	REP.b #$30
	STA.b $03
	STA.b $C2
	STX.b $0A
	STY.b $0C
	LDA.b $06,S
	SEP.b #$20
	LSR
	LSR
	STA.b $BD
	REP.b #$20
	LDA.b $03
	BEQ.b CODE_00D4FD
	CMP.w #$003F
	BCC.b CODE_00D4FE
CODE_00D4FD:
	RTL

CODE_00D4FE:
	STZ.b $08
	PHB
	SEP.b #$20
	LDA.b #DATA_0D8000>>16
	PHA
	PLB
	REP.b #$30
	LDA.b $C2
	ASL
	TAX
	LDA.w DATA_0DA000,x
	SEC
	SBC.w #$8000
	STA.b $C0
CODE_00D516:
	REP.b #$30
	LDA.b $0A
	SEC
	SBC.b $03
	STA.b $C4
	LDA.b $0A
	CLC
	ADC.b $03
	STA.b $C6
	LDA.b $0C
	SEC
	SBC.b $08
	BCC.b CODE_00D55E
	STA.b $C8
	LDA.b $C2
	SEC
	SBC.b $08
	CLC
	ADC.b $C0
	TAX
	SEP.b #$20
	LDA.w DATA_0D8000,x
	REP.b #$20
	AND.w #$00FF
	XBA
	CLC
	ADC.b $05,S
	STA.b $B7
	LDA.b $03
	ASL
	TAX
	LDA.w DATA_0DA000,x
	SEC
	SBC.w #$8000
	STA.b $BB
	LDA.b $C8
	LDX.b $C4
	LDY.b $C6
	JSR.w CODE_00CD10
CODE_00D55E:
	REP.b #$30
	LDA.b $0C
	CLC
	ADC.b $08
	CMP.w #$0070
	BCS.b CODE_00D59B
	STA.b $C8
	LDA.b $C2
	CLC
	ADC.b $08
	CLC
	ADC.b $C0
	TAX
	SEP.b #$20
	LDA.w DATA_0D8000,x
	REP.b #$20
	AND.w #$00FF
	XBA
	CLC
	ADC.b $05,S
	STA.b $B7
	LDA.b $03
	ASL
	TAX
	LDA.w DATA_0DA000,x
	SEC
	SBC.w #$8000
	STA.b $BB
	LDA.b $C8
	LDX.b $C4
	LDY.b $C6
	JSR.w CODE_00CD10
CODE_00D59B:
	REP.b #$20
	DEC.b $03
	BPL.b CODE_00D5A3
	PLB
	RTL

CODE_00D5A3:
	INC.b $08
	BRL.w CODE_00D516

CODE_00D5A8:
	REP.b #$30
	STA.b $03
	STA.b $C2
	STX.b $0A
	STY.b $0C
	LDA.b $06,S
	SEP.b #$20
	LSR
	LSR
	STA.b $BD
	REP.b #$20
	LDA.b $03
	BEQ.b CODE_00D5C5
	CMP.w #$003F
	BCC.b CODE_00D5C6
CODE_00D5C5:
	RTL

CODE_00D5C6:
	STZ.b $08
	PHB
	SEP.b #$20
	LDA.b #DATA_0D8000>>16
	PHA
	PLB
	REP.b #$30
	LDA.b $C2
	ASL
	TAX
	LDA.w DATA_0DA000,x
	SEC
	SBC.w #$8000
	STA.b $C0
CODE_00D5DE:
	REP.b #$30
	LDA.b $0A
	SEC
	SBC.b $03
	STA.b $C4
	LDA.b $0A
	CLC
	ADC.b $03
	STA.b $C6
	LDA.b $0C
	SEC
	SBC.b $08
	BCC.b CODE_00D626
	STA.b $C8
	LDA.b $C2
	SEC
	SBC.b $08
	CLC
	ADC.b $C0
	TAX
	SEP.b #$20
	LDA.w DATA_0D8000,x
	REP.b #$20
	AND.w #$00FF
	XBA
	CLC
	ADC.b $05,S
	STA.b $B7
	LDA.b $03
	ASL
	TAX
	LDA.w DATA_0DA000,x
	SEC
	SBC.w #$8000
	STA.b $BB
	LDA.b $C8
	LDX.b $C4
	LDY.b $C6
	JSR.w CODE_00CD10
CODE_00D626:
	REP.b #$20
	DEC.b $03
	BPL.b CODE_00D62E
	PLB
	RTL

CODE_00D62E:
	INC.b $08
	BRL.w CODE_00D5DE

CODE_00D633:
	REP.b #$30
	STA.b $03
	STA.b $C2
	STX.b $0A
	STY.b $0C
	LDA.b $06,S
	SEP.b #$20
	LSR
	LSR
	STA.b $BD
	REP.b #$20
	LDA.b $03
	BEQ.b CODE_00D650
	CMP.w #$003F
	BCC.b CODE_00D651
CODE_00D650:
	RTL

CODE_00D651:
	STZ.b $08
	PHB
	SEP.b #$20
	LDA.b #DATA_0D8000>>16
	PHA
	PLB
	REP.b #$30
	LDA.b $C2
	ASL
	TAX
	LDA.w DATA_0DA000,x
	SEC
	SBC.w #$8000
	STA.b $C0
CODE_00D669:
	REP.b #$30
	LDA.b $0A
	SEC
	SBC.b $03
	STA.b $C4
	LDA.b $0A
	CLC
	ADC.b $03
	STA.b $C6
	REP.b #$30
	LDA.b $0C
	CLC
	ADC.b $08
	CMP.w #$0070
	BCS.b CODE_00D6B6
	STA.b $C8
	LDA.b $C2
	CLC
	ADC.b $08
	CLC
	ADC.b $C0
	TAX
	SEP.b #$20
	LDA.w DATA_0D8000,x
	REP.b #$20
	AND.w #$00FF
	XBA
	CLC
	ADC.b $05,S
	STA.b $B7
	LDA.b $03
	ASL
	TAX
	LDA.w DATA_0DA000,x
	SEC
	SBC.w #$8000
	STA.b $BB
	LDA.b $C8
	LDX.b $C4
	LDY.b $C6
	JSR.w CODE_00CD10
CODE_00D6B6:
	REP.b #$20
	DEC.b $03
	BPL.b CODE_00D6BE
	PLB
	RTL

CODE_00D6BE:
	INC.b $08
	BRL.w CODE_00D669

CODE_00D6C3:
	REP.b #$30
	STZ.b $F5
	PHA
	STY.b $F7
	TXA
	BMI.b CODE_00D6D3
	CMP.b $F7
	BCC.b CODE_00D6D3
	TYX
	TAY
CODE_00D6D3:
	TXA
	BPL.b CODE_00D6E0
CODE_00D6D6:
	LDA.b $E9
	CLC
	ADC.b $F5
	STA.b $F5
	INX
	BMI.b CODE_00D6D6
CODE_00D6E0:
	CPX.w #$0070
	BCC.b CODE_00D6E7
	PLA
	RTL

CODE_00D6E7:
	TYA
	BPL.b CODE_00D6EC
	PLA
	RTL

CODE_00D6EC:
	CPY.w #$0070
	BCC.b CODE_00D6F4
	LDY.w #$006F
CODE_00D6F4:
	PLA
	SEP.b #$30
	CMP.b #$90
	BCC.b CODE_00D6FC
	RTL

CODE_00D6FC:
	PHA
	STX.b $F7
	TYA
	SEC
	SBC.b $F7
	INC
	STA.b $F7
	STZ.b $F8
	PLY
	LDA.w DATA_03D601,y
	EOR.b #$FF
	STA.b $EB
	STA.b $EC
	STA.b $ED
	STA.b $EE
	REP.b #$30
	TYA
	AND.w #$00F8
	ASL
	ASL
	STA.b $F3
	TXA
	ASL
	TAX
	TYA
	AND.w #$0007
	ASL
	TAY
	LDA.w DATA_03D5F1,y
	PHA
	RTS

CODE_00D72E:
	LDA.w DATA_038528,x
	CLC
	ADC.b $4A
	STA.b $4D
	CLC
	ADC.w #$0010
	STA.b $50
	LDA.b $F5
	XBA
	AND.w #$00FF
	ASL
	ASL
	TAY
	LDA.b [$E6],y
	LSR
	LSR
	LSR
	LSR
	STA.b $EF
	INY
	INY
	LDA.b [$E6],y
	LSR
	LSR
	LSR
	LSR
	STA.b $F1
	LDY.b $F3
	LDA.b [$4D],y
	AND.b $EB
	ORA.b $EF
	STA.b [$4D],y
	LDA.b [$50],y
	AND.b $ED
	ORA.b $F1
	STA.b [$50],y
	LDA.b $E9
	CLC
	ADC.b $F5
	STA.b $F5
	INX
	INX
	DEC.b $F7
	BNE.b CODE_00D72E
	RTL

CODE_00D777:
	LDA.w DATA_038528,x
	CLC
	ADC.b $4A
	STA.b $4D
	CLC
	ADC.w #$0010
	STA.b $50
	LDA.b $F5
	XBA
	AND.w #$00FF
	ASL
	ASL
	TAY
	LDA.b [$E6],y
	LSR
	LSR
	LSR
	STA.b $EF
	INY
	INY
	LDA.b [$E6],y
	LSR
	LSR
	LSR
	STA.b $F1
	LDY.b $F3
	LDA.b [$4D],y
	AND.b $EB
	ORA.b $EF
	STA.b [$4D],y
	LDA.b [$50],y
	AND.b $ED
	ORA.b $F1
	STA.b [$50],y
	LDA.b $E9
	CLC
	ADC.b $F5
	STA.b $F5
	INX
	INX
	DEC.b $F7
	BNE.b CODE_00D777
	RTL

CODE_00D7BE:
	LDA.w DATA_038528,x
	CLC
	ADC.b $4A
	STA.b $4D
	CLC
	ADC.w #$0010
	STA.b $50
	LDA.b $F5
	XBA
	AND.w #$00FF
	ASL
	ASL
	TAY
	LDA.b [$E6],y
	LSR
	LSR
	STA.b $EF
	INY
	INY
	LDA.b [$E6],y
	LSR
	LSR
	STA.b $F1
	LDY.b $F3
	LDA.b [$4D],y
	AND.b $EB
	ORA.b $EF
	STA.b [$4D],y
	LDA.b [$50],y
	AND.b $ED
	ORA.b $F1
	STA.b [$50],y
	LDA.b $E9
	CLC
	ADC.b $F5
	STA.b $F5
	INX
	INX
	DEC.b $F7
	BNE.b CODE_00D7BE
	RTL

CODE_00D803:
	LDA.w DATA_038528,x
	CLC
	ADC.b $4A
	STA.b $4D
	CLC
	ADC.w #$0010
	STA.b $50
	LDA.b $F5
	XBA
	AND.w #$00FF
	ASL
	ASL
	TAY
	LDA.b [$E6],y
	LSR
	STA.b $EF
	INY
	INY
	LDA.b [$E6],y
	LSR
	STA.b $F1
	LDY.b $F3
	LDA.b [$4D],y
	AND.b $EB
	ORA.b $EF
	STA.b [$4D],y
	LDA.b [$50],y
	AND.b $ED
	ORA.b $F1
	STA.b [$50],y
	LDA.b $E9
	CLC
	ADC.b $F5
	STA.b $F5
	INX
	INX
	DEC.b $F7
	BNE.b CODE_00D803
	RTL

CODE_00D846:
	LDA.w DATA_038528,x
	CLC
	ADC.b $4A
	STA.b $4D
	CLC
	ADC.w #$0010
	STA.b $50
	LDA.b $F5
	XBA
	AND.w #$00FF
	ASL
	ASL
	TAY
	LDA.b [$E6],y
	STA.b $EF
	INY
	INY
	LDA.b [$E6],y
	STA.b $F1
	LDY.b $F3
	LDA.b [$4D],y
	AND.b $EB
	ORA.b $EF
	STA.b [$4D],y
	LDA.b [$50],y
	AND.b $ED
	ORA.b $F1
	STA.b [$50],y
	LDA.b $E9
	CLC
	ADC.b $F5
	STA.b $F5
	INX
	INX
	DEC.b $F7
	BNE.b CODE_00D846
	RTL

CODE_00D887:
	LDA.w DATA_038528,x
	CLC
	ADC.b $4A
	STA.b $4D
	CLC
	ADC.w #$0010
	STA.b $50
	LDA.b $F5
	XBA
	AND.w #$00FF
	ASL
	ASL
	TAY
	LDA.b [$E6],y
	ASL
	STA.b $EF
	INY
	INY
	LDA.b [$E6],y
	ASL
	STA.b $F1
	LDY.b $F3
	LDA.b [$4D],y
	AND.b $EB
	ORA.b $EF
	STA.b [$4D],y
	LDA.b [$50],y
	AND.b $ED
	ORA.b $F1
	STA.b [$50],y
	LDA.b $E9
	CLC
	ADC.b $F5
	STA.b $F5
	INX
	INX
	DEC.b $F7
	BNE.b CODE_00D887
	RTL

CODE_00D8CA:
	LDA.w DATA_038528,x
	CLC
	ADC.b $4A
	STA.b $4D
	CLC
	ADC.w #$0010
	STA.b $50
	LDA.b $F5
	XBA
	AND.w #$00FF
	ASL
	ASL
	TAY
	LDA.b [$E6],y
	ASL
	ASL
	STA.b $EF
	INY
	INY
	LDA.b [$E6],y
	ASL
	ASL
	STA.b $F1
	LDY.b $F3
	LDA.b [$4D],y
	AND.b $EB
	ORA.b $EF
	STA.b [$4D],y
	LDA.b [$50],y
	AND.b $ED
	ORA.b $F1
	STA.b [$50],y
	LDA.b $E9
	CLC
	ADC.b $F5
	STA.b $F5
	INX
	INX
	DEC.b $F7
	BNE.b CODE_00D8CA
	RTL

CODE_00D90F:
	LDA.w DATA_038528,x
	CLC
	ADC.b $4A
	STA.b $4D
	CLC
	ADC.w #$0010
	STA.b $50
	LDA.b $F5
	XBA
	AND.w #$00FF
	ASL
	ASL
	TAY
	LDA.b [$E6],y
	ASL
	ASL
	ASL
	STA.b $EF
	INY
	INY
	LDA.b [$E6],y
	ASL
	ASL
	ASL
	STA.b $F1
	LDY.b $F3
	LDA.b [$4D],y
	AND.b $EB
	ORA.b $EF
	STA.b [$4D],y
	LDA.b [$50],y
	AND.b $ED
	ORA.b $F1
	STA.b [$50],y
	LDA.b $E9
	CLC
	ADC.b $F5
	STA.b $F5
	INX
	INX
	DEC.b $F7
	BNE.b CODE_00D90F
	RTL

CODE_00D956:
	REP.b #$30
	PHA
	STY.b $F7
	TXA
	BMI.b CODE_00D964
	CMP.b $F7
	BCC.b CODE_00D964
	TYX
	TAY
CODE_00D964:
	TXA
	BPL.b CODE_00D96C
	LDX.w #$0000
	BRA.b CODE_00D973

CODE_00D96C:
	CPX.w #$0070
	BCC.b CODE_00D973
	PLA
	RTL

CODE_00D973:
	TYA
	BPL.b CODE_00D978
	PLA
	RTL

CODE_00D978:
	CPY.w #$0070
	BCC.b CODE_00D980
	LDY.w #$006F
CODE_00D980:
	PLA
	SEP.b #$30
	CMP.b #$90
	BCC.b CODE_00D988
	RTL

CODE_00D988:
	PHA
	STX.b $F7
	TYA
	SEC
	SBC.b $F7
	INC
	STA.b $F7
	STZ.b $F8
	PLY
	LDA.w DATA_03D601,y
	EOR.b #$FF
	STA.b $EB
	STA.b $EC
	TYA
	AND.b #$F8
	REP.b #$30
	ASL
	ASL
	TAY
	TXA
	ASL
	TAX
CODE_00D9A9:
	LDA.w DATA_038528,x
	CLC
	ADC.b $4A
	STA.b $4D
	CLC
	ADC.w #$0010
	STA.b $50
	LDA.b $EB
	AND.b [$4D],y
	STA.b [$4D],y
	LDA.b $EB
	AND.b [$50],y
	STA.b [$50],y
	INX
	INX
	DEC.b $F7
	BNE.b CODE_00D9A9
	RTL

CODE_00D9CA:
	REP.b #$30
	PHA
	STY.b $F7
	TXA
	BMI.b CODE_00D9D8
	CMP.b $F7
	BCC.b CODE_00D9D8
	TYX
	TAY
CODE_00D9D8:
	TXA
	BPL.b CODE_00D9E0
	LDX.w #$0000
	BRA.b CODE_00D9E7

CODE_00D9E0:
	CPX.w #$0070
	BCC.b CODE_00D9E7
	PLA
	RTL

CODE_00D9E7:
	TYA
	BPL.b CODE_00D9EC
	PLA
	RTL

CODE_00D9EC:
	CPY.w #$0070
	BCC.b CODE_00D9F4
	LDY.w #$006F
CODE_00D9F4:
	PLA
	SEP.b #$30
	CMP.b #$90
	BCC.b CODE_00D9FC
	RTL

CODE_00D9FC:
	PHA
	STX.b $F7
	TYA
	SEC
	SBC.b $F7
	INC
	STA.b $F7
	STZ.b $F8
	PLY
	LDA.w DATA_03D601,y
	STA.b $EB
	EOR.b #$FF
	STA.b $EC
	STA.b $ED
	STA.b $EE
	TYA
	AND.b #$F8
	REP.b #$30
	ASL
	ASL
	TAY
	TXA
	ASL
	TAX
CODE_00DA21:
	LDA.w DATA_038528,x
	CLC
	ADC.b $4A
	STA.b $4D
	CLC
	ADC.w #$0010
	STA.b $50
	LDA.b [$4D],y
	SEP.b #$20
	ORA.b $EB
	XBA
	AND.b $EC
	XBA
	REP.b #$20
	STA.b [$4D],y
	LDA.b $ED
	AND.b [$50],y
	STA.b [$50],y
	INX
	INX
	DEC.b $F7
	BNE.b CODE_00DA21
	RTL

CODE_00DA4A:
	REP.b #$30
	PHA
	STY.b $F7
	TXA
	BMI.b CODE_00DA58
	CMP.b $F7
	BCC.b CODE_00DA58
	TYX
	TAY
CODE_00DA58:
	TXA
	BPL.b CODE_00DA60
	LDX.w #$0000
	BRA.b CODE_00DA67

CODE_00DA60:
	CPX.w #$0070
	BCC.b CODE_00DA67
	PLA
	RTL

CODE_00DA67:
	TYA
	BPL.b CODE_00DA6C
	PLA
	RTL

CODE_00DA6C:
	CPY.w #$0070
	BCC.b CODE_00DA74
	LDY.w #$006F
CODE_00DA74:
	PLA
	SEP.b #$30
	CMP.b #$90
	BCC.b CODE_00DA7C
	RTL

CODE_00DA7C:
	PHA
	STX.b $F7
	TYA
	SEC
	SBC.b $F7
	INC
	STA.b $F7
	STZ.b $F8
	PLY
	LDA.w DATA_03D601,y
	STA.b $EC
	EOR.b #$FF
	STA.b $EB
	STA.b $ED
	STA.b $EE
	TYA
	AND.b #$F8
	REP.b #$30
	ASL
	ASL
	TAY
	TXA
	ASL
	TAX
CODE_00DAA1:
	LDA.w DATA_038528,x
	CLC
	ADC.b $4A
	STA.b $4D
	CLC
	ADC.w #$0010
	STA.b $50
	LDA.b [$4D],y
	SEP.b #$20
	AND.b $EB
	XBA
	ORA.b $EC
	XBA
	REP.b #$20
	STA.b [$4D],y
	LDA.b $ED
	AND.b [$50],y
	STA.b [$50],y
	INX
	INX
	DEC.b $F7
	BNE.b CODE_00DAA1
	RTL

CODE_00DACA:
	REP.b #$30
	PHA
	STY.b $F7
	TXA
	BMI.b CODE_00DAD8
	CMP.b $F7
	BCC.b CODE_00DAD8
	TYX
	TAY
CODE_00DAD8:
	TXA
	BPL.b CODE_00DAE0
	LDX.w #$0000
	BRA.b CODE_00DAE7

CODE_00DAE0:
	CPX.w #$0070
	BCC.b CODE_00DAE7
	PLA
	RTL

CODE_00DAE7:
	TYA
	BPL.b CODE_00DAEC
	PLA
	RTL

CODE_00DAEC:
	CPY.w #$0070
	BCC.b CODE_00DAF4
	LDY.w #$006F
CODE_00DAF4:
	PLA
	SEP.b #$30
	CMP.b #$90
	BCC.b CODE_00DAFC
	RTL

CODE_00DAFC:
	PHA
	STX.b $F7
	TYA
	SEC
	SBC.b $F7
	INC
	STA.b $F7
	STZ.b $F8
	PLY
	LDA.w DATA_03D601,y
	STA.b $EB
	STA.b $EC
	EOR.b #$FF
	STA.b $ED
	STA.b $EE
	TYA
	AND.b #$F8
	REP.b #$30
	ASL
	ASL
	TAY
	TXA
	ASL
	TAX
CODE_00DB21:
	LDA.w DATA_038528,x
	CLC
	ADC.b $4A
	STA.b $4D
	CLC
	ADC.w #$0010
	STA.b $50
	LDA.b $EB
	ORA.b [$4D],y
	STA.b [$4D],y
	LDA.b $ED
	AND.b [$50],y
	STA.b [$50],y
	INX
	INX
	DEC.b $F7
	BNE.b CODE_00DB21
	RTL

CODE_00DB42:
	REP.b #$30
	PHA
	STY.b $F7
	TXA
	BMI.b CODE_00DB50
	CMP.b $F7
	BCC.b CODE_00DB50
	TYX
	TAY
CODE_00DB50:
	TXA
	BPL.b CODE_00DB58
	LDX.w #$0000
	BRA.b CODE_00DB5F

CODE_00DB58:
	CPX.w #$0070
	BCC.b CODE_00DB5F
	PLA
	RTL

CODE_00DB5F:
	TYA
	BPL.b CODE_00DB64
	PLA
	RTL

CODE_00DB64:
	CPY.w #$0070
	BCC.b CODE_00DB6C
	LDY.w #$006F
CODE_00DB6C:
	PLA
	SEP.b #$30
	CMP.b #$90
	BCC.b CODE_00DB74
	RTL

CODE_00DB74:
	PHA
	STX.b $F7
	TYA
	SEC
	SBC.b $F7
	INC
	STA.b $F7
	STZ.b $F8
	PLY
	LDA.w DATA_03D601,y
	STA.b $ED
	EOR.b #$FF
	STA.b $EE
	STA.b $EB
	STA.b $EC
	TYA
	AND.b #$F8
	REP.b #$30
	ASL
	ASL
	TAY
	TXA
	ASL
	TAX
CODE_00DB99:
	LDA.w DATA_038528,x
	CLC
	ADC.b $4A
	STA.b $4D
	CLC
	ADC.w #$0010
	STA.b $50
	LDA.b $EB
	AND.b [$4D],y
	STA.b [$4D],y
	LDA.b [$50],y
	SEP.b #$20
	ORA.b $ED
	XBA
	AND.b $EE
	XBA
	REP.b #$20
	STA.b [$50],y
	INX
	INX
	DEC.b $F7
	BNE.b CODE_00DB99
	RTL

CODE_00DBC2:
	REP.b #$30
	PHA
	STY.b $F7
	TXA
	BMI.b CODE_00DBD0
	CMP.b $F7
	BCC.b CODE_00DBD0
	TYX
	TAY
CODE_00DBD0:
	TXA
	BPL.b CODE_00DBD8
	LDX.w #$0000
	BRA.b CODE_00DBDF

CODE_00DBD8:
	CPX.w #$0070
	BCC.b CODE_00DBDF
	PLA
	RTL

CODE_00DBDF:
	TYA
	BPL.b CODE_00DBE4
	PLA
	RTL

CODE_00DBE4:
	CPY.w #$0070
	BCC.b CODE_00DBEC
	LDY.w #$006F
CODE_00DBEC:
	PLA
	SEP.b #$30
	CMP.b #$90
	BCC.b CODE_00DBF4
	RTL

CODE_00DBF4:
	PHA
	STX.b $F7
	TYA
	SEC
	SBC.b $F7
	INC
	STA.b $F7
	STZ.b $F8
	PLY
	LDA.w DATA_03D601,y
	STA.b $EB
	EOR.b #$FF
	STA.b $EC
	TYA
	AND.b #$F8
	REP.b #$30
	ASL
	ASL
	TAY
	TXA
	ASL
	TAX
CODE_00DC15:
	LDA.w DATA_038528,x
	CLC
	ADC.b $4A
	STA.b $4D
	CLC
	ADC.w #$0010
	STA.b $50
	LDA.b [$4D],y
	SEP.b #$20
	ORA.b $EB
	XBA
	AND.b $EC
	XBA
	REP.b #$20
	STA.b [$4D],y
	LDA.b [$50],y
	SEP.b #$20
	ORA.b $EB
	XBA
	AND.b $EC
	XBA
	REP.b #$20
	STA.b [$50],y
	INX
	INX
	DEC.b $F7
	BNE.b CODE_00DC15
	RTL

CODE_00DC46:
	REP.b #$30
	PHA
	STY.b $F7
	TXA
	BMI.b CODE_00DC54
	CMP.b $F7
	BCC.b CODE_00DC54
	TYX
	TAY
CODE_00DC54:
	TXA
	BPL.b CODE_00DC5C
	LDX.w #$0000
	BRA.b CODE_00DC63

CODE_00DC5C:
	CPX.w #$0070
	BCC.b CODE_00DC63
	PLA
	RTL

CODE_00DC63:
	TYA
	BPL.b CODE_00DC68
	PLA
	RTL

CODE_00DC68:
	CPY.w #$0070
	BCC.b CODE_00DC70
	LDY.w #$006F
CODE_00DC70:
	PLA
	SEP.b #$30
	CMP.b #$90
	BCC.b CODE_00DC78
	RTL

CODE_00DC78:
	PHA
	STX.b $F7
	TYA
	SEC
	SBC.b $F7
	INC
	STA.b $F7
	STZ.b $F8
	PLY
	LDA.w DATA_03D601,y
	STA.b $EC
	EOR.b #$FF
	STA.b $EB
	TYA
	AND.b #$F8
	REP.b #$30
	ASL
	ASL
	TAY
	TXA
	ASL
	TAX
CODE_00DC99:
	LDA.w DATA_038528,x
	CLC
	ADC.b $4A
	STA.b $4D
	CLC
	ADC.w #$0010
	STA.b $50
	LDA.b [$4D],y
	SEP.b #$20
	AND.b $EB
	XBA
	ORA.b $EC
	XBA
	REP.b #$20
	STA.b [$4D],y
	LDA.b [$50],y
	SEP.b #$20
	ORA.b $EC
	XBA
	AND.b $EB
	XBA
	REP.b #$20
	STA.b [$50],y
	INX
	INX
	DEC.b $F7
	BNE.b CODE_00DC99
	RTL

CODE_00DCCA:
	REP.b #$30
	PHA
	STY.b $F7
	TXA
	BMI.b CODE_00DCD8
	CMP.b $F7
	BCC.b CODE_00DCD8
	TYX
	TAY
CODE_00DCD8:
	TXA
	BPL.b CODE_00DCE0
	LDX.w #$0000
	BRA.b CODE_00DCE7

CODE_00DCE0:
	CPX.w #$0070
	BCC.b CODE_00DCE7
	PLA
	RTL

CODE_00DCE7:
	TYA
	BPL.b CODE_00DCEC
	PLA
	RTL

CODE_00DCEC:
	CPY.w #$0070
	BCC.b CODE_00DCF4
	LDY.w #$006F
CODE_00DCF4:
	PLA
	SEP.b #$30
	CMP.b #$90
	BCC.b CODE_00DCFC
	RTL

CODE_00DCFC:
	PHA
	STX.b $F7
	TYA
	SEC
	SBC.b $F7
	INC
	STA.b $F7
	STZ.b $F8
	PLY
	LDA.w DATA_03D601,y
	STA.b $EB
	STA.b $EC
	STA.b $ED
	EOR.b #$FF
	STA.b $EE
	TYA
	AND.b #$F8
	REP.b #$30
	ASL
	ASL
	TAY
	TXA
	ASL
	TAX
CODE_00DD21:
	LDA.w DATA_038528,x
	CLC
	ADC.b $4A
	STA.b $4D
	CLC
	ADC.w #$0010
	STA.b $50
	LDA.b $EB
	ORA.b [$4D],y
	STA.b [$4D],y
	LDA.b [$50],y
	SEP.b #$20
	ORA.b $ED
	XBA
	AND.b $EE
	XBA
	REP.b #$20
	STA.b [$50],y
	INX
	INX
	DEC.b $F7
	BNE.b CODE_00DD21
	RTL

CODE_00DD4A:
	REP.b #$30
	PHA
	STY.b $F7
	TXA
	BMI.b CODE_00DD58
	CMP.b $F7
	BCC.b CODE_00DD58
	TYX
	TAY
CODE_00DD58:
	TXA
	BPL.b CODE_00DD60
	LDX.w #$0000
	BRA.b CODE_00DD67

CODE_00DD60:
	CPX.w #$0070
	BCC.b CODE_00DD67
	PLA
	RTL

CODE_00DD67:
	TYA
	BPL.b CODE_00DD6C
	PLA
	RTL

CODE_00DD6C:
	CPY.w #$0070
	BCC.b CODE_00DD74
	LDY.w #$006F
CODE_00DD74:
	PLA
	SEP.b #$30
	CMP.b #$90
	BCC.b CODE_00DD7C
	RTL

CODE_00DD7C:
	PHA
	STX.b $F7
	TYA
	SEC
	SBC.b $F7
	INC
	STA.b $F7
	STZ.b $F8
	PLY
	LDA.w DATA_03D601,y
	STA.b $EE
	EOR.b #$FF
	STA.b $ED
	STA.b $EB
	STA.b $EC
	TYA
	AND.b #$F8
	REP.b #$30
	ASL
	ASL
	TAY
	TXA
	ASL
	TAX
CODE_00DDA1:
	LDA.w DATA_038528,x
	CLC
	ADC.b $4A
	STA.b $4D
	CLC
	ADC.w #$0010
	STA.b $50
	LDA.b $EB
	AND.b [$4D],y
	STA.b [$4D],y
	LDA.b [$50],y
	SEP.b #$20
	AND.b $ED
	XBA
	ORA.b $EE
	XBA
	REP.b #$20
	STA.b [$50],y
	INX
	INX
	DEC.b $F7
	BNE.b CODE_00DDA1
	RTL

CODE_00DDCA:
	REP.b #$30
	PHA
	STY.b $F7
	TXA
	BMI.b CODE_00DDD8
	CMP.b $F7
	BCC.b CODE_00DDD8
	TYX
	TAY
CODE_00DDD8:
	TXA
	BPL.b CODE_00DDE0
	LDX.w #$0000
	BRA.b CODE_00DDE7

CODE_00DDE0:
	CPX.w #$0070
	BCC.b CODE_00DDE7
	PLA
	RTL

CODE_00DDE7:
	TYA
	BPL.b CODE_00DDEC
	PLA
	RTL

CODE_00DDEC:
	CPY.w #$0070
	BCC.b CODE_00DDF4
	LDY.w #$006F
CODE_00DDF4:
	PLA
	SEP.b #$30
	CMP.b #$90
	BCC.b CODE_00DDFC
	RTL

CODE_00DDFC:
	PHA
	STX.b $F7
	TYA
	SEC
	SBC.b $F7
	INC
	STA.b $F7
	STZ.b $F8
	PLY
	LDA.w DATA_03D601,y
	STA.b $EB
	EOR.b #$FF
	STA.b $EC
	TYA
	AND.b #$F8
	REP.b #$30
	ASL
	ASL
	TAY
	TXA
	ASL
	TAX
CODE_00DE1D:
	LDA.w DATA_038528,x
	CLC
	ADC.b $4A
	STA.b $4D
	CLC
	ADC.w #$0010
	STA.b $50
	LDA.b [$4D],y
	SEP.b #$20
	ORA.b $EB
	XBA
	AND.b $EC
	XBA
	REP.b #$20
	STA.b [$4D],y
	LDA.b [$50],y
	SEP.b #$20
	AND.b $EC
	XBA
	ORA.b $EB
	XBA
	REP.b #$20
	STA.b [$50],y
	INX
	INX
	DEC.b $F7
	BNE.b CODE_00DE1D
	RTL

CODE_00DE4E:
	REP.b #$30
	PHA
	STY.b $F7
	TXA
	BMI.b CODE_00DE5C
	CMP.b $F7
	BCC.b CODE_00DE5C
	TYX
	TAY
CODE_00DE5C:
	TXA
	BPL.b CODE_00DE64
	LDX.w #$0000
	BRA.b CODE_00DE6B

CODE_00DE64:
	CPX.w #$0070
	BCC.b CODE_00DE6B
	PLA
	RTL

CODE_00DE6B:
	TYA
	BPL.b CODE_00DE70
	PLA
	RTL

CODE_00DE70:
	CPY.w #$0070
	BCC.b CODE_00DE78
	LDY.w #$006F
CODE_00DE78:
	PLA
	SEP.b #$30
	CMP.b #$90
	BCC.b CODE_00DE80
	RTL

CODE_00DE80:
	PHA
	STX.b $F7
	TYA
	SEC
	SBC.b $F7
	INC
	STA.b $F7
	STZ.b $F8
	PLY
	LDA.w DATA_03D601,y
	STA.b $EC
	EOR.b #$FF
	STA.b $EB
	TYA
	AND.b #$F8
	REP.b #$30
	ASL
	ASL
	TAY
	TXA
	ASL
	TAX
CODE_00DEA1:
	LDA.w DATA_038528,x
	CLC
	ADC.b $4A
	STA.b $4D
	CLC
	ADC.w #$0010
	STA.b $50
	LDA.b [$4D],y
	SEP.b #$20
	AND.b $EB
	XBA
	ORA.b $EC
	XBA
	REP.b #$20
	STA.b [$4D],y
	LDA.b [$50],y
	SEP.b #$20
	AND.b $EB
	XBA
	ORA.b $EC
	XBA
	REP.b #$20
	STA.b [$50],y
	INX
	INX
	DEC.b $F7
	BNE.b CODE_00DEA1
	RTL

CODE_00DED2:
	REP.b #$30
	PHA
	STY.b $F7
	TXA
	BMI.b CODE_00DEE0
	CMP.b $F7
	BCC.b CODE_00DEE0
	TYX
	TAY
CODE_00DEE0:
	TXA
	BPL.b CODE_00DEE8
	LDX.w #$0000
	BRA.b CODE_00DEEF

CODE_00DEE8:
	CPX.w #$0070
	BCC.b CODE_00DEEF
	PLA
	RTL

CODE_00DEEF:
	TYA
	BPL.b CODE_00DEF4
	PLA
	RTL

CODE_00DEF4:
	CPY.w #$0070
	BCC.b CODE_00DEFC
	LDY.w #$006F
CODE_00DEFC:
	PLA
	SEP.b #$30
	CMP.b #$90
	BCC.b CODE_00DF04
	RTL

CODE_00DF04:
	PHA
	STX.b $F7
	TYA
	SEC
	SBC.b $F7
	INC
	STA.b $F7
	STZ.b $F8
	PLY
	LDA.w DATA_03D601,y
	STA.b $EB
	STA.b $EC
	STA.b $EE
	EOR.b #$FF
	STA.b $ED
	TYA
	AND.b #$F8
	REP.b #$30
	ASL
	ASL
	TAY
	TXA
	ASL
	TAX
CODE_00DF29:
	LDA.w DATA_038528,x
	CLC
	ADC.b $4A
	STA.b $4D
	CLC
	ADC.w #$0010
	STA.b $50
	LDA.b $EB
	ORA.b [$4D],y
	STA.b [$4D],y
	LDA.b [$50],y
	SEP.b #$20
	AND.b $ED
	XBA
	ORA.b $EE
	XBA
	REP.b #$20
	STA.b [$50],y
	INX
	INX
	DEC.b $F7
	BNE.b CODE_00DF29
	RTL

CODE_00DF52:
	REP.b #$30
	PHA
	STY.b $F7
	TXA
	BMI.b CODE_00DF60
	CMP.b $F7
	BCC.b CODE_00DF60
	TYX
	TAY
CODE_00DF60:
	TXA
	BPL.b CODE_00DF68
	LDX.w #$0000
	BRA.b CODE_00DF6F

CODE_00DF68:
	CPX.w #$0070
	BCC.b CODE_00DF6F
	PLA
	RTL

CODE_00DF6F:
	TYA
	BPL.b CODE_00DF74
	PLA
	RTL

CODE_00DF74:
	CPY.w #$0070
	BCC.b CODE_00DF7C
	LDY.w #$006F
CODE_00DF7C:
	PLA
	SEP.b #$30
	CMP.b #$90
	BCC.b CODE_00DF84
	RTL

CODE_00DF84:
	PHA
	STX.b $F7
	TYA
	SEC
	SBC.b $F7
	INC
	STA.b $F7
	STZ.b $F8
	PLY
	LDA.w DATA_03D601,y
	STA.b $ED
	STA.b $EE
	EOR.b #$FF
	STA.b $EB
	STA.b $EC
	TYA
	AND.b #$F8
	REP.b #$30
	ASL
	ASL
	TAY
	TXA
	ASL
	TAX
CODE_00DFA9:
	LDA.w DATA_038528,x
	CLC
	ADC.b $4A
	STA.b $4D
	CLC
	ADC.w #$0010
	STA.b $50
	LDA.b $EB
	AND.b [$4D],y
	STA.b [$4D],y
	LDA.b $ED
	ORA.b [$50],y
	STA.b [$50],y
	INX
	INX
	DEC.b $F7
	BNE.b CODE_00DFA9
	RTL

CODE_00DFCA:
	REP.b #$30
	PHA
	STY.b $F7
	TXA
	BMI.b CODE_00DFD8
	CMP.b $F7
	BCC.b CODE_00DFD8
	TYX
	TAY
CODE_00DFD8:
	TXA
	BPL.b CODE_00DFE0
	LDX.w #$0000
	BRA.b CODE_00DFE7

CODE_00DFE0:
	CPX.w #$0070
	BCC.b CODE_00DFE7
	PLA
	RTL

CODE_00DFE7:
	TYA
	BPL.b CODE_00DFEC
	PLA
	RTL

CODE_00DFEC:
	CPY.w #$0070
	BCC.b CODE_00DFF4
	LDY.w #$006F
CODE_00DFF4:
	PLA
	SEP.b #$30
	CMP.b #$90
	BCC.b CODE_00DFFC
	RTL

CODE_00DFFC:
	PHA
	STX.b $F7
	TYA
	SEC
	SBC.b $F7
	INC
	STA.b $F7
	STZ.b $F8
	PLY
	LDA.w DATA_03D601,y
	STA.b $ED
	STA.b $EE
	STA.b $EB
	EOR.b #$FF
	STA.b $EC
	TYA
	AND.b #$F8
	REP.b #$30
	ASL
	ASL
	TAY
	TXA
	ASL
	TAX
CODE_00E021:
	LDA.w DATA_038528,x
	CLC
	ADC.b $4A
	STA.b $4D
	CLC
	ADC.w #$0010
	STA.b $50
	LDA.b [$4D],y
	SEP.b #$20
	ORA.b $EB
	XBA
	AND.b $EC
	XBA
	REP.b #$20
	STA.b [$4D],y
	LDA.b $ED
	ORA.b [$50],y
	STA.b [$50],y
	INX
	INX
	DEC.b $F7
	BNE.b CODE_00E021
	RTL

CODE_00E04A:
	REP.b #$30
	PHA
	STY.b $F7
	TXA
	BMI.b CODE_00E058
	CMP.b $F7
	BCC.b CODE_00E058
	TYX
	TAY
CODE_00E058:
	TXA
	BPL.b CODE_00E060
	LDX.w #$0000
	BRA.b CODE_00E067

CODE_00E060:
	CPX.w #$0070
	BCC.b CODE_00E067
	PLA
	RTL

CODE_00E067:
	TYA
	BPL.b CODE_00E06C
	PLA
	RTL

CODE_00E06C:
	CPY.w #$0070
	BCC.b CODE_00E074
	LDY.w #$006F
CODE_00E074:
	PLA
	SEP.b #$30
	CMP.b #$90
	BCC.b CODE_00E07C
	RTL

CODE_00E07C:
	PHA
	STX.b $F7
	TYA
	SEC
	SBC.b $F7
	INC
	STA.b $F7
	STZ.b $F8
	PLY
	LDA.w DATA_03D601,y
	STA.b $ED
	STA.b $EE
	STA.b $EC
	EOR.b #$FF
	STA.b $EB
	TYA
	AND.b #$F8
	REP.b #$30
	ASL
	ASL
	TAY
	TXA
	ASL
	TAX
CODE_00E0A1:
	LDA.w DATA_038528,x
	CLC
	ADC.b $4A
	STA.b $4D
	CLC
	ADC.w #$0010
	STA.b $50
	LDA.b [$4D],y
	SEP.b #$20
	AND.b $EB
	XBA
	ORA.b $EC
	XBA
	REP.b #$20
	STA.b [$4D],y
	LDA.b $ED
	ORA.b [$50],y
	STA.b [$50],y
	INX
	INX
	DEC.b $F7
	BNE.b CODE_00E0A1
	RTL

CODE_00E0CA:
	REP.b #$30
	PHA
	STY.b $F7
	TXA
	BMI.b CODE_00E0D8
	CMP.b $F7
	BCC.b CODE_00E0D8
	TYX
	TAY
CODE_00E0D8:
	TXA
	BPL.b CODE_00E0E0
	LDX.w #$0000
	BRA.b CODE_00E0E7

CODE_00E0E0:
	CPX.w #$0070
	BCC.b CODE_00E0E7
	PLA
	RTL

CODE_00E0E7:
	TYA
	BPL.b CODE_00E0EC
	PLA
	RTL

CODE_00E0EC:
	CPY.w #$0070
	BCC.b CODE_00E0F4
	LDY.w #$006F
CODE_00E0F4:
	PLA
	SEP.b #$30
	CMP.b #$90
	BCC.b CODE_00E0FC
	RTL

CODE_00E0FC:
	PHA
	STX.b $F7
	TYA
	SEC
	SBC.b $F7
	INC
	STA.b $F7
	STZ.b $F8
	PLY
	LDA.w DATA_03D601,y
	STA.b $EB
	STA.b $EC
	TYA
	AND.b #$F8
	REP.b #$30
	ASL
	ASL
	TAY
	TXA
	ASL
	TAX
CODE_00E11B:
	LDA.w DATA_038528,x
	CLC
	ADC.b $4A
	STA.b $4D
	CLC
	ADC.w #$0010
	STA.b $50
	LDA.b $EB
	ORA.b [$4D],y
	STA.b [$4D],y
	LDA.b $EB
	ORA.b [$50],y
	STA.b [$50],y
	INX
	INX
	DEC.b $F7
	BNE.b CODE_00E11B
	RTL

	%FREE_BYTES($00E13C, 7812, $FF)
%BANK_END(<EndBank>)
endmacro

;#############################################################################################################
;#############################################################################################################

macro FB2000Bank01Macros(StartBank, EndBank)
%BANK_START(<StartBank>)

CODE_018000:
	REP.b #$30
	LDA.w $0219
	ASL
	PHP
	ROR
	PLP
	ROR
	STA.w $0219
	STA.b $57
	LDA.w $021B
	ASL
	PHP
	ROR
	PLP
	ROR
	STA.w $021B
	SEP.b #$20
	STA.w !REGISTER_BG1VertScrollOffset
	XBA
	STA.w !REGISTER_BG1VertScrollOffset
	RTS

CODE_018024:
	REP.b #$20
	LDA.w #$0002
	JSL.l CODE_00C933
	RTS

CODE_01802E:
	REP.b #$20
	LDA.w #$0002
	JSL.l CODE_00C91F
	RTS

CODE_018038:
	JSL.l CODE_00A199
	REP.b #$20
	LDA.w #$7C00
	STA.w $1F5B
	JSL.l CODE_00C8C3
	JSL.l CODE_009C39
	JSL.l CODE_02D34F
	REP.b #$30
	LDA.w DATA_039594
	AND.w #$001F
	STA.w $0B77
	LDA.w DATA_039594
	AND.w #$03E0
	STA.w $0B79
	LDA.w DATA_039594
	AND.w #$7C00
	STA.w $0B7B
	LDA.w #$0004
	LDX.w #$0030
	LDY.w #$0010
	JSL.l CODE_00C8EA
	REP.b #$30
	LDX.w #DATA_03809A
	LDA.w $0342
	BIT.w #$0400
	BNE.b CODE_01808A
	LDX.w #DATA_038122
CODE_01808A:
	TXA
	JSL.l CODE_00CB69
	JSR.w CODE_018024
	REP.b #$30
	LDA.w #$1080
	LDX.w #$0708
	JSL.l CODE_009A75
	JSR.w CODE_01802E
	SEP.b #$20
CODE_0180A3:
	LDA.w $1335
	BNE.b CODE_0180A3
	REP.b #$30
	LDA.w #DATA_058000>>16
	LDX.w #DATA_058201
	LDY.w #DATA_058000
	JSL.l CODE_019444
	REP.b #$10
	LDX.w #$0080
	LDY.w #$0070
	JSL.l CODE_0192E9
	REP.b #$20
	LDA.w #$FCC0
	STA.b $57
	STA.w $0219
	LDA.w #$FF00
	STA.w $021B
	SEP.b #$20
	STA.w !REGISTER_BG1VertScrollOffset
	XBA
	STA.w !REGISTER_BG1VertScrollOffset
	REP.b #$30
	LDA.w #$0000
	LDX.w #$0008
	LDY.w #$0008
	JSL.l CODE_019302
	JSR.w CODE_018024
	REP.b #$30
	LDA.w #$0000
	LDX.w #$00B4
	JSL.l CODE_009A75
	REP.b #$30
	LDX.w #$0008
CODE_0180FF:
	JSL.l CODE_00CA17
	REP.b #$30
	PHX
	TXY
	LDA.w #$0000
	JSL.l CODE_019302
	JSR.w CODE_018000
	REP.b #$30
	PLX
	TXA
	CLC
	ADC.w #$0008
	TAX
	CMP.w #$0100
	BCC.b CODE_0180FF
	PHX
	LDA.w #$0000
	LDX.w #$00F0
	JSL.l CODE_009A75
	JSR.w CODE_01802E
	REP.b #$30
	PLX
CODE_018130:
	JSL.l CODE_00CA17
	REP.b #$30
	PHX
	TXY
	TXA
	AND.w #$00FF
	JSL.l CODE_019302
	JSR.w CODE_018000
	REP.b #$30
	PLX
	TXA
	CLC
	ADC.w #$0008
	TAX
	CMP.w #$0400
	BCC.b CODE_018130
	RTL

CODE_018152:
	SEP.b #$20
	LDA.w $1336
	BEQ.b CODE_018169
	LDA.w $1335
	CMP.b #$FF
	BEQ.b CODE_018169
	REP.b #$20
	LDA.w #$0002
	JSL.l CODE_00C91F
CODE_018169:
	SEP.b #$20
CODE_01816B:
	LDA.w $1335
	BNE.b CODE_01816B
	REP.b #$30
	LDA.w #DATA_0597AD>>16
	LDX.w #DATA_0599AE
	LDY.w #DATA_0597AD
	JSL.l CODE_019444
	REP.b #$10
	LDX.w #$0080
	LDY.w #$0070
	JSL.l CODE_0192E9
	REP.b #$30
	LDA.w #$0000
	LDX.w #$0015
	LDY.w #$0015
	JSL.l CODE_019302
	REP.b #$20
	LDA.w #$0001
	JSL.l CODE_00C933
	REP.b #$30
	LDX.w #$0400
CODE_0181A8:
	JSL.l CODE_00CA17
	REP.b #$30
	PHX
	TXY
	LDA.w #$0000
	JSL.l CODE_019302
	REP.b #$30
	PLX
	TXA
	SEC
	SBC.w #$0010
	TAX
	CMP.w #$0100
	BCS.b CODE_0181A8
	PHX
	JSR.w CODE_01802E
	REP.b #$30
	PLX
CODE_0181CC:
	JSL.l CODE_00CA17
	REP.b #$30
	PHX
	TXY
	LDA.w #$0000
	JSL.l CODE_019302
	REP.b #$30
	PLX
	TXA
	SEC
	SBC.w #$0010
	TAX
	BCS.b CODE_0181CC
	REP.b #$20
	LDA.w #$0002
	JSL.l CODE_00C91F
	SEP.b #$20
CODE_0181F1:
	LDA.w $1335
	BNE.b CODE_0181F1
	RTL

CODE_0181F7:
	RTL

CODE_0181F8:
	REP.b #$20
	LDA.w #$0004
	ORA.w $1C93
	STA.w $1C93
	LDA.w #$0008
	ORA.w $0702
	STA.w $0702
	RTL

CODE_01820D:
	REP.b #$20
	LDA.w #$FFFB
	AND.w $1C93
	STA.w $1C93
	LDA.w #$0008
	ORA.w $0702
	STA.w $0702
	RTL

CODE_018222:
	SEC
	JSL.l CODE_029A0A
	RTL

CODE_018228:
	SEP.b #$20
	LDA.w $020B
	CMP.b #$0F
	BEQ.b CODE_018244
	LDA.w $020A
	CMP.b #$01
	BEQ.b CODE_018244
	REP.b #$30
	LDX.w #$0005
	LDA.w #$0002
	JSL.l CODE_008871
CODE_018244:
	SEP.b #$20
	LDA.w $1336
	BEQ.b CODE_01825B
	LDA.w $1335
	CMP.b #$FF
	BEQ.b CODE_01825B
	REP.b #$20
	LDA.w #$0002
	JSL.l CODE_00C91F
CODE_01825B:
	SEP.b #$20
CODE_01825D:
	LDA.w $1335
	BNE.b CODE_01825D
	JSL.l CODE_00A199
	REP.b #$20
	LDA.w #$7C00
	STA.w $1F5B
	JSL.l CODE_00C833
	JSL.l CODE_009C39
	JSL.l CODE_02804D
	REP.b #$30
	LDA.w #$0080
	LDY.w #$0030
	LDX.w #$0002
	JSL.l CODE_02806C
	JSL.l CODE_028000
	REP.b #$20
	LDA.w #DATA_0381AE
	JSL.l CODE_00CB69
	REP.b #$20
	LDA.w #$0002
	JSL.l CODE_00C933
	SEP.b #$20
CODE_0182A1:
	LDA.w $1335
	BNE.b CODE_0182A1
	REP.b #$30
	LDA.w #DATA_0381D3
	LDX.w #DATA_0381D3>>16
	LDY.w #$0000
	JSL.l CODE_029B36
	REP.b #$20
	LDA.w #$0002
	JSL.l CODE_00C91F
	SEP.b #$20
CODE_0182C0:
	LDA.w $1335
	BNE.b CODE_0182C0
	RTL

CODE_0182C6:
	REP.b #$30
	LDA.b $16
	STA.w $022B
	LDA.b $18
	STA.w $022D
	STZ.w $022F
	LDA.b $20
	STA.w $0231
	LDA.b $23
	STA.w $0233
	LDA.w $0221
	STA.w $0235
	LDA.b $20
	SEC
	SBC.b $16
	PHA
	LDA.b $23
	SEC
	SBC.b $18
	PHA
CODE_0182F1:
	LDA.w $0235
	CMP.w $0223
	BCS.b CODE_018317
	LDA.b $03,S
	CLC
	ADC.w $0231
	STA.w $0231
	LDA.b $01,S
	CLC
	ADC.w $0233
	STA.w $0233
	LDA.w $0221
	CLC
	ADC.w $0235
	STA.w $0235
	BRA.b CODE_0182F1

CODE_018317:
	PLA
	PLA
CODE_018319:
	LDA.w $022B
	CLC
	ADC.w $0231
	ASL
	PHP
	ROR
	PLP
	ROR
	TAX
	LDA.w $022D
	CLC
	ADC.w $0233
	ASL
	PHP
	ROR
	PLP
	ROR
	TAY
	LDA.w $022F
	CLC
	ADC.w $0235
	LSR
	CMP.w $022F
	BEQ.b CODE_018362
	CMP.w $0235
	BEQ.b CODE_018362
	CMP.w $0223
	BEQ.b CODE_018362
	BCS.b CODE_018357
	STX.w $022B
	STY.w $022D
	STA.w $022F
	BRA.b CODE_018319

CODE_018357:
	STX.w $0231
	STY.w $0233
	STA.w $0235
	BRA.b CODE_018319

CODE_018362:
	STX.b $20
	STY.b $23
	TXA
	XBA
	AND.w #$000F
	TAX
	TYA
	XBA
	AND.w #$000F
	TAY
	REP.b #$30
	LDA.w #$0000
	PHX
	TYA
	XBA
	LSR
	LSR
	LSR
	CLC
	ADC.b $01,S
	ADC.b $01,S
	TAX
	LDA.w $0415,x
	PLX
	REP.b #$30
	AND.w #$000F
	STA.b $26
	SEP.b #$20
	LDA.w $021D
	INC
	EOR.b #$FF
	INC
	CMP.b $23
	BCS.b CODE_0183A4
	REP.b #$20
	LDA.w #$0004
	BIT.b $26
	BNE.b CODE_0183DF
CODE_0183A4:
	SEP.b #$20
	LDA.w $021D
	CMP.b $23
	BCC.b CODE_0183B6
	REP.b #$20
	LDA.w #$0001
	BIT.b $26
	BNE.b CODE_0183DF
CODE_0183B6:
	SEP.b #$20
	LDA.w $021D
	INC
	EOR.b #$FF
	INC
	CMP.b $20
	BCS.b CODE_0183CC
	REP.b #$20
	LDA.w #$0002
	BIT.b $26
	BNE.b CODE_0183DF
CODE_0183CC:
	SEP.b #$20
	LDA.w $021D
	CMP.b $20
	BCC.b CODE_0183DE
	REP.b #$20
	LDA.w #$0008
	BIT.b $26
	BNE.b CODE_0183DF
CODE_0183DE:
	RTS

CODE_0183DF:
	REP.b #$20
	LDA.b $10
	STA.b $20
	LDA.b $13
	STA.b $23
	SEP.b #$20
	LDA.b $12
	STA.b $22
	LDA.b $15
	STA.b $25
	RTS

CODE_0183F4:
	REP.b #$30
	LDX.w #!RAM_FB2000_Level_Smiloids_SpriteTableStart
CODE_0183F9:
	LDA.b $00,x
	BIT.w #$0010
	BEQ.b CODE_018405
	BIT.w #$0040
	BEQ.b CODE_018408
CODE_018405:
	BRL.w CODE_01847C

CODE_018408:
	LDA.b FB2000_Level_Smiloid[$00].XPosLo,x
	STA.b $10
	LDA.b FB2000_Level_Smiloid[$00].YPosLo,x
	STA.b $13
	SEP.b #$20
	LDA.b $06,x
	STA.b $12
	LDA.b $09,x
	STA.b $15
	REP.b #$20
	LDA.b $0A,x
	STA.w $021D
	PHX
	TXA
	CLC
	ADC.w #$0070
	TAX
CODE_018428:
	LDA.b $00,x
	BIT.w #$0010
	BEQ.b CODE_018470
	BIT.w #$0040
	BNE.b CODE_018470
	PHX
	LDA.b FB2000_Level_Smiloid[$00].YPosLo,x
	SEC
	SBC.b $13
	TAY
	LDA.b FB2000_Level_Smiloid[$00].XPosLo,x
	SEC
	SBC.b $10
	TAX
	JSL.l CODE_00B920
	REP.b #$30
	STA.w $0221
	PLX
	LDA.b $0A,x
	CLC
	ADC.w $021D
	ADC.w #$0008
	CMP.w $0221
	BCC.b CODE_018470
	LDA.w #$0800
	ORA.b $02,x
	STA.b $02,x
	LDA.b $01,S
	STA.b $43,x
	TAY
	LDA.w #$0800
	ORA.w $0002,y
	STA.w $0002,y
	STX.b $43,y
CODE_018470:
	TXA
	CLC
	ADC.w #$0070
	TAX
	CPX.w #$129A
	BNE.b CODE_018428
	PLX
CODE_01847C:
	TXA
	CLC
	ADC.w #$0070
	TAX
	CPX.w #$122A
	BEQ.b CODE_01848A
	BRL.w CODE_0183F9

CODE_01848A:
	RTL

CODE_01848B:
	REP.b #$30
	LDX.w #!RAM_FB2000_Level_Smiloids_SpriteTableStart
CODE_018490:
	LDA.b $00,x
	BIT.w #$0010
	BEQ.b CODE_01849C
	BIT.w #$0140
	BEQ.b CODE_01849F
CODE_01849C:
	BRL.w CODE_018524

CODE_01849F:
	LDA.b FB2000_Level_Smiloid[$00].XPosLo,x
	STA.b $10
	LDA.b FB2000_Level_Smiloid[$00].YPosLo,x
	STA.b $13
	SEP.b #$20
	LDA.b $06,x
	STA.b $12
	LDA.b $09,x
	STA.b $15
	REP.b #$20
	LDA.b $0A,x
	STA.w $021D
	PHX
	LDX.w #$072C
CODE_0184BC:
	LDA.b $00,x
	BIT.w #$0001
	BEQ.b CODE_018518
	BIT.w #$0002
	BNE.b CODE_018518
	PHX
	LDA.b $04,x
	SEC
	SBC.b $13
	TAY
	LDA.b $02,x
	SEC
	SBC.b $10
	TAX
	JSL.l CODE_00B920
	REP.b #$30
	STA.w $0221
	PLX
	LDA.w #$0004
	BIT.b $00,x
	BNE.b CODE_0184F6
	LDA.b $0E,x
	CLC
	ADC.w $021D
	ADC.w #$0008
	CMP.w $0221
	BCS.b CODE_018501
	BRA.b CODE_018518

CODE_0184F6:
	LDA.b $0E,x
	CLC
	ADC.w #$0008
	CMP.w $0221
	BCC.b CODE_018518
CODE_018501:
	LDA.b $01,S
	TAY
	LDA.w #$0010
	ORA.b $00,x
	STA.b $00,x
	STY.b $0A,x
	LDA.w #$2000
	ORA.w $0002,y
	STA.w $0002,y
	STX.b $45,y
CODE_018518:
	TXA
	CLC
	ADC.w #$0014
	TAX
	CPX.w #$09AC
	BNE.b CODE_0184BC
	PLX
CODE_018524:
	TXA
	CLC
	ADC.w #$0070
	TAX
	CPX.w #$129A
	BEQ.b CODE_018532
	BRL.w CODE_018490

CODE_018532:
	RTL

CODE_018533:
	SEP.b #$20
	STA.w $021D
	SEP.b #$20
	LDA.b $11
	REP.b #$30
	AND.w #$00FF
	TAX
	SEP.b #$20
	LDA.b $14
	REP.b #$30
	AND.w #$00FF
	TAY
	REP.b #$30
	LDA.w #$0000
	PHX
	TYA
	XBA
	LSR
	LSR
	LSR
	CLC
	ADC.b $01,S
	ADC.b $01,S
	TAX
	LDA.w $0415,x
	PLX
	SEP.b #$20
	STA.w $0225
	LDA.b $14
	ASL
	ASL
	ASL
	ASL
	ORA.b $11
	STA.w $0226
	SEP.b #$20
	LDA.b $12
	CLC
	ADC.b $1C
	STA.b $22
	REP.b #$30
	LDA.b $10
	ADC.b $1A
	STA.b $20
	XBA
	AND.w #$00FF
	TAX
	SEP.b #$20
	LDA.b $15
	CLC
	ADC.b $1F
	STA.b $25
	REP.b #$20
	LDA.b $13
	ADC.b $1D
	STA.b $23
	XBA
	AND.w #$00FF
	TAY
	REP.b #$30
	LDA.w #$0000
	PHX
	TYA
	XBA
	LSR
	LSR
	LSR
	CLC
	ADC.b $01,S
	ADC.b $01,S
	TAX
	LDA.w $0415,x
	PLX
	SEP.b #$20
	STA.w $0227
	LDA.b $24
	ASL
	ASL
	ASL
	ASL
	ORA.b $21
	STA.w $0228
	SEP.b #$20
	STZ.b $26
	LDA.b $8A
	DEC
	CMP.b $21
	BCC.b CODE_0185D4
	LDA.b $8B
	DEC
	CMP.b $24
	BCS.b CODE_0185EA
CODE_0185D4:
	REP.b #$20
	LDA.b $10
	STA.b $20
	LDA.b $13
	STA.b $23
	SEP.b #$20
	LDA.b $12
	STA.b $22
	LDA.b $15
	STA.b $25
	SEC
	RTL

CODE_0185EA:
	SEP.b #$30
	LDA.b $21
	CMP.b $11
	BNE.b CODE_018637
	LDA.w $021D
	CMP.b $20
	BCC.b CODE_018612
	TAY
	LDA.w $0225
	AND.b #$08
	BEQ.b CODE_018612
	INY
	STY.b $20
	LDA.w $0226
	STA.b $27
	LDA.b #$08
	ORA.b $26
	STA.b $26
CODE_01860F:
	BRL.w CODE_0186B3

CODE_018612:
	LDA.w $021D
	EOR.b #$FF
	INC
	CMP.b $20
	BEQ.b CODE_01861E
	BCS.b CODE_01860F
CODE_01861E:
	TAY
	LDA.w $0225
	AND.b #$02
	BEQ.b CODE_01860F
	DEY
	STY.b $20
	LDA.w $0226
	STA.b $27
	LDA.b #$02
	ORA.b $26
	STA.b $26
	BRL.w CODE_0186B3

CODE_018637:
	BCS.b CODE_018674
	LDA.w $0225
	AND.b #$08
	BEQ.b CODE_018657
	LDA.w $021D
	INC
	STA.b $20
	LDA.b $11
	STA.b $21
	LDA.w $0226
	STA.b $27
	LDA.b #$08
	ORA.b $26
	STA.b $26
	BRA.b CODE_0186B3

CODE_018657:
	LDA.w $0227
	AND.b #$02
	BEQ.b CODE_0186B3
	LDA.w $021D
	STA.b $20
	LDA.b $11
	STA.b $21
	LDA.w $0228
	STA.b $27
	LDA.b #$02
	ORA.b $26
	STA.b $26
	BRA.b CODE_0186B3

CODE_018674:
	LDA.w $0225
	AND.b #$02
	BEQ.b CODE_018695
	LDA.w $021D
	EOR.b #$FF
	INC
	DEC
	STA.b $20
	LDA.b $11
	STA.b $21
	LDA.w $0226
	STA.b $27
	LDA.b #$02
	ORA.b $26
	STA.b $26
	BRA.b CODE_0186B3

CODE_018695:
	LDA.w $0227
	AND.b #$08
	BEQ.b CODE_0186B3
	LDA.w $021D
	EOR.b #$FF
	INC
	STA.b $20
	LDA.b $11
	STA.b $21
	LDA.w $0228
	STA.b $27
	LDA.b #$08
	ORA.b $26
	STA.b $26
CODE_0186B3:
	SEP.b #$20
	LDA.b $24
	CMP.b $14
	BNE.b CODE_018703
	LDA.w $021D
	CMP.b $23
	BCC.b CODE_0186DB
	TAY
	LDA.w $0225
	AND.b #$01
	BEQ.b CODE_0186DB
	INY
	STY.b $23
	LDA.w $0226
	STA.b $27
	LDA.b #$01
	ORA.b $26
	STA.b $26
	BRL.w CODE_018780

CODE_0186DB:
	LDA.w $021D
	EOR.b #$FF
	INC
	CMP.b $23
	BEQ.b CODE_0186EA
	BCC.b CODE_0186EA
CODE_0186E7:
	BRL.w CODE_018780

CODE_0186EA:
	TAY
	LDA.w $0225
	AND.b #$04
	BEQ.b CODE_0186E7
	DEY
	STY.b $23
	LDA.w $0226
	STA.b $27
	LDA.b #$04
	ORA.b $26
	STA.b $26
	BRL.w CODE_018780

CODE_018703:
	BCS.b CODE_018741
	LDA.w $0225
	AND.b #$01
	BEQ.b CODE_018724
	LDA.w $021D
	INC
	STA.b $23
	LDA.b $14
	STA.b $24
	LDA.w $0226
	STA.b $27
	LDA.b #$01
	ORA.b $26
	STA.b $26
CODE_018721:
	BRL.w CODE_018780

CODE_018724:
	LDA.w $0227
	AND.b #$04
	BEQ.b CODE_018721
	LDA.w $021D
	STA.b $23
	LDA.b $14
	STA.b $24
	LDA.w $0228
	STA.b $27
	LDA.b #$04
	ORA.b $26
	STA.b $26
	BRA.b CODE_018780

CODE_018741:
	LDA.w $0225
	AND.b #$04
	BEQ.b CODE_018762
	LDA.w $021D
	EOR.b #$FF
	INC
	DEC
	STA.b $23
	LDA.b $14
	STA.b $24
	LDA.w $0226
	STA.b $27
	LDA.b #$04
	ORA.b $26
	STA.b $26
	BRA.b CODE_018780

CODE_018762:
	LDA.w $0227
	AND.b #$01
	BEQ.b CODE_018780
	LDA.w $021D
	EOR.b #$FF
	INC
	STA.b $23
	LDA.b $14
	STA.b $24
	LDA.w $0228
	STA.b $27
	LDA.b #$01
	ORA.b $26
	STA.b $26
CODE_018780:
	LDA.b $26
	BNE.b CODE_018786
	CLC
	RTL

CODE_018786:
	SEC
	RTL

CODE_018788:
	REP.b #$30
	AND.w #$00FF
	STA.w $021D
	STX.w $021F
	SEP.b #$20
	LDA.b $1C
	CLC
	ADC.b $12
	STA.b $22
	REP.b #$20
	LDA.b $1A
	ADC.b $10
	STA.b $20
	SEP.b #$20
	LDA.b $1F
	CLC
	ADC.b $15
	STA.b $25
	REP.b #$20
	LDA.b $1D
	ADC.b $13
	STA.b $23
	LDX.w #!RAM_FB2000_Level_Smiloids_SpriteTableStart
CODE_0187B8:
	REP.b #$30
	CPX.w $021F
	BEQ.b CODE_018802
	LDA.b $00,x
	BIT.w #$0010
	BEQ.b CODE_018802
	BIT.w #$0040
	BNE.b CODE_018802
	PHX
	LDA.b FB2000_Level_Smiloid[$00].YPosLo,x
	STA.b $18
	SEC
	SBC.b $23
	TAY
	LDA.b FB2000_Level_Smiloid[$00].XPosLo,x
	STA.b $16
	SEC
	SBC.b $20
	TAX
	JSL.l CODE_00B920
	REP.b #$30
	STA.w $0221
	PLX
	LDA.b $0A,x
	CLC
	ADC.w $021D
	STA.w $0223
	CMP.w $0221
	BCC.b CODE_018802
	LDA.w $0229
	BEQ.b CODE_018800
	PHX
	JSR.w CODE_0182C6
	REP.b #$10
	PLX
CODE_018800:
	SEC
	RTL

CODE_018802:
	REP.b #$30
	TXA
	CLC
	ADC.w #$0070
	TAX
	CPX.w #$129A
	BNE.b CODE_0187B8
	CLC
	RTL

CODE_018811:
	REP.b #$30
	AND.w #$00FF
	STA.w $021D
	CLC
	RTL

CODE_01881B:
	REP.b #$30
	AND.w #$00FF
	STA.w $021D
	SEP.b #$20
	LDA.b $1C
	CLC
	ADC.b $12
	STA.b $22
	REP.b #$20
	LDA.b $1A
	ADC.b $10
	STA.b $20
	SEP.b #$20
	LDA.b $1F
	CLC
	ADC.b $15
	STA.b $25
	REP.b #$20
	LDA.b $1D
	ADC.b $13
	STA.b $23
	LDX.w #$072C
CODE_018848:
	REP.b #$30
	LDA.b $00,x
	BIT.w #$0001
	BEQ.b CODE_01889D
	BIT.w #$0006
	BNE.b CODE_01889D
	PHX
	LDA.b $04,x
	STA.b $18
	SEC
	SBC.b $23
	TAY
	LDA.b $02,x
	STA.b $16
	SEC
	SBC.b $20
	TAX
	JSL.l CODE_00B920
	REP.b #$30
	STA.w $0221
	PLX
	LDA.b $0E,x
	CLC
	ADC.w $021D
	STA.w $0223
	CMP.w $0221
	BCC.b CODE_01889D
	LDA.w $0229
	BEQ.b CODE_01889B
	LDA.w $034A
	LSR
	BCC.b CODE_018894
	LDA.b $10
	STA.b $20
	LDA.b $13
	STA.b $23
	BRA.b CODE_01889B

CODE_018894:
	PHX
	JSR.w CODE_0182C6
	REP.b #$10
	PLX
CODE_01889B:
	SEC
	RTL

CODE_01889D:
	REP.b #$30
	TXA
	CLC
	ADC.w #$0014
	TAX
	CPX.w #$09AC
	BNE.b CODE_018848
	CLC
	RTL

CODE_0188AC:
	REP.b #$39
	SEI
	LDA.b $06,S
	STA.b $2C
	LDA.b $08,S
	STA.b $2A
	LDA.b $0A,S
	STA.b $28
	LDA.b $04,S
	PHB
	XBA
	PHA
	PLB
	PLB
	LDA.w #$7E22AE
	STA.b $2E
	LDA.w #$7E22AE>>16
	STA.b $30
	LDA.w #$0011
	ADC.b $28
	STA.b $28
	LDA.b [$28]
	AND.w #$00FF
	STA.b $34
	INC.b $28
	LDA.b [$28]
	STA.b $36
	STZ.b $3A
	LDA.w #$0002
	JSR.w CODE_018A03
CODE_0188E8:
	LDY.w #$0020
	JSR.w CODE_018A59
	LDY.w #$00A0
	JSR.w CODE_018A59
	LDY.w #$0120
	JSR.w CODE_018A59
	LDA.w #$0010
	JSR.w CODE_018A03
	STA.b $32
	JMP.w CODE_018950

CODE_018905:
	LDY.w #$00A0
	JSR.w CODE_0189AF
	STA.b $44
	LDA.b $2C
	CLC
	SBC.b $44
	STA.b $46
	LDY.w #$0120
	JSR.w CODE_0189AF
	INC
	INC
	LSR
	TAX
	LDY.w #$0000
	LDA.b $44
	BNE.b CODE_018937
	SEP.b #$20
	LDA.b ($46),y
	XBA
	LDA.b ($46),y
	REP.b #$20
CODE_01892E:
	STA.b ($2C),y
	INY
	INY
	DEX
	BNE.b CODE_01892E
	BRA.b CODE_018940

CODE_018937:
	LDA.b ($46),y
	STA.b ($2C),y
	INY
	INY
	DEX
	BNE.b CODE_018937
CODE_018940:
	BCC.b CODE_01894B
	SEP.b #$20
	LDA.b ($46),y
	STA.b ($2C),y
	INY
	REP.b #$21
CODE_01894B:
	TYA
	ADC.b $2C
	STA.b $2C
CODE_018950:
	LDY.w #$0020
	JSR.w CODE_0189AF
	TAX
	BEQ.b CODE_01899E
	LDY.w #$0000
	LSR
	BEQ.b CODE_018969
	TAX
CODE_018960:
	LDA.b [$28],y
	STA.b ($2C),y
	INY
	INY
	DEX
	BNE.b CODE_018960
CODE_018969:
	BCC.b CODE_018974
	SEP.b #$20
	LDA.b [$28],y
	STA.b ($2C),y
	REP.b #$21
	INY
CODE_018974:
	TYA
	ADC.b $28
	STA.b $28
	TYA
	ADC.b $2C
	STA.b $2C
	STZ.b $38
	LDA.b $3A
	TAY
	ASL
	TAX
	LDA.b [$28]
	CPY.w #$0000
	BEQ.b CODE_018992
CODE_01898C:
	ASL
	ROL.b $38
	DEY
	BNE.b CODE_01898C
CODE_018992:
	STA.b $42
	LDA.l DATA_018A37,x
	AND.b $36
	ORA.b $42
	STA.b $36
CODE_01899E:
	DEC.b $32
	BEQ.b CODE_0189A5
	JMP.w CODE_018905

CODE_0189A5:
	DEC.b $34
	BEQ.b CODE_0189AC
	JMP.w CODE_0188E8

CODE_0189AC:
	PLB
	CLI
	RTL

CODE_0189AF:
	LDX.b $36
	BRA.b CODE_0189B5

CODE_0189B3:
	INY
	INY
CODE_0189B5:
	TXA
	AND.b [$2E],y
	INY
	INY
	CMP.b [$2E],y
	BNE.b CODE_0189B3
	TYA
	ADC.w #$003D
	TAY
	LDA.b [$2E],y
	PHA
	XBA
	AND.w #$00FF
	JSR.w CODE_018A03
	PLA
	AND.w #$00FF
	CMP.w #$0002
	BCC.b CODE_0189E2
	DEC
	ASL
	PHA
	LSR
	JSR.w CODE_018A03
	PLX
	ORA.l DATA_0189E3,x
CODE_0189E2:
	RTS

DATA_0189E3:
	dw $0001,$0002,$0004,$0008,$0010,$0020,$0040,$0080
	dw $0100,$0200,$0400,$0800,$1000,$2000,$4000,$8000

CODE_018A03:
	TAY
	ASL
	TAX
	LDA.l DATA_018A37,x
	AND.b $36
	PHA
	LDA.b $38
	LDX.b $3A
	BEQ.b CODE_018A25
CODE_018A13:
	LSR
	ROR.b $36
	DEY
	BEQ.b CODE_018A30
	DEX
	BEQ.b CODE_018A25
	LSR
	ROR.b $36
	DEY
	BEQ.b CODE_018A30
	DEX
	BNE.b CODE_018A13
CODE_018A25:
	INC.b $28
	INC.b $28
	LDA.b [$28]
	LDX.w #$0010
	BRA.b CODE_018A13

CODE_018A30:
	DEX
	STX.b $3A
	STA.b $38
	PLA
CODE_018A36:
	RTS

DATA_018A37:
	dw $0000,$0001,$0003,$0007,$000F,$001F,$003F,$007F
	dw $00FF,$01FF,$03FF,$07FF,$0FFF,$1FFF,$3FFF,$7FFF
	dw $FFFF

CODE_018A59:
	STY.b $48
	LDA.w #$0005
	JSR.w CODE_018A03
	BEQ.b CODE_018A36
	STA.b $42
	STA.b $44
	LDY.w #$0000
CODE_018A6A:
	PHY
	LDA.w #$0004
	JSR.w CODE_018A03
	PLY
	STA.b [$2E],y
	INY
	INY
	DEC.b $44
	BNE.b CODE_018A6A
	STZ.b $3E
	LDA.w #$8000
	STA.b $40
	LDA.w #$0001
	STA.b $3C
CODE_018A86:
	LDA.b $3C
	LDX.b $42
	LDY.w #$0000
CODE_018A8D:
	CMP.b [$2E],y
	BNE.b CODE_018ADD
	PHX
	STY.b $46
	ASL
	TAX
	LDA.l DATA_018A37,x
	LDY.b $48
	STA.b [$2E],y
	INY
	INY
	LDA.w #$0010
	SEC
	SBC.b $3C
	PHA
	LDA.b $3E
	STA.b $44
	LDX.b $3C
CODE_018AAD:
	ASL.b $44
	ROR
	DEX
	BNE.b CODE_018AAD
	PLX
	BEQ.b CODE_018ABA
CODE_018AB6:
	LSR
	DEX
	BNE.b CODE_018AB6
CODE_018ABA:
	STA.b [$2E],y
	INY
	INY
	STY.b $48
	TYA
	CLC
	ADC.w #$003C
	TAY
	LDA.b $3C
	XBA
	SEP.b #$20
	LDA.b $46
	LSR
	REP.b #$21
	STA.b [$2E],y
	LDA.b $40
	ADC.b $3E
	STA.b $3E
	LDA.b $3C
	LDY.b $46
	PLX
CODE_018ADD:
	INY
	INY
	DEX
	BNE.b CODE_018A8D
	LSR.b $40
	INC.b $3C
	CMP.w #$0010
	BNE.b CODE_018A86
	RTS

CODE_018AEC:
	REP.b #$30
	PHX
	AND.w #$00FF
	ASL
	TAX
	LDA.w DATA_038B03,x
	STA.b $1A
	LDA.w DATA_038D03,x
	STA.b $1D
	SEP.b #$20
	STZ.b $1C
	STZ.b $1F
	REP.b #$20
	PLX
	LDA.b $64,x
	PHX
	LDX.w #$0070
	SEP.b #$30
	STA.w !REGISTER_Multiplicand
	STX.w !REGISTER_Multiplier
	NOP #3
	REP.b #$30
	LDA.w !REGISTER_ProductOrRemainderLo
	CLC
	ADC.w #!RAM_FB2000_Level_Smiloids_SpriteTableStart
	TAY
	PLX
	SEP.b #$20
	LDA.w $0005,y
	CMP.b $05,x
	BNE.b CODE_018B35
	LDA.w $0008,y
	CMP.b $08,x
	BNE.b CODE_018B35
	BRA.b CODE_018B56

CODE_018B35:
	REP.b #$30
	LDA.b $04,x
	STA.b $10
	LDA.b $07,x
	STA.b $13
	SEP.b #$20
	LDA.b $06,x
	STA.b $12
	LDA.b $09,x
	STA.b $15
	REP.b #$20
	LDA.w #$000D
	JSL.l CODE_018533
	REP.b #$30
	BCS.b CODE_018B5D
CODE_018B56:
	REP.b #$30
	LDA.w #$0001
	BRA.b CODE_018B62

CODE_018B5D:
	REP.b #$30
	LDA.w #$FFFF
CODE_018B62:
	RTL

CODE_018B63:
	REP.b #$30
	LDY.w #$FFFF
	JSL.l CODE_02ACB7
	RTL

CODE_018B6D:
	LDA.b $2C,x
	AND.w #$0100
	BEQ.b CODE_018BA8
	LDA.b $02,x
	AND.w #$0800
	BEQ.b CODE_018BA8
	LDA.b $43,x
	TAY
	LDA.w $0000,y
	BIT.w #$0100
	BNE.b CODE_018BA8
	JSL.l CODE_018BAC
	LDA.b FB2000_Level_Smiloid[$00].IDLo,x
	CMP.w #!Define_FB2000_Smiloid_ShootMe
	BEQ.b CODE_018BA0
	CMP.w #!Define_FB2000_Smiloid_ShootMe2
	BEQ.b CODE_018BA0
	CMP.w #!Define_FB2000_Smiloid_IShoot
	BEQ.b CODE_018BA0
	CMP.w #!Define_FB2000_Smiloid_IShoot2
	BNE.b CODE_018BA8
CODE_018BA0:
	JSL.l CODE_018B63
	LDA.w #$0001
	RTL

CODE_018BA8:
	LDA.w #$0000
	RTL

CODE_018BAC:
	REP.b #$30
	LDA.b $02,x
	AND.w #$0800
	BNE.b CODE_018BB8
	BRL.w CODE_018C3C

CODE_018BB8:
	LDA.b FB2000_Level_Smiloid[$00].IDLo,x
	CMP.w #!Define_FB2000_Smiloid_ShootMe
	BEQ.b CODE_018BDF
	CMP.w #!Define_FB2000_Smiloid_ShootMe2
	BEQ.b CODE_018BDF
	CMP.w #!Define_FB2000_Smiloid_IShoot
	BEQ.b CODE_018BDF
	CMP.w #!Define_FB2000_Smiloid_IShoot2
	BEQ.b CODE_018BDF
	CMP.w #!Define_FB2000_Smiloid_Kamikaze
	BEQ.b CODE_018BDF
	CMP.w #!Define_FB2000_Smiloid_Gremlin
	BEQ.b CODE_018BDF
	LDA.b $00,x
	AND.w #$0080
	BNE.b CODE_018C3C
CODE_018BDF:
	LDY.b $43,x
	LDA.w $0000,y
	AND.w #$0010
	BEQ.b CODE_018C3C
	LDA.w $0000,y
	AND.w #$0100
	BNE.b CODE_018C3C
	TYA
	TXY
	TAX
	PHY
	LDA.w FB2000_Level_Smiloid[$00].IDLo,y
	CMP.w #!Define_FB2000_Smiloid_Kamikaze
	BNE.b CODE_018C03
	LDA.b FB2000_Level_Smiloid[$00].HPLo,x
	LSR
	INC
	STA.b FB2000_Level_Smiloid[$00].HPLo,x
CODE_018C03:
	JSL.l CODE_02ACA4
	REP.b #$30
	PLX
	LDA.b FB2000_Level_Smiloid[$00].IDLo,x
	CMP.w #!Define_FB2000_Smiloid_ShootMe
	BEQ.b CODE_018C2C
	CMP.w #!Define_FB2000_Smiloid_ShootMe2
	BEQ.b CODE_018C2C
	CMP.w #!Define_FB2000_Smiloid_IShoot
	BEQ.b CODE_018C2C
	CMP.w #!Define_FB2000_Smiloid_IShoot2
	BEQ.b CODE_018C2C
	CMP.w #!Define_FB2000_Smiloid_Kamikaze
	BEQ.b CODE_018C2C
	CMP.w #!Define_FB2000_Smiloid_Gremlin
	BEQ.b CODE_018C2C
	BRA.b CODE_018C34

CODE_018C2C:
	PHX
	JSL.l CODE_018B63
	PLX
	BRA.b CODE_018C38

CODE_018C34:
	JSL.l CODE_02ACCA
CODE_018C38:
	LDA.w #$0001
	RTL

CODE_018C3C:
	LDA.w #$0000
	RTL

CODE_018C40:
	LDA.b $68,x
	ASL
	PHX
	TAX
	LDA.l DATA_018C4C,x
	PLX
	PHA
	RTS

DATA_018C4C:
	dw CODE_018CA1-$01
	dw CODE_018CA1-$01
	dw CODE_018C5A-$01
	dw CODE_018C7C-$01
	dw CODE_018C8D-$01
	dw CODE_018C8D-$01
	dw CODE_018CA1-$01

CODE_018C5A:
	LDA.b $0C,x
	SEC
	SBC.w #$0040
	STA.b $6C,x
	LDA.b $39,x
	ORA.w #$0500
	STA.b $39,x
	BRA.b CODE_018CA1

CODE_018C6B:
	LDA.b $0C,x
	CLC
	ADC.w #$0040
	STA.b $6C,x
	LDA.b $39,x
	ORA.w #$0600
	STA.b $39,x
	BRA.b CODE_018CA1

CODE_018C7C:
	LDA.b $0C,x
	CLC
	ADC.w #$0080
	STA.b $6C,x
	LDA.b $39,x
	ORA.w #$0600
	STA.b $39,x
	BRA.b CODE_018CA1

CODE_018C8D:
	SEP.b #$20
	LDA.w !REGISTER_SoftwareLatchForHVCounter
	LDA.w !REGISTER_VCounter
	EOR.w !REGISTER_HCounter
	REP.b #$30
	BIT.w #$0004
	BEQ.b CODE_018C5A
	BRA.b CODE_018C6B

CODE_018CA1:
	LDA.b $02,x
	AND.w #$FDFF
	STA.b $41,x
	LDA.b $02,x
	AND.w #$F7FF
	STA.b $41,x
	RTL

CODE_018CB0:
	LDA.b $68,x
	ASL
	PHX
	TAX
	LDA.l DATA_018CBF,x
	PLX
	ORA.b $39,x
	STA.b $39,x
	RTL

DATA_018CBF:
	dw $0000,$0100,$0800,$0800,$0800,$0800,$0900

CODE_018CCD:
	REP.b #$30
	LDY.w #$0100
	LDX.w #$0000
CODE_018CD5:
	LDA.w $0415,x
	AND.w #$0300
	CMP.w #$0300
	BNE.b CODE_018CE9
	LDA.w #$FFFB
	AND.w $0415,x
	STA.w $0415,x
CODE_018CE9:
	LDA.w $0415,x
	AND.w #$0C00
	CMP.w #$0C00
	BNE.b CODE_018CFD
	LDA.w #$FFFE
	AND.w $0415,x
	STA.w $0415,x
CODE_018CFD:
	LDA.w $0415,x
	AND.w #$3000
	CMP.w #$3000
	BNE.b CODE_018D11
	LDA.w #$FFFD
	AND.w $0415,x
	STA.w $0415,x
CODE_018D11:
	LDA.w $0415,x
	AND.w #$C000
	CMP.w #$C000
	BNE.b CODE_018D25
	LDA.w #$FFF7
	AND.w $0415,x
	STA.w $0415,x
CODE_018D25:
	INX
	INX
	DEY
	BNE.b CODE_018CD5
	RTL

CODE_018D2B:
	REP.b #$30
	LDA.w $0344
	BNE.b CODE_018D33
	RTL

CODE_018D33:
	STA.w $03FB
	LDA.w #$FFFF
	STA.w $034C
	LDY.b $0A,x
	LDA.w #$0001
	ORA.w $005C,y
	STA.w $005C,y
	LDA.w #$FFF7
	AND.w $0BF6
	STA.w $0BF6
	LDA.b $12,x
	BIT.w #$0080
	BNE.b CODE_018D61
	CMP.w #$0064
	BCC.b CODE_018D64
	LDA.w #$0200
	BRA.b CODE_018D64

CODE_018D61:
	ORA.w #$FF00
CODE_018D64:
	PHA
	CLC
	ADC.w $03CE
	STA.w $03D0
	PLA
	CMP.w #$0001
	BEQ.b CODE_018D85
	CMP.w #$FFFF
	BEQ.b CODE_018D85
	PHX
	LDA.b $0A,x
	TAX
	LDA.w #$03E8
	JSL.l CODE_0199B5
	REP.b #$30
	PLX
CODE_018D85:
	PHX
	LDA.b $0A,x
	TAX
	LDA.w #$0000
	JSL.l CODE_0199B5
	REP.b #$30
	PLX
	LDA.w $0BD1
	BNE.b CODE_018D9E
	LDA.w #$0001
	STA.w $0BD1
CODE_018D9E:
	LDA.w $0C41
	BNE.b CODE_018DA9
	LDA.w #$0001
	STA.w $0C41
CODE_018DA9:
	RTL

CODE_018DAA:
	REP.b #$30
	STX.w $031E
	LDA.b $41,x
	SEP.b #$20
	PHA
	AND.b #$0F
	STA.w $0322
	PLA
	LSR
	LSR
	LSR
	LSR
	AND.b #$0F
	STA.w $0323
	REP.b #$20
	LDA.b $41,x
	XBA
	PHA
	AND.w #$000F
	TAX
	PLA
	LSR
	LSR
	LSR
	LSR
	AND.w #$000F
	TAY
	REP.b #$30
	LDA.w #$0000
	PHX
	TYA
	XBA
	LSR
	LSR
	LSR
	CLC
	ADC.b $01,S
	ADC.b $01,S
	TAX
	PLA
	REP.b #$30
	STX.w $0324
	LDY.w #$0020
	LDX.w #$072C
CODE_018DF3:
	PHY
	LDA.w #$0001
	BIT.b $00,x
	BEQ.b CODE_018E78
	LDA.b $06,x
	CMP.w #$0020
	BCC.b CODE_018E78
	LDA.b $02,x
	CMP.w $0324
	BNE.b CODE_018E23
	SEP.b #$20
	LDA.b $10,x
	AND.b #$0F
	CMP.w $0322
	BEQ.b CODE_018E67
	LDA.b $10,x
	LSR
	LSR
	LSR
	LSR
	AND.b #$0F
	BEQ.b CODE_018E23
	CMP.w $0323
	BEQ.b CODE_018E67
CODE_018E23:
	REP.b #$30
	PHX
	LDY.b $02,x
	LDA.b $10,x
	AND.w #$000F
	JSR.w CODE_0190DD
	REP.b #$30
	PLX
	CPY.w $0324
	BNE.b CODE_018E41
	SEP.b #$20
	AND.b #$0F
	CMP.w $0322
	BEQ.b CODE_018E67
CODE_018E41:
	REP.b #$30
	LDY.b $02,x
	LDA.b $10,x
	LSR
	LSR
	LSR
	LSR
	AND.w #$000F
	BEQ.b CODE_018E78
	PHX
	JSR.w CODE_0190DD
	REP.b #$30
	PLX
	CPY.w $0324
	BNE.b CODE_018E78
	SEP.b #$20
	AND.b #$0F
	CMP.w $0323
	BEQ.b CODE_018E67
	BRA.b CODE_018E78

CODE_018E67:
	REP.b #$30
	LDA.w $031E
	STA.b $0A,x
	LDA.w $0320
	ORA.b $00,x
	STA.b $00,x
	PLY
	SEC
	RTL

CODE_018E78:
	REP.b #$30
	TXA
	CLC
	ADC.w #$0014
	TAX
	PLY
	DEY
	BEQ.b CODE_018E87
	BRL.w CODE_018DF3

CODE_018E87:
	CLC
	RTL

CODE_018E89:
	REP.b #$30
	LDA.w #$FFBF
	AND.b $00,x
	STA.b $00,x
	JSR.w CODE_018F62
	RTL

CODE_018E96:
	REP.b #$30
	LDA.w #$0020
	BIT.b $00,x
	BNE.b CODE_018EA0
	RTL

CODE_018EA0:
	LDY.b $08,x
	REP.b #$20
	LDA.w #$0008
	BIT.b $00,x
	BEQ.b CODE_018EB3
	SEP.b #$20
	LDA.b [$71],y
	BIT.b #$10
	BNE.b CODE_018EC6
CODE_018EB3:
	REP.b #$20
	LDA.w #$0010
	BIT.b $00,x
	BEQ.b CODE_018EE0
	SEP.b #$20
	INY
	LDA.b [$71],y
	DEY
	BIT.b #$10
	BEQ.b CODE_018EE0
CODE_018EC6:
	REP.b #$20
	LDA.w #$FFFE
	AND.b $00,x
	STA.b $00,x
	PHX
	PHY
	JSR.w CODE_018F87
	REP.b #$30
	PLX
	PLY
	LDA.w #$0006
	JSL.l CODE_02C90B
	RTL

CODE_018EE0:
	SEP.b #$20
	LDA.b [$71],y
	BIT.b #$01
	BEQ.b CODE_018F06
	REP.b #$20
	LDA.w #$0008
	BIT.b $00,x
	BNE.b CODE_018F2B
	SEP.b #$20
	INY
	LDA.b [$71],y
	DEY
	BIT.b #$01
	BEQ.b CODE_018F19
	REP.b #$20
	LDA.w #$0010
	BIT.b $00,x
	BNE.b CODE_018F2B
	BEQ.b CODE_018F19				; Note: This will always branch.

CODE_018F06:
	SEP.b #$20
	INY
	LDA.b [$71],y
	DEY
	BIT.b #$01
	BEQ.b CODE_018F2B
	REP.b #$20
	LDA.w #$0010
	BIT.b $00,x
	BNE.b CODE_018F2B
CODE_018F19:
	REP.b #$20
	LDA.w #$0040
	ORA.b $00,x
	STA.b $00,x
	PHX
	PHY
	JSR.w CODE_018F87
	REP.b #$30
	PLY
	PLX
CODE_018F2B:
	SEP.b #$20
	LDA.b [$71],y
	BIT.b #$02
	BEQ.b CODE_018F3C
	REP.b #$20
	LDA.w #$0008
	BIT.b $00,x
	BNE.b CODE_018F4F
CODE_018F3C:
	SEP.b #$20
	INY
	LDA.b [$71],y
	DEY
	BIT.b #$02
	BEQ.b CODE_018F61
	REP.b #$20
	LDA.w #$0010
	BIT.b $00,x
	BEQ.b CODE_018F61
CODE_018F4F:
	REP.b #$20
	LDA.w #$0040
	ORA.b $00,x
	STA.b $00,x
	PHX
	PHY
	JSR.w CODE_018F87
	REP.b #$30
	PLY
	PLX
CODE_018F61:
	RTL

CODE_018F62:
	REP.b #$30
	LDA.w #$0080
	BIT.b $00,x
	BNE.b CODE_018F77
	LDY.b $02,x
	LDA.b $10,x
	AND.w #$000F
	JSL.l CODE_0191FF
	RTS

CODE_018F77:
	LDY.b $02,x
	LDA.b $10,x
	LSR
	LSR
	LSR
	LSR
	AND.w #$000F
	JSL.l CODE_0191FF
	RTS

CODE_018F87:
	REP.b #$30
	LDA.w #$0080
	BIT.b $00,x
	BNE.b CODE_018F9C
	LDY.b $02,x
	LDA.b $10,x
	AND.w #$000F
	JSL.l CODE_019274
	RTS

CODE_018F9C:
	LDY.b $02,x
	LDA.b $10,x
	LSR
	LSR
	LSR
	LSR
	AND.w #$000F
	JSL.l CODE_019274
	RTS

CODE_018FAC:
	REP.b #$30
	PHX
	PHY
	LDA.w #$0080
	BIT.b $00,x
	BNE.b CODE_018FBB
	LDA.b $10,x
	BRA.b CODE_018FC1

CODE_018FBB:
	LDA.b $10,x
	LSR
	LSR
	LSR
	LSR
CODE_018FC1:
	LDY.b $02,x
	JSL.l CODE_019274
	REP.b #$30
	PLY
	PLX
	SEP.b #$20
	LDA.b [$71],y
	INY
	PHX
	PHY
	REP.b #$20
	PHA
	AND.w #$000F
	TAX
	PLA
	LSR
	LSR
	LSR
	LSR
	AND.w #$000F
	TAY
	REP.b #$30
	LDA.w #$0000
	PHX
	TYA
	XBA
	LSR
	LSR
	LSR
	CLC
	ADC.b $01,S
	ADC.b $01,S
	TAX
	PLA
	REP.b #$30
	TXA
	PLY
	PLX
	STA.b $02,x
	PHX
	PHY
	LDA.w #$0080
	BIT.b $00,x
	BNE.b CODE_019008
	LDA.b $10,x
	BRA.b CODE_01900E

CODE_019008:
	LDA.b $10,x
	LSR
	LSR
	LSR
	LSR
CODE_01900E:
	LDY.b $02,x
	JSL.l CODE_0191FF
	REP.b #$30
	PLY
	PLX
	PHX
	PHY
	LDA.b $06,x
	SEP.b #$30
	LDX.b #$01
	CMP.b #$20
	BEQ.b CODE_01904A
	CMP.b #$23
	BEQ.b CODE_01904A
	CMP.b #$27
	BEQ.b CODE_01904A
	LDX.b #$02
	CMP.b #$21
	BEQ.b CODE_01904A
	CMP.b #$24
	BEQ.b CODE_01904A
	CMP.b #$28
	BEQ.b CODE_01904A
	LDX.b #$03
	CMP.b #$22
	BEQ.b CODE_01904A
	CMP.b #$25
	BEQ.b CODE_01904A
	CMP.b #$29
	BEQ.b CODE_01904A
	LDX.b #$FF
CODE_01904A:
	REP.b #$30
	TXA
	PLY
	PLX
	AND.w #$00FF
	CMP.w #$00FF
	BEQ.b CODE_019060
	PHA
	LDA.b $10,x
	LDY.b $02,x
	PLX
	JSR.w CODE_0190A9
CODE_019060:
	RTL

CODE_019061:
	RTL

CODE_019062:
	RTL

CODE_019063:
	RTL

CODE_019064:
	RTL

CODE_019065:
	RTL

CODE_019066:
	RTL

CODE_019067:
	REP.b #$30
	LDA.w $034A
	LSR
	BCS.b CODE_019070
	RTL

CODE_019070:
	LDY.b $02,x
	LDA.b $10,x
	PHA
	LDA.w $034A
	AND.w #$0003
	ORA.w #$0001
	TAX
	PLA
	PHA
	JSR.w CODE_019116
	REP.b #$30
	PLA
	JSR.w CODE_0190DD
	JSR.w CODE_019116
	RTL

CODE_01908E:
	RTL

CODE_01908F:
	RTL

CODE_019090:
	RTL

CODE_019091:
	RTL

CODE_019092:
	RTL

CODE_019093:
	RTL

CODE_019094:
	RTL

CODE_019095:
	RTL

CODE_019096:
	RTL

CODE_019097:
	REP.b #$30
	LDA.w #$0010
	BIT.b $00,x
	BNE.b CODE_0190A1
	RTL

CODE_0190A1:
	JSL.l CODE_018D2B
	RTL

CODE_0190A6:
	RTL

CODE_0190A7:
	RTL

CODE_0190A8:
	RTL

CODE_0190A9:
	REP.b #$30
	PHX
	PHY
	PHA
	AND.w #$000F
	JSR.w CODE_019116
	REP.b #$30
	PLA
	PHA
	AND.w #$000F
	JSR.w CODE_0190DD
	JSR.w CODE_019116
	REP.b #$30
	PLA
	PLY
	PLX
	LSR
	LSR
	LSR
	LSR
	AND.w #$000F
	BEQ.b CODE_0190DC
	PHA
	JSR.w CODE_019116
	REP.b #$30
	PLA
	JSR.w CODE_0190DD
	JSR.w CODE_019116
CODE_0190DC:
	RTS

CODE_0190DD:
	REP.b #$30
	AND.w #$000F
	BIT.w #$0004
	BEQ.b CODE_0190F1
	TYA
	CLC
	ADC.w #$0020
	TAY
	LDA.w #$0001
	RTS

CODE_0190F1:
	BIT.w #$0001
	BEQ.b CODE_019100
	TYA
	SEC
	SBC.w #$0020
	TAY
	LDA.w #$0004
	RTS

CODE_019100:
	BIT.w #$0002
	BEQ.b CODE_01910B
	INY
	INY
	LDA.w #$0008
	RTS

CODE_01910B:
	BIT.w #$0008
	BEQ.b CODE_019115
	DEY
	DEY
	LDA.w #$0002
CODE_019115:
	RTS

CODE_019116:
	REP.b #$30
	AND.w #$000F
	STA.w $0322
	LDA.w #$0300
	STA.w $0326
	TXA
	XBA
	AND.w #$0300
	STA.w $0328
	LDA.w #$0004
	BIT.w $0322
	BNE.b CODE_019168
	LDA.w #$0001
	BIT.w $0322
	BNE.b CODE_01915C
	LDA.w #$0002
	BIT.w $0322
	BNE.b CODE_019150
	ASL.w $0326
	ASL.w $0326
	ASL.w $0328
	ASL.w $0328
CODE_019150:
	ASL.w $0326
	ASL.w $0326
	ASL.w $0328
	ASL.w $0328
CODE_01915C:
	ASL.w $0326
	ASL.w $0326
	ASL.w $0328
	ASL.w $0328
CODE_019168:
	LDA.w #$FFFF
	EOR.w $0326
	STA.w $0326
	LDA.w $0415,y
	AND.w $0326
	ORA.w $0328
	STA.w $0415,y
	RTS

CODE_01917E:
	REP.b #$10
	SEP.b #$20
	LDA.b [$71],y
	INY
	REP.b #$20
	AND.w #$00FF
	STA.b $10,x
	LDA.b $06,x
	CMP.w #$0026
	BNE.b CODE_01919F
	SEP.b #$20
	LDA.b [$71],y
	INY
	REP.b #$20
	AND.w #$00FF
	STA.b $12,x
CODE_01919F:
	REP.b #$30
	PHY
	PHX
	LDA.b $06,x
	SEP.b #$30
	LDX.b #$01
	CMP.b #$20
	BEQ.b CODE_0191D3
	CMP.b #$23
	BEQ.b CODE_0191D3
	CMP.b #$27
	BEQ.b CODE_0191D3
	LDX.b #$02
	CMP.b #$21
	BEQ.b CODE_0191D3
	CMP.b #$24
	BEQ.b CODE_0191D3
	CMP.b #$28
	BEQ.b CODE_0191D3
	LDX.b #$03
	CMP.b #$22
	BEQ.b CODE_0191D3
	CMP.b #$25
	BEQ.b CODE_0191D3
	CMP.b #$29
	BEQ.b CODE_0191D3
	LDX.b #$FF
CODE_0191D3:
	REP.b #$30
	TXA
	AND.w #$00FF
	PLX
	CMP.w #$00FF
	BEQ.b CODE_0191EF
	PHX
	AND.w #$0003
	PHA
	LDY.b $02,x
	LDA.b $10,x
	PLX
	JSR.w CODE_0190A9
	REP.b #$30
	PLX
CODE_0191EF:
	REP.b #$30
	PHX
	LDY.b $02,x
	LDA.b $10,x
	JSL.l CODE_0191FF
	REP.b #$10
	PLX
	PLY
	RTL

CODE_0191FF:
	REP.b #$30
	AND.w #$000F
	BIT.w #$0004
	BEQ.b CODE_019222
	LDA.w #$0004
	ORA.w $0415,y
	STA.w $0415,y
	TYA
	CLC
	ADC.w #$0020
	TAY
	LDA.w #$0001
	ORA.w $0415,y
	STA.w $0415,y
	RTL

CODE_019222:
	BIT.w #$0001
	BEQ.b CODE_019240
	LDA.w #$0001
	ORA.w $0415,y
	STA.w $0415,y
	TYA
	SEC
	SBC.w #$0020
	TAY
	LDA.w #$0004
	ORA.w $0415,y
	STA.w $0415,y
	RTL

CODE_019240:
	BIT.w #$0002
	BEQ.b CODE_01925A
	LDA.w #$0002
	ORA.w $0415,y
	STA.w $0415,y
	INY
	INY
	LDA.w #$0008
	ORA.w $0415,y
	STA.w $0415,y
	RTL

CODE_01925A:
	BIT.w #$0008
	BEQ.b CODE_019273
	LDA.w #$0008
	ORA.w $0415,y
	STA.w $0415,y
	DEY
	DEY
	LDA.w #$0002
	ORA.w $0415,y
	STA.w $0415,y
CODE_019273:
	RTL

CODE_019274:
	REP.b #$30
	AND.w #$000F
	BIT.w #$0004
	BEQ.b CODE_019297
	LDA.w #$FFFB
	AND.w $0415,y
	STA.w $0415,y
	TYA
	CLC
	ADC.w #$0020
	TAY
	LDA.w #$FFFE
	AND.w $0415,y
	STA.w $0415,y
	RTL

CODE_019297:
	BIT.w #$0001
	BEQ.b CODE_0192B5
	LDA.w #$FFFE
	AND.w $0415,y
	STA.w $0415,y
	TYA
	SEC
	SBC.w #$0020
	TAY
	LDA.w #$FFFB
	AND.w $0415,y
	STA.w $0415,y
	RTL

CODE_0192B5:
	BIT.w #$0002
	BEQ.b CODE_0192CF
	LDA.w #$FFFD
	AND.w $0415,y
	STA.w $0415,y
	INY
	INY
	LDA.w #$FFF7
	AND.w $0415,y
	STA.w $0415,y
	RTL

CODE_0192CF:
	BIT.w #$0008
	BEQ.b CODE_0192E8
	LDA.w #$FFF7
	AND.w $0415,y
	STA.w $0415,y
	DEY
	DEY
	LDA.w #$FFFD
	AND.w $0415,y
	STA.w $0415,y
CODE_0192E8:
	RTL

CODE_0192E9:
	REP.b #$30
	TXA
	SEP.b #$20
	STA.w !REGISTER_Mode7CenterX
	XBA
	STA.w !REGISTER_Mode7CenterX
	REP.b #$20
	TYA
	SEP.b #$20
	STA.w !REGISTER_Mode7CenterY
	XBA
	STA.w !REGISTER_Mode7CenterY
	RTL

CODE_019302:
	REP.b #$30
	STX.w $0712
	STY.w $0714
	AND.w #$00FF
	ASL
	TAX
	LDA.w DATA_03A668,x
	STA.w $0718
	LDA.w DATA_03A468,x
	STA.w $0716
	REP.b #$30
	LDA.w #$0008
	ORA.w $1C93
	STA.w $1C93
	LDA.w $0718
	LDX.w $0712
	JSL.l CODE_00B9D6
	REP.b #$20
	LDA.b $80
	SEP.b #$20
	STA.w !REGISTER_Mode7MatrixParameterA
	XBA
	STA.w !REGISTER_Mode7MatrixParameterA
	REP.b #$30
	LDA.w $0716
	LDX.w $0712
	JSL.l CODE_00B9D6
	REP.b #$20
	LDA.b $80
	SEP.b #$20
	STA.w !REGISTER_Mode7MatrixParameterB
	XBA
	STA.w !REGISTER_Mode7MatrixParameterB
	REP.b #$30
	LDA.w $0716
	EOR.w #$FFFF
	INC
	LDX.w $0714
	JSL.l CODE_00B9D6
	REP.b #$20
	LDA.b $80
	SEP.b #$20
	STA.w !REGISTER_Mode7MatrixParameterC
	XBA
	STA.w !REGISTER_Mode7MatrixParameterC
	REP.b #$30
	LDA.w $0718
	LDX.w $0714
	JSL.l CODE_00B9D6
	REP.b #$20
	LDA.b $80
	SEP.b #$20
	STA.w !REGISTER_Mode7MatrixParameterD
	XBA
	STA.w !REGISTER_Mode7MatrixParameterD
	REP.b #$20
	LDA.w #$FFF7
	AND.w $1C93
	STA.w $1C93
	RTL

CODE_019398:
	SEP.b #$20
	STA.b $A4
	REP.b #$10
	STY.b $A2
	PHX
	SEP.b #$20
	STZ.w !REGISTER_CGRAMAddress
	LDX.w #$0100
	LDY.w #$0000
CODE_0193AC:
	REP.b #$30
	LDA.b [$A2],y
	SEP.b #$20
	STA.w !REGISTER_WriteToCGRAMPort
	XBA
	STA.w !REGISTER_WriteToCGRAMPort
	INY
	INY
	DEX
	BNE.b CODE_0193AC
	SEP.b #$20
	LDA.b $A4
	REP.b #$20
	AND.w #$00FF
	PHA
	PEA.w $7F0000
	PEA.w $7F0000>>16
	JSL.l CODE_0188AC
	REP.b #$20
	PLA
	PLA
	PLA
	PLA
	LDA.w #$7F0000
	STA.b $A2
	SEP.b #$20
	LDA.b #$7F0000>>16
	STA.b $A4
	LDA.b #$80
	STA.w !REGISTER_VRAMAddressIncrementValue
	REP.b #$30
	STZ.w !REGISTER_VRAMAddressLo
	LDX.w #$4000
	SEP.b #$20
CODE_0193F2:
	LDA.b [$A2],y
	STA.w !REGISTER_WriteToVRAMPortHi
	INY
	DEX
	BNE.b CODE_0193F2
	SEP.b #$20
	LDA.b #$00
	STA.w !REGISTER_VRAMAddressIncrementValue
	REP.b #$30
	STZ.w !REGISTER_VRAMAddressLo
	LDY.w #$0001
	SEP.b #$20
	LDX.w #$0300
CODE_01940F:
	STZ.w !REGISTER_WriteToVRAMPortLo
	DEX
	BNE.b CODE_01940F
	LDA.b #$0F
	STA.b $A2
CODE_019419:
	LDX.w #$0008
CODE_01941C:
	STZ.w !REGISTER_WriteToVRAMPortLo
	DEX
	BNE.b CODE_01941C
	LDX.w #$0010
CODE_019425:
	TYA
	STA.w !REGISTER_WriteToVRAMPortLo
	INY
	DEX
	BNE.b CODE_019425
	LDX.w #$0068
CODE_019430:
	STZ.w !REGISTER_WriteToVRAMPortLo
	DEX
	BNE.b CODE_019430
	DEC.b $A2
	BNE.b CODE_019419
	LDX.w #$0380
CODE_01943D:
	STZ.w !REGISTER_WriteToVRAMPortLo
	DEX
	BNE.b CODE_01943D
	RTS

CODE_019444:
	REP.b #$30
	PHA
	PHX
	PHY
	SEP.b #$20
	LDA.b #$80
	STA.w $1339
	STA.w !REGISTER_ScreenDisplayRegister
	SEP.b #$20
	STZ.w $02FF
	STZ.w !REGISTER_HDMAEnable
	JSL.l CODE_00A199
	JSL.l CODE_0092E1
	REP.b #$30
	LDA.w #$0000
	LDX.w #$8000
	JSL.l CODE_00C90C
	JSL.l CODE_01A9A1
	SEP.b #$20
	LDA.b #$07
	STA.w !REGISTER_BGModeAndTileSizeSetting
	LDA.b #$11
	STA.w !REGISTER_MainScreenLayers
	LDA.b #$80
	STA.w !REGISTER_Mode7TilemapSettings
	STZ.w !REGISTER_MosaicSizeAndBGEnable
	STZ.w !REGISTER_BG1VertScrollOffset
	STZ.w !REGISTER_BG1VertScrollOffset
	STZ.w !REGISTER_BG1HorizScrollOffset
	STZ.w !REGISTER_BG1HorizScrollOffset
	REP.b #$30
	PLY
	PLX
	PLA
	JSR.w CODE_019398
	SEP.b #$20
	STZ.w $1339
	LDA.b #$0F
	AND.w $1336
	STA.w !REGISTER_ScreenDisplayRegister
	RTL

CODE_0194A9:
	REP.b #$20
	LDA.w $03C6
	BIT.w #$0100
	BEQ.b CODE_0194B6
	INC.w $071A
CODE_0194B6:
	REP.b #$20
	LDA.w $03C6
	BIT.w #$0200
	BEQ.b CODE_0194C3
	DEC.w $071A
CODE_0194C3:
	REP.b #$20
	LDA.w $03C6
	BIT.w #$0400
	BEQ.b CODE_0194E1
	BIT.w #$0080
	BEQ.b CODE_0194D7
	INC.w $071C
	BRA.b CODE_0194E1

CODE_0194D7:
	LDA.w $071C
	CLC
	ADC.w #$0020
	STA.w $071C
CODE_0194E1:
	REP.b #$20
	LDA.w $03C6
	BIT.w #$0800
	BEQ.b CODE_0194FF
	BIT.w #$0080
	BEQ.b CODE_0194F5
	DEC.w $071C
	BRA.b CODE_0194FF

CODE_0194F5:
	LDA.w $071C
	SEC
	SBC.w #$0020
	STA.w $071C
CODE_0194FF:
	RTS

CODE_019500:
	REP.b #$20
	LDA.w $03C6
	BIT.w #$0100
	BEQ.b CODE_01950D
	INC.w $071E
CODE_01950D:
	REP.b #$20
	LDA.w $03C6
	BIT.w #$0200
	BEQ.b CODE_01951A
	DEC.w $071E
CODE_01951A:
	REP.b #$20
	LDA.w $03C6
	BIT.w #$0400
	BEQ.b CODE_019527
	INC.w $0720
CODE_019527:
	REP.b #$20
	LDA.w $03C6
	BIT.w #$0800
	BEQ.b CODE_019534
	DEC.w $0720
CODE_019534:
	RTS

CODE_019535:
	JSL.l CODE_019444
	REP.b #$20
	LDA.w #$0002
	JSL.l CODE_00C933
	SEP.b #$20
CODE_019544:
	LDA.w $1335
	BNE.b CODE_019544
	REP.b #$10
	LDX.w #$0080
	LDY.w #$0070
	JSL.l CODE_0192E9
	REP.b #$20
	LDA.w #$0000
	STA.w $071A
	LDA.w #$0100
	STA.w $071C
	STZ.w $071E
	STZ.w $0720
CODE_019569:
	JSL.l CODE_00CA17
	JSL.l CODE_00B8F9
	REP.b #$20
	LDA.w $03C6
	BIT.w #$0040
	BNE.b CODE_019580
	JSR.w CODE_0194A9
	BRA.b CODE_019583

CODE_019580:
	JSR.w CODE_019500
CODE_019583:
	REP.b #$30
	LDA.w $071E
	STA.b $57
	LDA.w $0720
	SEP.b #$20
	STA.w !REGISTER_BG1VertScrollOffset
	XBA
	STA.w !REGISTER_BG1VertScrollOffset
	REP.b #$20
	LDA.w $071A
	LDX.w $071C
	LDY.w $071C
	JSL.l CODE_019302
	BRA.b CODE_019569

CODE_0195A7:
	REP.b #$30
	LDA.w $072A
	STA.w FB2000_Level_Smiloid[$00].FreezeTimerLo,y
	LDA.w #$0010
	ORA.w $0002,y
	STA.w $0002,y
	RTL

CODE_0195B9:
	REP.b #$30
	LDA.w $072A
	CLC
	ADC.w FB2000_Level_Smiloid[$00].ShieldTimerLo,y
	STA.w FB2000_Level_Smiloid[$00].ShieldTimerLo,y
	LDA.w #$0010
	ORA.w $0002,y
	STA.w $0002,y
	RTL

CODE_0195CF:
	REP.b #$30
	INC.w $03A7
	LDA.w $0049,y
	CLC
	ADC.w $072A
	CMP.w #$0015
	BCC.b CODE_0195F0
	LDA.w FB2000_Level_Smiloid[$00].MaxHPRegenLo,y
	STA.w FB2000_Level_Smiloid[$00].HPLo,y
	LDA.w #$0004
	ORA.w $0002,y
	STA.w $0002,y
	RTL

CODE_0195F0:
	STA.w $0049,y
	LDA.w $072A
	CLC
	ADC.w FB2000_Level_Smiloid[$00].MaxHPLo,y
	STA.w FB2000_Level_Smiloid[$00].MaxHPLo,y
	LDA.w $072A
	CLC
	ADC.w FB2000_Level_Smiloid[$00].MaxHPRegenLo,y
	STA.w FB2000_Level_Smiloid[$00].MaxHPRegenLo,y
	STA.w FB2000_Level_Smiloid[$00].HPLo,y
	LDA.w #$8004
	ORA.w $0002,y
	STA.w $0002,y
	RTL

CODE_019614:
	REP.b #$30
	LDA.w $072A
	STA.w FB2000_Level_Smiloid[$00].StealthTimerLo,y
	LDA.w #$0010
	ORA.w $0002,y
	STA.w $0002,y
	RTL

CODE_019626:
	REP.b #$30
	LDA.w $072A
	STA.w $004F,y
	LDA.w #$0010
	ORA.w $0002,y
	STA.w $0002,y
	RTL

CODE_019638:
	REP.b #$30
	INC.w $03AB
	LDA.w FB2000_Level_Smiloid[$00].MaxShotsLo,y
	INC
	CMP.w #$0007
	BCS.b CODE_019649
	STA.w FB2000_Level_Smiloid[$00].MaxShotsLo,y
CODE_019649:
	LDA.w #$8000
	ORA.w $0002,y
	STA.w $0002,y
	RTL

CODE_019653:
	REP.b #$30
	INC.w $03AF
	LDA.w $072A
	CLC
	ADC.w $0037,y
	STA.w $0037,y
	LDA.w #$0020
	ORA.w $0002,y
	STA.w $0002,y
	RTL

CODE_01966C:
	REP.b #$30
	LDY.w #$0100
	LDX.w #$0000
CODE_019674:
	LDA.w #$0010
	ORA.w $0415,x
	STA.w $0415,x
	INX
	INX
	DEY
	BNE.b CODE_019674
	RTL

CODE_019683:
	REP.b #$20
	LDA.w #$0001
	STA.w $034E
	RTL

CODE_01968C:
	REP.b #$30
	LDA.w $072A
	STA.w $034C
	LDA.w #DATA_03AD76
	JSL.l CODE_029EE2
	RTL

CODE_01969C:
	REP.b #$30
	INC.w $03AD
	TYX
	LDA.w #$01F4
	JSL.l CODE_0199B5
	RTL

CODE_0196AA:
	REP.b #$30
	INC.w $03A9
	LDA.w $072A
	AND.w #$00FF
	SEP.b #$20
	CLC
	ADC.w $0031,y
	CMP.b #$08
	BCC.b CODE_0196C1
	LDA.b #$07
CODE_0196C1:
	STA.w $0031,y
	REP.b #$20
	LDA.w #$8000
	ORA.w $0002,y
	STA.w $0002,y
	RTL

CODE_0196D0:
	REP.b #$30
	LDA.w $072A
	CLC
	ADC.w FB2000_Level_Smiloid[$00].HPLo,y
	CMP.w FB2000_Level_Smiloid[$00].MaxHPRegenLo,y
	BCC.b CODE_0196E3
	BEQ.b CODE_0196E3
	LDA.w FB2000_Level_Smiloid[$00].MaxHPRegenLo,y
CODE_0196E3:
	STA.w FB2000_Level_Smiloid[$00].HPLo,y
	LDA.w #$0004
	ORA.w $0002,y
	STA.w $0002,y
	RTL

CODE_0196F0:
	REP.b #$30
	LDA.w $0342
	BIT.w #$0400
	BNE.b CODE_019707
	LDA.w $034A
	AND.w #$000F
	ASL
	TAY
	LDA.w DATA_03AC66,y
	BRA.b CODE_01970A

CODE_019707:
	LDA.w #$0040
CODE_01970A:
	STA.b $0E,x
	RTL

CODE_01970D:
	RTL

CODE_01970E:
	REP.b #$20
	LDA.w #$0023
	JSL.l CODE_019757
	RTL

CODE_019718:
	REP.b #$20
	LDA.w #$0024
	JSL.l CODE_019757
	RTL

CODE_019722:
	REP.b #$20
	LDA.w #$0025
	JSL.l CODE_019757
	RTL

CODE_01972C:
	REP.b #$20
	LDA.w #$0020
	JSR.w CODE_019747
	RTL

CODE_019735:
	REP.b #$20
	LDA.w #$0021
	JSR.w CODE_019747
	RTL

CODE_01973E:
	REP.b #$20
	LDA.w #$0022
	JSR.w CODE_019747
	RTL

CODE_019747:
	REP.b #$30
	TAY
	LDA.w #$0010
	BIT.b $00,x
	BEQ.b CODE_019756
	TYA
	JSL.l CODE_019757
CODE_019756:
	RTS

CODE_019757:
	REP.b #$30
	STA.w $0728
	LDX.w #$072C
CODE_01975F:
	REP.b #$30
	LDA.w #$0001
	BIT.b $00,x
	BEQ.b CODE_0197BE
	LDA.b $06,x
	CMP.w $0728
	BNE.b CODE_0197BE
	LDA.w #$0080
	BIT.b $00,x
	BEQ.b CODE_01979B
	LDA.w #$FF7F
	AND.b $00,x
	STA.b $00,x
	LDA.b $10,x
	LDY.b $02,x
	PHX
	JSL.l CODE_0191FF
	REP.b #$30
	PLX
	LDA.b $10,x
	LSR
	LSR
	LSR
	LSR
	LDY.b $02,x
	PHX
	JSL.l CODE_019274
	REP.b #$30
	PLX
	BRA.b CODE_0197BE

CODE_01979B:
	LDA.w #$0080
	ORA.b $00,x
	STA.b $00,x
	LDA.b $10,x
	LDY.b $02,x
	PHX
	JSL.l CODE_019274
	REP.b #$30
	PLX
	LDA.b $10,x
	LSR
	LSR
	LSR
	LSR
	LDY.b $02,x
	PHX
	JSL.l CODE_0191FF
	REP.b #$30
	PLX
CODE_0197BE:
	REP.b #$30
	TXA
	CLC
	ADC.w #$0014
	TAX
	CPX.w #$09AC
	BNE.b CODE_01975F
	LDA.w #$0007
	JSL.l CODE_02C90B
	RTL

CODE_0197D3:
	REP.b #$30
	LDA.w #$0010
	BIT.b $00,x
	BNE.b CODE_0197DD
	RTL

CODE_0197DD:
	LDY.b $0A,x
	LDA.b $12,x
	PHA
	AND.w #$000F
	XBA
	CLC
	ADC.w #$0080
	STA.w $0004,y
	PLA
	LSR
	LSR
	LSR
	LSR
	AND.w #$000F
	XBA
	CLC
	ADC.w #$0080
	STA.w $0007,y
	LDA.w #$0005
	JSL.l CODE_02C90B
	RTL

CODE_019805:
	REP.b #$30
	LDA.w #$0010
	BIT.b $00,x
	BNE.b CODE_01980F
	RTL

CODE_01980F:
	JSL.l CODE_018D2B
	RTL

CODE_019814:
	REP.b #$30
	LSR
	STA.w $0B92
	STZ.w $0B90
	STZ.w $0B94
	TYA
	BNE.b CODE_019825
	TXA
	RTL

CODE_019825:
	BPL.b CODE_01982B
	EOR.w #$FFFF
	INC
CODE_01982B:
	STA.w $0B96
	PHX
	TXA
	BPL.b CODE_019836
	EOR.w #$FFFF
	INC
CODE_019836:
	STA.w $0B98
CODE_019839:
	CMP.w $0B96
	BCC.b CODE_019846
	ASL.w $0B92
	ASL.w $0B96
	BRA.b CODE_019839

CODE_019846:
	LDA.w $0B90
	CLC
	ADC.w $0B92
	LSR
	CMP.w $0B90
	BEQ.b CODE_019876
	CMP.w $0B92
	BEQ.b CODE_019876
	TAX
	LDA.w $0B94
	CLC
	ADC.w $0B96
	LSR
	CMP.w $0B98
	BCC.b CODE_01986E
	STX.w $0B92
	STA.w $0B96
	BRA.b CODE_019846

CODE_01986E:
	STX.w $0B90
	STA.w $0B94
	BRA.b CODE_019846

CODE_019876:
	PLX
	BPL.b CODE_01987D
	EOR.w #$FFFF
	INC
CODE_01987D:
	RTL

CODE_01987E:
	REP.b #$30
	LDX.w #$0040
	LDA.w #$0070
	JSL.l CODE_019814
	RTL

CODE_01988B:
	REP.b #$30
	STA.w $0B8C
	CPX.w $1F6F
	BNE.b CODE_01989C
	CPY.w $1F71
	BNE.b CODE_01989C
CODE_01989A:
	SEC
	RTL

CODE_01989C:
	TXA
	SEC
	SBC.w $1F6F
	TAX
	TYA
	SEC
	SBC.w $1F71
	TAY
	PHX
	PHY
	JSL.l CODE_00B920
	REP.b #$30
	STA.w $0B8E
	PLY
	PLX
	SEP.b #$20
	LDA.w $1F73
	EOR.b #$FF
	INC
	CLC
	ADC.b #$40
	JSL.l CODE_00BA5F
	REP.b #$30
	TYA
	BMI.b CODE_01989A
	STA.w $0B98
	TXA
	BPL.b CODE_0198D3
	EOR.w #$FFFF
	INC
CODE_0198D3:
	CMP.w $0B98
	BEQ.b CODE_0198DA
	BCS.b CODE_01989A
CODE_0198DA:
	REP.b #$30
	PHY
	LDA.w #$0090
	JSL.l CODE_019814
	REP.b #$30
	PLY
	PHA
	PHY
	JSL.l CODE_01987E
	REP.b #$30
	PLY
	PHA
	LDX.w $0B8C
	LDA.w #$0090
	JSL.l CODE_019814
	REP.b #$30
	PLY
	PLX
	CLC
	RTL

CODE_019901:
	REP.b #$10
	SEP.b #$20
	LDA.b $31,x
	REP.b #$20
	STZ.w $129A
	STZ.w $129C
	AND.w #$0007
	BNE.b CODE_019915
	RTL

CODE_019915:
	REP.b #$30
	CMP.w #$0007
	BNE.b CODE_019929
	LDA.w DATA_03AFD9,y
	STA.w $129A
	LDA.w DATA_03B1D9,y
	STA.w $129C
	RTL

CODE_019929:
	REP.b #$30
	CMP.w #$0006
	BNE.b CODE_01993D
	LDA.w DATA_03B3D9,y
	STA.w $129A
	LDA.w DATA_03B5D9,y
	STA.w $129C
	RTL

CODE_01993D:
	REP.b #$30
	CMP.w #$0005
	BNE.b CODE_019951
	LDA.w DATA_03B7D9,y
	STA.w $129A
	LDA.w DATA_03B9D9,y
	STA.w $129C
	RTL

CODE_019951:
	REP.b #$30
	CMP.w #$0004
	BNE.b CODE_019965
	LDA.w DATA_03BBD9,y
	STA.w $129A
	LDA.w DATA_03BDD9,y
	STA.w $129C
	RTL

CODE_019965:
	REP.b #$30
	CMP.w #$0003
	BNE.b CODE_019979
	LDA.w DATA_03BFD9,y
	STA.w $129A
	LDA.w DATA_03C1D9,y
	STA.w $129C
	RTL

CODE_019979:
	REP.b #$30
	CMP.w #$0002
	BNE.b CODE_01998D
	LDA.w DATA_03C3D9,y
	STA.w $129A
	LDA.w DATA_03C5D9,y
	STA.w $129C
	RTL

CODE_01998D:
	REP.b #$30
	LDA.w DATA_03C7D9,y
	STA.w $129A
	LDA.w DATA_03C9D9,y
	STA.w $129C
	RTL

CODE_01999C:
	REP.b #$30
	PHA
	PHY
	AND.w #$000F
	TAY
	INY
	LDA.w #!RAM_FB2000_Level_Smiloids_SpriteTableStart
CODE_0199A8:
	DEY
	BEQ.b CODE_0199B1
	CLC
	ADC.w #$0070
	BRA.b CODE_0199A8

CODE_0199B1:
	TAX
	PLY
	PLA
	RTL

CODE_0199B5:
	REP.b #$30
	STA.b $A7
	LDA.b $37,x
	BNE.b CODE_0199BE
	RTL

CODE_0199BE:
	LDA.b $A7
	CLC
	ADC.b $34,x
	STA.b $34,x
	SEP.b #$20
	LDA.b #$00
	ADC.b $36,x
	STA.b $36,x
	CMP.b #$01
	BCC.b CODE_0199EE
	BNE.b CODE_0199DC
	REP.b #$20
	LDA.b $34,x
	CMP.w #$86A0
	BCC.b CODE_0199EE
CODE_0199DC:
	REP.b #$20
	LDA.b $34,x
	SEC
	SBC.w #$86A0
	STA.b $34,x
	SEP.b #$20
	LDA.b $36,x
	SBC.b #$01
	STA.b $36,x
CODE_0199EE:
	REP.b #$20
	LDA.w #$0008
	ORA.b $02,x
	STA.b $02,x
	REP.b #$30
	LDY.w #$12AD
	CPX.w #!RAM_FB2000_Level_Smiloids_SpriteTableStart
	BEQ.b CODE_019A0A
	LDY.w #$12AF
	CPX.w #$0C0A
	BEQ.b CODE_019A0A
	RTL

CODE_019A0A:
	LDA.b $A7
	CLC
	ADC.w $0000,y
	STA.w $0000,y
CODE_019A13:
	REP.b #$30
	LDA.w $0000,y
	CMP.w #$1388
	BCS.b CODE_019A1E
	RTL

CODE_019A1E:
	SBC.w #$1388
	STA.w $0000,y
	PHX
	PHY
	LDA.w #$0001
	JSL.l CODE_019A33
	REP.b #$30
	PLY
	PLX
	BRA.b CODE_019A13

CODE_019A33:
	REP.b #$30
	CMP.w #$0000
	BEQ.b CODE_019A4D
	CLC
	ADC.b $37,x
	STA.b $37,x
	LDA.w #$0020
	ORA.b $02,x
	STA.b $02,x
	LDA.w #$0003
	JSL.l CODE_02C90B
CODE_019A4D:
	RTL

CODE_019A4E:
	REP.b #$30
	STZ.w $12AD
	STZ.w $12AF
	LDY.w #$0010
	LDX.w #!RAM_FB2000_Level_Smiloids_SpriteTableStart
CODE_019A5C:
	LDA.w #$0002
	STA.b $00,x
	STZ.b $02,x
	STZ.b $1C,x
	STZ.b $3D,x
	STZ.b $32,x
	STZ.b $34,x
	STZ.b $35,x
	STZ.b $39,x
	STZ.b $3B,x
	STZ.b FB2000_Level_Smiloid[$00].ShieldTimerLo,x
	STZ.b $49,x
	STZ.b FB2000_Level_Smiloid[$00].FreezeTimerLo,x
	STZ.b FB2000_Level_Smiloid[$00].StealthTimerLo,x
	STZ.b $4F,x
	LDA.w #$0002
	STA.b FB2000_Level_Smiloid[$00].MaxShotsLo,x
	STZ.b FB2000_Level_Smiloid[$00].ActiveShotsLo,x
	STZ.b $5C,x
	LDA.w #$0024
	STA.b $0A,x
	LDA.w #$0003
	STA.b $37,x
	LDA.w #$0003
	STA.b FB2000_Level_Smiloid[$00].MaxHPLo,x
	LDA.w #$0003
	STA.b FB2000_Level_Smiloid[$00].MaxHPRegenLo,x
	LDA.w #$0004
	STA.b FB2000_Level_Smiloid[$00].MaxShotDelayLo,x
	LDA.w #$0050
	STA.b $22,x
	SEP.b #$20
	LDA.b #$02
	STA.b FB2000_Level_Smiloid[$00].MaxTurnSpeed,x
	LDA.b #$01
	STA.b $31,x
	REP.b #$20
	LDA.w #$0009
	STA.b $2C,x
	STZ.b $2E,x
	STZ.b FB2000_Level_Smiloid[$00].Name,x
	CPX.w #!RAM_FB2000_Level_Smiloids_SpriteTableStart
	BNE.b CODE_019AD6
	PHX
	PHY
	TXA
	CLC
	ADC.w #FB2000_Level_Smiloid[$00].Name
	TAX
	LDY.w #DATA_03CBD9
	JSL.l CODE_00C8F6
	REP.b #$30
	PLY
	PLX
	LDA.w #$0009
	STA.b $2C,x
	STZ.b $2E,x
CODE_019AD6:
	CPX.w #$0C0A
	BNE.b CODE_019AF8
	PHX
	PHY
	TXA
	CLC
	ADC.w #FB2000_Level_Smiloid[$00].Name
	TAX
	LDY.w #DATA_03CBE4
	JSL.l CODE_00C8F6
	REP.b #$30
	PLY
	PLX
	LDA.w #$0011
	STA.b $2C,x
	LDA.w #$FFFF
	STA.b $2E,x
CODE_019AF8:
	TXA
	CLC
	ADC.w #$0070
	TAX
	DEY
	BEQ.b CODE_019B04
	BRL.w CODE_019A5C

CODE_019B04:
	RTL

CODE_019B05:
	REP.b #$30
	LDA.w $0342
	BIT.w #$0008
	BEQ.b CODE_019B5C
	BIT.w #$0400
	BEQ.b CODE_019B26
	CPX.w #!RAM_FB2000_Level_Smiloids_SpriteTableStart
	BEQ.b CODE_019B26
	LDA.w $12A2
	CMP.w #$0001
	BEQ.b CODE_019B5C
	CPX.w #$0C0A
	BNE.b CODE_019B5C
CODE_019B26:
	REP.b #$30
	LDA.w $0342
	BIT.w #$0008
	BEQ.b CODE_019B5C
	LDA.w #$0012
	STA.b $00,x
	SEP.b #$20
	LDA.b $5E,x
	PHA
	AND.b #$0F
	STA.b $05,x
	LDA.b #$80
	STA.b $04,x
	STZ.b $06,x
	PLA
	LSR
	LSR
	LSR
	LSR
	AND.b #$0F
	STA.b $08,x
	LDA.b #$80
	STA.b $07,x
	STZ.b $09,x
	REP.b #$20
	LDA.b $5F,x
	STA.b FB2000_Level_Smiloid[$00].FacingAngle,x
	BRL.w CODE_019C70

CODE_019B5C:
	REP.b #$30
	LDA.w #$0012
	STA.b $00,x
	PHX
	LDA.w #$0008
	STA.w $12A8
CODE_019B6A:
	REP.b #$20
	LDA.w $12A8
	BEQ.b CODE_019B76
	DEC.w $12A8
	BNE.b CODE_019BAC
CODE_019B76:
	SEP.b #$20
	INC.b $A7
	LDA.b $A7
	AND.b #$0F
	STA.b $A7
	BNE.b CODE_019B8A
	INC.b $A8
	LDA.b $A8
	AND.b #$0F
	STA.b $A8
CODE_019B8A:
	SEP.b #$20
	LDA.b $A7
	BNE.b CODE_019B92
	INC.b $A7
CODE_019B92:
	LDA.b $A8
	BNE.b CODE_019B98
	INC.b $A8
CODE_019B98:
	LDA.b $A7
	REP.b #$30
	AND.w #$000F
	TAX
	SEP.b #$20
	LDA.b $A8
	REP.b #$30
	AND.w #$000F
	TAY
	BRA.b CODE_019BE2

CODE_019BAC:
	SEP.b #$20
	LDA.w !REGISTER_SoftwareLatchForHVCounter
	LDA.w !REGISTER_VCounter
	EOR.w !REGISTER_HCounter
	REP.b #$20
	AND.w #$000F
	CMP.w #$000F
	BEQ.b CODE_019BAC
	SEP.b #$30
	INC
	STA.b $A7
	TAX
CODE_019BC7:
	SEP.b #$20
	LDA.w !REGISTER_SoftwareLatchForHVCounter
	LDA.w !REGISTER_VCounter
	EOR.w !REGISTER_HCounter
	REP.b #$20
	AND.w #$000F
	CMP.w #$000F
	BEQ.b CODE_019BC7
	SEP.b #$30
	INC
	STA.b $A8
	TAY
CODE_019BE2:
	REP.b #$30
	LDA.w #$0000
	PHX
	TYA
	XBA
	LSR
	LSR
	LSR
	CLC
	ADC.b $01,S
	ADC.b $01,S
	TAX
	LDA.w $0415,x
	PLX
	SEP.b #$20
	AND.b #$0F
	CMP.b #$0F
	BNE.b CODE_019C02
CODE_019BFF:
	BRL.w CODE_019B6A

CODE_019C02:
	LDA.b $8A
	DEC
	DEC
	CMP.b $A7
	BCC.b CODE_019BFF
	LDA.b $8B
	DEC
	DEC
	CMP.b $A8
	BCC.b CODE_019BFF
	REP.b #$30
	LDX.w #!RAM_FB2000_Level_Smiloids_SpriteTableStart
CODE_019C17:
	REP.b #$30
	LDA.b $00,x
	BIT.w #$0010
	BEQ.b CODE_019C3B
	BIT.w #$0040
	BNE.b CODE_019C3B
	TXA
	CMP.b $01,S
	BEQ.b CODE_019C3B
	SEP.b #$20
	LDA.b $05,x
	CMP.b $A7
	BNE.b CODE_019C3B
	LDA.b $08,x
	CMP.b $A8
	BNE.b CODE_019C3B
	BRL.w CODE_019B6A

CODE_019C3B:
	REP.b #$30
	TXA
	CLC
	ADC.w #$0070
	TAX
	CPX.w #$129A
	BNE.b CODE_019C17
	SEP.b #$20
	LDA.w !REGISTER_SoftwareLatchForHVCounter
	LDA.w !REGISTER_VCounter
	EOR.w !REGISTER_HCounter
	REP.b #$10
	PLX
	SEP.b #$20
	AND.b #$C0
	STA.b $0C,x
	LDA.b $A7
	STA.b $05,x
	LDA.b #$80
	STA.b $04,x
	STZ.b $06,x
	LDA.b $A8
	STA.b $08,x
	LDA.b #$80
	STA.b $07,x
	STZ.b $09,x
CODE_019C70:
	REP.b #$20
	LDA.w $0342
	BIT.w #$0400
	BNE.b CODE_019C82
	STZ.b FB2000_Level_Smiloid[$00].StealthTimerLo,x
	STZ.b FB2000_Level_Smiloid[$00].ShieldTimerLo,x
	STZ.b FB2000_Level_Smiloid[$00].FreezeTimerLo,x
	STZ.b $4F,x
CODE_019C82:
	LDA.w #$013F
	AND.b $2C,x
	STA.b $2C,x
	LDA.b FB2000_Level_Smiloid[$00].MaxHPLo,x
	STA.b FB2000_Level_Smiloid[$00].HPLo,x
	LDA.b $22,x
	STA.b $20,x
	LDA.w #$0004
	ORA.b $02,x
	AND.w #$81FF
	STA.b $02,x
	LDA.w $12A2
	CMP.w #$0002
	BCC.b CODE_019CB5
	CPX.w #$0C7A
	BCS.b CODE_019CBA
CODE_019CA8:
	LDA.w #$0012
	STA.b $1C,x
	LDA.w #$1000
	ORA.b $00,x
	STA.b $00,x
	RTL

CODE_019CB5:
	CPX.w #$0C0A
	BCC.b CODE_019CA8
CODE_019CBA:
	LDA.w #$0100
	ORA.b $00,x
	STA.b $00,x
	RTL

CODE_019CC2:
	REP.b #$30
	LDA.w #$0001
	STA.w $0229
	LDA.b $04,x
	STA.b $10
	LDA.b $07,x
	STA.b $13
	SEP.b #$20
	LDA.b $06,x
	STA.b $12
	LDA.b $09,x
	STA.b $15
	REP.b #$30
	PHX
	LDA.b $0A,x
	JSL.l CODE_018788
	REP.b #$30
	TXY
	PLX
	BCC.b CODE_019D31
	LDA.b FB2000_Level_Smiloid[$00].ShieldTimerLo,x
	BEQ.b CODE_019CFC
	PHX
	PHY
	TXA
	TYX
	TAY
	JSL.l CODE_02ACA4
	REP.b #$30
	PLY
	PLX
CODE_019CFC:
	STY.b $43,x
	CPY.w #!RAM_FB2000_Level_Smiloids_SpriteTableStart
	BCC.b CODE_019D08
	CPY.w #$122B
	BCC.b CODE_019D0C
CODE_019D08:
	JSL.l CODE_0095D4
CODE_019D0C:
	NOP
	LDA.w #$0800
	ORA.b $02,x
	STA.b $02,x
	STX.b $43,y
	CPX.w #!RAM_FB2000_Level_Smiloids_SpriteTableStart
	BCC.b CODE_019D20
	CPX.w #$122B
	BCC.b CODE_019D24
CODE_019D20:
	JML.l CODE_0095D4

CODE_019D24:
	NOP
	LDA.w #$0800
	ORA.w $0002,y
	STA.w $0002,y
	BRL.w CODE_019DE4

CODE_019D31:
	REP.b #$30
	PHX
	LDA.b $0A,x
	JSL.l CODE_018533
	REP.b #$30
	PLX
	BCC.b CODE_019D7A
	SEP.b #$20
	LDA.b $27
	XBA
	LDA.b $26
	REP.b #$20
	STA.b $41,x
	LDA.w #$0200
	ORA.b $02,x
	STA.b $02,x
	LDA.w #$0100
	BIT.b $00,x
	BEQ.b CODE_019D5B
	BRL.w CODE_019DE4

CODE_019D5B:
	PHX
	LDA.w #$0010
	STA.w $0320
	JSL.l CODE_018DAA
	REP.b #$30
	BCC.b CODE_019D77
	TXY
	PLX
	LDA.w #$2000
	ORA.b $02,x
	STA.b $02,x
	STY.b $45,x
	BRA.b CODE_019DE4

CODE_019D77:
	PLX
	BRA.b CODE_019DE4

CODE_019D7A:
	LDA.b $00,x
	BIT.w #$0100
	BNE.b CODE_019DE4
	REP.b #$30
	PHX
	LDA.b $0A,x
	JSL.l CODE_01881B
	REP.b #$30
	TXY
	PLX
	BCC.b CODE_019DE4
	LDA.w $0006,y
	CMP.w #$000E
	BNE.b CODE_019DD0
	LDA.w $0000,y
	BIT.w #$0020
	BEQ.b CODE_019DD0
	PHX
	PHY
	TYX
	LDA.b $08,x
	TAY
	JSL.l CODE_029DCB
	REP.b #$20
	LDA.w #$0001
	BIT.w $0722
	BNE.b CODE_019DB9
	BIT.w $0724
	BEQ.b CODE_019DCC
CODE_019DB9:
	LDA.b $12,x
	STA.w $034C
	LDA.w #$FFFE
	AND.b $00,x
	STA.b $00,x
	LDA.w #DATA_03AD76
	JSL.l CODE_029EE2
CODE_019DCC:
	REP.b #$30
	PLY
	PLX
CODE_019DD0:
	STX.b $0A,y
	LDA.w #$0010
	ORA.w $0000,y
	STA.w $0000,y
	STY.b $45,x
	LDA.w #$2000
	ORA.b $02,x
	STA.b $02,x
CODE_019DE4:
	LDA.b $20
	STA.b FB2000_Level_Smiloid[$00].XPosLo,x
	LDA.b $23
	STA.b FB2000_Level_Smiloid[$00].YPosLo,x
	SEP.b #$20
	LDA.b $22
	STA.b $06,x
	LDA.b $25
	STA.b $09,x
	RTS

CODE_019DF7:
	REP.b #$30
	LDA.b $00,x
	BIT.w #$0010
	BEQ.b CODE_019E05
	BIT.w #$0040
	BEQ.b CODE_019E06
CODE_019E05:
	RTL

CODE_019E06:
	LDA.b $39,x
	STA.w $129E
	LDA.w #$0040
	BIT.b $39,x
	BEQ.b CODE_019E24
	BIT.b $3B,x
	BNE.b CODE_019E24
	LDA.w #$0400
	EOR.b $00,x
	STA.b $00,x
	LDA.w #$0040
	ORA.b $3B,x
	STA.b $3B,x
CODE_019E24:
	REP.b #$30
	LDA.w #$0200
	BIT.w $129E
	BEQ.b CODE_019E37
	SEP.b #$20
	LDA.b FB2000_Level_Smiloid[$00].MaxTurnSpeed,x
	CLC
	ADC.b FB2000_Level_Smiloid[$00].FacingAngle,x
	STA.b FB2000_Level_Smiloid[$00].FacingAngle,x
CODE_019E37:
	REP.b #$20
	LDA.w #$0100
	BIT.w $129E
	BEQ.b CODE_019E4D
	SEP.b #$20
	LDA.b FB2000_Level_Smiloid[$00].MaxTurnSpeed,x
	EOR.b #$FF
	INC
	CLC
	ADC.b FB2000_Level_Smiloid[$00].FacingAngle,x
	STA.b FB2000_Level_Smiloid[$00].FacingAngle,x
CODE_019E4D:
	REP.b #$20
	LDA.w #$0020
	BIT.w $129E
	BEQ.b CODE_019E61
	SEP.b #$20
	LDA.b FB2000_Level_Smiloid[$00].MaxTurnSpeed,x
	LSR
	CLC
	ADC.b FB2000_Level_Smiloid[$00].FacingAngle,x
	STA.b FB2000_Level_Smiloid[$00].FacingAngle,x
CODE_019E61:
	REP.b #$20
	LDA.w #$0010
	BIT.w $129E
	BEQ.b CODE_019E78
	SEP.b #$20
	LDA.b FB2000_Level_Smiloid[$00].MaxTurnSpeed,x
	LSR
	EOR.b #$FF
	INC
	CLC
	ADC.b FB2000_Level_Smiloid[$00].FacingAngle,x
	STA.b FB2000_Level_Smiloid[$00].FacingAngle,x
CODE_019E78:
	REP.b #$20
	LDA.w #$0800
	BIT.w $129E
	BEQ.b CODE_019EBA
	SEP.b #$20
	LDA.b FB2000_Level_Smiloid[$00].FacingAngle,x
	REP.b #$30
	AND.w #$00FF
	ASL
	TAY
	PHX
	JSL.l CODE_019901
	REP.b #$10
	PLX
	SEP.b #$20
	STZ.b $1B
	STZ.b $1E
	LDA.w $129B
	STA.b $1A
	BPL.b CODE_019EA4
	DEC.b $1B
CODE_019EA4:
	LDA.w $129D
	STA.b $1D
	BPL.b CODE_019EAD
	DEC.b $1E
CODE_019EAD:
	LDA.w $129A
	STA.b $1C
	LDA.w $129C
	STA.b $1F
	JSR.w CODE_019CC2
CODE_019EBA:
	REP.b #$30
	LDA.w #$0400
	BIT.w $129E
	BEQ.b CODE_019F0A
	SEP.b #$20
	LDA.b FB2000_Level_Smiloid[$00].FacingAngle,x
	REP.b #$30
	AND.w #$00FF
	ASL
	TAY
	PHX
	JSL.l CODE_019901
	REP.b #$10
	PLX
	SEP.b #$20
	STZ.b $1B
	STZ.b $1E
	REP.b #$20
	LDA.w $129A
	EOR.w #$FFFF
	INC
	SEP.b #$20
	XBA
	STA.b $1A
	BPL.b CODE_019EEF
	DEC.b $1B
CODE_019EEF:
	XBA
	STA.b $1C
	REP.b #$20
	LDA.w $129C
	EOR.w #$FFFF
	INC
	SEP.b #$20
	XBA
	STA.b $1D
	BPL.b CODE_019F04
	DEC.b $1E
CODE_019F04:
	XBA
	STA.b $1F
	JSR.w CODE_019CC2
CODE_019F0A:
	REP.b #$20
	LDA.w #$0080
	BIT.w $129E
	BEQ.b CODE_019F18
	JSL.l CODE_01A8DE
CODE_019F18:
	RTL

CODE_019F19:
	REP.b #$30
	PHA
	LDA.b $BE
	CMP.w #$0000
	BEQ.b CODE_019F34
	CMP.w #$00FF
	BEQ.b CODE_019F3A
	CMP.w #$FF00
	BEQ.b CODE_019F40
	CMP.w #$FFFF
	BEQ.b CODE_019F46
	PLA
	RTS

CODE_019F34:
	PLA
	JSL.l CODE_00899E
	RTS

CODE_019F3A:
	PLA
	JSL.l CODE_008AE6
	RTS

CODE_019F40:
	PLA
	JSL.l CODE_008C2E
	RTS

CODE_019F46:
	PLA
	JSL.l CODE_008D76
	RTS

CODE_019F4C:
	REP.b #$30
	PHA
	LDA.b $BE
	CMP.w #$0000
	BEQ.b CODE_019F67
	CMP.w #$00FF
	BEQ.b CODE_019F6D
	CMP.w #$FF00
	BEQ.b CODE_019F73
	CMP.w #$FFFF
	BEQ.b CODE_019F79
	PLA
	RTS

CODE_019F67:
	PLA
	JSL.l CODE_0089A7
	RTS

CODE_019F6D:
	PLA
	JSL.l CODE_008AEF
	RTS

CODE_019F73:
	PLA
	JSL.l CODE_008C37
	RTS

CODE_019F79:
	PLA
	JSL.l CODE_008D7F
	RTS

CODE_019F7F:
	REP.b #$30
	LDA.b $00,x
	BIT.w #$1000
	BNE.b CODE_019F8F
	LDA.b $2C,x
	BIT.w #$0200
	BEQ.b CODE_019F96
CODE_019F8F:
	LDA.w $034A
	LSR
	BCS.b CODE_019F96
	RTL

CODE_019F96:
	LDA.b $00,x
	BIT.w #$8000
	BNE.b CODE_019FA0
	BRL.w CODE_01A043

CODE_019FA0:
	LDA.w !RAM_FB2000_Level_MasterDeathTimerLo
	BNE.b CODE_019FA8
	BRL.w CODE_01A031

CODE_019FA8:
	REP.b #$30
	LDA.w #$0048
	CLC
	ADC.b $0D,x
	PHA
	LDY.w #$0038
	LDA.b $11,x
	LSR
	CLC
	ADC.b $11,x
	PHA
	LDA.w !RAM_FB2000_Level_MasterDeathTimerLo
	AND.w #$0007
	CMP.w #$0000
	BEQ.b CODE_01A02A
	CMP.w #$0001
	BEQ.b CODE_01A022
	CMP.w #$0002
	BEQ.b CODE_01A019
	CMP.w #$0003
	BEQ.b CODE_01A00F
	CMP.w #$0004
	BEQ.b CODE_01A008
	CMP.w #$0005
	BEQ.b CODE_01A000
	CMP.w #$0006
	BEQ.b CODE_019FF7
	PLA
	LSR
	LSR
	LSR
	PLX
	JSL.l CODE_008DE3
	REP.b #$20
	LDA.w #$0004
	JSL.l CODE_02C90B
	RTL

CODE_019FF7:
	PLA
	LSR
	LSR
	PLX
	JSL.l CODE_008D91
	RTL

CODE_01A000:
	PLA
	LSR
	PLX
	JSL.l CODE_008D3F
	RTL

CODE_01A008:
	PLA
	PLX
	JSL.l CODE_008C49
	RTL

CODE_01A00F:
	PLA
	LSR
	LSR
	LSR
	PLX
	JSL.l CODE_008BF7
	RTL

CODE_01A019:
	PLA
	LSR
	LSR
	PLX
	JSL.l CODE_008B01
	RTL

CODE_01A022:
	PLA
	LSR
	PLX
	JSL.l CODE_0089B9
	RTL

CODE_01A02A:
	PLA
	PLX
	JSL.l CODE_008E35
	RTL

CODE_01A031:
	LDA.w #$0048
	CLC
	ADC.b $0D,x
	PHA
	LDY.w #$0038
	LDA.b $11,x
	PLX
	JSL.l CODE_008E35
	RTL

CODE_01A043:
	REP.b #$30
	PHX
	LDA.w #$4000
	BIT.b $00,x
	BNE.b CODE_01A07B
	LDA.w #$0048
	CLC
	ADC.b $0D,x
	PHA
	LDA.w #$0038
	CLC
	ADC.b $11,x
	TAY
	LDA.b $0F,x
	STA.b $A7
	LDA.b $2C,x
	BIT.w #$0040
	BEQ.b CODE_01A074
	LDA.w $034A
	LSR
	BCC.b CODE_01A074
	LDA.b $A7
	LSR
	LSR
	ADC.b $A7
	STA.b $A7
CODE_01A074:
	LDA.b $A7
	PLX
	JSL.l CODE_008A39
CODE_01A07B:
	REP.b #$30
	PLX
	LDA.b $00,x
	STA.w $12A0
	LDA.b $2C,x
	STA.w $129E
	LDA.w #$0048
	CLC
	ADC.b $0D,x
	STA.w $12A4
	LDA.w #$0038
	STA.w $12A6
	LDA.b $0F,x
	STA.b $A7
	LDA.b $2E,x
	STA.b $BE
	SEP.b #$20
	LDA.b $15,x
	REP.b #$20
	AND.w #$00FF
	PHA
	LDA.w #DATA_0D8000
	PHA
	REP.b #$30
	LDA.w $129E
	BIT.w #$0040
	BEQ.b CODE_01A0C5
	LDA.w $034A
	LSR
	BCC.b CODE_01A0C5
	LDA.b $A7
	LSR
	LSR
	ADC.b $A7
	STA.b $A7
CODE_01A0C5:
	LDA.w $129E
	BIT.w #$0080
	BEQ.b CODE_01A104
	LDA.w $034A
	AND.w #$0003
	CMP.w #$0000
	BEQ.b CODE_01A0E2
	CMP.w #$0001
	BEQ.b CODE_01A0F3
	CMP.w #$0002
	BEQ.b CODE_01A0F5
CODE_01A0E2:
	LDA.b $A7
	LSR
	LSR
	PHA
	LDA.w $12A6
	CLC
	ADC.b $01,S
	STA.w $12A6
	PLA
	BRA.b CODE_01A104

CODE_01A0F3:
	BRA.b CODE_01A104

CODE_01A0F5:
	LDA.b $A7
	LSR
	LSR
	PHA
	LDA.w $12A6
	SEC
	SBC.b $01,S
	STA.w $12A6
	PLA
CODE_01A104:
	REP.b #$30
	LDA.w $129E
	BIT.w #$0001
	BNE.b CODE_01A13A
	BIT.w #$0002
	BNE.b CODE_01A158
	BIT.w #$0004
	BEQ.b CODE_01A11B
	BRL.w CODE_01A1AE

CODE_01A11B:
	LDY.w $12A6
	LDX.w $12A4
	LDA.w #$0020
	BIT.w $12A0
	BNE.b CODE_01A131
	LDA.b $A7
	JSR.w CODE_019F19
	BRL.w CODE_01A1CC

CODE_01A131:
	LDA.b $A7
	JSL.l CODE_008A42
	BRL.w CODE_01A1CC

CODE_01A13A:
	LDY.w $12A6
	LDX.w $12A4
	LDA.w #$0020
	BIT.w $12A0
	BNE.b CODE_01A150
	LDA.b $A7
	JSL.l CODE_00D1A8
	BRA.b CODE_01A1CC

CODE_01A150:
	LDA.b $A7
	JSL.l CODE_008A66
	BRA.b CODE_01A1CC

CODE_01A158:
	LDA.w #$0020
	BIT.w $12A0
	BNE.b CODE_01A17F
	LDA.w $12A6
	SEC
	SBC.b $A7
	TAY
	LDA.b $A7
	LDX.w $12A4
	JSR.w CODE_019F19
	REP.b #$30
	LDA.b $A7
	LDY.w $12A6
	LDX.w $12A4
	JSL.l CODE_00D3C5
	BRA.b CODE_01A1CC

CODE_01A17F:
	LDA.w $12A6
	SEC
	SBC.b $A7
	TAY
	LDA.b $A7
	LDX.w $12A4
	JSL.l CODE_008A42
	REP.b #$30
	LDA.w $12A4
	SEC
	SBC.b $A7
	TAX
	LDA.w $12A6
	SEC
	SBC.b $A7
	TAY
	LDA.b $A7
	PHA
	ASL
	PHA
	JSL.l CODE_0088B8
	REP.b #$30
	PLA
	PLA
	BRA.b CODE_01A1CC

CODE_01A1AE:
	LDY.w $12A6
	LDX.w $12A4
	LDA.w #$0020
	BIT.w $12A0
	BNE.b CODE_01A1C4
	LDA.b $A7
	JSL.l CODE_00D5A8
	BRA.b CODE_01A1CC

CODE_01A1C4:
	LDA.b $A7
	JSL.l CODE_008FAF
	BRA.b CODE_01A1CC

CODE_01A1CC:
	REP.b #$30
	LDA.w $129E
	BIT.w #$0008
	BNE.b CODE_01A202
	BIT.w #$0010
	BNE.b CODE_01A220
	BIT.w #$0020
	BEQ.b CODE_01A1E3
	BRL.w CODE_01A276

CODE_01A1E3:
	LDY.w $12A6
	LDX.w $12A4
	LDA.w #$0020
	BIT.w $12A0
	BNE.b CODE_01A1F9
	LDA.b $A7
	JSR.w CODE_019F4C
	BRL.w CODE_01A292

CODE_01A1F9:
	LDA.b $A7
	JSL.l CODE_008A4B
	BRL.w CODE_01A292

CODE_01A202:
	LDY.w $12A6
	LDX.w $12A4
	LDA.w #$0020
	BIT.w $12A0
	BNE.b CODE_01A218
	LDA.b $A7
	JSL.l CODE_00D250
	BRA.b CODE_01A292

CODE_01A218:
	LDA.b $A7
	JSL.l CODE_008A6F
	BRA.b CODE_01A292

CODE_01A220:
	REP.b #$30
	LDA.w #$0020
	BIT.w $12A0
	BNE.b CODE_01A249
	LDA.w $12A6
	CLC
	ADC.b $A7
	TAY
	LDA.b $A7
	LDX.w $12A4
	JSR.w CODE_019F4C
	REP.b #$30
	LDA.b $A7
	LDY.w $12A6
	LDX.w $12A4
	JSL.l CODE_00D450
	BRA.b CODE_01A292

CODE_01A249:
	REP.b #$30
	LDA.w $12A6
	CLC
	ADC.b $A7
	TAY
	LDA.b $A7
	LDX.w $12A4
	JSL.l CODE_008A4B
	REP.b #$30
	LDA.w $12A4
	SEC
	SBC.b $A7
	TAX
	LDY.w $12A6
	LDA.b $A7
	PHA
	ASL
	PHA
	JSL.l CODE_0088B8
	REP.b #$30
	PLA
	PLA
	BRA.b CODE_01A292

CODE_01A276:
	LDY.w $12A6
	LDX.w $12A4
	LDA.w #$0020
	BIT.w $12A0
	BNE.b CODE_01A28C
	LDA.b $A7
	JSL.l CODE_00D633
	BRA.b CODE_01A292

CODE_01A28C:
	LDA.b $A7
	JSL.l CODE_008FB8
CODE_01A292:
	REP.b #$20
	PLA
	PLA
	RTL

CODE_01A297:
	REP.b #$30
	LDX.w #!RAM_FB2000_Level_Smiloids_SpriteTableStart
CODE_01A29C:
	REP.b #$30
	LDA.b $00,x
	BIT.w #$0010
	BEQ.b CODE_01A2AA
	BIT.w #$0040
	BEQ.b CODE_01A2AD
CODE_01A2AA:
	BRL.w CODE_01A2DB

CODE_01A2AD:
	PHX
	LDA.b FB2000_Level_Smiloid[$00].YPosLo,x
	AND.w #$0F00
	XBA
	TAY
	LDA.b FB2000_Level_Smiloid[$00].XPosLo,x
	AND.w #$0F00
	XBA
	TAX
	REP.b #$30
	LDA.w #$0000
	PHX
	TYA
	XBA
	LSR
	LSR
	LSR
	CLC
	ADC.b $01,S
	ADC.b $01,S
	TAX
	PLA
	REP.b #$30
	TXY
	PLX
	LDA.w #$0020
	ORA.w $0415,y
	STA.w $0415,y
CODE_01A2DB:
	TXA
	CLC
	ADC.w #$0070
	TAX
	CPX.w #$129A
	BEQ.b CODE_01A2E9
	BRL.w CODE_01A29C

CODE_01A2E9:
	RTL

CODE_01A2EA:
	RTL

CODE_01A2EB:
	REP.b #$30
	LDA.b $00,x
	BIT.w #$0020
	BEQ.b CODE_01A33B
	BIT.w #$1000
	BNE.b CODE_01A33B
	LDA.b FB2000_Level_Smiloid[$00].ShieldTimerLo,x
	BNE.b CODE_01A33B
	LDA.b FB2000_Level_Smiloid[$00].HPLo,x
	CMP.w #$0002
	BCS.b CODE_01A33B
	LDA.b $00,x
	BIT.w #$0100
	BNE.b CODE_01A324
	LDA.w $0342
	BIT.w #$0002
	BEQ.b CODE_01A334
	LDA.b $3F,x
	CMP.w #$FFFF
	BEQ.b CODE_01A334
	TAY
	LDA.b $00,x
	BIT.w #$0100
	BEQ.b CODE_01A33B
	BRA.b CODE_01A334

CODE_01A324:
	LDA.b $3F,x
	CMP.w #$FFFF
	BEQ.b CODE_01A334
	TAY
	LDA.w $0000,y
	BIT.w #$0100
	BNE.b CODE_01A33B
CODE_01A334:
	LDA.w #$8000
	ORA.b $00,x
	STA.b $00,x
CODE_01A33B:
	RTS

CODE_01A33C:
	JSL.l CODE_01988B
	BCC.b CODE_01A343
	RTL

CODE_01A343:
	REP.b #$30
	PHA
	PHX
	LDA.b $08,S
	TAX
	PLA
	STA.b $0D,x
	ASL
	PHP
	ROR
	PLP
	ROR
	STA.b $A7
	PLA
	STA.b $0F,x
	TYA
	STA.b $11,x
	LDA.b $0D,x
	CLC
	ADC.b $0F,x
	TAY
	LDA.b $0D,x
	SEC
	SBC.b $0F,x
	TAX
	JSL.l CODE_00940E
	BCC.b CODE_01A398
	REP.b #$30
	LDA.b $04,S
	TAX
	SEP.b #$20
	LDA.b $0C,x
	SEC
	SBC.w $1F73
	CLC
	ADC.b #$80
	CLC
	ADC.b $A7
	EOR.b #$FF
	INC
	STA.b $15,x
	JSR.w CODE_01A2EB
	REP.b #$30
	LDA.w $0B8E
	STA.b $13,x
	PHX
	JSL.l CODE_00969A
	REP.b #$30
	PLA
	CLC
	RTL

CODE_01A398:
	SEC
	RTL

CODE_01A39A:
	REP.b #$30
	LDA.w $0342
	BIT.w #$0400
	BEQ.b CODE_01A3AB
	LDA.b $00,x
	BIT.w #$0100
	BNE.b CODE_01A3AC
CODE_01A3AB:
	RTL

CODE_01A3AC:
	INC.w $0354
	LDA.w $0352
	BEQ.b CODE_01A3AB
	LDA.w $0354
CODE_01A3B7:
	CMP.w $0356
	BEQ.b CODE_01A3C4
	SEC
	SBC.w $0356
	BCS.b CODE_01A3B7
	BRA.b CODE_01A3D5

CODE_01A3C4:
	LDA.w #$0A40
	ORA.b $2C,x
	STA.b $2C,x
	LDA.w #$0003
	CLC
	ADC.b $16,x
	STA.b $16,x
	BRA.b CODE_01A3F4

CODE_01A3D5:
	LDA.w $0354
CODE_01A3D8:
	CMP.w $035E
	BEQ.b CODE_01A3E5
	SEC
	SBC.w $035E
	BCS.b CODE_01A3D8
	BRA.b CODE_01A3F4

CODE_01A3E5:
	LDA.w #$0680
	ORA.b $2C,x
	STA.b $2C,x
	LDA.w #$0003
	CLC
	ADC.b $16,x
	STA.b $16,x
CODE_01A3F4:
	RTL

CODE_01A3F5:
	SEP.b #$20
	LDA.w !REGISTER_SoftwareLatchForHVCounter
	LDA.w !REGISTER_VCounter
	EOR.w !REGISTER_HCounter
	REP.b #$30
	STA.b $A7
CODE_01A404:
	INC.b $A7
	LDA.b $A7
	AND.w #$0003
	CMP.w #$0000
	BEQ.b CODE_01A41C
	CMP.w #$0001
	BEQ.b CODE_01A428
	CMP.w #$0002
	BEQ.b CODE_01A434
	BRA.b CODE_01A404

CODE_01A41C:
	LDA.w $0358
	BEQ.b CODE_01A404
	LDY.w #$0001
	LDA.w #$0002
	RTS

CODE_01A428:
	LDA.w $035A
	BEQ.b CODE_01A404
	LDY.w #$0001
	LDA.w #$0008
	RTS

CODE_01A434:
	LDA.w $035C
	BEQ.b CODE_01A404
	LDY.w #$0001
	LDA.w #$000F
	RTS

CODE_01A440:
	SEP.b #$20
	LDA.w !REGISTER_SoftwareLatchForHVCounter
	LDA.w !REGISTER_VCounter
	EOR.w !REGISTER_HCounter
	REP.b #$30
	STA.b $A7
CODE_01A44F:
	INC.b $A7
	LDA.b $A7
	AND.w #$0007
	CMP.w #$0000
	BEQ.b CODE_01A476
	CMP.w #$0001
	BEQ.b CODE_01A482
	CMP.w #$0002
	BEQ.b CODE_01A48E
	CMP.w #$0003
	BEQ.b CODE_01A49A
	CMP.w #$0004
	BEQ.b CODE_01A4AB
	CMP.w #$0005
	BEQ.b CODE_01A4B7
	BRA.b CODE_01A44F

CODE_01A476:
	LDA.w $0360
	BEQ.b CODE_01A44F
	LDY.w #$0064
	LDA.w #$0007
	RTS

CODE_01A482:
	LDA.w $0362
	BEQ.b CODE_01A44F
	LDY.w #$0064
	LDA.w #$0001
	RTS

CODE_01A48E:
	LDA.w $0364
	BEQ.b CODE_01A44F
	LDY.w #$0064
	LDA.w #$0006
	RTS

CODE_01A49A:
	LDA.w $0366
	BEQ.b CODE_01A44F
	LDA.w $034E
	BNE.b CODE_01A44F
	LDY.w #$0001
	LDA.w #$0005
	RTS

CODE_01A4AB:
	LDA.w $0368
	BEQ.b CODE_01A44F
	LDY.w #$0001
	LDA.w #$0010
	RTS

CODE_01A4B7:
	LDA.w $036A
	BEQ.b CODE_01A44F
	LDY.w #$0001
	LDA.w #$000C
	RTS

CODE_01A4C3:
	REP.b #$30
	LDA.w $0342
	BIT.w #$0400
	BEQ.b CODE_01A4EE
	LDA.b $00,x
	BIT.w #$0100
	BNE.b CODE_01A4D8
	STZ.w $034E
	RTL

CODE_01A4D8:
	LDA.b $3F,x
	CMP.w #!RAM_FB2000_Level_Smiloids_SpriteTableStart
	BEQ.b CODE_01A4EF
	LDA.w $12A2
	CMP.w #$0001
	BEQ.b CODE_01A4EE
	LDA.b $3F,x
	CMP.w #$0C0A
	BEQ.b CODE_01A4EF
CODE_01A4EE:
	RTL

CODE_01A4EF:
	LDA.w $0352
	BEQ.b CODE_01A513
	LDA.w #$0002
	ORA.w $0B9C
	STA.w $0B9C
	LDA.w #$0002
	ORA.w $0C0C
	STA.w $0C0C
	DEC.w $0352
	BNE.b CODE_01A513
	PHX
	JSL.l CODE_018CCD
	REP.b #$30
	PLX
CODE_01A513:
	REP.b #$30
	LDA.b $2C,x
	BIT.w #$0C00
	BEQ.b CODE_01A4EE
	PHX
	BIT.w #$0800
	BEQ.b CODE_01A527
	JSR.w CODE_01A3F5
	BRA.b CODE_01A52A

CODE_01A527:
	JSR.w CODE_01A440
CODE_01A52A:
	SEP.b #$30
	STA.w $12AA
	STY.w $12AC
	REP.b #$30
	PLX
	LDA.b $04,x
	AND.w #$0F00
	XBA
	STA.b $A7
	LDA.b $07,x
	AND.w #$0F00
	XBA
	ASL
	ASL
	ASL
	ASL
	ORA.b $A7
	SEP.b #$20
	STA.w $12AB
	LDY.w #$12AA
	JSL.l CODE_02A5D5
	RTL

CODE_01A556:
	REP.b #$20
	STZ.b $A9
	JSL.l CODE_00BAFC
	JSL.l CODE_01A297
	JSL.l CODE_01A6DF
	JSL.l CODE_029D27
	RTL

CODE_01A56B:
	REP.b #$30
	JSL.l CODE_029DCA
	JSL.l CODE_01A726
	JSL.l CODE_01A2EA
	JSL.l CODE_00C401
	REP.b #$20
	LDA.w $039F
	JSL.l CODE_00923B
	REP.b #$30
	LDX.b $A9
CODE_01A58A:
	REP.b #$30
	DEX
	DEX
	CPX.w #$FFFE
	BEQ.b CODE_01A5E0
	PHX
	LDA.w $12B1,x
	STA.b $AD
	LDY.w #$0000
	LDA.b ($AD),y
	AND.w #$000F
	REP.b #$30
	CMP.w #$0001
	BNE.b CODE_01A5B0
	LDX.b $AD
	JSL.l CODE_029518
	BRA.b CODE_01A5DB

CODE_01A5B0:
	REP.b #$30
	CMP.w #$0002
	BNE.b CODE_01A5BF
	LDX.b $AD
	JSL.l CODE_019F7F
	BRA.b CODE_01A5DB

CODE_01A5BF:
	REP.b #$30
	CMP.w #$0003
	BNE.b CODE_01A5CE
	LDX.b $AD
	JSL.l CODE_01A679
	BRA.b CODE_01A5DB

CODE_01A5CE:
	REP.b #$30
	CMP.w #$0004
	BNE.b CODE_01A5DB
	LDX.b $AD
	JSL.l CODE_02A7B9
CODE_01A5DB:
	REP.b #$30
	PLX
	BRA.b CODE_01A58A

CODE_01A5E0:
	REP.b #$20
	LDA.w $039F
	JSL.l CODE_00927C
	RTL

CODE_01A5EA:
	REP.b #$30
	TAY
	DEY
	LDX.b $AB
CODE_01A5F0:
	PHY
	STY.b $AD
	LDA.w $12B1,x
	PHX
	TAX
	LDA.b $00,x
	AND.w #$000F
	CMP.w #$0002
	BNE.b CODE_01A606
	LDA.b $13,x
	BRA.b CODE_01A619

CODE_01A606:
	CMP.w #$0003
	BNE.b CODE_01A60F
	LDA.b $15,x
	BRA.b CODE_01A619

CODE_01A60F:
	CMP.w #$0004
	BNE.b CODE_01A618
	LDA.b $0A,x
	BRA.b CODE_01A619

CODE_01A618:
	db $00							; Note: Intentional BRK
CODE_01A619:
	PLX
	STA.w $1333
	STZ.w $1331
	TXY
CODE_01A621:
	INY
	INY
	LDA.w $12B1,y
	PHX
	TAX
	LDA.b $00,x
	AND.w #$000F
	CMP.w #$0002
	BNE.b CODE_01A636
	LDA.b $13,x
	BRA.b CODE_01A649

CODE_01A636:
	CMP.w #$0003
	BNE.b CODE_01A63F
	LDA.b $15,x
	BRA.b CODE_01A649

CODE_01A63F:
	CMP.w #$0004
	BNE.b CODE_01A648
	LDA.b $0A,x
	BRA.b CODE_01A649

CODE_01A648:
	db $00							; Note: Intentional BRK
CODE_01A649:
	PLX
	CMP.w $1333
	BCS.b CODE_01A655
	STY.w $1331
	STA.w $1333
CODE_01A655:
	DEC.b $AD
	BNE.b CODE_01A621
	LDA.w $1331
	BEQ.b CODE_01A66F
	LDY.w $1331
	LDA.w $12B1,x
	PHA
	LDA.w $12B1,y
	STA.w $12B1,x
	PLA
	STA.w $12B1,y
CODE_01A66F:
	INX
	INX
	PLY
	DEY
	BEQ.b CODE_01A678
	BRL.w CODE_01A5F0

CODE_01A678:
	RTL

CODE_01A679:
	REP.b #$30
	PHX
	LDA.w #$0048
	CLC
	ADC.b $0F,x
	PHA
	LDA.w #$0038
	CLC
	ADC.b $13,x
	TAY
	LDA.b $11,x
	PLX
	JSL.l CODE_008A39
	REP.b #$30
	PLX
	LDA.w #$0048
	CLC
	ADC.b $0F,x
	PHA
	LDY.b $11,x
	LDA.b $0B,x
	PLX
	PHY
	LDY.w #$0038
	PHA
	PHX
	PHY
	LDA.b $07,S
	INC
	JSL.l CODE_008A5D
	REP.b #$30
	PLY
	PLX
	PLA
	CMP.w #$0000
	BEQ.b CODE_01A6C7
	CMP.w #$00FF
	BEQ.b CODE_01A6CD
	CMP.w #$FF00
	BEQ.b CODE_01A6D3
	CMP.w #$FFFF
	BEQ.b CODE_01A6D9
CODE_01A6C7:
	PLA
	JSL.l CODE_0089B9
	RTL

CODE_01A6CD:
	PLA
	JSL.l CODE_008B01
	RTL

CODE_01A6D3:
	PLA
	JSL.l CODE_008C49
	RTL

CODE_01A6D9:
	PLA
	JSL.l CODE_008D91
	RTL

CODE_01A6DF:
	REP.b #$30
	LDX.w #$1362
CODE_01A6E4:
	REP.b #$30
	LDA.b $00,x
	BIT.w #$0010
	BEQ.b CODE_01A71A
	PHX
	LDA.b $07,x
	AND.w #$FF00
	XBA
	TAY
	LDA.b $04,x
	AND.w #$FF00
	XBA
	TAX
	REP.b #$30
	LDA.w #$0000
	PHX
	TYA
	XBA
	LSR
	LSR
	LSR
	CLC
	ADC.b $01,S
	ADC.b $01,S
	TAX
	PLA
	REP.b #$30
	LDA.w #$0040
	ORA.w $0415,x
	STA.w $0415,x
	PLX
CODE_01A71A:
	TXA
	CLC
	ADC.w #$0017
	TAX
	CPX.w #$1C02
	BNE.b CODE_01A6E4
	RTL

CODE_01A726:
	RTL

CODE_01A727:
	JSL.l CODE_01988B
	BCS.b CODE_01A75B
	REP.b #$30
	PHA
	PHX
	LDA.b $08,S
	TAX
	PLA
	STA.b $0F,x
	PLA
	STA.b $11,x
	TYA
	STA.b $13,x
	LDA.w $0B8E
	STA.b $15,x
	LDA.b $0F,x
	CLC
	ADC.b $11,x
	TAY
	LDA.b $0F,x
	SEC
	SBC.b $11,x
	TAX
	JSL.l CODE_00940E
	BCC.b CODE_01A75B
	REP.b #$30
	LDA.b $04,S
	TAX
	CLC
	RTL

CODE_01A75B:
	SEC
	RTL

CODE_01A75D:
	REP.b #$30
	LDA.w #$0000
	STA.w $0229
	LDX.w #$1362
CODE_01A768:
	LDA.b $00,x
	BIT.w #$0010
	BNE.b CODE_01A772
	JMP.w CODE_01A8CD

CODE_01A772:
	LDA.b $04,x
	STA.b $10
	LDA.b $07,x
	STA.b $13
	SEP.b #$20
	LDA.b $0A,x
	REP.b #$20
	AND.w #$00FF
	ASL
	TAY
	PHX
	LDA.b $02,x
	TAX
	JSL.l CODE_019901
	REP.b #$30
	PLX
	LDA.w $129A
	ASL
	PHP
	ROR
	PLP
	ROR
	ADC.w $129A
	STA.w $129A
	LDA.w $129C
	ASL
	PHP
	ROR
	PLP
	ROR
	ADC.w $129C
	STA.w $129C
	SEP.b #$20
	LDA.b $06,x
	STA.b $12
	LDA.b $09,x
	STA.b $15
	STZ.b $1B
	STZ.b $1E
	LDA.w $129B
	STA.b $1A
	BPL.b CODE_01A7C3
	DEC.b $1B
CODE_01A7C3:
	LDA.w $129D
	STA.b $1D
	BPL.b CODE_01A7CC
	DEC.b $1E
CODE_01A7CC:
	LDA.w $129A
	STA.b $1C
	LDA.w $129C
	STA.b $1F
	REP.b #$30
	PHX
	LDA.b $0D,x
	STA.w $1C02
	JSL.l CODE_018533
	BCC.b CODE_01A7E7
	BRL.w CODE_01A870

CODE_01A7E7:
	REP.b #$30
	LDA.b $01,S
	TAX
	LDA.b $02,x
	TAX
	LDA.w $1C02
	JSL.l CODE_018788
	BCS.b CODE_01A839
	REP.b #$30
	LDA.w $1C02
	JSL.l CODE_01881B
	BCS.b CODE_01A81B
	REP.b #$30
	PLX
	LDA.b $20
	STA.b $04,x
	LDA.b $23
	STA.b $07,x
	SEP.b #$20
	LDA.b $22
	STA.b $06,x
	LDA.b $25
	STA.b $09,x
	BRL.w CODE_01A8CD

CODE_01A81B:
	REP.b #$30
	LDA.w #$0008
	ORA.b $00,x
	STA.b $00,x
	TXA
	PLX
	PHA
	LDY.b $02,x
	LDA.w #$4000
	ORA.w $0002,y
	STA.w $0002,y
	PLA
	STA.w $0045,y
	BRL.w CODE_01A8BD

CODE_01A839:
	REP.b #$30
	LDA.w #$1000
	BIT.b $00,x
	BNE.b CODE_01A849
	LDA.w #$0020
	ORA.b $00,x
	STA.b $00,x
CODE_01A849:
	TXY
	PLX
	LDA.b $02,x
	STA.w $003F,y
	PHY
	TAY
	LDA.w #$1000
	ORA.w $0002,y
	STA.w $0002,y
	PLA
	STA.w $0043,y
	CMP.w #!RAM_FB2000_Level_Smiloids_SpriteTableStart
	BCC.b CODE_01A869
	CMP.w #$122B
	BCC.b CODE_01A86D
CODE_01A869:
	JSL.l CODE_0095D4
CODE_01A86D:
	NOP
	BRA.b CODE_01A8BD

CODE_01A870:
	REP.b #$30
	PLX
	LDY.b $02,x
	LDA.w #$0400
	ORA.w $0002,y
	STA.w $0002,y
	SEP.b #$20
	LDA.b $27
	XBA
	LDA.b $26
	REP.b #$20
	STA.w $0041,y
	LDA.w $0000,y
	BIT.w #$0100
	BNE.b CODE_01A8BD
	PHX
	TYX
	LDA.w #$0008
	STA.w $0320
	JSL.l CODE_018DAA
	BCS.b CODE_01A8AB
	REP.b #$30
	LDA.w #$0001
	JSL.l CODE_02C90B
	BRA.b CODE_01A8BC

CODE_01A8AB:
	REP.b #$30
	TXY
	PLX
	PHX
	LDA.b $02,x
	TAX
	LDA.w #$4000
	ORA.b $02,x
	STA.b $02,x
	STY.b $45,x
CODE_01A8BC:
	PLX
CODE_01A8BD:
	LDA.w #$FFEF
	AND.b $00,x
	STA.b $00,x
	LDY.b $02,x
	LDA.w $0028,y
	DEC
	STA.w $0028,y
CODE_01A8CD:
	REP.b #$30
	TXA
	CLC
	ADC.w #$0017
	TAX
	CPX.w #$1C02
	BEQ.b CODE_01A8DD
	JMP.w CODE_01A768

CODE_01A8DD:
	RTL

CODE_01A8DE:
	REP.b #$30
	LDA.w #$0080
	BIT.b $00,x
	BEQ.b CODE_01A8E8
CODE_01A8E7:
	RTL

CODE_01A8E8:
	SEP.b #$20
	LDA.b $31,x
	AND.b #$07
	BEQ.b CODE_01A8E7
	REP.b #$20
	LDA.b $28,x
	CMP.b $2A,x
	BCC.b CODE_01A923
	PHX
	PHY
	LDX.w #$1362
	LDY.w #$0060
CODE_01A900:
	LDA.w #$0010
	BIT.b $00,x
	BEQ.b CODE_01A90D
	LDA.b $02,x
	CMP.b $03,S
	BEQ.b CODE_01A918
CODE_01A90D:
	TXA
	CLC
	ADC.w #$0017
	TAX
	DEY
	BNE.b CODE_01A900
	BRA.b CODE_01A91F

CODE_01A918:
	LDA.w #$FFEF
	AND.b $00,x
	STA.b $00,x
CODE_01A91F:
	PLY
	PLX
	DEC.b $28,x
CODE_01A923:
	INC.b $28,x
	LDA.w #$0080
	ORA.b $00,x
	STA.b $00,x
	BIT.w #$0100
	BNE.b CODE_01A938
	LDA.w #$0000
	JSL.l CODE_02C90B
CODE_01A938:
	LDA.b $26,x
	STA.b $24,x
	TXY
	REP.b #$30
	LDX.w #$1362
CODE_01A942:
	LDA.w #$0010
	BIT.b $00,x
	BNE.b CODE_01A966
	ORA.b $00,x
	STA.b $00,x
	STY.b $02,x
	LDA.w $0004,y
	STA.b $04,x
	LDA.w $0007,y
	STA.b $07,x
	LDA.w $002E,y
	STA.b $0B,x
	SEP.b #$20
	LDA.w $000C,y
	STA.b $0A,x
	RTL

CODE_01A966:
	REP.b #$30
	TXA
	CLC
	ADC.w #$0017
	TAX
	CPX.w #$1C02
	BNE.b CODE_01A942
	RTL

CODE_01A974:
	REP.b #$30
	LDY.w #$0060
	LDX.w #$1362
CODE_01A97C:
	LDA.w #$0003
	STA.b $00,x
	LDA.w #$000C
	STA.b $0D,x
	TXA
	CLC
	ADC.w #$0017
	TAX
	DEY
	BNE.b CODE_01A97C
	LDY.w #$0010
	LDX.w #!RAM_FB2000_Level_Smiloids_SpriteTableStart
CODE_01A995:
	STZ.b FB2000_Level_Smiloid[$00].ActiveShotsLo,x
	TXA
	CLC
	ADC.w #$0070
	TAX
	DEY
	BNE.b CODE_01A995
	RTL

CODE_01A9A1:
	REP.b #$30
	STZ.w !REGISTER_OAMAddressLo
	LDY.w #$0000
	LDX.w #$0080
	SEP.b #$20
CODE_01A9AE:
	LDA.b #$40
	STA.w !REGISTER_OAMDataWritePort
	STA.b [$B2],y
	INY
	LDA.b #$80
	STA.w !REGISTER_OAMDataWritePort
	STA.b [$B2],y
	INY
	LDA.b #$00
	STA.w !REGISTER_OAMDataWritePort
	STA.b [$B2],y
	INY
	LDA.b #$01
	STA.w !REGISTER_OAMDataWritePort
	STA.b [$B2],y
	INY
	DEX
	BNE.b CODE_01A9AE
	REP.b #$30
	LDX.w #$0010
	LDA.w #$5555
	SEP.b #$20
CODE_01A9DB:
	STA.w !REGISTER_OAMDataWritePort
	XBA
	STA.w !REGISTER_OAMDataWritePort
	XBA
	STA.b [$B2],y
	XBA
	INY
	STA.b [$B2],y
	XBA
	INY
	DEX
	BNE.b CODE_01A9DB
	RTL

CODE_01A9EF:
	SEP.b #$20
	STA.w !REGISTER_OAMSizeAndDataAreaDesignation
	XBA
	STA.w $1C07
	LDA.b #$80
	PHA
	LDA.w $1C07
	PHA
	REP.b #$30
	LDA.b $06,S
	JSL.l CODE_00936C
	REP.b #$20
	PLA
	RTL

CODE_01AA0B:
	REP.b #$30
	PHY
	PHA
	TYA
	AND.w #$007F
	ASL
	ASL
	TAY
	TXA
	CMP.b [$B2],y
	BEQ.b CODE_01AA22
	STA.b [$B2],y
	SEP.b #$20
	INC.w $1C09
CODE_01AA22:
	REP.b #$20
	INY
	INY
	PLA
	CMP.b [$B2],y
	BEQ.b CODE_01AA32
	STA.b [$B2],y
	SEP.b #$20
	INC.w $1C09
CODE_01AA32:
	REP.b #$20
	LDA.b $01,S
	AND.w #$007F
	TAX
	LSR
	LSR
	LSR
	ASL
	CLC
	ADC.w #$0200
	TAY
	TXA
	AND.w #$0007
	ASL
	TAX
	LDA.b $01,S
	BIT.w #$8000
	BEQ.b CODE_01AA60
	LDA.b [$B2],y
	BIT.w DATA_03D195,x
	BNE.b CODE_01AA76
	LDA.w DATA_03D195,x
	ORA.b [$B2],y
	STA.b [$B2],y
	BRA.b CODE_01AA71

CODE_01AA60:
	LDA.b [$B2],y
	BIT.w DATA_03D195,x
	BEQ.b CODE_01AA76
	LDA.w DATA_03D195,x
	EOR.w #$FFFF
	AND.b [$B2],y
	STA.b [$B2],y
CODE_01AA71:
	SEP.b #$20
	INC.w $1C0A
CODE_01AA76:
	REP.b #$20
	PLA
	BIT.w #$4000
	BEQ.b CODE_01AA8E
	LDA.b [$B2],y
	BIT.w DATA_03D1A5,x
	BNE.b CODE_01AAA4
	LDA.w DATA_03D1A5,x
	ORA.b [$B2],y
	STA.b [$B2],y
	BRA.b CODE_01AA9F

CODE_01AA8E:
	LDA.b [$B2],y
	BIT.w DATA_03D1A5,x
	BEQ.b CODE_01AAA4
	LDA.w DATA_03D1A5,x
	EOR.w #$FFFF
	AND.b [$B2],y
	STA.b [$B2],y
CODE_01AA9F:
	SEP.b #$20
	INC.w $1C0A
CODE_01AAA4:
	RTL

CODE_01AAA5:
	SEP.b #$20
	STZ.w $1C09
	STZ.w $1C0A
	RTL

CODE_01AAAE:
	SEP.b #$20
	LDA.w $1C09
	BEQ.b CODE_01AACC
	SEP.b #$20
	LDA.b #$7E
	PHA
	REP.b #$30
	LDA.w #$A285
	LDX.w #$0090
	LDY.w #$0000
	JSL.l CODE_00938C
	SEP.b #$20
	PLA
CODE_01AACC:
	SEP.b #$20
	LDA.w $1C0A
	BEQ.b CODE_01AAEA
	SEP.b #$20
	LDA.b #$7E
	PHA
	REP.b #$30
	LDA.w #$A485
	LDX.w #$0020
	LDY.w #$0100
	JSL.l CODE_00938C
	SEP.b #$20
	PLA
CODE_01AAEA:
	RTL

CODE_01AAEB:
	SEP.b #$10
	STX.b $DE
	STY.b $DF
	REP.b #$30
	LDA.w $0342
	BIT.w #$0400
	BEQ.b CODE_01AB00
	BIT.w #$0800
	BEQ.b CODE_01AB01
CODE_01AB00:
	RTS

CODE_01AB01:
	LDX.w #$072C
CODE_01AB04:
	LDA.b $00,x
	BIT.w #$0001
	BEQ.b CODE_01AB3B
	BIT.w #$0002
	BNE.b CODE_01AB3B
	LDA.b $06,x
	CMP.w #$0018
	BNE.b CODE_01AB3B
	SEP.b #$20
	LDA.b $03,x
	CMP.b $DE
	BNE.b CODE_01AB3B
	LDA.b $05,x
	CMP.b $DF
	BNE.b CODE_01AB3B
	PHX
	LDA.b $E0
	CLC
	ADC.b #$03
	TAX
	LDA.b $E2
	SEC
	SBC.b #$03
	TAY
	LDA.b #$02
	JSL.l CODE_008D3F
	REP.b #$30
	PLX
CODE_01AB3B:
	REP.b #$30
	TXA
	CLC
	ADC.w #$0014
	TAX
	CPX.w #$09AC
	BNE.b CODE_01AB04
	RTS

CODE_01AB49:
	SEP.b #$10
	STX.b $DE
	STY.b $DF
	REP.b #$30
	LDX.w #!RAM_FB2000_Level_Smiloids_SpriteTableStart
CODE_01AB54:
	LDA.b $00,x
	BIT.w #$0010
	BEQ.b CODE_01AB60
	BIT.w #$0040
	BEQ.b CODE_01AB63
CODE_01AB60:
	BRL.w CODE_01ABDE

CODE_01AB63:
	BIT.w #$0100
	BEQ.b CODE_01AB75
	LDA.w $0342
	BIT.w #$0400
	BEQ.b CODE_01AB75
	LDA.w $034E
	BEQ.b CODE_01ABDE
CODE_01AB75:
	SEP.b #$20
	LDA.b $05,x
	CMP.b $DE
	BNE.b CODE_01ABDE
	LDA.b $08,x
	CMP.b $DF
	BNE.b CODE_01ABDE
	REP.b #$30
	PHX
	LDA.b $00,x
	BIT.w #$0100
	BNE.b CODE_01AB93
	LDA.w $034A
	LSR
	BCC.b CODE_01ABDB
CODE_01AB93:
	LDA.b $2E,x
	PHA
	LDA.b $E0
	CLC
	ADC.w #$0003
	TAX
	LDA.b $E2
	SEC
	SBC.w #$0003
	TAY
	PLA
	CMP.w #$0000
	BEQ.b CODE_01ABB9
	CMP.w #$00FF
	BEQ.b CODE_01ABC2
	CMP.w #$FF00
	BEQ.b CODE_01ABCB
	CMP.w #$FFFF
	BEQ.b CODE_01ABD4
CODE_01ABB9:
	LDA.w #$0002
	JSL.l CODE_0089B9
	BRA.b CODE_01ABDB

CODE_01ABC2:
	LDA.w #$0002
	JSL.l CODE_008B01
	BRA.b CODE_01ABDB

CODE_01ABCB:
	LDA.w #$0002
	JSL.l CODE_008C49
	BRA.b CODE_01ABDB

CODE_01ABD4:
	LDA.w #$0002
	JSL.l CODE_008D91
CODE_01ABDB:
	REP.b #$30
	PLX
CODE_01ABDE:
	REP.b #$30
	TXA
	CLC
	ADC.w #$0070
	TAX
	CPX.w #$129A
	BEQ.b CODE_01ABEE
	BRL.w CODE_01AB54

CODE_01ABEE:
	RTS

CODE_01ABEF:
	SEP.b #$30
	LDA.b $8B
	LSR
	LDX.b #$07
	SEP.b #$30
	STA.w !REGISTER_Multiplicand
	STX.w !REGISTER_Multiplier
	NOP #3
	REP.b #$30
	LDA.w !REGISTER_ProductOrRemainderLo
	CLC
	ADC.w #$0038
	STA.b $E2
	REP.b #$10
	LDY.w #$0000
CODE_01AC11:
	REP.b #$10
	PHY
	SEP.b #$20
	LDA.b $8A
	LSR
	LDX.w #$0007
	SEP.b #$30
	STA.w !REGISTER_Multiplicand
	STX.w !REGISTER_Multiplier
	NOP #3
	REP.b #$30
	LDA.w !REGISTER_ProductOrRemainderLo
	STA.b $D2
	LDA.w #$0048
	SEC
	SBC.b $D2
	STA.b $E0
	REP.b #$10
	LDX.w #$0000
	PLY
CODE_01AC3C:
	REP.b #$30
	PHX
	PHY
	REP.b #$30
	LDA.w #$0000
	PHX
	TYA
	XBA
	LSR
	LSR
	LSR
	CLC
	ADC.b $01,S
	ADC.b $01,S
	TAX
	LDA.w $0415,x
	PLX
	REP.b #$30
	PLY
	PLX
	PHX
	PHY
	STA.b $CC
	LDA.w $0342
	BIT.w #$0008
	BEQ.b CODE_01AC74
	BIT.w #$0400
	BNE.b CODE_01AC74
	LDA.w #$0010
	BIT.b $CC
	BNE.b CODE_01AC74
	BRL.w CODE_01AD4D

CODE_01AC74:
	REP.b #$10
	PHX
	PHY
	REP.b #$30
	LDA.w $1F6D
	BIT.w #$0080
	BEQ.b CODE_01AC99
	LDA.w #$0007
	PHA
	PHA
	LDA.b $E0
	TAX
	LDA.b $E2
	SEC
	SBC.w #$0007
	TAY
	JSL.l CODE_0088E9
	REP.b #$20
	PLA
	PLA
CODE_01AC99:
	REP.b #$10
	PLY
	PLX
	PHX
	PHY
	JSR.w CODE_01AB49
	REP.b #$10
	PLY
	PLX
	JSR.w CODE_01AAEB
	SEP.b #$20
	LDA.b $CC
	BIT.b #$04
	BEQ.b CODE_01ACD4
	REP.b #$30
	LDA.b $E0
	TAX
	CLC
	ADC.w #$0007
	TAY
	LDA.b $E2
	SEC
	SBC.w #$0007
	PHA
	PHX
	PHY
	JSL.l CODE_00AD90
	REP.b #$30
	PLY
	PLX
	PLA
	DEY
	DEX
	DEC
	JSL.l CODE_00AC9C
CODE_01ACD4:
	SEP.b #$20
	LDA.b $CC
	BIT.b #$08
	BEQ.b CODE_01ACFB
	REP.b #$30
	LDA.b $E2
	TAY
	SEC
	SBC.w #$0007
	TAX
	LDA.b $E0
	PHA
	PHX
	PHY
	JSL.l CODE_00DACA
	REP.b #$30
	PLY
	PLX
	PLA
	DEY
	DEX
	DEC
	JSL.l CODE_00DA4A
CODE_01ACFB:
	SEP.b #$20
	LDA.b $CC
	BIT.b #$01
	BEQ.b CODE_01AD22
	REP.b #$30
	LDA.b $E0
	TAX
	CLC
	ADC.w #$0007
	TAY
	LDA.b $E2
	PHA
	PHX
	PHY
	JSL.l CODE_00AD90
	REP.b #$30
	PLY
	PLX
	PLA
	DEY
	DEX
	DEC
	JSL.l CODE_00AC9C
CODE_01AD22:
	SEP.b #$20
	LDA.b $CC
	BIT.b #$02
	BEQ.b CODE_01AD4D
	REP.b #$30
	LDA.b $E2
	TAY
	SEC
	SBC.w #$0007
	TAX
	LDA.b $E0
	CLC
	ADC.w #$0007
	PHA
	PHX
	PHY
	JSL.l CODE_00DACA
	REP.b #$30
	PLY
	PLX
	PLA
	DEY
	DEX
	DEC
	JSL.l CODE_00DA4A
CODE_01AD4D:
	REP.b #$30
	PLY
	PLX
	LDA.w #$0007
	CLC
	ADC.b $E0
	STA.b $E0
	INX
	SEP.b #$10
	CPX.b $8A
	REP.b #$10
	BCS.b CODE_01AD65
	JMP.w CODE_01AC3C

CODE_01AD65:
	LDA.b $E2
	SEC
	SBC.w #$0007
	STA.b $E2
	INY
	SEP.b #$10
	CPY.b $8B
	REP.b #$10
	BCS.b CODE_01AD79
	JMP.w CODE_01AC11

CODE_01AD79:
	REP.b #$20
	LDA.w $0342
	BIT.w #$0008
	BNE.b CODE_01AD93
	REP.b #$30
	LDA.w #$0615
	LDX.w #$0179
	LDY.w #$0004
	JSL.l CODE_009815
	RTL

CODE_01AD93:
	SEP.b #$20
	REP.b #$10
	LDX.w #$0007
CODE_01AD9A:
	LDA.w DATA_03D5A9,x
	STA.w $036C,x
	DEX
	BPL.b CODE_01AD9A
	LDX.w #$0373
	JSL.l CODE_028BFB
	REP.b #$30
	LDA.w #$036C
	LDX.w #$0019
	LDY.w #$0004
	JSL.l CODE_00CCE3
	REP.b #$30
	LDA.w #$03D2
	LDX.w #$0179
	LDY.w #$0003
	JSL.l CODE_009815
	RTL

CODE_01ADC9:
	SEP.b #$30
	LDA.w $1F73
	LSR
	LSR
	LSR
	LSR
	LSR
	PHA
	ASL
	ASL
	ASL
	TAX
	LDA.w DATA_03D5B1,x
	STA.b $CE
	LDA.w DATA_03D5B1+$01,x
	STA.b $CF
	LDA.w DATA_03D5B1+$02,x
	STA.b $D0
	LDA.w DATA_03D5B1+$03,x
	STA.b $D1
	LDA.w DATA_03D5B1+$04,x
	STA.b $DA
	LDA.w DATA_03D5B1+$05,x
	STA.b $DB
	LDA.w DATA_03D5B1+$06,x
	STA.b $DC
	LDA.w DATA_03D5B1+$07,x
	STA.b $DD
	PLA
	SEP.b #$20
	CMP.b #$00
	BNE.b CODE_01AE38
	LDA.w $1F73
	AND.b #$1F
	EOR.b #$FF
	INC
	CLC
	ADC.b #$40
	PHA
	LDA.w $1F6F
	REP.b #$20
	AND.w #$00FF
	EOR.w #$FFFF
	INC
	STA.b $E0
	SEP.b #$20
	LDA.w $1F71
	REP.b #$20
	AND.w #$00FF
	EOR.w #$FFFF
	INC
	CLC
	ADC.w #$0100
	STA.b $E2
	JMP.w CODE_01AFB2

CODE_01AE38:
	SEP.b #$20
	CMP.b #$01
	BNE.b CODE_01AE6F
	LDA.w $1F73
	AND.b #$1F
	EOR.b #$FF
	INC
	CLC
	ADC.b #$20
	PHA
	LDA.w $1F6F
	REP.b #$20
	AND.w #$00FF
	EOR.w #$FFFF
	INC
	CLC
	ADC.w #$0100
	STA.b $E0
	SEP.b #$20
	LDA.w $1F71
	REP.b #$20
	AND.w #$00FF
	EOR.w #$FFFF
	INC
	STA.b $E2
	JMP.w CODE_01AFB2

CODE_01AE6F:
	SEP.b #$20
	CMP.b #$02
	BNE.b CODE_01AEA2
	LDA.w $1F73
	AND.b #$1F
	EOR.b #$FF
	INC
	CLC
	ADC.b #$00
	PHA
	LDA.w $1F6F
	REP.b #$20
	AND.w #$00FF
	EOR.w #$FFFF
	INC
	STA.b $E0
	SEP.b #$20
	LDA.w $1F71
	REP.b #$20
	AND.w #$00FF
	EOR.w #$FFFF
	INC
	STA.b $E2
	JMP.w CODE_01AFB2

CODE_01AEA2:
	SEP.b #$20
	CMP.b #$03
	BNE.b CODE_01AEDD
	LDA.w $1F73
	AND.b #$1F
	CLC
	ADC.b #$20
	EOR.b #$FF
	INC
	PHA
	LDA.w $1F6F
	REP.b #$20
	AND.w #$00FF
	EOR.w #$FFFF
	INC
	CLC
	ADC.w #$0100
	STA.b $E0
	SEP.b #$20
	LDA.w $1F71
	REP.b #$20
	AND.w #$00FF
	EOR.w #$FFFF
	INC
	CLC
	ADC.w #$0100
	STA.b $E2
	JMP.w CODE_01AFB2

CODE_01AEDD:
	SEP.b #$20
	CMP.b #$04
	BNE.b CODE_01AF14
	LDA.w $1F73
	AND.b #$1F
	CLC
	ADC.b #$40
	EOR.b #$FF
	INC
	PHA
	LDA.w $1F6F
	REP.b #$20
	AND.w #$00FF
	EOR.w #$FFFF
	INC
	CLC
	ADC.w #$0100
	STA.b $E0
	SEP.b #$20
	LDA.w $1F71
	REP.b #$20
	AND.w #$00FF
	EOR.w #$FFFF
	INC
	STA.b $E2
	JMP.w CODE_01AFB2

CODE_01AF14:
	SEP.b #$20
	CMP.b #$05
	BNE.b CODE_01AF4B
	LDA.w $1F73
	AND.b #$1F
	EOR.b #$FF
	INC
	CLC
	ADC.b #$A0
	PHA
	LDA.w $1F6F
	REP.b #$20
	AND.w #$00FF
	EOR.w #$FFFF
	INC
	STA.b $E0
	SEP.b #$20
	LDA.w $1F71
	REP.b #$20
	AND.w #$00FF
	EOR.w #$FFFF
	INC
	CLC
	ADC.w #$0100
	STA.b $E2
	JMP.w CODE_01AFB2

CODE_01AF4B:
	SEP.b #$20
	CMP.b #$06
	BNE.b CODE_01AF86
	LDA.w $1F73
	AND.b #$1F
	EOR.b #$FF
	INC
	CLC
	ADC.b #$80
	PHA
	LDA.w $1F6F
	REP.b #$20
	AND.w #$00FF
	EOR.w #$FFFF
	INC
	CLC
	ADC.w #$0100
	STA.b $E0
	SEP.b #$20
	LDA.w $1F71
	REP.b #$20
	AND.w #$00FF
	EOR.w #$FFFF
	INC
	CLC
	ADC.w #$0100
	STA.b $E2
	JMP.w CODE_01AFB2

CODE_01AF86:
	SEP.b #$20
	LDA.w $1F73
	AND.b #$1F
	EOR.b #$FF
	INC
	CLC
	ADC.b #$60
	PHA
	LDA.w $1F6F
	REP.b #$20
	AND.w #$00FF
	EOR.w #$FFFF
	INC
	STA.b $E0
	SEP.b #$20
	LDA.w $1F71
	REP.b #$20
	AND.w #$00FF
	EOR.w #$FFFF
	INC
	STA.b $E2
CODE_01AFB2:
	SEP.b #$20
	PLA
	REP.b #$10
	LDX.b $E0
	LDY.b $E2
	JSL.l CODE_00BA5F
	REP.b #$10
	STX.b $E0
	STY.b $E2
	SEP.b #$30
	LDA.w $1F73
	BIT.b #$20
	BNE.b CODE_01AFF1
	AND.b #$1F
	EOR.b #$FF
	INC
	CLC
	ADC.b #$40
	REP.b #$30
	AND.w #$00FF
	ASL
	TAX
	LDA.w DATA_038B03,x
	STA.b $D6
	STA.b $D4
	LDA.w DATA_038D03,x
	STA.b $D8
	EOR.w #$FFFF
	INC
	STA.b $D2
	BRA.b CODE_01B014

CODE_01AFF1:
	SEP.b #$20
	AND.b #$1F
	EOR.b #$FF
	INC
	CLC
	ADC.b #$60
	REP.b #$30
	AND.w #$00FF
	ASL
	TAX
	LDA.w DATA_038B03,x
	STA.b $D6
	EOR.w #$FFFF
	INC
	STA.b $D4
	LDA.w DATA_038D03,x
	STA.b $D8
	STA.b $D2
CODE_01B014:
	JSL.l CODE_0093C7
	JSL.l CODE_01A556
	SEP.b #$20
	LDA.w $1F70
	STA.b $DE
	LDA.w $1F72
	STA.b $DF
	LDA.b #$00
	STA.b $CA
CODE_01B02C:
	SEP.b #$20
	LDA.b $CA
	BEQ.b CODE_01B066
	SEP.b #$20
	LDA.b $DE
	CMP.b $8A
	BCC.b CODE_01B03D
	JMP.w CODE_01B5D3

CODE_01B03D:
	LDA.b $DF
	CMP.b $8B
	BCC.b CODE_01B046
	JMP.w CODE_01B5D3

CODE_01B046:
	SEP.b #$20
	LDA.b $DE
	CLC
	ADC.b $D0
	STA.b $DE
	LDA.b $DF
	CLC
	ADC.b $D1
	STA.b $DF
	REP.b #$20
	LDA.b $E0
	CLC
	ADC.b $D6
	STA.b $E0
	LDA.b $E2
	CLC
	ADC.b $D8
	STA.b $E2
CODE_01B066:
	SEP.b #$20
	LDA.b $DE
	PHA
	LDA.b $DF
	PHA
	REP.b #$20
	LDA.b $E0
	PHA
	LDA.b $E2
	PHA
	SEP.b #$30
	LDA.b #$01
	STA.b $CB
	LDX.b #$04
CODE_01B07E:
	SEP.b #$20
	LDA.b $DE
	CMP.b $8A
	BCC.b CODE_01B089
	JMP.w CODE_01B2FF

CODE_01B089:
	LDA.b $DF
	CMP.b $8B
	BCC.b CODE_01B092
	JMP.w CODE_01B2FF

CODE_01B092:
	PHX
	SEP.b #$10
	PHX
	LDX.b $DE
	LDY.b $DF
	REP.b #$30
	LDA.w #$0000
	PHX
	TYA
	XBA
	LSR
	LSR
	LSR
	CLC
	ADC.b $01,S
	ADC.b $01,S
	TAX
	LDA.w $0415,x
	PLX
	REP.b #$20
	STA.b $CC
	SEP.b #$10
	PLX
	SEP.b #$20
	LSR.b $CB
	BCS.b CODE_01B137
	SEP.b #$20
	LDA.b $CC
	AND.b $DD
	BEQ.b CODE_01B137
	REP.b #$20
	LDA.b $CC
	LDX.b $DD
	REP.b #$30
	PHA
	TXA
	AND.w #$000F
	TAX
	PLA
	SEP.b #$30
	XBA
	CPX.b #$04
	BEQ.b CODE_01B0E8
	CPX.b #$01
	BEQ.b CODE_01B0E6
	CPX.b #$02
	BEQ.b CODE_01B0E4
	LSR
	LSR
CODE_01B0E4:
	LSR
	LSR
CODE_01B0E6:
	LSR
	LSR
CODE_01B0E8:
	REP.b #$20
	AND.w #$0003
	REP.b #$20
	STA.w $1F74
	LDA.b $E0
	SEC
	SBC.b $D2
	STA.b $8F
	CLC
	ADC.b $D6
	STA.b $93
	LDA.b $E2
	SEC
	SBC.b $D4
	STA.b $91
	CLC
	ADC.b $D8
	STA.b $95
	JSL.l CODE_00C4E9
	BCS.b CODE_01B137
	REP.b #$30
	LDX.b $A9
	INC.b $A9
	INC.b $A9
	STA.w $12B1,x
	JSL.l CODE_0093E5
	BCC.b CODE_01B137
	SEP.b #$20
	PLA
	REP.b #$20
	PLA
	STA.b $E2
	PLA
	STA.b $E0
	SEP.b #$20
	PLA
	STA.b $DF
	PLA
	STA.b $DE
	BRL.w CODE_01B5D3

CODE_01B137:
	SEP.b #$20
	LDA.b $CC
	AND.b $DB
	BEQ.b CODE_01B1AC
	REP.b #$20
	LDA.b $CC
	LDX.b $DB
	REP.b #$30
	PHA
	TXA
	AND.w #$000F
	TAX
	PLA
	SEP.b #$30
	XBA
	CPX.b #$04
	BEQ.b CODE_01B163
	CPX.b #$01
	BEQ.b CODE_01B161
	CPX.b #$02
	BEQ.b CODE_01B15F
	LSR
	LSR
CODE_01B15F:
	LSR
	LSR
CODE_01B161:
	LSR
	LSR
CODE_01B163:
	REP.b #$20
	AND.w #$0003
	REP.b #$20
	STA.w $1F74
	LDA.b $E0
	STA.b $8F
	SEC
	SBC.b $D2
	STA.b $93
	LDA.b $E2
	STA.b $91
	SEC
	SBC.b $D4
	STA.b $95
	JSL.l CODE_00C4E9
	BCS.b CODE_01B1AC
	REP.b #$30
	LDX.b $A9
	INC.b $A9
	INC.b $A9
	STA.w $12B1,x
	JSL.l CODE_0093E5
	BCC.b CODE_01B1AC
	SEP.b #$20
	PLA
	REP.b #$20
	PLA
	STA.b $E2
	PLA
	STA.b $E0
	SEP.b #$20
	PLA
	STA.b $DF
	PLA
	STA.b $DE
	BRL.w CODE_01B5D3

CODE_01B1AC:
	REP.b #$20
	LDA.b $A9
	STA.b $AB
	SEP.b #$20
	LDA.b $CC
	AND.b #$40
	BEQ.b CODE_01B208
	REP.b #$30
	LDX.w #$1362
CODE_01B1BF:
	LDA.b $00,x
	BIT.w #$0010
	BEQ.b CODE_01B1FB
	PHX
	LDA.b $0D,x
	STA.b $E4
	LDA.b $07,x
	SEP.b #$20
	XBA
	CMP.b $DF
	BNE.b CODE_01B1F8
	REP.b #$20
	XBA
	TAY
	LDA.b $04,x
	SEP.b #$20
	XBA
	CMP.b $DE
	BNE.b CODE_01B1F8
	REP.b #$20
	XBA
	TAX
	LDA.b $E4
	JSL.l CODE_01A727
	BCS.b CODE_01B1F8
	REP.b #$30
	LDX.b $A9
	INC.b $A9
	INC.b $A9
	STA.w $12B1,x
CODE_01B1F8:
	REP.b #$10
	PLX
CODE_01B1FB:
	REP.b #$30
	TXA
	CLC
	ADC.w #$0017
	TAX
	CPX.w #$1C02
	BNE.b CODE_01B1BF
CODE_01B208:
	SEP.b #$20
	LDA.b $CC
	AND.b #$80
	BEQ.b CODE_01B265
	REP.b #$30
	LDX.w #$072C
CODE_01B215:
	LDA.b $00,x
	BIT.w #$0001
	BEQ.b CODE_01B258
	LDA.b $06,x
	CMP.w #$0020
	BCS.b CODE_01B258
	PHX
	LDA.b $0E,x
	STA.b $E4
	LDA.b $04,x
	SEP.b #$20
	XBA
	CMP.b $DF
	BNE.b CODE_01B255
	REP.b #$20
	XBA
	TAY
	LDA.b $02,x
	SEP.b #$20
	XBA
	CMP.b $DE
	BNE.b CODE_01B255
	REP.b #$20
	XBA
	TAX
	LDA.b $E4
	JSL.l CODE_02A740
	BCS.b CODE_01B255
	REP.b #$30
	LDX.b $A9
	INC.b $A9
	INC.b $A9
	STA.w $12B1,x
CODE_01B255:
	REP.b #$10
	PLX
CODE_01B258:
	REP.b #$30
	TXA
	CLC
	ADC.w #$0014
	TAX
	CPX.w #$09AC
	BNE.b CODE_01B215
CODE_01B265:
	SEP.b #$20
	LDA.b $CC
	AND.b #$20
	BNE.b CODE_01B270
	BRL.w CODE_01B2C5

CODE_01B270:
	REP.b #$30
	LDX.w #!RAM_FB2000_Level_Smiloids_SpriteTableStart
CODE_01B275:
	LDA.b $00,x
	BIT.w #$0010
	BEQ.b CODE_01B281
	BIT.w #$0040
	BEQ.b CODE_01B284
CODE_01B281:
	BRL.w CODE_01B2B7

CODE_01B284:
	LDA.b $0A,x
	STA.b $E4
	PHX
	LDA.b FB2000_Level_Smiloid[$00].YPosLo,x
	TAY
	SEP.b #$20
	XBA
	CMP.b $DF
	BNE.b CODE_01B2B4
	REP.b #$20
	LDA.b FB2000_Level_Smiloid[$00].XPosLo,x
	TAX
	SEP.b #$20
	XBA
	CMP.b $DE
	BNE.b CODE_01B2B4
	REP.b #$20
	LDA.b $E4
	JSL.l CODE_01A33C
	BCS.b CODE_01B2B4
	REP.b #$30
	LDX.b $A9
	INC.b $A9
	INC.b $A9
	STA.w $12B1,x
CODE_01B2B4:
	REP.b #$30
	PLX
CODE_01B2B7:
	TXA
	CLC
	ADC.w #$0070
	TAX
	CPX.w #$129A
	BEQ.b CODE_01B2C5
	BRL.w CODE_01B275

CODE_01B2C5:
	REP.b #$20
	LDA.b $A9
	SEC
	SBC.b $AB
	LSR
	CMP.w #$0002
	BCC.b CODE_01B2D6
	JSL.l CODE_01A5EA
CODE_01B2D6:
	SEP.b #$30
	PLX
	DEX
	BEQ.b CODE_01B2FF
	SEP.b #$20
	LDA.b $DE
	CLC
	ADC.b $CE
	STA.b $DE
	LDA.b $DF
	CLC
	ADC.b $CF
	STA.b $DF
	REP.b #$20
	LDA.b $E0
	CLC
	ADC.b $D2
	STA.b $E0
	LDA.b $E2
	CLC
	ADC.b $D4
	STA.b $E2
	JMP.w CODE_01B07E

CODE_01B2FF:
	REP.b #$20
	PLA
	STA.b $E2
	PLA
	STA.b $E0
	SEP.b #$20
	PLA
	STA.b $DF
	PLA
	STA.b $DE
	SEP.b #$20
	LDA.b $DE
	PHA
	LDA.b $DF
	PHA
	REP.b #$20
	LDA.b $E0
	PHA
	LDA.b $E2
	PHA
	SEP.b #$20
	LDA.b $DE
	SEC
	SBC.b $CE
	STA.b $DE
	LDA.b $DF
	SEC
	SBC.b $CF
	STA.b $DF
	REP.b #$20
	LDA.b $E0
	SEC
	SBC.b $D2
	STA.b $E0
	LDA.b $E2
	SEC
	SBC.b $D4
	STA.b $E2
	LDX.b #$03
CODE_01B341:
	SEP.b #$20
	LDA.b $DE
	CMP.b $8A
	BCC.b CODE_01B34C
	JMP.w CODE_01B5B6

CODE_01B34C:
	LDA.b $DF
	CMP.b $8B
	BCC.b CODE_01B355
	JMP.w CODE_01B5B6

CODE_01B355:
	PHX
	SEP.b #$10
	PHX
	LDX.b $DE
	LDY.b $DF
	REP.b #$30
	LDA.w #$0000
	PHX
	TYA
	XBA
	LSR
	LSR
	LSR
	CLC
	ADC.b $01,S
	ADC.b $01,S
	TAX
	LDA.w $0415,x
	PLX
	REP.b #$20
	STA.b $CC
	SEP.b #$10
	PLX
	SEP.b #$30
	LDA.b $CC
	AND.b $DC
	BEQ.b CODE_01B3EE
	REP.b #$20
	LDA.b $CC
	LDX.b $DC
	REP.b #$30
	PHA
	TXA
	AND.w #$000F
	TAX
	PLA
	SEP.b #$30
	XBA
	CPX.b #$04
	BEQ.b CODE_01B3A5
	CPX.b #$01
	BEQ.b CODE_01B3A3
	CPX.b #$02
	BEQ.b CODE_01B3A1
	LSR
	LSR
CODE_01B3A1:
	LSR
	LSR
CODE_01B3A3:
	LSR
	LSR
CODE_01B3A5:
	REP.b #$20
	AND.w #$0003
	REP.b #$20
	STA.w $1F74
	LDA.b $E0
	STA.b $8F
	CLC
	ADC.b $D6
	STA.b $93
	LDA.b $E2
	STA.b $91
	CLC
	ADC.b $D8
	STA.b $95
	JSL.l CODE_00C4E9
	BCS.b CODE_01B3EE
	REP.b #$30
	LDX.b $A9
	INC.b $A9
	INC.b $A9
	STA.w $12B1,x
	JSL.l CODE_0093E5
	BCC.b CODE_01B3EE
	SEP.b #$20
	PLA
	REP.b #$20
	PLA
	STA.b $E2
	PLA
	STA.b $E0
	SEP.b #$20
	PLA
	STA.b $DF
	PLA
	STA.b $DE
	BRL.w CODE_01B5D3

CODE_01B3EE:
	SEP.b #$20
	LDA.b $CC
	AND.b $DB
	BEQ.b CODE_01B463
	REP.b #$20
	LDA.b $CC
	LDX.b $DB
	REP.b #$30
	PHA
	TXA
	AND.w #$000F
	TAX
	PLA
	SEP.b #$30
	XBA
	CPX.b #$04
	BEQ.b CODE_01B41A
	CPX.b #$01
	BEQ.b CODE_01B418
	CPX.b #$02
	BEQ.b CODE_01B416
	LSR
	LSR
CODE_01B416:
	LSR
	LSR
CODE_01B418:
	LSR
	LSR
CODE_01B41A:
	REP.b #$20
	AND.w #$0003
	REP.b #$20
	STA.w $1F74
	LDA.b $E0
	STA.b $8F
	SEC
	SBC.b $D2
	STA.b $93
	LDA.b $E2
	STA.b $91
	SEC
	SBC.b $D4
	STA.b $95
	JSL.l CODE_00C4E9
	BCS.b CODE_01B463
	REP.b #$30
	LDX.b $A9
	INC.b $A9
	INC.b $A9
	STA.w $12B1,x
	JSL.l CODE_0093E5
	BCC.b CODE_01B463
	SEP.b #$20
	PLA
	REP.b #$20
	PLA
	STA.b $E2
	PLA
	STA.b $E0
	SEP.b #$20
	PLA
	STA.b $DF
	PLA
	STA.b $DE
	BRL.w CODE_01B5D3

CODE_01B463:
	REP.b #$20
	LDA.b $A9
	STA.b $AB
	SEP.b #$20
	LDA.b $CC
	AND.b #$40
	BEQ.b CODE_01B4BF
	REP.b #$30
	LDX.w #$1362
CODE_01B476:
	LDA.b $00,x
	BIT.w #$0010
	BEQ.b CODE_01B4B2
	PHX
	LDA.b $0D,x
	STA.b $E4
	LDA.b $07,x
	SEP.b #$20
	XBA
	CMP.b $DF
	BNE.b CODE_01B4AF
	REP.b #$20
	XBA
	TAY
	LDA.b $04,x
	SEP.b #$20
	XBA
	CMP.b $DE
	BNE.b CODE_01B4AF
	REP.b #$20
	XBA
	TAX
	LDA.b $E4
	JSL.l CODE_01A727
	BCS.b CODE_01B4AF
	REP.b #$30
	LDX.b $A9
	INC.b $A9
	INC.b $A9
	STA.w $12B1,x
CODE_01B4AF:
	REP.b #$10
	PLX
CODE_01B4B2:
	REP.b #$30
	TXA
	CLC
	ADC.w #$0017
	TAX
	CPX.w #$1C02
	BNE.b CODE_01B476
CODE_01B4BF:
	SEP.b #$20
	LDA.b $CC
	AND.b #$80
	BEQ.b CODE_01B51C
	REP.b #$30
	LDX.w #$072C
CODE_01B4CC:
	LDA.b $00,x
	BIT.w #$0001
	BEQ.b CODE_01B50F
	LDA.b $06,x
	CMP.w #$0020
	BCS.b CODE_01B50F
	PHX
	LDA.b $0E,x
	STA.b $E4
	LDA.b $04,x
	SEP.b #$20
	XBA
	CMP.b $DF
	BNE.b CODE_01B50C
	REP.b #$20
	XBA
	TAY
	LDA.b $02,x
	SEP.b #$20
	XBA
	CMP.b $DE
	BNE.b CODE_01B50C
	REP.b #$20
	XBA
	TAX
	LDA.b $E4
	JSL.l CODE_02A740
	BCS.b CODE_01B50C
	REP.b #$30
	LDX.b $A9
	INC.b $A9
	INC.b $A9
	STA.w $12B1,x
CODE_01B50C:
	REP.b #$10
	PLX
CODE_01B50F:
	REP.b #$30
	TXA
	CLC
	ADC.w #$0014
	TAX
	CPX.w #$09AC
	BNE.b CODE_01B4CC
CODE_01B51C:
	SEP.b #$20
	LDA.b $CC
	AND.b #$20
	BNE.b CODE_01B527
	BRL.w CODE_01B57C

CODE_01B527:
	REP.b #$30
	LDX.w #!RAM_FB2000_Level_Smiloids_SpriteTableStart
CODE_01B52C:
	LDA.b $00,x
	BIT.w #$0010
	BEQ.b CODE_01B538
	BIT.w #$0040
	BEQ.b CODE_01B53B
CODE_01B538:
	BRL.w CODE_01B56E

CODE_01B53B:
	LDA.b $0A,x
	STA.b $E4
	PHX
	LDA.b $07,x
	TAY
	SEP.b #$20
	XBA
	CMP.b $DF
	BNE.b CODE_01B56B
	REP.b #$20
	LDA.b $04,x
	TAX
	SEP.b #$20
	XBA
	CMP.b $DE
	BNE.b CODE_01B56B
	REP.b #$20
	LDA.b $E4
	JSL.l CODE_01A33C
	BCS.b CODE_01B56B
	REP.b #$30
	LDX.b $A9
	INC.b $A9
	INC.b $A9
	STA.w $12B1,x
CODE_01B56B:
	REP.b #$30
	PLX
CODE_01B56E:
	TXA
	CLC
	ADC.w #$0070
	TAX
	CPX.w #$129A
	BEQ.b CODE_01B57C
	BRL.w CODE_01B52C

CODE_01B57C:
	REP.b #$20
	LDA.b $A9
	SEC
	SBC.b $AB
	LSR
	CMP.w #$0002
	BCC.b CODE_01B58D
	JSL.l CODE_01A5EA
CODE_01B58D:
	SEP.b #$30
	PLX
	DEX
	BEQ.b CODE_01B5B6
	SEP.b #$20
	LDA.b $DE
	SEC
	SBC.b $CE
	STA.b $DE
	LDA.b $DF
	SEC
	SBC.b $CF
	STA.b $DF
	REP.b #$20
	LDA.b $E0
	SEC
	SBC.b $D2
	STA.b $E0
	LDA.b $E2
	SEC
	SBC.b $D4
	STA.b $E2
	JMP.w CODE_01B341

CODE_01B5B6:
	REP.b #$20
	PLA
	STA.b $E2
	PLA
	STA.b $E0
	SEP.b #$20
	PLA
	STA.b $DF
	PLA
	STA.b $DE
	SEP.b #$20
	INC.b $CA
	LDA.b $CA
	CMP.b #$04
	BCS.b CODE_01B5D3
	JMP.w CODE_01B02C

CODE_01B5D3:
	JSL.l CODE_01A56B
	RTL

	%FREE_BYTES($01B5D8, 18984, $FF)
%BANK_END(<EndBank>)
endmacro

;#############################################################################################################
;#############################################################################################################

macro FB2000Bank02Macros(StartBank, EndBank)
%BANK_START(<StartBank>)

CODE_028000:
	SEP.b #$20
	LDA.b #$40
	STA.w HDMA[$00].Parameters
	LDA.b #!REGISTER_CGRAMAddress
	STA.w HDMA[$00].Destination
	LDA.b #$7E2000>>16
	STA.w HDMA[$00].SourceBank
	STA.w HDMA[$00].IndirectSourceBank
	REP.b #$20
	LDA.w #$7E2000
	STA.w HDMA[$00].SourceLo
	SEP.b #$20
	LDA.b #$01
	ORA.w $02FF
	STA.w $02FF
	SEP.b #$20
	LDA.b #$42
	STA.w HDMA[$01].Parameters
	LDA.b #!REGISTER_WriteToCGRAMPort
	STA.w HDMA[$01].Destination
	LDA.b #$7E20E7>>16
	STA.w HDMA[$01].SourceBank
	STA.w HDMA[$01].IndirectSourceBank
	REP.b #$20
	LDA.w #$7E20E7
	STA.w HDMA[$01].SourceLo
	SEP.b #$20
	LDA.b #$02
	ORA.w $02FF
	STA.w $02FF
	RTL

CODE_02804D:
	REP.b #$30
	LDA.w #$7E20EE
	STA.b $00
	SEP.b #$20
	LDA.b #$7E20EE>>16
	STA.b $02
	REP.b #$30
	LDY.w #$0000
CODE_02805F:
	LDA.w #$18C6
	STA.b [$00],y
	INY
	INY
	CPY.w #$01C0
	BNE.b CODE_02805F
	RTL

CODE_02806C:
	REP.b #$30
	STA.w $0200
	STX.w $0202
	STX.w $0204
	TYA
	ASL
	TAY
	LDA.w #$7E20EE
	STA.b $00
	SEP.b #$20
	LDA.b #$7E20EE>>16
	STA.b $02
	REP.b #$30
	LDX.w #$0000
CODE_02808A:
	PHX
	TXA
	BIT.w #$0020
	BEQ.b CODE_028099
	AND.w #$001F
	EOR.w #$001F
	BRA.b CODE_02809C

CODE_028099:
	AND.w #$001F
CODE_02809C:
	TAX
	LDA.w $0200
	AND.w #$01C0
	JSR.w CODE_02811E
	REP.b #$30
	STA.b [$00],y
	PLX
	DEC.w $0202
	BNE.b CODE_0280B7
	LDA.w $0204
	STA.w $0202
	INX
CODE_0280B7:
	INY
	INY
	CPY.w #$01C0
	BEQ.b CODE_0280C3
	CPX.w #$0040
	BNE.b CODE_02808A
CODE_0280C3:
	RTL

CODE_0280C4:
	REP.b #$30
	PHA
	TYA
	ASL
	TAY
	PLA
	ASL
	STA.w $0208
	BRA.b CODE_0280DC

CODE_0280D1:
	REP.b #$30
	LDY.w #$0000
	LDA.w #$01C0
	STA.w $0208
CODE_0280DC:
	LDA.w #$7E20EE
	STA.b $00
	SEP.b #$20
	LDA.b #$7E20EE>>16
	STA.b $02
	REP.b #$30
CODE_0280E9:
	PHX
	TYA
	CLC
	ADC.w $0206
	CPX.w #$0000
	BEQ.b CODE_0280F8
CODE_0280F4:
	LSR
	DEX
	BNE.b CODE_0280F4
CODE_0280F8:
	PHA
	BIT.w #$0020
	BEQ.b CODE_028106
	AND.w #$001F
	EOR.w #$001F
	BRA.b CODE_028109

CODE_028106:
	AND.w #$001F
CODE_028109:
	TAX
	PLA
	AND.w #$01C0
	JSR.w CODE_02811E
	REP.b #$30
	STA.b [$00],y
	PLX
	INY
	INY
	CPY.w $0208
	BNE.b CODE_0280E9
	RTL

CODE_02811E:
	REP.b #$30
	CMP.w #$0000
	BEQ.b CODE_02818C
	CMP.w #$0040
	BEQ.b CODE_028185
	CMP.w #$0080
	BEQ.b CODE_028180
	CMP.w #$00C0
	BEQ.b CODE_028175
	CMP.w #$0100
	BEQ.b CODE_02816C
	CMP.w #$0140
	BEQ.b CODE_02815C
	CMP.w #$0180
	BEQ.b CODE_028148
	CMP.w #$01C0
	BEQ.b CODE_028175
CODE_028148:
	TXA
	PHX
	ASL
	ASL
	ASL
	ASL
	ASL
	ORA.b $01,S
	STA.b $01,S
	ASL
	ASL
	ASL
	ASL
	ASL
	ORA.b $01,S
	PLX
	RTS

CODE_02815C:
	TXA
	ASL
	ASL
	ASL
	ASL
	ASL
	PHA
	ASL
	ASL
	ASL
	ASL
	ASL
	ORA.b $01,S
	PLX
	RTS

CODE_02816C:
	TXA
	PHX
	XBA
	ASL
	ASL
	ORA.b $01,S
	PLX
	RTS

CODE_028175:
	TXA
	PHX
	ASL
	ASL
	ASL
	ASL
	ASL
	ORA.b $01,S
	PLX
	RTS

CODE_028180:
	TXA
	XBA
	ASL
	ASL
	RTS

CODE_028185:
	TXA
	ASL
	ASL
	ASL
	ASL
	ASL
	RTS

CODE_02818C:
	TXA
	RTS

CODE_02818E:
	REP.b #$30
	PHA
	JSL.l CODE_0092E1
	REP.b #$30
	PLA
	ASL
	ASL
	ASL
	TAX
	SEP.b #$20
	LDA.b #$72
	STA.w !REGISTER_CGRAMAddress
	LDA.w DATA_03804A,x
	STA.w !REGISTER_WriteToCGRAMPort
	LDA.w DATA_03804A+$01,x
	STA.w !REGISTER_WriteToCGRAMPort
	INX
	INX
	LDA.b #$74
	STA.w !REGISTER_CGRAMAddress
	LDA.w DATA_03804A,x
	STA.w !REGISTER_WriteToCGRAMPort
	LDA.w DATA_03804A+$01,x
	STA.w !REGISTER_WriteToCGRAMPort
	INX
	INX
	LDA.b #$76
	STA.w !REGISTER_CGRAMAddress
	LDA.w DATA_03804A,x
	STA.w !REGISTER_WriteToCGRAMPort
	LDA.w DATA_03804A+$01,x
	STA.w !REGISTER_WriteToCGRAMPort
	RTS

CODE_0281D6:
	REP.b #$10
	PHX
	SEP.b #$20
	LDA.b #$80
	STA.w $1339
	STA.w !REGISTER_ScreenDisplayRegister
	JSL.l CODE_0092E1
	REP.b #$10
	PLX
	SEP.b #$20
	LDA.b #$80
	STA.w !REGISTER_VRAMAddressIncrementValue
	STX.w !REGISTER_VRAMAddressLo
	REP.b #$30
	LDY.w #$00E0
	LDX.w #$0008
CODE_0281FC:
	TXA
	AND.w #$03FF
	ORA.w #$1400
	STA.w !REGISTER_WriteToVRAMPortLo
	INX
	DEY
	BNE.b CODE_0281FC
	REP.b #$30
	LDA.w #$0007
	STA.b $00
	LDX.w #$0001
CODE_028214:
	LDY.w #$0020
CODE_028217:
	TXA
	AND.w #$03FF
	ORA.w #$1800
	STA.w !REGISTER_WriteToVRAMPortLo
	DEY
	BNE.b CODE_028217
	INX
	DEC.b $00
	BNE.b CODE_028214
	SEP.b #$20
	STZ.w $1339
	LDA.b #$0F
	AND.w $1336
	STA.w !REGISTER_ScreenDisplayRegister
	RTS

CODE_028237:
	REP.b #$30
CODE_028239:
	CMP.w #$000A
	BCC.b CODE_028244
	SEC
	SBC.w #$000A
	BRA.b CODE_028239

CODE_028244:
	PHA
	SEP.b #$20
	LDA.b #$80
	STA.w $1339
	STA.w !REGISTER_ScreenDisplayRegister
	REP.b #$20
	PLA
	PHA
	JSR.w CODE_02818E
	REP.b #$10
	PLX
	PHX
	SEP.b #$20
	LDA.w DATA_038022,x
	PHA
	REP.b #$20
	TXA
	ASL
	TAX
	LDA.w DATA_03800E,x
	LDX.w #$0040
	LDY.w #$0050
	JSL.l CODE_00937D
	JSL.l CODE_00CA17
	SEP.b #$20
	PLA
	REP.b #$30
	PLA
	ASL
	TAX
	LDA.w DATA_03802C,x
	PHA
	TXA
	LSR
	TAX
	SEP.b #$20
	LDA.w DATA_038040,x
	REP.b #$20
	AND.w #$00FF
	PHA
	PEA.w $7F0000
	PEA.w $7F0000>>16
	JSL.l CODE_0188AC
	REP.b #$20
	PLA
	PLA
	PLA
	PLA
	SEP.b #$20
	LDA.b #$80
	PHA
	LDA.b #$7F0000>>16
	PHA
	REP.b #$20
	LDA.w #$7F0000
	LDX.w #$1D00
	LDY.w #$0000
	JSL.l CODE_00936C
	JSL.l CODE_0092E1
	SEP.b #$20
	PLA
	PLA
	LDA.b #$1C
	STA.w !REGISTER_BG2AddressAndSize
	REP.b #$20
	LDA.w $12A2
	CMP.w #$0002
	BEQ.b CODE_0282D8
	REP.b #$10
	LDX.w #$1CE0
	JSR.w CODE_0281D6
	BRA.b CODE_0282E8

CODE_0282D8:
	REP.b #$10
	LDX.w #$1C00
	JSR.w CODE_0281D6
	REP.b #$10
	LDX.w #$1DC0
	JSR.w CODE_0281D6
CODE_0282E8:
	SEP.b #$20
	STZ.w $1339
	LDA.b #$0F
	AND.w $1336
	STA.w !REGISTER_ScreenDisplayRegister
	RTL

CODE_0282F6:
	SEP.b #$20
	LDA.w $020B
	BEQ.b CODE_028310
	LDA.w $020A
	CMP.b #$FF
	BEQ.b CODE_028310
	REP.b #$30
	LDX.w #$0005
	LDA.w #$0002
	JSL.l CODE_00888C
CODE_028310:
	SEP.b #$20
CODE_028312:
	LDA.w $020A
	BNE.b CODE_028312
	RTS

CODE_028318:
	SEP.b #$20
	LDA.w $020B
	CMP.b #$0F
	BEQ.b CODE_028334
	LDA.w $020A
	CMP.b #$01
	BEQ.b CODE_028334
	REP.b #$30
	LDX.w #$0005
	LDA.w #$0002
	JSL.l CODE_008871
CODE_028334:
	SEP.b #$20
CODE_028336:
	LDA.w $020A
	BNE.b CODE_028336
	RTS

CODE_02833C:
	SEP.b #$20
	LDA.w $1336
	BEQ.b CODE_028353
	LDA.w $1335
	CMP.b #$FF
	BEQ.b CODE_028353
	REP.b #$20
	LDA.w #$0002
	JSL.l CODE_00C91F
CODE_028353:
	SEP.b #$20
CODE_028355:
	LDA.w $1335
	BNE.b CODE_028355
	JSL.l CODE_00A199
	REP.b #$20
	LDA.w #$7C00
	STA.w $1F5B
	JSL.l CODE_00C8C3
	JSL.l CODE_009C39
	JSR.w CODE_028318
	JSL.l CODE_02D34F
	REP.b #$30
	LDA.w DATA_039594
	AND.w #$001F
	STA.w $0B77
	LDA.w DATA_039594
	AND.w #$03E0
	STA.w $0B79
	LDA.w DATA_039594
	AND.w #$7C00
	STA.w $0B7B
	LDA.w #$0004
	LDX.w #$0030
	LDY.w #$0010
	JSL.l CODE_00C8EA
	REP.b #$20
	LDA.w #$0002
	JSL.l CODE_00C933
	REP.b #$10
	LDX.w #$0000
CODE_0283AD:
	REP.b #$10
	PHX
	JSL.l CODE_00CA17
	JSL.l CODE_00CADA
	REP.b #$30
	PLX
	LDA.w DATA_0384BC,x
	BNE.b CODE_0283C3
	BRL.w CODE_02840C

CODE_0283C3:
	TAY
	INX
	INX
CODE_0283C6:
	LDA.w DATA_0384BC,x
	INX
	INX
	PHX
	PHY
	SEC
	SBC.w #$8000
	TAY
	LDA.w DATA_03820B&$FF8000,y
	INY
	INY
	ASL
	ASL
	ASL
	ASL
	ASL
	TAX
	LDA.w DATA_03820B&$FF8000,y
	PHA
	INY
	INY
	TYA
	CLC
	ADC.w #$8000
	PLY
	JSL.l CODE_00CCE3
	REP.b #$30
	PLY
	PLX
	DEY
	BNE.b CODE_0283C6
	PHX
	JSR.w CODE_0282F6
	REP.b #$30
	LDA.w #$0000
	LDX.w #$012C
	JSL.l CODE_009A75
	JSR.w CODE_028318
	REP.b #$30
	PLX
	BRA.b CODE_0283AD

CODE_02840C:
	REP.b #$30
	LDA.w #$0BEB
	LDX.w #$01E7
	LDY.w #$0002
	JSL.l CODE_00CCC9
	REP.b #$10
	SEP.b #$20
	LDA.w $0BD0
	REP.b #$20
	AND.w #$00FF
	TAY
	LDA.w $0BCE
	LDX.w #$036C
	JSL.l CODE_00CA52
	REP.b #$30
	LDA.w #$036C
	LDX.w #$01F2
	LDY.w #$8003
	JSL.l CODE_00983D
	REP.b #$20
	LDA.w $12A2
	CMP.w #$0001
	BEQ.b CODE_028480
	REP.b #$30
	LDA.w #$0C5B
	LDX.w #$0207
	LDY.w #$0002
	JSL.l CODE_00CCC9
	REP.b #$30
	SEP.b #$20
	LDA.w $0C40
	REP.b #$20
	AND.w #$00FF
	TAY
	LDA.w $0C3E
	LDX.w #$036C
	JSL.l CODE_00CA52
	REP.b #$30
	LDA.w #$036C
	LDX.w #$0212
	LDY.w #$8003
	JSL.l CODE_00983D
CODE_028480:
	JSR.w CODE_0282F6
	REP.b #$30
	LDA.w #$9080
	LDX.w #$0E10
	JSL.l CODE_009A75
	REP.b #$20
	LDA.w #$0002
	JSL.l CODE_00C91F
	SEP.b #$20
CODE_02849A:
	LDA.w $1335
	BNE.b CODE_02849A
	RTL

CODE_0284A0:
	RTL

CODE_0284A1:
	RTL

CODE_0284A2:
	RTL

CODE_0284A3:
	RTL

CODE_0284A4:
	REP.b #$30
	STA.b FB2000_Level_Smiloid[$00].IDLo,x
	PHX
	LDX.w #$0025
	SEP.b #$30
	STA.w !REGISTER_Multiplicand
	STX.w !REGISTER_Multiplier
	NOP #3
	REP.b #$30
	LDA.w !REGISTER_ProductOrRemainderLo
	CLC
	ADC.w #DATA_038708
	TAY
	PLX
	LDA.w #$8000
	STA.b $6C,x
	LDA.w #$FFFF
	STA.b $64,x
	LDA.w $0000,y
	STA.b FB2000_Level_Smiloid[$00].MaxHPLo,x
	STA.b FB2000_Level_Smiloid[$00].MaxHPRegenLo,x
	LDA.w $0008,y
	STA.b FB2000_Level_Smiloid[$00].MaxShotDelayLo,x
	LDA.w $000A,y
	STA.b $66,x
	LDA.w $000C,y
	STA.b $68,x
	LDA.w $000E,y
	STA.b $6A,x
	LDA.w $0012,y
	STA.b $2C,x
	LDA.w $0014,y
	STA.b $2E,x
	LDA.w $0010,y
	BEQ.b CODE_0284FD
	LDA.b $2C,x
	ORA.w #$0100
	STA.b $2C,x
CODE_0284FD:
	LDA.w $0018,y
	STA.b FB2000_Level_Smiloid[$00].MaxShotsLo,x
	LDA.w $0002,y
	STA.b $62,x
	LDA.w $0004,y
	SEP.b #$20
	STA.b FB2000_Level_Smiloid[$00].MaxTurnSpeed,x
	REP.b #$20
	LDA.w $0006,y
	SEP.b #$20
	STA.b $31,x
	REP.b #$20
	LDA.w $001A,y
	STA.b FB2000_Level_Smiloid[$00].Name,x
	LDA.w $001C,y
	STA.b FB2000_Level_Smiloid[$00].Name+$02,x
	LDA.w $001E,y
	STA.b FB2000_Level_Smiloid[$00].Name+$04,x
	LDA.w $0020,y
	STA.b FB2000_Level_Smiloid[$00].Name+$06,x
	LDA.w $0022,y
	STA.b FB2000_Level_Smiloid[$00].Name+$08,x
	SEP.b #$20
	LDA.b #$00
	STA.w FB2000_Level_Smiloid[$00].Name+$0A,y
	REP.b #$20
	RTL

CODE_02853C:
	REP.b #$30
	LDA.w $0BE5
	BNE.b CODE_028550
	LDA.w $12A2
	CMP.w #$0002
	BCC.b CODE_02856B
	LDA.w $0C55
	BEQ.b CODE_02856B
CODE_028550:
	LDX.w #!RAM_FB2000_Level_Smiloids_SpriteTableStart
CODE_028553:
	LDA.b $00,x
	BIT.w #$0100
	BEQ.b CODE_02855C
	STZ.b $39,x
CODE_02855C:
	TXA
	CLC
	ADC.w #$0070
	TAX
	CPX.w #$129A
	BCC.b CODE_028553
	LDA.w #$FFFF
	RTL

CODE_02856B:
	LDA.w #$0000
	RTL

CODE_02856F:
	REP.b #$30
	LDA.w !RAM_FB2000_Level_MasterDeathTimerLo
	BEQ.b CODE_028577
	RTL

CODE_028577:
	JSL.l CODE_02853C
	CMP.w #$FFFF
	BEQ.b CODE_0285B4
	LDY.w #$000D
	LDX.w #!RAM_FB2000_Level_Smiloids_SpriteTableStart
CODE_028586:
	LDA.b $00,x
	AND.w #$0110
	CMP.w #$0110
	BNE.b CODE_0285AB
	PHX
	PHY
	JSL.l CODE_0285B5
	PLY
	PLX
	LDA.b FB2000_Level_Smiloid[$00].IDLo,x
	CMP.w #!Define_FB2000_Smiloid_Scanner
	BEQ.b CODE_0285A4
	CMP.w #!Define_FB2000_Smiloid_IShoot
	BNE.b CODE_0285AB
CODE_0285A4:
	LDA.b $39,x
	AND.w #$F3FF
	STA.b $39,x
CODE_0285AB:
	TXA
	CLC
	ADC.w #$0070
	TAX
	DEY
	BNE.b CODE_028586
CODE_0285B4:
	RTL

CODE_0285B5:
	REP.b #$30
	LDA.b $6C,x
	CMP.w #$8000
	BNE.b CODE_0285C2
	LDA.b FB2000_Level_Smiloid[$00].FacingAngle,x
	STA.b $6C,x
CODE_0285C2:
	LDA.b $64,x
	CMP.w #$FFFF
	BEQ.b CODE_02861E
	PHX
	JSL.l CODE_028647
	PLX
	CMP.w #$FFFF
	BEQ.b CODE_02861E
	PHX
	JSL.l CODE_0288DB
	STA.w $031A
	PLX
	PHX
	JSL.l CODE_018AEC
	PLX
	CMP.w #$FFFF
	BEQ.b CODE_028642
	LDA.b FB2000_Level_Smiloid[$00].IDLo,x
	CMP.w #!Define_FB2000_Smiloid_Shark
	BNE.b CODE_028619
	REP.b #$30
	PHX
	PHY
	LDA.w FB2000_Level_Smiloid[$00].MaxHPRegenLo,y
	LDX.w #$0003
	REP.b #$20
	STA.w !REGISTER_DividendLo
	SEP.b #$10
	STX.w !REGISTER_Divisor
	NOP #7
	REP.b #$10
	LDA.w !REGISTER_QuotientLo
	REP.b #$30
	PLY
	PLX
	ASL
	CMP.w FB2000_Level_Smiloid[$00].HPLo,y
	BCC.b CODE_028642
CODE_028619:
	JSL.l CODE_028783
	RTL

CODE_02861E:
	PHX
	JSL.l CODE_0286AA
	PLX
	CMP.w #$FFFF
	BEQ.b CODE_028642
	PHX
	JSL.l CODE_0288DB
	STA.w $031A
	PLX
	PHX
	JSL.l CODE_018AEC
	PLX
	CMP.w #$FFFF
	BEQ.b CODE_028642
	JSL.l CODE_028783
	RTL

CODE_028642:
	JSL.l CODE_0286F2
	RTL

CODE_028647:
	REP.b #$30
	LDA.b $64,x
	PHX
	LDX.w #$0070
	SEP.b #$30
	STA.w !REGISTER_Multiplicand
	STX.w !REGISTER_Multiplier
	NOP #3
	REP.b #$30
	LDA.w !REGISTER_ProductOrRemainderLo
	CLC
	ADC.w #!RAM_FB2000_Level_Smiloids_SpriteTableStart
	TAY
	PLX
	LDA.w FB2000_Level_Smiloid[$00].StealthTimerLo,y
	BNE.b CODE_0286A6
	LDA.w $0000,y
	BIT.w #$0010
	BEQ.b CODE_0286A6
	BIT.w #$0100
	BNE.b CODE_0286A6
	BIT.w #$0040
	BNE.b CODE_0286A6
	LDA.b $6A,x
	CMP.w #$0005
	BNE.b CODE_028688
	LDA.w $0039,y
	BEQ.b CODE_0286A6
CODE_028688:
	PHX
	PHY
	LDA.w $0004,y
	SEC
	SBC.b $04,x
	PHA
	LDA.w $0007,y
	SEC
	SBC.b $07,x
	TAY
	PLX
	JSL.l CODE_00B920
	REP.b #$30
	PLY
	PLX
	CMP.b $66,x
	BCS.b CODE_0286A6
	RTL

CODE_0286A6:
	LDA.w #$FFFF
	RTL

CODE_0286AA:
	REP.b #$30
	LDA.b $66,x
	BEQ.b CODE_0286EC
	LDA.b $6A,x
	CMP.w #$0000
	BEQ.b CODE_0286EC
	LDA.w #$0000
	STA.b $64,x
	JSL.l CODE_028647
	PHA
	LDA.w #$0001
	STA.b $64,x
	JSL.l CODE_028647
	PLY
	CPY.w #$FFFF
	BEQ.b CODE_0286E1
	CMP.w #$FFFF
	BEQ.b CODE_0286DB
	PHY
	CMP.b $01,S
	PLY
	BCC.b CODE_0286E6
CODE_0286DB:
	LDA.w #$0000
	STA.b $64,x
	RTL

CODE_0286E1:
	CMP.w #$FFFF
	BEQ.b CODE_0286EC
CODE_0286E6:
	LDA.w #$0001
	STA.b $64,x
	RTL

CODE_0286EC:
	LDA.w #$FFFF
	STA.b $64,x
	RTL

CODE_0286F2:
	REP.b #$30
	LDA.b $68,x
	CMP.w #$0001
	BEQ.b CODE_028700
	CMP.w #$0006
	BNE.b CODE_028705
CODE_028700:
	STZ.b $39,x
	JMP.w CODE_028728

CODE_028705:
	LDA.b $6C,x
	AND.w #$00C0
	JSL.l CODE_0288A4
	CMP.w #$0001
	BEQ.b CODE_02871F
	CMP.w #$FFFF
	BNE.b CODE_028726
	LDA.w #$0200
	STA.b $39,x
	BRA.b CODE_028728

CODE_02871F:
	LDA.w #$0100
	STA.b $39,x
	BRA.b CODE_028728

CODE_028726:
	STZ.b $39,x
CODE_028728:
	JSL.l CODE_018B6D
	CMP.w #$0000
	BEQ.b CODE_028732
	RTL

CODE_028732:
	LDA.b $02,x
	AND.w #$0800
	BNE.b CODE_028740
	LDA.b $02,x
	AND.w #$0200
	BEQ.b CODE_028744
CODE_028740:
	JSL.l CODE_018C40
CODE_028744:
	LDA.b $39,x
	BNE.b CODE_02874C
	JSL.l CODE_018CB0
CODE_02874C:
	LDA.b $6A,x
	CMP.w #$0001
	BEQ.b CODE_028754
	RTL

CODE_028754:
	LDA.b FB2000_Level_Smiloid[$00].IDLo,x
	CMP.w #!Define_FB2000_Smiloid_IShoot
	BNE.b CODE_028771
	LDA.w #$0000
	SEP.b #$20
	LDA.b $0C,x
	REP.b #$20
	AND.w #$B1FC
	BEQ.b CODE_028782
	LDA.b $39,x
	ORA.w #$0080
	STA.b $39,x
	RTL

CODE_028771:
	LDA.b $6C,x
	SEP.b #$20
	CMP.b $0C,x
	REP.b #$20
	BNE.b CODE_028782
	LDA.b $39,x
	ORA.w #$0080
	STA.b $39,x
CODE_028782:
	RTL

CODE_028783:
	REP.b #$30
	STZ.b $39,x
	LDA.b $6A,x
	ASL
	PHX
	TAX
	LDA.l DATA_028793,x
	PLX
	PHA
	RTS

DATA_028793:
	dw CODE_0288A3-$01
	dw CODE_0288A3-$01
	dw CODE_0287A3-$01
	dw CODE_0287D5-$01
	dw CODE_02880C-$01
	dw CODE_0287D5-$01
	dw CODE_028876-$01
	dw CODE_028841-$01

CODE_0287A3:
	LDA.b FB2000_Level_Smiloid[$00].HPLo,x
	CMP.b $62,x
	LDA.b $39,x
	ORA.w #$0400
	LDA.w $031A
	JSL.l CODE_0288A4
	CMP.w #$FFFF
	BEQ.b CODE_0287CD
	CMP.w #$0001
	BEQ.b CODE_0287C5
	LDA.b $39,x
	ORA.w #$0080
	STA.b $39,x
	RTL

CODE_0287C5:
	LDA.b $39,x
	ORA.w #$0100
	STA.b $39,x
	RTL

CODE_0287CD:
	LDA.b $39,x
	ORA.w #$0200
	STA.b $39,x
	RTL

CODE_0287D5:
	LDA.w $031A
	JSL.l CODE_0288A4
	CMP.w #$0001
	BEQ.b CODE_0287FC
	CMP.w #$FFFF
	BEQ.b CODE_028804
	LDA.b FB2000_Level_Smiloid[$00].HPLo,x
	CMP.b $62,x
	BCS.b CODE_0287F4
	LDA.b $39,x
	ORA.w #$0480
	STA.b $39,x
	RTL

CODE_0287F4:
	LDA.b $39,x
	ORA.w #$0880
	STA.b $39,x
	RTL

CODE_0287FC:
	LDA.b $39,x
	ORA.w #$0900
	STA.b $39,x
	RTL

CODE_028804:
	LDA.b $39,x
	ORA.w #$0A00
	STA.b $39,x
	RTL

CODE_02880C:
	LDA.w $031A
	JSL.l CODE_0288A4
	CMP.w #$0001
	BEQ.b CODE_028829
	CMP.w #$FFFF
	BEQ.b CODE_028835
	LDA.b $39,x
	ORA.w #$0800
	STA.b $39,x
	JSL.l CODE_018BAC
	RTL

CODE_028829:
	LDA.b $39,x
	ORA.w #$0100
	STA.b $39,x
	JSL.l CODE_018BAC
	RTL

CODE_028835:
	LDA.b $39,x
	ORA.w #$0200
	STA.b $39,x
	JSL.l CODE_018BAC
	RTL

CODE_028841:
	LDA.w $031A
	JSL.l CODE_0288A4
	CMP.w #$0001
	BEQ.b CODE_02885E
	CMP.w #$FFFF
	BEQ.b CODE_02886A
	LDA.b $39,x
	ORA.w #$0880
	STA.b $39,x
	JSL.l CODE_018BAC
	RTL

CODE_02885E:
	LDA.b $39,x
	ORA.w #$0100
	STA.b $39,x
	JSL.l CODE_018BAC
	RTL

CODE_02886A:
	LDA.b $39,x
	ORA.w #$0200
	STA.b $39,x
	JSL.l CODE_018BAC
	RTL

CODE_028876:
	LDA.w $031A
	JSL.l CODE_0288A4
	CMP.w #$0001
	BEQ.b CODE_02888F
	CMP.w #$FFFF
	BEQ.b CODE_028899
	LDA.b $39,x
	ORA.w #$0880
	STA.b $39,x
	RTL

CODE_02888F:
	LDA.b $39,x
	ORA.w #$0100
	STA.b $39,x
	JMP.w CODE_028876

CODE_028899:
	LDA.b $39,x
	ORA.w #$0200
	STA.b $39,x
	JMP.w CODE_028876

CODE_0288A3:
	RTL

CODE_0288A4:
	REP.b #$30
	SEP.b #$20
	STA.w $031D
	SEC
	SBC.b FB2000_Level_Smiloid[$00].FacingAngle,x
	BEQ.b CODE_0288D2
	PHA
	BPL.b CODE_0288B6
	EOR.b #$FF
	INC
CODE_0288B6:
	DEC
	CMP.b FB2000_Level_Smiloid[$00].MaxTurnSpeed,x
	BCS.b CODE_0288C3
	LDA.w $031D
	STA.b FB2000_Level_Smiloid[$00].FacingAngle,x
	PLA
	BRA.b CODE_0288D2

CODE_0288C3:
	PLA
	BMI.b CODE_0288CC
	REP.b #$30
	LDA.w #$FFFF
	RTL

CODE_0288CC:
	REP.b #$30
	LDA.w #$0001
	RTL

CODE_0288D2:
	REP.b #$30
	LDA.w #$0000
	RTL

CODE_0288D8:
	REP.b #$30
	RTL

CODE_0288DB:
	REP.b #$30
	LDA.b $64,x
	PHX
	LDX.w #$0070
	SEP.b #$30
	STA.w !REGISTER_Multiplicand
	STX.w !REGISTER_Multiplier
	NOP #3
	REP.b #$30
	LDA.w !REGISTER_ProductOrRemainderLo
	CLC
	ADC.w #!RAM_FB2000_Level_Smiloids_SpriteTableStart
	TAY
	PLX
	LDA.w $0004,y
	SEC
	SBC.b $04,x
	PHA
	LDA.w $0007,y
	SEC
	SBC.b $07,x
	TAY
	PLX
	STX.w $0312
	TXA
	BPL.b CODE_028912
	EOR.w #$FFFF
	INC
CODE_028912:
	STA.w $0316
	STY.w $0314
	TYA
	BPL.b CODE_02891F
	EOR.w #$FFFF
	INC
CODE_02891F:
	STA.w $0318
	TXA
	CMP.w #$0000
	BMI.b CODE_02897C
	TYA
	CMP.w #$0000
	BMI.b CODE_02894C
	TXA
	CMP.w $0314
	BMI.b CODE_02893B
	JSL.l CODE_0289F1
	BRL.w CODE_0289F0

CODE_02893B:
	JSL.l CODE_028A57
	STA.w $030E
	LDA.w #$0040
	SEC
	SBC.w $030E
	BRL.w CODE_0289F0

CODE_02894C:
	TXA
	CMP.w $0318
	BEQ.b CODE_028952
CODE_028952:
	BCS.b CODE_028965
	TYA
	EOR.w #$FFFF
	INC
	TAY
	JSL.l CODE_028A57
	CLC
	ADC.w #$00C0
	BRL.w CODE_0289F0

CODE_028965:
	TYA
	EOR.w #$FFFF
	INC
	TAY
	JSL.l CODE_0289F1
	STA.w $030E
	LDA.w #$0100
	SEC
	SBC.w $030E
	BRL.w CODE_0289F0

CODE_02897C:
	TYA
	CMP.w #$0000
	BMI.b CODE_0289B4
	LDA.w $0316
	CMP.w $0314
	BEQ.b CODE_02898A
CODE_02898A:
	BCS.b CODE_02899D
	TXA
	EOR.w #$FFFF
	INC
	TAX
	JSL.l CODE_028A57
	CLC
	ADC.w #$0040
	BRL.w CODE_0289F0

CODE_02899D:
	TXA
	EOR.w #$FFFF
	INC
	TAX
	JSL.l CODE_0289F1
	STA.w $030E
	LDA.w #$0080
	SEC
	SBC.w $030E
	BRL.w CODE_0289F0

CODE_0289B4:
	LDA.w $0316
	CMP.w $0318
	BMI.b CODE_0289D3
	TYA
	EOR.w #$FFFF
	INC
	TAY
	TXA
	EOR.w #$FFFF
	INC
	TAX
	JSL.l CODE_0289F1
	CLC
	ADC.w #$0080
	BRL.w CODE_0289F0

CODE_0289D3:
	TYA
	EOR.w #$FFFF
	INC
	TAY
	TXA
	EOR.w #$FFFF
	INC
	TAX
	JSL.l CODE_028A57
	STA.w $030E
	LDA.w #$00C0
	SEC
	SBC.w $030E
	BRL.w CODE_0289F0

CODE_0289F0:
	RTL

CODE_0289F1:
	REP.b #$30
	LDA.w #$0000
	STA.w $0306
	LDA.w #$0020
	STA.w $0302
	LDA.w #$0000
	STA.w $030C
	STX.w $0308
	STY.w $030E
CODE_028A0B:
	LDA.w $0306
	CLC
	ADC.w $0302
	ASL
	PHP
	ROR
	PLP
	ROR
	STA.w $0304
	LDA.w $030C
	CLC
	ADC.w $0308
	ASL
	PHP
	ROR
	PLP
	ROR
	CMP.w $030E
	BEQ.b CODE_028A50
	CMP.w $0308
	BEQ.b CODE_028A50
	CMP.w $030C
	BEQ.b CODE_028A50
	CMP.w $030E
	BMI.b CODE_028A45
	STA.w $0308
	LDA.w $0304
	STA.w $0302
	BRA.b CODE_028A0B

CODE_028A45:
	STA.w $030C
	LDA.w $0304
	STA.w $0306
	BRA.b CODE_028A0B

CODE_028A50:
	LDY.w $030E
	LDA.w $0304
	RTL

CODE_028A57:
	REP.b #$30
	LDA.w #$0000
	STA.w $0306
	LDA.w #$0020
	STA.w $0302
	LDA.w #$0000
	STA.w $030C
	STY.w $0308
	STX.w $030E
CODE_028A71:
	LDA.w $0306
	CLC
	ADC.w $0302
	ASL
	PHP
	ROR
	PLP
	ROR
	STA.w $0304
	LDA.w $030C
	CLC
	ADC.w $0308
	ASL
	PHP
	ROR
	PLP
	ROR
	CMP.w $030E
	BEQ.b CODE_028AB6
	CMP.w $0308
	BEQ.b CODE_028AB6
	CMP.w $030C
	BEQ.b CODE_028AB6
	CMP.w $030E
	BMI.b CODE_028AAB
	STA.w $0308
	LDA.w $0304
	STA.w $0302
	BRA.b CODE_028A71

CODE_028AAB:
	STA.w $030C
	LDA.w $0304
	STA.w $0306
	BRA.b CODE_028A71

CODE_028AB6:
	LDX.w $030E
	LDA.w $0304
	RTL

CODE_028ABD:
	REP.b #$30
CODE_028ABF:
	LDX.w #$0002
	LDY.w #$000A
	JSL.l CODE_028ABD
	LDX.w #$000B
	LDY.w #$0003
	JSL.l CODE_028ABD
	LDX.w #$000C
	LDY.w #$FFFC
	JSL.l CODE_028ABD
	LDX.w #$0001
	LDY.w #$FFF7
	JSL.l CODE_028ABD
	LDX.w #$FFFF
	LDY.w #$FFFD
	JSL.l CODE_028ABD
	LDX.w #$FFF1
	LDY.w #$FFFF
	JSL.l CODE_028ABD
	LDX.w #$FFEF
	LDY.w #$0004
	JSL.l CODE_028ABD
	LDX.w #$FFFF
	LDY.w #$0007
	JSL.l CODE_028ABD
	BRL.w CODE_028ABF

CODE_028B12:
	STX.w $0312
	TXA
	BPL.b CODE_028B1C
	EOR.w #$FFFF
	INC
CODE_028B1C:
	STA.w $0316
	STY.w $0314
	TYA
	BPL.b CODE_028B29
	EOR.w #$FFFF
	INC
CODE_028B29:
	STA.w $0318
	TXA
	CMP.w #$0000
	BMI.b CODE_028B86
	TYA
	CMP.w #$0000
	BMI.b CODE_028B56
	TXA
	CMP.w $0314
	BMI.b CODE_028B45
	JSL.l CODE_0289F1
	BRL.w CODE_028BFA

CODE_028B45:
	JSL.l CODE_028A57
	STA.w $030E
	LDA.w #$0040
	SEC
	SBC.w $030E
	BRL.w CODE_028BFA

CODE_028B56:
	TXA
	CMP.w $0318
	BEQ.b CODE_028B5C
CODE_028B5C:
	BCS.b CODE_028B6F
	TYA
	EOR.w #$FFFF
	INC
	TAY
	JSL.l CODE_028A57
	CLC
	ADC.w #$00C0
	BRL.w CODE_028BFA

CODE_028B6F:
	TYA
	EOR.w #$FFFF
	INC
	TAY
	JSL.l CODE_0289F1
	STA.w $030E
	LDA.w #$0100
	SEC
	SBC.w $030E
	BRL.w CODE_028BFA

CODE_028B86:
	TYA
	CMP.w #$0000
	BMI.b CODE_028BBE
	LDA.w $0316
	CMP.w $0314
	BEQ.b CODE_028B94
CODE_028B94:
	BCS.b CODE_028BA7
	TXA
	EOR.w #$FFFF
	INC
	TAX
	JSL.l CODE_028A57
	CLC
	ADC.w #$0040
	BRL.w CODE_028BFA

CODE_028BA7:
	TXA
	EOR.w #$FFFF
	INC
	TAX
	JSL.l CODE_0289F1
	STA.w $030E
	LDA.w #$0080
	SEC
	SBC.w $030E
	BRL.w CODE_028BFA

CODE_028BBE:
	LDA.w $0316
	CMP.w $0318
	BMI.b CODE_028BDD
	TYA
	EOR.w #$FFFF
	INC
	TAY
	TXA
	EOR.w #$FFFF
	INC
	TAX
	JSL.l CODE_0289F1
	CLC
	ADC.w #$0080
	BRL.w CODE_028BFA

CODE_028BDD:
	TYA
	EOR.w #$FFFF
	INC
	TAY
	TXA
	EOR.w #$FFFF
	INC
	TAX
	JSL.l CODE_028A57
	STA.w $030E
	LDA.w #$00C0
	SEC
	SBC.w $030E
	BRL.w CODE_028BFA

CODE_028BFA:
	RTL

CODE_028BFB:
	REP.b #$30
	LDA.w $0342
	BIT.w #$0400
	BNE.b CODE_028C0F
	LDA.w $03CE
	SEC
	SBC.w #$0030
	INC
	BRA.b CODE_028C88

CODE_028C0F:
	LDA.w $03CE
	INC
	LDY.w #$0041
	CMP.w #$0006
	BEQ.b CODE_028C4B
	LDY.w #$0042
	CMP.w #$000C
	BEQ.b CODE_028C4B
	LDY.w #$0043
	CMP.w #$0012
	BEQ.b CODE_028C4B
	LDY.w #$0044
	CMP.w #$0018
	BEQ.b CODE_028C4B
	LDY.w #$0045
	CMP.w #$001E
	BEQ.b CODE_028C4B
	LDY.w #$0046
	CMP.w #$0024
	BEQ.b CODE_028C4B
	LDY.w #$0047
	CMP.w #$002A
	BNE.b CODE_028C5D
CODE_028C4B:
	SEP.b #$20
	TYA
	STA.b $00,x
	LDA.b #$20
	STA.b $01,x
	STA.b $02,x
	STA.b $03,x
	STA.b $04,x
	STZ.b $05,x
	RTL

CODE_028C5D:
	REP.b #$30
	PHX
	LDA.w $03CE
	LDX.w #$0006
	REP.b #$20
	STA.w !REGISTER_DividendLo
	SEP.b #$10
	STX.w !REGISTER_Divisor
	NOP #7
	REP.b #$10
	LDA.w !REGISTER_QuotientLo
	REP.b #$30
	PHA
	LDA.w $03CE
	INC
	SEC
	SBC.b $01,S
	PLX
	PLX
CODE_028C88:
	REP.b #$30
	LDY.w #$0000
	JSL.l CODE_00CA52
	RTL

CODE_028C92:
	REP.b #$30
	STX.w $0401
	STY.w $0403
	PHA
	LDA.w #$FFFF
CODE_028C9E:
	CLC
	ADC.w #$0001
	PHA
	LDY.w #$0000
	LDX.w #$036C
	JSL.l CODE_00CA52
	REP.b #$30
	LDA.w #$036C
	LDX.w $0401
	LDY.w $0403
	JSL.l CODE_00983D
	REP.b #$20
	LDA.w #$0008
	JSL.l CODE_02C90B
	REP.b #$30
	LDA.w #$0000
	LDX.w #$0008
	JSL.l CODE_009A75
	REP.b #$30
	PLA
	CMP.b $01,S
	BNE.b CODE_028C9E
	PLA
	LDX.w #$0064
	REP.b #$20
	PHA
	LDA.w #$0008
	ORA.w $1C93
	STA.w $1C93
	PLA
	SEP.b #$30
	STA.w !REGISTER_Mode7MatrixParameterA
	XBA
	STA.w !REGISTER_Mode7MatrixParameterA
	STX.w !REGISTER_Mode7MatrixParameterB
	REP.b #$20
	LDA.w !REGISTER_PPUMultiplicationProductLo
	LDX.w !REGISTER_PPUMultiplicationProductHi
	REP.b #$10
	PHA
	LDA.w #$FFF7
	AND.w $1C93
	STA.w $1C93
	PLA
	TAY
	LDA.b $03,S
	AND.w #$00FF
	TAX
	TYA
	REP.b #$20
	STA.w !REGISTER_DividendLo
	SEP.b #$10
	STX.w !REGISTER_Divisor
	NOP #7
	REP.b #$10
	LDA.w !REGISTER_QuotientLo
	LDY.w #$0000
	LDX.w #$036C
	JSL.l CODE_00CA52
	REP.b #$30
	LDA.b $03,S
	BEQ.b CODE_028D86
	LDX.w #$0000
	LDY.w #$0000
	SEP.b #$20
CODE_028D40:
	LDA.w $036C,x
	BEQ.b CODE_028D4D
	CMP.b #$20
	BEQ.b CODE_028D4D
	INY
	INX
	BRA.b CODE_028D40

CODE_028D4D:
	LDA.b #$25
	STA.w $036C,x
	INX
	LDA.b #$00
	STA.w $036C,x
CODE_028D58:
	CPY.w #$0003
	BCS.b CODE_028D71
	LDX.w #$0004
CODE_028D60:
	LDA.w $036C,x
	STA.w $036D,x
	LDA.b #$20
	STA.w $036C,x
	DEX
	BPL.b CODE_028D60
	INY
	BRA.b CODE_028D58

CODE_028D71:
	REP.b #$20
	LDA.w #$036C
	LDX.w $0401
	INX
	INX
	INX
	INX
	INX
	LDY.w $0403
	JSL.l CODE_00CCC9
	RTS

CODE_028D86:
	RTS

CODE_028D87:
	REP.b #$20
	LDA.w $0342
	BIT.w #$0008
	BEQ.b CODE_028D96
	BIT.w #$0400
	BNE.b CODE_028D97
CODE_028D96:
	RTL

CODE_028D97:
	REP.b #$20
	LDA.w #$0002
	JSL.l CODE_00C91F
	SEP.b #$20
CODE_028DA2:
	LDA.w $1335
	BNE.b CODE_028DA2
	JSL.l CODE_00A199
	REP.b #$20
	LDA.w #$7C00
	STA.w $1F5B
	JSL.l CODE_00C833
	JSL.l CODE_009C39
	JSL.l CODE_02804D
	JSL.l CODE_028000
	REP.b #$30
	LDA.w $1C91
	ASL
	ASL
	ASL
	ASL
	AND.w #$01C0
	PHA
	LDY.w #$0000
	LDX.w #$0001
	JSL.l CODE_02806C
	REP.b #$30
	PLA
	LDY.w #$00A0
	LDX.w #$0001
	JSL.l CODE_02806C
	REP.b #$20
	LDA.w #DATA_03996B
	JSL.l CODE_00CB69
	REP.b #$20
	LDA.w #$0001
	JSL.l CODE_00C933
	REP.b #$30
	LDA.w $03B3
	PHA
	LDA.w $03A7
	LDX.w #$016F
	LDY.w #$8001
	JSR.w CODE_028C92
	REP.b #$30
	PLA
	LDA.w #$0000
	LDX.w #$0010
	JSL.l CODE_009A75
	REP.b #$30
	LDA.w $03B5
	PHA
	LDA.w $03A9
	LDX.w #$018F
	LDY.w #$8002
	JSR.w CODE_028C92
	REP.b #$30
	PLA
	LDA.w #$0000
	LDX.w #$0010
	JSL.l CODE_009A75
	REP.b #$30
	LDA.w $03B7
	PHA
	LDA.w $03AB
	LDX.w #$01AF
	LDY.w #$8003
	JSR.w CODE_028C92
	REP.b #$30
	PLA
	LDA.w #$0000
	LDX.w #$0010
	JSL.l CODE_009A75
	REP.b #$30
	LDA.w $03B9
	PHA
	LDA.w $03AD
	LDX.w #$01EF
	LDY.w #$8001
	JSR.w CODE_028C92
	REP.b #$30
	PLA
	LDA.w #$0000
	LDX.w #$0010
	JSL.l CODE_009A75
	REP.b #$30
	LDA.w $03BB
	PHA
	LDA.w $03AF
	LDX.w #$020F
	LDY.w #$8002
	JSR.w CODE_028C92
	REP.b #$30
	PLA
	LDA.w #$0000
	LDX.w #$0010
	JSL.l CODE_009A75
CODE_028E94:
	JSL.l CODE_00CA17
	REP.b #$30
	LDX.w #$0003
	LDY.w #$0041
	LDA.w #$009F
	JSL.l CODE_0280C4
	REP.b #$30
	LDA.w $1C91
	ASL
	ASL
	ASL
	ASL
	AND.w #$01C0
	PHA
	LDY.w #$0000
	LDX.w #$0001
	JSL.l CODE_02806C
	REP.b #$30
	PLA
	LDY.w #$00A0
	LDX.w #$0001
	JSL.l CODE_02806C
	JSL.l CODE_00B8F9
	REP.b #$20
	LDA.w $03C6
	BNE.b CODE_028EDB
	LDA.w $03C8
	BEQ.b CODE_028E94
CODE_028EDB:
	REP.b #$20
	LDA.w #$0002
	JSL.l CODE_00C91F
	SEP.b #$20
CODE_028EE6:
	LDA.w $1335
	BNE.b CODE_028EE6
	RTL

CODE_028EEC:
	REP.b #$30
	LDA.w $03CE
	AND.w #$00FF
	SEP.b #$20
	STA.w $0B87
	REP.b #$20
	LDA.b $37,x
	AND.w #$00FF
	SEP.b #$20
	STA.w $0B88
	REP.b #$20
	LDA.b $49,x
	AND.w #$00FF
	SEP.b #$20
	STA.w $0B89
	SEP.b #$20
	LDA.b $31,x
	AND.b #$0F
	STA.w $0B8A
	REP.b #$20
	LDA.b $2A,x
	AND.w #$000F
	SEP.b #$20
	ORA.w $0B8A
	STA.w $0B8A
	JSL.l CODE_02AAB6
	RTL

CODE_028F2E:
	SEP.b #$20
CODE_028F30:
	LDA.w $1335
	BNE.b CODE_028F30
	REP.b #$20
	LDA.w #$0002
	JSL.l CODE_00C91F
	SEP.b #$20
CODE_028F40:
	LDA.w $1335
	BNE.b CODE_028F40
	JSL.l CODE_00A199
	REP.b #$20
	STZ.w $03A5
	STZ.w $03A7
	STZ.w $03A9
	STZ.w $03AB
	STZ.w $03AD
	STZ.w $03AF
	LDA.w #$7C00
	STA.w $1F5B
	JSL.l CODE_00C833
	JSL.l CODE_009C39
	JSL.l CODE_02804D
	REP.b #$30
	LDA.w #$0000
	LDY.w #$0028
	LDX.w #$0002
	JSL.l CODE_02806C
	JSL.l CODE_028000
	SEP.b #$20
	STZ.w !REGISTER_BG1VertScrollOffset
	STZ.w !REGISTER_BG1VertScrollOffset
	STZ.w !REGISTER_BG1HorizScrollOffset
	STZ.w !REGISTER_BG1HorizScrollOffset
	REP.b #$20
	LDA.w $0342
	BIT.w #$0400
	BEQ.b CODE_028FDB
	LDA.w #DATA_0399CA
	JSL.l CODE_00CB69
	REP.b #$30
	LDA.w $03CE
	LDX.w #$0006
	REP.b #$20
	STA.w !REGISTER_DividendLo
	SEP.b #$10
	STX.w !REGISTER_Divisor
	NOP #7
	REP.b #$10
	LDA.w !REGISTER_QuotientLo
	REP.b #$20
	INC
	LDX.w #$036C
	LDY.w #$0000
	JSL.l CODE_00CA52
	REP.b #$30
	LDA.w #$036C
	LDX.w #$00F4
	LDY.w #$8003
	JSL.l CODE_00CCC9
CODE_028FDB:
	REP.b #$20
	LDA.w $0342
	BIT.w #$0800
	BEQ.b CODE_028FEE
	LDA.w #DATA_0399D5
	JSL.l CODE_00CB69
	BRA.b CODE_02900F

CODE_028FEE:
	REP.b #$20
	LDA.w #DATA_039A0E
	JSL.l CODE_00CB69
	REP.b #$10
	LDX.w #$036C
	JSL.l CODE_028BFB
	REP.b #$30
	LDA.w #$036C
	LDX.w #$0194
	LDY.w #$8004
	JSL.l CODE_00CCC9
CODE_02900F:
	REP.b #$30
	LDA.w #$03D2
	LDX.w #$0200
	LDY.w #$0003
	JSL.l CODE_00CCE3
	REP.b #$20
	LDA.w #$0002
	JSL.l CODE_00C933
	SEP.b #$20
CODE_029029:
	LDA.w $1335
	BNE.b CODE_029029
	REP.b #$30
	LDA.w #$9080
	LDX.w #$00F0
	JSL.l CODE_009A75
	RTL

CODE_02903B:
	REP.b #$30
	LDA.w #$0BEB
	LDX.w #$01E7
	LDY.w #$0002
	JSL.l CODE_00CCC9
	REP.b #$10
	SEP.b #$20
	LDA.w $0BD0
	REP.b #$20
	AND.w #$00FF
	TAY
	LDA.w $0BCE
	LDX.w #$036C
	JSL.l CODE_00CA52
	REP.b #$30
	LDA.w #$036C
	LDX.w #$01F2
	LDY.w #$8003
	JSL.l CODE_00983D
	REP.b #$20
	LDA.w $12A2
	CMP.w #$0001
	BEQ.b CODE_0290AF
	REP.b #$30
	LDA.w #$0C5B
	LDX.w #$0207
	LDY.w #$0002
	JSL.l CODE_00CCC9
	REP.b #$30
	SEP.b #$20
	LDA.w $0C40
	REP.b #$20
	AND.w #$00FF
	TAY
	LDA.w $0C3E
	LDX.w #$036C
	JSL.l CODE_00CA52
	REP.b #$30
	LDA.w #$036C
	LDX.w #$0212
	LDY.w #$8003
	JSL.l CODE_00983D
CODE_0290AF:
	RTS

CODE_0290B0:
	JSL.l CODE_028000
	REP.b #$30
	LDX.w #$00B4
CODE_0290B9:
	PHX
	LDX.w #$0003
	JSL.l CODE_0280D1
	JSL.l CODE_00B8F9
	REP.b #$30
	PLX
	LDA.w $03C6
	BNE.b CODE_0290DD
	LDA.w $03C8
	BNE.b CODE_0290DD
	LDA.w $1C91
CODE_0290D5:
	CMP.w $1C91
	BEQ.b CODE_0290D5
	DEX
	BNE.b CODE_0290B9
CODE_0290DD:
	RTS

CODE_0290DE:
	REP.b #$20
	STZ.w $03FD
	LDA.w $03FB
	BNE.b CODE_0290E9
	RTS

CODE_0290E9:
	REP.b #$20
	LDA.w #DATA_039A4B
	JSL.l CODE_00CB69
	JSL.l CODE_028000
CODE_0290F6:
	REP.b #$10
	LDX.w #$0003
	JSL.l CODE_0280D1
	REP.b #$30
	LDA.w #$0001
	LDX.w #!RAM_FB2000_Level_Smiloids_SpriteTableStart
	JSL.l CODE_0199B5
	REP.b #$30
	LDA.w $12A2
	CMP.w #$0001
	BEQ.b CODE_02911F
	LDA.w #$0001
	LDX.w #$0C0A
	JSL.l CODE_0199B5
CODE_02911F:
	REP.b #$30
	DEC.w $03FB
	LDA.w $03FB
	CMP.w #$000A
	BCC.b CODE_029131
	AND.w #$000F
	BNE.b CODE_02915C
CODE_029131:
	REP.b #$30
	LDA.w $03FB
	LDY.w #$0000
	LDX.w #$036C
	JSL.l CODE_00CA52
	REP.b #$30
	LDA.w #$036C
	LDX.w #$0255
	LDY.w #$8004
	JSL.l CODE_00983D
	JSR.w CODE_02903B
	REP.b #$30
	LDA.w $1C91
CODE_029157:
	CMP.w $1C91
	BEQ.b CODE_029157
CODE_02915C:
	LDA.w $03FB
	BNE.b CODE_0290F6
	RTS

CODE_029162:
	JSL.l CODE_02C8FF
	JSL.l CODE_02C8C6
	REP.b #$20
	LDA.w #$0002
	JSL.l CODE_00C91F
	SEP.b #$20
CODE_029175:
	LDA.w $1335
	BNE.b CODE_029175
	JSL.l CODE_00A199
	REP.b #$20
	LDA.w #$7C00
	STA.w $1F5B
	JSL.l CODE_00C833
	JSL.l CODE_009C39
	SEP.b #$20
	STZ.w !REGISTER_BG1VertScrollOffset
	STZ.w !REGISTER_BG1VertScrollOffset
	STZ.w !REGISTER_BG1HorizScrollOffset
	STZ.w !REGISTER_BG1HorizScrollOffset
	REP.b #$20
	LDA.w $0342
	BIT.w #$0800
	BEQ.b CODE_0291AF
	LDA.w #DATA_0399E8
	JSL.l CODE_00CB69
	BRA.b CODE_0291CE

CODE_0291AF:
	LDA.w #DATA_039A2C
	JSL.l CODE_00CB69
	REP.b #$10
	LDX.w #$036C
	JSL.l CODE_028BFB
	REP.b #$30
	LDA.w #$036C
	LDX.w #$0154
	LDY.w #$8004
	JSL.l CODE_00CCC9
CODE_0291CE:
	REP.b #$20
	LDA.w #$0002
	JSL.l CODE_00C933
	REP.b #$20
	LDA.w $0342
	BIT.w #$0400
	BEQ.b CODE_0291E6
	JSR.w CODE_0290B0
	BRA.b CODE_0291E9

CODE_0291E6:
	JSR.w CODE_0290DE
CODE_0291E9:
	REP.b #$30
	LDA.w #$9080
	LDX.w #$0258
	JSL.l CODE_009A75
	JSL.l CODE_02C8FF
	REP.b #$20
	LDA.w $0342
	BIT.w #$0800
	BEQ.b CODE_029227
	JSL.l CODE_028D87
	REP.b #$30
	LDA.w $0BD1
	BNE.b CODE_029214
	LDA.w #$0001
	STA.w $0BD1
CODE_029214:
	LDA.w $12A2
	CMP.w #$0001
	BEQ.b CODE_029227
	LDA.w $0C41
	BNE.b CODE_029227
	LDA.w #$0001
	STA.w $0C41
CODE_029227:
	RTL

CODE_029228:
	SEP.b #$20
	REP.b #$10
	LDX.w #$0000
CODE_02922F:
	LDA.b [$71],y
	STA.w $03D2,x
	INY
	INX
	CMP.b #$00
	BNE.b CODE_02922F
	REP.b #$20
	LDA.b [$71],y
	STA.w $0344
	INY
	INY
	LDA.w $0342
	BIT.w #$0400
	BEQ.b CODE_029280
	SEP.b #$20
	LDA.b [$71],y
	STA.w $0350
	INY
	LDA.b [$71],y
	BIT.b #$80
	BEQ.b CODE_02925C
	INC.w $03FF
CODE_02925C:
	AND.b #$7F
	BEQ.b CODE_02926B
	REP.b #$20
	LDA.w #$0800
	ORA.w $0342
	STA.w $0342
CODE_02926B:
	INY
	SEP.b #$20
	LDA.b [$71],y
	BIT.b #$80
	BEQ.b CODE_029277
	INC.w $03FF
CODE_029277:
	REP.b #$20
	AND.w #$007F
	STA.w $0352
	INY
CODE_029280:
	SEP.b #$20
	LDA.b [$71],y
	PHY
	JSL.l CODE_00C6C5
	REP.b #$30
	PLY
	INY
	LDA.w $0342
	BIT.w #$0400
	BNE.b CODE_029298
	BRL.w CODE_02933B

CODE_029298:
	SEP.b #$20
	LDA.b [$71],y
	REP.b #$20
	AND.w #$00FF
	STA.w $0356
	INY
	SEP.b #$20
	LDA.b [$71],y
	REP.b #$20
	AND.w #$00FF
	STA.w $0358
	INY
	SEP.b #$20
	LDA.b [$71],y
	REP.b #$20
	AND.w #$00FF
	STA.w $035A
	INY
	SEP.b #$20
	LDA.b [$71],y
	REP.b #$20
	AND.w #$00FF
	STA.w $035C
	INY
	SEP.b #$20
	LDA.b [$71],y
	REP.b #$20
	AND.w #$00FF
	STA.w $035E
	INY
	SEP.b #$20
	LDA.b [$71],y
	REP.b #$20
	AND.w #$00FF
	STA.w $0360
	INY
	SEP.b #$20
	LDA.b [$71],y
	REP.b #$20
	AND.w #$00FF
	STA.w $0362
	INY
	SEP.b #$20
	LDA.b [$71],y
	REP.b #$20
	AND.w #$00FF
	STA.w $0364
	INY
	SEP.b #$20
	LDA.b [$71],y
	REP.b #$20
	AND.w #$00FF
	STA.w $0366
	INY
	SEP.b #$20
	LDA.b [$71],y
	REP.b #$20
	AND.w #$00FF
	STA.w $0368
	INY
	SEP.b #$20
	LDA.b [$71],y
	REP.b #$20
	AND.w #$00FF
	STA.w $036A
	INY
	SEP.b #$20
	LDA.b [$71],y
	REP.b #$20
	AND.w #$00FF
	BIT.w #$0080
	BEQ.b CODE_029338
	ORA.w #$FF00
CODE_029338:
	STA.w $034C
CODE_02933B:
	REP.b #$30
	LDA.w #$0008
	BIT.w $0BF6
	BNE.b CODE_029355
	LDX.w #!RAM_FB2000_Level_Smiloids_SpriteTableStart
CODE_029348:
	STZ.b $5C,x
	TXA
	CLC
	ADC.w #$0070
	TAX
	CPX.w #$129A
	BNE.b CODE_029348
CODE_029355:
	RTS

CODE_029356:
	REP.b #$30
	ASL
	TAY
	LDA.b [$74],y
	TAY
	STZ.w $0300
	STZ.w $0354
	LDA.w #$F7FF
	AND.w $0342
	STA.w $0342
	STZ.w $03B1
	STZ.w $03B3
	STZ.w $03B5
	STZ.w $03B7
	STZ.w $03B9
	STZ.w $03BB
CODE_02937E:
	SEP.b #$20
	REP.b #$10
	LDA.b [$71],y
	PHA
	INY
	LDA.b [$71],y
	STA.w $03FF
	STZ.w $0400
	INY
	PLA
	AND.b #$E0
	CMP.b #$A0
	BEQ.b CODE_0293D5
	REP.b #$10
	PHY
	CMP.b #$00
	BNE.b CODE_0293A2
	JSR.w CODE_029228
	BRA.b CODE_0293CB

CODE_0293A2:
	CMP.b #$20
	BNE.b CODE_0293AC
	JSL.l CODE_02A5D5
	BRA.b CODE_0293CB

CODE_0293AC:
	CMP.b #$80
	BNE.b CODE_0293B6
	JSL.l CODE_02A5D5
	BRA.b CODE_0293CB

CODE_0293B6:
	CMP.b #$40
	BNE.b CODE_0293C0
	JSL.l CODE_02AC4B
	BRA.b CODE_0293CB

CODE_0293C0:
	CMP.b #$60
	BNE.b CODE_0293CA
	JSL.l CODE_02AC7B
	BRA.b CODE_0293CB

CODE_0293CA:
	db $00						; Note: Intentional BRK
CODE_0293CB:
	REP.b #$30
	PLA
	CLC
	ADC.w $03FF
	TAY
	BRA.b CODE_02937E

CODE_0293D5:
	RTL

CODE_0293D6:
	JSL.l CODE_00C833
	JSL.l CODE_009C39
	REP.b #$20
	LDA.w #$0002
	JSL.l CODE_00C933
	REP.b #$30
	LDA.w #$0014
	STA.w $0409
	LDA.w #$0000
	STA.w $040B
	LDA.w #$0000
	STA.w $040D
	LDA.w #$000A
	STA.w $040F
	LDA.w #$0028
	STA.w $0411
	LDA.w #$0000
	STA.w $0413
	REP.b #$20
	LDA.w #$0000
	JSL.l CODE_00923B
	LDX.w #$0407
	JSL.l CODE_02951C
	REP.b #$20
	LDA.w #$0000
	JSL.l CODE_00927C
CODE_029426:
	BRL.w CODE_029426

CODE_029429:
	SEP.b #$20
	LDA.b #$0C
	STA.b $E8
	REP.b #$30
	LDA.w #$0020
	STA.b $99
	STZ.w $06FE
	STZ.w $0700
	JSL.l CODE_00C833
	JSL.l CODE_009C39
	REP.b #$20
	LDA.w #$0002
	JSL.l CODE_00C933
CODE_02944D:
	JSL.l CODE_00CA17
	JSL.l CODE_00B8F9
	REP.b #$30
	LDA.w $03C6
	BIT.w #$0800
	BEQ.b CODE_029465
	DEC.w $0700
	DEC.w $0700
CODE_029465:
	LDA.w $03C6
	BIT.w #$0400
	BEQ.b CODE_029473
	INC.w $0700
	INC.w $0700
CODE_029473:
	LDA.w $03C6
	BIT.w #$0200
	BEQ.b CODE_029481
	DEC.w $06FE
	DEC.w $06FE
CODE_029481:
	LDA.w $03C6
	BIT.w #$0100
	BEQ.b CODE_02948F
	INC.w $06FE
	INC.w $06FE
CODE_02948F:
	LDA.w $03C6
	BIT.w #$0080
	BEQ.b CODE_0294A2
	LDA.b $99
	CMP.w #$00FE
	BCS.b CODE_0294A2
	INC.b $99
	INC.b $99
CODE_0294A2:
	LDA.w $03C6
	BIT.w #$8000
	BEQ.b CODE_0294B5
	LDA.b $99
	CMP.w #$0004
	BCC.b CODE_0294B5
	DEC.b $99
	DEC.b $99
CODE_0294B5:
	REP.b #$20
	LDA.w #$0000
	JSL.l CODE_00923B
	REP.b #$30
	STZ.b $9D
	LDA.b $99
	ASL
	STA.w $06FC
	ASL
	TAY
	LDA.w DATA_03A05C,y
	STA.b $9B
CODE_0294CF:
	REP.b #$30
	LDA.b $9D
	AND.w #$FF00
	LSR
	CLC
	ADC.w #$8000
	STA.b $E6
	LDA.b $99
	ASL
	TAY
	LDA.w DATA_039C5C,y
	STA.b $E9
	LDA.w $0700
	TAX
	CLC
	ADC.b $99
	TAY
	DEY
	LDA.b $99
	ASL
	SEC
	SBC.w $06FC
	CLC
	ADC.w $06FE
	JSL.l CODE_00D6C3
	REP.b #$30
	LDA.b $9B
	CLC
	ADC.b $9D
	STA.b $9D
	DEC.w $06FC
	BNE.b CODE_0294CF
	REP.b #$20
	LDA.w #$0000
	JSL.l CODE_00927C
	BRL.w CODE_02944D

CODE_029518:
	JML.l CODE_0296F2

CODE_02951C:
	SEP.b #$20
	LDA.b #$0C
	STA.b $E8
	REP.b #$30
	LDA.b $06,x
	LSR
	LSR
	XBA
	STA.b $9D
	PHX
	LDA.w #$0100
	SEC
	SBC.b $06,x
	SBC.b $0C,x
	BCS.b CODE_029538
	PLX
	RTL

CODE_029538:
	LSR
	LSR
	PHA
	LDA.b $0A,x
	SEC
	SBC.b $04,x
	BPL.b CODE_029546
	EOR.w #$FFFF
	INC
CODE_029546:
	TAX
	PLA
	XBA
	REP.b #$20
	STA.w !REGISTER_DividendLo
	SEP.b #$10
	STX.w !REGISTER_Divisor
	NOP #7
	REP.b #$10
	LDA.w !REGISTER_QuotientLo
	REP.b #$30
	STA.b $9B
	PLX
	LDA.w #$8000
	STA.w $06EA
	STZ.w $06F2
	STZ.w $06F4
	LDA.b $0A,x
	SEC
	SBC.b $04,x
	STA.b $93
	BPL.b CODE_029582
	EOR.w #$FFFF
	INC
	DEC.w $06F2
	BRA.b CODE_029585

CODE_029582:
	INC.w $06F2
CODE_029585:
	ASL
	STA.w $06EE
	LDA.b $08,x
	SEC
	SBC.b $02,x
	STA.b $95
	BPL.b CODE_02959B
	EOR.w #$FFFF
	INC
	DEC.w $06F4
	BRA.b CODE_02959E

CODE_02959B:
	INC.w $06F4
CODE_02959E:
	ASL
	STA.w $06F0
	LDA.b $04,x
	STA.b $8F
	LDA.b $02,x
	STA.b $91
	LDA.w $06EE
	CMP.w $06F0
	BCS.b CODE_0295B5
	BRL.w CODE_029635

CODE_0295B5:
	LDA.w $06EE
	LSR
	PHA
	LDA.w $06F0
	SEC
	SBC.b $01,S
	STA.w $06EC
	PLA
CODE_0295C4:
	LDA.b $9D
	AND.w #$FF00
	LSR
	CLC
	ADC.w #$8000
	STA.b $E6
	LDA.b $91
	ASL
	INC
	CMP.w #$0200
	BCC.b CODE_0295DC
	LDA.w #$01FF
CODE_0295DC:
	ASL
	TAY
	LDA.w DATA_039C5C,y
	STA.b $E9
	PHX
	LDA.w #$0038
	SEC
	SBC.b $91
	TAX
	LDA.w #$0038
	CLC
	ADC.b $91
	TAY
	LDA.b $8F
	CLC
	ADC.w #$0048
	JSL.l CODE_00D6C3
	REP.b #$30
	PLX
	LDA.b $9B
	CLC
	ADC.b $9D
	STA.b $9D
	LDA.b $8F
	CMP.b $0A,x
	BNE.b CODE_02960D
	RTL

CODE_02960D:
	LDA.w $06EC
	BMI.b CODE_029621
	SEC
	SBC.w $06EE
	STA.w $06EC
	LDA.w $06F4
	CLC
	ADC.b $91
	STA.b $91
CODE_029621:
	LDA.w $06F2
	CLC
	ADC.b $8F
	STA.b $8F
	LDA.w $06F0
	CLC
	ADC.w $06EC
	STA.w $06EC
	BRA.b CODE_0295C4

CODE_029635:
	REP.b #$30
	LDA.w $06F0
	LSR
	PHA
	LDA.w $06EE
	SEC
	SBC.b $01,S
	STA.w $06EC
	PLA
CODE_029646:
	LDA.b $8F
	CMP.w $06EA
	BEQ.b CODE_029692
	STA.w $06EA
	LDA.b $9D
	AND.w #$FF00
	LSR
	CLC
	ADC.w #$8000
	STA.b $E6
	LDA.b $91
	ASL
	INC
	CMP.w #$0200
	BCC.b CODE_029668
	LDA.w #$01FF
CODE_029668:
	ASL
	TAY
	LDA.w DATA_039C5C,y
	STA.b $E9
	PHX
	LDA.w #$0038
	SEC
	SBC.b $91
	TAX
	LDA.w #$0038
	CLC
	ADC.b $91
	TAY
	LDA.b $8F
	CLC
	ADC.w #$0048
	JSL.l CODE_00D6C3
	REP.b #$30
	PLX
	LDA.b $9B
	CLC
	ADC.b $9D
	STA.b $9D
CODE_029692:
	LDA.b $91
	CMP.b $08,x
	BNE.b CODE_029699
	RTL

CODE_029699:
	LDA.w $06EC
	BMI.b CODE_0296AD
	SEC
	SBC.w $06F0
	STA.w $06EC
	LDA.w $06F2
	CLC
	ADC.b $8F
	STA.b $8F
CODE_0296AD:
	LDA.w $06F4
	CLC
	ADC.b $91
	STA.b $91
	LDA.w $06EE
	CLC
	ADC.w $06EC
	STA.w $06EC
	BRA.b CODE_029646

CODE_0296C1:
	REP.b #$20
	PHA
	LDA.w $0407
	AND.w #$0FF0
	CMP.w #$0000
	BEQ.b CODE_0296DE
	CMP.w #$0010
	BEQ.b CODE_0296E0
	CMP.w #$0020
	BEQ.b CODE_0296E6
	CMP.w #$0030
	BEQ.b CODE_0296EC
CODE_0296DE:
	PLA
	RTS

CODE_0296E0:
	PLA
	JSL.l CODE_00AC9C
	RTS

CODE_0296E6:
	PLA
	JSL.l CODE_00AE48
	RTS

CODE_0296EC:
	PLA
	JSL.l CODE_00B01F
	RTS

CODE_0296F2:
	SEP.b #$20
	REP.b #$10
	LDY.w #$0000
CODE_0296F9:
	LDA.b $00,x
	STA.w $0407,y
	INY
	INX
	CPY.w #$000E
	BNE.b CODE_0296F9
	REP.b #$30
	LDA.w $0409
	CMP.w $040F
	BCC.b CODE_029748
	TAX
	LDA.w $040F
	STA.w $0409
	STX.w $040F
	LDX.w $040B
	LDA.w $0411
	STA.w $040B
	STX.w $0411
	LDA.w $0407
	BIT.w #$2000
	BNE.b CODE_02973A
	BIT.w #$4000
	BEQ.b CODE_029748
	ORA.w #$2000
	AND.w #$BFFF
	BRA.b CODE_029745

CODE_02973A:
	BIT.w #$4000
	BNE.b CODE_029748
	AND.w #$DFFF
	ORA.w #$4000
CODE_029745:
	STA.w $0407
CODE_029748:
	LDA.w $040B
	CMP.w $0411
	BCC.b CODE_029762
	LDA.w #$0048
	CLC
	ADC.w $0411
	TAX
	LDA.w $040B
	SEC
	SBC.w $0411
	TAY
	BRA.b CODE_029772

CODE_029762:
	LDA.w #$0048
	CLC
	ADC.w $040B
	TAX
	LDA.w $0411
	SEC
	SBC.w $040B
	TAY
CODE_029772:
	INY
	LDA.w $0409
	ASL
	INC
	PHA
	PHY
	LDA.w #$0038
	SEC
	SBC.w $0409
	TAY
	LDA.w $0407
	AND.w #$0FF0
	CMP.w #$0000
	BEQ.b CODE_02979C
	CMP.w #$0010
	BEQ.b CODE_02979E
	CMP.w #$0020
	BEQ.b CODE_0297A4
	CMP.w #$0030
	BEQ.b CODE_0297AA
CODE_02979C:
	BRA.b CODE_0297AE

CODE_02979E:
	JSL.l CODE_0088B1
	BRA.b CODE_0297AE

CODE_0297A4:
	JSL.l CODE_0088BF
	BRA.b CODE_0297AE

CODE_0297AA:
	JSL.l CODE_0088CD
CODE_0297AE:
	REP.b #$30
	PLA
	PLA
	LDA.w $040F
	SEC
	SBC.w $0409
	BNE.b CODE_0297BE
	JMP.w CODE_02989B

CODE_0297BE:
	TAX
	LDA.w $0411
	SEC
	SBC.w $040B
	ASL
	ASL
	ASL
	ASL
	BCC.b CODE_0297EE
	EOR.w #$FFFF
	INC
	REP.b #$20
	STA.w !REGISTER_DividendLo
	SEP.b #$10
	STX.w !REGISTER_Divisor
	NOP #7
	REP.b #$10
	LDA.w !REGISTER_QuotientLo
	REP.b #$30
	EOR.w #$FFFF
	INC
	BRA.b CODE_029804

CODE_0297EE:
	REP.b #$20
	STA.w !REGISTER_DividendLo
	SEP.b #$10
	STX.w !REGISTER_Divisor
	NOP #7
	REP.b #$10
	LDA.w !REGISTER_QuotientLo
CODE_029804:
	REP.b #$30
	PHA
	ASL
	PHP
	ROR
	PLP
	ROR
	STA.b $8C
	LDA.w $040B
	ASL
	ASL
	ASL
	ASL
	CLC
	ADC.b $8C
	ADC.w #$0008
	TAX
	PLA
	STA.b $8C
	LDY.w $0409
	INY
CODE_029823:
	REP.b #$30
	CPY.w $040F
	BEQ.b CODE_02982C
	BCS.b CODE_02989B
CODE_02982C:
	CPY.w #$0038
	BCS.b CODE_02989B
	PHX
	PHY
	TXA
	ASL
	PHP
	ROR
	PLP
	ROR
	ASL
	PHP
	ROR
	PLP
	ROR
	ASL
	PHP
	ROR
	PLP
	ROR
	ASL
	PHP
	ROR
	PLP
	ROR
	CLC
	ADC.w #$0048
	TAY
	LDA.w $0411
	CLC
	ADC.w #$0048
	TAX
	LDA.w #$0038
	SEC
	SBC.b $01,S
	JSR.w CODE_0296C1
	REP.b #$30
	PLY
	PLX
	PHX
	PHY
	TXA
	ASL
	PHP
	ROR
	PLP
	ROR
	ASL
	PHP
	ROR
	PLP
	ROR
	ASL
	PHP
	ROR
	PLP
	ROR
	ASL
	PHP
	ROR
	PLP
	ROR
	CLC
	ADC.w #$0048
	TAY
	LDA.w $0411
	CLC
	ADC.w #$0048
	TAX
	LDA.w #$0038
	CLC
	ADC.b $01,S
	JSR.w CODE_0296C1
	REP.b #$30
	PLY
	PLX
	TXA
	CLC
	ADC.b $8C
	TAX
	INY
	BRA.b CODE_029823

CODE_02989B:
	REP.b #$30
	LDA.w $0407
	BIT.w #$2000
	BNE.b CODE_0298C0
	LDA.w #$0038
	SEC
	SBC.w $0409
	TAX
	LDA.w #$0038
	CLC
	ADC.w $0409
	TAY
	LDA.w #$0048
	CLC
	ADC.w $040B
	JSL.l CODE_00E0CA
CODE_0298C0:
	REP.b #$30
	LDA.w $0407
	BIT.w #$4000
	BNE.b CODE_0298E5
	LDA.w #$0038
	SEC
	SBC.w $040F
	TAX
	LDA.w #$0038
	CLC
	ADC.w $040F
	TAY
	LDA.w #$0048
	CLC
	ADC.w $0411
	JSL.l CODE_00E0CA
CODE_0298E5:
	RTL

CODE_0298E6:
	REP.b #$30
	STA.w $0710
	LDY.w #$0000
CODE_0298EE:
	REP.b #$30
	LDA.b [$9F],y
	CMP.w $0710
	BNE.b CODE_0298FB
	INY
	INY
	CLC
	RTS

CODE_0298FB:
	CMP.w #$FFF3
	BNE.b CODE_029902
	SEC
	RTS

CODE_029902:
	CMP.w #$FFF0
	BNE.b CODE_02990E
	INY
	INY
	INY
	INY
	INY
	BRA.b CODE_029942

CODE_02990E:
	CMP.w #$FFF1
	BNE.b CODE_02992A
	INY
	INY
	INY
	INY
	INY
	INY
CODE_029919:
	LDA.b [$9F],y
	AND.w #$FFF0
	CMP.w #$FFF0
	BEQ.b CODE_029942
	INY
	INY
	INY
	INY
	INY
	BRA.b CODE_029919

CODE_02992A:
	CMP.w #$FFF2
	BNE.b CODE_029942
	INY
	INY
CODE_029931:
	LDA.b [$9F],y
	AND.w #$FFF0
	CMP.w #$FFF0
	BEQ.b CODE_029942
	INY
	INY
	INY
	INY
	INY
	BRA.b CODE_029931

CODE_029942:
	BRA.b CODE_0298EE

CODE_029944:
	REP.b #$30
	CMP.w $0704
	BCC.b CODE_02994D
	SEC
	RTS

CODE_02994D:
	INC
	PHA
	LDA.w #$FFF1
	JSR.w CODE_0298E6
CODE_029955:
	REP.b #$30
	PLX
	DEX
	BEQ.b CODE_029976
	PHX
	INY
	INY
	INY
	INY
CODE_029960:
	LDA.b [$9F],y
	AND.w #$FFF0
	CMP.w #$FFF0
	BEQ.b CODE_029971
	INY
	INY
	INY
	INY
	INY
	BRA.b CODE_029960

CODE_029971:
	JSR.w CODE_0298EE
	BRA.b CODE_029955

CODE_029976:
	CLC
	RTS

CODE_029978:
	REP.b #$30
	LDA.b [$9F],y
	TAX
	AND.w #$FFF0
	CMP.w #$FFF0
	BNE.b CODE_029987
	CLC
	RTS

CODE_029987:
	INY
	INY
	TXA
	AND.w $070E
	BEQ.b CODE_0299B0
	REP.b #$20
	LDA.w #$0007
	JSL.l CODE_02C90B
	SEP.b #$20
	LDA.b #(CODE_0299B5-$01)>>16
	PHA
	REP.b #$20
	LDA.w #CODE_0299B5-$01
	PHA
	SEP.b #$20
	LDA.b [$9F],y
	PHA
	INY
	REP.b #$20
	LDA.b [$9F],y
	DEC
	PHA
	RTL

CODE_0299B0:
	INY
	INY
	INY
	BRA.b CODE_029978

CODE_0299B5:
	SEC
	RTS

CODE_0299B7:
	REP.b #$20
	STA.w $070E
	LDA.w $0706
	JSR.w CODE_029944
	BCS.b CODE_0299CF
	REP.b #$10
	INY
	INY
	INY
	INY
	JSR.w CODE_029978
	BCS.b CODE_0299DC
CODE_0299CF:
	REP.b #$20
	LDA.w #$FFF2
	JSR.w CODE_0298E6
	BCS.b CODE_0299DC
	JSR.w CODE_029978
CODE_0299DC:
	RTS

CODE_0299DD:
	REP.b #$20
	LDA.w $0702
	AND.w #$FFFC
	ORA.w #$0001
	STA.w $0702
	RTL

CODE_0299EC:
	REP.b #$20
	LDA.w $0702
	AND.w #$FFFC
	ORA.w #$0002
	STA.w $0702
	RTL

CODE_0299FB:
	REP.b #$20
	LDA.w $0702
	AND.w #$FFFC
	ORA.w #$0003
	STA.w $0702
	RTL

CODE_029A0A:
	BCS.b CODE_029A24
	REP.b #$20
	LDA.w $0706
	INC
	CMP.w $0704
	BCS.b CODE_029A23
	STA.w $0706
	LDA.w #$0004
	ORA.w $0702
	STA.w $0702
CODE_029A23:
	RTL

CODE_029A24:
	REP.b #$20
	LDA.w $0706
	INC
	CMP.w $0704
	BCC.b CODE_029A32
	LDA.w #$0000
CODE_029A32:
	STA.w $0706
	LDA.w #$0004
	ORA.w $0702
	STA.w $0702
	RTL

CODE_029A3F:
	BCS.b CODE_029A59
	REP.b #$20
	LDA.w $0706
	DEC
	CMP.w #$FFFF
	BEQ.b CODE_029A58
	STA.w $0706
	LDA.w #$0004
	ORA.w $0702
	STA.w $0702
CODE_029A58:
	RTL

CODE_029A59:
	REP.b #$20
	LDA.w $0706
	DEC
	CMP.w #$FFFF
	BNE.b CODE_029A68
	LDA.w $0704
	DEC
CODE_029A68:
	STA.w $0706
	LDA.w #$0004
	ORA.w $0702
	STA.w $0702
	RTL

CODE_029A75:
	REP.b #$20
	JSR.w CODE_029944
	REP.b #$30
	INY
	INY
	LDA.b [$9F],y
	ASL
	ASL
	ASL
	ASL
	ASL
	DEY
	DEY
	CLC
	ADC.b [$9F],y
	TAX
	LDA.w #DATA_03A45C
	JSL.l CODE_00CB69
	RTS

CODE_029A93:
	REP.b #$20
	JSR.w CODE_029944
	REP.b #$30
	INY
	INY
	LDA.b [$9F],y
	ASL
	ASL
	ASL
	ASL
	ASL
	DEY
	DEY
	CLC
	ADC.b [$9F],y
	TAX
	LDA.w #DATA_03A462
	JSL.l CODE_00CB69
	RTS

CODE_029AB1:
	REP.b #$20
	LDA.w #$FFF0
	JSR.w CODE_0298E6
	BCC.b CODE_029ABC
	RTS

CODE_029ABC:
	SEP.b #$20
	REP.b #$10
	LDA.b #(CODE_029AD6-$01)>>16
	PHA
	REP.b #$20
	LDA.w #CODE_029AD6-$01
	PHA
	SEP.b #$20
	LDA.b [$9F],y
	PHA
	INY
	REP.b #$20
	LDA.b [$9F],y
	DEC
	PHA
	RTL

CODE_029AD6:
	BCC.b CODE_029AE3
	REP.b #$20
	LDA.w #$0020
	ORA.w $0702
	STA.w $0702
CODE_029AE3:
	RTS

CODE_029AE4:
	REP.b #$20
	STA.b $9F
	SEP.b #$10
	STX.b $A1
	REP.b #$10
	STY.w $0706
	STY.w $0708
	REP.b #$20
	LDA.w #$0044
	STA.w $0702
	STZ.w $070A
	STZ.w $0704
	LDA.w #$FFF1
	JSR.w CODE_0298E6
	BCS.b CODE_029B29
CODE_029B0A:
	REP.b #$30
	INC.w $0704
	INY
	INY
	INY
	INY
CODE_029B13:
	LDA.b [$9F],y
	AND.w #$FFF0
	CMP.w #$FFF0
	BEQ.b CODE_029B24
	INY
	INY
	INY
	INY
	INY
	BRA.b CODE_029B13

CODE_029B24:
	JSR.w CODE_0298EE
	BCC.b CODE_029B0A
CODE_029B29:
	REP.b #$20
	LDA.w #$7C00
	STA.w $1F5B
	JSL.l CODE_0299DD
	RTL

CODE_029B36:
	JSL.l CODE_029AE4
CODE_029B3A:
	SEP.b #$20
	LDA.w $1336
	CMP.b #$0F
	BEQ.b CODE_029B53
	LDA.w $1335
	CMP.b #$01
	BEQ.b CODE_029B53
	REP.b #$20
	LDA.w #$0002
	JSL.l CODE_00C933
CODE_029B53:
	SEP.b #$20
	LDA.w $020B
	BEQ.b CODE_029B6D
	LDA.w $020A
	CMP.b #$FF
	BEQ.b CODE_029B6D
	REP.b #$30
	LDX.w #$0005
	LDA.w #$0002
	JSL.l CODE_00888C
CODE_029B6D:
	JSL.l CODE_00CA17
	REP.b #$20
	INC.w $034A
	LDA.w $0702
	BIT.w #$0040
	BEQ.b CODE_029B87
	AND.w #$FFBF
	STA.w $0702
	JSR.w CODE_029AB1
CODE_029B87:
	REP.b #$20
	LDA.w $0702
	BIT.w #$0020
	BNE.b CODE_029BD6
	BIT.w #$0004
	BEQ.b CODE_029BB6
	AND.w #$FFFB
	STA.w $0702
	REP.b #$20
	LDA.w $0708
	JSR.w CODE_029A93
	REP.b #$20
	LDA.w $0706
	JSR.w CODE_029A75
	REP.b #$20
	LDA.w $0706
	STA.w $0708
	BRA.b CODE_029BD6

CODE_029BB6:
	REP.b #$20
	LDA.w $034A
	AND.w #$0007
	BNE.b CODE_029BD6
	LDA.w $034A
	AND.w #$0008
	BNE.b CODE_029BD0
	LDA.w $0706
	JSR.w CODE_029A75
	BRA.b CODE_029BD6

CODE_029BD0:
	LDA.w $0706
	JSR.w CODE_029A93
CODE_029BD6:
	JSL.l CODE_00B8F9
	REP.b #$20
	LDA.w $070A
	STA.w $070C
	STZ.w $070A
	LDA.w #$0001
	BIT.w $0702
	BEQ.b CODE_029BF6
	LDA.w $03C6
	ORA.w $070A
	STA.w $070A
CODE_029BF6:
	LDA.w #$0002
	BIT.w $0702
	BEQ.b CODE_029C07
	LDA.w $03C8
	ORA.w $070A
	STA.w $070A
CODE_029C07:
	REP.b #$20
	LDA.w #$0200
	BIT.w $070A
	BEQ.b CODE_029C19
	BIT.w $070C
	BNE.b CODE_029C19
	JSR.w CODE_0299B7
CODE_029C19:
	REP.b #$20
	LDA.w #$0100
	BIT.w $070A
	BEQ.b CODE_029C2B
	BIT.w $070C
	BNE.b CODE_029C2B
	JSR.w CODE_0299B7
CODE_029C2B:
	REP.b #$20
	LDA.w #$0800
	BIT.w $070A
	BEQ.b CODE_029C3D
	BIT.w $070C
	BNE.b CODE_029C3D
	JSR.w CODE_0299B7
CODE_029C3D:
	REP.b #$20
	LDA.w #$0400
	BIT.w $070A
	BEQ.b CODE_029C4F
	BIT.w $070C
	BNE.b CODE_029C4F
	JSR.w CODE_0299B7
CODE_029C4F:
	REP.b #$20
	LDA.w #$0080
	BIT.w $070A
	BEQ.b CODE_029C61
	BIT.w $070C
	BNE.b CODE_029C61
	JSR.w CODE_0299B7
CODE_029C61:
	REP.b #$20
	LDA.w #$8000
	BIT.w $070A
	BEQ.b CODE_029C73
	BIT.w $070C
	BNE.b CODE_029C73
	JSR.w CODE_0299B7
CODE_029C73:
	REP.b #$20
	LDA.w #$0040
	BIT.w $070A
	BEQ.b CODE_029C85
	BIT.w $070C
	BNE.b CODE_029C85
	JSR.w CODE_0299B7
CODE_029C85:
	REP.b #$20
	LDA.w #$4000
	BIT.w $070A
	BEQ.b CODE_029C97
	BIT.w $070C
	BNE.b CODE_029C97
	JSR.w CODE_0299B7
CODE_029C97:
	REP.b #$20
	LDA.w #$0020
	BIT.w $070A
	BEQ.b CODE_029CA9
	BIT.w $070C
	BNE.b CODE_029CA9
	JSR.w CODE_0299B7
CODE_029CA9:
	REP.b #$20
	LDA.w #$0010
	BIT.w $070A
	BEQ.b CODE_029CBB
	BIT.w $070C
	BNE.b CODE_029CBB
	JSR.w CODE_0299B7
CODE_029CBB:
	REP.b #$20
	LDA.w #$2000
	BIT.w $070A
	BEQ.b CODE_029CCD
	BIT.w $070C
	BNE.b CODE_029CCD
	JSR.w CODE_0299B7
CODE_029CCD:
	REP.b #$20
	LDA.w #$1000
	BIT.w $070A
	BEQ.b CODE_029CDF
	BIT.w $070C
	BNE.b CODE_029CDF
	JSR.w CODE_0299B7
CODE_029CDF:
	REP.b #$20
	LDA.w #$0008
	BIT.w $0702
	BNE.b CODE_029CEC
	BRL.w CODE_029B3A

CODE_029CEC:
	RTL

CODE_029CED:
	REP.b #$30
	PHA
	LDA.w #DATA_03A908
	LDY.w #$0005
	LDX.w #$0142
	JSL.l CODE_00CCC9
	REP.b #$30
	PLY
	LDX.w #$0162
CODE_029D03:
	PHX
	PHY
	LDA.w #DATA_03A925
	LDY.w #$0005
	JSL.l CODE_00CCC9
	REP.b #$30
	PLY
	PLX
	TXA
	CLC
	ADC.w #$0020
	TAX
	DEY
	BNE.b CODE_029D03
	LDA.w #DATA_03A942
	LDY.w #$0005
	JSL.l CODE_00CCC9
	RTS

CODE_029D27:
	REP.b #$30
	LDA.w #$09AC
	STA.w $0B2C
	LDX.w #$072C
CODE_029D32:
	LDA.b $00,x
	BIT.w #$0001
	BNE.b CODE_029D3C
	BRL.w CODE_029DBB

CODE_029D3C:
	BIT.w #$0020
	BEQ.b CODE_029D87
	PHX
	LDY.b $08,x
	JSL.l CODE_029DCB
	REP.b #$30
	PLX
	LDA.w #$0001
	BIT.w $0722
	BEQ.b CODE_029D5A
	LDA.w #$0008
	BIT.b $00,x
	BEQ.b CODE_029DBB
CODE_029D5A:
	LDA.w #$0008
	BIT.b $00,x
	BEQ.b CODE_029D69
	LDA.w #$0002
	BIT.w $0722
	BNE.b CODE_029DBB
CODE_029D69:
	LDA.w #$0001
	BIT.w $0724
	BEQ.b CODE_029D78
	LDA.w #$0010
	BIT.b $00,x
	BEQ.b CODE_029DBB
CODE_029D78:
	LDA.w #$0010
	BIT.b $00,x
	BEQ.b CODE_029D87
	LDA.w #$0002
	BIT.w $0724
	BNE.b CODE_029DBB
CODE_029D87:
	LDA.b $06,x
	CMP.w #$0020
	BCS.b CODE_029DBB
	PHX
	LDA.b $04,x
	XBA
	AND.w #$000F
	TAY
	LDA.b $02,x
	XBA
	AND.w #$000F
	TAX
	REP.b #$30
	LDA.w #$0000
	PHX
	TYA
	XBA
	LSR
	LSR
	LSR
	CLC
	ADC.b $01,S
	ADC.b $01,S
	TAX
	PLA
	REP.b #$30
	LDA.w #$0080
	ORA.w $0415,x
	STA.w $0415,x
	PLX
CODE_029DBB:
	TXA
	CLC
	ADC.w #$0014
	TAX
	CPX.w #$09AC
	BEQ.b CODE_029DC9
	BRL.w CODE_029D32

CODE_029DC9:
	RTL

CODE_029DCA:
	RTL

CODE_029DCB:
	REP.b #$10
	SEP.b #$20
	LDA.b [$71],y
	INY
	REP.b #$20
	AND.w #$00FF
	STA.w $0722
	SEP.b #$20
	LDA.b [$71],y
	INY
	REP.b #$20
	AND.w #$00FF
	STA.w $0724
	RTL

CODE_029DE8:
	REP.b #$20
	PHA
	SEP.b #$20
CODE_029DED:
	LDA.w $1335
	BNE.b CODE_029DED
	JSL.l CODE_02C976
	REP.b #$20
	LDA.w #$0002
	JSL.l CODE_00C91F
	SEP.b #$20
CODE_029E01:
	LDA.w $1335
	BNE.b CODE_029E01
	JSL.l CODE_00A199
	REP.b #$20
	LDA.w #$7C00
	STA.w $1F5B
	JSL.l CODE_00C833
	JSL.l CODE_009C39
	SEP.b #$20
	STZ.w $0B54
	REP.b #$30
	LDA.w #$000C
	STA.w $0B31
	LDA.w $034C
	CMP.w #$FFFF
	BNE.b CODE_029E37
	PLA
	JSL.l CODE_00CB69
	BRL.w CODE_029ED8

CODE_029E37:
	ASL
	TAY
	LDA.b [$77],y
	TAY
	SEP.b #$20
	LDA.b [$71],y
	STA.w $0B2E
	INY
	INY
	REP.b #$30
	PHY
	AND.w #$00FF
	CLC
	ADC.w #$0003
	JSR.w CODE_029CED
	REP.b #$30
	PLY
	PLA
	PHY
	JSL.l CODE_00CB69
	REP.b #$30
	PLY
CODE_029E5E:
	REP.b #$10
	SEP.b #$20
	LDX.w #$0000
	PHY
	LDY.w #$0000
CODE_029E69:
	LDA.w $0B54,y
	STA.w $0B33,x
	BEQ.b CODE_029E75
	INX
	INY
	BRA.b CODE_029E69

CODE_029E75:
	PLY
	REP.b #$20
	STZ.w $0B2F
	SEP.b #$20
CODE_029E7D:
	LDA.b [$71],y
	STA.w $0B33,x
	CMP.b #$20
	BNE.b CODE_029E89
	STX.w $0B2F
CODE_029E89:
	INY
	INX
	CMP.b #$00
	BNE.b CODE_029E7D
	PHY
	LDA.w $0B2E
	CMP.b #$01
	BEQ.b CODE_029EB6
	LDX.w $0B2F
	BNE.b CODE_029EA1
	STZ.w $0B54
	BRA.b CODE_029EB6

CODE_029EA1:
	LDY.w #$0000
CODE_029EA4:
	LDA.w $0B33,x
	STA.w $0B54,y
	BEQ.b CODE_029EB0
	INX
	INY
	BRA.b CODE_029EA4

CODE_029EB0:
	LDX.w $0B2F
	STZ.w $0B33,x
CODE_029EB6:
	REP.b #$30
	INC.w $0B31
	LDA.w $0B31
	ASL
	ASL
	ASL
	ASL
	ASL
	TAX
	LDY.w #$0002
	LDA.w #$0B33
	JSL.l CODE_00CCE3
	REP.b #$10
	PLY
	SEP.b #$20
	DEC.w $0B2E
	BNE.b CODE_029E5E
CODE_029ED8:
	REP.b #$20
	LDA.w #$0002
	JSL.l CODE_00C933
	RTL

CODE_029EE2:
	JSL.l CODE_029DE8
	REP.b #$30
	LDA.w #$9080
	LDX.w #$0E10
	JSL.l CODE_009A75
	REP.b #$20
	LDA.w #$0002
	JSL.l CODE_00C91F
	SEP.b #$20
CODE_029EFD:
	LDA.w $1335
	BNE.b CODE_029EFD
	JSL.l CODE_02C9F1
	JSL.l CODE_00A101
	JSL.l CODE_02C982
	RTL

CODE_029F0F:
	JSL.l CODE_0092E1
	SEP.b #$20
	LDA.b #$80
	STA.w $1339
	STA.w !REGISTER_ScreenDisplayRegister
	SEP.b #$20
	LDA.b #$15
	STA.w !REGISTER_CGRAMAddress
	REP.b #$20
	LDA.w #$03C0
	SEP.b #$20
	STA.w !REGISTER_WriteToCGRAMPort
	XBA
	STA.w !REGISTER_WriteToCGRAMPort
	SEP.b #$20
	LDA.b #$16
	STA.w !REGISTER_CGRAMAddress
	REP.b #$20
	LDA.w #$001E
	SEP.b #$20
	STA.w !REGISTER_WriteToCGRAMPort
	XBA
	STA.w !REGISTER_WriteToCGRAMPort
	SEP.b #$20
	STZ.w $1339
	LDA.b #$0F
	AND.w $1336
	STA.w !REGISTER_ScreenDisplayRegister
	REP.b #$20
	LDA.w $12A2
	CMP.w #$0002
	BEQ.b CODE_029F66
	LDA.w #$7D89
	STA.w $1F5B
	BRA.b CODE_029F6C

CODE_029F66:
	LDA.w #$7C00
	STA.w $1F5B
CODE_029F6C:
	LDA.w #$803A
	ORA.w $0B9C
	STA.w $0B9C
	REP.b #$30
	LDA.w $12A2
	CMP.w #$0002
	BEQ.b CODE_029F94
	LDX.w #DATA_03AD83
	LDA.w $0342
	BIT.w #$0400
	BEQ.b CODE_029FA7
	BIT.w #$0800
	BNE.b CODE_029FA7
	LDX.w #DATA_03AE04
	BRA.b CODE_029FA7

CODE_029F94:
	LDX.w #DATA_03ADE0
	LDA.w $0342
	BIT.w #$0400
	BEQ.b CODE_029FA7
	BIT.w #$0800
	BNE.b CODE_029FA7
	LDX.w #DATA_03ADBC
CODE_029FA7:
	TXA
	JSL.l CODE_00CB69
	REP.b #$20
	LDA.w $12A2
	CMP.w #$0001
	BEQ.b CODE_029FE1
	REP.b #$20
	LDA.w #$7DC0
	STA.w $1F5B
	LDA.w #$803A
	ORA.w $0C0C
	STA.w $0C0C
	REP.b #$30
	LDX.w #DATA_03ADE0
	LDA.w $0342
	BIT.w #$0400
	BEQ.b CODE_029FDC
	BIT.w #$0800
	BNE.b CODE_029FDC
	LDX.w #DATA_03ADBC
CODE_029FDC:
	TXA
	JSL.l CODE_00CB69
CODE_029FE1:
	RTL

CODE_029FE2:
	REP.b #$30
	PHX
	LDA.w #$401C
	CPX.w #!RAM_FB2000_Level_Smiloids_SpriteTableStart
	BEQ.b CODE_029FF0
	LDA.w #$401D
CODE_029FF0:
	PHA
	LDY.w #$3344
	LDA.b FB2000_Level_Smiloid[$00].FreezeTimerLo,x
	BEQ.b CODE_02A003
	CMP.w #$0010
	BCS.b CODE_02A000
	LSR
	BCS.b CODE_02A003
CODE_02A000:
	LDY.w #$3144
CODE_02A003:
	LDA.w #$73DC
	CPX.w #!RAM_FB2000_Level_Smiloids_SpriteTableStart
	BNE.b CODE_02A019
	LDA.w #$03DC
	LDX.w $12A2
	CPX.w #$0002
	BCS.b CODE_02A019
	LDA.w #$3BD7
CODE_02A019:
	TAX
	TYA
	PLY
	JSL.l CODE_01AA0B
	REP.b #$30
	PLX
	REP.b #$30
	PHX
	LDA.w #$401E
	CPX.w #!RAM_FB2000_Level_Smiloids_SpriteTableStart
	BEQ.b CODE_02A031
	LDA.w #$401F
CODE_02A031:
	PHA
	LDY.w #$3348
	LDA.b FB2000_Level_Smiloid[$00].ShieldTimerLo,x
	BEQ.b CODE_02A044
	CMP.w #$0010
	BCS.b CODE_02A041
	LSR
	BCS.b CODE_02A044
CODE_02A041:
	LDY.w #$3148
CODE_02A044:
	LDA.w #$8BDD
	CPX.w #!RAM_FB2000_Level_Smiloids_SpriteTableStart
	BNE.b CODE_02A05A
	LDA.w #$1BDD
	LDX.w $12A2
	CPX.w #$0002
	BCS.b CODE_02A05A
	LDA.w #$5BD7
CODE_02A05A:
	TAX
	TYA
	PLY
	JSL.l CODE_01AA0B
	REP.b #$30
	PLX
	REP.b #$30
	PHX
	LDA.w #$4020
	CPX.w #!RAM_FB2000_Level_Smiloids_SpriteTableStart
	BEQ.b CODE_02A072
	LDA.w #$4021
CODE_02A072:
	PHA
	LDY.w #$334C
	LDA.b FB2000_Level_Smiloid[$00].StealthTimerLo,x
	BEQ.b CODE_02A085
	CMP.w #$0010
	BCS.b CODE_02A082
	LSR
	BCS.b CODE_02A085
CODE_02A082:
	LDY.w #$314C
CODE_02A085:
	LDA.w #$A3DD
	CPX.w #!RAM_FB2000_Level_Smiloids_SpriteTableStart
	BNE.b CODE_02A09B
	LDA.w #$33DD
	LDX.w $12A2
	CPX.w #$0002
	BCS.b CODE_02A09B
	LDA.w #$7BD7
CODE_02A09B:
	TAX
	TYA
	PLY
	JSL.l CODE_01AA0B
	REP.b #$30
	PLX
	RTS

CODE_02A0A6:
	REP.b #$30
	LDY.w #$7C00
	CPX.w #!RAM_FB2000_Level_Smiloids_SpriteTableStart
	BEQ.b CODE_02A0B3
	LDY.w #$7DC0
CODE_02A0B3:
	STY.w $1F5B
	PHX
	LDA.b $49,x
	CMP.w #$0015
	BCC.b CODE_02A0C1
	LDA.w #$0014
CODE_02A0C1:
	ASL
	TAX
	LDA.w $12A2
	CMP.w #$0002
	BEQ.b CODE_02A0D4
	LDA.w DATA_03AA59,x
	JSL.l CODE_00CB69
	BRA.b CODE_02A0DB

CODE_02A0D4:
	LDA.w DATA_03AB1C,x
	JSL.l CODE_00CB69
CODE_02A0DB:
	REP.b #$30
	PLX
	PHX
	SEP.b #$20
	LDA.b $31,x
	REP.b #$20
	AND.w #$00FF
	CMP.w #$0007
	BCC.b CODE_02A0F0
	LDA.w #$0007
CODE_02A0F0:
	ASL
	TAX
	LDA.w $12A2
	CMP.w #$0002
	BEQ.b CODE_02A0FF
	LDA.w DATA_03AB8C,x
	BRA.b CODE_02A102

CODE_02A0FF:
	LDA.w DATA_03ABDB,x
CODE_02A102:
	JSL.l CODE_00CB69
	REP.b #$30
	PLX
	PHX
	LDA.b $2A,x
	CMP.w #$0006
	BCC.b CODE_02A114
	LDA.w #$0006
CODE_02A114:
	ASL
	TAX
	LDA.w $12A2
	CMP.w #$0002
	BEQ.b CODE_02A127
	LDA.w DATA_03AC1D,x
	JSL.l CODE_00CB69
	BRA.b CODE_02A12E

CODE_02A127:
	LDA.w DATA_03AC58,x
	JSL.l CODE_00CB69
CODE_02A12E:
	REP.b #$30
	PLX
	RTS

CODE_02A132:
	REP.b #$30
	CPX.w #!RAM_FB2000_Level_Smiloids_SpriteTableStart
	BNE.b CODE_02A151
	LDA.w $12A2
	CMP.w #$0002
	BEQ.b CODE_02A149
	LDA.w #$7D89
	STA.w $1F5B
	BRA.b CODE_02A15D

CODE_02A149:
	LDA.w #$7C00
	STA.w $1F5B
	BRA.b CODE_02A15D

CODE_02A151:
	LDA.w #$7DC0
	STA.w $1F5B
	CPX.w #$0C0A
	BEQ.b CODE_02A15D
	RTL

CODE_02A15D:
	REP.b #$30
	LDA.w $0344
	CMP.w #$0032
	BCC.b CODE_02A178
	LDA.w #$0002
	BIT.b $02,x
	BNE.b CODE_02A171
	BRL.w CODE_02A1F7

CODE_02A171:
	LDA.w #$FFFD
	AND.b $02,x
	STA.b $02,x
CODE_02A178:
	PHX
	LDA.w $0342
	BIT.w #$0400
	BEQ.b CODE_02A1B6
	BIT.w #$0800
	BNE.b CODE_02A1B6
	STZ.w $036C
	LDX.w #$036C
	LDA.w $0352
	LDY.w #$0000
	JSL.l CODE_00CA52
	REP.b #$30
	LDX.w #$0101
	LDA.w $12A2
	CMP.w #$0002
	BEQ.b CODE_02A1A6
	LDX.w #$0168
CODE_02A1A6:
	LDY.w #$0001
	LDA.w #$036C
	JSL.l CODE_00983D
	REP.b #$30
	PLX
	BRL.w CODE_02A1F7

CODE_02A1B6:
	STZ.w $036C
	LDX.w #$036C
	LDY.w #$0000
	LDA.w $0344
	BEQ.b CODE_02A1C5
	DEC
CODE_02A1C5:
	JSL.l CODE_00CA52
	REP.b #$30
	LDY.w #$0001
	LDA.w $0344
	CMP.w #$0032
	BCS.b CODE_02A1DF
	LDA.w $034A
	LSR
	BCS.b CODE_02A1DF
	LDY.w #$0002
CODE_02A1DF:
	LDX.w #$0101
	LDA.w $12A2
	CMP.w #$0002
	BEQ.b CODE_02A1ED
	LDX.w #$0168
CODE_02A1ED:
	LDA.w #$036C
	JSL.l CODE_00983D
	REP.b #$30
	PLX
CODE_02A1F7:
	LDA.w #$0008
	BIT.b $02,x
	BEQ.b CODE_02A239
	LDA.w #$FFF7
	AND.b $02,x
	STA.b $02,x
	PHX
	STZ.w $036C
	SEP.b #$20
	LDA.b $36,x
	REP.b #$20
	AND.w #$00FF
	TAY
	LDA.b $34,x
	LDX.w #$036C
	JSL.l CODE_00CA52
	REP.b #$30
	LDX.w #$0141
	LDA.w $12A2
	CMP.w #$0002
	BEQ.b CODE_02A22C
	LDX.w #$0188
CODE_02A22C:
	LDY.w #$0002
	LDA.w #$036C
	JSL.l CODE_00983D
	REP.b #$30
	PLX
CODE_02A239:
	LDA.w #$0020
	BIT.b $02,x
	BEQ.b CODE_02A274
	LDA.w #$FFDF
	AND.b $02,x
	STA.b $02,x
	PHX
	STZ.w $036C
	LDA.b $37,x
	LDY.w #$0000
	LDX.w #$036C
	JSL.l CODE_00CA52
	REP.b #$30
	LDX.w #$0181
	LDA.w $12A2
	CMP.w #$0002
	BEQ.b CODE_02A267
	LDX.w #$01A8
CODE_02A267:
	LDY.w #$0003
	LDA.w #$036C
	JSL.l CODE_00983D
	REP.b #$30
	PLX
CODE_02A274:
	PHX
	LDA.w #$2000
	BIT.b $02,x
	BEQ.b CODE_02A283
	LDA.b $45,x
	TAX
	JSL.l CODE_0096AA
CODE_02A283:
	REP.b #$30
	PLX
	LDA.w #$0010
	BIT.b $02,x
	BEQ.b CODE_02A29B
	LDA.w #$FFEF
	AND.b $02,x
	STA.b $02,x
	PHX
	JSR.w CODE_029FE2
	REP.b #$30
	PLX
CODE_02A29B:
	LDA.w #$8000
	BIT.b $02,x
	BEQ.b CODE_02A2B0
	LDA.w #$7FFF
	AND.b $02,x
	STA.b $02,x
	PHX
	JSR.w CODE_02A0A6
	REP.b #$30
	PLX
CODE_02A2B0:
	RTL

CODE_02A2B1:
	REP.b #$30
	STY.w $0728
	TAY
	LDA.w DATA_03AE3D+$01,y
	BEQ.b CODE_02A2CB
	SEP.b #$20
	LDA.w DATA_03AE3D,y
	PHA
	REP.b #$20
	LDA.w DATA_03AE3D+$01,y
	PHA
	LDY.w $0728
CODE_02A2CB:
	RTL

CODE_02A2CC:
	REP.b #$30
	LDA.b $06,x
	CMP.w #$0000
	BNE.b CODE_02A2D6
CODE_02A2D5:
	RTS

CODE_02A2D6:
	LDY.b $0A,x
	LDA.w $0000,y
	BIT.w #$0010
	BEQ.b CODE_02A2D5
	BIT.w #$0040
	BNE.b CODE_02A2D5
	LDA.w $0039,y
	BIT.w #$8000
	BEQ.b CODE_02A2D5
	REP.b #$30
	LDA.b $06,x
	CMP.w #$000E
	BEQ.b CODE_02A2FD
	LDA.w #$0003
	JSL.l CODE_02C90B
CODE_02A2FD:
	REP.b #$30
	LDA.b $00,x
	BIT.w #$0020
	BNE.b CODE_02A30D
	LDA.w #$FFFE
	AND.b $00,x
	STA.b $00,x
CODE_02A30D:
	LDA.b $06,x
	PHA
	LDA.w #$0000
	STA.b $06,x
	PHY
	LDY.b $12,x
	BNE.b CODE_02A324
	LDA.w #$000E
	CMP.b $03,S
	BEQ.b CODE_02A324
	LDY.w #$0001
CODE_02A324:
	STY.w $072A
	PLY
	PLA
	PHA
	ASL
	CLC
	ADC.b $01,S
	JSL.l CODE_02A2B1
	REP.b #$20
	PLA
	RTS

CODE_02A336:
	REP.b #$30
	LDA.b $06,x
	ASL
	CLC
	ADC.b $06,x
	TAY
	LDA.w DATA_03AF09+$01,y
	BEQ.b CODE_02A350
	SEP.b #$20
	LDA.w DATA_03AF09,y
	PHA
	REP.b #$20
	LDA.w DATA_03AF09+$01,y
	PHA
CODE_02A350:
	RTL

CODE_02A351:
	REP.b #$30
	LDX.w #$072C
CODE_02A356:
	REP.b #$30
	LDA.b $00,x
	BIT.w #$0001
	BEQ.b CODE_02A3BF
	BIT.w #$0010
	BEQ.b CODE_02A372
	LDA.b $06,x
	CMP.w #$0014
	BCS.b CODE_02A372
	PHX
	JSR.w CODE_02A2CC
	REP.b #$30
	PLX
CODE_02A372:
	LDA.b $06,x
	CMP.w #$0020
	BCC.b CODE_02A38A
	PHX
	JSL.l CODE_018E96
	REP.b #$30
	PLX
	LDA.w #$0018
	BIT.b $00,x
	BNE.b CODE_02A3A7
	BRA.b CODE_02A3BF

CODE_02A38A:
	REP.b #$30
	LDA.b $00,x
	BIT.w #$0008
	BNE.b CODE_02A3A7
	BIT.w #$0010
	BEQ.b CODE_02A3BF
	LDA.b $0A,x
	CMP.b $0C,x
	BEQ.b CODE_02A3BF
	TAY
	LDA.w $0000,y
	BIT.w #$0100
	BNE.b CODE_02A3BF
CODE_02A3A7:
	PHX
	JSL.l CODE_02A336
	REP.b #$30
	PLX
	LDA.w #$0020
	BIT.b $00,x
	BEQ.b CODE_02A3BF
	PHX
	LDY.b $08,x
	JSR.w CODE_02A3CD
	REP.b #$30
	PLX
CODE_02A3BF:
	REP.b #$30
	TXA
	CLC
	ADC.w #$0014
	TAX
	CPX.w #$09AC
	BNE.b CODE_02A356
	RTL

CODE_02A3CD:
	JSL.l CODE_029DCB
	REP.b #$30
	LDA.w #$0008
	BIT.b $00,x
	BEQ.b CODE_02A3E3
	LDA.w $0722
	STA.w $0726
	JSR.w CODE_02A3F6
CODE_02A3E3:
	REP.b #$30
	LDA.w #$0010
	BIT.b $00,x
	BEQ.b CODE_02A3F5
	LDA.w $0724
	STA.w $0726
	JSR.w CODE_02A3F6
CODE_02A3F5:
	RTS

CODE_02A3F6:
	REP.b #$30
	LDA.w #$0004
	BIT.w $0726
	BEQ.b CODE_02A434
	LDA.w #$0002
	BIT.b $00,x
	BEQ.b CODE_02A413
	PHX
	PHY
	JSL.l CODE_018FAC
	REP.b #$30
	PLY
	PLX
	BRA.b CODE_02A434

CODE_02A413:
	SEP.b #$20
	LDA.b [$71],y
	INY
	REP.b #$20
	PHA
	AND.w #$000F
	XBA
	CLC
	ADC.w #$0080
	STA.b $02,x
	PLA
	LSR
	LSR
	LSR
	LSR
	AND.w #$000F
	XBA
	CLC
	ADC.w #$0080
	STA.b $04,x
CODE_02A434:
	REP.b #$30
	LDA.w #$0008
	BIT.w $0726
	BEQ.b CODE_02A467
	SEP.b #$20
	LDA.b [$71],y
	INY
	PHY
	LDY.b $0A,x
	PHA
	AND.b #$0F
	STA.w $0005,y
	LDA.b #$80
	STA.w $0004,y
	PLA
	LSR
	LSR
	LSR
	LSR
	AND.b #$0F
	STA.w $0008,y
	LDA.b #$80
	STA.w $0007,y
	LDA.b #$05
	JSL.l CODE_02C90B
	PLY
CODE_02A467:
	REP.b #$30
	LDA.w #$0010
	BIT.w $0726
	BEQ.b CODE_02A478
	LDA.w #$FFFE
	AND.b $00,x
	STA.b $00,x
CODE_02A478:
	REP.b #$30
	LDA.w #$0020
	BIT.w $0726
	BEQ.b CODE_02A492
	PHX
	PHY
	LDA.b $0A,x
	TAX
	LDY.w #$FFFF
	JSL.l CODE_02ACA4
	REP.b #$30
	PLY
	PLX
CODE_02A492:
	REP.b #$30
	LDA.w #$0040
	BIT.w $0726
	BEQ.b CODE_02A4A8
	SEP.b #$20
	LDA.b [$71],y
	INY
	REP.b #$20
	AND.w #$00FF
	STA.b $06,x
CODE_02A4A8:
	REP.b #$30
	LDA.w #$0080
	BIT.w $0726
	BEQ.b CODE_02A4B8
	LDA.b [$71],y
	INY
	INY
	STA.b $08,x
CODE_02A4B8:
	RTS

CODE_02A4B9:
	REP.b #$30
	LDA.b $06,x
	CMP.w #$0030
	BCC.b CODE_02A4C5
CODE_02A4C2:
	JMP.w CODE_02A4C2

CODE_02A4C5:
	NOP
	ASL
	CLC
	ADC.b $06,x
	TAY
	LDA.w DATA_03AE79+$01,y
	BEQ.b CODE_02A4DC
	SEP.b #$20
	LDA.w DATA_03AE79,y
	PHA
	REP.b #$20
	LDA.w DATA_03AE79+$01,y
	PHA
CODE_02A4DC:
	RTL

CODE_02A4DD:
	REP.b #$30
	LDA.w $034A
	LSR
	BCS.b CODE_02A53C
	LDY.w $12A2
	LDX.w #!RAM_FB2000_Level_Smiloids_SpriteTableStart
CODE_02A4EB:
	LDA.b FB2000_Level_Smiloid[$00].ShieldTimerLo,x
	BEQ.b CODE_02A4FD
	DEC.b FB2000_Level_Smiloid[$00].ShieldTimerLo,x
	CMP.w #$0010
	BCS.b CODE_02A4FD
	LDA.w #$0010
	ORA.b $02,x
	STA.b $02,x
CODE_02A4FD:
	LDA.b FB2000_Level_Smiloid[$00].FreezeTimerLo,x
	BEQ.b CODE_02A50F
	DEC.b FB2000_Level_Smiloid[$00].FreezeTimerLo,x
	CMP.w #$0010
	BCS.b CODE_02A50F
	LDA.w #$0010
	ORA.b $02,x
	STA.b $02,x
CODE_02A50F:
	LDA.b FB2000_Level_Smiloid[$00].StealthTimerLo,x
	BEQ.b CODE_02A521
	DEC.b FB2000_Level_Smiloid[$00].StealthTimerLo,x
	CMP.w #$0010
	BCS.b CODE_02A521
	LDA.w #$0010
	ORA.b $02,x
	STA.b $02,x
CODE_02A521:
	LDA.b $4F,x
	BEQ.b CODE_02A533
	DEC.b $4F,x
	CMP.w #$0010
	BCS.b CODE_02A533
	LDA.w #$0010
	ORA.b $02,x
	STA.b $02,x
CODE_02A533:
	TXA
	CLC
	ADC.w #$0070
	TAX
	DEY
	BNE.b CODE_02A4EB
CODE_02A53C:
	REP.b #$30
	LDX.w #$072C
CODE_02A541:
	REP.b #$30
	LDA.b $00,x
	BIT.w #$0001
	BEQ.b CODE_02A56A
	AND.w #$FFE7
	STA.b $00,x
	BIT.w #$0040
	BEQ.b CODE_02A55C
	PHX
	JSL.l CODE_018E89
	REP.b #$30
	PLX
CODE_02A55C:
	LDA.b $0A,x
	STA.b $0C,x
	STZ.b $0A,x
	PHX
	JSL.l CODE_02A4B9
	REP.b #$30
	PLX
CODE_02A56A:
	REP.b #$30
	TXA
	CLC
	ADC.w #$0014
	TAX
	CPX.w #$09AC
	BNE.b CODE_02A541
	RTL

CODE_02A578:
	RTL

CODE_02A579:
	REP.b #$30
	LDX.w #$072C
	LDY.w #$0020
CODE_02A581:
	STZ.b $00,x
	TXA
	CLC
	ADC.w #$0014
	TAX
	DEY
	BNE.b CODE_02A581
	RTL

CODE_02A58D:
	REP.b #$30
	PHX
	SEP.b #$20
	LDA.b $03,x
	STA.w $0728
	LDA.b $05,x
	STA.w $0729
	REP.b #$20
	LDX.w #$072C
CODE_02A5A1:
	TXA
	CMP.b $01,S
	BEQ.b CODE_02A5C2
	LDA.b $00,x
	BIT.w #$0001
	BEQ.b CODE_02A5C2
	BIT.w #$0002
	BNE.b CODE_02A5C2
	SEP.b #$20
	LDA.b $03,x
	CMP.w $0728
	BNE.b CODE_02A5C2
	LDA.b $05,x
	CMP.w $0729
	BEQ.b CODE_02A5D2
CODE_02A5C2:
	REP.b #$20
	TXA
	CLC
	ADC.w #$0014
	TAX
	CPX.w #$09AC
	BNE.b CODE_02A5A1
	PLX
	CLC
	RTS

CODE_02A5D2:
	PLX
	SEC
	RTS

CODE_02A5D5:
	REP.b #$30
	LDX.w #$072C
CODE_02A5DA:
	LDA.w #$0001
	BIT.b $00,x
	BEQ.b CODE_02A5ED
	TXA
	CLC
	ADC.w #$0014
	TAX
	CPX.w #$09AC
	BNE.b CODE_02A5DA
	RTL

CODE_02A5ED:
	REP.b #$30
	STZ.b $00,x
	STZ.b $0A,x
	STZ.b $0C,x
	SEP.b #$20
	LDA.b [$71],y
	INY
	REP.b #$30
	AND.w #$00FF
	PHA
	CMP.w #$000C
	BEQ.b CODE_02A616
	CMP.w #$000F
	BEQ.b CODE_02A616
	CMP.w #$0002
	BEQ.b CODE_02A616
	CMP.w #$0008
	BEQ.b CODE_02A616
	BRA.b CODE_02A620

CODE_02A616:
	LDA.w $0BF6
	BIT.w #$0008
	BEQ.b CODE_02A620
	PLA
	RTL

CODE_02A620:
	PLA
	SEP.b #$20
	PHA
	REP.b #$30
	AND.w #$003F
	STA.b $06,x
	CMP.w #$0014
	BCS.b CODE_02A641
	PHX
	ASL
	TAX
	LDA.w DATA_03A890,x
	ORA.w DATA_03A8B8,x
	ORA.w DATA_03A8E0,x
	PLX
	ORA.b $00,x
	STA.b $00,x
CODE_02A641:
	SEP.b #$20
	PLA
	AND.b #$C0
	BEQ.b CODE_02A651
	REP.b #$20
	LDA.w #$0020
	ORA.b $00,x
	STA.b $00,x
CODE_02A651:
	SEP.b #$20
	LDA.b [$71],y
	INY
	PHA
	AND.b #$0F
	STA.b $03,x
	LDA.b #$80
	STA.b $02,x
	PLA
	LSR
	LSR
	LSR
	LSR
	AND.b #$0F
	STA.b $05,x
	LDA.b #$80
	STA.b $04,x
	LDA.b $06,x
	CMP.b #$20
	BCS.b CODE_02A678
	JSR.w CODE_02A58D
	BCC.b CODE_02A678
	RTL

CODE_02A678:
	REP.b #$20
	LDA.w #$0001
	ORA.b $00,x
	STA.b $00,x
	LDA.b $06,x
	CMP.w #$0014
	BCC.b CODE_02A6C6
	CMP.w #$0020
	BCC.b CODE_02A703
	REP.b #$30
	LDA.w #$0002
	ORA.b $00,x
	STA.b $00,x
	PHX
	PHY
	LDA.b $04,x
	AND.w #$0F00
	XBA
	TAY
	LDA.b $02,x
	AND.w #$0F00
	XBA
	TAX
	REP.b #$30
	LDA.w #$0000
	PHX
	TYA
	XBA
	LSR
	LSR
	LSR
	CLC
	ADC.b $01,S
	ADC.b $01,S
	TAX
	PLA
	REP.b #$30
	TXA
	PLY
	PLX
	STA.b $02,x
	JSL.l CODE_01917E
	BRL.w CODE_02A739

CODE_02A6C6:
	SEP.b #$20
	LDA.b [$71],y
	INY
	REP.b #$20
	AND.w #$00FF
	STA.b $12,x
	LDA.w #$0010
	STA.b $0E,x
	LDA.b $06,x
	CMP.w #$0002
	BNE.b CODE_02A6E1
	INC.w $03B3
CODE_02A6E1:
	CMP.w #$000F
	BNE.b CODE_02A6E9
	INC.w $03B5
CODE_02A6E9:
	CMP.w #$0008
	BNE.b CODE_02A6F1
	INC.w $03B7
CODE_02A6F1:
	CMP.w #$0010
	BNE.b CODE_02A6F9
	INC.w $03B9
CODE_02A6F9:
	CMP.w #$000C
	BNE.b CODE_02A701
	INC.w $03BB
CODE_02A701:
	BRA.b CODE_02A739

CODE_02A703:
	REP.b #$20
	LDA.w #$0004
	ORA.b $00,x
	STA.b $00,x
	SEP.b #$20
	LDA.b [$71],y
	INY
	REP.b #$20
	AND.w #$00FF
	STA.b $12,x
	PHY
	LDA.b $06,x
	LDY.w #$0038
	CMP.w #$0014
	BEQ.b CODE_02A736
	LDY.w #$0038
	CMP.w #$0015
	BEQ.b CODE_02A736
	LDY.w #$0038
	CMP.w #$0016
	BEQ.b CODE_02A736
	LDY.w #$0000
CODE_02A736:
	STY.b $0E,x
	PLY
CODE_02A739:
	REP.b #$30
	LDA.b [$71],y
	STA.b $08,x
	RTL

CODE_02A740:
	JSL.l CODE_01988B
	BCS.b CODE_02A7B7
	REP.b #$30
	PHX
	LDX.w $0B2C
	STA.b $04,x
	PLA
	STA.b $02,x
	ASL
	PHP
	ROR
	PLP
	ROR
	STA.w $0728
	TYA
	STA.b $06,x
	PHX
	LDA.b $02,x
	CLC
	ADC.b $04,x
	TAY
	LDA.b $02,x
	SEC
	SBC.b $04,x
	TAX
	JSL.l CODE_00940E
	BCC.b CODE_02A7B4
	REP.b #$30
	PLX
	LDA.b $04,S
	TAY
	LDA.w $0000,y
	AND.w #$7F00
	ORA.w #$0004
	STA.b $00,x
	LDA.w $0006,y
	STA.b $08,x
	LDA.w $0000,y
	BIT.w #$0010
	BEQ.b CODE_02A794
	LDA.w #$0010
	ORA.b $00,x
	STA.b $00,x
CODE_02A794:
	LDA.w $0000,y
	BIT.w #$0008
	BEQ.b CODE_02A7A3
	LDA.w #$0020
	ORA.b $00,x
	STA.b $00,x
CODE_02A7A3:
	LDA.w $0B8E
	STA.b $0A,x
	PHX
	TXA
	CLC
	ADC.w #$000C
	STA.w $0B2C
	PLA
	CLC
	RTL

CODE_02A7B4:
	REP.b #$10
	PLX
CODE_02A7B7:
	SEC
	RTL

CODE_02A7B9:
	REP.b #$30
	LDA.b $08,x
	CMP.w #$0014
	BCC.b CODE_02A7C5
	BRL.w CODE_02A9F9

CODE_02A7C5:
	REP.b #$30
	PHX
	LDA.w #$0048
	CLC
	ADC.b $02,x
	PHA
	LDA.w #$0038
	CLC
	ADC.b $06,x
	TAY
	LDA.b $04,x
	PLX
	JSL.l CODE_008A39
	REP.b #$30
	PLX
	LDA.b $00,x
	BIT.w #$0010
	BNE.b CODE_02A7EA
	BRL.w CODE_02A93D

CODE_02A7EA:
	REP.b #$30
	PHX
	LDA.w #$0048
	CLC
	ADC.b $02,x
	PHA
	LDA.b $06,x
	LSR
	LSR
	STA.w $0728
	LSR
	CLC
	ADC.w $0728
	EOR.w #$FFFF
	INC
	CLC
	ADC.w #$0038
	TAY
	LDA.b $00,x
	BIT.w #$0800
	BNE.b CODE_02A83E
	BIT.w #$1000
	BNE.b CODE_02A832
	BIT.w #$2000
	BNE.b CODE_02A826
	LDA.b $04,x
	PLX
	PHA
	PHX
	PHY
	JSL.l CODE_008DEC
	BRA.b CODE_02A86E

CODE_02A826:
	LDA.b $04,x
	PLX
	PHA
	PHX
	PHY
	JSL.l CODE_008D48
	BRA.b CODE_02A86E

CODE_02A832:
	LDA.b $04,x
	PLX
	PHA
	PHX
	PHY
	JSL.l CODE_008C00
	BRA.b CODE_02A86E

CODE_02A83E:
	REP.b #$30
	LDA.b $00,x
	BIT.w #$1000
	BNE.b CODE_02A864
	BIT.w #$2000
	BNE.b CODE_02A858
	LDA.b $04,x
	PLX
	PHA
	PHX
	PHY
	JSL.l CODE_009146
	BRA.b CODE_02A86E

CODE_02A858:
	LDA.b $04,x
	PLX
	PHA
	PHX
	PHY
	JSL.l CODE_0090FC
	BRA.b CODE_02A86E

CODE_02A864:
	LDA.b $04,x
	PLX
	PHA
	PHX
	PHY
	JSL.l CODE_009068
CODE_02A86E:
	REP.b #$30
	PLY
	PLX
	PLA
	JSL.l CODE_008A30
	REP.b #$30
	PLX
	PHX
	LDA.w #$0048
	CLC
	ADC.b $02,x
	PHA
	LDA.b $06,x
	LSR
	LSR
	STA.w $0728
	LSR
	CLC
	ADC.w $0728
	CLC
	ADC.w #$0038
	TAY
	LDA.b $00,x
	BIT.w #$0400
	BNE.b CODE_02A8C8
	BIT.w #$1000
	BNE.b CODE_02A8BC
	BIT.w #$2000
	BNE.b CODE_02A8B0
	LDA.b $04,x
	PLX
	PHA
	PHX
	PHY
	JSL.l CODE_008DF5
	BRA.b CODE_02A8F8

CODE_02A8B0:
	LDA.b $04,x
	PLX
	PHA
	PHX
	PHY
	JSL.l CODE_008D51
	BRA.b CODE_02A8F8

CODE_02A8BC:
	LDA.b $04,x
	PLX
	PHA
	PHX
	PHY
	JSL.l CODE_008C09
	BRA.b CODE_02A8F8

CODE_02A8C8:
	REP.b #$30
	LDA.b $00,x
	BIT.w #$1000
	BNE.b CODE_02A8EE
	BIT.w #$2000
	BNE.b CODE_02A8E2
	LDA.b $04,x
	PLX
	PHA
	PHX
	PHY
	JSL.l CODE_00914F
	BRA.b CODE_02A8F8

CODE_02A8E2:
	LDA.b $04,x
	PLX
	PHA
	PHX
	PHY
	JSL.l CODE_009105
	BRA.b CODE_02A8F8

CODE_02A8EE:
	LDA.b $04,x
	PLX
	PHA
	PHX
	PHY
	JSL.l CODE_009071
CODE_02A8F8:
	REP.b #$30
	PLY
	PLX
	PLA
	JSL.l CODE_008A30
	REP.b #$30
	PLX
	LDA.b $04,x
	CMP.w #$000D
	BCC.b CODE_02A93C
	LDA.w $034A
	LSR
	BCS.b CODE_02A93C
	LDA.w #$0048
	CLC
	ADC.b $02,x
	SEC
	SBC.w #$000C
	PHA
	LDY.w #$002C
	LDA.b $08,x
	ASL
	TAX
	LDA.w DATA_03A868,x
	BNE.b CODE_02A92A
	PLA
	RTL

CODE_02A92A:
	STA.b $66
	SEP.b #$20
	LDA.b #DATA_068000>>16
	STA.b $68
	REP.b #$20
	LDA.w #$0000
	PLX
	JSL.l CODE_00AA4C
CODE_02A93C:
	RTL

CODE_02A93D:
	REP.b #$30
	PHX
	LDA.w #$0048
	CLC
	ADC.b $02,x
	PHA
	LDY.w #$0038
	LDA.b $00,x
	BIT.w #$0800
	BNE.b CODE_02A976
	BIT.w #$1000
	BNE.b CODE_02A96D
	BIT.w #$2000
	BNE.b CODE_02A964
	LDA.b $04,x
	PLX
	JSL.l CODE_008DEC
	BRA.b CODE_02A99D

CODE_02A964:
	LDA.b $04,x
	PLX
	JSL.l CODE_008D48
	BRA.b CODE_02A99D

CODE_02A96D:
	LDA.b $04,x
	PLX
	JSL.l CODE_008C00
	BRA.b CODE_02A99D

CODE_02A976:
	REP.b #$30
	LDA.b $00,x
	BIT.w #$1000
	BNE.b CODE_02A996
	BIT.w #$2000
	BNE.b CODE_02A98D
	LDA.b $04,x
	PLX
	JSL.l CODE_009146
	BRA.b CODE_02A99D

CODE_02A98D:
	LDA.b $04,x
	PLX
	JSL.l CODE_0090FC
	BRA.b CODE_02A99D

CODE_02A996:
	LDA.b $04,x
	PLX
	JSL.l CODE_009068
CODE_02A99D:
	REP.b #$30
	PLX
	LDA.w #$0048
	CLC
	ADC.b $02,x
	PHA
	LDY.w #$0038
	LDA.b $00,x
	BIT.w #$0400
	BNE.b CODE_02A9D3
	BIT.w #$1000
	BNE.b CODE_02A9CB
	BIT.w #$2000
	BNE.b CODE_02A9C3
	LDA.b $04,x
	PLX
	JSL.l CODE_008DF5
	RTL

CODE_02A9C3:
	LDA.b $04,x
	PLX
	JSL.l CODE_008D51
	RTL

CODE_02A9CB:
	LDA.b $04,x
	PLX
	JSL.l CODE_008C09
	RTL

CODE_02A9D3:
	REP.b #$30
	LDA.b $00,x
	BIT.w #$1000
	BNE.b CODE_02A9F1
	BIT.w #$2000
	BNE.b CODE_02A9E9
	LDA.b $04,x
	PLX
	JSL.l CODE_00914F
	RTL

CODE_02A9E9:
	LDA.b $04,x
	PLX
	JSL.l CODE_009105
	RTL

CODE_02A9F1:
	LDA.b $04,x
	PLX
	JSL.l CODE_009071
	RTL

CODE_02A9F9:
	REP.b #$30
	LDA.b $08,x
	CMP.w #$0017
	BEQ.b CODE_02AA07
	CMP.w #$0018
	BNE.b CODE_02AA1D
CODE_02AA07:
	LDA.w #$0048
	CLC
	ADC.b $02,x
	PHA
	LDA.b $06,x
	CLC
	ADC.w #$0038
	TAY
	LDA.b $04,x
	PLX
	JSL.l CODE_008D12
	RTL

CODE_02AA1D:
	REP.b #$30
	PHX
	LDA.w #$0048
	CLC
	ADC.b $02,x
	PHA
	LDA.b $06,x
	CLC
	ADC.w #$0038
	TAY
	LDA.b $04,x
	LSR
	LSR
	CLC
	ADC.b $04,x
	PLX
	PHA
	LDA.w $034A
	LSR
	BCS.b CODE_02AA44
	PLA
	JSL.l CODE_008A30
	BRA.b CODE_02AA4B

CODE_02AA44:
	REP.b #$30
	PLA
	JSL.l CODE_008E08
CODE_02AA4B:
	REP.b #$30
	PLX
	REP.b #$30
	LDA.w #$0048
	CLC
	ADC.b $02,x
	PHA
	LDA.b $06,x
	CLC
	ADC.w #$0038
	TAY
	LDA.b $04,x
	PHA
	LDA.b $08,x
	CMP.w #$0014
	BEQ.b CODE_02AA75
	CMP.w #$0015
	BEQ.b CODE_02AA7C
	CMP.w #$0016
	BEQ.b CODE_02AA83
	PLA
	PLX
	RTL

CODE_02AA75:
	PLA
	PLX
	JSL.l CODE_0089DE
	RTL

CODE_02AA7C:
	PLA
	PLX
	JSL.l CODE_008A82
	RTL

CODE_02AA83:
	PLA
	PLX
	JSL.l CODE_008A30
	RTL

CODE_02AA8A:
	SEP.b #$30
	LDX.b #$00
CODE_02AA8E:
	CMP.w DATA_03AF99,x
	BEQ.b CODE_02AA9B
	INX
	INX
	CPX.b #$40
	BNE.b CODE_02AA8E
	SEC
	RTS

CODE_02AA9B:
	INX
	LDA.w DATA_03AF99,x
	CLC
	RTS

CODE_02AAA1:
	SEP.b #$30
	LDX.b #$01
CODE_02AAA5:
	CMP.w DATA_03AF99,x
	BEQ.b CODE_02AAB0
	INX
	INX
	CPX.b #$41
	BNE.b CODE_02AAA5
CODE_02AAB0:
	DEX
	LDA.w DATA_03AF99,x
	CLC
	RTS

CODE_02AAB6:
	SEP.b #$20
	LDA.w $0B87
	CLC
	ADC.w $0B88
	ADC.w $0B89
	ADC.w $0B8A
	STA.w $0B8B
	SEP.b #$20
	LDA.w $0B87
	AND.b #$1F
	JSR.w CODE_02AAA1
	SEP.b #$20
	STA.w $0B7E
	LDA.w $0B87
	STA.w $0B7D
	LDA.w $0B88
	ASL.w $0B7D
	ROL
	ASL.w $0B7D
	ROL
	ASL.w $0B7D
	ROL
	AND.b #$1F
	JSR.w CODE_02AAA1
	SEP.b #$20
	STA.w $0B7F
	LDA.w $0B88
	LSR
	LSR
	AND.b #$1F
	JSR.w CODE_02AAA1
	SEP.b #$20
	STA.w $0B80
	LDA.w $0B88
	ASL
	LDA.w $0B89
	ROL
	AND.b #$1F
	JSR.w CODE_02AAA1
	SEP.b #$20
	STA.w $0B81
	LDA.w $0B8A
	LSR
	LDA.w $0B89
	ROR
	LSR
	LSR
	LSR
	AND.b #$1F
	JSR.w CODE_02AAA1
	SEP.b #$20
	STA.w $0B82
	LDA.w $0B8A
	LSR
	AND.b #$1F
	JSR.w CODE_02AAA1
	SEP.b #$20
	STA.w $0B83
	LDA.w $0B8A
	STA.w $0B7D
	LDA.w $0B8B
	ASL.w $0B7D
	ROL
	ASL.w $0B7D
	ROL
	AND.b #$1F
	JSR.w CODE_02AAA1
	SEP.b #$20
	STA.w $0B84
	LDA.w $0B8B
	LSR
	LSR
	LSR
	AND.b #$1F
	JSR.w CODE_02AAA1
	SEP.b #$20
	STA.w $0B85
	SEP.b #$20
	STZ.w $0B86
	RTL

CODE_02AB6B:
	BRA.b CODE_02AB6F

CODE_02AB6D:
	SEC
	RTL

CODE_02AB6F:
	SEP.b #$20
	LDA.w $0B7E
	JSR.w CODE_02AA8A
	BCS.b CODE_02AB6D
	SEP.b #$20
	AND.b #$1F
	STA.w $0B87
	LDA.w $0B7F
	JSR.w CODE_02AA8A
	BCS.b CODE_02AB6D
	SEP.b #$20
	PHA
	LSR
	LSR
	LSR
	AND.b #$03
	STA.w $0B88
	PLA
	ASL
	ASL
	ASL
	ASL
	ASL
	AND.b #$E0
	ORA.w $0B87
	STA.w $0B87
	LDA.w $0B80
	JSR.w CODE_02AA8A
	BCS.b CODE_02AB6D
	SEP.b #$20
	ASL
	ASL
	AND.b #$7C
	ORA.w $0B88
	STA.w $0B88
	LDA.w $0B81
	JSR.w CODE_02AA8A
	BCS.b CODE_02AB6D
	SEP.b #$20
	PHA
	ROR
	ROR
	AND.b #$80
	ORA.w $0B88
	STA.w $0B88
	PLA
	LSR
	AND.b #$0F
	STA.w $0B89
	LDA.w $0B82
	JSR.w CODE_02AA8A
	BCS.b CODE_02AC49
	SEP.b #$20
	ASL
	ASL
	ASL
	ASL
	AND.b #$F0
	ORA.w $0B89
	STA.w $0B89
	ROL
	AND.b #$01
	STA.w $0B8A
	LDA.w $0B83
	JSR.w CODE_02AA8A
	BCS.b CODE_02AC49
	SEP.b #$20
	ASL
	AND.b #$3E
	ORA.w $0B8A
	STA.w $0B8A
	LDA.w $0B84
	JSR.w CODE_02AA8A
	BCS.b CODE_02AC49
	SEP.b #$20
	PHA
	ROR
	ROR
	ROR
	AND.b #$C0
	ORA.w $0B8A
	STA.w $0B8A
	PLA
	LSR
	LSR
	AND.b #$07
	STA.w $0B8B
	LDA.w $0B85
	JSR.w CODE_02AA8A
	BCS.b CODE_02AC49
	SEP.b #$20
	ASL
	ASL
	ASL
	AND.b #$F8
	ORA.w $0B8B
	STA.w $0B8B
	SEP.b #$20
	LDA.w $0B87
	CLC
	ADC.w $0B88
	ADC.w $0B89
	ADC.w $0B8A
	CMP.w $0B8B
	BNE.b CODE_02AC49
	CLC
	RTL

CODE_02AC49:
	SEC
	RTL

CODE_02AC4B:				; Note: Routine that loads the enemies for a level.
	REP.b #$30
	LDA.w $0300
	CLC
	ADC.w $12A2
	JSL.l CODE_01999C
	REP.b #$30
	INC.w $0300
	LDA.w #$0102
	STA.b $00,x
	SEP.b #$20
	LDA.b [$71],y
	INY
	PHA
	AND.b #$E0
	STA.b $5F,x
	LDA.b [$71],y
	STA.b $5E,x
	PLA
	REP.b #$20
	AND.w #$001F
	JSL.l CODE_0284A4
	RTL

CODE_02AC7B:
	REP.b #$10
	SEP.b #$20
	LDA.b [$71],y
	INY
	PHA
	REP.b #$20
	AND.w #$000F
	CMP.w $12A2
	BCC.b CODE_02AC91
	SEP.b #$20
	PLA
	RTL

CODE_02AC91:
	JSL.l CODE_01999C
	REP.b #$10
	SEP.b #$20
	PLA
	AND.b #$E0
	STA.b $5F,x
	LDA.b [$71],y
	STA.b $5E,x
	RTL

CODE_02ACA3:
	RTL

CODE_02ACA4:
	REP.b #$30
	LDA.w #$0010
	BIT.b $00,x
	BEQ.b CODE_02ACB6
	LDA.w #$0020
	ORA.b $00,x
	STA.b $00,x
	STY.b $3F,x
CODE_02ACB6:
	RTL

CODE_02ACB7:
	REP.b #$30
	LDA.w #$0010
	BIT.b $00,x
	BEQ.b CODE_02ACC9
	LDA.w #$2000
	ORA.b $00,x
	STA.b $00,x
	STY.b $3F,x
CODE_02ACC9:
	RTL

CODE_02ACCA:
	REP.b #$30
	LDA.w #$0010
	BIT.b $00,x
	BEQ.b CODE_02ACDE
	LDA.b $26,x
	STA.b $24,x
	LDA.w #$0080
	ORA.b $00,x
	STA.b $00,x
CODE_02ACDE:
	RTL

CODE_02ACDF:
	JSL.l CODE_00B8F9
	REP.b #$20
	LDA.w $03C6
	BNE.b CODE_02ACDF
	REP.b #$20
	LDA.w $03C8
	BNE.b CODE_02ACDF
	REP.b #$20
	LDA.w #$0001
	JSL.l CODE_00C91F
	SEP.b #$20
CODE_02ACFC:
	LDA.w $1335
	BNE.b CODE_02ACFC
	SEP.b #$20
	STZ.w $02FF
	STZ.w !REGISTER_HDMAEnable
	REP.b #$20
	LDA.w #$0000
	JSL.l CODE_00923B
	REP.b #$20
	LDA.w #$0000
	JSL.l CODE_00927C
	REP.b #$20
	LDA.w #$0000
	JSL.l CODE_00923B
	REP.b #$20
	LDA.w #$0000
	JSL.l CODE_00927C
	JSL.l CODE_00922E
	REP.b #$20
	LDA.w #$0001
	JSL.l CODE_00923B
	REP.b #$20
	LDA.w #$0001
	JSL.l CODE_00927C
	REP.b #$20
	LDA.w #$0001
	JSL.l CODE_00923B
	REP.b #$20
	LDA.w #$0001
	JSL.l CODE_00927C
	JSL.l CODE_00922E
	JSL.l CODE_028000
	JSL.l CODE_00CADA
	REP.b #$30
	LDA.w $1C91
	ASL
	ASL
	ASL
	ASL
	AND.w #$01C0
	PHA
	LDY.w #$0000
	LDX.w #$0001
	JSL.l CODE_02806C
	REP.b #$30
	PLA
	LDY.w #$00A0
	LDX.w #$0001
	JSL.l CODE_02806C
	REP.b #$20
	LDA.w #$0001
	JSL.l CODE_00C933
	SEP.b #$20
	LDA.b #DATA_03CBF1>>16
	PHA
	REP.b #$30
	LDA.w #DATA_03CBF1
	LDX.w #$0002
	LDY.w #$0000
	JSL.l CODE_00937D
	SEP.b #$20
	PLA
	RTS

CODE_02ADA6:
	REP.b #$20
	LDA.w #$FBF7
	AND.w $0342
	STA.w $0342
	JSL.l CODE_02AF52
	REP.b #$20
	LDA.w #$0010
	ORA.w $0702
	STA.w $0702
	RTL

CODE_02ADC1:
	REP.b #$20
	LDA.w #$FBF7
	AND.w $0342
	STA.w $0342
	LDA.w #$0008
	ORA.w $0342
	STA.w $0342
	LDA.w #$0030
	STA.w $03CE
	REP.b #$20
	STZ.w $0348
	JSL.l CODE_02B164
	RTL

CODE_02ADE5:
	REP.b #$20
	LDA.w #$FBF7
	AND.w $0342
	STA.w $0342
	LDA.w #$0408
	ORA.w $0342
	STA.w $0342
	LDA.w #$0000
	STA.w $03CE
	JSR.w CODE_02ACDF
	REP.b #$20
	LDA.w $0348
	CMP.w #$0006
	BCC.b CODE_02AE0F
	STZ.w $0348
CODE_02AE0F:
	REP.b #$30
	LDY.w #$0000
	LDX.w #DATA_02B142>>16
	LDA.w #DATA_02B142
	JSL.l CODE_029AE4
	RTL

CODE_02AE1F:
	CLC
	JML.l CODE_029A3F

CODE_02AE24:
	CLC
	JML.l CODE_029A0A

CODE_02AE29:
	SEC
	JML.l CODE_029A0A

DATA_02AE2E:
	dw $FFF0 : db CODE_02AECE>>16 : dw CODE_02AECE
	dw $FFF1 : dw $0003,$0009
	dw $0080 : db CODE_02ADE5>>16 : dw CODE_02ADE5
	dw $1000 : db CODE_02ADE5>>16 : dw CODE_02ADE5
	dw $FFF1 : dw $0003,$000C
	dw $0080 : db CODE_02ADA6>>16 : dw CODE_02ADA6
	dw $1000 : db CODE_02ADA6>>16 : dw CODE_02ADA6
	dw $FFF1 : dw $0003,$0010
	dw $0080 : db CODE_02B44A>>16 : dw CODE_02B44A
	dw $1000 : db CODE_02B44A>>16 : dw CODE_02B44A
	dw $FFF2
	dw $0800 : db CODE_02AE1F>>16 : dw CODE_02AE1F
	dw $0400 : db CODE_02AE24>>16 : dw CODE_02AE24
	dw $2000 : db CODE_02AE24>>16 : dw CODE_02AE29
	dw $FFF3

DATA_02AE76:
	dw $FFF0 : db CODE_02AECE>>16 : dw CODE_02AECE
	dw $FFF1 : dw $0003,$0009
	dw $0080 : db CODE_02ADE5>>16 : dw CODE_02ADE5
	dw $1000 : db CODE_02ADE5>>16 : dw CODE_02ADE5
	dw $FFF1 : dw $0003,$000A
	dw $0080 : db CODE_02ADC1>>16 : dw CODE_02ADC1
	dw $1000 : db CODE_02ADC1>>16 : dw CODE_02ADC1
	dw $FFF1 : dw $0003,$000C
	dw $0080 : db CODE_02ADA6>>16 : dw CODE_02ADA6
	dw $1000 : db CODE_02ADA6>>16 : dw CODE_02ADA6
	dw $FFF1 : dw $0003,$0010
	dw $0080 : db CODE_02B44A>>16 : dw CODE_02B44A
	dw $1000 : db CODE_02B44A>>16 : dw CODE_02B44A
	dw $FFF2
	dw $0800 : db CODE_02AE1F>>16 : dw CODE_02AE1F
	dw $0400 : db CODE_02AE24>>16 : dw CODE_02AE24
	dw $2000 : db CODE_02AE24>>16 : dw CODE_02AE29
	dw $FFF3

CODE_02AECE:
	REP.b #$30
	LDX.w #DATA_03CD2B
	LDA.w $1F6B
	BEQ.b CODE_02AEDB
	LDX.w #DATA_03CD03
CODE_02AEDB:
	TXA
	JSL.l CODE_00CB69
	REP.b #$20
	LDA.w #DATA_03CD23
	JSL.l CODE_00CB69
	CLC
	RTL

DATA_02AEEB:
	dw $FFF0 : db CODE_02B053>>16 : dw CODE_02B053
	dw $FFF1 : dw $0001,$000A
	dw $0100 : db CODE_02B0F0>>16 : dw CODE_02B0F0
	dw $0200 : db CODE_02B12D>>16 : dw CODE_02B12D
	dw $FFF1 : dw $0001,$000D
	dw $0100 : db CODE_02B0E9>>16 : dw CODE_02B0E9
	dw $0200 : db CODE_02B126>>16 : dw CODE_02B126
	dw $FFF1 : dw $0001,$0010
	dw $0100 : db CODE_02B0F7>>16 : dw CODE_02B0F7
	dw $0200 : db CODE_02B134>>16 : dw CODE_02B134
	dw $FFF1 : dw $0001,$0013
	dw $0100 : db CODE_02B0FE>>16 : dw CODE_02B0FE
	dw $0200 : db CODE_02B13B>>16 : dw CODE_02B13B
	dw $FFF2
	dw $4000 : db CODE_02B49A>>16 : dw CODE_02B49A
	dw $0800 : db CODE_02AF6E>>16 : dw CODE_02AF6E
	dw $0400 : db CODE_02AF7D>>16 : dw CODE_02AF7D
	dw $2000 : db CODE_02AF8C>>16 : dw CODE_02AF8C
	dw $0080 : db CODE_02C210>>16 : dw CODE_02C210
	dw $1000 : db CODE_02C210>>16 : dw CODE_02C210
	dw $FFF3

CODE_02AF52:
	JSR.w CODE_02ACDF
	JSR.w CODE_02AF9B
	REP.b #$30
	LDA.w #$0006
	STA.w $0348
	LDY.w #$0000
	LDX.w #DATA_02AEEB>>16
	LDA.w #DATA_02AEEB
	JSL.l CODE_029AE4
	RTL

CODE_02AF6E:
	REP.b #$20
	LDA.w $0348
	CMP.w #$0006
	BCC.b CODE_02AF7C
	JSL.l CODE_02AE1F
CODE_02AF7C:
	RTL

CODE_02AF7D:
	REP.b #$20
	LDA.w $0348
	CMP.w #$0006
	BCC.b CODE_02AF8B
	JSL.l CODE_02AE24
CODE_02AF8B:
	RTL

CODE_02AF8C:
	REP.b #$20
	LDA.w $0348
	CMP.w #$0006
	BCC.b CODE_02AF9A
	JSL.l CODE_02AE29
CODE_02AF9A:
	RTL

CODE_02AF9B:
	SEP.b #$20
	STZ.w $02FF
	STZ.w !REGISTER_HDMAEnable
	REP.b #$20
	LDA.w #$0000
	JSL.l CODE_00923B
	REP.b #$20
	LDA.w #$FFFF
	PHA
	LDA.w #$8000
	PHA
	REP.b #$30
	LDA.w #$00FF
	STA.b $BE
	LDX.w #$0052
	LDY.w #$0018
	LDA.w #$000A
	JSL.l CODE_00D1A8
	REP.b #$30
	LDA.w #$00FF
	STA.b $BE
	LDX.w #$0052
	LDY.w #$0030
	LDA.w #$000A
	JSL.l CODE_00D5A8
	REP.b #$30
	LDX.w #$0052
	LDY.w #$0030
	LDA.w #$000A
	JSL.l CODE_00D450
	REP.b #$30
	LDA.w #$00FF
	STA.b $BE
	LDX.w #$0052
	LDY.w #$0048
	LDA.w #$000A
	JSL.l CODE_00D0C3
	REP.b #$30
	LDA.w #$FFFF
	STA.b $BE
	LDX.w #$0052
	LDY.w #$0060
	LDA.w #$000A
	JSL.l CODE_00D5A8
	REP.b #$30
	LDX.w #$0052
	LDY.w #$0060
	LDA.w #$000A
	JSL.l CODE_00D633
	REP.b #$20
	PLA
	PLA
	LDA.w #$0000
	JSL.l CODE_00927C
	JSL.l CODE_00922E
	JSL.l CODE_028000
	RTS

CODE_02B038:
	REP.b #$30
	PHX
	LDY.w #$0000
	LDX.w #$036C
	JSL.l CODE_00CA52
	REP.b #$30
	PLX
	LDY.w #$8003
	LDA.w #$036C
	JSL.l CODE_00CCC9
	RTS

CODE_02B053:
	REP.b #$20
	LDA.w #DATA_03CD63
	JSL.l CODE_00CB69
	REP.b #$20
	LDA.w #DATA_03CD72
	JSL.l CODE_00CB69
	REP.b #$30
	LDX.w #$0304
	LDY.w #$0004
	LDA.w #DATA_03CD4A
	JSL.l CODE_00CCC9
	REP.b #$30
	LDA.w $133C
	LDX.w #$0144
	JSR.w CODE_02B038
	REP.b #$30
	LDA.w $133A
	LDX.w #$01A4
	JSR.w CODE_02B038
	REP.b #$30
	LDA.w $133E
	LDX.w #$0204
	JSR.w CODE_02B038
	REP.b #$30
	LDA.w $1340
	LDX.w #$0264
	JSR.w CODE_02B038
	REP.b #$20
	LDA.w #$0010
	ORA.w $0702
	STA.w $0702
	CLC
	RTL

CODE_02B0AD:
	REP.b #$30
	LDA.w #$0000
	CLC
	ADC.w $133A
	ADC.w $133C
	ADC.w $133E
	ADC.w $1340
	TAY
	CLC
	ADC.w $12A2
	LDX.w $12A2
	RTS

CODE_02B0C8:
	REP.b #$20
	PHA
	JSR.w CODE_02B0AD
	REP.b #$30
	PLX
	CMP.w #$0010
	BCS.b CODE_02B0E8
	CPY.w #$0006
	BCS.b CODE_02B0E8
	INC.b $00,x
	REP.b #$20
	LDA.w #$0050
	ORA.w $0702
	STA.w $0702
CODE_02B0E8:
	RTL

CODE_02B0E9:
	REP.b #$20
	LDA.w #$133A
	BRA.b CODE_02B0C8

CODE_02B0F0:
	REP.b #$20
	LDA.w #$133C
	BRA.b CODE_02B0C8

CODE_02B0F7:
	REP.b #$20
	LDA.w #$133E
	BRA.b CODE_02B0C8

CODE_02B0FE:
	REP.b #$20
	LDA.w #$1340
	BRA.b CODE_02B0C8

CODE_02B105:
	REP.b #$30
	TAX
	LDA.b $00,x
	BEQ.b CODE_02B125
	PHX
	JSR.w CODE_02B0AD
	REP.b #$30
	PLX
	CMP.w #$0003
	BCC.b CODE_02B125
	DEC.b $00,x
	REP.b #$20
	LDA.w #$0050
	ORA.w $0702
	STA.w $0702
CODE_02B125:
	RTL

CODE_02B126:
	REP.b #$20
	LDA.w #$133A
	BRA.b CODE_02B105

CODE_02B12D:
	REP.b #$20
	LDA.w #$133C
	BRA.b CODE_02B105

CODE_02B134:
	REP.b #$20
	LDA.w #$133E
	BRA.b CODE_02B105

CODE_02B13B:
	REP.b #$20
	LDA.w #$1340
	BRA.b CODE_02B105

DATA_02B142:
	dw $FFF0 : db CODE_02B1E2>>16 : dw CODE_02B1E2
	dw $FFF2
	dw $0080 : db CODE_02B164>>16 : dw CODE_02B164
	dw $1000 : db CODE_02B164>>16 : dw CODE_02B164
	dw $0200 : db CODE_02B1A3>>16 : dw CODE_02B1A3
	dw $0100 : db CODE_02B170>>16 : dw CODE_02B170
	dw $4000 : db CODE_02B477>>16 : dw CODE_02B477
	dw $FFF3

CODE_02B164:
	REP.b #$20
	LDA.w #$0008
	ORA.w $0702
	STA.w $0702
	RTL

CODE_02B170:
	REP.b #$20
	LDA.w $0348
	INC
	CMP.w #$0006
	BCS.b CODE_02B17E
	STA.w $0348
CODE_02B17E:
	LDA.w #$0050
	ORA.w $0702
	STA.w $0702
	RTL

CODE_02B188:
	REP.b #$20
	LDA.w $0348
	INC
	CMP.w #$0007
	BCS.b CODE_02B197
	JSL.l CODE_02B220
CODE_02B197:
	REP.b #$20
	LDA.w #$0050
	ORA.w $0702
	STA.w $0702
	RTL

CODE_02B1A3:
	REP.b #$20
	LDA.w $0348
	DEC
	BMI.b CODE_02B1AE
	STA.w $0348
CODE_02B1AE:
	REP.b #$20
	LDA.w #$0050
	ORA.w $0702
	STA.w $0702
	RTL

CODE_02B1BA:
	REP.b #$20
	LDA.w $0348
	DEC
	BMI.b CODE_02B1C6
	JSL.l CODE_02B220
CODE_02B1C6:
	REP.b #$20
	LDA.w #$0050
	ORA.w $0702
	STA.w $0702
	RTL

CODE_02B1D2:
	REP.b #$20
	LDA.w $0348
	ASL
	PHA
	ASL
	CLC
	ADC.b $01,S
	STA.w $03CE
	PLA
	RTS

CODE_02B1E2:
	REP.b #$30
	LDA.w $0348
	ASL
	TAX
	LDA.w DATA_03CC39,x
	LDX.w #$01CB
	LDY.w #$8001
	JSL.l CODE_00CCC9
	REP.b #$20
	LDA.w #DATA_03CDDA
	JSL.l CODE_00CB69
	REP.b #$20
	LDA.w $0342
	BIT.w #$0400
	BEQ.b CODE_02B21E
	JSR.w CODE_02B1D2
	LDA.w $0348
	ASL
	TAX
	LDA.w DATA_03CC71,x
	LDX.w #$0180
	LDY.w #$8002
	JSL.l CODE_00CCE3
CODE_02B21E:
	SEC
	RTL

CODE_02B220:
	REP.b #$20
	STA.w $0348
CODE_02B225:
	JSL.l CODE_02C2E7
	BCS.b CODE_02B245
	REP.b #$30
	LDA.w DATA_03CC87&$FF8000,x
	STA.w $133C
	LDA.w (DATA_03CC87&$FF8000)+$02,x
	STA.w $133A
	LDA.w (DATA_03CC87&$FF8000)+$04,x
	STA.w $133E
	LDA.w (DATA_03CC87&$FF8000)+$06,x
	STA.w $1340
CODE_02B245:
	RTL

DATA_02B246:
	dw $FFF0 : db CODE_02B404>>16 : dw CODE_02B404
	dw $FFF1 : dw $0000,$0009
	dw $0080 : db CODE_02BE03>>16 : dw CODE_02BE03
	dw $1000 : db CODE_02BE03>>16 : dw CODE_02BE03
	dw $FFF1 : dw $0000,$000D
	dw $0100 : db CODE_02B50B>>16 : dw CODE_02B50B
	dw $0200 : db CODE_02B52D>>16 : dw CODE_02B52D
	dw $FFF1 : dw $0000,$0011
	dw $0080 : db CODE_02B599>>16 : dw CODE_02B599
	dw $0200 : db CODE_02B599>>16 : dw CODE_02B599
	dw $0100 : db CODE_02B599>>16 : dw CODE_02B599
	dw $FFF1 : dw $0000,$0013
	dw $0080 : db CODE_02B5B3>>16 : dw CODE_02B5B3
	dw $0200 : db CODE_02B5B3>>16 : dw CODE_02B5B3
	dw $0100 : db CODE_02B5B3>>16 : dw CODE_02B5B3
	dw $FFF1 : dw $0000,$0018
	dw $0080 : db CODE_02B4BD>>16 : dw CODE_02B4BD
	dw $1000 : db CODE_02B4BD>>16 : dw CODE_02B4BD
	dw $FFF2
	dw $0800 : db CODE_02AE1F>>16 : dw CODE_02AE1F
	dw $0400 : db CODE_02AE24>>16 : dw CODE_02AE24
	dw $2000 : db CODE_02AE29>>16 : dw CODE_02AE29
	dw $FFF3

DATA_02B2B8:
	dw $FFF0 : db CODE_02B424>>16 : dw CODE_02B424
	dw $FFF1 : dw $0000,$0009
	dw $0080 : db CODE_02BE03>>16 : dw CODE_02BE03
	dw $1000 : db CODE_02BE03>>16 : dw CODE_02BE03
	dw $FFF1 : dw $0000,$000B
	dw $0200 : db CODE_02B4E0>>16 : dw CODE_02B4E0
	dw $0100 : db CODE_02B4E0>>16 : dw CODE_02B4E0
	dw $FFF1 : dw $0000,$000D
	dw $0100 : db CODE_02B50B>>16 : dw CODE_02B50B
	dw $0200 : db CODE_02B52D>>16 : dw CODE_02B52D
	dw $FFF1 : dw $0000,$000F
	dw $0100 : db CODE_02B552>>16 : dw CODE_02B552
	dw $0200 : db CODE_02B574>>16 : dw CODE_02B574
	dw $FFF1 : dw $0000,$0011
	dw $0080 : db CODE_02B599>>16 : dw CODE_02B599
	dw $0200 : db CODE_02B599>>16 : dw CODE_02B599
	dw $0100 : db CODE_02B599>>16 : dw CODE_02B599
	dw $FFF1 : dw $0000,$0013
	dw $0080 : db CODE_02B5B3>>16 : dw CODE_02B5B3
	dw $0200 : db CODE_02B5B3>>16 : dw CODE_02B5B3
	dw $0100 : db CODE_02B5B3>>16 : dw CODE_02B5B3
	dw $FFF1 : dw $0000,$0018
	dw $0080 : db CODE_02B4BD>>16 : dw CODE_02B4BD
	dw $1000 : db CODE_02B4BD>>16 : dw CODE_02B4BD
	dw $FFF2
	dw $0800 : db CODE_02AE1F>>16 : dw CODE_02AE1F
	dw $0400 : db CODE_02AE24>>16 : dw CODE_02AE24
	dw $2000 : db CODE_02AE29>>16 : dw CODE_02AE29
	dw $FFF3

CODE_02B34A:
	REP.b #$30
	LDX.w #$0178
	LDY.w #$8004
	LDA.w $0342
	BIT.w #$0002
	BNE.b CODE_02B362
	LDA.w #DATA_03D091
	JSL.l CODE_00CCC9
	RTS

CODE_02B362:
	REP.b #$20
	LDA.w #DATA_03D08D
	JSL.l CODE_00CCC9
	RTS

CODE_02B36C:
	REP.b #$30
	REP.b #$30
	LDA.w $0BB4
	CMP.w #$0004
	BCC.b CODE_02B37B
	LDA.w #$0003
CODE_02B37B:
	ASL
	TAX
	LDA.w DATA_03CEB6,x
	PHA
	LDX.w #$01B2
	LDA.w $12A2
	CMP.w #$0002
	BCC.b CODE_02B38F
	LDX.w #$01B6
CODE_02B38F:
	LDY.w #$8004
	PLA
	JSL.l CODE_00CCC9
	RTS

CODE_02B398:
	REP.b #$30
	LDA.w $0C24
	CMP.w #$0004
	BCC.b CODE_02B3A5
	LDA.w #$0003
CODE_02B3A5:
	ASL
	TAX
	LDA.w DATA_03CEB6,x
	LDX.w #$01F6
	LDY.w #$8004
	JSL.l CODE_00CCC9
	RTS

CODE_02B3B5:
	REP.b #$30
	LDX.w #$0230
	LDY.w #$8004
	LDA.w $0342
	BIT.w #$0020
	BNE.b CODE_02B3CE
	LDA.w #DATA_03D091
	JSL.l CODE_00CCC9
	BRA.b CODE_02B3D7

CODE_02B3CE:
	REP.b #$30
	LDA.w #DATA_03D08D
	JSL.l CODE_00CCC9
CODE_02B3D7:
	REP.b #$30
	LDX.w #$0272
	LDY.w #$8004
	LDA.w $0342
	BIT.w #$0020
	BEQ.b CODE_02B3FC
	BIT.w #$0001
	BNE.b CODE_02B3F4
	LDA.w #DATA_03D091
	JSL.l CODE_00CCC9
	RTS

CODE_02B3F4:
	LDA.w #DATA_03D08D
	JSL.l CODE_00CCC9
	RTS

CODE_02B3FC:
	LDA.w #DATA_03D095
	JSL.l CODE_00CCC9
	RTS

CODE_02B404:
	REP.b #$20
	LDA.w #DATA_03CE38
	JSL.l CODE_00CB69
	JSR.w CODE_02B36C
	JSR.w CODE_02B3B5
	REP.b #$30
	LDX.w #$0089
	LDY.w #$8002
	LDA.w #DATA_03CCF5
	JSL.l CODE_00CCC9
	CLC
	RTL

CODE_02B424:
	REP.b #$20
	LDA.w #DATA_03CE60
	JSL.l CODE_00CB69
	JSR.w CODE_02B34A
	JSR.w CODE_02B36C
	JSR.w CODE_02B398
	JSR.w CODE_02B3B5
	REP.b #$30
	LDX.w #$0089
	LDY.w #$8002
	LDA.w #DATA_03CCF5
	JSL.l CODE_00CCC9
	CLC
	RTL

CODE_02B44A:
	JSR.w CODE_02ACDF
	REP.b #$20
	LDA.w $12A2
	CMP.w #$0002
	BCC.b CODE_02B467
	REP.b #$30
	LDY.w #$0000
	LDX.w #DATA_02B2B8>>16
	LDA.w #DATA_02B2B8
	JSL.l CODE_029AE4
	RTL

CODE_02B467:
	REP.b #$30
	LDY.w #$0000
	LDX.w #DATA_02B246>>16
	LDA.w #DATA_02B246
	JSL.l CODE_029AE4
	RTL

CODE_02B477:
	JSR.w CODE_02ACDF
	REP.b #$30
	LDY.w #$0000
	LDA.w $1F6B
	BNE.b CODE_02B48F
	LDX.w #DATA_02AE2E>>16
	LDA.w #DATA_02AE2E
	JSL.l CODE_029AE4
	RTL

CODE_02B48F:
	LDX.w #DATA_02AE76>>16
	LDA.w #DATA_02AE76
	JSL.l CODE_029AE4
	RTL

CODE_02B49A:
	JSR.w CODE_02ACDF
	REP.b #$30
	LDY.w #$0001
	LDA.w $1F6B
	BNE.b CODE_02B4B2
	LDX.w #DATA_02AE2E>>16
	LDA.w #DATA_02AE2E
	JSL.l CODE_029AE4
	RTL

CODE_02B4B2:
	LDX.w #DATA_02AE76>>16
	LDA.w #DATA_02AE76
	JSL.l CODE_029AE4
	RTL

CODE_02B4BD:
	JSR.w CODE_02ACDF
	REP.b #$30
	LDY.w #$0002
	LDA.w $1F6B
	BNE.b CODE_02B4D5
	LDX.w #DATA_02AE2E>>16
	LDA.w #DATA_02AE2E
	JSL.l CODE_029AE4
	RTL

CODE_02B4D5:
	LDX.w #DATA_02AE76>>16
	LDA.w #DATA_02AE76
	JSL.l CODE_029AE4
	RTL

CODE_02B4E0:
	REP.b #$20
	LDA.w $12A2
	CMP.w #$0002
	BCC.b CODE_02B50A
	LDA.w #$0002
	EOR.w $0342
	STA.w $0342
	BIT.w #$0002
	BEQ.b CODE_02B4FC
	JSL.l CODE_02C196
CODE_02B4FC:
	JSR.w CODE_02B34A
	REP.b #$20
	LDA.w #$0010
	ORA.w $0702
	STA.w $0702
CODE_02B50A:
	RTL

CODE_02B50B:
	REP.b #$20
	LDA.w $0BB4
	CMP.w #$0003
	BEQ.b CODE_02B52C
	BCC.b CODE_02B51A
	LDA.w #$0002
CODE_02B51A:
	INC
	STA.w $0BB4
	REP.b #$20
	LDA.w #$0010
	ORA.w $0702
	STA.w $0702
	JSR.w CODE_02B36C
CODE_02B52C:
	RTL

CODE_02B52D:
	REP.b #$20
	LDA.w $0BB4
	CMP.w #$0002
	BCC.b CODE_02B551
	CMP.w #$0004
	BCC.b CODE_02B53F
	LDA.w #$0004
CODE_02B53F:
	DEC
	STA.w $0BB4
	REP.b #$20
	LDA.w #$0010
	ORA.w $0702
	STA.w $0702
	JSR.w CODE_02B36C
CODE_02B551:
	RTL

CODE_02B552:
	REP.b #$20
	LDA.w $0C24
	CMP.w #$0003
	BEQ.b CODE_02B573
	BCC.b CODE_02B561
	LDA.w #$0002
CODE_02B561:
	INC
	STA.w $0C24
	REP.b #$20
	LDA.w #$0010
	ORA.w $0702
	STA.w $0702
	JSR.w CODE_02B398
CODE_02B573:
	RTL

CODE_02B574:
	REP.b #$20
	LDA.w $0C24
	CMP.w #$0002
	BCC.b CODE_02B598
	CMP.w #$0004
	BCC.b CODE_02B586
	LDA.w #$0004
CODE_02B586:
	DEC
	STA.w $0C24
	REP.b #$20
	LDA.w #$0010
	ORA.w $0702
	STA.w $0702
	JSR.w CODE_02B398
CODE_02B598:
	RTL

CODE_02B599:
	REP.b #$20
	LDA.w #$0020
	EOR.w $0342
	STA.w $0342
	JSR.w CODE_02B3B5
	REP.b #$20
	LDA.w #$0010
	ORA.w $0702
	STA.w $0702
	RTL

CODE_02B5B3:
	REP.b #$20
	LDA.w #$0001
	EOR.w $0342
	STA.w $0342
	BNE.b CODE_02B5C6
	JSL.l CODE_02C99A
	BRA.b CODE_02B5CA

CODE_02B5C6:
	JSL.l CODE_02C98E
CODE_02B5CA:
	JSR.w CODE_02B3B5
	REP.b #$20
	LDA.w #$0010
	ORA.w $0702
	STA.w $0702
	RTL

DATA_02B5D9:
	dw $FFF0 : db CODE_02B630>>16 : dw CODE_02B630
	dw $FFF1 : dw $0006,$0007
	dw $0080 : db CODE_02B660>>16 : dw CODE_02B660
	dw $0100 : db CODE_02B661>>16 : dw CODE_02B661
	dw $0200 : db CODE_02B66D>>16 : dw CODE_02B66D
	dw $FFF1 : dw $0006,$0009
	dw $0080 : db CODE_02B679>>16 : dw CODE_02B679
	dw $0100 : db CODE_02B67A>>16 : dw CODE_02B67A
	dw $0200 : db CODE_02B686>>16 : dw CODE_02B686
	dw $FFF1 : dw $0006,$000B
	dw $0080 : db CODE_02B65F>>16 : dw CODE_02B65F
	dw $FFF2
	dw $0800 : db CODE_02AE1F>>16 : dw CODE_02AE1F
	dw $0400 : db CODE_02AE24>>16 : dw CODE_02AE24
	dw $2000 : db CODE_02AE29>>16 : dw CODE_02AE29
	dw $8000 : db CODE_02B657>>16 : dw CODE_02B657
	dw $1000 : db CODE_02B657>>16 : dw CODE_02B657
	dw $FFF3

CODE_02B630:
	REP.b #$20
	LDA.w #DATA_03CECC
	JSL.l CODE_00CB69
	REP.b #$20
	LDA.w #DATA_03CEC0
	JSL.l CODE_00CB69
	CLC
	RTL

CODE_02B644:
	JSR.w CODE_02ACDF
	REP.b #$30
	LDY.w #$0000
	LDX.w #DATA_02B5D9>>16
	LDA.w #DATA_02B5D9
	JSL.l CODE_029AE4
	RTL

CODE_02B657:
	JSL.l CODE_02B65F
	JML.l CODE_02B44A

CODE_02B65F:
	RTL

CODE_02B660:
	RTL

CODE_02B661:
	REP.b #$20
	LDA.w #$0010
	ORA.w $0702
	STA.w $0702
	RTL

CODE_02B66D:
	REP.b #$20
	LDA.w #$0010
	ORA.w $0702
	STA.w $0702
	RTL

CODE_02B679:
	RTL

CODE_02B67A:
	REP.b #$20
	LDA.w #$0010
	ORA.w $0702
	STA.w $0702
	RTL

CODE_02B686:
	REP.b #$20
	LDA.w #$0010
	ORA.w $0702
	STA.w $0702
	RTL

DATA_02B692:
	dw $FFF0 : db CODE_02B81D>>16 : dw CODE_02B81D
	dw $FFF1 : dw $0003,$000A
	dw $0080 : db CODE_02B834>>16 : dw CODE_02B834
	dw $0100 : db CODE_02B834>>16 : dw CODE_02B834
	dw $0200 : db CODE_02B868>>16 : dw CODE_02B868
	dw $FFF1 : dw $0003,$000B
	dw $0080 : db CODE_02B8BC>>16 : dw CODE_02B8BC
	dw $0100 : db CODE_02B8BC>>16 : dw CODE_02B8BC
	dw $FFF1 : dw $0003,$000C
	dw $0080 : db CODE_02B899>>16 : dw CODE_02B899
	dw $0100 : db CODE_02B899>>16 : dw CODE_02B899
	dw $FFF1 : dw $0003,$000D
	dw $0080 : db CODE_02B8F8>>16 : dw CODE_02B8F8
	dw $0100 : db CODE_02B8F8>>16 : dw CODE_02B8F8
	dw $FFF1 : dw $0003,$000E
	dw $0080 : db CODE_02B91B>>16 : dw CODE_02B91B
	dw $0100 : db CODE_02B91B>>16 : dw CODE_02B91B
	dw $0200 : db CODE_02B93B>>16 : dw CODE_02B93B
	dw $FFF1 : dw $0003,$0010
	dw $0080 : db CODE_02B958>>16 : dw CODE_02B958
	dw $0100 : db CODE_02B958>>16 : dw CODE_02B958
	dw $0200 : db CODE_02B958>>16 : dw CODE_02B958
	dw $FFF2
	dw $0800 : db CODE_02AE1F>>16 : dw CODE_02AE1F
	dw $0400 : db CODE_02AE24>>16 : dw CODE_02AE24
	dw $2000 : db CODE_02AE29>>16 : dw CODE_02AE29
	dw $1000 : db CODE_02B997>>16 : dw CODE_02B997
	dw $FFF3

CODE_02B71E:
	REP.b #$30
	STZ.w $036C
	LDX.w #$036C
	JSL.l CODE_028BFB
	REP.b #$30
	LDA.w #$036C
	LDY.w #$8002
	LDX.w #$0155
	JSL.l CODE_00983D
	REP.b #$10
	LDX.w #$0000
	SEP.b #$20
	LDA.b #$20
CODE_02B742:
	STA.w $036C,x
	INX
	CPX.w #$0020
	BNE.b CODE_02B742
	STZ.w $036C,x
	REP.b #$30
	LDA.w #$036C
	LDY.w #$0003
	LDX.w #$0300
	JSL.l CODE_00CCC9
	REP.b #$30
	LDA.w #$03D2
	LDY.w #$0003
	LDX.w #$0300
	JSL.l CODE_00CCE3
	REP.b #$30
	STZ.w $036C
	LDA.w $0BE3
	LDY.w #$0000
	LDX.w #$036C
	JSL.l CODE_00CA52
	REP.b #$30
	LDA.w #$036C
	LDY.w #$8002
	LDX.w #$0175
	JSL.l CODE_00983D
	REP.b #$30
	STZ.w $036C
	LDA.w $0BC4
	SEC
	SBC.w #$0001
	LDY.w #$0000
	LDX.w #$036C
	JSL.l CODE_00CA52
	REP.b #$30
	LDA.w #$036C
	LDY.w #$8002
	LDX.w #$0195
	JSL.l CODE_00983D
	REP.b #$20
	STZ.w $036C
	SEP.b #$20
	LDA.w $0BCB
	REP.b #$30
	AND.w #$00FF
	LDY.w #$0000
	LDX.w #$036C
	JSL.l CODE_00CA52
	REP.b #$30
	LDA.w #$036C
	LDY.w #$8002
	LDX.w #$01B5
	JSL.l CODE_00983D
	REP.b #$30
	STZ.w $036C
	LDA.w $0BD1
	LDY.w #$0000
	LDX.w #$036C
	JSL.l CODE_00CA52
	REP.b #$30
	LDA.w #$036C
	LDY.w #$8002
	LDX.w #$01D5
	JSL.l CODE_00983D
	REP.b #$30
	STZ.w $036C
	LDA.w $0BC0
	LDY.w #$0000
	LDX.w #$036C
	JSL.l CODE_00CA52
	REP.b #$30
	LDA.w #$036C
	LDY.w #$8002
	LDX.w #$0215
	JSL.l CODE_00983D
	RTS

CODE_02B81D:
	REP.b #$20
	LDA.w #DATA_03CF01
	JSL.l CODE_00CB69
	REP.b #$20
	LDA.w #DATA_03CEF0
	JSL.l CODE_00CB69
	JSR.w CODE_02B71E
	CLC
	RTL

CODE_02B834:
	REP.b #$20
	LDA.w $0342
	BIT.w #$0400
	BNE.b CODE_02B849
	LDA.w $03CE
	INC
	CMP.w #$007B
	BCS.b CODE_02B859
	BRA.b CODE_02B852

CODE_02B849:
	LDA.w $03CE
	INC
	CMP.w #$0030
	BCS.b CODE_02B859
CODE_02B852:
	STA.w $03CE
	JSL.l CODE_029356
CODE_02B859:
	JSR.w CODE_02B71E
	REP.b #$20
	LDA.w #$0010
	ORA.w $0702
	STA.w $0702
	RTL

CODE_02B868:
	REP.b #$20
	LDA.w $0342
	BIT.w #$0400
	BNE.b CODE_02B87D
	LDA.w $03CE
	DEC
	CMP.w #$0030
	BCC.b CODE_02B88A
	BRA.b CODE_02B883

CODE_02B87D:
	LDA.w $03CE
	DEC
	BMI.b CODE_02B88A
CODE_02B883:
	STA.w $03CE
	JSL.l CODE_029356
CODE_02B88A:
	JSR.w CODE_02B71E
	REP.b #$20
	LDA.w #$0010
	ORA.w $0702
	STA.w $0702
	RTL

CODE_02B899:
	REP.b #$30
	LDX.w #!RAM_FB2000_Level_Smiloids_SpriteTableStart
	LDA.b FB2000_Level_Smiloid[$00].MaxShotsLo,x
	INC
	CMP.w #$0007
	BCC.b CODE_02B8A9
	LDA.w #$0002
CODE_02B8A9:
	STA.b FB2000_Level_Smiloid[$00].MaxShotsLo,x
	STA.b $9A,x
	JSR.w CODE_02B71E
	REP.b #$20
	LDA.w #$0010
	ORA.w $0702
	STA.w $0702
	RTL

CODE_02B8BC:
	REP.b #$30
	LDX.w #!RAM_FB2000_Level_Smiloids_SpriteTableStart
	LDA.b $49,x
	INC
	CMP.w #$0015
	BCC.b CODE_02B8DD
	STZ.b $49,x
	STZ.b $B9,x
	LDA.w #$0003
	STA.b FB2000_Level_Smiloid[$00].MaxHPLo,x
	STA.b $8A,x
	LDA.w #$0003
	STA.b FB2000_Level_Smiloid[$00].MaxHPRegenLo,x
	STA.b $88,x
	BRA.b CODE_02B8E9

CODE_02B8DD:
	STA.b $49,x
	STA.b $B9,x
	INC.b FB2000_Level_Smiloid[$00].MaxHPLo,x
	INC.b $8A,x
	INC.b FB2000_Level_Smiloid[$00].MaxHPRegenLo,x
	INC.b $88,x
CODE_02B8E9:
	JSR.w CODE_02B71E
	REP.b #$20
	LDA.w #$0010
	ORA.w $0702
	STA.w $0702
	RTL

CODE_02B8F8:
	REP.b #$10
	LDX.w #!RAM_FB2000_Level_Smiloids_SpriteTableStart
	SEP.b #$20
	LDA.b $31,x
	INC
	CMP.b #$08
	BCC.b CODE_02B908
	LDA.b #$01
CODE_02B908:
	STA.b $31,x
	STA.b $A1,x
	JSR.w CODE_02B71E
	REP.b #$20
	LDA.w #$0010
	ORA.w $0702
	STA.w $0702
	RTL

CODE_02B91B:
	REP.b #$30
	LDX.w #!RAM_FB2000_Level_Smiloids_SpriteTableStart
	LDA.b $37,x
	INC
	CMP.w #$0064
	BCS.b CODE_02B92C
	STA.b $37,x
	STA.b $A7,x
CODE_02B92C:
	JSR.w CODE_02B71E
	REP.b #$20
	LDA.w #$0010
	ORA.w $0702
	STA.w $0702
	RTL

CODE_02B93B:
	REP.b #$30
	LDX.w #!RAM_FB2000_Level_Smiloids_SpriteTableStart
	LDA.b $37,x
	DEC
	BEQ.b CODE_02B949
	STA.b $37,x
	STA.b $A7,x
CODE_02B949:
	JSR.w CODE_02B71E
	REP.b #$20
	LDA.w #$0010
	ORA.w $0702
	STA.w $0702
	RTL

CODE_02B958:
	REP.b #$30
	LDX.w #!RAM_FB2000_Level_Smiloids_SpriteTableStart
	LDA.b FB2000_Level_Smiloid[$00].MaxShotDelayLo,x
	INC
	CMP.w #$0010
	BCC.b CODE_02B968
	LDA.w #$0000
CODE_02B968:
	STA.b FB2000_Level_Smiloid[$00].MaxShotDelayLo,x
	STA.b $96,x
	JSR.w CODE_02B71E
	REP.b #$20
	LDA.w #$0010
	ORA.w $0702
	STA.w $0702
	RTL

CODE_02B97B:
	JSR.w CODE_02ACDF
	REP.b #$20
	LDA.w $03CE
	JSL.l CODE_029356
	REP.b #$30
	LDY.w #$0000
	LDX.w #DATA_02B692>>16
	LDA.w #DATA_02B692
	JSL.l CODE_029B36
	RTL

CODE_02B997:
	REP.b #$20
	LDA.w #$0008
	ORA.w $0702
	STA.w $0702
	RTL

CODE_02B9A3:
	REP.b #$30
	LDX.w #$0000
CODE_02B9A8:
	CMP.w DATA_03CFD5,x
	BEQ.b CODE_02B9B4
	INX
	INX
	CPX.w #$001E
	BCC.b CODE_02B9A8
CODE_02B9B4:
	TXA
	LSR
	RTS

CODE_02B9B7:
	REP.b #$30
	LDA.w #$7C00
	STA.w $1F5B
	LDA.w $1352
	AND.w #$0003
	CMP.w #$0001
	BNE.b CODE_02B9F4
	REP.b #$20
	LDA.w #$0000
	JSL.l CODE_00923B
	REP.b #$30
	LDA.w $1C91
	LSR
	LSR
	AND.w #$003F
	ASL
	TAX
	LDA.w DATA_03CF55,x
	LDX.w #!RAM_FB2000_Level_Smiloids_SpriteTableStart
	JSL.l CODE_02CF1A
	REP.b #$20
	LDA.w #$0000
	JSL.l CODE_00927C
	BRA.b CODE_02BA5B

CODE_02B9F4:
	JSL.l CODE_00CAC1
	JSL.l CODE_0092E1
	REP.b #$30
	LDA.w #DATA_03D072
	LDX.w #$016B
	JSL.l CODE_00CB69
	LDA.w #DATA_03D072
	LDX.w #$01AB
	JSL.l CODE_00CB69
	REP.b #$20
	LDA.w $1352
	AND.w #$0003
	CMP.w #$0002
	BNE.b CODE_02BA5B
	REP.b #$30
	LDA.w #$0BEB
	LDY.w #$8002
	LDX.w #$018B
	JSL.l CODE_00CCC9
	REP.b #$20
	LDA.w #DATA_03D052
	JSL.l CODE_00CB69
	REP.b #$30
	LDA.w $134E
	ASL
	CLC
	ADC.w #$016B
	TAX
	LDA.w #DATA_03D081
	JSL.l CODE_00CB69
	REP.b #$30
	LDA.w $134E
	ASL
	CLC
	ADC.w #$01AB
	TAX
	LDA.w #DATA_03D087
	JSL.l CODE_00CB69
CODE_02BA5B:
	REP.b #$30
	LDA.w $12A2
	CMP.w #$0002
	BEQ.b CODE_02BA66
	RTS

CODE_02BA66:
	LDA.w $1354
	AND.w #$0003
	CMP.w #$0001
	BNE.b CODE_02BA9A
	LDA.w #$0001
	JSL.l CODE_00923B
	REP.b #$30
	LDA.w $1C91
	LSR
	LSR
	AND.w #$003F
	ASL
	TAX
	LDA.w DATA_03CF55,x
	LDX.w #$0C0A
	JSL.l CODE_02CF1A
	REP.b #$20
	LDA.w #$0001
	JSL.l CODE_00927C
	BRL.w CODE_02BB01

CODE_02BA9A:
	JSL.l CODE_00CAC1
	JSL.l CODE_0092E1
	REP.b #$30
	LDA.w #DATA_03D072
	LDX.w #$01EB
	JSL.l CODE_00CB69
	LDA.w #DATA_03D072
	LDX.w #$022B
	JSL.l CODE_00CB69
	REP.b #$20
	LDA.w $1354
	AND.w #$0003
	CMP.w #$0002
	BNE.b CODE_02BB01
	REP.b #$30
	LDA.w #$0C5B
	LDY.w #$8002
	LDX.w #$020B
	JSL.l CODE_00CCC9
	REP.b #$20
	LDA.w #DATA_03D062
	JSL.l CODE_00CB69
	REP.b #$30
	LDA.w $1350
	ASL
	CLC
	ADC.w #$01EB
	TAX
	LDA.w #DATA_03D081
	JSL.l CODE_00CB69
	REP.b #$30
	LDA.w $1350
	ASL
	CLC
	ADC.w #$022B
	TAX
	LDA.w #DATA_03D087
	JSL.l CODE_00CB69
CODE_02BB01:
	RTS

CODE_02BB02:
	REP.b #$30
	BIT.w #$0800
	BNE.b CODE_02BB13
	BIT.w #$0100
	BNE.b CODE_02BB13
	BIT.w #$2000
	BEQ.b CODE_02BB29
CODE_02BB13:
	REP.b #$30
	PHA
	LDA.w #$0007
	JSL.l CODE_02C90B
	REP.b #$30
	PLA
	INY
	CPY.w #$000F
	BCC.b CODE_02BB29
	LDY.w #$0000
CODE_02BB29:
	BIT.w #$0400
	BNE.b CODE_02BB33
	BIT.w #$0200
	BEQ.b CODE_02BB49
CODE_02BB33:
	REP.b #$30
	PHA
	LDA.w #$0007
	JSL.l CODE_02C90B
	REP.b #$30
	PLA
	DEY
	CPY.w #$000F
	BCC.b CODE_02BB49
	LDY.w #$000E
CODE_02BB49:
	PHY
	TYA
	ASL
	TAY
	LDA.w DATA_03CFD5,y
	STA.b $2C,x
	LDA.w DATA_03CFF3,y
	STA.b $2E,x
	PLY
	RTS

CODE_02BB59:
	REP.b #$30
	BIT.w #$0100
	BNE.b CODE_02BB65
	BIT.w #$2000
	BEQ.b CODE_02BB7B
CODE_02BB65:
	REP.b #$30
	PHA
	LDA.w #$0007
	JSL.l CODE_02C90B
	REP.b #$30
	PLA
	INY
	CPY.w #$000A
	BCC.b CODE_02BB7B
	LDY.w #$0009
CODE_02BB7B:
	BIT.w #$0200
	BEQ.b CODE_02BB93
	REP.b #$30
	PHA
	LDA.w #$0007
	JSL.l CODE_02C90B
	REP.b #$30
	PLA
	DEY
	BPL.b CODE_02BB93
	LDY.w #$0000
CODE_02BB93:
	BIT.w #$0800
	BEQ.b CODE_02BBD4
	PHA
	PHX
	TYA
	CLC
	ADC.w #$0051
	ADC.b $01,S
	TAX
	SEP.b #$20
	LDA.b $00,x
CODE_02BBA6:
	INC
	CMP.b #$20
	BEQ.b CODE_02BBC5
	CMP.b #$21
	BEQ.b CODE_02BBC5
	CMP.b #$23
	BEQ.b CODE_02BBC5
	CMP.b #$30
	BCC.b CODE_02BBA6
	CMP.b #$3A
	BCC.b CODE_02BBC5
	CMP.b #$41
	BCC.b CODE_02BBA6
	CMP.b #$5B
	BCC.b CODE_02BBC5
	LDA.b #$20
CODE_02BBC5:
	STA.b $00,x
	REP.b #$30
	LDA.w #$0007
	JSL.l CODE_02C90B
	REP.b #$30
	PLX
	PLA
CODE_02BBD4:
	BIT.w #$0400
	BEQ.b CODE_02BC15
	PHA
	PHX
	TYA
	CLC
	ADC.w #$0051
	ADC.b $01,S
	TAX
	SEP.b #$20
	LDA.b $00,x
CODE_02BBE7:
	DEC
	CMP.b #$20
	BEQ.b CODE_02BC06
	BCS.b CODE_02BBF2
	LDA.b #$5A
	BRA.b CODE_02BC06

CODE_02BBF2:
	CMP.b #$21
	BEQ.b CODE_02BC06
	CMP.b #$23
	BEQ.b CODE_02BC06
	CMP.b #$30
	BCC.b CODE_02BBE7
	CMP.b #$3A
	BCC.b CODE_02BC06
	CMP.b #$41
	BCC.b CODE_02BBE7
CODE_02BC06:
	STA.b $00,x
	REP.b #$30
	LDA.w #$0007
	JSL.l CODE_02C90B
	REP.b #$30
	PLX
	PLA
CODE_02BC15:
	BIT.w #$8000
	BEQ.b CODE_02BC37
	PHA
	PHX
	TYA
	CLC
	ADC.w #$0051
	ADC.b $01,S
	TAX
	SEP.b #$20
	LDA.b #$20
	STA.b $00,x
	REP.b #$30
	LDA.w #$0007
	JSL.l CODE_02C90B
	REP.b #$30
	PLX
	PLA
CODE_02BC37:
	RTS

CODE_02BC38:
	REP.b #$30
	LDA.w $03C6
	BIT.w #$1000
	BNE.b CODE_02BC47
	BIT.w #$0080
	BEQ.b CODE_02BC7D
CODE_02BC47:
	LDA.w $1352
	AND.w #$FFFC
	ORA.w #$0002
	STA.w $1352
	LDA.w #$0000
	LDX.w #$0010
	JSL.l CODE_009A75
	REP.b #$20
	LDA.w #$0000
	JSL.l CODE_00923B
	REP.b #$20
	LDA.w #$0000
	JSL.l CODE_00927C
	JSL.l CODE_00922E
	REP.b #$20
	LDA.w #$0007
	JSL.l CODE_02C90B
	RTS

CODE_02BC7D:
	LDA.w $1352
	AND.w #$0003
	CMP.w #$0003
	BEQ.b CODE_02BC99
	LDA.w $03C6
	LDX.w #!RAM_FB2000_Level_Smiloids_SpriteTableStart
	LDY.w $134A
	JSR.w CODE_02BB02
	REP.b #$10
	STY.w $134A
CODE_02BC99:
	RTS

CODE_02BC9A:
	REP.b #$30
	LDA.w $12A2
	CMP.w #$0002
	BEQ.b CODE_02BCA5
	RTS

CODE_02BCA5:
	LDA.w $03C8
	BIT.w #$1000
	BNE.b CODE_02BCB2
	BIT.w #$0080
	BEQ.b CODE_02BCE8
CODE_02BCB2:
	LDA.w $1354
	AND.w #$FFFC
	ORA.w #$0002
	STA.w $1354
	LDA.w #$0000
	LDX.w #$0010
	JSL.l CODE_009A75
	REP.b #$20
	LDA.w #$0001
	JSL.l CODE_00923B
	REP.b #$20
	LDA.w #$0001
	JSL.l CODE_00927C
	JSL.l CODE_00922E
	REP.b #$20
	LDA.w #$0007
	JSL.l CODE_02C90B
	RTS

CODE_02BCE8:
	LDA.w $1354
	AND.w #$0003
	CMP.w #$0003
	BEQ.b CODE_02BD04
	LDA.w $03C8
	LDX.w #$0C0A
	LDY.w $134C
	JSR.w CODE_02BB02
	REP.b #$10
	STY.w $134C
CODE_02BD04:
	RTS

CODE_02BD05:
	REP.b #$10
	SEP.b #$20
	LDA.b #$20
	STA.b $00,x
	STA.b $01,x
	STA.b $02,x
	STA.b $03,x
	STA.b $04,x
	STA.b $05,x
	STA.b $06,x
	STA.b $07,x
	STA.b $08,x
	STA.b $09,x
	STZ.b $0A,x
	RTS

CODE_02BD22:
	REP.b #$30
	LDA.w $03C6
	BIT.w #$0080
	BNE.b CODE_02BD31
	BIT.w #$1000
	BEQ.b CODE_02BD51
CODE_02BD31:
	LDA.w $1352
	AND.w #$FFFC
	ORA.w #$0003
	STA.w $1352
	LDA.w #$0000
	LDX.w #$0010
	JSL.l CODE_009A75
	REP.b #$20
	LDA.w #$0007
	JSL.l CODE_02C90B
	RTS

CODE_02BD51:
	LDA.w $1352
	AND.w #$0003
	CMP.w #$0003
	BEQ.b CODE_02BD8E
	LDA.w $03C6
	BIT.w #$8C80
	BEQ.b CODE_02BD7B
	LDA.w $1352
	BIT.w #$0004
	BEQ.b CODE_02BD7B
	AND.w #$FFFB
	STA.w $1352
	STZ.w $134E
	LDX.w #$0BEB
	JSR.w CODE_02BD05
CODE_02BD7B:
	REP.b #$30
	LDA.w $03C6
	LDX.w #!RAM_FB2000_Level_Smiloids_SpriteTableStart
	LDY.w $134E
	JSR.w CODE_02BB59
	REP.b #$10
	STY.w $134E
CODE_02BD8E:
	RTS

CODE_02BD8F:
	REP.b #$30
	LDA.w $12A2
	CMP.w #$0002
	BEQ.b CODE_02BD9A
	RTS

CODE_02BD9A:
	LDA.w $03C8
	BIT.w #$0080
	BNE.b CODE_02BDA7
	BIT.w #$1000
	BEQ.b CODE_02BDC7
CODE_02BDA7:
	LDA.w $1354
	AND.w #$FFFC
	ORA.w #$0003
	STA.w $1354
	LDA.w #$0000
	LDX.w #$0010
	JSL.l CODE_009A75
	REP.b #$20
	LDA.w #$0007
	JSL.l CODE_02C90B
	RTS

CODE_02BDC7:
	LDA.w $1354
	AND.w #$0003
	CMP.w #$0003
	BEQ.b CODE_02BE02
	LDA.w $03C8
	BIT.w #$8C80
	BEQ.b CODE_02BDF1
	LDA.w $1354
	BIT.w #$0004
	BEQ.b CODE_02BDF1
	AND.w #$FFFB
	STA.w $1354
	STZ.w $1350
	LDX.w #$0C5B
	JSR.w CODE_02BD05
CODE_02BDF1:
	LDA.w $03C8
	LDX.w #$0C0A
	LDY.w $1350
	JSR.w CODE_02BB59
	REP.b #$10
	STY.w $1350
CODE_02BE02:
	RTS

CODE_02BE03:
	JSR.w CODE_02ACDF
	SEP.b #$20
	STZ.w $02FF
	STZ.w !REGISTER_HDMAEnable
	REP.b #$20
	LDA.w $12A2
	CMP.w #$0001
	BEQ.b CODE_02BE24
	JSL.l CODE_00C870
	JSL.l CODE_009C39
	JSL.l CODE_00A184
CODE_02BE24:
	REP.b #$30
	LDA.w #$7C00
	STA.w $1F5B
	LDA.w #DATA_03D011
	JSL.l CODE_00CB69
	REP.b #$20
	LDA.w #$0005
	STA.w $1352
	STA.w $1354
	STZ.w $1356
	STZ.w $1358
	STZ.w $134E
	STZ.w $1350
	REP.b #$20
	LDA.w $0BC6
	JSR.w CODE_02B9A3
	REP.b #$20
	STA.w $134A
	REP.b #$20
	LDA.w $0C36
	JSR.w CODE_02B9A3
	REP.b #$20
	STA.w $134C
CODE_02BE64:
	REP.b #$20
	INC.w $034A
	JSL.l CODE_00CAC1
	JSL.l CODE_0092E1
	JSL.l CODE_00CA17
	JSL.l CODE_00B8F9
	LDA.w $1352
	AND.w #$0003
	CMP.w #$0001
	BNE.b CODE_02BE9E
	LDA.w $135A
	STA.w $135C
	LDA.w $03C6
	STA.w $135A
	EOR.w #$FFFF
	AND.w $135C
	STA.w $03C6
	JSR.w CODE_02BC38
	BRA.b CODE_02BF14

CODE_02BE9E:
	REP.b #$30
	LDA.w $1356
	BEQ.b CODE_02BEAA
	DEC.w $1356
	BNE.b CODE_02BEAD
CODE_02BEAA:
	JSR.w CODE_02BD22
CODE_02BEAD:
	REP.b #$30
	LDX.w $135C
	LDA.w $03C6
	STA.w $135C
	BEQ.b CODE_02BF14
	TXA
	BNE.b CODE_02BEE7
	LDX.w #$0006
	LDA.w $12A2
	CMP.w #$0001
	BEQ.b CODE_02BEE1
	LDA.w $1354
	AND.w #$0003
	LDX.w #$0002
	CMP.w #$0001
	BEQ.b CODE_02BEE1
	LDX.w #$0003
	CMP.w #$0002
	BEQ.b CODE_02BEE1
	LDX.w #$0004
CODE_02BEE1:
	TXA
	STA.w $1356
	BRA.b CODE_02BF14

CODE_02BEE7:
	LDA.w $1356
	BNE.b CODE_02BF14
	LDX.w #$0003
	LDA.w $12A2
	CMP.w #$0001
	BEQ.b CODE_02BF10
	LDA.w $1354
	AND.w #$0003
	LDX.w #$0000
	CMP.w #$0001
	BEQ.b CODE_02BF10
	LDX.w #$0002
	CMP.w #$0002
	BEQ.b CODE_02BF10
	LDX.w #$0002
CODE_02BF10:
	TXA
	STA.w $1356
CODE_02BF14:
	REP.b #$30
	LDA.w $1354
	AND.w #$0003
	CMP.w #$0001
	BNE.b CODE_02BF3B
	LDA.w $135E
	STA.w $1360
	LDA.w $03C8
	STA.w $135E
	EOR.w #$FFFF
	AND.w $1360
	STA.w $03C8
	JSR.w CODE_02BC9A
	BRA.b CODE_02BFB1

CODE_02BF3B:
	REP.b #$30
	LDA.w $1358
	BEQ.b CODE_02BF47
	DEC.w $1358
	BNE.b CODE_02BF4A
CODE_02BF47:
	JSR.w CODE_02BD8F
CODE_02BF4A:
	REP.b #$30
	LDX.w $1360
	LDA.w $03C8
	STA.w $1360
	BEQ.b CODE_02BFB1
	TXA
	BNE.b CODE_02BF84
	LDX.w #$0006
	LDA.w $12A2
	CMP.w #$0001
	BEQ.b CODE_02BF7E
	LDA.w $1352
	AND.w #$0003
	LDX.w #$0002
	CMP.w #$0001
	BEQ.b CODE_02BF7E
	LDX.w #$0003
	CMP.w #$0002
	BEQ.b CODE_02BF7E
	LDX.w #$0004
CODE_02BF7E:
	TXA
	STA.w $1358
	BRA.b CODE_02BFB1

CODE_02BF84:
	LDA.w $1358
	BNE.b CODE_02BFB1
	LDX.w #$0003
	LDA.w $12A2
	CMP.w #$0001
	BEQ.b CODE_02BFAD
	LDA.w $1352
	AND.w #$0003
	LDX.w #$0000
	CMP.w #$0001
	BEQ.b CODE_02BFAD
	LDX.w #$0002
	CMP.w #$0002
	BEQ.b CODE_02BFAD
	LDX.w #$0002
CODE_02BFAD:
	TXA
	STA.w $1358
CODE_02BFB1:
	JSR.w CODE_02B9B7
	REP.b #$20
	LDA.w $1352
	AND.w #$0003
	CMP.w #$0003
	BNE.b CODE_02BFD4
	LDA.w $12A2
	CMP.w #$0001
	BEQ.b CODE_02BFD7
	LDA.w $1354
	AND.w #$0003
	CMP.w #$0003
	BEQ.b CODE_02BFD7
CODE_02BFD4:
	BRL.w CODE_02BE64

CODE_02BFD7:
	REP.b #$20
	LDA.w #$0001
	JSL.l CODE_00C91F
	SEP.b #$20
CODE_02BFE2:
	LDA.w $1335
	BNE.b CODE_02BFE2
	REP.b #$20
	LDA.w $12A2
	CMP.w #$0001
	BEQ.b CODE_02BFF9
	JSL.l CODE_00C833
	JSL.l CODE_009C39
CODE_02BFF9:
	JSR.w CODE_02ACDF
	JSL.l CODE_00A199
	REP.b #$20
	LDA.w $12A2
	CMP.w #$0002
	BCC.b CODE_02C01A
	REP.b #$30
	LDY.w #$0000
	LDX.w #DATA_02B2B8>>16
	LDA.w #DATA_02B2B8
	JSL.l CODE_029AE4
	RTL

CODE_02C01A:
	REP.b #$30
	LDY.w #$0000
	LDX.w #DATA_02B246>>16
	LDA.w #DATA_02B246
	JSL.l CODE_029AE4
	RTL

UNK_02C02A:
	db $01,$84,$E3,$00

UNK_02C02E:
	db "TEAMS",$00

UNK_02C034:
	db $36,$C0,$01,$8C,$23,$01,$F3,$CD,$3E,$C0,$01,$8C,$A3,$01,$08,$CE
	db $00,$00

DATA_02C046:
	dw $FFF0 : db CODE_02C077>>16 : dw CODE_02C077
	dw $FFF2
	dw $0800 : db CODE_02C0CF>>16 : dw CODE_02C0CF
	dw $0400 : db CODE_02C0E9>>16 : dw CODE_02C0E9
	dw $0200 : db CODE_02C109>>16 : dw CODE_02C109
	dw $0100 : db CODE_02C13E>>16 : dw CODE_02C13E
	dw $0080 : db CODE_02C13E>>16 : dw CODE_02C13E
	dw $8000 : db CODE_02C09D>>16 : dw CODE_02C09D
	dw $2000 : db CODE_02C173>>16 : dw CODE_02C173
	dw $1000 : db CODE_02C09D>>16 : dw CODE_02C09D
	dw $FFF3

CODE_02C077:
	REP.b #$30
	SEC
	RTL

CODE_02C07B:
	REP.b #$20
	LDA.w $12A2
	CMP.w #$0002
	BCC.b CODE_02C09C
	JSR.w CODE_02ACDF
	REP.b #$30
	LDY.w #$0000
	LDA.w #DATA_02C046>>16
	LDA.w #DATA_02C046
	JSL.l CODE_029AE4
	REP.b #$20
	STZ.w $1348
CODE_02C09C:
	RTL

CODE_02C09D:
	JSR.w CODE_02ACDF
	REP.b #$20
	LDA.w $12A2
	CMP.w #$0002
	BCC.b CODE_02C0BB
	REP.b #$30
	LDY.w #$0001
	LDX.w #DATA_02B2B8>>16
	LDA.w #DATA_02B2B8
	JSL.l CODE_029AE4
	BRA.b CODE_02C0CA

CODE_02C0BB:
	REP.b #$30
	LDY.w #$0001
	LDX.w #DATA_02B246>>16
	LDA.w #DATA_02B246
	JSL.l CODE_029AE4
CODE_02C0CA:
	JSL.l CODE_02C196
	RTL

CODE_02C0CF:
	REP.b #$20
	LDA.w $1348
	DEC
	CMP.w #$FFFF
	BEQ.b CODE_02C0E8
	STA.w $1348
	REP.b #$20
	LDA.w #$0010
	ORA.w $0702
	STA.w $0702
CODE_02C0E8:
	RTL

CODE_02C0E9:
	REP.b #$30
	LDA.w $12A2
	STA.w $1344
	LDA.w $1348
	INC
	CMP.w $1344
	BCS.b CODE_02C108
	STA.w $1348
	REP.b #$20
	LDA.w #$0010
	ORA.w $0702
	STA.w $0702
CODE_02C108:
	RTL

CODE_02C109:
	REP.b #$30
	LDY.w $1348
	LDA.w #!RAM_FB2000_Level_Smiloids_SpriteTableStart
CODE_02C111:
	CPY.w #$0000
	BEQ.b CODE_02C11D
	CLC
	ADC.w #$0070
	DEY
	BRA.b CODE_02C111

CODE_02C11D:
	TAX
	LDA.b $32,x
	INC
	AND.w #$0003
	CMP.w #$0000
	BEQ.b CODE_02C13D
	LDA.w #$0002
	ORA.w $0342
	STA.w $0342
	REP.b #$20
	LDA.w #$0010
	ORA.w $0702
	STA.w $0702
CODE_02C13D:
	RTL

CODE_02C13E:
	REP.b #$30
	LDY.w $1348
	LDA.w #!RAM_FB2000_Level_Smiloids_SpriteTableStart
CODE_02C146:
	CPY.w #$0000
	BEQ.b CODE_02C152
	CLC
	ADC.w #$0070
	DEY
	BRA.b CODE_02C146

CODE_02C152:
	TAX
	LDA.b $32,x
	DEC
	AND.w #$0003
	CMP.w #$0003
	BEQ.b CODE_02C172
	LDA.w #$0002
	ORA.w $0342
	STA.w $0342
	REP.b #$20
	LDA.w #$0010
	ORA.w $0702
	STA.w $0702
CODE_02C172:
	RTL

CODE_02C173:
	REP.b #$20
	LDA.w $12A2
	STA.w $1344
	LDA.w $1348
	INC
	CMP.w $1344
	BCC.b CODE_02C187
	LDA.w #$0000
CODE_02C187:
	STA.w $1348
	REP.b #$20
	LDA.w #$0010
	ORA.w $0702
	STA.w $0702
	RTL

CODE_02C196:
	REP.b #$30
	LDX.w #!RAM_FB2000_Level_Smiloids_SpriteTableStart
	LDY.w $12A2
CODE_02C19E:
	LDA.b $32,x
	AND.w #$0003
	CMP.w #$0001
	BEQ.b CODE_02C1AD
	CMP.w #$0002
	BNE.b CODE_02C1B0
CODE_02C1AD:
	EOR.w #$0003
CODE_02C1B0:
	NOP #4
	TXA
	CLC
	ADC.w #$0070
	TAX
	DEY
	BNE.b CODE_02C19E
	RTL

CODE_02C1BE:
	REP.b #$20
	LDA.w $1342
	JSL.l CODE_00C6C5
	REP.b #$20
	LDA.w #$7C00
	STA.w $1F5B
	LDA.w #DATA_03D0B5
	JSL.l CODE_00CB69
	REP.b #$20
	LDA.w #$7CE7
	STA.w $1F5B
	LDA.w #DATA_03D0C0
	JSL.l CODE_00CB69
	JSL.l CODE_00CAC1
	JSL.l CODE_0092E1
	REP.b #$20
	STZ.w $1F6D
	LDA.w #$0000
	JSL.l CODE_00923B
	JSL.l CODE_01ABEF
	REP.b #$20
	LDA.w #$0000
	JSL.l CODE_00927C
	REP.b #$20
	LDA.w #$7C00
	STA.w $1F5B
	SEC
	RTL

CODE_02C210:
	JSR.w CODE_02ACDF
	SEP.b #$20
	STZ.w $02FF
	STZ.w !REGISTER_HDMAEnable
	SEP.b #$20
	LDA.b #DATA_03CBEF>>16
	PHA
	REP.b #$30
	LDA.w #DATA_03CBEF
	LDX.w #$0002
	LDY.w #$0072
	JSL.l CODE_00937D
	SEP.b #$20
	PLA
	REP.b #$30
	LDY.w #$0000
	LDX.w #DATA_03D0D7>>16
	LDA.w #DATA_03D0D7
	JSL.l CODE_029AE4
	RTL

CODE_02C242:
	REP.b #$20
	LDA.w $1342
	INC
	CMP.w #$0010
	BCC.b CODE_02C250
	LDA.w #$0000
CODE_02C250:
	STA.w $1342
	REP.b #$20
	LDA.w #$0050
	ORA.w $0702
	STA.w $0702
	RTL

CODE_02C25F:
	REP.b #$20
	LDA.w $1342
	INC
	CMP.w #$0010
	BCS.b CODE_02C278
	STA.w $1342
	REP.b #$20
	LDA.w #$0050
	ORA.w $0702
	STA.w $0702
CODE_02C278:
	RTL

CODE_02C279:
	REP.b #$20
	LDA.w $1342
	BEQ.b CODE_02C28E
	DEC.w $1342
	REP.b #$20
	LDA.w #$0050
	ORA.w $0702
	STA.w $0702
CODE_02C28E:
	RTL

CODE_02C28F:
	REP.b #$20
	LDA.w #$0008
	ORA.w $0702
	STA.w $0702
	RTL

CODE_02C29B:
	REP.b #$20
	LDA.w $0342
	BIT.w #$0002
	BNE.b CODE_02C2A9
	JML.l CODE_02B49A

CODE_02C2A9:
	JML.l CODE_02AF52

CODE_02C2AD:
	REP.b #$20
	LDA.w $1342
	JSL.l CODE_00C6C5
	JSR.w CODE_02ACDF
	REP.b #$30
	LDY.w #$0001
	LDA.w $12A2
	CMP.w #$0002
	BCS.b CODE_02C2C9
	LDY.w #$0000
CODE_02C2C9:
	LDA.w $1F6B
	BNE.b CODE_02C2D9
	LDX.w #DATA_02AE2E>>16
	LDA.w #DATA_02AE2E
	JSL.l CODE_029B36
	RTS

CODE_02C2D9:
	LDY.w #$0001
	LDX.w #DATA_02AE76>>16
	LDA.w #DATA_02AE76
	JSL.l CODE_029B36
	RTS

CODE_02C2E7:
	REP.b #$30
	LDA.w $0348
	CMP.w #$0006
	BCC.b CODE_02C2F3
	SEC
	RTL

CODE_02C2F3:
	LDA.w $12A2
	CMP.w #$0001
	BEQ.b CODE_02C30A
	LDA.w $0348
	ASL
	TAX
	LDA.w DATA_03CCC3,x
	SEC
	SBC.w #$8000
	TAX
	CLC
	RTL

CODE_02C30A:
	LDA.w $0348
	ASL
	TAX
	LDA.w DATA_03CCB7,x
	SEC
	SBC.w #$8000
	TAX
	CLC
	RTL

CODE_02C319:
	REP.b #$20
	STA.w $1346
CODE_02C31E:
	REP.b #$30
	PHX
	PHY
	LDA.w $1346
	LDX.w $1344
	JSL.l CODE_0284A4
	REP.b #$30
	PLY
	PLX
	INC.w $0300
	LDA.w #$0070
	CLC
	ADC.w $1344
	STA.w $1344
	DEY
	BEQ.b CODE_02C345
	DEX
	BNE.b CODE_02C31E
	SEC
	RTS

CODE_02C345:
	CLC
	RTS

CODE_02C347:
	JSL.l CODE_0284A3
	REP.b #$30
	STZ.w $0300
	LDY.w #$0000
	LDA.w #!RAM_FB2000_Level_Smiloids_SpriteTableStart
CODE_02C356:
	CLC
	ADC.w #$0070
	INY
	CPY.w $12A2
	BCC.b CODE_02C356
	TAX
	PHX
CODE_02C362:
	LDA.w #$0010
	STA.b $32,x
	TXA
	CLC
	ADC.w #$0070
	TAX
	INY
	CPY.w #$0010
	BCC.b CODE_02C362
	REP.b #$20
	LDA.w #$0008
	BIT.w $0342
	BEQ.b CODE_02C37F
CODE_02C37D:
	PLA
	RTL

CODE_02C37F:
	JSL.l CODE_02C3CE
	REP.b #$30
	LDA.w $1344
	SEC
	SBC.w $12A2
	BCC.b CODE_02C37D
	TAX
	PLA
	STA.w $1344
	REP.b #$30
	LDA.w #!Define_FB2000_Smiloid_Turkey
	LDY.w $133A
	BEQ.b CODE_02C3A2
	JSR.w CODE_02C319
	BCS.b CODE_02C3CD
CODE_02C3A2:
	REP.b #$30
	LDA.w #!Define_FB2000_Smiloid_Gremlin
	LDY.w $133C
	BEQ.b CODE_02C3B1
	JSR.w CODE_02C319
	BCS.b CODE_02C3CD
CODE_02C3B1:
	REP.b #$30
	LDA.w #!Define_FB2000_Smiloid_Rover
	LDY.w $133E
	BEQ.b CODE_02C3C0
	JSR.w CODE_02C319
	BCS.b CODE_02C3CD
CODE_02C3C0:
	REP.b #$30
	LDA.w #!Define_FB2000_Smiloid_Bouncer
	LDY.w $1340
	BEQ.b CODE_02C3CD
	JSR.w CODE_02C319
CODE_02C3CD:
	RTL

CODE_02C3CE:
	SEP.b #$30
	LDA.b $8A
	LDX.b $8B
	SEP.b #$30
	STA.w !REGISTER_Multiplicand
	STX.w !REGISTER_Multiplier
	NOP #3
	REP.b #$30
	LDA.w !REGISTER_ProductOrRemainderLo
	REP.b #$30
	STA.w $1344
	LDY.w #$0000
CODE_02C3EC:
	REP.b #$10
	LDX.w #$0000
CODE_02C3F1:
	REP.b #$10
	INX
	INY
	REP.b #$30
	LDA.w #$0000
	PHX
	TYA
	XBA
	LSR
	LSR
	LSR
	CLC
	ADC.b $01,S
	ADC.b $01,S
	TAX
	LDA.w $0415,x
	PLX
	REP.b #$30
	DEY
	DEX
	AND.w #$000F
	CMP.w #$000F
	BNE.b CODE_02C419
	DEC.w $1344
CODE_02C419:
	SEP.b #$10
	INX
	CPX.b $8A
	BCC.b CODE_02C3F1
	INY
	CPY.b $8B
	BCC.b CODE_02C3EC
	LDA.w $1344
	RTL

CODE_02C429:
	REP.b #$30
	LDA.w $12A2
	CLC
	ADC.w $0300
	TAY
	LDX.w #!RAM_FB2000_Level_Smiloids_SpriteTableStart
CODE_02C436:
	REP.b #$30
	PHY
	PHX
	LDA.w #$0008
	BIT.w $0342
	BEQ.b CODE_02C44D
	LDA.w #$0100
	BIT.b $00,x
	BNE.b CODE_02C44D
	LDA.b $37,x
	BEQ.b CODE_02C451
CODE_02C44D:
	JSL.l CODE_019B26
CODE_02C451:
	REP.b #$30
	PLX
	PLY
	TXA
	CLC
	ADC.w #$0070
	TAX
	DEY
	BNE.b CODE_02C436
	RTL

CODE_02C45F:
	JSL.l CODE_02C347
	JSL.l CODE_02C429
	JSL.l CODE_009DF7
	RTL

CODE_02C46C:
	REP.b #$30
	LDX.w #!RAM_FB2000_Level_Smiloids_SpriteTableStart
	LDY.w #$0010
CODE_02C474:
	LDA.w #$000F
	AND.b $00,x
	STA.b $00,x
	TXA
	CLC
	ADC.w #$0070
	TAX
	DEY
	BNE.b CODE_02C474
	JSL.l CODE_01A974
	JSL.l CODE_02A579
	JSL.l CODE_02C347
	REP.b #$20
	LDA.w $03CE
	JSL.l CODE_029356
	JSL.l CODE_028F2E
	JSL.l CODE_02C429
	JSL.l CODE_009DF7
	RTL

CODE_02C4A6:
	REP.b #$30
	LDA.w $0342
	BIT.w #$0008
	BNE.b CODE_02C4DD
	BIT.w #$0002
	BEQ.b CODE_02C4DD
	LDA.w $133A
	ORA.w $133C
	ORA.w $133E
	ORA.w $1340
	BNE.b CODE_02C4DD
	JSR.w CODE_02ACDF
	REP.b #$20
	LDA.w #DATA_03D108
	JSL.l CODE_00CB69
	REP.b #$30
	LDA.w #$9080
	LDX.w #$012C
	JSL.l CODE_009A75
	SEC
	RTS

CODE_02C4DD:
	CLC
	RTS

CODE_02C4DF:
	REP.b #$20
	LDA.w #$0002
	BIT.w $0342
	BNE.b CODE_02C4EB
CODE_02C4E9:
	CLC
	RTL

CODE_02C4EB:
	LDA.w $12A2
	CLC
	ADC.w $0300
	TAY
	LDX.w #!RAM_FB2000_Level_Smiloids_SpriteTableStart
	LDA.b $32,x
	STA.w $1344
CODE_02C4FB:
	TXA
	CLC
	ADC.w #$0070
	TAX
	DEY
	BEQ.b CODE_02C50D
	LDA.b $32,x
	CMP.w $1344
	BNE.b CODE_02C4E9
	BRA.b CODE_02C4FB

CODE_02C50D:
	SEC
	RTL

CODE_02C50F:
	REP.b #$30
	LDY.w #$0000
	LDX.w #DATA_02C51F>>16
	LDA.w #DATA_02C51F
	JSL.l CODE_029B36
	RTL

DATA_02C51F:
	dw $FFF0 : db CODE_02C52D>>16 : dw CODE_02C52D
	dw $FFF2
	dw $1000 : db CODE_02C538>>16 : dw CODE_02C538
	dw $FFF3

CODE_02C52D:
	REP.b #$20
	LDA.w #DATA_03D11F
	JSL.l CODE_00CB69
	SEC
	RTL

CODE_02C538:
	REP.b #$20
	LDA.w #$0008
	ORA.w $0702
	STA.w $0702
	RTL

CODE_02C544:
	JSL.l CODE_00B8F9
	REP.b #$20
	LDA.w $12A2
	CMP.w #$0002
	BCS.b CODE_02C58C
	REP.b #$20
	LDA.w $03C6
	BIT.w #$0030
	BEQ.b CODE_02C564
	INC.w $0BC4
	SEP.b #$20
	INC.w $0BCB
CODE_02C564:
	REP.b #$20
	LDA.w $03C6
	BIT.w #$0010
	BEQ.b CODE_02C576
	INC.w $0BC4
	SEP.b #$20
	INC.w $0BCB
CODE_02C576:
	REP.b #$20
	LDA.w $03C6
	EOR.w #$0030
	AND.w #$0030
	BNE.b CODE_02C58B
	INC.w $0BC4
	SEP.b #$20
	INC.w $0BCB
CODE_02C58B:
	RTL

CODE_02C58C:
	REP.b #$20
	LDA.w $03C6
	BIT.w #$0030
	BEQ.b CODE_02C59E
	INC.w $0C34
	SEP.b #$20
	INC.w $0C3B
CODE_02C59E:
	REP.b #$20
	LDA.w $03C6
	BIT.w #$0010
	BEQ.b CODE_02C5B0
	INC.w $0C34
	SEP.b #$20
	INC.w $0C3B
CODE_02C5B0:
	REP.b #$20
	LDA.w $03C6
	EOR.w #$0030
	AND.w #$0030
	BNE.b CODE_02C5C5
	INC.w $0C34
	SEP.b #$20
	INC.w $0C3B
CODE_02C5C5:
	REP.b #$20
	LDA.w $03C8
	BIT.w #$0030
	BEQ.b CODE_02C5D7
	INC.w $0BC4
	SEP.b #$20
	INC.w $0BCB
CODE_02C5D7:
	REP.b #$20
	LDA.w $03C8
	BIT.w #$0010
	BEQ.b CODE_02C5E9
	INC.w $0BC4
	SEP.b #$20
	INC.w $0BCB
CODE_02C5E9:
	REP.b #$20
	LDA.w $03C8
	EOR.w #$0030
	AND.w #$0030
	BNE.b CODE_02C5FE
	INC.w $0BC4
	SEP.b #$20
	INC.w $0BCB
CODE_02C5FE:
	RTL

CODE_02C5FF:
	REP.b #$20
	LDA.w #$0004
	BIT.w $1C93
	BNE.b CODE_02C63E
	JSL.l CODE_00C833
	JSL.l CODE_009C39
	SEP.b #$20
	STZ.w !REGISTER_BG1VertScrollOffset
	STZ.w !REGISTER_BG1VertScrollOffset
	STZ.w !REGISTER_BG1HorizScrollOffset
	STZ.w !REGISTER_BG1HorizScrollOffset
	JSL.l CODE_02804D
	REP.b #$30
	LDA.w #$0080
	LDY.w #$0000
	LDX.w #$0001
	JSL.l CODE_02806C
	JSL.l CODE_028000
	REP.b #$20
	LDA.w #$7C00
	STA.w $1F5B
CODE_02C63E:
	REP.b #$30
	STZ.w $0346
	STZ.w $0348
	STZ.w $133A
	STZ.w $133C
	STZ.w $133E
	STZ.w $1340
	LDA.w $12A2
	CMP.w #$0001
	BNE.b CODE_02C660
	LDA.w #$0001
	STA.w $133C
CODE_02C660:
	JSL.l CODE_019A4E
	JSL.l CODE_01A974
	JSL.l CODE_02A579
	REP.b #$20
	LDA.w #$0021
	STA.w $0342
	JSL.l CODE_00993C
	REP.b #$20
	LDA.w $12A2
	CMP.w #$0002
	BNE.b CODE_02C688
	LDA.w #$0000
	STA.w $133C
CODE_02C688:
	REP.b #$20
	LDA.w $0346
	STA.w $1342
	LDA.w #$0030
	STA.w $03CE
	LDA.w $0342
	BIT.w #$0400
	BEQ.b CODE_02C6A1
	JSR.w CODE_02B1D2
CODE_02C6A1:
	JSL.l CODE_02B225
	REP.b #$20
	LDA.w $12A2
	CMP.w #$0001
	BNE.b CODE_02C6C3
	LDA.w $133A
	ORA.w $133C
	ORA.w $133E
	ORA.w $1340
	BNE.b CODE_02C6C3
	LDA.w #$0001
	STA.w $133C
CODE_02C6C3:
	LDA.w #$0004
	BIT.w $1C93
	BNE.b CODE_02C6CE
	JSR.w CODE_02C2AD
CODE_02C6CE:
	REP.b #$30
	LDA.w $1342
	STA.w $0346
	JSL.l CODE_00C6C5
	JSL.l CODE_009869
	REP.b #$20
	LDA.w #$0008
	BIT.w $0342
	BEQ.b CODE_02C703
	JSL.l CODE_00B8F9
	REP.b #$20
	LDA.w $03C6
	AND.w #$0030
	EOR.w #$0030
	BNE.b CODE_02C6FD
	JSL.l CODE_02B97B
CODE_02C6FD:
	JSL.l CODE_02C46C
	BRA.b CODE_02C713

CODE_02C703:
	JSL.l CODE_02C45F
	JSR.w CODE_02C4A6
	BCC.b CODE_02C70F
	BRL.w CODE_02C63E

CODE_02C70F:
	JSL.l CODE_02C544
CODE_02C713:
	REP.b #$20
	LDA.w #$0004
	BIT.w $1C93
	BNE.b CODE_02C757
	SEP.b #$20
	LDA.w $020B
	CMP.b #$0F
	BEQ.b CODE_02C739
	LDA.w $020A
	CMP.b #$01
	BEQ.b CODE_02C739
	REP.b #$30
	LDX.w #$0005
	LDA.w #$0002
	JSL.l CODE_008871
CODE_02C739:
	SEP.b #$20
	LDA.w $1336
	BEQ.b CODE_02C750
	LDA.w $1335
	CMP.b #$FF
	BEQ.b CODE_02C750
	REP.b #$20
	LDA.w #$0002
	JSL.l CODE_00C91F
CODE_02C750:
	SEP.b #$20
CODE_02C752:
	LDA.w $1335
	BNE.b CODE_02C752
CODE_02C757:
	RTL

CODE_02C758:
	REP.b #$20
	PHA
	LDA.w #$0002
	BIT.w $1C93
	BNE.b CODE_02C765
	PLA
	RTS

CODE_02C765:
	PLA
	SEP.b #$20
	REP.b #$10
	TXY
	STZ.b $AF
	STZ.b $B0
	STA.b $B1
	REP.b #$30
	LDA.w #$BBAA
CODE_02C776:
	CMP.w !REGISTER_APUPort0
	BNE.b CODE_02C776
	SEP.b #$20
	LDA.b #$CC
	BRA.b CODE_02C7B7

CODE_02C781:
	SEP.b #$20
	LDA.b [$AF],y
	INY
	BNE.b CODE_02C78D
	INC.b $B1
	LDY.w #$8000
CODE_02C78D:
	XBA
	LDA.b #$00
	BRA.b CODE_02C7A4

CODE_02C792:
	XBA
	LDA.b [$AF],y
	INY
	BNE.b CODE_02C79D
	INC.b $B1
	LDY.w #$8000
CODE_02C79D:
	XBA
CODE_02C79E:
	CMP.w !REGISTER_APUPort0
	BNE.b CODE_02C79E
	INC
CODE_02C7A4:
	REP.b #$20
	STA.w !REGISTER_APUPort0
	SEP.b #$20
	DEX
	BNE.b CODE_02C792
CODE_02C7AE:
	CMP.w !REGISTER_APUPort0
	BNE.b CODE_02C7AE
CODE_02C7B3:
	ADC.b #$03
	BEQ.b CODE_02C7B3
CODE_02C7B7:
	SEP.b #$20
	PHA
	REP.b #$20
	LDA.b [$AF],y
	INY
	INY
	TAX
	LDA.b [$AF],y
	INY
	INY
	STA.w !REGISTER_APUPort2
	SEP.b #$20
	CPX.w #$0001
	LDA.b #$00
	ROL
	STA.w !REGISTER_APUPort1
	ADC.b #$7F
	PLA
	STA.w !REGISTER_APUPort0
CODE_02C7D9:
	CMP.w !REGISTER_APUPort0
	BNE.b CODE_02C7D9
	BVS.b CODE_02C781
	STZ.w !REGISTER_APUPort0
	STZ.w !REGISTER_APUPort1
	STZ.w !REGISTER_APUPort2
	STZ.w !REGISTER_APUPort3
	STZ.w $1C04
	LDA.w $1C04
	STA.l $7EA284
	LDX.w #$0005
CODE_02C7F9:
	DEX
	BPL.b CODE_02C7F9
	RTS

CODE_02C7FD:
	REP.b #$30
	PHA
	LDA.w #$0002
	BIT.w $1C93
	BNE.b CODE_02C80A
	PLA
	RTS

CODE_02C80A:
	PLA
	SEP.b #$20
	REP.b #$10
	LDX.w #$2710
	XBA
	LDA.w $1C04
CODE_02C816:
	DEX
	BNE.b CODE_02C81E
	LDA.w !REGISTER_APUPort2
	BRA.b CODE_02C826

CODE_02C81E:
	CMP.w !REGISTER_APUPort2
	BNE.b CODE_02C816
CODE_02C823:
	INC
	BEQ.b CODE_02C823
CODE_02C826:
	STA.w $1C04
	REP.b #$30
	STY.w !REGISTER_APUPort0
	STA.w !REGISTER_APUPort2
	SEP.b #$20
	LDA.w $1C04
	STA.l $7EA284
	RTS

CODE_02C83B:
	REP.b #$30
	LDA.w #$000E
	LDY.w #$0000
	JSR.w CODE_02C7FD
	REP.b #$20
	PEA.w DATA_08EC0A
	PEA.w DATA_08EC0A>>16
	PEA.w $7F0000
	PEA.w $7F0000>>16
	JSL.l CODE_0188AC
	REP.b #$30
	PLA
	PLA
	PLA
	PLA
	LDX.w #$7F0000
	LDA.w #$7F0000>>16
	JSR.w CODE_02C758
	REP.b #$30
	LDA.w #$0002
	LDY.w #$0000
	JSR.w CODE_02C7FD
	REP.b #$30
	LDA.w #$0006
	LDY.w #$0003
	JSR.w CODE_02C7FD
	RTL

CODE_02C87E:
	REP.b #$30
	PHA
	LDA.w #$000E
	LDY.w #$0000
	JSR.w CODE_02C7FD
	REP.b #$30
	PLA
	AND.w #$0007
	CMP.w #!Define_FB2000_Music_CyberZone
	BCC.b CODE_02C896
	DEC
CODE_02C896:
	ASL
	ASL
	TAY
	LDA.w DATA_03D14E,y
	TAX
	LDA.w DATA_03D14E+$02,y
	JSR.w CODE_02C758
	REP.b #$30
	LDA.w #$0002
	LDY.w #$0000
	JSR.w CODE_02C7FD
	REP.b #$30
	LDA.w #$0006
	LDY.w #$0003
	JSR.w CODE_02C7FD
	RTL

CODE_02C8BA:
	REP.b #$30
	LDA.w #$0006
	LDY.w #$0000
	JSR.w CODE_02C7FD
	RTL

CODE_02C8C6:
	REP.b #$30
	LDA.w #$0006
	LDY.w #$0001
	JSR.w CODE_02C7FD
	RTL

CODE_02C8D2:
	REP.b #$30
	LDA.w #$000E
	LDY.w #$0000
	JSR.w CODE_02C7FD
	REP.b #$30
	LDX.w #DATA_09AB98
	LDA.w #DATA_09AB98>>16
	JSR.w CODE_02C758
	REP.b #$30
	LDA.w #$0002
	LDY.w #$0000
	JSR.w CODE_02C7FD
	REP.b #$30
	LDA.w #$0006
	LDY.w #$0004
	JSR.w CODE_02C7FD
	RTL

CODE_02C8FF:
	REP.b #$30
	LDA.w #$0006
	LDY.w #$0002
	JSR.w CODE_02C7FD
	RTL

CODE_02C90B:
	PHP
	REP.b #$30
	PHX
	PHY
	LDX.w $1C05
	BNE.b CODE_02C93E
	AND.w #$00FF
	TAY
	CMP.w #$0009
	BEQ.b CODE_02C932
	CMP.w #$000A
	BEQ.b CODE_02C932
	CMP.w #$000B
	BEQ.b CODE_02C932
	CMP.w #$000C
	BEQ.b CODE_02C932
	CMP.w #$000D
	BNE.b CODE_02C938
CODE_02C932:
	LDA.w #$0078
	STA.w $1C05
CODE_02C938:
	LDA.w #$0004
	JSR.w CODE_02C7FD
CODE_02C93E:
	REP.b #$10
	PLY
	PLX
	PLP
	RTL

CODE_02C944:
	REP.b #$30
	REP.b #$30
	LDA.w #$0012
	LDY.w #$7F01
	JSR.w CODE_02C7FD
	RTL

CODE_02C952:
	REP.b #$30
	LDA.w #$0010
	LDY.w #$0101
	JSR.w CODE_02C7FD
	RTL

CODE_02C95E:
	REP.b #$30
	LDA.w #$0012
	LDY.w #$0101
	JSR.w CODE_02C7FD
	RTL

CODE_02C96A:
	REP.b #$30
	LDA.w #$001A
	LDY.w #$0000
	JSR.w CODE_02C7FD
	RTL

CODE_02C976:
	REP.b #$30
	LDA.w #$0008
	LDY.w #$0002
	JSR.w CODE_02C7FD
	RTL

CODE_02C982:
	REP.b #$30
	LDA.w #$000C
	LDY.w #$0003
	JSR.w CODE_02C7FD
	RTL

CODE_02C98E:
	REP.b #$30
	LDA.w #$0016
	LDY.w #$0000
	JSR.w CODE_02C7FD
	RTL

CODE_02C99A:
	REP.b #$30
	LDA.w #$0016
	LDY.w #$0032
	JSR.w CODE_02C7FD
	RTL

CODE_02C9A6:
	REP.b #$20
	LDA.w #$0001
	BIT.w $1C93
	BNE.b CODE_02C9D1
	REP.b #$20
	LDA.w #$0002
	ORA.w $1C93
	STA.w $1C93
	REP.b #$30
	LDX.w #DATA_0BFA47
	LDA.w #DATA_0BFA47>>16
	JSR.w CODE_02C758
	REP.b #$30
	LDX.w #DATA_09D405
	LDA.w #DATA_09D405>>16
	JSR.w CODE_02C758
CODE_02C9D1:
	SEP.b #$20
	LDA.l $7EA284
	STA.w $1C04
	REP.b #$30
	LDA.w #$000E
	LDY.w #$0000
	JSR.w CODE_02C7FD
	REP.b #$30
	LDX.w #DATA_0A8000
	LDA.w #DATA_0A8000>>16
	JSR.w CODE_02C758
	RTL

CODE_02C9F1:
	REP.b #$30
	LDX.w #$0000
	JSR.w CODE_02CA24
	REP.b #$30
	LDX.w #!RAM_FB2000_Level_Smiloids_SpriteTableStart
	LDA.w #$0005
	ORA.b $02,x
	STA.b $02,x
	LDA.w $12A2
	CMP.w #$0001
	BEQ.b CODE_02CA17
	LDX.w #$0C0A
	LDA.w #$0005
	ORA.b $02,x
	STA.b $02,x
CODE_02CA17:
	LDA.w #$0008
	BIT.w $0342
	BEQ.b CODE_02CA23
	JSL.l CODE_029F0F
CODE_02CA23:
	RTL

CODE_02CA24:
	REP.b #$30
	PHX
	STZ.w $1C7F
	LDX.w #!RAM_FB2000_Level_Smiloids_SpriteTableStart
CODE_02CA2D:
	LDA.w #$0010
	BIT.b $00,x
	BEQ.b CODE_02CA41
	LDA.b $3D,x
	CMP.w $1C7F
	BCC.b CODE_02CA41
	STA.w $1C7F
	STX.w $1C7D
CODE_02CA41:
	TXA
	CLC
	ADC.w #$0070
	TAX
	CPX.w #$129A
	BNE.b CODE_02CA2D
	PLX
	CPX.w $1C7D
	BNE.b CODE_02CA6C
	LDA.w #$0001
	ORA.w $0B9C
	STA.w $0B9C
	LDA.w $12A2
	CMP.w #$0001
	BEQ.b CODE_02CA6C
	LDA.w #$0001
	ORA.w $0C0C
	STA.w $0C0C
CODE_02CA6C:
	RTS

CODE_02CA6D:
	REP.b #$30
	LDA.b FB2000_Level_Smiloid[$00].IDLo,x
	CMP.w #!Define_FB2000_Smiloid_ShootMe
	BEQ.b CODE_02CAC7
	CMP.w #!Define_FB2000_Smiloid_ShootMe2
	BEQ.b CODE_02CAC7
	CMP.w #!Define_FB2000_Smiloid_IShoot
	BEQ.b CODE_02CAC7
	CMP.w #!Define_FB2000_Smiloid_IShoot2
	BEQ.b CODE_02CAC7
	CMP.w #!Define_FB2000_Smiloid_Turkey
	BEQ.b CODE_02CACF
	CMP.w #!Define_FB2000_Smiloid_Gremlin
	BEQ.b CODE_02CACF
	CMP.w #!Define_FB2000_Smiloid_Wally
	BEQ.b CODE_02CACF
	CMP.w #!Define_FB2000_Smiloid_Rover
	BEQ.b CODE_02CACF
	CMP.w #!Define_FB2000_Smiloid_Bouncer
	BEQ.b CODE_02CAD7
	CMP.w #!Define_FB2000_Smiloid_Scanner
	BEQ.b CODE_02CAD7
	CMP.w #!Define_FB2000_Smiloid_Vampire
	BEQ.b CODE_02CAD7
	CMP.w #!Define_FB2000_Smiloid_Guard
	BEQ.b CODE_02CAD7
	CMP.w #!Define_FB2000_Smiloid_Sonar
	BEQ.b CODE_02CADF
	CMP.w #!Define_FB2000_Smiloid_Kamikaze
	BEQ.b CODE_02CADF
	CMP.w #!Define_FB2000_Smiloid_Shark
	BEQ.b CODE_02CADF
	CMP.w #!Define_FB2000_Smiloid_Ninja
	BEQ.b CODE_02CADF
	CMP.w #!Define_FB2000_Smiloid_Master
	BEQ.b CODE_02CADF
	RTS

CODE_02CAC7:
	LDA.w #$000B
	JSL.l CODE_02C90B
	RTS

CODE_02CACF:
	LDA.w #$000A
	JSL.l CODE_02C90B
	RTS

CODE_02CAD7:
	LDA.w #$0009
	JSL.l CODE_02C90B
	RTS

CODE_02CADF:
	LDA.w #$000C
	JSL.l CODE_02C90B
	RTS

CODE_02CAE7:
	REP.b #$30
	CPX.w #!RAM_FB2000_Level_Smiloids_SpriteTableStart
	BNE.b CODE_02CAF3
	JSL.l CODE_00A530
	RTS

CODE_02CAF3:
	LDA.w $12A2
	CMP.w #$0002
	BCC.b CODE_02CB04
	CPX.w #$0C0A
	BNE.b CODE_02CB04
	JSL.l CODE_00A539
CODE_02CB04:
	RTS

CODE_02CB05:
	REP.b #$30
	LDA.w #$0040
	STA.w !RAM_FB2000_Level_MasterDeathTimerLo
	LDA.w #$FFBF
	AND.b $00,x
	ORA.w #$0020
	STA.b $00,x
	INC.b FB2000_Level_Smiloid[$00].HPLo,x
	LDX.w #!RAM_FB2000_Level_Smiloids_SpriteTableStart
CODE_02CB1C:
	LDA.b $00,x
	BIT.w #$0010
	BEQ.b CODE_02CB36
	BIT.w #$0100
	BEQ.b CODE_02CB36
	LDA.b FB2000_Level_Smiloid[$00].IDLo,x
	CMP.w #!Define_FB2000_Smiloid_Master
	BEQ.b CODE_02CB36
	LDA.w #$FFEF
	AND.b $00,x
	STA.b $00,x
CODE_02CB36:
	TXA
	CLC
	ADC.w #$0070
	TAX
	CPX.w #$129A
	BCC.b CODE_02CB1C
	JSL.l CODE_02C8D2
	RTS

CODE_02CB46:
	REP.b #$30
	LDX.w #!RAM_FB2000_Level_Smiloids_SpriteTableStart
CODE_02CB4B:
	REP.b #$30
	LDA.b $00,x
	BIT.w #$0010
	BEQ.b CODE_02CBA1
	REP.b #$30
	BIT.w #$0040
	BEQ.b CODE_02CBA4
	LDA.b $1E,x
	BEQ.b CODE_02CB63
	DEC.b $1E,x
	BNE.b CODE_02CBA1
CODE_02CB63:
	LDA.w #$FFEF
	AND.b $00,x
	STA.b $00,x
	LDA.b $00,x
	BIT.w #$0100
	BNE.b CODE_02CB7F
	LDA.w $0342
	BIT.w #$0008
	BEQ.b CODE_02CB91
	LDA.b $37,x
	BNE.b CODE_02CB91
	BRA.b CODE_02CBA1

CODE_02CB7F:
	LDA.w $0342
	BIT.w #$0008
	BEQ.b CODE_02CB91
	BIT.w #$0400
	BEQ.b CODE_02CBA1
	LDA.w $0352
	BEQ.b CODE_02CBA1
CODE_02CB91:
	PHX
	JSL.l CODE_019B05
	REP.b #$30
	PLX
	PHX
	JSL.l CODE_01A39A
	REP.b #$30
	PLX
CODE_02CBA1:
	BRL.w CODE_02CD9A

CODE_02CBA4:
	REP.b #$30
	BIT.w #$2020
	BNE.b CODE_02CBAE
CODE_02CBAB:
	BRL.w CODE_02CD3F

CODE_02CBAE:
	PHX
	JSR.w CODE_02CAE7
	REP.b #$30
	PLX
	LDA.w #$FFDF
	AND.b $00,x
	STA.b $00,x
	BIT.w #$1000
	BNE.b CODE_02CBAB
	LDA.b FB2000_Level_Smiloid[$00].ShieldTimerLo,x
	BNE.b CODE_02CBAB
	LDA.b $00,x
	BIT.w #$2000
	BNE.b CODE_02CBE0
	BIT.w #$0100
	BEQ.b CODE_02CBE0
	LDY.b $3F,x
	CPY.w #$FFFF
	BEQ.b CODE_02CBE0
	LDA.w $0000,y
	BIT.w #$0100
	BNE.b CODE_02CBAB
CODE_02CBE0:
	LDA.w #$0002
	JSL.l CODE_02C90B
	REP.b #$30
	LDA.w #$2000
	BIT.b $00,x
	BNE.b CODE_02CC22
	PHX
	LDA.b $3F,x
	CMP.w #$FFFF
	BEQ.b CODE_02CBFB
	TAX
	LDA.b $32,x
CODE_02CBFB:
	STA.w $1C7B
	PLX
	LDA.w $0342
	BIT.w #$0002
	BEQ.b CODE_02CC13
	LDA.w $1C7B
	CMP.w #$FFFF
	BEQ.b CODE_02CC13
	CMP.b $32,x
	BEQ.b CODE_02CBAB
CODE_02CC13:
	LDA.b $22,x
	STA.b $20,x
	LDA.w #$0004
	ORA.b $02,x
	STA.b $02,x
	DEC.b FB2000_Level_Smiloid[$00].HPLo,x
	BNE.b CODE_02CBAB
CODE_02CC22:
	LDA.w #$0040
	ORA.b $00,x
	STA.b $00,x
	STZ.b FB2000_Level_Smiloid[$00].HPLo,x
	LDA.w #$DFFF
	AND.b $00,x
	STA.b $00,x
	PHX
	LDA.w #$0004
	JSL.l CODE_02C90B
	REP.b #$30
	PLX
	PHX
	JSL.l CODE_01A4C3
	REP.b #$30
	PLX
	LDA.b $00,x
	BIT.w #$0100
	BEQ.b CODE_02CC68
	LDA.b FB2000_Level_Smiloid[$00].IDLo,x
	CMP.w #!Define_FB2000_Smiloid_Master
	BNE.b CODE_02CC5A
	PHX
	JSR.w CODE_02CB05
	REP.b #$30
	PLX
CODE_02CC5A:
	LDA.b $3F,x
	BEQ.b CODE_02CC82
	CMP.w #$FFFF
	BEQ.b CODE_02CC82
	INC.w $03A5
	BRA.b CODE_02CC82

CODE_02CC68:
	LDA.b $3F,x
	BEQ.b CODE_02CC82
	CMP.w #$FFFF
	BEQ.b CODE_02CC82
	TAY
	LDA.w $0000,y
	BIT.w #$0100
	BEQ.b CODE_02CC82
	PHX
	TYX
	JSR.w CODE_02CA6D
	REP.b #$30
	PLX
CODE_02CC82:
	LDA.w #$001E
	STA.b $1E,x
	LDA.w $0342
	BIT.w #$0008
	BEQ.b CODE_02CCA9
	LDA.w #$0100
	BIT.b $00,x
	BNE.b CODE_02CCA9
	LDA.w #$0020
	ORA.b $02,x
	STA.b $02,x
	DEC.b $37,x
	BNE.b CODE_02CCA9
	PHX
	JSL.l CODE_02D1D2
	REP.b #$30
	PLX
CODE_02CCA9:
	LDA.w $0342
	BIT.w #$0002
	BEQ.b CODE_02CCDD
	LDA.b $3F,x
	CMP.w #$FFFF
	BEQ.b CODE_02CCDB
	PHX
	LDX.w #!RAM_FB2000_Level_Smiloids_SpriteTableStart
CODE_02CCBC:
	LDA.b $32,x
	CMP.w $1C7B
	BNE.b CODE_02CCCF
	INC.b $3D,x
	LDA.w #$0001
	ORA.b $02,x
	STA.b $02,x
	JSR.w CODE_02CA24
CODE_02CCCF:
	TXA
	CLC
	ADC.w #$0070
	TAX
	CPX.w #$129A
	BNE.b CODE_02CCBC
	PLX
CODE_02CCDB:
	BRA.b CODE_02CD18

CODE_02CCDD:
	REP.b #$30
	LDA.b $3F,x
	CMP.w #$FFFF
	BEQ.b CODE_02CD18
	PHX
	TAX
	LDA.b $00,x
	BIT.w #$0100
	BEQ.b CODE_02CD0B
	LDX.w #!RAM_FB2000_Level_Smiloids_SpriteTableStart
CODE_02CCF2:
	LDA.w #$0100
	BIT.b $00,x
	BEQ.b CODE_02CCFE
	INC.b $3D,x
	JSR.w CODE_02CA24
CODE_02CCFE:
	TXA
	CLC
	ADC.w #$0070
	TAX
	CPX.w #$129A
	BNE.b CODE_02CCF2
	BRA.b CODE_02CD17

CODE_02CD0B:
	INC.b $3D,x
	LDA.w #$0001
	ORA.b $02,x
	STA.b $02,x
	JSR.w CODE_02CA24
CODE_02CD17:
	PLX
CODE_02CD18:
	LDA.w #$0008
	BIT.w $0342
	BEQ.b CODE_02CD3F
	LDA.b $00,x
	BIT.w #$0100
	BEQ.b CODE_02CD3F
	PHX
	LDA.b $3F,x
	CMP.w #$FFFF
	BEQ.b CODE_02CD3C
	PHA
	LDA.b FB2000_Level_Smiloid[$00].IDLo,x
	ASL
	TAX
	LDA.w DATA_03D1B5,x
	PLX
	JSL.l CODE_0199B5
CODE_02CD3C:
	REP.b #$30
	PLX
CODE_02CD3F:
	REP.b #$30
	LDA.b $20,x
	BEQ.b CODE_02CD49
	DEC.b $20,x
	BNE.b CODE_02CD6A
CODE_02CD49:
	LDA.b $22,x
	STA.b $20,x
	LDA.b FB2000_Level_Smiloid[$00].HPLo,x
	CMP.b FB2000_Level_Smiloid[$00].MaxHPRegenLo,x
	BCS.b CODE_02CD6A
	INC.b FB2000_Level_Smiloid[$00].HPLo,x
	LDA.w #$0004
	ORA.b $02,x
	STA.b $02,x
	LDA.w #$0100
	BIT.b $00,x
	BNE.b CODE_02CD6A
	LDA.w #$0008
	JSL.l CODE_02C90B
CODE_02CD6A:
	LDA.w #$0080
	BIT.b $00,x
	BEQ.b CODE_02CD84
	LDA.b FB2000_Level_Smiloid[$00].ShotDelayLo,x
	BEQ.b CODE_02CD79
	DEC.b FB2000_Level_Smiloid[$00].ShotDelayLo,x
	BNE.b CODE_02CD84
CODE_02CD79:
	LDA.b FB2000_Level_Smiloid[$00].MaxShotDelayLo,x
	STA.b FB2000_Level_Smiloid[$00].ShotDelayLo,x
	LDA.w #$FF7F
	AND.b $00,x
	STA.b $00,x
CODE_02CD84:
	LDA.w #$1000
	BIT.b $00,x
	BEQ.b CODE_02CD9A
	LDA.b $1C,x
	BEQ.b CODE_02CD93
	DEC.b $1C,x
	BNE.b CODE_02CD9A
CODE_02CD93:
	LDA.w #$EFFF
	AND.b $00,x
	STA.b $00,x
CODE_02CD9A:
	REP.b #$30
	TXA
	CLC
	ADC.w #$0070
	TAX
	CPX.w #$129A
	BEQ.b CODE_02CDAA
	BRL.w CODE_02CB4B

CODE_02CDAA:
	RTL

CODE_02CDAB:
	REP.b #$30
	CMP.w #$000A
	BCC.b CODE_02CDB5
	LDA.w #$000A
CODE_02CDB5:
	STA.w $1C87
	LDA.w #$3000
	STA.w $1C89
	LDA.w #$3200
	STA.w $1C8B
	CPX.w #!RAM_FB2000_Level_Smiloids_SpriteTableStart
	BEQ.b CODE_02CDCF
	CPX.w #$0C0A
	BEQ.b CODE_02CDE5
	RTS

CODE_02CDCF:
	LDA.w #$0008
	STA.w $1C85
	LDX.w #DATA_03D207-$8000
	LDA.w $12A2
	CMP.w #$0002
	BCC.b CODE_02CDE3
	LDX.w #DATA_03D22F-$8000
CODE_02CDE3:
	BRA.b CODE_02CDEE

CODE_02CDE5:
	LDA.w #$0012
	STA.w $1C85
	LDX.w #DATA_03D257-$8000
CODE_02CDEE:
	LDY.w #$0001
CODE_02CDF1:
	PHX
	PHY
	LDA.w DATA_03D207&$FF8000,x
	PHA
	INX
	INX
	LDA.w $1C8B
	CPY.w $1C87
	BEQ.b CODE_02CE03
	BCS.b CODE_02CE06
CODE_02CE03:
	LDA.w $1C89
CODE_02CE06:
	ORA.w DATA_03D207&$FF8000,x
	CPY.w $1C7F
	BEQ.b CODE_02CE1B
	BCC.b CODE_02CE1B
	PHA
	LDA.w $1C85
	ORA.w #$8000
	TAY
	PLA
	BRA.b CODE_02CE1E

CODE_02CE1B:
	LDY.w $1C85
CODE_02CE1E:
	PLX
	JSL.l CODE_01AA0B
	REP.b #$30
	PLY
	PLA
	CLC
	ADC.w #$0004
	TAX
	INC.w $1C85
	INY
	CPY.w #$000B
	BCC.b CODE_02CDF1
	RTS

CODE_02CE36:
	REP.b #$30
	STY.w $1C87
	LDA.w #$3000
	STA.w $1C89
	LDA.w #$3200
	STA.w $1C8B
	CPX.w #!RAM_FB2000_Level_Smiloids_SpriteTableStart
	BEQ.b CODE_02CE52
	CPX.w #$0C0A
	BEQ.b CODE_02CE68
	RTS

CODE_02CE52:
	LDA.w #$4000
	STA.w $1C85
	LDX.w #DATA_03D1D7-$8000
	LDA.w $12A2
	CMP.w #$0002
	BNE.b CODE_02CE71
	LDX.w #DATA_03D1E7-$8000
	BRA.b CODE_02CE71

CODE_02CE68:
	LDA.w #$4004
	STA.w $1C85
	LDX.w #DATA_03D1F7-$8000
CODE_02CE71:
	LDY.w #$0003
CODE_02CE74:
	PHX
	PHY
	LDA.w DATA_03D1D7&$FF8000,x
	PHA
	INX
	INX
	LDA.w $1C8B
	CPY.w $1C87
	BNE.b CODE_02CE87
	LDA.w $1C89
CODE_02CE87:
	ORA.w DATA_03D1D7&$FF8000,x
	PLX
	LDY.w $1C85
	JSL.l CODE_01AA0B
	REP.b #$30
	PLY
	PLA
	CLC
	ADC.w #$0004
	TAX
	INC.w $1C85
	DEY
	BPL.b CODE_02CE74
	RTS

CODE_02CEA2:
	REP.b #$30
	LDA.w $0342
	BIT.w #$0008
	BNE.b CODE_02CEC1
	LDA.b $02,x
	BIT.w #$0001
	BEQ.b CODE_02CEC1
	AND.w #$FFFE
	STA.b $02,x
	PHX
	LDA.b $3D,x
	JSR.w CODE_02CDAB
	REP.b #$10
	PLX
CODE_02CEC1:
	REP.b #$30
	LDA.b $02,x
	BIT.w #$0004
	BEQ.b CODE_02CF0B
	AND.w #$FFFB
	STA.b $02,x
	PHX
	LDY.b FB2000_Level_Smiloid[$00].HPLo,x
	BEQ.b CODE_02CF05
	LDA.b FB2000_Level_Smiloid[$00].MaxHPRegenLo,x
	LDX.w #$0003
	REP.b #$20
	STA.w !REGISTER_DividendLo
	SEP.b #$10
	STX.w !REGISTER_Divisor
	NOP #7
	REP.b #$10
	LDA.w !REGISTER_QuotientLo
	REP.b #$30
	PLX
	PHX
	LDY.w #$0001
	CMP.b FB2000_Level_Smiloid[$00].HPLo,x
	BCS.b CODE_02CF05
	ASL
	LDY.w #$0002
	CMP.b FB2000_Level_Smiloid[$00].HPLo,x
	BCS.b CODE_02CF05
	LDY.w #$0003
CODE_02CF05:
	JSR.w CODE_02CE36
	REP.b #$10
	PLX
CODE_02CF0B:
	REP.b #$20
	LDA.w #$0008
	BIT.w $0342
	BEQ.b CODE_02CF19
	JSL.l CODE_02A132
CODE_02CF19:
	RTL

CODE_02CF1A:
	SEP.b #$20
	STA.w $1C20
	REP.b #$30
	LDA.w #$4002
	STA.w $1C0B
	LDA.w #$0000
	STA.w $1C18
	LDA.w #$0018
	STA.w $1C1A
	LDA.b $2C,x
	STA.w $1C37
	LDA.b $2E,x
	STA.w $1C39
	LDX.w #$1C0B
	JSL.l CODE_019F7F
	RTL

CODE_02CF45:
	REP.b #$30
	LDA.w #$0040
	ORA.b $02,x
	STA.b $02,x
	PHX
	LDA.b $3F,x
	CMP.w #$FFFF
	BNE.b CODE_02CF58
	LDA.b $01,S
CODE_02CF58:
	TAX
	LDA.w #$FFFF
	JSL.l CODE_02CF1A
	REP.b #$30
	PLX
	LDA.b $3F,x
	CMP.w #$FFFF
	BEQ.b CODE_02CF95
	TAX
	JSL.l CODE_0095B0
	SEP.b #$20
	LDA.b #$20
	STA.w $036C,y
	INY
	LDX.w #DATA_03D27F-$8000
CODE_02CF7A:
	LDA.w DATA_03D27F&$FF8000,x
	STA.w $036C,y
	INX
	INY
	CMP.b #$00
	BNE.b CODE_02CF7A
	REP.b #$30
	LDY.w #$0003
	LDX.w #$0019
	LDA.w #$036C
	JSL.l CODE_00CCE3
CODE_02CF95:
	REP.b #$20
	LDA.w #DATA_03D285
	JSL.l CODE_00CB69
	RTL

CODE_02CF9F:
	REP.b #$30
	LDX.w $1C81
	LDA.w #$0100
	BIT.b $00,x
	BEQ.b CODE_02CFB0
	JSL.l CODE_02C8BA
	RTS

CODE_02CFB0:
	JSL.l CODE_02C8C6
	RTS

CODE_02CFB5:
	REP.b #$30
	LDA.w $0342
	BIT.w #$0200
	BNE.b CODE_02CFC4
	BIT.w #$0008
	BEQ.b CODE_02CFC5
CODE_02CFC4:
	RTL

CODE_02CFC5:
	LDY.w #$0010
	LDX.w #!RAM_FB2000_Level_Smiloids_SpriteTableStart
CODE_02CFCB:
	LDA.w #$0010
	BIT.b $00,x
	BEQ.b CODE_02CFD9
	LDA.b $3D,x
	CMP.w #$000A
	BCS.b CODE_02CFE3
CODE_02CFD9:
	TXA
	CLC
	ADC.w #$0070
	TAX
	DEY
	BNE.b CODE_02CFCB
	RTL

CODE_02CFE3:
	STX.w $1C81
	JSR.w CODE_02CF9F
	JSL.l CODE_00A4D9
	JSL.l CODE_00A507
	REP.b #$30
	LDA.w #$0258
	STA.w $038F
	LDA.w #$0200
	ORA.w $0342
	STA.w $0342
	BIT.w #$0002
	BNE.b CODE_02D033
	LDY.w #$0010
	LDX.w #!RAM_FB2000_Level_Smiloids_SpriteTableStart
CODE_02D00D:
	LDA.w #$0010
	BIT.b $00,x
	BEQ.b CODE_02D029
	CPX.w $1C81
	BEQ.b CODE_02D022
	LDA.w #$0100
	ORA.b $02,x
	STA.b $02,x
	BRA.b CODE_02D029

CODE_02D022:
	LDA.w #$0080
	ORA.b $02,x
	STA.b $02,x
CODE_02D029:
	TXA
	CLC
	ADC.w #$0070
	TAX
	DEY
	BNE.b CODE_02D00D
	RTL

CODE_02D033:
	REP.b #$30
	LDX.w $1C81
	LDA.b $32,x
	STA.w $1C83
	LDY.w #$0010
	LDX.w #!RAM_FB2000_Level_Smiloids_SpriteTableStart
CODE_02D043:
	LDA.w #$0010
	BIT.b $00,x
	BEQ.b CODE_02D061
	LDA.b $32,x
	CMP.w $1C83
	BEQ.b CODE_02D05A
	LDA.w #$0100
	ORA.b $02,x
	STA.b $02,x
	BRA.b CODE_02D061

CODE_02D05A:
	LDA.w #$0080
	ORA.b $02,x
	STA.b $02,x
CODE_02D061:
	TXA
	CLC
	ADC.w #$0070
	TAX
	DEY
	BNE.b CODE_02D043
	RTL

CODE_02D06B:
	REP.b #$30
	LDA.w $0342
	BIT.w #$0008
	BEQ.b CODE_02D088
	LDA.b $37,x
	BNE.b CODE_02D088
	LDA.w #$0040
	ORA.b $02,x
	STA.b $02,x
	LDA.w #DATA_03D308
	JSL.l CODE_00CB69
	RTL

CODE_02D088:
	LDA.b $02,x
	BIT.w #$0080
	BNE.b CODE_02D095
	BIT.w #$0100
	BNE.b CODE_02D09A
	RTL

CODE_02D095:
	JSL.l CODE_02D09F
	RTL

CODE_02D09A:
	JSL.l CODE_02D0CA
	RTL

CODE_02D09F:
	REP.b #$30
	LDA.w #$0040
	ORA.b $02,x
	STA.b $02,x
	LDA.w $034A
	ASL
	ASL
	LDX.w $1C81
	JSL.l CODE_02CF1A
	REP.b #$30
	LDY.w #DATA_03D2A8
	LDA.w $0342
	BIT.w #$0002
	BEQ.b CODE_02D0C4
	LDY.w #DATA_03D2B7
CODE_02D0C4:
	TYA
	JSL.l CODE_00CB69
	RTL

CODE_02D0CA:
	REP.b #$30
	LDA.w #$0040
	ORA.b $02,x
	STA.b $02,x
	PHX
	LDA.w #$FFFF
	LDX.w $1C81
	JSL.l CODE_02CF1A
	REP.b #$30
	PLX
	LDA.w #$0002
	BIT.w $0342
	BEQ.b CODE_02D106
	LDY.w $1C81
	LDA.w $0032,y
	CMP.w #$0004
	BCC.b CODE_02D0FD
CODE_02D0F4:
	LDA.w #DATA_03D2CD
	JSL.l CODE_00CB69
	BRA.b CODE_02D131

CODE_02D0FD:
	LDA.w #DATA_03D2F1
	JSL.l CODE_00CB69
	BRA.b CODE_02D131

CODE_02D106:
	REP.b #$30
	LDX.w $1C81
	LDA.w #$0100
	BIT.b $00,x
	BNE.b CODE_02D0F4
	LDA.w #DATA_03D29C
	JSL.l CODE_00CB69
	REP.b #$30
	LDX.w $1C81
	JSL.l CODE_0095B0
	REP.b #$30
	LDA.w #$036C
	LDX.w #$0181
	LDY.w #$0003
	JSL.l CODE_00CCC9
CODE_02D131:
	RTL

CODE_02D132:
	REP.b #$30
	LDA.b FB2000_Level_Smiloid[$00].ShieldTimerLo,x
	BNE.b CODE_02D155
	LDA.w #$1000
	BIT.b $00,x
	BNE.b CODE_02D155
	LDA.w #$0002
	BIT.w $0342
	BEQ.b CODE_02D16E
	LDY.b $3F,x
	CPY.w #$FFFF
	BEQ.b CODE_02D16E
	LDA.w $0032,y
	CMP.b $32,x
	BNE.b CODE_02D16E
CODE_02D155:
	REP.b #$30
	LDA.w #$0070
	PHA
	LDA.w #$0090
	PHA
	LDX.w #$0000
	LDY.w #$0000
	JSL.l CODE_00890C
	REP.b #$20
	PLA
	PLA
	RTL

CODE_02D16E:
	REP.b #$30
	LDA.w #$0070
	PHA
	LDA.w #$0090
	PHA
	LDY.b $3F,x
	CPY.w #$FFFF
	BEQ.b CODE_02D196
	LDA.w $002E,y
	CMP.w #$0000
	BEQ.b CODE_02D196
	CMP.w #$00FF
	BEQ.b CODE_02D1A5
	CMP.w #$FF00
	BEQ.b CODE_02D1B4
	CMP.w #$FFFF
	BEQ.b CODE_02D1C3
CODE_02D196:
	LDX.w #$0000
	LDY.w #$0000
	JSL.l CODE_0088AA
	REP.b #$20
	PLA
	PLA
	RTL

CODE_02D1A5:
	LDX.w #$0000
	LDY.w #$0000
	JSL.l CODE_0088C6
	REP.b #$20
	PLA
	PLA
	RTL

CODE_02D1B4:
	LDX.w #$0000
	LDY.w #$0000
	JSL.l CODE_0088E2
	REP.b #$20
	PLA
	PLA
	RTL

CODE_02D1C3:
	LDX.w #$0000
	LDY.w #$0000
	JSL.l CODE_0088FE
	REP.b #$20
	PLA
	PLA
	RTL

CODE_02D1D2:
	REP.b #$30
	STZ.b $49,x
	LDA.w #$0002
	STA.b FB2000_Level_Smiloid[$00].MaxShotsLo,x
	LDA.w #$0003
	STA.b FB2000_Level_Smiloid[$00].MaxHPRegenLo,x
	LDA.w #$0003
	STA.b FB2000_Level_Smiloid[$00].MaxHPLo,x
	LDA.w #$0002
	ORA.b $5C,x
	STA.b $5C,x
	LDA.w #$8000
	ORA.b $02,x
	STA.b $02,x
	SEP.b #$20
	LDA.b #$02
	STA.b FB2000_Level_Smiloid[$00].MaxTurnSpeed,x
	LDA.b #$01
	STA.b $31,x
	RTL

CODE_02D1FE:
	REP.b #$20
	LDA.w #DATA_03D528
	JSL.l CODE_00CB69
	RTL

CODE_02D208:
	REP.b #$20
	LDA.w #$0008
	ORA.w $0702
	STA.w $0702
	LDA.w $0706
	AND.w #$0001
	INC
	STA.w $12A2
	RTL

CODE_02D21E:
	CLC
	JML.l CODE_029A3F

CODE_02D223:
	CLC
	JML.l CODE_029A0A

CODE_02D228:
	SEC
	JML.l CODE_029A0A

CODE_02D22D:
	REP.b #$20
	PHA
	SEP.b #$20
	LDA.b #$8D
	STA.w !REGISTER_CGRAMAddress
	STZ.w !REGISTER_WriteToCGRAMPort
	STZ.w !REGISTER_WriteToCGRAMPort
	JSL.l CODE_01AAA5
	REP.b #$30
	PLX
	PHX
	LDA.w #$3186
	LDY.w #$0000
	JSL.l CODE_01AA0B
	JSL.l CODE_01AAAE
	SEP.b #$20
	REP.b #$10
	LDX.w #$0000
CODE_02D25A:
	LDA.w $1C91
CODE_02D25D:
	CMP.w $1C91
	BEQ.b CODE_02D25D
	LDA.b #$8D
	STA.w !REGISTER_CGRAMAddress
	LDA.w DATA_03D32E,x
	STA.w !REGISTER_WriteToCGRAMPort
	LDA.w DATA_03D32E+$01,x
	STA.w !REGISTER_WriteToCGRAMPort
	INX
	INX
	CPX.w #$0010
	BCC.b CODE_02D25A
	JSL.l CODE_01AAA5
	REP.b #$30
	PLX
	LDA.w #$0186
	LDY.w #$8000
	JSL.l CODE_01AA0B
	JSL.l CODE_01AAAE
	RTL

CODE_02D290:
	SEP.b #$20
	LDA.b #$80
	STA.w $1339
	STA.w !REGISTER_ScreenDisplayRegister
	SEP.b #$20
	LDA.b #DATA_04D8CD>>16
	PHA
	REP.b #$30
	LDA.w #DATA_04D8CD
	LDX.w #$0020
	LDY.w #$0030
	JSL.l CODE_00937D
	SEP.b #$20
	PLA
	JSL.l CODE_00CA17
	SEP.b #$20
	STZ.w !REGISTER_CGRAMAddress
	STZ.w !REGISTER_WriteToCGRAMPort
	STZ.w !REGISTER_WriteToCGRAMPort
	PEA.w DATA_04D8EE
	PEA.w DATA_04D8EE>>16
	PEA.w $7F0000
	PEA.w $7F0000>>16
	JSL.l CODE_0188AC
	REP.b #$20
	PLA
	PLA
	PLA
	PLA
	SEP.b #$20
	LDA.b #$80
	PHA
	LDA.b #$7F0000>>16
	PHA
	REP.b #$30
	LDA.w #$7F0000
	LDX.w #$1C00
	LDY.w #$0000
	JSL.l CODE_00936C
	SEP.b #$20
	PLA
	PLA
	JSL.l CODE_0092E1
	SEP.b #$20
	LDA.b #$80
	STA.w !REGISTER_VRAMAddressIncrementValue
	REP.b #$30
	LDA.w #$78E8
	STA.w !REGISTER_VRAMAddressLo
	LDX.w #$0001
	LDY.w #$000E
CODE_02D30A:
	PHY
	LDY.w #$0010
CODE_02D30E:
	TXA
	AND.w #$03FF
	ORA.w #$2C00
	STA.w !REGISTER_WriteToVRAMPortLo
	INX
	DEY
	BNE.b CODE_02D30E
	LDY.w #$0010
CODE_02D31F:
	LDA.w #$2C00
	STA.w !REGISTER_WriteToVRAMPortLo
	DEY
	BNE.b CODE_02D31F
	PLY
	DEY
	BNE.b CODE_02D30A
	SEP.b #$20
	STZ.w $1339
	LDA.b #$0F
	AND.w $1336
	STA.w !REGISTER_ScreenDisplayRegister
	REP.b #$20
	LDA.w #$0000
	SEP.b #$20
	STA.w !REGISTER_BG2VertScrollOffset
	XBA
	STA.w !REGISTER_BG2VertScrollOffset
	REP.b #$20
	LDA.w #$0000
	STA.b $5F
	RTL

CODE_02D34F:
	SEP.b #$20
	LDA.b #$80
	STA.w $1339
	STA.w !REGISTER_ScreenDisplayRegister
	SEP.b #$20
	LDA.b #DATA_04B9F9>>16
	PHA
	REP.b #$30
	LDA.w #DATA_04B9F9
	LDX.w #$0020
	LDY.w #$0030
	JSL.l CODE_00937D
	SEP.b #$20
	PLA
	JSL.l CODE_00CA17
	PEA.w DATA_04BA1A
	PEA.w DATA_04BA1A>>16
	PEA.w $7F0000
	PEA.w $7F0000>>16
	JSL.l CODE_0188AC
	REP.b #$20
	PLA
	PLA
	PLA
	PLA
	SEP.b #$20
	LDA.b #$80
	PHA
	LDA.b #$7F0000>>16
	PHA
	REP.b #$30
	LDA.w #$7F0000
	LDX.w #$3EA0
	LDY.w #$0000
	JSL.l CODE_00936C
	SEP.b #$20
	PLA
	PLA
	JSL.l CODE_0092E1
	SEP.b #$20
	LDA.b #$80
	STA.w !REGISTER_VRAMAddressIncrementValue
	REP.b #$30
	LDA.w #$7800
	STA.w !REGISTER_VRAMAddressLo
	LDX.w #$0001
	LDY.w #$0016
CODE_02D3BE:
	PHY
	LDY.w #$0014
CODE_02D3C2:
	TXA
	AND.w #$03FF
	ORA.w #$0C00
	STA.w !REGISTER_WriteToVRAMPortLo
	INX
	DEY
	BNE.b CODE_02D3C2
	LDY.w #$000C
CODE_02D3D3:
	LDA.w #$0C00
	STA.w !REGISTER_WriteToVRAMPortLo
	DEY
	BNE.b CODE_02D3D3
	PLY
	DEY
	BNE.b CODE_02D3BE
	SEP.b #$20
	STZ.w $1339
	LDA.b #$0F
	AND.w $1336
	STA.w !REGISTER_ScreenDisplayRegister
	REP.b #$20
	LDA.w #$00E0
	SEP.b #$20
	STA.w !REGISTER_BG2VertScrollOffset
	XBA
	STA.w !REGISTER_BG2VertScrollOffset
	REP.b #$20
	LDA.w #$00D0
	STA.b $5F
	RTL

CODE_02D403:
	SEP.b #$20
	LDA.b #$80
	STA.w $1339
	STA.w !REGISTER_ScreenDisplayRegister
	SEP.b #$20
	LDA.b #DATA_04B48C>>16
	PHA
	REP.b #$30
	LDA.w #DATA_04B48C
	LDX.w #$0020
	LDY.w #$0020
	JSL.l CODE_00937D
	SEP.b #$20
	PLA
	JSL.l CODE_00CA17
	PEA.w DATA_04B4AD
	PEA.w DATA_04B4AD>>16
	PEA.w $7F0000
	PEA.w $7F0000>>16
	JSL.l CODE_0188AC
	REP.b #$20
	PLA
	PLA
	PLA
	PLA
	SEP.b #$20
	LDA.b #$80
	PHA
	LDA.b #$7F0000>>16
	PHA
	REP.b #$30
	LDA.w #$7F0000
	LDX.w #$2000
	LDY.w #$4000
	JSL.l CODE_00936C
	SEP.b #$20
	PLA
	PLA
	JSL.l CODE_0092E1
	SEP.b #$20
	LDA.b #$80
	STA.w !REGISTER_VRAMAddressIncrementValue
	REP.b #$30
	LDA.w #$7000
	STA.w !REGISTER_VRAMAddressLo
	LDX.w #$0201
	LDY.w #$0008
CODE_02D472:
	PHY
	LDY.w #$0020
CODE_02D476:
	TXA
	AND.w #$03FF
	ORA.w #$2800
	STA.w !REGISTER_WriteToVRAMPortLo
	INX
	DEY
	BNE.b CODE_02D476
	PLY
	DEY
	BNE.b CODE_02D472
	SEP.b #$20
	STZ.w $1339
	LDA.b #$0F
	AND.w $1336
	STA.w !REGISTER_ScreenDisplayRegister
	REP.b #$20
	LDA.w #$00F6
	SEP.b #$20
	STA.w !REGISTER_BG1VertScrollOffset
	XBA
	STA.w !REGISTER_BG1VertScrollOffset
	REP.b #$20
	LDA.w #$0200
	STA.b $57
	RTL

CODE_02D4AB:
	REP.b #$20
	STZ.w $1F6B
	LDA.w $1C93
	BIT.w #$0001
	BEQ.b CODE_02D4BB
	BRL.w CODE_02D552

CODE_02D4BB:
	JSL.l CODE_00C8C3
	JSL.l CODE_009C39
	REP.b #$20
	LDA.w #$7C00
	STA.w $1F5B
	JSL.l CODE_02D290
	REP.b #$20
	LDA.w #$0002
	JSL.l CODE_00C933
	REP.b #$30
	LDA.w #$0000
	LDX.w #$0078
	JSL.l CODE_009A75
	REP.b #$20
	LDA.w #$499C
	JSL.l CODE_02D22D
	REP.b #$30
	LDA.w #$0000
	LDX.w #$003C
	JSL.l CODE_009A75
	LDA.w $1C93
	BIT.w #$0001
	BNE.b CODE_02D552
	REP.b #$20
	LDA.w #$0002
	JSL.l CODE_00C91F
	SEP.b #$20
CODE_02D50C:
	LDA.w $1335
	BNE.b CODE_02D50C
	JSL.l CODE_00C8C3
	JSL.l CODE_009C39
	REP.b #$20
	LDA.w #$7C00
	STA.w $1F5B
	LDA.w #DATA_03D33E
	JSL.l CODE_00CB69
	REP.b #$20
	LDA.w #$0002
	JSL.l CODE_00C933
	JSL.l CODE_028000
	REP.b #$30
	LDA.w #$7400
	STA.w $0206
	LDX.w #$0168
CODE_02D540:
	JSL.l CODE_00CA17
	PHX
	LDX.w #$0004
	JSL.l CODE_0280D1
	REP.b #$10
	PLX
	DEX
	BNE.b CODE_02D540
CODE_02D552:
	JSL.l CODE_02C9A6
	SEP.b #$20
	LDA.w $1336
	BEQ.b CODE_02D56D
	LDA.w $1335
	CMP.b #$FF
	BEQ.b CODE_02D56D
	REP.b #$20
	LDA.w #$0002
	JSL.l CODE_00C91F
CODE_02D56D:
	SEP.b #$20
CODE_02D56F:
	LDA.w $1335
	BNE.b CODE_02D56F
	RTL

CODE_02D575:
	REP.b #$20
	STZ.w $1F6B
	STZ.w $1F67
CODE_02D57D:
	REP.b #$20
	LDA.w #$0000
	STA.w $1F65
CODE_02D585:
	JSL.l CODE_00A199
	JSL.l CODE_00C8C3
	JSL.l CODE_009C39
	SEP.b #$20
	LDA.b #$76
	STA.w !REGISTER_BG2AddressAndSize
	JSL.l CODE_02D34F
	JSL.l CODE_02D403
	REP.b #$20
	LDA.w #$00E0
	SEP.b #$20
	STA.w !REGISTER_BG2VertScrollOffset
	XBA
	STA.w !REGISTER_BG2VertScrollOffset
	JSL.l CODE_02804D
	REP.b #$30
	LDA.w $1C91
	AND.w #$01C0
	LDY.w #$0028
	LDX.w #$0002
	JSL.l CODE_02806C
	JSL.l CODE_028000
	REP.b #$20
	LDA.w #$7C00
	STA.w $1F5B
	LDA.w #DATA_03D54A
	JSL.l CODE_00CB69
	REP.b #$20
	LDA.w $1F67
	BNE.b CODE_02D5EA
	JSL.l CODE_02C83B
	REP.b #$20
	LDA.w #$0001
	STA.w $1F67
CODE_02D5EA:
	REP.b #$20
	LDA.w #$0002
	JSL.l CODE_00C933
	SEP.b #$20
CODE_02D5F5:
	LDA.w $1335
	BNE.b CODE_02D5F5
	SEP.b #$20
	LDA.w $020B
	BEQ.b CODE_02D614
	LDA.w $020A
	CMP.b #$FF
	BEQ.b CODE_02D614
	REP.b #$30
	LDX.w #$0005
	LDA.w #$0002
	JSL.l CODE_00888C
CODE_02D614:
	REP.b #$20
	LDA.w $1F65
	BNE.b CODE_02D658
	REP.b #$30
	LDX.w #$0258
CODE_02D620:
	JSL.l CODE_00CA17
	REP.b #$30
	DEX
	BNE.b CODE_02D643
	JSL.l CODE_0096B0
	PHP
	JSL.l CODE_019A4E
	PLP
	BCS.b CODE_02D638
	BRL.w CODE_02D57D

CODE_02D638:
	REP.b #$20
	LDA.w #$0001
	STA.w $1F65
	BRL.w CODE_02D585

CODE_02D643:
	PHX
	JSL.l CODE_00B8F9
	REP.b #$30
	PLX
	LDA.w #$1080
	BIT.w $03C6
	BNE.b CODE_02D658
	BIT.w $03C8
	BEQ.b CODE_02D620
CODE_02D658:
	JSL.l CODE_00B8F9
	LDA.w #$1080
	BIT.w $03C6
	BNE.b CODE_02D658
	BIT.w $03C8
	BNE.b CODE_02D658
	JSL.l CODE_02C8FF
	REP.b #$20
	LDA.w #$0007
	JSL.l CODE_02C90B
	REP.b #$30
	LDA.w #$0001
	STA.w $1F69
	LDX.w #$00F6
	LDY.w #$00E0
CODE_02D684:
	JSL.l CODE_00CA17
	REP.b #$30
	TYA
	SEP.b #$20
	STA.w !REGISTER_BG2VertScrollOffset
	XBA
	STA.w !REGISTER_BG2VertScrollOffset
	REP.b #$30
	TYA
	SEC
	SBC.w $1F69
	TAY
	TXA
	AND.w #$0002
	BNE.b CODE_02D6A5
	INC.w $1F69
CODE_02D6A5:
	TXA
	SEP.b #$20
	STA.w !REGISTER_BG1VertScrollOffset
	XBA
	STA.w !REGISTER_BG1VertScrollOffset
	DEX
	DEX
	CPX.w #$00C6
	BNE.b CODE_02D684
CODE_02D6B6:
	JSL.l CODE_00CA17
	REP.b #$30
	TYA
	SEP.b #$20
	STA.w !REGISTER_BG2VertScrollOffset
	XBA
	STA.w !REGISTER_BG2VertScrollOffset
	REP.b #$20
	TYA
	SEC
	SBC.w $1F69
	TAY
	ASL
	BCC.b CODE_02D6B6
	JSL.l CODE_009913
	REP.b #$30
	LDA.w #DATA_03D4EB
	LDX.w #DATA_03D4EB>>16
	LDY.w $12A2
	DEY
	JSL.l CODE_029B36
	REP.b #$20
	LDA.w #$0230
	BIT.w $03C6
	BEQ.b CODE_02D6F5
	LDA.w #$0001
	STA.w $1F6B
CODE_02D6F5:
	SEP.b #$20
	LDA.w $1336
	BEQ.b CODE_02D70C
	LDA.w $1335
	CMP.b #$FF
	BEQ.b CODE_02D70C
	REP.b #$20
	LDA.w #$0002
	JSL.l CODE_00C91F
CODE_02D70C:
	SEP.b #$20
CODE_02D70E:
	LDA.w $1335
	BNE.b CODE_02D70E
	RTL

	%FREE_BYTES($02D714, 10476, $FF)
%BANK_END(<EndBank>)
endmacro

;#############################################################################################################
;#############################################################################################################

macro FB2000Bank03Macros(StartBank, EndBank)
%BANK_START(<StartBank>)

DATA_038000:
	db $FF : dw $7E2007
	db $E1 : dw $7E2086
	db $00

DATA_038007:
	db $FF : dw $7E20EE
	db $E1 : dw $7E21EC
	db $00

DATA_03800E:
	dw DATA_0E8000
	dw DATA_0E8B25
	dw DATA_0E9AC1
	dw DATA_0EABAC
	dw DATA_0EBD6C
	dw DATA_0EC836
	dw DATA_0ED395
	dw DATA_0EE1ED
	dw DATA_0EE943
	dw DATA_048000

DATA_038022:
	db DATA_0E8000>>16
	db DATA_0E8B25>>16
	db DATA_0E9AC1>>16
	db DATA_0EABAC>>16
	db DATA_0EBD6C>>16
	db DATA_0EC836>>16
	db DATA_0ED395>>16
	db DATA_0EE1ED>>16
	db DATA_0EE943>>16
	db DATA_048000>>16

DATA_03802C:
	dw DATA_0E8041
	dw DATA_0E8B66
	dw DATA_0E9B02
	dw DATA_0EABED
	dw DATA_0EBDAD
	dw DATA_0EC877
	dw DATA_0ED3D6
	dw DATA_0EE22E
	dw DATA_0EE984
	dw DATA_048041

DATA_038040:
	db DATA_0E8041>>16
	db DATA_0E8B66>>16
	db DATA_0E9B02>>16
	db DATA_0EABED>>16
	db DATA_0EBDAD>>16
	db DATA_0EC877>>16
	db DATA_0ED3D6>>16
	db DATA_0EE22E>>16
	db DATA_0EE984>>16
	db DATA_048041>>16

DATA_03804A:
	dw $3A79,$2A39,$0000,$0000,$4EF9,$3AB7,$0000,$0000
	dw $7FBB,$7F77,$0000,$0000,$4EF9,$3AB7,$0000,$0000
	dw $0011,$000C,$0000,$0000,$40C6,$78E7,$0000,$0000
	dw $0115,$00D1,$0000,$0000,$44C6,$78E7,$0000,$0000
	dw $0100,$35AD,$0000,$0000,$0100,$35AD,$0000,$0000

DATA_03809A:
	db $01,$84,$84,$01
	db "MASTER SAYS:",$00 : dw DATA_0380AD
DATA_0380AD:
	db $03,$04,$E0,$01
	db "      [TITLE] TL +TR +L +A      ",$00 : dw DATA_0380D4
DATA_0380D4:
	db $03,$04,$20,$02
	db "     (You win... THIS TIME!)    ",$00 : dw DATA_0380FB
DATA_0380FB:
	db $02,$04,$80,$02
	db "        Have a nice day!        ",$00 : dw $0000

DATA_038122:
	db $01,$84,$80,$01
	db "CONGRATULATIONS!",$00 : dw DATA_038139
DATA_038139:
	db $03,$04,$E0,$01
	db "      You have  beaten the      ",$00 : dw DATA_038160
DATA_038160:
	db $03,$04,$20,$02
	db "  Maze-Master! You are the new  ",$00 : dw DATA_038187
DATA_038187:
	db $02,$04,$60,$02
	db "      CyberScape champion!      ",$00 : dw $0000

DATA_0381AE:
	db $04,$84,$65,$01
	db "PLAY AGAIN?",$00 : dw DATA_0381C0
DATA_0381C0:
	db $04,$84,$AD,$01
	db "YES",$00 : dw DATA_0381CA
DATA_0381CA:
	db $04,$84,$ED,$01
	db "NO",$00 : dw $0000

DATA_0381D3:
	dw $FFF0 : db CODE_0181F7>>16 : dw CODE_0181F7
	dw $FFF1 : dw $000A,$000D
	dw $0080 : db CODE_0181F8>>16 : dw CODE_0181F8
	dw $1000 : db CODE_0181F8>>16 : dw CODE_0181F8
	dw $FFF1 : dw $000A,$000F
	dw $0080 : db CODE_01820D>>16 : dw CODE_01820D
	dw $1000 : db CODE_01820D>>16 : dw CODE_01820D
	dw $FFF2
	dw $0800 : db CODE_018222>>16 : dw CODE_018222
	dw $0400 : db CODE_018222>>16 : dw CODE_018222
	dw $2000 : db CODE_018222>>16 : dw CODE_018222
	dw $FFF3

DATA_03820B:
	db $0A,$00,$02,$80
	db "-------------",$00
DATA_03821D:
	db $0B,$00,$02,$80
	db "FACEBALL 2000",$00
DATA_03822F:
	db $0C,$00,$02,$80
	db "-------------",$00
DATA_038241:
	db $0C,$00,$02,$00
	db "ORIGINAL GAME",$00
DATA_038253:
	db $10,$00,$03,$00
	db "James 'MCP' Yee",$00
DATA_038267:
	db $0C,$00,$02,$80
	db "SYSTEM",$00
DATA_038272:
	db $0D,$00,$02,$80
	db "PROGRAMMING",$00
DATA_038282:
	db $10,$00,$03,$00
	db "Robert 'Bubbles' Champagne",$00
DATA_0382A1:
	db $0C,$00,$02,$80
	db "ENEMY LOGIC",$00
DATA_0382B1:
	db $10,$00,$03,$00
	db "Chris 'Crispy' Phillips",$00
DATA_0382CD:
	db $0A,$00,$02,$80
	db "ADDITIONAL",$00
DATA_0382DC:
	db $0B,$00,$02,$80
	db "LEVELS",$00
DATA_0382E7:
	db $0E,$00,$03,$00
	db "BPS Hawaii",$00
DATA_0382F6:
	db $10,$00,$03,$00
	db "BPS USA",$00
DATA_038302:
	db $12,$00,$03,$00
	db "BPS Japan",$00
DATA_038310:
	db $0C,$00,$02,$80
	db "LEVEL EDITOR",$00
DATA_038321:
	db $10,$00,$03,$00
	db "Bob 'The Blob' Rutherford",$00
DATA_03833F:
	db $0C,$00,$02,$80
	db "SOUND",$00
DATA_038349:
	db $10,$00,$03,$00
	db "George 'The Fatman' Sanger",$00
DATA_038368:
	db $0C,$00,$02,$80
	db "BACKGROUNDS",$00
DATA_038378:
	db $0F,$00,$03,$00
	db "Hans Janssen",$00
DATA_038389:
	db $11,$00,$03,$00
	db "Roger Dean",$00
DATA_038398:
	db $0C,$00,$02,$80
	db "ASSISTANT",$00
DATA_0383A6:
	db $0D,$00,$02,$80
	db "PRODUCER",$00
DATA_0383B3:
	db $10,$00,$03,$00
	db "John 'Terminator' Knoll",$00
DATA_0383CF:
	db $0C,$00,$02,$80
	db "PRODUCER",$00
DATA_0383DC:
	db $10,$00,$03,$00
	db "David 'Doc' Nolte",$00
DATA_0383F2:
	db $0C,$00,$02,$80
	db "EXECUTIVE",$00
DATA_038400:
	db $0D,$00,$02,$80
	db "PRODUCER",$00
DATA_03840D:
	db $10,$00,$03,$00
	db "Henk 'Sushi' Rogers",$00
DATA_038425:
	db $0C,$00,$02,$80
	db "PLAYTESTING",$00
DATA_038435:
	db $10,$00,$03,$00
	db "Smilo and Company",$00
DATA_03844B:
	db $12,$00,$03,$00
	db "BPS Japan",$00
DATA_038459:
	db $0B,$00,$01,$00
	db "BULLET-PROOF SOFTWARE",$00
DATA_038473:
	db $0C,$00,$01,$00
	db "AND",$00
DATA_03847B:
	db $0D,$00,$01,$00
	db "XANTH SOFTWARE F/X",$00
DATA_038492:
	db $0F,$00,$01,$00
	db "SAY:",$00
DATA_03849B:
	db $12,$00,$03,$80
	db "HAVE A NICE DAY!",$00
DATA_0384B0:
	db $0E,$00,$04,$80
	db "THE END",$00

DATA_0384BC:
	db $03,$00 : dw DATA_03820B,DATA_03821D,DATA_03822F
	db $02,$00 : dw DATA_038241,DATA_038253
	db $03,$00 : dw DATA_038267,DATA_038272,DATA_038282
	db $02,$00 : dw DATA_0382A1,DATA_0382B1
	db $05,$00 : dw DATA_0382CD,DATA_0382DC,DATA_0382E7,DATA_0382F6,DATA_038302
	db $02,$00 : dw DATA_038310,DATA_038321
	db $02,$00 : dw DATA_03833F,DATA_038349
	db $03,$00 : dw DATA_038368,DATA_038378,DATA_038389
	db $03,$00 : dw DATA_038398,DATA_0383A6,DATA_0383B3
	db $02,$00 : dw DATA_0383CF,DATA_0383DC
	db $03,$00 : dw DATA_0383F2,DATA_038400,DATA_03840D
	db $03,$00 : dw DATA_038425,DATA_038435,DATA_03844B
	db $05,$00 : dw DATA_038459,DATA_038473,DATA_03847B,DATA_038492,DATA_03849B
	db $01,$00 : dw DATA_0384B0
	db $00,$00

DATA_038528:
	dw $0000,$0002,$0004,$0006,$0008,$000A,$000C,$000E
	dw $0240,$0242,$0244,$0246,$0248,$024A,$024C,$024E
	dw $0480,$0482,$0484,$0486,$0488,$048A,$048C,$048E
	dw $06C0,$06C2,$06C4,$06C6,$06C8,$06CA,$06CC,$06CE
	dw $0900,$0902,$0904,$0906,$0908,$090A,$090C,$090E
	dw $0B40,$0B42,$0B44,$0B46,$0B48,$0B4A,$0B4C,$0B4E
	dw $0D80,$0D82,$0D84,$0D86,$0D88,$0D8A,$0D8C,$0D8E
	dw $0FC0,$0FC2,$0FC4,$0FC6,$0FC8,$0FCA,$0FCC,$0FCE
	dw $1200,$1202,$1204,$1206,$1208,$120A,$120C,$120E
	dw $1440,$1442,$1444,$1446,$1448,$144A,$144C,$144E
	dw $1680,$1682,$1684,$1686,$1688,$168A,$168C,$168E
	dw $18C0,$18C2,$18C4,$18C6,$18C8,$18CA,$18CC,$18CE
	dw $1B00,$1B02,$1B04,$1B06,$1B08,$1B0A,$1B0C,$1B0E
	dw $1D40,$1D42,$1D44,$1D46,$1D48,$1D4A,$1D4C,$1D4E

UNK_038608:
	dw $8000,$C040,$A020,$E060,$9010,$D050,$B030,$F070
	dw $8808,$C848,$A828,$E868,$9818,$D858,$B838,$F878
	dw $8404,$C444,$A424,$E464,$9414,$D454,$B434,$F474
	dw $8C0C,$CC4C,$AC2C,$EC6C,$9C1C,$DC5C,$BC3C,$FC7C
	dw $8202,$C242,$A222,$E262,$9212,$D252,$B232,$F272
	dw $8A0A,$CA4A,$AA2A,$EA6A,$9A1A,$DA5A,$BA3A,$FA7A
	dw $8606,$C646,$A626,$E666,$9616,$D656,$B636,$F676
	dw $8E0E,$CE4E,$AE2E,$EE6E,$9E1E,$DE5E,$BE3E,$FE7E
	dw $8101,$C141,$A121,$E161,$9111,$D151,$B131,$F171
	dw $8909,$C949,$A929,$E969,$9919,$D959,$B939,$F979
	dw $8505,$C545,$A525,$E565,$9515,$D555,$B535,$F575
	dw $8D0D,$CD4D,$AD2D,$ED6D,$9D1D,$DD5D,$BD3D,$FD7D
	dw $8303,$C343,$A323,$E363,$9313,$D353,$B333,$F373
	dw $8B0B,$CB4B,$AB2B,$EB6B,$9B1B,$DB5B,$BB3B,$FB7B
	dw $8707,$C747,$A727,$E767,$9717,$D757,$B737,$F777
	dw $8F0F,$CF4F,$AF2F,$EF6F,$9F1F,$DF5F,$BF3F,$FF7F

DATA_038708:
	dw $0001,$0000,$0002,$0000,$0000,$0000,$0001,$0000
	dw $0001,$0012,$0000,$0000,$0002
	db "ShootMe   ",$00

	dw $0001,$0000,$0002,$0002,$0000,$0000,$0003,$0000
	dw $0001,$0011,$0000,$0000,$0002
	db "ShootMe2  ",$00

	dw $0001,$0000,$0002,$0002,$000F,$0000,$0001,$0001
	dw $0001,$0021,$0000,$0000,$0002
	db "IShoot    ",$00

	dw $0001,$0000,$0002,$0002,$0014,$0000,$0003,$0001
	dw $0001,$000C,$0000,$0000,$0002
	db "IShoot2   ",$00

	dw $0001,$0000,$000C,$000C,$0014,$0200,$0002,$0002
	dw $0000,$0014,$00FF,$0000,$0003
	db "Turkey    ",$00

	dw $0002,$0000,$000C,$0003,$000F,$0100,$0002,$0004
	dw $0001,$0001,$00FF,$0000,$0003
	db "Gremlin   ",$00

	dw $0002,$0002,$000C,$0003,$000F,$0200,$0005,$0002
	dw $0000,$000A,$00FF,$0000,$0003
	db "Wally     ",$00

	dw $0003,$0002,$0010,$0003,$000F,$0200,$0004,$0002
	dw $0000,$0009,$00FF,$0000,$0003
	db "Rover     ",$00

	dw $0004,$0002,$0010,$0003,$000F,$0300,$0003,$0003
	dw $0000,$0024,$FFFF,$0000,$0004
	db "Bouncer   ",$00
	
	dw $0004,$0002,$0010,$0005,$000A,$0400,$0001,$0003
	dw $0000,$0022,$FFFF,$0000,$0004
	db "Scanner   ",$00

	dw $0004,$0002,$0010,$0005,$000A,$0300,$0002,$0004
	dw $0001,$0001,$FFFF,$0000,$0004
	db "Vampire   ",$00

	dw $0004,$0002,$0014,$0005,$000A,$0300,$0006,$0003
	dw $0000,$000A,$FFFF,$0000,$0004
	db "Guard     ",$00

	dw $0005,$0002,$001E,$0007,$0006,$0300,$0004,$0005
	dw $0000,$0008,$FF00,$0000,$0005
	db "Sonar     ",$00

	dw $0005,$0002,$0010,$0005,$000F,$0400,$0004,$0004
	dw $0001,$000A,$FF00,$0000,$0005
	db "Kamikaze  ",$00

	dw $0005,$0002,$0010,$0003,$0006,$0400,$0004,$0004
	dw $0001,$0004,$FF00,$0000,$0005
	db "Shark     ",$00

	dw $0006,$0002,$001E,$0007,$0006,$0500,$0004,$0003
	dw $0000,$0002,$FF00,$0000,$0005
	db "Ninja     ",$00

	dw $0014,$0000,$001E,$0007,$0002,$0500,$0004,$0003
	dw $0000,$0024,$FF00,$0000,$0006
	db "Master    ",$00

	dw $0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000
	dw $0000,$0000,$0000,$0000,$0000
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00

DATA_0389A1:
	dw $FFFF,$7FFF,$3FFF,$1FFF,$0FFF,$07FF,$03FF,$01FF
	dw $00FF,$007F,$003F,$001F,$000F,$0007,$0003,$0001

DATA_0389C1:
	dw $8000,$C000,$E000,$F000,$F800,$FC00,$FE00,$FF00
	dw $FF80,$FFC0,$FFE0,$FFF0,$FFF8,$FFFC,$FFFE,$FFFF

UNK_0389E1:
	dw $1CE7,$1CE7,$2AAA,$3A14,$0A94,$6014,$0BD4,$01F4
	dw $3E37,$71D5,$2AAA,$4015,$5C95,$1F1C,$38F4,$6694
	dw $71DD,$7854

DATA_038A05:
	dw $0000,$0000,$0024,$0094,$0034,$0004,$0004,$00C4
	dw $0044,$0024,$0014,$0044,$0004,$00A4,$0094,$00A4

DATA_038A25:
	dw $0000,$0002,$0004,$0006,$0008,$000A,$000C,$000E
	dw $0010,$0012,$0014,$0016,$0018,$001A,$001C,$001E
	dw $001E,$001C,$001A,$0018,$0016,$0014,$0012,$0010
	dw $000E,$000C,$000A,$0008,$0006,$0004,$0002,$0000

DATA_038A65:
	dw $0000,$0040,$0080,$00C0,$0100,$0140,$0180,$01C0
	dw $0200,$0240,$0280,$02C0,$0300,$0340,$0380,$03C0
	dw $03C0,$0380,$0340,$0300,$02C0,$0280,$0240,$0200
	dw $01C0,$0180,$0140,$0100,$00C0,$0080,$0040,$0000

DATA_038AA5:
	dw $0000,$0800,$1000,$1800,$2000,$2800,$3000,$3800
	dw $4000,$4800,$5000,$5800,$6000,$6800,$7000,$7800
	dw $7800,$7000,$6800,$6000,$5800,$5000,$4800,$4000
	dw $3800,$3000,$2800,$2000,$1800,$1000,$0800,$0000

DATA_038AE5:
	dw $0000,$0000,$0005,$000A,$FFF6,$0014,$FFF6,$0014
	dw $000A,$0010,$FFF8,$000C,$0014,$FFE8,$FFE4

DATA_038B03:
	dw $0100,$00FF,$00FF,$00FF,$00FE,$00FE,$00FD,$00FC
	dw $00FB,$00F9,$00F8,$00F6,$00F4,$00F2,$00F0,$00EE
	dw $00EC,$00E9,$00E7,$00E4,$00E1,$00DE,$00DB,$00D7
	dw $00D4,$00D0,$00CD,$00C9,$00C5,$00C1,$00BD,$00B8
	dw $00B4,$00AF,$00AB,$00A6,$00A1,$009C,$0097,$0092
	dw $008D,$0088,$0082,$007D,$0077,$0072,$006C,$0066
	dw $0060,$005B,$0055,$004F,$0049,$0043,$003C,$0036
	dw $0030,$002A,$0024,$001D,$0017,$0011,$000B,$0004
	dw $0000,$FFF9,$FFF2,$FFEC,$FFE6,$FFDF,$FFD9,$FFD3
	dw $FFCD,$FFC7,$FFC1,$FFBA,$FFB4,$FFAE,$FFA8,$FFA3
	dw $FF9D,$FF97,$FF91,$FF8C,$FF86,$FF81,$FF7B,$FF76
	dw $FF70,$FF6B,$FF66,$FF61,$FF5C,$FF58,$FF53,$FF4E
	dw $FF4A,$FF45,$FF41,$FF3D,$FF39,$FF35,$FF31,$FF2E
	dw $FF2A,$FF27,$FF24,$FF20,$FF1D,$FF1B,$FF18,$FF15
	dw $FF13,$FF11,$FF0F,$FF0D,$FF0B,$FF09,$FF07,$FF06
	dw $FF05,$FF04,$FF03,$FF02,$FF01,$FF01,$FF01,$FF01
	dw $FF00,$FF01,$FF01,$FF01,$FF02,$FF02,$FF03,$FF04
	dw $FF05,$FF07,$FF08,$FF0A,$FF0C,$FF0E,$FF10,$FF12
	dw $FF14,$FF17,$FF19,$FF1C,$FF1F,$FF22,$FF25,$FF29
	dw $FF2C,$FF30,$FF33,$FF37,$FF3B,$FF3F,$FF43,$FF48
	dw $FF4C,$FF51,$FF55,$FF5A,$FF5F,$FF64,$FF69,$FF6E
	dw $FF73,$FF78,$FF7E,$FF83,$FF89,$FF8E,$FF94,$FF9A
	dw $FFA0,$FFA5,$FFAB,$FFB1,$FFB7,$FFBD,$FFC4,$FFCA
	dw $FFD0,$FFD6,$FFDC,$FFE3,$FFE9,$FFEF,$FFF5,$FFFC
	dw $0000,$0007,$000E,$0014,$001A,$0021,$0027,$002D
	dw $0033,$0039,$003F,$0046,$004C,$0052,$0058,$005D
	dw $0063,$0069,$006F,$0074,$007A,$007F,$0085,$008A
	dw $0090,$0095,$009A,$009F,$00A4,$00A8,$00AD,$00B2
	dw $00B6,$00BB,$00BF,$00C3,$00C7,$00CB,$00CF,$00D2
	dw $00D6,$00D9,$00DC,$00E0,$00E3,$00E5,$00E8,$00EB
	dw $00ED,$00EF,$00F1,$00F3,$00F5,$00F7,$00F9,$00FA
	dw $00FB,$00FC,$00FD,$00FE,$00FF,$00FF,$00FF,$00FF

DATA_038D03:
	dw $0000,$0006,$000C,$0012,$0019,$001F,$0025,$002B
	dw $0032,$0038,$003E,$0044,$004A,$0050,$0056,$005C
	dw $0062,$0068,$006D,$0073,$0079,$007E,$0084,$0089
	dw $008E,$0093,$0099,$009E,$00A2,$00A7,$00AC,$00B1
	dw $00B5,$00B9,$00BE,$00C2,$00C6,$00CA,$00CE,$00D1
	dw $00D5,$00D8,$00DC,$00DF,$00E2,$00E5,$00E7,$00EA
	dw $00EC,$00EF,$00F1,$00F3,$00F5,$00F7,$00F8,$00FA
	dw $00FB,$00FC,$00FD,$00FE,$00FE,$00FF,$00FF,$00FF
	dw $00FF,$00FF,$00FF,$00FF,$00FE,$00FD,$00FC,$00FB
	dw $00FA,$00F9,$00F7,$00F6,$00F4,$00F2,$00F0,$00EE
	dw $00EB,$00E9,$00E6,$00E3,$00E0,$00DD,$00DA,$00D7
	dw $00D3,$00D0,$00CC,$00C8,$00C4,$00C0,$00BC,$00B7
	dw $00B3,$00AE,$00AA,$00A5,$00A0,$009B,$0096,$0091
	dw $008C,$0086,$0081,$007B,$0076,$0070,$006A,$0065
	dw $005F,$0059,$0053,$004D,$0047,$0041,$003B,$0035
	dw $002F,$0028,$0022,$001C,$0016,$000F,$0009,$0003
	dw $0000,$FFFA,$FFF4,$FFEE,$FFE7,$FFE1,$FFDB,$FFD5
	dw $FFCE,$FFC8,$FFC2,$FFBC,$FFB6,$FFB0,$FFAA,$FFA4
	dw $FF9E,$FF98,$FF93,$FF8D,$FF87,$FF82,$FF7C,$FF77
	dw $FF72,$FF6D,$FF67,$FF62,$FF5E,$FF59,$FF54,$FF4F
	dw $FF4B,$FF47,$FF42,$FF3E,$FF3A,$FF36,$FF32,$FF2F
	dw $FF2B,$FF28,$FF24,$FF21,$FF1E,$FF1B,$FF19,$FF16
	dw $FF14,$FF11,$FF0F,$FF0D,$FF0B,$FF09,$FF08,$FF06
	dw $FF05,$FF04,$FF03,$FF02,$FF02,$FF01,$FF01,$FF01
	dw $FF01,$FF01,$FF01,$FF01,$FF02,$FF03,$FF04,$FF05
	dw $FF06,$FF07,$FF09,$FF0A,$FF0C,$FF0E,$FF10,$FF12
	dw $FF15,$FF17,$FF1A,$FF1D,$FF20,$FF23,$FF26,$FF29
	dw $FF2D,$FF30,$FF34,$FF38,$FF3C,$FF40,$FF44,$FF49
	dw $FF4D,$FF52,$FF56,$FF5B,$FF60,$FF65,$FF6A,$FF6F
	dw $FF74,$FF7A,$FF7F,$FF85,$FF8A,$FF90,$FF96,$FF9B
	dw $FFA1,$FFA7,$FFAD,$FFB3,$FFB9,$FFBF,$FFC5,$FFCB
	dw $FFD1,$FFD8,$FFDE,$FFE4,$FFEA,$FFF1,$FFF7,$FFFD

DATA_038F03:
	dw $0003,$0010,DATA_038F0F,DATA_038F0F,DATA_038F0F,DATA_038F0F

DATA_038F0F:
	incbin "Textures/DATA_038F0F.bin"

DATA_038FCF:
	dw $0003,$0010,DATA_038FDB,DATA_038FDB,DATA_038FDB,DATA_038FDB

DATA_038FDB:
	incbin "Textures/DATA_038FDB.bin"

DATA_03909B:
	dw $0003,$0010,DATA_0390A7,DATA_0390A7,DATA_0390A7,DATA_0390A7

DATA_0390A7:
	incbin "Textures/DATA_0390A7.bin"

DATA_039167:
	dw $0003,$0010,DATA_039173,DATA_039173,DATA_039173,DATA_039173

DATA_039173:
	incbin "Textures/DATA_039173.bin"

DATA_039233:
	dw $0003,$0010,DATA_03923F,DATA_03923F,DATA_03923F,DATA_03923F

DATA_03923F:
	incbin "Textures/DATA_03923F.bin"

DATA_0392FF:
	dw $0003,$0010,DATA_03930B,DATA_03930B,DATA_03930B,DATA_03930B

DATA_03930B:
	incbin "Textures/DATA_03930B.bin"

DATA_0393CB:
	dw $0003,$0010,DATA_0393D7,DATA_0393D7,DATA_0393D7,DATA_0393D7

DATA_0393D7:
	incbin "Textures/DATA_0393D7.bin"

DATA_039497:
	dw $0003,$0010,DATA_0394A3,DATA_0394A3,DATA_0394A3,DATA_0394A3

DATA_0394A3:
	incbin "Textures/DATA_0394A3.bin"

DATA_039563:
	db "                ",$00

DATA_039574:
	db $01,$0C,$21,$00
	dw DATA_039563 : dw DATA_03957C
DATA_03957C:
	db $01,$0C,$41,$00
	dw DATA_039563 : dw DATA_039584
DATA_039584:
	db $01,$0C,$61,$01
	dw DATA_039563 : dw DATA_03958C
DATA_03958C:
	db $01,$0C,$81,$01
	dw DATA_039563 : dw $0000

DATA_039594:
	incbin "Palettes/GlobalFGandBG.bin"

DATA_039694:
	incbin "Palettes/GlobalSprite.bin"

DATA_039794:
	db $04,$84,$C8,$01
	db "TIME UP!",$00 : dw $0000

DATA_0397A3:
	db $03,$84,$8A,$00
	db "PAUSED",$00 : dw DATA_0397B0
DATA_0397B0:
	db $04,$84,$E5,$00
	db "PRESS START",$00 : dw DATA_0397C2
DATA_0397C2:
	db $04,$84,$05,$01
	db "TO CONTINUE",$00 : dw DATA_0397D4
DATA_0397D4:
	db $01,$84,$45,$01
	db " LAST CLUE ",$00 : dw $0000

DATA_0397E6:
	db $03,$84,$4A,$01
	db "PAUSED",$00 : dw DATA_0397F3
DATA_0397F3:
	db $04,$84,$C5,$01
	db "PRESS START",$00 : dw DATA_039805
DATA_039805:
	db $04,$84,$E5,$01
	db "TO CONTINUE",$00 : dw $0000

DATA_039817:
	db $04,$84,$63,$01
	db "PAUSED",$00 : dw $0000

DATA_039824:
	db "Level #",$00

DATA_03982C:
	db "          ",$00

DATA_039837:
	dw DATA_03909B,DATA_038FCF,DATA_038F03,DATA_039497,DATA_0393CB,DATA_0392FF,DATA_039233,DATA_039167

DATA_039847:
	db $FF,$7F,$3F,$1F,$0F,$07,$03,$01,$FF,$7F,$3F,$1F,$0F,$07,$03,$01
	db $FF,$7F,$3F,$1F,$0F,$07,$03,$01,$FF,$7F,$3F,$1F,$0F,$07,$03,$01
	db $FF,$7F,$3F,$1F,$0F,$07,$03,$01,$FF,$7F,$3F,$1F,$0F,$07,$03,$01
	db $FF,$7F,$3F,$1F,$0F,$07,$03,$01,$FF,$7F,$3F,$1F,$0F,$07,$03,$01
	db $FF,$7F,$3F,$1F,$0F,$07,$03,$01,$FF,$7F,$3F,$1F,$0F,$07,$03,$01
	db $FF,$7F,$3F,$1F,$0F,$07,$03,$01,$FF,$7F,$3F,$1F,$0F,$07,$03,$01
	db $FF,$7F,$3F,$1F,$0F,$07,$03,$01,$FF,$7F,$3F,$1F,$0F,$07,$03,$01
	db $FF,$7F,$3F,$1F,$0F,$07,$03,$01,$FF,$7F,$3F,$1F,$0F,$07,$03,$01
	db $FF,$7F,$3F,$1F,$0F,$07,$03,$01,$FF,$7F,$3F,$1F,$0F,$07,$03,$01

DATA_0398D7:
	db $80,$C0,$E0,$F0,$F8,$FC,$FE,$FF,$80,$C0,$E0,$F0,$F8,$FC,$FE,$FF
	db $80,$C0,$E0,$F0,$F8,$FC,$FE,$FF,$80,$C0,$E0,$F0,$F8,$FC,$FE,$FF
	db $80,$C0,$E0,$F0,$F8,$FC,$FE,$FF,$80,$C0,$E0,$F0,$F8,$FC,$FE,$FF
	db $80,$C0,$E0,$F0,$F8,$FC,$FE,$FF,$80,$C0,$E0,$F0,$F8,$FC,$FE,$FF
	db $80,$C0,$E0,$F0,$F8,$FC,$FE,$FF,$80,$C0,$E0,$F0,$F8,$FC,$FE,$FF
	db $80,$C0,$E0,$F0,$F8,$FC,$FE,$FF,$80,$C0,$E0,$F0,$F8,$FC,$FE,$FF
	db $80,$C0,$E0,$F0,$F8,$FC,$FE,$FF,$80,$C0,$E0,$F0,$F8,$FC,$FE,$FF
	db $80,$C0,$E0,$F0,$F8,$FC,$FE,$FF,$80,$C0,$E0,$F0,$F8,$FC,$FE,$FF
	db $80,$C0,$E0,$F0,$F8,$FC,$FE,$FF,$80,$C0,$E0,$F0,$F8,$FC,$FE,$FF

DATA_039967:
	db $2D,$2D,$2D,$00

DATA_03996B:
	db $03,$84,$83,$00
	db "BONUS SUMMARY",$00 : dw DATA_03997F
DATA_03997F:
	db $01,$84,$63,$01
	db "ARMOR --",$00 : dw DATA_03998E
DATA_03998E:
	db $02,$84,$83,$01
	db "SPEED --",$00 : dw DATA_03999D
DATA_03999D:
	db $03,$84,$A3,$01
	db "SHOTS --",$00 : dw DATA_0399AC
DATA_0399AC:
	db $01,$84,$E3,$01
	db "COINS --",$00 : dw DATA_0399BB
DATA_0399BB:
	db $02,$84,$03,$02
	db "LIVES --",$00 : dw $0000

DATA_0399CA:
	db $03,$84,$EA,$00
	db "ZONE",$00 : dw $0000

DATA_0399D5:
	db $04,$84,$44,$01
	db "BONUS LEVEL!",$00 : dw $0000

DATA_0399E8:
	db $04,$84,$44,$01
	db "BONUS  LEVEL",$00 : dw DATA_0399FB
DATA_0399FB:
	db $04,$84,$64,$01
	db "  COMPLETE  ",$00 : dw $0000

DATA_039A0E:
	db $04,$84,$48,$01
	db "ENTERING",$00 : dw DATA_039A1D
DATA_039A1D:
	db $04,$84,$88,$01
	db "LEVEL   ",$00 : dw $0000

DATA_039A2C:
	db $04,$84,$48,$01
	db "LEVEL   ",$00 : dw DATA_039A3B
DATA_039A3B:
	db $04,$84,$87,$01
	db "COMPLETE!",$00 : dw $0000

DATA_039A4B:
	db $04,$84,$47,$02
	db "BONUS: ---",$00 : dw $0000

DATA_039A5C:
	db $7F,$7F,$7F,$7F,$7E,$7E,$7E,$7D,$7D,$7C,$7B,$7A,$79,$78,$77,$76
	db $75,$74,$73,$71,$70,$6E,$6D,$6B,$69,$67,$66,$64,$62,$60,$5E,$5B
	db $59,$57,$55,$52,$50,$4D,$4B,$48,$46,$43,$40,$3E,$3B,$38,$35,$32
	db $2F,$2D,$2A,$27,$24,$21,$1D,$1A,$17,$14,$11,$0E,$0B,$08,$05,$01
	db $FF,$FC,$F9,$F6,$F3,$EF,$EC,$E9,$E6,$E3,$E0,$DD,$DA,$D7,$D4,$D1
	db $CE,$CB,$C8,$C6,$C3,$C0,$BD,$BB,$B8,$B5,$B3,$B0,$AE,$AC,$A9,$A7
	db $A5,$A2,$A0,$9E,$9C,$9A,$98,$97,$95,$93,$92,$90,$8E,$8D,$8C,$8A
	db $89,$88,$87,$86,$85,$84,$83,$83,$82,$82,$81,$81,$80,$80,$80,$80
	db $80,$80,$80,$80,$81,$81,$81,$82,$82,$83,$84,$85,$86,$87,$88,$89
	db $8A,$8B,$8C,$8E,$8F,$91,$92,$94,$96,$98,$99,$9B,$9D,$9F,$A1,$A4
	db $A6,$A8,$AA,$AD,$AF,$B2,$B4,$B7,$B9,$BC,$BF,$C1,$C4,$C7,$CA,$CD
	db $D0,$D2,$D5,$D8,$DB,$DE,$E2,$E5,$E8,$EB,$EE,$F1,$F4,$F7,$FA,$FE
	db $00,$03,$06,$09,$0C,$10,$13,$16,$19,$1C,$1F,$22,$25,$28,$2B,$2E
	db $31,$34,$37,$39,$3C,$3F,$42,$44,$47,$4A,$4C,$4F,$51,$53,$56,$58
	db $5A,$5D,$5F,$61,$63,$65,$67,$68,$6A,$6C,$6D,$6F,$71,$72,$73,$75
	db $76,$77,$78,$79,$7A,$7B,$7C,$7C,$7D,$7D,$7E,$7E,$7F,$7F,$7F,$7F

DATA_039B5C:
	db $00,$02,$05,$08,$0C,$0F,$12,$15,$18,$1B,$1E,$21,$24,$27,$2A,$2D
	db $30,$33,$36,$39,$3C,$3E,$41,$44,$46,$49,$4C,$4E,$50,$53,$55,$58
	db $5A,$5C,$5E,$60,$62,$64,$66,$68,$6A,$6B,$6D,$6F,$70,$72,$73,$74
	db $75,$77,$78,$79,$7A,$7B,$7B,$7C,$7D,$7D,$7E,$7E,$7E,$7F,$7F,$7F
	db $7F,$7F,$7F,$7F,$7E,$7E,$7D,$7D,$7C,$7C,$7B,$7A,$79,$78,$77,$76
	db $75,$74,$72,$71,$6F,$6E,$6C,$6B,$69,$67,$65,$63,$61,$5F,$5D,$5B
	db $59,$56,$54,$52,$4F,$4D,$4A,$48,$45,$42,$40,$3D,$3A,$37,$34,$32
	db $2F,$2C,$29,$26,$23,$20,$1D,$1A,$17,$13,$10,$0D,$0A,$07,$04,$01
	db $FF,$FD,$FA,$F7,$F3,$F0,$ED,$EA,$E7,$E4,$E1,$DE,$DB,$D8,$D5,$D2
	db $CF,$CC,$C9,$C6,$C3,$C1,$BE,$BB,$B9,$B6,$B3,$B1,$AF,$AC,$AA,$A7
	db $A5,$A3,$A1,$9F,$9D,$9B,$99,$97,$95,$94,$92,$90,$8F,$8D,$8C,$8B
	db $8A,$88,$87,$86,$85,$84,$84,$83,$82,$82,$81,$81,$81,$80,$80,$80
	db $80,$80,$80,$80,$81,$81,$82,$82,$83,$83,$84,$85,$86,$87,$88,$89
	db $8A,$8B,$8D,$8E,$90,$91,$93,$94,$96,$98,$9A,$9C,$9E,$A0,$A2,$A4
	db $A6,$A9,$AB,$AD,$B0,$B2,$B5,$B7,$BA,$BD,$BF,$C2,$C5,$C8,$CB,$CD
	db $D0,$D3,$D6,$D9,$DC,$DF,$E2,$E5,$E8,$EC,$EF,$F2,$F5,$F8,$FB,$FE

DATA_039C5C:
	db $00,$00,$00,$20,$00,$10,$AA,$0A,$00,$08,$66,$06,$55,$05,$92,$04
	db $00,$04,$8E,$03,$33,$03,$E8,$02,$AA,$02,$76,$02,$49,$02,$22,$02
	db $00,$02,$E1,$01,$C7,$01,$AF,$01,$99,$01,$86,$01,$74,$01,$64,$01
	db $55,$01,$47,$01,$3B,$01,$2F,$01,$24,$01,$1A,$01,$11,$01,$08,$01
	db $00,$01,$F8,$00,$F0,$00,$EA,$00,$E3,$00,$DD,$00,$D7,$00,$D2,$00
	db $CC,$00,$C7,$00,$C3,$00,$BE,$00,$BA,$00,$B6,$00,$B2,$00,$AE,$00
	db $AA,$00,$A7,$00,$A3,$00,$A0,$00,$9D,$00,$9A,$00,$97,$00,$94,$00
	db $92,$00,$8F,$00,$8D,$00,$8A,$00,$88,$00,$86,$00,$84,$00,$82,$00
	db $80,$00,$7E,$00,$7C,$00,$7A,$00,$78,$00,$76,$00,$75,$00,$73,$00
	db $71,$00,$70,$00,$6E,$00,$6D,$00,$6B,$00,$6A,$00,$69,$00,$67,$00
	db $66,$00,$65,$00,$63,$00,$62,$00,$61,$00,$60,$00,$5F,$00,$5E,$00
	db $5D,$00,$5C,$00,$5B,$00,$5A,$00,$59,$00,$58,$00,$57,$00,$56,$00
	db $55,$00,$54,$00,$53,$00,$52,$00,$51,$00,$51,$00,$50,$00,$4F,$00
	db $4E,$00,$4E,$00,$4D,$00,$4C,$00,$4B,$00,$4B,$00,$4A,$00,$49,$00
	db $49,$00,$48,$00,$47,$00,$47,$00,$46,$00,$46,$00,$45,$00,$44,$00
	db $44,$00,$43,$00,$43,$00,$42,$00,$42,$00,$41,$00,$41,$00,$40,$00
	db $40,$00,$3F,$00,$3F,$00,$3E,$00,$3E,$00,$3D,$00,$3D,$00,$3C,$00
	db $3C,$00,$3B,$00,$3B,$00,$3A,$00,$3A,$00,$3A,$00,$39,$00,$39,$00
	db $38,$00,$38,$00,$38,$00,$37,$00,$37,$00,$36,$00,$36,$00,$36,$00
	db $35,$00,$35,$00,$35,$00,$34,$00,$34,$00,$34,$00,$33,$00,$33,$00
	db $33,$00,$32,$00,$32,$00,$32,$00,$31,$00,$31,$00,$31,$00,$31,$00
	db $30,$00,$30,$00,$30,$00,$2F,$00,$2F,$00,$2F,$00,$2F,$00,$2E,$00
	db $2E,$00,$2E,$00,$2E,$00,$2D,$00,$2D,$00,$2D,$00,$2D,$00,$2C,$00
	db $2C,$00,$2C,$00,$2C,$00,$2B,$00,$2B,$00,$2B,$00,$2B,$00,$2A,$00
	db $2A,$00,$2A,$00,$2A,$00,$2A,$00,$29,$00,$29,$00,$29,$00,$29,$00
	db $28,$00,$28,$00,$28,$00,$28,$00,$28,$00,$27,$00,$27,$00,$27,$00
	db $27,$00,$27,$00,$27,$00,$26,$00,$26,$00,$26,$00,$26,$00,$26,$00
	db $25,$00,$25,$00,$25,$00,$25,$00,$25,$00,$25,$00,$24,$00,$24,$00
	db $24,$00,$24,$00,$24,$00,$24,$00,$23,$00,$23,$00,$23,$00,$23,$00
	db $23,$00,$23,$00,$23,$00,$22,$00,$22,$00,$22,$00,$22,$00,$22,$00
	db $22,$00,$21,$00,$21,$00,$21,$00,$21,$00,$21,$00,$21,$00,$21,$00
	db $21,$00,$20,$00,$20,$00,$20,$00,$20,$00,$20,$00,$20,$00,$20,$00
	db $20,$00,$1F,$00,$1F,$00,$1F,$00,$1F,$00,$1F,$00,$1F,$00,$1F,$00
	db $1F,$00,$1E,$00,$1E,$00,$1E,$00,$1E,$00,$1E,$00,$1E,$00,$1E,$00
	db $1E,$00,$1E,$00,$1D,$00,$1D,$00,$1D,$00,$1D,$00,$1D,$00,$1D,$00
	db $1D,$00,$1D,$00,$1D,$00,$1C,$00,$1C,$00,$1C,$00,$1C,$00,$1C,$00
	db $1C,$00,$1C,$00,$1C,$00,$1C,$00,$1C,$00,$1B,$00,$1B,$00,$1B,$00
	db $1B,$00,$1B,$00,$1B,$00,$1B,$00,$1B,$00,$1B,$00,$1B,$00,$1B,$00
	db $1A,$00,$1A,$00,$1A,$00,$1A,$00,$1A,$00,$1A,$00,$1A,$00,$1A,$00
	db $1A,$00,$1A,$00,$1A,$00,$1A,$00,$19,$00,$19,$00,$19,$00,$19,$00
	db $19,$00,$19,$00,$19,$00,$19,$00,$19,$00,$19,$00,$19,$00,$19,$00
	db $18,$00,$18,$00,$18,$00,$18,$00,$18,$00,$18,$00,$18,$00,$18,$00
	db $18,$00,$18,$00,$18,$00,$18,$00,$18,$00,$18,$00,$17,$00,$17,$00
	db $17,$00,$17,$00,$17,$00,$17,$00,$17,$00,$17,$00,$17,$00,$17,$00
	db $17,$00,$17,$00,$17,$00,$17,$00,$17,$00,$16,$00,$16,$00,$16,$00
	db $16,$00,$16,$00,$16,$00,$16,$00,$16,$00,$16,$00,$16,$00,$16,$00
	db $16,$00,$16,$00,$16,$00,$16,$00,$16,$00,$15,$00,$15,$00,$15,$00
	db $15,$00,$15,$00,$15,$00,$15,$00,$15,$00,$15,$00,$15,$00,$15,$00
	db $15,$00,$15,$00,$15,$00,$15,$00,$15,$00,$15,$00,$15,$00,$14,$00
	db $14,$00,$14,$00,$14,$00,$14,$00,$14,$00,$14,$00,$14,$00,$14,$00
	db $14,$00,$14,$00,$14,$00,$14,$00,$14,$00,$14,$00,$14,$00,$14,$00
	db $14,$00,$14,$00,$13,$00,$13,$00,$13,$00,$13,$00,$13,$00,$13,$00
	db $13,$00,$13,$00,$13,$00,$13,$00,$13,$00,$13,$00,$13,$00,$13,$00
	db $13,$00,$13,$00,$13,$00,$13,$00,$13,$00,$13,$00,$13,$00,$13,$00
	db $12,$00,$12,$00,$12,$00,$12,$00,$12,$00,$12,$00,$12,$00,$12,$00
	db $12,$00,$12,$00,$12,$00,$12,$00,$12,$00,$12,$00,$12,$00,$12,$00
	db $12,$00,$12,$00,$12,$00,$12,$00,$12,$00,$12,$00,$12,$00,$12,$00
	db $11,$00,$11,$00,$11,$00,$11,$00,$11,$00,$11,$00,$11,$00,$11,$00
	db $11,$00,$11,$00,$11,$00,$11,$00,$11,$00,$11,$00,$11,$00,$11,$00
	db $11,$00,$11,$00,$11,$00,$11,$00,$11,$00,$11,$00,$11,$00,$11,$00
	db $11,$00,$11,$00,$10,$00,$10,$00,$10,$00,$10,$00,$10,$00,$10,$00
	db $10,$00,$10,$00,$10,$00,$10,$00,$10,$00,$10,$00,$10,$00,$10,$00
	db $10,$00,$10,$00,$10,$00,$10,$00,$10,$00,$10,$00,$10,$00,$10,$00
	db $10,$00,$10,$00,$10,$00,$10,$00,$10,$00,$10,$00,$10,$00,$10,$00

DATA_03A05C:
	db $00,$00,$00,$40,$00,$20,$55,$15,$00,$10,$CC,$0C,$AA,$0A,$24,$09
	db $00,$08,$1C,$07,$66,$06,$D1,$05,$55,$05,$EC,$04,$92,$04,$44,$04
	db $00,$04,$C3,$03,$8E,$03,$5E,$03,$33,$03,$0C,$03,$E8,$02,$C8,$02
	db $AA,$02,$8F,$02,$76,$02,$5E,$02,$49,$02,$34,$02,$22,$02,$10,$02
	db $00,$02,$F0,$01,$E1,$01,$D4,$01,$C7,$01,$BA,$01,$AF,$01,$A4,$01
	db $99,$01,$8F,$01,$86,$01,$7D,$01,$74,$01,$6C,$01,$64,$01,$5C,$01
	db $55,$01,$4E,$01,$47,$01,$41,$01,$3B,$01,$35,$01,$2F,$01,$29,$01
	db $24,$01,$1F,$01,$1A,$01,$15,$01,$11,$01,$0C,$01,$08,$01,$04,$01
	db $00,$01,$FC,$00,$F8,$00,$F4,$00,$F0,$00,$ED,$00,$EA,$00,$E6,$00
	db $E3,$00,$E0,$00,$DD,$00,$DA,$00,$D7,$00,$D4,$00,$D2,$00,$CF,$00
	db $CC,$00,$CA,$00,$C7,$00,$C5,$00,$C3,$00,$C0,$00,$BE,$00,$BC,$00
	db $BA,$00,$B8,$00,$B6,$00,$B4,$00,$B2,$00,$B0,$00,$AE,$00,$AC,$00
	db $AA,$00,$A8,$00,$A7,$00,$A5,$00,$A3,$00,$A2,$00,$A0,$00,$9F,$00
	db $9D,$00,$9C,$00,$9A,$00,$99,$00,$97,$00,$96,$00,$94,$00,$93,$00
	db $92,$00,$90,$00,$8F,$00,$8E,$00,$8D,$00,$8C,$00,$8A,$00,$89,$00
	db $88,$00,$87,$00,$86,$00,$85,$00,$84,$00,$83,$00,$82,$00,$81,$00
	db $80,$00,$7F,$00,$7E,$00,$7D,$00,$7C,$00,$7B,$00,$7A,$00,$79,$00
	db $78,$00,$77,$00,$76,$00,$75,$00,$75,$00,$74,$00,$73,$00,$72,$00
	db $71,$00,$70,$00,$70,$00,$6F,$00,$6E,$00,$6D,$00,$6D,$00,$6C,$00
	db $6B,$00,$6B,$00,$6A,$00,$69,$00,$69,$00,$68,$00,$67,$00,$67,$00
	db $66,$00,$65,$00,$65,$00,$64,$00,$63,$00,$63,$00,$62,$00,$62,$00
	db $61,$00,$60,$00,$60,$00,$5F,$00,$5F,$00,$5E,$00,$5E,$00,$5D,$00
	db $5D,$00,$5C,$00,$5C,$00,$5B,$00,$5B,$00,$5A,$00,$5A,$00,$59,$00
	db $59,$00,$58,$00,$58,$00,$57,$00,$57,$00,$56,$00,$56,$00,$55,$00
	db $55,$00,$54,$00,$54,$00,$54,$00,$53,$00,$53,$00,$52,$00,$52,$00
	db $51,$00,$51,$00,$51,$00,$50,$00,$50,$00,$4F,$00,$4F,$00,$4F,$00
	db $4E,$00,$4E,$00,$4E,$00,$4D,$00,$4D,$00,$4C,$00,$4C,$00,$4C,$00
	db $4B,$00,$4B,$00,$4B,$00,$4A,$00,$4A,$00,$4A,$00,$49,$00,$49,$00
	db $49,$00,$48,$00,$48,$00,$48,$00,$47,$00,$47,$00,$47,$00,$46,$00
	db $46,$00,$46,$00,$46,$00,$45,$00,$45,$00,$45,$00,$44,$00,$44,$00
	db $44,$00,$43,$00,$43,$00,$43,$00,$43,$00,$42,$00,$42,$00,$42,$00
	db $42,$00,$41,$00,$41,$00,$41,$00,$41,$00,$40,$00,$40,$00,$40,$00
	db $40,$00,$3F,$00,$3F,$00,$3F,$00,$3F,$00,$3E,$00,$3E,$00,$3E,$00
	db $3E,$00,$3D,$00,$3D,$00,$3D,$00,$3D,$00,$3C,$00,$3C,$00,$3C,$00
	db $3C,$00,$3C,$00,$3B,$00,$3B,$00,$3B,$00,$3B,$00,$3A,$00,$3A,$00
	db $3A,$00,$3A,$00,$3A,$00,$39,$00,$39,$00,$39,$00,$39,$00,$39,$00
	db $38,$00,$38,$00,$38,$00,$38,$00,$38,$00,$37,$00,$37,$00,$37,$00
	db $37,$00,$37,$00,$36,$00,$36,$00,$36,$00,$36,$00,$36,$00,$36,$00
	db $35,$00,$35,$00,$35,$00,$35,$00,$35,$00,$35,$00,$34,$00,$34,$00
	db $34,$00,$34,$00,$34,$00,$34,$00,$33,$00,$33,$00,$33,$00,$33,$00
	db $33,$00,$33,$00,$32,$00,$32,$00,$32,$00,$32,$00,$32,$00,$32,$00
	db $31,$00,$31,$00,$31,$00,$31,$00,$31,$00,$31,$00,$31,$00,$30,$00
	db $30,$00,$30,$00,$30,$00,$30,$00,$30,$00,$30,$00,$2F,$00,$2F,$00
	db $2F,$00,$2F,$00,$2F,$00,$2F,$00,$2F,$00,$2E,$00,$2E,$00,$2E,$00
	db $2E,$00,$2E,$00,$2E,$00,$2E,$00,$2E,$00,$2D,$00,$2D,$00,$2D,$00
	db $2D,$00,$2D,$00,$2D,$00,$2D,$00,$2D,$00,$2C,$00,$2C,$00,$2C,$00
	db $2C,$00,$2C,$00,$2C,$00,$2C,$00,$2C,$00,$2B,$00,$2B,$00,$2B,$00
	db $2B,$00,$2B,$00,$2B,$00,$2B,$00,$2B,$00,$2B,$00,$2A,$00,$2A,$00
	db $2A,$00,$2A,$00,$2A,$00,$2A,$00,$2A,$00,$2A,$00,$2A,$00,$29,$00
	db $29,$00,$29,$00,$29,$00,$29,$00,$29,$00,$29,$00,$29,$00,$29,$00
	db $28,$00,$28,$00,$28,$00,$28,$00,$28,$00,$28,$00,$28,$00,$28,$00
	db $28,$00,$28,$00,$27,$00,$27,$00,$27,$00,$27,$00,$27,$00,$27,$00
	db $27,$00,$27,$00,$27,$00,$27,$00,$27,$00,$26,$00,$26,$00,$26,$00
	db $26,$00,$26,$00,$26,$00,$26,$00,$26,$00,$26,$00,$26,$00,$26,$00
	db $25,$00,$25,$00,$25,$00,$25,$00,$25,$00,$25,$00,$25,$00,$25,$00
	db $25,$00,$25,$00,$25,$00,$24,$00,$24,$00,$24,$00,$24,$00,$24,$00
	db $24,$00,$24,$00,$24,$00,$24,$00,$24,$00,$24,$00,$24,$00,$24,$00
	db $23,$00,$23,$00,$23,$00,$23,$00,$23,$00,$23,$00,$23,$00,$23,$00
	db $23,$00,$23,$00,$23,$00,$23,$00,$23,$00,$22,$00,$22,$00,$22,$00
	db $22,$00,$22,$00,$22,$00,$22,$00,$22,$00,$22,$00,$22,$00,$22,$00
	db $22,$00,$22,$00,$21,$00,$21,$00,$21,$00,$21,$00,$21,$00,$21,$00
	db $21,$00,$21,$00,$21,$00,$21,$00,$21,$00,$21,$00,$21,$00,$21,$00
	db $21,$00,$20,$00,$20,$00,$20,$00,$20,$00,$20,$00,$20,$00,$20,$00
	db $20,$00,$20,$00,$20,$00,$20,$00,$20,$00,$20,$00,$20,$00,$20,$00

DATA_03A45C:
	db $01,$80,$40,$00,$00,$00

DATA_03A462:
	db $01,$80,$20,$00,$00,$00

DATA_03A468:
	dw $0000,$0006,$000D,$0013,$0019,$001F,$0026,$002C
	dw $0032,$0038,$003E,$0045,$004B,$0051,$0057,$005C
	dw $0062,$0068,$006E,$0074,$0079,$007F,$0084,$0089
	dw $008F,$0094,$0099,$009E,$00A3,$00A8,$00AC,$00B1
	dw $00B6,$00BA,$00BE,$00C2,$00C6,$00CA,$00CE,$00D2
	dw $00D5,$00D9,$00DC,$00DF,$00E2,$00E5,$00E8,$00EB
	dw $00ED,$00EF,$00F1,$00F3,$00F5,$00F7,$00F9,$00FA
	dw $00FB,$00FC,$00FD,$00FE,$00FF,$00FF,$0100,$0100
	dw $0100,$0100,$0100,$00FF,$00FF,$00FE,$00FD,$00FC
	dw $00FB,$00FA,$00F8,$00F7,$00F5,$00F3,$00F1,$00EF
	dw $00EC,$00EA,$00E7,$00E4,$00E2,$00DE,$00DB,$00D8
	dw $00D5,$00D1,$00CD,$00C9,$00C5,$00C1,$00BD,$00B9
	dw $00B4,$00B0,$00AB,$00A7,$00A2,$009D,$0098,$0093
	dw $008D,$0088,$0083,$007D,$0078,$0072,$006C,$0067
	dw $0061,$005B,$0055,$004F,$0049,$0043,$003D,$0037
	dw $0031,$002A,$0024,$001E,$0018,$0011,$000B,$0005
	dw $0000,$FFFB,$FFF4,$FFEE,$FFE8,$FFE2,$FFDB,$FFD5
	dw $FFCF,$FFC9,$FFC3,$FFBC,$FFB6,$FFB0,$FFAA,$FFA5
	dw $FF9F,$FF99,$FF93,$FF8D,$FF88,$FF82,$FF7D,$FF78
	dw $FF72,$FF6D,$FF68,$FF63,$FF5E,$FF59,$FF55,$FF50
	dw $FF4B,$FF47,$FF43,$FF3F,$FF3B,$FF37,$FF33,$FF2F
	dw $FF2C,$FF28,$FF25,$FF22,$FF1F,$FF1C,$FF19,$FF16
	dw $FF14,$FF12,$FF10,$FF0E,$FF0C,$FF0A,$FF08,$FF07
	dw $FF06,$FF05,$FF04,$FF03,$FF02,$FF02,$FF01,$FF01
	dw $FF01,$FF01,$FF01,$FF02,$FF02,$FF03,$FF04,$FF05
	dw $FF06,$FF07,$FF09,$FF0A,$FF0C,$FF0E,$FF10,$FF12
	dw $FF15,$FF17,$FF1A,$FF1D,$FF1F,$FF23,$FF26,$FF29
	dw $FF2C,$FF30,$FF34,$FF38,$FF3C,$FF40,$FF44,$FF48
	dw $FF4D,$FF51,$FF56,$FF5A,$FF5F,$FF64,$FF69,$FF6E
	dw $FF74,$FF79,$FF7E,$FF84,$FF89,$FF8F,$FF95,$FF9A
	dw $FFA0,$FFA6,$FFAC,$FFB2,$FFB8,$FFBE,$FFC4,$FFCA
	dw $FFD0,$FFD7,$FFDD,$FFE3,$FFE9,$FFF0,$FFF6,$FFFC

DATA_03A668:
	dw $0100,$0100,$0100,$00FF,$00FF,$00FE,$00FD,$00FC
	dw $00FB,$00FA,$00F8,$00F7,$00F5,$00F3,$00F1,$00EF
	dw $00EC,$00EA,$00E7,$00E4,$00E2,$00DE,$00DB,$00D8
	dw $00D5,$00D1,$00CD,$00C9,$00C5,$00C1,$00BD,$00B9
	dw $00B4,$00B0,$00AB,$00A7,$00A2,$009D,$0098,$0093
	dw $008D,$0088,$0083,$007D,$0078,$0072,$006C,$0067
	dw $0061,$005B,$0055,$004F,$0049,$0043,$003D,$0037
	dw $0031,$002A,$0024,$001E,$0018,$0011,$000B,$0005
	dw $0000,$FFFB,$FFF4,$FFEE,$FFE8,$FFE2,$FFDB,$FFD5
	dw $FFCF,$FFC9,$FFC3,$FFBC,$FFB6,$FFB0,$FFAA,$FFA5
	dw $FF9F,$FF99,$FF93,$FF8D,$FF88,$FF82,$FF7D,$FF78
	dw $FF72,$FF6D,$FF68,$FF63,$FF5E,$FF59,$FF55,$FF50
	dw $FF4B,$FF47,$FF43,$FF3F,$FF3B,$FF37,$FF33,$FF2F
	dw $FF2C,$FF28,$FF25,$FF22,$FF1F,$FF1C,$FF19,$FF16
	dw $FF14,$FF12,$FF10,$FF0E,$FF0C,$FF0A,$FF08,$FF07
	dw $FF06,$FF05,$FF04,$FF03,$FF02,$FF02,$FF01,$FF01
	dw $FF01,$FF01,$FF01,$FF02,$FF02,$FF03,$FF04,$FF05
	dw $FF06,$FF07,$FF09,$FF0A,$FF0C,$FF0E,$FF10,$FF12
	dw $FF15,$FF17,$FF1A,$FF1D,$FF1F,$FF23,$FF26,$FF29
	dw $FF2C,$FF30,$FF34,$FF38,$FF3C,$FF40,$FF44,$FF48
	dw $FF4D,$FF51,$FF56,$FF5A,$FF5F,$FF64,$FF69,$FF6E
	dw $FF74,$FF79,$FF7E,$FF84,$FF89,$FF8F,$FF95,$FF9A
	dw $FFA0,$FFA6,$FFAC,$FFB2,$FFB8,$FFBE,$FFC4,$FFCA
	dw $FFD0,$FFD7,$FFDD,$FFE3,$FFE9,$FFF0,$FFF6,$FFFC
	dw $0000,$0006,$000D,$0013,$0019,$001F,$0026,$002C
	dw $0032,$0038,$003E,$0045,$004B,$0051,$0057,$005C
	dw $0062,$0068,$006E,$0074,$0079,$007F,$0084,$0089
	dw $008F,$0094,$0099,$009E,$00A3,$00A8,$00AC,$00B1
	dw $00B6,$00BA,$00BE,$00C2,$00C6,$00CA,$00CE,$00D2
	dw $00D5,$00D9,$00DC,$00DF,$00E2,$00E5,$00E8,$00EB
	dw $00ED,$00EF,$00F1,$00F3,$00F5,$00F7,$00F9,$00FA
	dw $00FB,$00FC,$00FD,$00FE,$00FF,$00FF,$0100,$0100

DATA_03A868:
	dw $0000,DATA_068000,DATA_06860C,$0000,DATA_06A448,DATA_06C284,DATA_06AA54,DATA_069224
	dw DATA_06B66C,DATA_068C18,DATA_069E3C,DATA_06B060,DATA_06BC78,DATA_06C284,DATA_06C890,DATA_06CE9C
	dw DATA_06DAB4,$0000,$0000,$0000

DATA_03A890:
	dw $0000,$0800,$0100,$0100,$0100,$0800,$0800,$0800
	dw $0100,$0100,$0100,$0100,$0800,$0100,$0100,$0100
	dw $0800,$0100,$0100,$0100

DATA_03A8B8:
	dw $0000,$0400,$0200,$0200,$0200,$0400,$0400,$0400
	dw $0200,$0200,$0200,$0200,$0400,$0200,$0200,$0200
	dw $0400,$0200,$0200,$0200

DATA_03A8E0:
	dw $0000,$2000,$2000,$1000,$1000,$2000,$2000,$2000
	dw $1000,$1000,$1000,$1000,$1000,$1000,$1000,$4000
	dw $4000,$1000,$1000,$1000

DATA_03A908:
	db $88,$89,$89,$89,$89,$89,$89,$89,$89,$89,$89,$89,$89,$89,$89,$89
	db $89,$89,$89,$89,$89,$89,$89,$89,$89,$89,$89,$8A,$00

DATA_03A925:
	db $8D,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20
	db $20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$8D,$00

DATA_03A942:
	db $8B,$89,$89,$89,$89,$89,$89,$89,$89,$89,$89,$89,$89,$89,$89,$89
	db $89,$89,$89,$89,$89,$89,$89,$89,$89,$89,$89,$8C,$00

DATA_03A95F:
	db $05,$04,$41,$01,$90,$90,$90,$00,$00,$00

DATA_03A969:
	db $05,$04,$41,$01,$91,$90,$90,$00,$00,$00

DATA_03A973:
	db $05,$04,$41,$01,$92,$90,$90,$00,$00,$00

DATA_03A97D:
	db $05,$04,$41,$01,$93,$90,$90,$00,$00,$00

DATA_03A987:
	db $05,$04,$41,$01,$94,$90,$90,$00,$00,$00
	db $05,$04,$41,$01,$95,$90,$90,$00,$00,$00

DATA_03A99B:
	db $05,$04,$41,$01,$96,$90,$90,$00,$00,$00

DATA_03A9A5:
	db $05,$04,$41,$01,$97,$90,$90,$00,$00,$00

DATA_03A9AF:
	db $05,$04,$41,$01,$98,$90,$90,$00,$00,$00

DATA_03A9B9:
	db $05,$04,$41,$01,$98,$91,$90,$00,$00,$00

DATA_03A9C3:
	db $05,$04,$41,$01,$98,$92,$90,$00,$00,$00
	db $05,$04,$41,$01,$98,$93,$90,$00,$00,$00

DATA_03A9D7:
	db $05,$04,$41,$01,$98,$94,$90,$00,$00,$00

DATA_03A9E1:
	db $05,$04,$41,$01,$98,$95,$90,$00,$00,$00

DATA_03A9EB:
	db $05,$04,$41,$01,$98,$96,$90,$00,$00,$00

DATA_03A9F5:
	db $05,$04,$41,$01,$98,$97,$90,$00,$00,$00

DATA_03A9FF:
	db $05,$04,$41,$01,$98,$98,$90,$00,$00,$00
	db $05,$04,$41,$01,$98,$98,$91,$00,$00,$00

DATA_03AA13:
	db $05,$04,$41,$01,$98,$98,$92,$00,$00,$00

DATA_03AA1D:
	db $05,$04,$41,$01,$98,$98,$93,$00,$00,$00

DATA_03AA27:
	db $05,$04,$41,$01,$98,$98,$94,$00,$00,$00

DATA_03AA31:
	db $05,$04,$41,$01,$98,$98,$95,$00,$00,$00

DATA_03AA3B:
	db $05,$04,$41,$01,$98,$98,$96,$00,$00,$00
	db $05,$04,$41,$01,$98,$98,$97,$00,$00,$00

DATA_03AA4F:
	db $05,$04,$41,$01,$98,$98,$98,$00,$00,$00

DATA_03AA59:
	dw DATA_03A95F,DATA_03A969,DATA_03A973,DATA_03A97D,DATA_03A987,DATA_03A99B,DATA_03A9A5,DATA_03A9AF
	dw DATA_03A9B9,DATA_03A9C3,DATA_03A9D7,DATA_03A9E1,DATA_03A9EB,DATA_03A9F5,DATA_03A9FF,DATA_03AA13
	dw DATA_03AA1D,DATA_03AA27,DATA_03AA31,DATA_03AA3B,DATA_03AA4F

DATA_03AA83:
	db $05,$04,$23,$00,$90,$90,$00,$00,$00

DATA_03AA8C:
	db $05,$04,$23,$00,$91,$90,$00,$00,$00

DATA_03AA95:
	db $05,$04,$23,$00,$92,$90,$00,$00,$00

DATA_03AA9E:
	db $05,$04,$23,$00,$93,$90,$00,$00,$00

DATA_03AAA7:
	db $05,$04,$23,$00,$94,$90,$00,$00,$00

DATA_03AAB0:
	db $05,$04,$23,$00,$95,$90,$00,$00,$00

DATA_03AAB9:
	db $05,$04,$23,$00,$96,$90,$00,$00,$00

DATA_03AAC2:
	db $05,$04,$23,$00,$97,$90,$00,$00,$00

DATA_03AACB:
	db $05,$04,$23,$00,$98,$90,$00,$00,$00

DATA_03AAD4:
	db $05,$04,$23,$00,$98,$91,$00,$00,$00

DATA_03AADD:
	db $05,$04,$23,$00,$98,$92,$00,$00,$00

DATA_03AAE6:
	db $05,$04,$23,$00,$98,$93,$00,$00,$00

DATA_03AAEF:
	db $05,$04,$23,$00,$98,$94,$00,$00,$00

DATA_03AAF8:
	db $05,$04,$23,$00,$98,$95,$00,$00,$00

DATA_03AB01:
	db $05,$04,$23,$00,$98,$96,$00,$00,$00

DATA_03AB0A:
	db $05,$04,$23,$00,$98,$97,$00,$00,$00

DATA_03AB13:
	db $05,$04,$23,$00,$98,$98,$00,$00,$00

DATA_03AB1C:
	dw DATA_03AA83,DATA_03AA8C,DATA_03AA95,DATA_03AA9E,DATA_03AAA7,DATA_03AAA7,DATA_03AAB0,DATA_03AAB9
	dw DATA_03AAC2,DATA_03AACB,DATA_03AACB,DATA_03AAD4,DATA_03AADD,DATA_03AAE6,DATA_03AAEF,DATA_03AAEF
	dw DATA_03AAF8,DATA_03AB01,DATA_03AB0A,DATA_03AB0A,DATA_03AB13

DATA_03AB46:
	db $05,$04,$C1,$01,$90,$90,$90,$00,$00,$00

DATA_03AB50:
	db $05,$04,$C1,$01,$94,$90,$90,$00,$00,$00

DATA_03AB5A:
	db $05,$04,$C1,$01,$98,$90,$90,$00,$00,$00

DATA_03AB64:
	db $05,$04,$C1,$01,$98,$94,$90,$00,$00,$00

DATA_03AB6E:
	db $05,$04,$C1,$01,$98,$98,$90,$00,$00,$00

DATA_03AB78:
	db $05,$04,$C1,$01,$98,$98,$94,$00,$00,$00

DATA_03AB82:
	db $05,$04,$C1,$01,$98,$98,$98,$00,$00,$00

DATA_03AB8C:
	dw DATA_03AB46,DATA_03AB46,DATA_03AB50,DATA_03AB5A,DATA_03AB64,DATA_03AB6E,DATA_03AB78,DATA_03AB82

DATA_03AB9C:
	db $05,$04,$63,$00,$90,$90,$00,$00,$00

DATA_03ABA5:
	db $05,$04,$63,$00,$92,$90,$00,$00,$00

DATA_03ABAE:
	db $05,$04,$63,$00,$94,$90,$00,$00,$00

DATA_03ABB7:
	db $05,$04,$63,$00,$98,$90,$00,$00,$00

DATA_03ABC0:
	db $05,$04,$63,$00,$98,$92,$00,$00,$00

DATA_03ABC9:
	db $05,$04,$63,$00,$98,$94,$00,$00,$00

DATA_03ABD2:
	db $05,$04,$63,$00,$98,$98,$00,$00,$00

DATA_03ABDB:
	dw DATA_03AB9C,DATA_03AB9C,DATA_03ABA5,DATA_03ABAE,DATA_03ABB7,DATA_03ABC0,DATA_03ABC9,DATA_03ABD2

DATA_03ABEB:
	db $05,$04,$41,$02,$90,$90,$90,$00,$00,$00

DATA_03ABF5:
	db $05,$04,$41,$02,$96,$90,$90,$00,$00,$00

DATA_03ABFF:
	db $05,$04,$41,$02,$98,$94,$90,$00,$00,$00

DATA_03AC09:
	db $05,$04,$41,$02,$98,$98,$92,$00,$00,$00

DATA_03AC13:
	db $05,$04,$41,$02,$98,$98,$98,$00,$00,$00

DATA_03AC1D:
	dw DATA_03ABEB,DATA_03ABEB,DATA_03ABEB,DATA_03ABF5,DATA_03ABFF,DATA_03AC09,DATA_03AC13

DATA_03AC2B:
	db $05,$04,$A3,$00,$90,$90,$00,$00,$00

DATA_03AC34:
	db $05,$04,$A3,$00,$94,$90,$00,$00,$00

DATA_03AC3D:
	db $05,$04,$A3,$00,$98,$90,$00,$00,$00

DATA_03AC46:
	db $05,$04,$A3,$00,$98,$94,$00,$00,$00

DATA_03AC4F:
	db $05,$04,$A3,$00,$98,$98,$00,$00,$00

DATA_03AC58:
	dw DATA_03AC2B,DATA_03AC2B,DATA_03AC2B,DATA_03AC34,DATA_03AC3D,DATA_03AC46,DATA_03AC4F

DATA_03AC66:
	dw $000A,$0014,$001E,$0028,$0032,$003C,$0046,$0050
	dw $0046,$003C,$0032,$0028,$001E,$0014,$000A,$0005

DATA_03AC86:
	db "          ",$00

DATA_03AC91:
	db "Empty!",$00

DATA_03AC98:
	db "Freeze",$00

DATA_03AC9F:
	db "Armor",$00

DATA_03ACA5:
	db "See-Thru",$00

DATA_03ACAE:
	db "Band-Aid",$00

DATA_03ACB7:
	db "Shield",$00

DATA_03ACBE:
	db "Camo",$00

DATA_03ACC3:
	db "Weapon",$00

DATA_03ACCA:
	db "Key",$00

DATA_03ACCE:
	db "Extra Life",$00

DATA_03ACD9:
	db "Map",$00

DATA_03ACDD:
	db "Sensor",$00

DATA_03ACE4:
	db "Clue",$00

DATA_03ACE9:
	db "Speed-Up",$00

DATA_03ACF2:
	db "Coin",$00

DATA_03ACF7:
	db "Button",$00

DATA_03ACFE:
	db "TelePort",$00

DATA_03AD07:
	db "Door",$00

DATA_03AD0C:
	db "Exit",$00

DATA_03AD11:
	db "Wall",$00

DATA_03AD16:
	dw DATA_03AC91,DATA_03AC98,DATA_03AC9F,DATA_03ACA5,DATA_03ACAE,DATA_03ACDD,DATA_03ACB7,DATA_03ACBE
	dw DATA_03ACC3,DATA_03ACCA,DATA_03ACCA,DATA_03ACCA,DATA_03ACCE,DATA_03ACD9,DATA_03ACE4,DATA_03ACE9
	dw DATA_03ACF2,DATA_03AC86,DATA_03AC86,DATA_03AC86,DATA_03ACF7,DATA_03ACF7,DATA_03ACF7,DATA_03ACFE
	dw DATA_03AD0C,DATA_03AC86,DATA_03AC86,DATA_03AC86,DATA_03AC86,DATA_03AC86,DATA_03AC86,DATA_03AC86
	dw DATA_03AD07,DATA_03AD07,DATA_03AD07,DATA_03AD07,DATA_03AD07,DATA_03AD07,DATA_03AD0C,DATA_03AD11
	dw DATA_03AD11,DATA_03AD11,DATA_03AC86,DATA_03AC86,DATA_03AC86,DATA_03AC86,DATA_03AC86,DATA_03AC86

DATA_03AD76:
	db $01,$84,$4A,$01
	db " CLUE ",$00 : dw $0000

DATA_03AD83:
	db $01,$04,$61,$01
	db " TIME= -----",$00 : dw DATA_03AD96
DATA_03AD96:
	db $02,$04,$81,$01
	db "SCORE= -----",$00 : dw DATA_03ADA9
DATA_03ADA9:
	db $03,$04,$A1,$01
	db "LIVES= -----",$00 : dw $0000

DATA_03ADBC:
	db $01,$04,$E1,$00
	db "TAGS ",$00 : dw DATA_03ADC8
DATA_03ADC8:
	db $02,$04,$21,$01
	db "SCORE",$00 : dw DATA_03ADD4
DATA_03ADD4:
	db $03,$04,$61,$01
	db "LIVES",$00 : dw $0000

DATA_03ADE0:
	db $01,$04,$E1,$00
	db "TIME ",$00 : dw DATA_03ADEC
DATA_03ADEC:
	db $02,$04,$21,$01
	db "SCORE",$00 : dw DATA_03ADF8
DATA_03ADF8:
	db $03,$04,$61,$01
	db "LIVES",$00 : dw $0000

DATA_03AE04:
	db $01,$04,$61,$01
	db " TAGS= -----",$00 : dw DATA_03AE17
DATA_03AE17:
	db $02,$04,$81,$01
	db "SCORE= -----",$00 : dw DATA_03AE2A
DATA_03AE2A:
	db $03,$04,$A1,$01
	db "LIVES= -----",$00 : dw $0000

DATA_03AE3D:
	db $00,$00,$00
	db (CODE_0195A7-$01)>>16 : dw CODE_0195A7-$01
	db (CODE_0195CF-$01)>>16 : dw CODE_0195CF-$01
	db (CODE_019626-$01)>>16 : dw CODE_019626-$01
	db (CODE_0196D0-$01)>>16 : dw CODE_0196D0-$01
	db (CODE_019683-$01)>>16 : dw CODE_019683-$01
	db (CODE_0195B9-$01)>>16 : dw CODE_0195B9-$01
	db (CODE_019614-$01)>>16 : dw CODE_019614-$01
	db (CODE_019638-$01)>>16 : dw CODE_019638-$01
	db (CODE_01970E-$01)>>16 : dw CODE_01970E-$01
	db (CODE_019718-$01)>>16 : dw CODE_019718-$01
	db (CODE_019722-$01)>>16 : dw CODE_019722-$01
	db (CODE_019653-$01)>>16 : dw CODE_019653-$01
	db (CODE_01966C-$01)>>16 : dw CODE_01966C-$01
	db (CODE_01968C-$01)>>16 : dw CODE_01968C-$01
	db (CODE_0196AA-$01)>>16 : dw CODE_0196AA-$01
	db (CODE_01969C-$01)>>16 : dw CODE_01969C-$01
	db $00,$00,$00
	db $00,$00,$00
	db $00,$00,$00

DATA_03AE79:
	db $00,$00,$00
	db (CODE_02A578-$01)>>16 : dw CODE_02A578-$01
	db (CODE_02A578-$01)>>16 : dw CODE_02A578-$01
	db (CODE_02A578-$01)>>16 : dw CODE_02A578-$01
	db (CODE_02A578-$01)>>16 : dw CODE_02A578-$01
	db (CODE_02A578-$01)>>16 : dw CODE_02A578-$01
	db (CODE_02A578-$01)>>16 : dw CODE_02A578-$01
	db (CODE_02A578-$01)>>16 : dw CODE_02A578-$01
	db (CODE_02A578-$01)>>16 : dw CODE_02A578-$01
	db (CODE_02A578-$01)>>16 : dw CODE_02A578-$01
	db (CODE_02A578-$01)>>16 : dw CODE_02A578-$01
	db (CODE_02A578-$01)>>16 : dw CODE_02A578-$01
	db (CODE_02A578-$01)>>16 : dw CODE_02A578-$01
	db (CODE_02A578-$01)>>16 : dw CODE_02A578-$01
	db (CODE_02A578-$01)>>16 : dw CODE_02A578-$01
	db (CODE_02A578-$01)>>16 : dw CODE_02A578-$01
	db $00,$00,$00
	db $00,$00,$00
	db $00,$00,$00
	db $00,$00,$00
	db (CODE_02A578-$01)>>16 : dw CODE_02A578-$01
	db (CODE_02A578-$01)>>16 : dw CODE_02A578-$01
	db (CODE_02A578-$01)>>16 : dw CODE_02A578-$01
	db (CODE_0196F0-$01)>>16 : dw CODE_0196F0-$01
	db (CODE_0196F0-$01)>>16 : dw CODE_0196F0-$01
	db $00,$00,$00
	db $00,$00,$00
	db $00,$00,$00
	db $00,$00,$00
	db $00,$00,$00
	db $00,$00,$00
	db $00,$00,$00
	db (CODE_019061-$01)>>16 : dw CODE_019061-$01
	db (CODE_019062-$01)>>16 : dw CODE_019062-$01
	db (CODE_019063-$01)>>16 : dw CODE_019063-$01
	db (CODE_019064-$01)>>16 : dw CODE_019064-$01
	db (CODE_019065-$01)>>16 : dw CODE_019065-$01
	db (CODE_019066-$01)>>16 : dw CODE_019066-$01
	db (CODE_019067-$01)>>16 : dw CODE_019067-$01
	db (CODE_01908E-$01)>>16 : dw CODE_01908E-$01
	db (CODE_01908F-$01)>>16 : dw CODE_01908F-$01
	db (CODE_019090-$01)>>16 : dw CODE_019090-$01
	db $00,$00,$00
	db $00,$00,$00
	db $00,$00,$00
	db $00,$00,$00
	db $00,$00,$00
	db $00,$00,$00

DATA_03AF09:
	db $00,$00,$00
	db (CODE_01970D-$01)>>16 : dw CODE_01970D-$01
	db (CODE_01970D-$01)>>16 : dw CODE_01970D-$01
	db (CODE_01970D-$01)>>16 : dw CODE_01970D-$01
	db (CODE_01970D-$01)>>16 : dw CODE_01970D-$01
	db (CODE_01970D-$01)>>16 : dw CODE_01970D-$01
	db (CODE_01970D-$01)>>16 : dw CODE_01970D-$01
	db (CODE_01970D-$01)>>16 : dw CODE_01970D-$01
	db (CODE_01970D-$01)>>16 : dw CODE_01970D-$01
	db (CODE_01970D-$01)>>16 : dw CODE_01970D-$01
	db (CODE_01970D-$01)>>16 : dw CODE_01970D-$01
	db (CODE_01970D-$01)>>16 : dw CODE_01970D-$01
	db (CODE_01970D-$01)>>16 : dw CODE_01970D-$01
	db (CODE_01970D-$01)>>16 : dw CODE_01970D-$01
	db (CODE_01970D-$01)>>16 : dw CODE_01970D-$01
	db (CODE_01970D-$01)>>16 : dw CODE_01970D-$01
	db (CODE_01970D-$01)>>16 : dw CODE_01970D-$01
	db $00,$00,$00
	db $00,$00,$00
	db $00,$00,$00
	db (CODE_01972C-$01)>>16 : dw CODE_01972C-$01
	db (CODE_019735-$01)>>16 : dw CODE_019735-$01
	db (CODE_01973E-$01)>>16 : dw CODE_01973E-$01
	db (CODE_0197D3-$01)>>16 : dw CODE_0197D3-$01
	db (CODE_019805-$01)>>16 : dw CODE_019805-$01
	db $00,$00,$00
	db $00,$00,$00
	db $00,$00,$00
	db $00,$00,$00
	db $00,$00,$00
	db $00,$00,$00
	db $00,$00,$00
	db (CODE_019091-$01)>>16 : dw CODE_019091-$01
	db (CODE_019092-$01)>>16 : dw CODE_019092-$01
	db (CODE_019093-$01)>>16 : dw CODE_019093-$01
	db (CODE_019094-$01)>>16 : dw CODE_019094-$01
	db (CODE_019095-$01)>>16 : dw CODE_019095-$01
	db (CODE_019096-$01)>>16 : dw CODE_019096-$01
	db (CODE_019097-$01)>>16 : dw CODE_019097-$01
	db (CODE_0190A6-$01)>>16 : dw CODE_0190A6-$01
	db (CODE_0190A7-$01)>>16 : dw CODE_0190A7-$01
	db (CODE_0190A8-$01)>>16 : dw CODE_0190A8-$01
	db $00,$00,$00
	db $00,$00,$00
	db $00,$00,$00
	db $00,$00,$00
	db $00,$00,$00
	db $00,$00,$00

DATA_03AF99:
	db $4E,$00,$31,$01,$51,$02,$42,$03,$56,$04,$44,$05,$46,$06,$54,$07
	db $30,$08,$4A,$09,$38,$0A,$4C,$0B,$43,$0C,$50,$0D,$58,$0E,$4B,$0F
	db $32,$10,$57,$11,$35,$12,$59,$13,$39,$14,$52,$15,$47,$16,$53,$17
	db $48,$18,$33,$19,$4D,$1A,$34,$1B,$5A,$1C,$36,$1D,$37,$1E,$2E,$1F

DATA_03AFD9:
	dw $2000,$1FFE,$1FF6,$1FEA,$1FD8,$1FC2,$1FA7,$1F86
	dw $1F61,$1F37,$1F09,$1ED5,$1E9D,$1E5F,$1E1D,$1DD7
	dw $1D8C,$1D3C,$1CE7,$1C8F,$1C31,$1BD0,$1B6A,$1AFF
	dw $1A91,$1A1E,$19A8,$192D,$18AE,$182C,$17A6,$171C
	dw $168F,$15FE,$156A,$14D2,$1437,$1399,$12F8,$1254
	dw $11AD,$1103,$1057,$0FA8,$0EF7,$0E43,$0D8E,$0CD6
	dw $0C1C,$0B60,$0AA3,$09E3,$0923,$0861,$079D,$06D9
	dw $0613,$054C,$0485,$03BD,$02F4,$022B,$0161,$0097
	dw $0000,$FF37,$FE6D,$FDA4,$FCDB,$FC12,$FB4A,$FA83
	dw $F9BD,$F8F7,$F833,$F770,$F6AE,$F5EE,$F52F,$F472
	dw $F3B6,$F2FD,$F246,$F190,$F0DD,$F02D,$EF7F,$EED3
	dw $EE2A,$ED84,$ECE1,$EC40,$EBA3,$EB09,$EA72,$E9DF
	dw $E94F,$E8C2,$E839,$E7B4,$E733,$E6B5,$E63B,$E5C6
	dw $E554,$E4E7,$E47E,$E419,$E3B8,$E35C,$E304,$E2B1
	dw $E262,$E218,$E1D3,$E192,$E156,$E11F,$E0EC,$E0BF
	dw $E096,$E072,$E053,$E039,$E024,$E014,$E009,$E002
	dw $E001,$E003,$E00B,$E017,$E029,$E03F,$E05A,$E07B
	dw $E0A0,$E0CA,$E0F8,$E12C,$E164,$E1A2,$E1E4,$E22A
	dw $E275,$E2C5,$E31A,$E372,$E3D0,$E431,$E497,$E502
	dw $E570,$E5E3,$E659,$E6D4,$E753,$E7D5,$E85B,$E8E5
	dw $E972,$EA03,$EA97,$EB2F,$EBCA,$EC68,$ED09,$EDAD
	dw $EE54,$EEFE,$EFAA,$F059,$F10A,$F1BE,$F273,$F32B
	dw $F3E5,$F4A1,$F55E,$F61E,$F6DE,$F7A0,$F864,$F928
	dw $F9EE,$FAB5,$FB7C,$FC44,$FD0D,$FDD6,$FEA0,$FF6A
	dw $0000,$00CA,$0194,$025D,$0326,$03EF,$04B7,$057E
	dw $0644,$070A,$07CE,$0891,$0953,$0A13,$0AD2,$0B8F
	dw $0C4B,$0D04,$0DBB,$0E71,$0F24,$0FD4,$1082,$112E
	dw $11D7,$127D,$1320,$13C1,$145E,$14F8,$158F,$1622
	dw $16B2,$173F,$17C8,$184D,$18CE,$194C,$19C6,$1A3B
	dw $1AAD,$1B1A,$1B83,$1BE8,$1C49,$1CA5,$1CFD,$1D50
	dw $1D9F,$1DE9,$1E2E,$1E6F,$1EAB,$1EE2,$1F15,$1F42
	dw $1F6B,$1F8F,$1FAE,$1FC8,$1FDD,$1FED,$1FF8,$1FFF

DATA_03B1D9:
	dw $0000,$00CA,$0194,$025D,$0326,$03EF,$04B7,$057E
	dw $0644,$070A,$07CE,$0891,$0953,$0A13,$0AD2,$0B8F
	dw $0C4B,$0D04,$0DBB,$0E71,$0F24,$0FD4,$1082,$112E
	dw $11D7,$127D,$1320,$13C1,$145E,$14F8,$158F,$1622
	dw $16B2,$173F,$17C8,$184D,$18CE,$194C,$19C6,$1A3B
	dw $1AAD,$1B1A,$1B83,$1BE8,$1C49,$1CA5,$1CFD,$1D50
	dw $1D9F,$1DE9,$1E2E,$1E6F,$1EAB,$1EE2,$1F15,$1F42
	dw $1F6B,$1F8F,$1FAE,$1FC8,$1FDD,$1FED,$1FF8,$1FFF
	dw $2000,$1FFE,$1FF6,$1FEA,$1FD8,$1FC2,$1FA7,$1F86
	dw $1F61,$1F37,$1F09,$1ED5,$1E9D,$1E5F,$1E1D,$1DD7
	dw $1D8C,$1D3C,$1CE7,$1C8F,$1C31,$1BD0,$1B6A,$1AFF
	dw $1A91,$1A1E,$19A8,$192D,$18AE,$182C,$17A6,$171C
	dw $168F,$15FE,$156A,$14D2,$1437,$1399,$12F8,$1254
	dw $11AD,$1103,$1057,$0FA8,$0EF7,$0E43,$0D8E,$0CD6
	dw $0C1C,$0B60,$0AA3,$09E3,$0923,$0861,$079D,$06D9
	dw $0613,$054C,$0485,$03BD,$02F4,$022B,$0161,$0097
	dw $0000,$FF37,$FE6D,$FDA4,$FCDB,$FC12,$FB4A,$FA83
	dw $F9BD,$F8F7,$F833,$F770,$F6AE,$F5EE,$F52F,$F472
	dw $F3B6,$F2FD,$F246,$F190,$F0DD,$F02D,$EF7F,$EED3
	dw $EE2A,$ED84,$ECE1,$EC40,$EBA3,$EB09,$EA72,$E9DF
	dw $E94F,$E8C2,$E839,$E7B4,$E733,$E6B5,$E63B,$E5C6
	dw $E554,$E4E7,$E47E,$E419,$E3B8,$E35C,$E304,$E2B1
	dw $E262,$E218,$E1D3,$E192,$E156,$E11F,$E0EC,$E0BF
	dw $E096,$E072,$E053,$E039,$E024,$E014,$E009,$E002
	dw $E001,$E003,$E00B,$E017,$E029,$E03F,$E05A,$E07B
	dw $E0A0,$E0CA,$E0F8,$E12C,$E164,$E1A2,$E1E4,$E22A
	dw $E275,$E2C5,$E31A,$E372,$E3D0,$E431,$E497,$E502
	dw $E570,$E5E3,$E659,$E6D4,$E753,$E7D5,$E85B,$E8E5
	dw $E972,$EA03,$EA97,$EB2F,$EBCA,$EC68,$ED09,$EDAD
	dw $EE54,$EEFE,$EFAA,$F059,$F10A,$F1BE,$F273,$F32B
	dw $F3E5,$F4A1,$F55E,$F61E,$F6DE,$F7A0,$F864,$F928
	dw $F9EE,$FAB5,$FB7C,$FC44,$FD0D,$FDD6,$FEA0,$FF6A

DATA_03B3D9:
	dw $1C00,$1BFE,$1BF7,$1BEC,$1BDD,$1BCA,$1BB2,$1B96
	dw $1B75,$1B50,$1B28,$1AFA,$1AC9,$1A93,$1A5A,$1A1C
	dw $19DA,$1994,$194A,$18FD,$18AB,$1856,$17FC,$179F
	dw $173F,$16DA,$1673,$1607,$1599,$1527,$14B1,$1439
	dw $13BD,$133E,$12BC,$1238,$11B0,$1126,$1099,$1009
	dw $0F77,$0EE3,$0E4C,$0DB3,$0D18,$0C7B,$0BDC,$0B3B
	dw $0A98,$09F4,$094E,$08A7,$07FE,$0755,$06AA,$05FD
	dw $0550,$04A3,$03F4,$0345,$0295,$01E5,$0135,$0084
	dw $0000,$FF50,$FEA0,$FDF0,$FD40,$FC90,$FBE1,$FB33
	dw $FA85,$F9D8,$F92D,$F882,$F7D8,$F730,$F689,$F5E4
	dw $F540,$F49E,$F3FD,$F35E,$F2C2,$F227,$F18F,$F0F9
	dw $F065,$EFD4,$EF45,$EEB8,$EE2F,$EDA8,$ED24,$ECA3
	dw $EC25,$EBAA,$EB32,$EABE,$EA4C,$E9DE,$E974,$E90D
	dw $E8AA,$E84A,$E7EE,$E796,$E741,$E6F0,$E6A4,$E65B
	dw $E616,$E5D5,$E598,$E560,$E52B,$E4FB,$E4CF,$E4A7
	dw $E483,$E464,$E449,$E432,$E420,$E411,$E408,$E402
	dw $E401,$E403,$E40A,$E415,$E424,$E437,$E44F,$E46B
	dw $E48C,$E4B1,$E4D9,$E507,$E538,$E56E,$E5A7,$E5E5
	dw $E627,$E66D,$E6B7,$E704,$E756,$E7AB,$E805,$E862
	dw $E8C2,$E927,$E98E,$E9FA,$EA68,$EADA,$EB50,$EBC8
	dw $EC44,$ECC3,$ED45,$EDC9,$EE51,$EEDB,$EF68,$EFF8
	dw $F08A,$F11E,$F1B5,$F24E,$F2E9,$F386,$F425,$F4C6
	dw $F569,$F60D,$F6B3,$F75A,$F803,$F8AC,$F957,$FA04
	dw $FAB1,$FB5E,$FC0D,$FCBC,$FD6C,$FE1C,$FECC,$FF7D
	dw $0000,$00B1,$0161,$0211,$02C1,$0371,$0420,$04CE
	dw $057C,$0629,$06D4,$077F,$0829,$08D1,$0978,$0A1D
	dw $0AC1,$0B63,$0C04,$0CA3,$0D3F,$0DDA,$0E72,$0F08
	dw $0F9C,$102D,$10BC,$1149,$11D2,$1259,$12DD,$135E
	dw $13DC,$1457,$14CF,$1543,$15B5,$1623,$168D,$16F4
	dw $1757,$17B7,$1813,$186B,$18C0,$1911,$195D,$19A6
	dw $19EB,$1A2C,$1A69,$1AA1,$1AD6,$1B06,$1B32,$1B5A
	dw $1B7E,$1B9D,$1BB8,$1BCF,$1BE1,$1BF0,$1BF9,$1BFF

DATA_03B5D9:
	dw $0000,$00B1,$0161,$0211,$02C1,$0371,$0420,$04CE
	dw $057C,$0629,$06D4,$077F,$0829,$08D1,$0978,$0A1D
	dw $0AC1,$0B63,$0C04,$0CA3,$0D3F,$0DDA,$0E72,$0F08
	dw $0F9C,$102D,$10BC,$1149,$11D2,$1259,$12DD,$135E
	dw $13DC,$1457,$14CF,$1543,$15B5,$1623,$168D,$16F4
	dw $1757,$17B7,$1813,$186B,$18C0,$1911,$195D,$19A6
	dw $19EB,$1A2C,$1A69,$1AA1,$1AD6,$1B06,$1B32,$1B5A
	dw $1B7E,$1B9D,$1BB8,$1BCF,$1BE1,$1BF0,$1BF9,$1BFF
	dw $1C00,$1BFE,$1BF7,$1BEC,$1BDD,$1BCA,$1BB2,$1B96
	dw $1B75,$1B50,$1B28,$1AFA,$1AC9,$1A93,$1A5A,$1A1C
	dw $19DA,$1994,$194A,$18FD,$18AB,$1856,$17FC,$179F
	dw $173F,$16DA,$1673,$1607,$1599,$1527,$14B1,$1439
	dw $13BD,$133E,$12BC,$1238,$11B0,$1126,$1099,$1009
	dw $0F77,$0EE3,$0E4C,$0DB3,$0D18,$0C7B,$0BDC,$0B3B
	dw $0A98,$09F4,$094E,$08A7,$07FE,$0755,$06AA,$05FD
	dw $0550,$04A3,$03F4,$0345,$0295,$01E5,$0135,$0084
	dw $0000,$FF50,$FEA0,$FDF0,$FD40,$FC90,$FBE1,$FB33
	dw $FA85,$F9D8,$F92D,$F882,$F7D8,$F730,$F689,$F5E4
	dw $F540,$F49E,$F3FD,$F35E,$F2C2,$F227,$F18F,$F0F9
	dw $F065,$EFD4,$EF45,$EEB8,$EE2F,$EDA8,$ED24,$ECA3
	dw $EC25,$EBAA,$EB32,$EABE,$EA4C,$E9DE,$E974,$E90D
	dw $E8AA,$E84A,$E7EE,$E796,$E741,$E6F0,$E6A4,$E65B
	dw $E616,$E5D5,$E598,$E560,$E52B,$E4FB,$E4CF,$E4A7
	dw $E483,$E464,$E449,$E432,$E420,$E411,$E408,$E402
	dw $E401,$E403,$E40A,$E415,$E424,$E437,$E44F,$E46B
	dw $E48C,$E4B1,$E4D9,$E507,$E538,$E56E,$E5A7,$E5E5
	dw $E627,$E66D,$E6B7,$E704,$E756,$E7AB,$E805,$E862
	dw $E8C2,$E927,$E98E,$E9FA,$EA68,$EADA,$EB50,$EBC8
	dw $EC44,$ECC3,$ED45,$EDC9,$EE51,$EEDB,$EF68,$EFF8
	dw $F08A,$F11E,$F1B5,$F24E,$F2E9,$F386,$F425,$F4C6
	dw $F569,$F60D,$F6B3,$F75A,$F803,$F8AC,$F957,$FA04
	dw $FAB1,$FB5E,$FC0D,$FCBC,$FD6C,$FE1C,$FECC,$FF7D

DATA_03B7D9:
	dw $1800,$17FE,$17F9,$17EF,$17E2,$17D1,$17BD,$17A5
	dw $1789,$176A,$1746,$1720,$16F5,$16C7,$1696,$1661
	dw $1629,$15ED,$15AE,$156B,$1525,$14DC,$148F,$143F
	dw $13ED,$1397,$133E,$12E2,$1283,$1221,$11BC,$1155
	dw $10EB,$107E,$100F,$0F9D,$0F29,$0EB3,$0E3A,$0DBF
	dw $0D42,$0CC3,$0C41,$0BBE,$0B39,$0AB3,$0A2A,$09A0
	dw $0915,$0888,$07FA,$076B,$06DA,$0648,$05B6,$0522
	dw $048E,$03F9,$0364,$02CD,$0237,$01A0,$0109,$0072
	dw $0000,$FF6A,$FED2,$FE3B,$FDA4,$FD0E,$FC78,$FBE3
	dw $FB4E,$FABA,$FA26,$F994,$F903,$F872,$F7E3,$F756
	dw $F6C9,$F63E,$F5B4,$F52D,$F4A6,$F422,$F39F,$F31E
	dw $F2A0,$F223,$F1A9,$F130,$F0BB,$F047,$EFD6,$EF67
	dw $EEFB,$EE92,$EE2B,$EDC7,$ED66,$ED08,$ECAD,$EC55
	dw $EBFF,$EBAD,$EB5E,$EB13,$EACA,$EA85,$EA43,$EA05
	dw $E9CA,$E992,$E95E,$E92E,$E901,$E8D7,$E8B1,$E88F
	dw $E871,$E856,$E83F,$E82B,$E81B,$E80F,$E807,$E802
	dw $E801,$E803,$E808,$E812,$E81F,$E830,$E844,$E85C
	dw $E878,$E897,$E8BB,$E8E1,$E90C,$E93A,$E96B,$E9A0
	dw $E9D8,$EA14,$EA53,$EA96,$EADC,$EB25,$EB72,$EBC2
	dw $EC14,$EC6A,$ECC3,$ED1F,$ED7E,$EDE0,$EE45,$EEAC
	dw $EF16,$EF83,$EFF2,$F064,$F0D8,$F14E,$F1C7,$F242
	dw $F2BF,$F33E,$F3C0,$F443,$F4C8,$F54E,$F5D7,$F661
	dw $F6EC,$F779,$F807,$F896,$F927,$F9B9,$FA4B,$FADF
	dw $FB73,$FC08,$FC9D,$FD34,$FDCA,$FE61,$FEF8,$FF8F
	dw $0000,$0097,$012F,$01C6,$025D,$02F3,$0389,$041E
	dw $04B3,$0547,$05DB,$066D,$06FE,$078F,$081E,$08AB
	dw $0938,$09C3,$0A4D,$0AD4,$0B5B,$0BDF,$0C62,$0CE3
	dw $0D61,$0DDE,$0E58,$0ED1,$0F46,$0FBA,$102B,$109A
	dw $1106,$116F,$11D6,$123A,$129B,$12F9,$1354,$13AC
	dw $1402,$1454,$14A3,$14EE,$1537,$157C,$15BE,$15FC
	dw $1637,$166F,$16A3,$16D3,$1700,$172A,$1750,$1772
	dw $1790,$17AB,$17C2,$17D6,$17E6,$17F2,$17FA,$17FF

DATA_03B9D9:
	dw $0000,$0097,$012F,$01C6,$025D,$02F3,$0389,$041E
	dw $04B3,$0547,$05DB,$066D,$06FE,$078F,$081E,$08AB
	dw $0938,$09C3,$0A4D,$0AD4,$0B5B,$0BDF,$0C62,$0CE3
	dw $0D61,$0DDE,$0E58,$0ED1,$0F46,$0FBA,$102B,$109A
	dw $1106,$116F,$11D6,$123A,$129B,$12F9,$1354,$13AC
	dw $1402,$1454,$14A3,$14EE,$1537,$157C,$15BE,$15FC
	dw $1637,$166F,$16A3,$16D3,$1700,$172A,$1750,$1772
	dw $1790,$17AB,$17C2,$17D6,$17E6,$17F2,$17FA,$17FF
	dw $1800,$17FE,$17F9,$17EF,$17E2,$17D1,$17BD,$17A5
	dw $1789,$176A,$1746,$1720,$16F5,$16C7,$1696,$1661
	dw $1629,$15ED,$15AE,$156B,$1525,$14DC,$148F,$143F
	dw $13ED,$1397,$133E,$12E2,$1283,$1221,$11BC,$1155
	dw $10EB,$107E,$100F,$0F9D,$0F29,$0EB3,$0E3A,$0DBF
	dw $0D42,$0CC3,$0C41,$0BBE,$0B39,$0AB3,$0A2A,$09A0
	dw $0915,$0888,$07FA,$076B,$06DA,$0648,$05B6,$0522
	dw $048E,$03F9,$0364,$02CD,$0237,$01A0,$0109,$0072
	dw $0000,$FF6A,$FED2,$FE3B,$FDA4,$FD0E,$FC78,$FBE3
	dw $FB4E,$FABA,$FA26,$F994,$F903,$F872,$F7E3,$F756
	dw $F6C9,$F63E,$F5B4,$F52D,$F4A6,$F422,$F39F,$F31E
	dw $F2A0,$F223,$F1A9,$F130,$F0BB,$F047,$EFD6,$EF67
	dw $EEFB,$EE92,$EE2B,$EDC7,$ED66,$ED08,$ECAD,$EC55
	dw $EBFF,$EBAD,$EB5E,$EB13,$EACA,$EA85,$EA43,$EA05
	dw $E9CA,$E992,$E95E,$E92E,$E901,$E8D7,$E8B1,$E88F
	dw $E871,$E856,$E83F,$E82B,$E81B,$E80F,$E807,$E802
	dw $E801,$E803,$E808,$E812,$E81F,$E830,$E844,$E85C
	dw $E878,$E897,$E8BB,$E8E1,$E90C,$E93A,$E96B,$E9A0
	dw $E9D8,$EA14,$EA53,$EA96,$EADC,$EB25,$EB72,$EBC2
	dw $EC14,$EC6A,$ECC3,$ED1F,$ED7E,$EDE0,$EE45,$EEAC
	dw $EF16,$EF83,$EFF2,$F064,$F0D8,$F14E,$F1C7,$F242
	dw $F2BF,$F33E,$F3C0,$F443,$F4C8,$F54E,$F5D7,$F661
	dw $F6EC,$F779,$F807,$F896,$F927,$F9B9,$FA4B,$FADF
	dw $FB73,$FC08,$FC9D,$FD34,$FDCA,$FE61,$FEF8,$FF8F

DATA_03BBD9:
	dw $1400,$13FE,$13FA,$13F2,$13E7,$13D9,$13C8,$13B4
	dw $139D,$1383,$1365,$1345,$1322,$12FC,$12D2,$12A6
	dw $1277,$1245,$1211,$11D9,$119F,$1162,$1122,$10E0
	dw $109B,$1053,$1009,$0FBC,$0F6D,$0F1C,$0EC8,$0E72
	dw $0E19,$0DBF,$0D62,$0D03,$0CA2,$0C40,$0BDB,$0B74
	dw $0B0C,$0AA2,$0A36,$09C9,$095A,$08EA,$0879,$0806
	dw $0791,$071C,$06A6,$062E,$05B6,$053C,$04C2,$0447
	dw $03CC,$0350,$02D3,$0256,$01D8,$015B,$00DD,$005F
	dw $0000,$FF83,$FF05,$FE87,$FE09,$FD8C,$FD0F,$FC92
	dw $FC16,$FB9B,$FB20,$FAA6,$FA2D,$F9B5,$F93E,$F8C7
	dw $F852,$F7DF,$F76C,$F6FB,$F68B,$F61C,$F5B0,$F544
	dw $F4DB,$F473,$F40D,$F3A9,$F346,$F2E6,$F288,$F22C
	dw $F1D1,$F17A,$F124,$F0D1,$F080,$F031,$EFE5,$EF9C
	dw $EF55,$EF11,$EECF,$EE90,$EE53,$EE1A,$EDE3,$EDAF
	dw $ED7E,$ED4F,$ED24,$ECFC,$ECD6,$ECB4,$EC94,$EC78
	dw $EC5E,$EC48,$EC34,$EC24,$EC17,$EC0D,$EC06,$EC02
	dw $EC01,$EC03,$EC07,$EC0F,$EC1A,$EC28,$EC39,$EC4D
	dw $EC64,$EC7E,$EC9C,$ECBC,$ECDF,$ED05,$ED2F,$ED5B
	dw $ED8A,$EDBC,$EDF0,$EE28,$EE62,$EE9F,$EEDF,$EF21
	dw $EF66,$EFAE,$EFF8,$F045,$F094,$F0E5,$F139,$F18F
	dw $F1E8,$F242,$F29F,$F2FE,$F35F,$F3C1,$F426,$F48D
	dw $F4F5,$F55F,$F5CB,$F638,$F6A7,$F717,$F788,$F7FB
	dw $F870,$F8E5,$F95B,$F9D3,$FA4B,$FAC5,$FB3F,$FBBA
	dw $FC35,$FCB1,$FD2E,$FDAB,$FE29,$FEA6,$FF24,$FFA2
	dw $0000,$007E,$00FC,$017A,$01F8,$0275,$02F2,$036F
	dw $03EB,$0466,$04E1,$055B,$05D4,$064C,$06C3,$073A
	dw $07AF,$0822,$0895,$0906,$0976,$09E5,$0A51,$0ABD
	dw $0B26,$0B8E,$0BF4,$0C58,$0CBB,$0D1B,$0D79,$0DD5
	dw $0E30,$0E87,$0EDD,$0F30,$0F81,$0FD0,$101C,$1065
	dw $10AC,$10F0,$1132,$1171,$11AE,$11E7,$121E,$1252
	dw $1283,$12B2,$12DD,$1305,$132B,$134D,$136D,$1389
	dw $13A3,$13B9,$13CD,$13DD,$13EA,$13F4,$13FB,$13FF

DATA_03BDD9:
	dw $0000,$007E,$00FC,$017A,$01F8,$0275,$02F2,$036F
	dw $03EB,$0466,$04E1,$055B,$05D4,$064C,$06C3,$073A
	dw $07AF,$0822,$0895,$0906,$0976,$09E5,$0A51,$0ABD
	dw $0B26,$0B8E,$0BF4,$0C58,$0CBB,$0D1B,$0D79,$0DD5
	dw $0E30,$0E87,$0EDD,$0F30,$0F81,$0FD0,$101C,$1065
	dw $10AC,$10F0,$1132,$1171,$11AE,$11E7,$121E,$1252
	dw $1283,$12B2,$12DD,$1305,$132B,$134D,$136D,$1389
	dw $13A3,$13B9,$13CD,$13DD,$13EA,$13F4,$13FB,$13FF
	dw $1400,$13FE,$13FA,$13F2,$13E7,$13D9,$13C8,$13B4
	dw $139D,$1383,$1365,$1345,$1322,$12FC,$12D2,$12A6
	dw $1277,$1245,$1211,$11D9,$119F,$1162,$1122,$10E0
	dw $109B,$1053,$1009,$0FBC,$0F6D,$0F1C,$0EC8,$0E72
	dw $0E19,$0DBF,$0D62,$0D03,$0CA2,$0C40,$0BDB,$0B74
	dw $0B0C,$0AA2,$0A36,$09C9,$095A,$08EA,$0879,$0806
	dw $0791,$071C,$06A6,$062E,$05B6,$053C,$04C2,$0447
	dw $03CC,$0350,$02D3,$0256,$01D8,$015B,$00DD,$005F
	dw $0000,$FF83,$FF05,$FE87,$FE09,$FD8C,$FD0F,$FC92
	dw $FC16,$FB9B,$FB20,$FAA6,$FA2D,$F9B5,$F93E,$F8C7
	dw $F852,$F7DF,$F76C,$F6FB,$F68B,$F61C,$F5B0,$F544
	dw $F4DB,$F473,$F40D,$F3A9,$F346,$F2E6,$F288,$F22C
	dw $F1D1,$F17A,$F124,$F0D1,$F080,$F031,$EFE5,$EF9C
	dw $EF55,$EF11,$EECF,$EE90,$EE53,$EE1A,$EDE3,$EDAF
	dw $ED7E,$ED4F,$ED24,$ECFC,$ECD6,$ECB4,$EC94,$EC78
	dw $EC5E,$EC48,$EC34,$EC24,$EC17,$EC0D,$EC06,$EC02
	dw $EC01,$EC03,$EC07,$EC0F,$EC1A,$EC28,$EC39,$EC4D
	dw $EC64,$EC7E,$EC9C,$ECBC,$ECDF,$ED05,$ED2F,$ED5B
	dw $ED8A,$EDBC,$EDF0,$EE28,$EE62,$EE9F,$EEDF,$EF21
	dw $EF66,$EFAE,$EFF8,$F045,$F094,$F0E5,$F139,$F18F
	dw $F1E8,$F242,$F29F,$F2FE,$F35F,$F3C1,$F426,$F48D
	dw $F4F5,$F55F,$F5CB,$F638,$F6A7,$F717,$F788,$F7FB
	dw $F870,$F8E5,$F95B,$F9D3,$FA4B,$FAC5,$FB3F,$FBBA
	dw $FC35,$FCB1,$FD2E,$FDAB,$FE29,$FEA6,$FF24,$FFA2

DATA_03BFD9:
	dw $1000,$0FFF,$0FFB,$0FF5,$0FEC,$0FE1,$0FD3,$0FC3
	dw $0FB1,$0F9C,$0F84,$0F6A,$0F4E,$0F30,$0F0F,$0EEB
	dw $0EC6,$0E9E,$0E74,$0E47,$0E19,$0DE8,$0DB5,$0D80
	dw $0D48,$0D0F,$0CD4,$0C97,$0C57,$0C16,$0BD3,$0B8E
	dw $0B47,$0AFF,$0AB5,$0A69,$0A1B,$09CC,$097C,$092A
	dw $08D6,$0882,$082C,$07D4,$077C,$0722,$06C7,$066B
	dw $060E,$05B0,$0551,$04F2,$0491,$0430,$03CF,$036C
	dw $0309,$02A6,$0242,$01DE,$017A,$0115,$00B1,$004C
	dw $0000,$FF9C,$FF37,$FED3,$FE6E,$FE0A,$FDA6,$FD42
	dw $FCDF,$FC7C,$FC1A,$FBB8,$FB57,$FAF7,$FA98,$FA39
	dw $F9DC,$F97F,$F923,$F8C9,$F86F,$F817,$F7C0,$F76A
	dw $F716,$F6C2,$F671,$F621,$F5D2,$F585,$F53A,$F4F0
	dw $F4A8,$F462,$F41D,$F3DA,$F39A,$F35B,$F31E,$F2E3
	dw $F2AB,$F274,$F23F,$F20D,$F1DD,$F1AE,$F183,$F159
	dw $F132,$F10D,$F0EA,$F0C9,$F0AB,$F090,$F077,$F060
	dw $F04B,$F03A,$F02A,$F01D,$F012,$F00A,$F005,$F002
	dw $F001,$F002,$F006,$F00C,$F015,$F020,$F02E,$F03E
	dw $F050,$F065,$F07D,$F097,$F0B3,$F0D1,$F0F2,$F116
	dw $F13B,$F163,$F18D,$F1BA,$F1E8,$F219,$F24C,$F281
	dw $F2B9,$F2F2,$F32D,$F36A,$F3AA,$F3EB,$F42E,$F473
	dw $F4BA,$F502,$F54C,$F598,$F5E6,$F635,$F685,$F6D7
	dw $F72B,$F77F,$F7D5,$F82D,$F885,$F8DF,$F93A,$F996
	dw $F9F3,$FA51,$FAB0,$FB0F,$FB70,$FBD1,$FC32,$FC95
	dw $FCF8,$FD5B,$FDBF,$FE23,$FE87,$FEEC,$FF50,$FFB5
	dw $0000,$0065,$00CA,$012E,$0193,$01F7,$025B,$02BF
	dw $0322,$0385,$03E7,$0449,$04AA,$050A,$0569,$05C8
	dw $0625,$0682,$06DE,$0738,$0792,$07EA,$0841,$0897
	dw $08EB,$093F,$0990,$09E0,$0A2F,$0A7C,$0AC7,$0B11
	dw $0B59,$0B9F,$0BE4,$0C27,$0C67,$0CA6,$0CE3,$0D1E
	dw $0D56,$0D8D,$0DC2,$0DF4,$0E24,$0E53,$0E7E,$0EA8
	dw $0ECF,$0EF4,$0F17,$0F38,$0F56,$0F71,$0F8A,$0FA1
	dw $0FB6,$0FC7,$0FD7,$0FE4,$0FEF,$0FF7,$0FFC,$0FFF

DATA_03C1D9:
	dw $0000,$0065,$00CA,$012E,$0193,$01F7,$025B,$02BF
	dw $0322,$0385,$03E7,$0449,$04AA,$050A,$0569,$05C8
	dw $0625,$0682,$06DE,$0738,$0792,$07EA,$0841,$0897
	dw $08EB,$093F,$0990,$09E0,$0A2F,$0A7C,$0AC7,$0B11
	dw $0B59,$0B9F,$0BE4,$0C27,$0C67,$0CA6,$0CE3,$0D1E
	dw $0D56,$0D8D,$0DC2,$0DF4,$0E24,$0E53,$0E7E,$0EA8
	dw $0ECF,$0EF4,$0F17,$0F38,$0F56,$0F71,$0F8A,$0FA1
	dw $0FB6,$0FC7,$0FD7,$0FE4,$0FEF,$0FF7,$0FFC,$0FFF
	dw $1000,$0FFF,$0FFB,$0FF5,$0FEC,$0FE1,$0FD3,$0FC3
	dw $0FB1,$0F9C,$0F84,$0F6A,$0F4E,$0F30,$0F0F,$0EEB
	dw $0EC6,$0E9E,$0E74,$0E47,$0E19,$0DE8,$0DB5,$0D80
	dw $0D48,$0D0F,$0CD4,$0C97,$0C57,$0C16,$0BD3,$0B8E
	dw $0B47,$0AFF,$0AB5,$0A69,$0A1B,$09CC,$097C,$092A
	dw $08D6,$0882,$082C,$07D4,$077C,$0722,$06C7,$066B
	dw $060E,$05B0,$0551,$04F2,$0491,$0430,$03CF,$036C
	dw $0309,$02A6,$0242,$01DE,$017A,$0115,$00B1,$004C
	dw $0000,$FF9C,$FF37,$FED3,$FE6E,$FE0A,$FDA6,$FD42
	dw $FCDF,$FC7C,$FC1A,$FBB8,$FB57,$FAF7,$FA98,$FA39
	dw $F9DC,$F97F,$F923,$F8C9,$F86F,$F817,$F7C0,$F76A
	dw $F716,$F6C2,$F671,$F621,$F5D2,$F585,$F53A,$F4F0
	dw $F4A8,$F462,$F41D,$F3DA,$F39A,$F35B,$F31E,$F2E3
	dw $F2AB,$F274,$F23F,$F20D,$F1DD,$F1AE,$F183,$F159
	dw $F132,$F10D,$F0EA,$F0C9,$F0AB,$F090,$F077,$F060
	dw $F04B,$F03A,$F02A,$F01D,$F012,$F00A,$F005,$F002
	dw $F001,$F002,$F006,$F00C,$F015,$F020,$F02E,$F03E
	dw $F050,$F065,$F07D,$F097,$F0B3,$F0D1,$F0F2,$F116
	dw $F13B,$F163,$F18D,$F1BA,$F1E8,$F219,$F24C,$F281
	dw $F2B9,$F2F2,$F32D,$F36A,$F3AA,$F3EB,$F42E,$F473
	dw $F4BA,$F502,$F54C,$F598,$F5E6,$F635,$F685,$F6D7
	dw $F72B,$F77F,$F7D5,$F82D,$F885,$F8DF,$F93A,$F996
	dw $F9F3,$FA51,$FAB0,$FB0F,$FB70,$FBD1,$FC32,$FC95
	dw $FCF8,$FD5B,$FDBF,$FE23,$FE87,$FEEC,$FF50,$FFB5

DATA_03C3D9:
	dw $0C00,$0BFF,$0BFC,$0BF8,$0BF1,$0BE9,$0BDE,$0BD2
	dw $0BC5,$0BB5,$0BA3,$0B90,$0B7B,$0B64,$0B4B,$0B31
	dw $0B14,$0AF6,$0AD7,$0AB5,$0A92,$0A6E,$0A48,$0A20
	dw $09F6,$09CB,$099F,$0971,$0941,$0911,$08DE,$08AB
	dw $0876,$083F,$0808,$07CF,$0795,$0759,$071D,$06DF
	dw $06A1,$0661,$0621,$05DF,$059D,$0559,$0515,$04D0
	dw $048A,$0444,$03FD,$03B5,$036D,$0324,$02DB,$0291
	dw $0247,$01FD,$01B2,$0167,$011B,$00D0,$0084,$0039
	dw $0000,$FFB5,$FF6A,$FF1E,$FED3,$FE87,$FE3C,$FDF2
	dw $FDA7,$FD5D,$FD14,$FCCB,$FC82,$FC3A,$FBF2,$FBAB
	dw $FB65,$FB20,$FADB,$FA97,$FA54,$FA11,$F9D0,$F990
	dw $F950,$F912,$F8D5,$F899,$F85E,$F824,$F7EB,$F7B4
	dw $F77E,$F749,$F716,$F6E4,$F6B4,$F684,$F657,$F62B
	dw $F600,$F5D7,$F5B0,$F58A,$F566,$F543,$F522,$F503
	dw $F4E5,$F4CA,$F4B0,$F497,$F481,$F46C,$F459,$F448
	dw $F439,$F42B,$F420,$F416,$F40E,$F408,$F404,$F402
	dw $F401,$F402,$F405,$F409,$F410,$F418,$F423,$F42F
	dw $F43C,$F44C,$F45E,$F471,$F486,$F49D,$F4B6,$F4D0
	dw $F4ED,$F50B,$F52A,$F54C,$F56F,$F593,$F5B9,$F5E1
	dw $F60B,$F636,$F662,$F690,$F6C0,$F6F0,$F723,$F756
	dw $F78B,$F7C2,$F7F9,$F832,$F86C,$F8A8,$F8E4,$F922
	dw $F960,$F9A0,$F9E0,$FA22,$FA64,$FAA8,$FAEC,$FB31
	dw $FB77,$FBBD,$FC04,$FC4C,$FC94,$FCDD,$FD26,$FD70
	dw $FDBA,$FE04,$FE4F,$FE9A,$FEE6,$FF31,$FF7D,$FFC8
	dw $0000,$004C,$0097,$00E3,$012E,$017A,$01C5,$020F
	dw $025A,$02A4,$02ED,$0336,$037F,$03C7,$040F,$0456
	dw $049C,$04E1,$0526,$056A,$05AD,$05F0,$0631,$0671
	dw $06B1,$06EF,$072C,$0768,$07A3,$07DD,$0816,$084D
	dw $0883,$08B8,$08EB,$091D,$094D,$097D,$09AA,$09D6
	dw $0A01,$0A2A,$0A51,$0A77,$0A9B,$0ABE,$0ADF,$0AFE
	dw $0B1C,$0B37,$0B51,$0B6A,$0B80,$0B95,$0BA8,$0BB9
	dw $0BC8,$0BD6,$0BE1,$0BEB,$0BF3,$0BF9,$0BFD,$0BFF

DATA_03C5D9:
	dw $0000,$004C,$0097,$00E3,$012E,$017A,$01C5,$020F
	dw $025A,$02A4,$02ED,$0336,$037F,$03C7,$040F,$0456
	dw $049C,$04E1,$0526,$056A,$05AD,$05F0,$0631,$0671
	dw $06B1,$06EF,$072C,$0768,$07A3,$07DD,$0816,$084D
	dw $0883,$08B8,$08EB,$091D,$094D,$097D,$09AA,$09D6
	dw $0A01,$0A2A,$0A51,$0A77,$0A9B,$0ABE,$0ADF,$0AFE
	dw $0B1C,$0B37,$0B51,$0B6A,$0B80,$0B95,$0BA8,$0BB9
	dw $0BC8,$0BD6,$0BE1,$0BEB,$0BF3,$0BF9,$0BFD,$0BFF
	dw $0C00,$0BFF,$0BFC,$0BF8,$0BF1,$0BE9,$0BDE,$0BD2
	dw $0BC5,$0BB5,$0BA3,$0B90,$0B7B,$0B64,$0B4B,$0B31
	dw $0B14,$0AF6,$0AD7,$0AB5,$0A92,$0A6E,$0A48,$0A20
	dw $09F6,$09CB,$099F,$0971,$0941,$0911,$08DE,$08AB
	dw $0876,$083F,$0808,$07CF,$0795,$0759,$071D,$06DF
	dw $06A1,$0661,$0621,$05DF,$059D,$0559,$0515,$04D0
	dw $048A,$0444,$03FD,$03B5,$036D,$0324,$02DB,$0291
	dw $0247,$01FD,$01B2,$0167,$011B,$00D0,$0084,$0039
	dw $0000,$FFB5,$FF6A,$FF1E,$FED3,$FE87,$FE3C,$FDF2
	dw $FDA7,$FD5D,$FD14,$FCCB,$FC82,$FC3A,$FBF2,$FBAB
	dw $FB65,$FB20,$FADB,$FA97,$FA54,$FA11,$F9D0,$F990
	dw $F950,$F912,$F8D5,$F899,$F85E,$F824,$F7EB,$F7B4
	dw $F77E,$F749,$F716,$F6E4,$F6B4,$F684,$F657,$F62B
	dw $F600,$F5D7,$F5B0,$F58A,$F566,$F543,$F522,$F503
	dw $F4E5,$F4CA,$F4B0,$F497,$F481,$F46C,$F459,$F448
	dw $F439,$F42B,$F420,$F416,$F40E,$F408,$F404,$F402
	dw $F401,$F402,$F405,$F409,$F410,$F418,$F423,$F42F
	dw $F43C,$F44C,$F45E,$F471,$F486,$F49D,$F4B6,$F4D0
	dw $F4ED,$F50B,$F52A,$F54C,$F56F,$F593,$F5B9,$F5E1
	dw $F60B,$F636,$F662,$F690,$F6C0,$F6F0,$F723,$F756
	dw $F78B,$F7C2,$F7F9,$F832,$F86C,$F8A8,$F8E4,$F922
	dw $F960,$F9A0,$F9E0,$FA22,$FA64,$FAA8,$FAEC,$FB31
	dw $FB77,$FBBD,$FC04,$FC4C,$FC94,$FCDD,$FD26,$FD70
	dw $FDBA,$FE04,$FE4F,$FE9A,$FEE6,$FF31,$FF7D,$FFC8

DATA_03C7D9:
	dw $0800,$07FF,$07FE,$07FA,$07F6,$07F0,$07EA,$07E2
	dw $07D8,$07CE,$07C2,$07B5,$07A7,$0798,$0787,$0776
	dw $0763,$074F,$073A,$0724,$070C,$06F4,$06DA,$06C0
	dw $06A4,$0688,$066A,$064B,$062C,$060B,$05E9,$05C7
	dw $05A4,$057F,$055A,$0534,$050E,$04E6,$04BE,$0495
	dw $046B,$0441,$0416,$03EA,$03BE,$0391,$0363,$0335
	dw $0307,$02D8,$02A9,$0279,$0249,$0218,$01E7,$01B6
	dw $0185,$0153,$0121,$00EF,$00BD,$008B,$0058,$0026
	dw $0000,$FFCF,$FF9C,$FF6A,$FF37,$FF05,$FED3,$FEA2
	dw $FE70,$FE3F,$FE0D,$FDDD,$FDAC,$FD7C,$FD4C,$FD1D
	dw $FCEE,$FCC0,$FC92,$FC65,$FC38,$FC0C,$FBE0,$FBB5
	dw $FB8B,$FB62,$FB39,$FB11,$FAEA,$FAC3,$FA9D,$FA78
	dw $FA54,$FA31,$FA0F,$F9EE,$F9CD,$F9AE,$F990,$F972
	dw $F956,$F93A,$F920,$F907,$F8EF,$F8D8,$F8C2,$F8AD
	dw $F899,$F887,$F875,$F865,$F856,$F848,$F83C,$F830
	dw $F826,$F81D,$F816,$F80F,$F80A,$F806,$F803,$F801
	dw $F801,$F802,$F803,$F807,$F80B,$F811,$F817,$F81F
	dw $F829,$F833,$F83F,$F84C,$F85A,$F869,$F87A,$F88B
	dw $F89E,$F8B2,$F8C7,$F8DD,$F8F5,$F90D,$F927,$F941
	dw $F95D,$F979,$F997,$F9B6,$F9D5,$F9F6,$FA18,$FA3A
	dw $FA5D,$FA82,$FAA7,$FACD,$FAF3,$FB1B,$FB43,$FB6C
	dw $FB96,$FBC0,$FBEB,$FC17,$FC43,$FC70,$FC9E,$FCCC
	dw $FCFA,$FD29,$FD58,$FD88,$FDB8,$FDE9,$FE1A,$FE4B
	dw $FE7C,$FEAE,$FEE0,$FF12,$FF44,$FF76,$FFA9,$FFDB
	dw $0000,$0032,$0065,$0097,$00CA,$00FC,$012E,$015F
	dw $0191,$01C2,$01F4,$0224,$0255,$0285,$02B5,$02E4
	dw $0313,$0341,$036F,$039C,$03C9,$03F5,$0421,$044C
	dw $0476,$049F,$04C8,$04F0,$0517,$053E,$0564,$0589
	dw $05AD,$05D0,$05F2,$0613,$0634,$0653,$0671,$068F
	dw $06AB,$06C7,$06E1,$06FA,$0712,$0729,$073F,$0754
	dw $0768,$077A,$078C,$079C,$07AB,$07B9,$07C5,$07D1
	dw $07DB,$07E4,$07EB,$07F2,$07F7,$07FB,$07FE,$0800

DATA_03C9D9:
	dw $0000,$0032,$0065,$0097,$00CA,$00FC,$012E,$015F
	dw $0191,$01C2,$01F4,$0224,$0255,$0285,$02B5,$02E4
	dw $0313,$0341,$036F,$039C,$03C9,$03F5,$0421,$044C
	dw $0476,$049F,$04C8,$04F0,$0517,$053E,$0564,$0589
	dw $05AD,$05D0,$05F2,$0613,$0634,$0653,$0671,$068F
	dw $06AB,$06C7,$06E1,$06FA,$0712,$0729,$073F,$0754
	dw $0768,$077A,$078C,$079C,$07AB,$07B9,$07C5,$07D1
	dw $07DB,$07E4,$07EB,$07F2,$07F7,$07FB,$07FE,$0800
	dw $0800,$07FF,$07FE,$07FA,$07F6,$07F0,$07EA,$07E2
	dw $07D8,$07CE,$07C2,$07B5,$07A7,$0798,$0787,$0776
	dw $0763,$074F,$073A,$0724,$070C,$06F4,$06DA,$06C0
	dw $06A4,$0688,$066A,$064B,$062C,$060B,$05E9,$05C7
	dw $05A4,$057F,$055A,$0534,$050E,$04E6,$04BE,$0495
	dw $046B,$0441,$0416,$03EA,$03BE,$0391,$0363,$0335
	dw $0307,$02D8,$02A9,$0279,$0249,$0218,$01E7,$01B6
	dw $0185,$0153,$0121,$00EF,$00BD,$008B,$0058,$0026
	dw $0000,$FFCF,$FF9C,$FF6A,$FF37,$FF05,$FED3,$FEA2
	dw $FE70,$FE3F,$FE0D,$FDDD,$FDAC,$FD7C,$FD4C,$FD1D
	dw $FCEE,$FCC0,$FC92,$FC65,$FC38,$FC0C,$FBE0,$FBB5
	dw $FB8B,$FB62,$FB39,$FB11,$FAEA,$FAC3,$FA9D,$FA78
	dw $FA54,$FA31,$FA0F,$F9EE,$F9CD,$F9AE,$F990,$F972
	dw $F956,$F93A,$F920,$F907,$F8EF,$F8D8,$F8C2,$F8AD
	dw $F899,$F887,$F875,$F865,$F856,$F848,$F83C,$F830
	dw $F826,$F81D,$F816,$F80F,$F80A,$F806,$F803,$F801
	dw $F801,$F802,$F803,$F807,$F80B,$F811,$F817,$F81F
	dw $F829,$F833,$F83F,$F84C,$F85A,$F869,$F87A,$F88B
	dw $F89E,$F8B2,$F8C7,$F8DD,$F8F5,$F90D,$F927,$F941
	dw $F95D,$F979,$F997,$F9B6,$F9D5,$F9F6,$FA18,$FA3A
	dw $FA5D,$FA82,$FAA7,$FACD,$FAF3,$FB1B,$FB43,$FB6C
	dw $FB96,$FBC0,$FBEB,$FC17,$FC43,$FC70,$FC9E,$FCCC
	dw $FCFA,$FD29,$FD58,$FD88,$FDB8,$FDE9,$FE1A,$FE4B
	dw $FE7C,$FEAE,$FEE0,$FF12,$FF44,$FF76,$FFA9,$FFDB

DATA_03CBD9:
	db "PLAYER #1 ",$00

DATA_03CBE4:
	db "PLAYER #2 ",$00

DATA_03CBEF:
	db $FF,$7F

DATA_03CBF1:
	db $63,$0C

DATA_03CBF3:
	db "TRAINING ",$00

DATA_03CBFD:
	db "EASY     ",$00

DATA_03CC07:
	db "AVERAGE  ",$00

DATA_03CC11:
	db "HARD     ",$00

DATA_03CC1B:
	db "VERY HARD",$00

DATA_03CC25:
	db "RADICAL! ",$00

DATA_03CC2F:
	db "(CUSTOM) ",$00

DATA_03CC39:
	dw DATA_03CBF3,DATA_03CBFD,DATA_03CC07,DATA_03CC11,DATA_03CC1B,DATA_03CC25,DATA_03CC2F

DATA_03CC47:
	db "ZONE 1",$00

DATA_03CC4E:
	db "ZONE 2",$00

DATA_03CC55:
	db "ZONE 3",$00

DATA_03CC5C:
	db "ZONE 4",$00

DATA_03CC63:
	db "ZONE 5",$00

DATA_03CC6A:
	db "ZONE 6",$00

DATA_03CC71:
	dw DATA_03CC47,DATA_03CC4E,DATA_03CC55,DATA_03CC5C,DATA_03CC63,DATA_03CC6A,$0000

DATA_03CC7F:
	dw $0001,$0000,$0000,$0000

DATA_03CC87:
	dw $0000,$0000,$0000,$0000

DATA_03CC8F:
	dw $0002,$0000,$0000,$0000

DATA_03CC97:
	dw $0000,$0003,$0000,$0000

DATA_03CC9F:
	dw $0000,$0000,$0002,$0000

DATA_03CCA7:
	dw $0000,$0000,$0000,$0002

DATA_03CCAF:
	dw $0000,$0000,$0002,$0002

DATA_03CCB7:
	dw DATA_03CC7F,DATA_03CC8F,DATA_03CC97,DATA_03CC9F,DATA_03CCA7,DATA_03CCAF

DATA_03CCC3:
	dw DATA_03CC87,DATA_03CC8F,DATA_03CC97,DATA_03CC9F,DATA_03CCA7,DATA_03CCAF

DATA_03CCCF:
	db "INTER-FACE",$00

DATA_03CCDA:
	db "CYBERZONE",$00

DATA_03CCE4:
	db "CYBERSCAPE",$00

DATA_03CCEF:
	db "ARENA",$00

DATA_03CCF5:
	db "OPTIONS",$00

DATA_03CCFD:
	db "NAME:",$00

DATA_03CD03:
	db $01,$8C,$26,$01
	dw DATA_03CCDA : dw DATA_03CD0B
DATA_03CD0B:
	db $01,$8C,$46,$01
	dw DATA_03CCE4 : dw DATA_03CD13
DATA_03CD13:
	db $01,$8C,$86,$01
	dw DATA_03CCEF : dw DATA_03CD1B
DATA_03CD1B:
	db $01,$8C,$06,$02
	dw DATA_03CCF5 : dw $0000

DATA_03CD23:
	db $02,$8C,$86,$00
	dw DATA_03CCCF : dw $0000

DATA_03CD2B:
	db $01,$8C,$26,$01
	dw DATA_03CCDA : dw DATA_03CD33
DATA_03CD33:
	db $01,$8C,$86,$01
	dw DATA_03CCEF : dw DATA_03CD3B
DATA_03CD3B:
	db $01,$8C,$06,$02
	dw DATA_03CCF5 : dw $0000

DATA_03CD43:
	db "LEVEL=",$00

DATA_03CD4A:
	db "Select up to 6 SMILOIDS:",$00

DATA_03CD63:
	db $02,$84,$88,$00
	db "SMILOIDS",$00 : dw $0000

DATA_03CD72:
	db $03,$04,$47,$01
	db "GREMLINS     VERY EASY",$00 : dw DATA_03CD8F
DATA_03CD8F:
	db $02,$04,$A7,$01
	db "TURKEYS      EASY",$00 : dw DATA_03CDA7
DATA_03CDA7:
	db $04,$04,$07,$02
	db "ROVERS       AVERAGE",$00 : dw DATA_03CDC2
DATA_03CDC2:
	db $01,$04,$67,$02
	db "BOUNCERS     HARD",$00 : dw $0000

DATA_03CDDA:
	db $02,$84,$86,$00
	db "DIFFICULTY",$00 : dw DATA_03CDEB
DATA_03CDEB:
	db $01,$0C,$C5,$01
	dw DATA_03CD43 : dw $0000

DATA_03CDF3:
	db "FACE/NAME",$00

DATA_03CDFD:
	db "TEAM-PLAY:",$00

DATA_03CE08:
	db "REVIVE:",$00

DATA_03CE10:
	db "REVIVE-1:",$00

DATA_03CE1A:
	db "REVIVE-2:",$00

DATA_03CE24:
	db "MUSIC:",$00

DATA_03CE2B:
	db "STEREO:",$00

DATA_03CE33:
	db "DONE",$00

DATA_03CE38:
	db $01,$8C,$23,$01
	dw DATA_03CDF3 : dw DATA_03CE40
DATA_03CE40:
	db $01,$8C,$A3,$01
	dw DATA_03CE08 : dw DATA_03CE48
DATA_03CE48:
	db $01,$8C,$23,$02
	dw DATA_03CE24 : dw DATA_03CE50
DATA_03CE50:
	db $01,$8C,$63,$02
	dw DATA_03CE2B : dw DATA_03CE58
DATA_03CE58:
	db $01,$8C,$03,$03
	dw DATA_03CE33 : dw $0000

DATA_03CE60:
	db $01,$8C,$23,$01
	dw DATA_03CDF3 : dw DATA_03CE68
DATA_03CE68:
	db $01,$8C,$63,$01
	dw DATA_03CDFD : dw DATA_03CE70
DATA_03CE70:
	db $01,$8C,$A3,$01
	dw DATA_03CE10 : dw DATA_03CE78
DATA_03CE78:
	db $01,$8C,$E3,$01
	dw DATA_03CE1A : dw DATA_03CE80
DATA_03CE80:
	db $01,$8C,$23,$02
	dw DATA_03CE24 : dw DATA_03CE88
DATA_03CE88:
	db $01,$8C,$63,$02
	dw DATA_03CE2B : dw DATA_03CE90
DATA_03CE90:
	db $01,$8C,$03,$03
	dw DATA_03CE33 : dw $0000

DATA_03CE98:
	db "-TAG-",$00

DATA_03CE9E:
	db "WEAK ",$00

DATA_03CEA4:
	db "OK   ",$00

DATA_03CEAA:
	db "HAPPY",$00

DATA_03CEB0:
	db "-----",$00

DATA_03CEB6:
	dw DATA_03CE98,DATA_03CE9E,DATA_03CEA4,DATA_03CEAA,DATA_03CEB0

DATA_03CEC0:
	db $02,$84,$8B,$00
	db "SOUND",$00 : dw $0000

DATA_03CECC:
	db $01,$84,$E9,$00
	db "MUSIC:",$00 : dw DATA_03CED9
DATA_03CED9:
	db $01,$84,$29,$01
	db "SOUND:",$00 : dw DATA_03CEE6
DATA_03CEE6:
	db $01,$84,$69,$01
	db "OFF",$00 : dw $0000

DATA_03CEF0:
	db $02,$84,$86,$00
	db "GAME SETUP",$00 : dw $0000

DATA_03CF01:
	db $01,$84,$46,$01
	db "LEVEL =",$00 : dw DATA_03CF0F
DATA_03CF0F:
	db $01,$84,$66,$01
	db "ARMOR =",$00 : dw DATA_03CF1D
DATA_03CF1D:
	db $01,$84,$86,$01
	db "SHOTS =",$00 : dw DATA_03CF2B
DATA_03CF2B:
	db $01,$84,$A6,$01
	db "SPEED =",$00 : dw DATA_03CF39
DATA_03CF39:
	db $01,$84,$C6,$01
	db "LIVES =",$00 : dw DATA_03CF47
DATA_03CF47:
	db $01,$84,$06,$02
	db "RELOAD=",$00 : dw $0000

DATA_03CF55:
	dw $0000,$0004,$0008,$000C,$0010,$0014,$0018,$001C
	dw $0020,$0024,$0028,$002C,$0030,$0034,$0038,$003C
	dw $0040,$003C,$0038,$0034,$0030,$002C,$0028,$0024
	dw $0020,$001C,$0018,$0014,$0010,$000C,$0008,$0004
	dw $FFFF,$FFFC,$FFF8,$FFF4,$FFF0,$FFEC,$FFE8,$FFE4
	dw $FFE0,$FFDC,$FFD8,$FFD4,$FFD0,$FFCC,$FFC8,$FFC4
	dw $FFC0,$FFC4,$FFC8,$FFCC,$FFD0,$FFD4,$FFD8,$FFDC
	dw $FFE0,$FFE4,$FFE8,$FFEC,$FFF0,$FFF4,$FFF8,$FFFC

DATA_03CFD5:
	dw $0009,$000A,$000C,$0011,$0012,$0014,$0021,$0022
	dw $0024,$0001,$0002,$0004,$0008,$0010,$0020

DATA_03CFF3:
	dw $0000,$FF00,$00FF,$FFFF,$00FF,$FF00,$0000,$FF00
	dw $FFFF,$FF00,$00FF,$0000,$FF00,$0000,$00FF

DATA_03D011:
	db $03,$84,$45,$00
	db "CHOOSE YOUR",$00 : dw DATA_03D023
DATA_03D023:
	db $03,$84,$65,$00
	db " FACE/NAME ",$00 : dw $0000

DATA_03D035:
	db $03,$84,$65,$00
	db "CHOOSE YOUR",$00 : dw DATA_03D047
DATA_03D047:
	db $03,$84,$8C,$00
	db "NAME",$00 : dw $0000

DATA_03D052:
	db $04,$04,$81,$01
	db "PLAYER-1:",$00 : dw $0000

DATA_03D062:
	db $04,$04,$01,$02
	db "PLAYER-2:",$00 : dw $0000

DATA_03D072:
	db $04,$80,"          ",$00 : dw $0000

DATA_03D081:
	db $04,$80,$5E,$00
	dw $0000

DATA_03D087:
	db $04,$80,$5F,$00
	dw $0000

DATA_03D08D:
	db "YES",$00

DATA_03D091:
	db "NO ",$00

DATA_03D095:
	db $2D,$2D,$2D,$00

DATA_03D099:
	db $83,$2D,$2D,$2D,$00

DATA_03D09E:
	db $2D,$7E,$2D,$2D,$00

DATA_03D0A3:
	db $2D,$2D,$5E,$2D,$00

DATA_03D0A8:
	db $2D,$2D,$2D,$85,$00

UNK_03D0AD:
	dw DATA_03D099,DATA_03D09E,DATA_03D0A3,DATA_03D0A8

DATA_03D0B5:
	db $02,$84,$8C,$00
	db "MAZE",$00 : dw $0000

DATA_03D0C0:
	db $01,$84,$80,$01
	db "                ",$00 : dw $0000

DATA_03D0D7:
	dw $FFF0 : db CODE_02C1BE>>16 : dw CODE_02C1BE
	dw $FFF2
	dw $0800 : db CODE_02C25F>>16 : dw CODE_02C25F
	dw $0400 : db CODE_02C279>>16 : dw CODE_02C279
	dw $0100 : db CODE_02C25F>>16 : dw CODE_02C25F
	dw $0200 : db CODE_02C279>>16 : dw CODE_02C279
	dw $2000 : db CODE_02C242>>16 : dw CODE_02C242
	dw $0080 : db CODE_02C28F>>16 : dw CODE_02C28F
	dw $4000 : db CODE_02C29B>>16 : dw CODE_02C29B
	dw $1000 : db CODE_02C28F>>16 : dw CODE_02C28F
	dw $FFF3

DATA_03D108:
	db $03,$84,$C0,$01
	db " NO OPPONENTS!! ",$00 : dw $0000

DATA_03D11F:
	db $03,$04,$A5,$01
	db "ONLY ONE TEAM EXISTS!!",$00 : dw DATA_03D13C
DATA_03D13C:
	db $03,$04,$CA,$01
	db "Press START",$00 : dw $0000

DATA_03D14E:
	dd DATA_0BB4C9
	dd DATA_0BD659
	dd DATA_088000
	dd DATA_08A1A2
	dd DATA_08CF4C
	dd DATA_098000
	dd DATA_09AB98

DATA_03D16A:
	db $02,$84,$C4,$01
	db "SOUND FX:    ",$00 : dw DATA_03D17E
DATA_03D17E:
	db $01,$04,$88,$02
	db "PRESS A TO PLAY!",$00 : dw $0000

DATA_03D195:
	dw $0001,$0004,$0010,$0040,$0100,$0400,$1000,$4000

DATA_03D1A5:
	dw $0002,$0008,$0020,$0080,$0200,$0800,$2000,$8000

DATA_03D1B5:
	dw $0019,$0019,$0019,$0019,$0032,$0032,$0032,$0032
	dw $0064,$0064,$0064,$0064,$00C8,$00C8,$00C8,$00C8
	dw $01F4

DATA_03D1D7:
	dw $0A4B,$0104,$0A63,$0108,$0A7B,$010C,$0A93,$0140

DATA_03D1E7:
	dw $03C4,$0104,$1BC4,$0108,$33C4,$010C,$4BC4,$0140

DATA_03D1F7:
	dw $73C4,$0104,$8BC4,$0108,$A3C4,$010C,$BBC4,$0140

DATA_03D207:
	dw $AE57,$0180,$AE67,$0180,$AE77,$0180,$AE87,$0180
	dw $AE97,$0180,$BE57,$0180,$BE67,$0180,$BE77,$0180
	dw $BE87,$0180,$BE97,$0180

DATA_03D22F:
	dw $160B,$0180,$161C,$0180,$260B,$0180,$261C,$0180
	dw $360B,$0180,$361C,$0180,$460B,$0180,$461C,$0180
	dw $560B,$0180,$561C,$0180

DATA_03D257:
	dw $7E0B,$0180,$7E1C,$0180,$8E0B,$0180,$8E1C,$0180
	dw $9E0B,$0180,$9E1C,$0180,$AE0B,$0180,$AE1C,$0180
	dw $BE0B,$0180,$BE1C,$0180

DATA_03D27F:
	db "SAYS:",$00

DATA_03D285:
	db $03,$04,$81,$01
	db "HAVE A NICE DAY!",$00 : dw $0000

DATA_03D29C:
	db $03,$04,$8C,$01
	db "WINS!",$00 : dw $0000

DATA_03D2A8:
	db $03,$04,$85,$01
	db "YOU WIN!",$00 : dw $0000

DATA_03D2B7:
	db $03,$04,$82,$01
	db "YOUR TEAM WINS!",$00 : dw $0000

DATA_03D2CD:
	db $03,$04,$82,$01
	db "SMILOIDS  WIN!",$00 : dw $0000

DATA_03D2E2:
	db $03,$04,$85,$01
	db "YOU LOSE",$00 : dw $0000

DATA_03D2F1:
	db $03,$04,$81,$01
	db "YOUR TEAM LOSES!",$00 : dw $0000

DATA_03D308:
	db $03,$84,$A5,$00
	db "GAME",$00 : dw DATA_03D313
DATA_03D313:
	db $03,$84,$05,$01
	db "OVER",$00 : dw $0000

DATA_03D31E:
	dw DATA_03D326,DATA_03D328,DATA_03D32A,DATA_03D32C

DATA_03D326:
	db $83,$00

DATA_03D328:
	db $7E,$00

DATA_03D32A:
	db $5E,$00

DATA_03D32C:
	db $85,$00

DATA_03D32E:
	dw $0000,$0842,$18C6,$2108,$294A,$318C,$39CE,$7FFF

DATA_03D33E:
	db $01,$04,$63,$00
	db "      FACEBALL 2000_      ",$00 : dw DATA_03D35F
DATA_03D35F:
	db $04,$04,$A3,$00
	db "     COPYRIGHT ^ 1992     ",$00 : dw DATA_03D380
DATA_03D380:
	db $04,$04,$C3,$00
	db "    XANTH SOFTWARE F/X    ",$00 : dw DATA_03D3A1
DATA_03D3A1:
	db $04,$04,$E3,$00
	db "   ALL RIGHTS  RESERVED   ",$00 : dw DATA_03D3C2
DATA_03D3C2:
	db $04,$04,$43,$01
	db " ORIGINAL GAME AND DESIGN ",$00 : dw DATA_03D3E3
DATA_03D3E3:
	db $04,$04,$63,$01
	db "     COPYRIGHT ^ 1987     ",$00 : dw DATA_03D404
DATA_03D404:
	db $04,$04,$C3,$01
	db "  COPYRIGHT ^ 1991,1992   ",$00 : dw DATA_03D425
DATA_03D425:
	db $04,$04,$E3,$01
	db "  BULLET-PROOF SOFTWARE   ",$00 : dw DATA_03D446
DATA_03D446:
	db $04,$04,$03,$02
	db "(USED UNDER AUTHORIZATION)",$00 : dw DATA_03D467
DATA_03D467:
	db $04,$04,$43,$02
	db "       DISTRIBUTED        ",$00 : dw DATA_03D488
DATA_03D488:
	db $04,$04,$63,$02
	db "    UNDER LICENSE FROM    ",$00 : dw DATA_03D4A9
DATA_03D4A9:
	db $04,$04,$83,$02
	db " XANTH SOFTWARE F/X, INC. ",$00 : dw DATA_03D4CA
DATA_03D4CA:
	db $02,$04,$03,$03
	db "   LICENSED BY NINTENDO   ",$00 : dw $0000

DATA_03D4EB:
	dw $FFF0 : db CODE_02D1FE>>16 : dw CODE_02D1FE
	dw $FFF1 : dw $0004,$0011
	dw $0800 : db CODE_02D21E>>16 : dw CODE_02D21E
	dw $0400 : db CODE_02D223>>16 : dw CODE_02D223
	dw $2000 : db CODE_02D228>>16 : dw CODE_02D228
	dw $FFF1 : dw $0004,$0012
	dw $0800 : db CODE_02D21E>>16 : dw CODE_02D21E
	dw $0400 : db CODE_02D223>>16 : dw CODE_02D223
	dw $2000 : db CODE_02D228>>16 : dw CODE_02D228
	dw $FFF2
	dw $0080 : db CODE_02D208>>16 : dw CODE_02D208
	dw $1000 : db CODE_02D208>>16 : dw CODE_02D208
	dw $FFF3

DATA_03D528:
	db $01,$84,$27,$02
	db "ONE PLAYER",$00 : dw DATA_03D539
DATA_03D539:
	db $01,$84,$47,$02
	db "TWO PLAYER",$00 : dw $0000

DATA_03D54A:
	db $04,$04,$04,$03
	db "LICENSED TO BULLET-PROOF",$00 : dw DATA_03D569
DATA_03D569:
	db $04,$04,$21,$03
	db "SOFTWARE BY XANTH SOFTWARE F/X",$00 : dw DATA_03D58E
DATA_03D58E:
	db $02,$04,$46,$03
	db "LICENSED BY NINTENDO",$00 : dw $0000

DATA_03D5A9:
	db "Level #",$00

DATA_03D5B1:
	db $00,$01,$01,$00,$02,$08,$04,$01,$01,$00,$00,$01,$04,$01,$02,$08
	db $FF,$00,$00,$01,$04,$01,$08,$02,$00,$01,$FF,$00,$08,$02,$04,$01
	db $00,$FF,$FF,$00,$08,$02,$01,$04,$FF,$00,$00,$FF,$01,$04,$08,$02
	db $01,$00,$00,$FF,$01,$04,$02,$08,$00,$FF,$01,$00,$02,$08,$01,$04

DATA_03D5F1:
	dw CODE_00D90F-$01
	dw CODE_00D8CA-$01
	dw CODE_00D887-$01
	dw CODE_00D846-$01
	dw CODE_00D803-$01
	dw CODE_00D7BE-$01
	dw CODE_00D777-$01
	dw CODE_00D72E-$01

DATA_03D601:
	db $80,$40,$20,$10,$08,$04,$02,$01,$80,$40,$20,$10,$08,$04,$02,$01
	db $80,$40,$20,$10,$08,$04,$02,$01,$80,$40,$20,$10,$08,$04,$02,$01
	db $80,$40,$20,$10,$08,$04,$02,$01,$80,$40,$20,$10,$08,$04,$02,$01
	db $80,$40,$20,$10,$08,$04,$02,$01,$80,$40,$20,$10,$08,$04,$02,$01
	db $80,$40,$20,$10,$08,$04,$02,$01,$80,$40,$20,$10,$08,$04,$02,$01
	db $80,$40,$20,$10,$08,$04,$02,$01,$80,$40,$20,$10,$08,$04,$02,$01
	db $80,$40,$20,$10,$08,$04,$02,$01,$80,$40,$20,$10,$08,$04,$02,$01
	db $80,$40,$20,$10,$08,$04,$02,$01,$80,$40,$20,$10,$08,$04,$02,$01
	db $80,$40,$20,$10,$08,$04,$02,$01,$80,$40,$20,$10,$08,$04,$02,$01

	%FREE_BYTES($03D691, 10607, $FF)
%BANK_END(<EndBank>)
endmacro

;#############################################################################################################
;#############################################################################################################

macro FB2000Bank04Macros(StartBank, EndBank)
%BANK_START(<StartBank>)

DATA_048000:
	incbin "Palettes/Layer2_MasterControl.bin"
	db $FF

DATA_048041:
	incbin "Graphics/GFX_Layer2_MasterControl.rnc"

DATA_0495F9:
	incbin "Graphics/GFX_Layer3_HUDFontAndIndicators.rnc"

DATA_049AF5:
	incbin "Graphics/GFX_Layer3_WideFont.rnc"

DATA_049E9C:
	incbin "Graphics/GFX_Layer3_1PlayerArenaHUD.bin"

DATA_04A2FC:
	incbin "Tilemaps/Layer3_1PlayerArenaHUD.bin"

DATA_04A9FC:
	incbin "Palettes/Layer3_1PlayerArenaHUD.bin"

DATA_04AA3C:
	incbin "Graphics/GFX_Layer3_2PlayerArenaHUD.bin"

DATA_04AD4C:
	incbin "Tilemaps/Layer3_2PlayerArenaHUD.bin"

DATA_04B44C:
	incbin "Palettes/Layer3_2PlayerArenaHUD.bin"

DATA_04B48C:
	incbin "Palettes/Layer1_TitleScreenLogo.bin"
	db $FF

DATA_04B4AD:
	incbin "Graphics/GFX_Layer1_TitleScreenLogo.rnc"

DATA_04B9F9:
	incbin "Palettes/Layer2_TitleScreenLogo.bin"
	db $FF

DATA_04BA1A:
	incbin "Graphics/GFX_Layer2_TitleScreenLogo.rnc"

DATA_04D8CD:
	incbin "Palettes/Layer2_BlueCatSplashScreen.bin"
	db $FF

DATA_04D8EE:
	incbin "Graphics/GFX_Layer2_BlueCatSplashScreen.rnc"

	%FREE_BYTES($04E4F4, 6924, $FF)
%BANK_END(<EndBank>)
endmacro

;#############################################################################################################
;###################################################1aba##########################################################

macro FB2000Bank05Macros(StartBank, EndBank)
%BANK_START(<StartBank>)

DATA_058000:
	incbin "Palettes/Mode7_EndingSmileyFace.bin"
	db $FF

DATA_058201:
	incbin "Graphics/GFX_Mode7_EndingSmileyFace.rnc"

DATA_0597AD:
	incbin "Palettes/Mode7_ZoomInTitleScreen.bin"
	db $FF

DATA_0599AE:
	incbin "Graphics/GFX_Mode7_ZoomInTitleScreen.rnc"

DATA_05B785:
	incbin "Graphics/GFX_Layer3_1PlayerCyberzoneHUD.bin"

DATA_05BCF5:
	incbin "Tilemaps/Layer3_1PlayerCyberzoneHUD.bin"

DATA_05C3F5:
	incbin "Palettes/Layer3_1PlayerCyberzoneHUD.bin"

DATA_05C435:
	incbin "Graphics/GFX_Layer3_2PlayerCyberzoneHUD.bin"

DATA_05C7F5:
	incbin "Tilemaps/Layer3_2PlayerCyberzoneHUD.bin"

DATA_05CEF5:
	incbin "Palettes/Layer3_2PlayerCyberzoneHUD.bin"

DATA_05CF35:
	incbin "Graphics/GFX_Sprite_HUDIcons.bin"

	%FREE_BYTES($05E735, 6347, $FF)
%BANK_END(<EndBank>)
endmacro

;#############################################################################################################
;#############################################################################################################

macro FB2000Bank06Macros(StartBank, EndBank)
%BANK_START(<StartBank>)

DATA_068000:
	dw $0004,$0018,DATA_06800C,DATA_06818C,DATA_06830C,DATA_06848C

DATA_06800C:
	incbin "Textures/DATA_06800C.bin"

DATA_06818C:
	incbin "Textures/DATA_06818C.bin"

DATA_06830C:
	incbin "Textures/DATA_06830C.bin"

DATA_06848C:
	incbin "Textures/DATA_06848C.bin"

DATA_06860C:
	dw $0004,$0018,DATA_068618,DATA_068798,DATA_068918,DATA_068A98

DATA_068618:
	incbin "Textures/DATA_068618.bin"

DATA_068798:
	incbin "Textures/DATA_068798.bin"

DATA_068918:
	incbin "Textures/DATA_068918.bin"

DATA_068A98:
	incbin "Textures/DATA_068A98.bin"

DATA_068C18:
	dw $0004,$0018,DATA_068C24,DATA_068DA4,DATA_068F24,DATA_0690A4

DATA_068C24:
	incbin "Textures/DATA_068C24.bin"

DATA_068DA4:
	incbin "Textures/DATA_068DA4.bin"

DATA_068F24:
	incbin "Textures/DATA_068F24.bin"

DATA_0690A4:
	incbin "Textures/DATA_0690A4.bin"

DATA_069224:
	dw $0004,$0018,DATA_069230,DATA_0693B0,DATA_069530,DATA_0696B0

DATA_069230:
	incbin "Textures/DATA_069230.bin"

DATA_0693B0:
	incbin "Textures/DATA_0693B0.bin"

DATA_069530:
	incbin "Textures/DATA_069530.bin"

DATA_0696B0:
	incbin "Textures/DATA_0696B0.bin"

DATA_069E3C:
	dw $0004,$0018,DATA_069E48,DATA_069FC8,DATA_06A148,DATA_06A2C8

DATA_069E48:
	incbin "Textures/DATA_069E48.bin"

DATA_069FC8:
	incbin "Textures/DATA_069FC8.bin"

DATA_06A148:
	incbin "Textures/DATA_06A148.bin"

DATA_06A2C8:
	incbin "Textures/DATA_06A2C8.bin"

DATA_06A448:
	dw $0004,$0018,DATA_06A454,DATA_06A5D4,DATA_06A754,DATA_06A8D4

DATA_06A454:
	incbin "Textures/DATA_06A454.bin"

DATA_06A5D4:
	incbin "Textures/DATA_06A5D4.bin"

DATA_06A754:
	incbin "Textures/DATA_06A754.bin"

DATA_06A8D4:
	incbin "Textures/DATA_06A8D4.bin"

DATA_06AA54:
	dw $0004,$0018,DATA_06AA60,DATA_06ABE0,DATA_06AD60,DATA_06AEE0

DATA_06AA60:
	incbin "Textures/DATA_06AA60.bin"

DATA_06ABE0:
	incbin "Textures/DATA_06ABE0.bin"

DATA_06AD60:
	incbin "Textures/DATA_06AD60.bin"

DATA_06AEE0:
	incbin "Textures/DATA_06AEE0.bin"

DATA_06B060:
	dw $0004,$0018,DATA_06B06C,DATA_06B1EC,DATA_06B36C,DATA_06B4EC

DATA_06B06C:
	incbin "Textures/DATA_06B06C.bin"

DATA_06B1EC:
	incbin "Textures/DATA_06B1EC.bin"

DATA_06B36C:
	incbin "Textures/DATA_06B36C.bin"

DATA_06B4EC:
	incbin "Textures/DATA_06B4EC.bin"

DATA_06B66C:
	dw $0004,$0018,DATA_06B678,DATA_06B7F8,DATA_06B978,DATA_06BAF8

DATA_06B678:
	incbin "Textures/DATA_06B678.bin"

DATA_06B7F8:
	incbin "Textures/DATA_06B7F8.bin"

DATA_06B978:
	incbin "Textures/DATA_06B978.bin"

DATA_06BAF8:
	incbin "Textures/DATA_06BAF8.bin"

DATA_06BC78:
	dw $0004,$0018,DATA_06BC84,DATA_06BE04,DATA_06BF84,DATA_06C104

DATA_06BC84:
	incbin "Textures/DATA_06BC84.bin"

DATA_06BE04:
	incbin "Textures/DATA_06BE04.bin"

DATA_06BF84:
	incbin "Textures/DATA_06BF84.bin"

DATA_06C104:
	incbin "Textures/DATA_06C104.bin"

DATA_06C284:
	dw $0004,$0018,DATA_06C290,DATA_06C410,DATA_06C590,DATA_06C710

DATA_06C290:
	incbin "Textures/DATA_06C290.bin"

DATA_06C410:
	incbin "Textures/DATA_06C410.bin"

DATA_06C590:
	incbin "Textures/DATA_06C590.bin"

DATA_06C710:
	incbin "Textures/DATA_06C710.bin"

DATA_06C890:
	dw $0004,$0018,DATA_06C89C,DATA_06CA1C,DATA_06CB9C,DATA_06CD1C

DATA_06C89C:
	incbin "Textures/DATA_06C89C.bin"

DATA_06CA1C:
	incbin "Textures/DATA_06CA1C.bin"

DATA_06CB9C:
	incbin "Textures/DATA_06CB9C.bin"

DATA_06CD1C:
	incbin "Textures/DATA_06CD1C.bin"

DATA_06CE9C:
	dw $0004,$0018,DATA_06CEA8,DATA_06D028,DATA_06D1A8,DATA_06D328

DATA_06CEA8:
	incbin "Textures/DATA_06CEA8.bin"

DATA_06D028:
	incbin "Textures/DATA_06D028.bin"

DATA_06D1A8:
	incbin "Textures/DATA_06D1A8.bin"

DATA_06D328:
	incbin "Textures/DATA_06D328.bin"

DATA_06D4A8:
	dw $0004,$0018,DATA_06D4B4,DATA_06D634,DATA_06D7B4,DATA_06D934

DATA_06D4B4:
	incbin "Textures/DATA_06D4B4.bin"

DATA_06D634:
	incbin "Textures/DATA_06D634.bin"

DATA_06D7B4:
	incbin "Textures/DATA_06D7B4.bin"

DATA_06D934:
	incbin "Textures/DATA_06D934.bin"

DATA_06DAB4:
	dw $0004,$0018,DATA_06DAC0,DATA_06DC40,DATA_06DDC0,DATA_06DF40

DATA_06DAC0:
	incbin "Textures/DATA_06DAC0.bin"

DATA_06DC40:
	incbin "Textures/DATA_06DC40.bin"

DATA_06DDC0:
	incbin "Textures/DATA_06DDC0.bin"

DATA_06DF40:
	incbin "Textures/DATA_06DF40.bin"

	%FREE_BYTES($06E0C0, 8000, $FF)
%BANK_END(<EndBank>)
endmacro

;#############################################################################################################
;#############################################################################################################

macro FB2000Bank07Macros(StartBank, EndBank)
%BANK_START(<StartBank>)

	%FREE_BYTES($078000, 32768, $FF)
%BANK_END(<EndBank>)
endmacro

;#############################################################################################################
;#############################################################################################################

macro FB2000Bank08Macros(StartBank, EndBank)
%BANK_START(<StartBank>)

DATA_088000:
	incbin "SPC700/Music/AsteroidZone.bin"

DATA_08A1A2:
	incbin "SPC700/Music/IceZone.bin"

DATA_08CF4C:
	incbin "SPC700/Music/SpaceZone.bin"

DATA_08EC0A:
	incbin "SPC700/Music/TitleScreen.rnc"

	%FREE_BYTES($08F45A, 2982, $FF)
%BANK_END(<EndBank>)
endmacro

;#############################################################################################################
;#############################################################################################################

macro FB2000Bank09Macros(StartBank, EndBank)
%BANK_START(<StartBank>)

DATA_098000:
	incbin "SPC700/Music/MarsZone.bin"

DATA_09AB98:
	incbin "SPC700/Music/StarZone.bin"

DATA_09D405:
	incbin "SPC700/Engine.bin"

	%FREE_BYTES($09E4CF, 6961, $FF)
%BANK_END(<EndBank>)
endmacro

;#############################################################################################################
;#############################################################################################################

macro FB2000Bank0AMacros(StartBank, EndBank)
%BANK_START(<StartBank>)

DATA_0A8000:
	incbin "SPC700/GlobalSamples.bin":0-(($010000-DATA_0A8000)&$00FFFF)
.End:

%BANK_END(<EndBank>)
endmacro

;#############################################################################################################
;#############################################################################################################

macro FB2000Bank0BMacros(StartBank, EndBank)
%BANK_START(<StartBank>)

	incbin "SPC700/GlobalSamples.bin":(DATA_0A8000_End-DATA_0A8000)-

	%FREE_BYTES($0BB4C8, 1, $FF)

DATA_0BB4C9:
	incbin "SPC700/Music/CityZone.bin"

DATA_0BD659:
	incbin "SPC700/Music/DesertZone.bin"

DATA_0BFA47:
	incbin "SPC700/InitializeSPC700.bin"

	%FREE_BYTES($0BFB21, 1247, $FF)
%BANK_END(<EndBank>)
endmacro

;#############################################################################################################
;#############################################################################################################

macro FB2000Bank0CMacros(StartBank, EndBank)
%BANK_START(<StartBank>)

DATA_0C8000:
	db $00,$00,$10,$00,$00,$00,$10,$00,$00,$00,$10,$00,$00,$00,$10,$00
	db $00,$00,$10,$00,$00,$00,$10,$00,$00,$00,$10,$00,$00,$00,$10,$00
	db $00,$00,$10,$00,$00,$00,$10,$00,$00,$00,$10,$00,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$10,$00,$00
	db $00,$00,$10,$00,$00,$00,$10,$00,$00,$00,$10,$00,$00,$00,$10,$00
	db $00,$00,$10,$00,$00,$00,$10,$00,$00,$00,$10,$00,$00,$00,$10,$00
	db $00,$00,$10,$00,$00,$00,$10,$00,$00,$00,$10,$00,$00,$00,$10,$00
	db $00,$00,$10,$00,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$10,$00,$00,$00,$00,$10,$00,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$10,$00,$00
	db $00,$00,$10,$00,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$10,$00,$00,$00,$00,$10,$00,$00,$00,$10,$00
	db $00,$00,$10,$00,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$10,$00,$00,$00,$00,$10,$00,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$10,$00,$00
	db $00,$00,$10,$00,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$10,$00,$00,$00,$00,$10,$00,$00,$00,$10,$00
	db $00,$00,$10,$00,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$10,$00,$00,$00,$00,$10,$00,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$10,$00,$00
	db $00,$00,$10,$00,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$10,$00,$00,$00,$00,$10,$00,$00,$00,$10,$00
	db $00,$00,$10,$00,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$10,$00,$00,$00,$00,$10,$00,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$10,$00,$00
	db $00,$00,$10,$00,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$10,$00,$00,$00,$00,$10,$00,$00,$00,$10,$00
	db $00,$00,$10,$00,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$10,$00,$00,$00,$00,$10,$00,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$10,$00,$00
	db $00,$00,$10,$00,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$10,$00,$00,$00,$00,$10,$00,$00,$00,$10,$00
	db $00,$00,$10,$00,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$10,$00,$00,$00,$00,$10,$00,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$10,$00,$00
	db $00,$00,$10,$00,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$10,$00,$00,$00,$00,$10,$00,$00,$00,$10,$00
	db $00,$00,$10,$00,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$10,$00,$00,$00,$00,$10,$00,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$10,$00,$00
	db $00,$00,$10,$00,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$10,$00,$00,$00,$00,$10,$00,$00,$00,$10,$00
	db $00,$00,$10,$00,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$10,$00,$00,$00,$00,$10,$00,$10,$10,$00,$00
	db $10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00
	db $10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00
	db $00,$00,$10,$00,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$10,$00,$00,$00,$00,$10,$00,$00,$00,$10,$00
	db $00,$00,$10,$00,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$10,$00,$00,$00,$00,$10,$00,$00,$00,$10,$00
	db $00,$00,$10,$00,$00,$00,$10,$00,$00,$00,$10,$00,$00,$00,$10,$00
	db $00,$00,$10,$00,$00,$00,$10,$00,$00,$00,$10,$00,$00,$00,$10,$00
	db $00,$00,$10,$00,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$10,$00,$00,$00,$00,$10,$00,$00,$00,$10,$00
	db $00,$00,$10,$00,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$10,$00,$00,$00,$00,$10,$00,$00,$00,$10,$00
	db $00,$00,$10,$00,$00,$00,$10,$00,$00,$00,$10,$00,$00,$00,$10,$00
	db $00,$00,$10,$00,$00,$00,$10,$00,$00,$00,$10,$00,$00,$00,$10,$00
	db $00,$00,$10,$00,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$10,$00,$00,$00,$00,$10,$00,$00,$00,$10,$00
	db $00,$00,$10,$00,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$10,$00,$00,$00,$00,$10,$00,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$10,$00,$00
	db $00,$00,$10,$00,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$10,$00,$00,$00,$00,$10,$00,$00,$00,$10,$00
	db $00,$00,$10,$00,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$10,$00,$00,$00,$00,$10,$00,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$10,$00,$00
	db $00,$00,$10,$00,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$10,$00,$00,$00,$00,$10,$00,$00,$00,$10,$00
	db $00,$00,$10,$00,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$10,$00,$00,$00,$00,$10,$00,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$10,$00,$00
	db $00,$00,$10,$00,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$10,$00,$00,$00,$00,$10,$00,$00,$00,$10,$00
	db $00,$00,$10,$00,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$10,$00,$00,$00,$00,$10,$00,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$10,$00,$00
	db $00,$00,$10,$00,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$10,$00,$00,$00,$00,$10,$00,$00,$00,$10,$00
	db $00,$00,$10,$00,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$10,$00,$00,$00,$00,$10,$00,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$10,$00,$00
	db $00,$00,$10,$00,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$10,$00,$00,$00,$00,$10,$00,$00,$00,$10,$00
	db $00,$00,$10,$00,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$10,$00,$00,$00,$00,$10,$00,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$10,$00,$00
	db $00,$00,$10,$00,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$10,$00,$00,$00,$00,$10,$00,$00,$00,$10,$00
	db $00,$00,$10,$00,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$10,$00,$00,$00,$00,$10,$00,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$10,$00,$00
	db $00,$00,$10,$00,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$10,$00,$00,$00,$00,$10,$00,$00,$00,$10,$00
	db $00,$00,$10,$00,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$10,$00,$00,$00,$00,$10,$00,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$10,$00,$00
	db $00,$00,$10,$00,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$10,$00,$00,$00,$00,$10,$00,$00,$00,$10,$00
	db $00,$00,$10,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00
	db $10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00
	db $10,$10,$00,$00,$10,$10,$00,$00,$00,$00,$10,$00,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$10,$00,$00
	db $00,$00,$10,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00
	db $10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00
	db $10,$10,$00,$00,$10,$10,$00,$00,$00,$00,$10,$00,$00,$00,$10,$00
	db $00,$00,$10,$00,$00,$00,$10,$00,$00,$00,$10,$00,$00,$00,$10,$00
	db $00,$00,$10,$00,$00,$00,$10,$00,$00,$00,$10,$00,$00,$00,$10,$00
	db $00,$00,$10,$00,$00,$00,$10,$00,$00,$00,$10,$00,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$10,$00,$00
	db $00,$00,$10,$00,$00,$00,$10,$00,$00,$00,$10,$00,$00,$00,$10,$00
	db $00,$00,$10,$00,$00,$00,$10,$00,$00,$00,$10,$00,$00,$00,$10,$00
	db $00,$00,$10,$00,$00,$00,$10,$00,$00,$00,$10,$00,$00,$00,$10,$00
	db $00,$00,$10,$00,$00,$00,$10,$00,$00,$00,$10,$00,$00,$00,$10,$00
	db $00,$00,$10,$00,$00,$00,$10,$00,$00,$00,$10,$00,$00,$00,$10,$00
	db $00,$00,$10,$00,$00,$00,$10,$00,$00,$00,$10,$00,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$10,$00,$00
	db $00,$00,$10,$00,$00,$00,$10,$00,$00,$00,$10,$00,$00,$00,$10,$00
	db $00,$00,$10,$00,$00,$00,$10,$00,$00,$00,$10,$00,$00,$00,$10,$00
	db $00,$00,$10,$00,$00,$00,$10,$00,$00,$00,$10,$00,$00,$00,$10,$00
	db $00,$00,$10,$00,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$10,$00,$00,$00,$00,$10,$00,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$10,$00,$00
	db $00,$00,$10,$00,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$10,$00,$00,$00,$00,$10,$00,$00,$00,$10,$00
	db $00,$00,$10,$00,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$10,$00,$00,$00,$00,$10,$00,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$10,$00,$00
	db $00,$00,$10,$00,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$10,$00,$00,$00,$00,$10,$00,$00,$00,$10,$00
	db $00,$00,$10,$00,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$10,$00,$00,$00,$00,$10,$00,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$10,$00,$00
	db $00,$00,$10,$00,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$10,$00,$00,$00,$00,$10,$00,$00,$00,$10,$00
	db $00,$00,$10,$00,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$10,$00,$00,$00,$00,$10,$00,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$10,$00,$00
	db $00,$00,$10,$00,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$10,$00,$00,$00,$00,$10,$00,$00,$00,$10,$00
	db $00,$00,$10,$00,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$10,$00,$00,$00,$00,$10,$00,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$10,$00,$00
	db $00,$00,$10,$00,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$10,$00,$00,$00,$00,$10,$00,$00,$00,$10,$00
	db $00,$00,$10,$00,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$10,$00,$00,$00,$00,$10,$00,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$10,$00,$00
	db $00,$00,$10,$00,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$10,$00,$00,$00,$00,$10,$00,$00,$00,$10,$00
	db $00,$00,$10,$00,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$10,$00,$00,$00,$00,$10,$00,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$10,$00,$00
	db $00,$00,$10,$00,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$10,$00,$00,$00,$00,$10,$00,$00,$00,$10,$00
	db $00,$00,$10,$00,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$10,$00,$00,$00,$00,$10,$00,$10,$10,$00,$00
	db $10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00
	db $10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00
	db $00,$00,$10,$00,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$10,$00,$00,$00,$00,$10,$00,$00,$00,$10,$00
	db $00,$00,$10,$00,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$10,$00,$00,$00,$00,$10,$00,$00,$00,$10,$00
	db $00,$00,$10,$00,$00,$00,$10,$00,$00,$00,$10,$00,$00,$00,$10,$00
	db $00,$00,$10,$00,$00,$00,$10,$00,$00,$00,$10,$00,$00,$00,$10,$00
	db $00,$00,$10,$00,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$10,$00,$00,$00,$00,$10,$00,$00,$00,$10,$00
	db $00,$00,$10,$00,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$10,$00,$00,$00,$00,$10,$00,$00,$00,$10,$00
	db $00,$00,$10,$00,$00,$00,$10,$00,$00,$00,$10,$00,$00,$00,$10,$00
	db $00,$00,$10,$00,$00,$00,$10,$00,$00,$00,$10,$00,$00,$00,$10,$00
	db $00,$00,$10,$00,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$10,$00,$00,$00,$00,$10,$00,$00,$00,$10,$00
	db $00,$00,$10,$00,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$10,$00,$00,$00,$00,$10,$00,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$10,$00,$00
	db $00,$00,$10,$00,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$10,$00,$00,$00,$00,$10,$00,$00,$00,$10,$00
	db $00,$00,$10,$00,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$10,$00,$00,$00,$00,$10,$00,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$10,$00,$00
	db $00,$00,$10,$00,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$10,$00,$00,$00,$00,$10,$00,$00,$00,$10,$00
	db $00,$00,$10,$00,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$10,$00,$00,$00,$00,$10,$00,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$10,$00,$00
	db $00,$00,$10,$00,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$10,$00,$00,$00,$00,$10,$00,$00,$00,$10,$00
	db $00,$00,$10,$00,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$10,$00,$00,$00,$00,$10,$00,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$10,$00,$00
	db $00,$00,$10,$00,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$10,$00,$00,$00,$00,$10,$00,$00,$00,$10,$00
	db $00,$00,$10,$00,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$10,$00,$00,$00,$00,$10,$00,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$10,$00,$00
	db $00,$00,$10,$00,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$10,$00,$00,$00,$00,$10,$00,$00,$00,$10,$00
	db $00,$00,$10,$00,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$10,$00,$00,$00,$00,$10,$00,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$10,$00,$00
	db $00,$00,$10,$00,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$10,$00,$00,$00,$00,$10,$00,$00,$00,$10,$00
	db $00,$00,$10,$00,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$10,$00,$00,$00,$00,$10,$00,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$10,$00,$00
	db $00,$00,$10,$00,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$10,$00,$00,$00,$00,$10,$00,$00,$00,$10,$00
	db $00,$00,$10,$00,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$10,$00,$00,$00,$00,$10,$00,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$10,$00,$00
	db $00,$00,$10,$00,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$10,$00,$00,$00,$00,$10,$00,$00,$00,$10,$00
	db $00,$00,$10,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00
	db $10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00
	db $10,$10,$00,$00,$10,$10,$00,$00,$00,$00,$10,$00,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$10,$00,$00
	db $00,$00,$10,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00
	db $10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00
	db $10,$10,$00,$00,$10,$10,$00,$00,$00,$00,$10,$00,$00,$00,$10,$00
	db $00,$00,$10,$00,$00,$00,$10,$00,$00,$00,$10,$00,$00,$00,$10,$00
	db $00,$00,$10,$00,$00,$00,$10,$00,$00,$00,$10,$00,$00,$00,$10,$00
	db $00,$00,$10,$00,$00,$00,$10,$00,$00,$00,$10,$00,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$10,$00,$00
	db $00,$00,$10,$00,$00,$00,$10,$00,$00,$00,$10,$00,$00,$00,$10,$00
	db $00,$00,$10,$00,$00,$00,$10,$00,$00,$00,$10,$00,$00,$00,$10,$00
	db $00,$00,$10,$00,$00,$00,$10,$00,$00,$00,$10,$00,$00,$00,$10,$00
	db $00,$00,$10,$00,$00,$00,$10,$00,$00,$00,$10,$00,$00,$00,$10,$00
	db $00,$00,$10,$00,$00,$00,$10,$00,$00,$00,$10,$00,$00,$00,$10,$00
	db $00,$00,$10,$00,$00,$00,$10,$00,$00,$00,$10,$00,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$10,$00,$00
	db $00,$00,$10,$00,$00,$00,$10,$00,$00,$00,$10,$00,$00,$00,$10,$00
	db $00,$00,$10,$00,$00,$00,$10,$00,$00,$00,$10,$00,$00,$00,$10,$00
	db $00,$00,$10,$00,$00,$00,$10,$00,$00,$00,$10,$00,$00,$00,$10,$00
	db $00,$00,$10,$00,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$10,$00,$00,$00,$00,$10,$00,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$10,$00,$00
	db $00,$00,$10,$00,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$10,$00,$00,$00,$00,$10,$00,$00,$00,$10,$00
	db $00,$00,$10,$00,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$10,$00,$00,$00,$00,$10,$00,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$10,$00,$00
	db $00,$00,$10,$00,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$10,$00,$00,$00,$00,$10,$00,$00,$00,$10,$00
	db $00,$00,$10,$00,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$10,$00,$00,$00,$00,$10,$00,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$10,$00,$00
	db $00,$00,$10,$00,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$10,$00,$00,$00,$00,$10,$00,$00,$00,$10,$00
	db $00,$00,$10,$00,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$10,$00,$00,$00,$00,$10,$00,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$10,$00,$00
	db $00,$00,$10,$00,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$10,$00,$00,$00,$00,$10,$00,$00,$00,$10,$00
	db $00,$00,$10,$00,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$10,$00,$00,$00,$00,$10,$00,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$10,$00,$00
	db $00,$00,$10,$00,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$10,$00,$00,$00,$00,$10,$00,$00,$00,$10,$00
	db $00,$00,$10,$00,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$10,$00,$00,$00,$00,$10,$00,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$10,$00,$00
	db $00,$00,$10,$00,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$10,$00,$00,$00,$00,$10,$00,$00,$00,$10,$00
	db $00,$00,$10,$00,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$10,$00,$00,$00,$00,$10,$00,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$10,$00,$00
	db $00,$00,$10,$00,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$10,$00,$00,$00,$00,$10,$00,$00,$00,$10,$00
	db $00,$00,$10,$00,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$10,$00,$00,$00,$00,$10,$00,$10,$10,$00,$00
	db $10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00
	db $10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00
	db $00,$00,$10,$00,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$10,$00,$00,$00,$00,$10,$00,$00,$00,$10,$00
	db $00,$00,$10,$00,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$10,$00,$00,$00,$00,$10,$00,$00,$00,$10,$00
	db $00,$00,$10,$00,$00,$00,$10,$00,$00,$00,$10,$00,$00,$00,$10,$00
	db $00,$00,$10,$00,$00,$00,$10,$00,$00,$00,$10,$00,$00,$00,$10,$00
	db $00,$00,$10,$00,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$10,$00,$00,$00,$00,$10,$00,$00,$00,$10,$00
	db $00,$00,$10,$00,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$10,$00,$00,$00,$00,$10,$00,$00,$00,$10,$00
	db $00,$00,$10,$00,$00,$00,$10,$00,$00,$00,$10,$00,$00,$00,$10,$00
	db $00,$00,$10,$00,$00,$00,$10,$00,$00,$00,$10,$00,$00,$00,$10,$00
	db $00,$00,$10,$00,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$10,$00,$00,$00,$00,$10,$00,$00,$00,$10,$00
	db $00,$00,$10,$00,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$10,$00,$00,$00,$00,$10,$00,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$10,$00,$00
	db $00,$00,$10,$00,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$10,$00,$00,$00,$00,$10,$00,$00,$00,$10,$00
	db $00,$00,$10,$00,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$10,$00,$00,$00,$00,$10,$00,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$10,$00,$00
	db $00,$00,$10,$00,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$10,$00,$00,$00,$00,$10,$00,$00,$00,$10,$00
	db $00,$00,$10,$00,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$10,$00,$00,$00,$00,$10,$00,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$10,$00,$00
	db $00,$00,$10,$00,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$10,$00,$00,$00,$00,$10,$00,$00,$00,$10,$00
	db $00,$00,$10,$00,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$10,$00,$00,$00,$00,$10,$00,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$10,$00,$00
	db $00,$00,$10,$00,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$10,$00,$00,$00,$00,$10,$00,$00,$00,$10,$00
	db $00,$00,$10,$00,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$10,$00,$00,$00,$00,$10,$00,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$10,$00,$00
	db $00,$00,$10,$00,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$10,$00,$00,$00,$00,$10,$00,$00,$00,$10,$00
	db $00,$00,$10,$00,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$10,$00,$00,$00,$00,$10,$00,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$10,$00,$00
	db $00,$00,$10,$00,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$10,$00,$00,$00,$00,$10,$00,$00,$00,$10,$00
	db $00,$00,$10,$00,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$10,$00,$00,$00,$00,$10,$00,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$10,$00,$00
	db $00,$00,$10,$00,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$10,$00,$00,$00,$00,$10,$00,$00,$00,$10,$00
	db $00,$00,$10,$00,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$10,$00,$00,$00,$00,$10,$00,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$10,$00,$00
	db $00,$00,$10,$00,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$10,$00,$00,$00,$00,$10,$00,$00,$00,$10,$00
	db $00,$00,$10,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00
	db $10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00
	db $10,$10,$00,$00,$10,$10,$00,$00,$00,$00,$10,$00,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$10,$00,$00
	db $00,$00,$10,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00
	db $10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00
	db $10,$10,$00,$00,$10,$10,$00,$00,$00,$00,$10,$00,$00,$00,$10,$00
	db $00,$00,$10,$00,$00,$00,$10,$00,$00,$00,$10,$00,$00,$00,$10,$00
	db $00,$00,$10,$00,$00,$00,$10,$00,$00,$00,$10,$00,$00,$00,$10,$00
	db $00,$00,$10,$00,$00,$00,$10,$00,$00,$00,$10,$00,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$10,$00,$00
	db $00,$00,$10,$00,$00,$00,$10,$00,$00,$00,$10,$00,$00,$00,$10,$00
	db $00,$00,$10,$00,$00,$00,$10,$00,$00,$00,$10,$00,$00,$00,$10,$00
	db $00,$00,$10,$00,$00,$00,$10,$00,$00,$00,$10,$00,$00,$00,$10,$00
	db $00,$00,$10,$00,$00,$00,$10,$00,$00,$00,$10,$00,$00,$00,$10,$00
	db $00,$00,$10,$00,$00,$00,$10,$00,$00,$00,$10,$00,$00,$00,$10,$00
	db $00,$00,$10,$00,$00,$00,$10,$00,$00,$00,$10,$00,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10
	db $10,$00,$00,$10,$10,$00,$00,$10,$10,$00,$00,$10,$10,$10,$00,$00
	db $00,$00,$10,$00,$00,$00,$10,$00,$00,$00,$10,$00,$00,$00,$10,$00
	db $00,$00,$10,$00,$00,$00,$10,$00,$00,$00,$10,$00,$00,$00,$10,$00
	db $00,$00,$10,$00,$00,$00,$10,$00,$00,$00,$10,$00,$00,$00,$10,$00

	%FREE_BYTES($0CA000, 24576, $FF)
%BANK_END(<EndBank>)
endmacro

;#############################################################################################################
;#############################################################################################################

macro FB2000Bank0DMacros(StartBank, EndBank)
%BANK_START(<StartBank>)

DATA_0D8000:
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$03,$03,$03,$03,$03,$01,$01,$01
	db $01,$03,$03,$03,$03,$03,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$03,$03,$03,$03,$03,$01,$01,$01
	db $01,$03,$03,$03,$03,$03,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$03,$03,$03,$03,$03,$01,$01,$01
	db $01,$03,$03,$03,$03,$03,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$03,$03,$03,$03,$03,$01,$01,$01
	db $01,$03,$03,$03,$03,$03,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$03,$03,$03,$03,$03,$01,$01,$01
	db $01,$03,$03,$03,$03,$03,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$03,$03,$03,$03,$03,$01,$01,$01
	db $01,$03,$03,$03,$03,$03,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$03,$03,$03,$03,$03,$01,$01,$01
	db $01,$03,$03,$03,$03,$03,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$03,$03,$03,$03,$03,$01,$01,$01
	db $01,$03,$03,$03,$03,$03,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$03,$03,$03,$03,$03,$01,$01,$01
	db $01,$03,$03,$03,$03,$03,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$03,$03,$03,$03,$03,$01,$01,$01
	db $01,$03,$03,$03,$03,$03,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$03,$03,$03,$03,$03,$01,$01,$01
	db $01,$03,$03,$03,$03,$03,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$03,$03,$03,$03,$03,$01,$01,$01
	db $01,$03,$03,$03,$03,$03,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$03,$03,$03,$03,$03,$01,$01,$01
	db $01,$03,$03,$03,$03,$03,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$03,$03,$03,$03,$03,$01,$01,$01
	db $01,$03,$03,$03,$03,$03,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$03,$03,$03,$03,$03,$01,$01,$01
	db $01,$03,$03,$03,$03,$03,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$03,$03,$03,$03,$03,$01,$01,$01
	db $01,$03,$03,$03,$03,$03,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$03,$03,$03,$03,$03,$01,$01,$01
	db $01,$03,$03,$03,$03,$03,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$03,$03,$03,$03,$03,$01,$01,$01
	db $01,$03,$03,$03,$03,$03,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$03,$03,$03,$03,$03,$01,$01,$01
	db $01,$03,$03,$03,$03,$03,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$03,$03,$03,$03,$03,$01,$01,$01
	db $01,$03,$03,$03,$03,$03,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$03,$03,$03,$03,$03,$01,$01,$01
	db $01,$03,$03,$03,$03,$03,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$03,$03,$03,$03,$03,$01,$01,$01
	db $01,$03,$03,$03,$03,$03,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$03,$03,$03,$03,$03,$01,$01,$01
	db $01,$03,$03,$03,$03,$03,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$03,$03,$03,$03,$03,$01,$01,$01
	db $01,$03,$03,$03,$03,$03,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$03,$03,$03,$03,$03,$01,$01,$01
	db $01,$03,$03,$03,$03,$03,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$03,$03,$03,$03,$03,$01,$01,$01
	db $01,$03,$03,$03,$03,$03,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$03,$03,$03,$03,$03,$01,$01,$01
	db $01,$03,$03,$03,$03,$03,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$03,$03,$03,$03,$03,$01,$01,$01
	db $01,$03,$03,$03,$03,$03,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$03,$03,$03,$03,$03,$01,$01,$01
	db $01,$03,$03,$03,$03,$03,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$03,$03,$03,$03,$03,$01,$01,$01
	db $01,$03,$03,$03,$03,$03,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$03,$03,$03,$03,$03,$01,$01,$01
	db $01,$03,$03,$03,$03,$03,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$03,$03,$03,$03,$03,$01,$01,$01
	db $01,$03,$03,$03,$03,$03,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$03,$03,$03,$03,$03,$01,$01,$01
	db $01,$03,$03,$03,$03,$03,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$03,$03,$03,$03,$03,$01,$01,$01
	db $01,$03,$03,$03,$03,$03,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$03,$03,$03,$03,$03,$01,$01,$01
	db $01,$03,$03,$03,$03,$03,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$03,$03,$03,$03,$03,$01,$01,$01
	db $01,$03,$03,$03,$03,$03,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$03,$03,$03,$03,$03,$01,$01,$01
	db $01,$03,$03,$03,$03,$03,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$03,$03,$03,$03,$03,$01,$01,$01
	db $01,$03,$03,$03,$03,$03,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$03,$03,$03,$03,$03,$01,$01,$01
	db $01,$03,$03,$03,$03,$03,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$03,$03,$03,$03,$03,$01,$01,$01
	db $01,$03,$03,$03,$03,$03,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$03,$03,$03,$03,$03,$01,$01,$01
	db $01,$03,$03,$03,$03,$03,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$03,$03,$03,$03,$03,$01,$01,$01
	db $01,$03,$03,$03,$03,$03,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$03,$03,$03,$03,$03,$01,$01,$01
	db $01,$03,$03,$03,$03,$03,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$03,$03,$03,$03,$03,$01,$01,$01
	db $01,$03,$03,$03,$03,$03,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$03,$03,$03,$03,$03,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$03,$03,$03,$03,$03,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$03,$03,$03,$03,$03,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$03,$03,$03,$03,$03,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$03,$03,$03,$03,$03,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$03,$03,$03,$03,$03,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$03,$03,$03,$03,$03,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$03,$03,$03,$03,$03,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$03,$03,$03,$03,$03,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$03,$03,$03,$03,$03,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$03,$03,$03,$03,$03,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$03,$03,$03,$03,$03,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$03,$03,$03,$03,$03,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$03,$03,$03,$03,$03,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$03,$03,$03,$03,$03,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$03,$03,$03,$03,$03,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$03,$03,$03,$03,$03,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$03,$03,$03,$03,$03,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$03,$03,$03,$03,$03,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$03,$03,$03,$03,$03,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$03,$03,$03,$03,$03,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$03,$03,$03,$03,$03,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$03,$03,$03,$03,$03,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$03,$03,$03,$03,$03,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$03,$03,$03,$03,$03,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$03,$03,$03,$03,$03,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$03,$03,$03,$03,$03,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$03,$03,$03,$03,$03,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$03,$03,$03,$03,$03,$03,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$03,$03,$03,$03,$03,$03,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$03,$03,$03,$03,$03,$03,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$03,$03,$03,$03,$03,$03,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$03,$03,$03,$03,$03,$03,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$03,$03,$03,$03,$03,$03,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$03,$03,$03,$03,$03,$03,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$03,$03,$03,$03,$03,$03,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$03,$03,$03,$03,$03,$03,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$03,$03,$03,$03,$03,$03,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$03,$03,$03,$03,$03,$03,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$03,$03,$03,$03,$03,$03,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$03,$03,$03,$03,$03,$03,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$03,$03,$03,$03,$03,$03,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$03,$03,$03,$03,$03,$03,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$03,$03,$03,$03,$03,$03,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$03,$03,$03,$03,$03,$03,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$03,$03,$03,$03,$03,$03,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$03,$03,$03,$03,$03,$03,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$03,$03,$03,$03,$03,$03,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$03,$03,$03,$03,$03,$03,$03,$03,$01,$01,$01,$01
	db $01,$01,$03,$03,$03,$03,$03,$03,$03,$03,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$03,$03,$03,$03,$03,$03,$03,$03,$01,$01,$01,$01
	db $01,$01,$03,$03,$03,$03,$03,$03,$03,$03,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03
	db $03,$03,$03,$03,$03,$03,$03,$03,$03,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03
	db $03,$03,$03,$03,$03,$03,$03,$03,$03,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03
	db $03,$03,$03,$03,$03,$03,$03,$03,$03,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03
	db $03,$03,$03,$03,$03,$03,$03,$03,$03,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03
	db $03,$03,$03,$03,$03,$03,$03,$03,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03
	db $03,$03,$03,$03,$03,$03,$03,$03,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$03,$03,$03,$03,$03,$03,$03,$03,$03
	db $03,$03,$03,$03,$03,$03,$03,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$03,$03,$03,$03,$03,$03,$03,$03,$03
	db $03,$03,$03,$03,$03,$03,$03,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$03,$03,$03,$03,$03,$03,$03
	db $03,$03,$03,$03,$03,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$03,$03,$03,$03,$03,$03,$03
	db $03,$03,$03,$03,$03,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$03,$03,$03,$03,$03,$03,$03
	db $03,$03,$03,$03,$03,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$03,$03,$03,$03,$03,$03,$03
	db $03,$03,$03,$03,$03,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$03,$03,$03,$03
	db $03,$03,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$03,$03,$03,$03
	db $03,$03,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01

DATA_0DA000:
	dw DATA_0DA080,DATA_0DA080,DATA_0DA083,DATA_0DA088,DATA_0DA08F,DATA_0DA098,DATA_0DA0A3,DATA_0DA0B0
	dw DATA_0DA0BF,DATA_0DA0D0,DATA_0DA0E3,DATA_0DA0F8,DATA_0DA10F,DATA_0DA128,DATA_0DA143,DATA_0DA160
	dw DATA_0DA17F,DATA_0DA1A0,DATA_0DA1C3,DATA_0DA1E8,DATA_0DA20F,DATA_0DA238,DATA_0DA263,DATA_0DA290
	dw DATA_0DA2BF,DATA_0DA2F0,DATA_0DA323,DATA_0DA358,DATA_0DA38F,DATA_0DA3C8,DATA_0DA403,DATA_0DA440
	dw DATA_0DA47F,DATA_0DA4C0,DATA_0DA503,DATA_0DA548,DATA_0DA58F,DATA_0DA5D8,DATA_0DA623,DATA_0DA670
	dw DATA_0DA6BF,DATA_0DA710,DATA_0DA763,DATA_0DA7B8,DATA_0DA80F,DATA_0DA868,DATA_0DA8C3,DATA_0DA920
	dw DATA_0DA97F,DATA_0DA9E0,DATA_0DAA43,DATA_0DAAA8,DATA_0DAB0F,DATA_0DAB78,DATA_0DABE3,DATA_0DAC50
	dw DATA_0DACBF,DATA_0DAD30,DATA_0DADA3,DATA_0DAE18,DATA_0DAE8F,DATA_0DAF08,DATA_0DAF83,DATA_0DB000

DATA_0DA080:
	db $00,$10,$1F

DATA_0DA083:
	db $00,$0A,$10,$15,$1F

DATA_0DA088:
	db $00,$08,$0C,$10,$13,$17,$1F

DATA_0DA08F:
	db $00,$07,$0A,$0D,$10,$12,$15,$18,$1F

DATA_0DA098:
	db $00,$06,$09,$0B,$0E,$10,$11,$14,$16,$19,$1F

DATA_0DA0A3:
	db $00,$06,$08,$0A,$0C,$0E,$10,$11,$13,$15,$17,$19,$1F

DATA_0DA0B0:
	db $00,$05,$08,$09,$0B,$0D,$0E,$10,$11,$12,$14,$16,$17,$1A,$1F

DATA_0DA0BF:
	db $00,$05,$07,$09,$0A,$0C,$0D,$0E,$10,$11,$12,$13,$15,$16,$18,$1A
	db $1F

DATA_0DA0D0:
	db $00,$05,$07,$08,$0A,$0B,$0C,$0D,$0E,$10,$11,$12,$13,$14,$15,$17
	db $18,$1A,$1F

DATA_0DA0E3:
	db $00,$04,$06,$08,$09,$0A,$0B,$0C,$0E,$0F,$10,$10,$11,$13,$14,$15
	db $16,$17,$19,$1B,$1F

DATA_0DA0F8:
	db $00,$04,$06,$07,$09,$0A,$0B,$0C,$0D,$0E,$0F,$10,$10,$11,$12,$13
	db $14,$15,$16,$18,$19,$1B,$1F

DATA_0DA10F:
	db $00,$04,$06,$07,$08,$09,$0A,$0B,$0C,$0D,$0E,$0F,$10,$10,$11,$12
	db $13,$14,$15,$16,$17,$18,$19,$1B,$1F

DATA_0DA128:
	db $00,$04,$06,$07,$08,$09,$0A,$0B,$0C,$0C,$0D,$0E,$0F,$10,$10,$11
	db $12,$13,$13,$14,$15,$16,$17,$18,$19,$1B,$1F

DATA_0DA143:
	db $00,$04,$05,$07,$08,$09,$09,$0A,$0B,$0C,$0D,$0D,$0E,$0F,$10,$10
	db $11,$12,$12,$13,$14,$15,$16,$16,$17,$18,$1A,$1B,$1F

DATA_0DA160:
	db $00,$04,$05,$06,$07,$08,$09,$0A,$0B,$0B,$0C,$0D,$0E,$0E,$0F,$10
	db $10,$11,$11,$12,$13,$14,$14,$15,$16,$17,$18,$19,$1A,$1B,$1F

DATA_0DA17F:
	db $00,$04,$05,$06,$07,$08,$09,$0A,$0A,$0B,$0C,$0C,$0D,$0E,$0E,$0F
	db $10,$10,$11,$11,$12,$13,$13,$14,$15,$15,$16,$17,$18,$19,$1A,$1B
	db $1F

DATA_0DA1A0:
	db $00,$03,$05,$06,$07,$08,$09,$09,$0A,$0B,$0B,$0C,$0D,$0D,$0E,$0E
	db $0F,$10,$10,$11,$11,$12,$12,$13,$14,$14,$15,$16,$16,$17,$18,$19
	db $1A,$1C,$1F

DATA_0DA1C3:
	db $00,$03,$05,$06,$07,$08,$08,$09,$0A,$0A,$0B,$0C,$0C,$0D,$0D,$0E
	db $0E,$0F,$10,$10,$11,$11,$12,$12,$13,$13,$14,$15,$15,$16,$17,$17
	db $18,$19,$1A,$1C,$1F

DATA_0DA1E8:
	db $00,$03,$05,$06,$07,$07,$08,$09,$09,$0A,$0B,$0B,$0C,$0C,$0D,$0D
	db $0E,$0E,$0F,$10,$10,$11,$11,$12,$12,$13,$13,$14,$14,$15,$16,$16
	db $17,$18,$18,$19,$1A,$1C,$1F

DATA_0DA20F:
	db $00,$03,$04,$05,$06,$07,$08,$09,$09,$0A,$0A,$0B,$0B,$0C,$0C,$0D
	db $0E,$0E,$0F,$0F,$10,$10,$10,$11,$11,$12,$13,$13,$14,$14,$15,$15
	db $16,$16,$17,$18,$19,$1A,$1B,$1C,$1F

DATA_0DA238:
	db $00,$03,$04,$05,$06,$07,$08,$08,$09,$09,$0A,$0B,$0B,$0C,$0C,$0D
	db $0D,$0E,$0E,$0F,$0F,$10,$10,$10,$11,$11,$12,$12,$13,$13,$14,$14
	db $15,$16,$16,$17,$17,$18,$19,$1A,$1B,$1C,$1F

DATA_0DA263:
	db $00,$03,$04,$05,$06,$07,$07,$08,$09,$09,$0A,$0A,$0B,$0B,$0C,$0C
	db $0D,$0D,$0E,$0E,$0F,$0F,$10,$10,$10,$11,$11,$12,$12,$13,$13,$14
	db $14,$15,$15,$16,$16,$17,$18,$18,$19,$1A,$1B,$1C,$1F

DATA_0DA290:
	db $00,$03,$04,$05,$06,$07,$07,$08,$08,$09,$0A,$0A,$0B,$0B,$0C,$0C
	db $0C,$0D,$0D,$0E,$0E,$0F,$0F,$10,$10,$10,$11,$11,$12,$12,$13,$13
	db $13,$14,$14,$15,$15,$16,$17,$17,$18,$18,$19,$1A,$1B,$1C,$1F

DATA_0DA2BF:
	db $00,$03,$04,$05,$06,$06,$07,$08,$08,$09,$09,$0A,$0A,$0B,$0B,$0C
	db $0C,$0D,$0D,$0D,$0E,$0E,$0F,$0F,$10,$10,$10,$11,$11,$12,$12,$12
	db $13,$13,$14,$14,$15,$15,$16,$16,$17,$17,$18,$19,$19,$1A,$1B,$1C
	db $1F

DATA_0DA2F0:
	db $00,$03,$04,$05,$06,$06,$07,$08,$08,$09,$09,$0A,$0A,$0B,$0B,$0B
	db $0C,$0C,$0D,$0D,$0E,$0E,$0E,$0F,$0F,$10,$10,$10,$11,$11,$11,$12
	db $12,$13,$13,$14,$14,$14,$15,$15,$16,$16,$17,$17,$18,$19,$19,$1A
	db $1B,$1C,$1F

DATA_0DA323:
	db $00,$03,$04,$05,$06,$06,$07,$07,$08,$08,$09,$09,$0A,$0A,$0B,$0B
	db $0C,$0C,$0C,$0D,$0D,$0E,$0E,$0E,$0F,$0F,$10,$10,$10,$11,$11,$11
	db $12,$12,$13,$13,$13,$14,$14,$15,$15,$16,$16,$17,$17,$18,$18,$19
	db $19,$1A,$1B,$1C,$1F

DATA_0DA358:
	db $00,$03,$04,$05,$05,$06,$07,$07,$08,$08,$09,$09,$0A,$0A,$0B,$0B
	db $0B,$0C,$0C,$0D,$0D,$0D,$0E,$0E,$0E,$0F,$0F,$10,$10,$10,$11,$11
	db $11,$12,$12,$12,$13,$13,$14,$14,$14,$15,$15,$16,$16,$17,$17,$18
	db $18,$19,$1A,$1A,$1B,$1C,$1F

DATA_0DA38F:
	db $00,$03,$04,$05,$05,$06,$07,$07,$08,$08,$09,$09,$09,$0A,$0A,$0B
	db $0B,$0C,$0C,$0C,$0D,$0D,$0D,$0E,$0E,$0E,$0F,$0F,$10,$10,$10,$11
	db $11,$11,$12,$12,$12,$13,$13,$13,$14,$14,$15,$15,$16,$16,$16,$17
	db $17,$18,$18,$19,$1A,$1A,$1B,$1C,$1F

DATA_0DA3C8:
	db $00,$03,$04,$05,$05,$06,$06,$07,$08,$08,$08,$09,$09,$0A,$0A,$0B
	db $0B,$0B,$0C,$0C,$0C,$0D,$0D,$0D,$0E,$0E,$0E,$0F,$0F,$10,$10,$10
	db $11,$11,$11,$12,$12,$12,$13,$13,$13,$14,$14,$14,$15,$15,$16,$16
	db $17,$17,$17,$18,$19,$19,$1A,$1A,$1B,$1C,$1F

DATA_0DA403:
	db $00,$03,$04,$04,$05,$06,$06,$07,$07,$08,$08,$09,$09,$0A,$0A,$0A
	db $0B,$0B,$0B,$0C,$0C,$0C,$0D,$0D,$0E,$0E,$0E,$0F,$0F,$0F,$10,$10
	db $10,$10,$11,$11,$11,$12,$12,$13,$13,$13,$14,$14,$14,$15,$15,$15
	db $16,$16,$17,$17,$18,$18,$19,$19,$1A,$1B,$1B,$1C,$1F

DATA_0DA440:
	db $00,$03,$04,$04,$05,$06,$06,$07,$07,$08,$08,$09,$09,$09,$0A,$0A
	db $0B,$0B,$0B,$0C,$0C,$0C,$0D,$0D,$0D,$0E,$0E,$0E,$0F,$0F,$0F,$10
	db $10,$10,$10,$11,$11,$11,$12,$12,$12,$13,$13,$13,$14,$14,$14,$15
	db $15,$16,$16,$16,$17,$17,$18,$18,$19,$19,$1A,$1B,$1B,$1C,$1F

DATA_0DA47F:
	db $00,$02,$04,$04,$05,$06,$06,$07,$07,$08,$08,$08,$09,$09,$0A,$0A
	db $0A,$0B,$0B,$0B,$0C,$0C,$0C,$0D,$0D,$0D,$0E,$0E,$0E,$0F,$0F,$0F
	db $10,$10,$10,$10,$11,$11,$11,$12,$12,$12,$13,$13,$13,$14,$14,$14
	db $15,$15,$15,$16,$16,$17,$17,$17,$18,$18,$19,$19,$1A,$1B,$1B,$1D
	db $1F

DATA_0DA4C0:
	db $00,$02,$03,$04,$05,$06,$06,$07,$07,$07,$08,$08,$09,$09,$09,$0A
	db $0A,$0B,$0B,$0B,$0C,$0C,$0C,$0C,$0D,$0D,$0D,$0E,$0E,$0E,$0F,$0F
	db $0F,$10,$10,$10,$10,$11,$11,$11,$12,$12,$12,$13,$13,$13,$13,$14
	db $14,$14,$15,$15,$16,$16,$16,$17,$17,$18,$18,$18,$19,$19,$1A,$1B
	db $1C,$1D,$1F

DATA_0DA503:
	db $00,$02,$03,$04,$05,$05,$06,$06,$07,$07,$08,$08,$09,$09,$09,$0A
	db $0A,$0A,$0B,$0B,$0B,$0C,$0C,$0C,$0D,$0D,$0D,$0D,$0E,$0E,$0E,$0F
	db $0F,$0F,$10,$10,$10,$10,$11,$11,$11,$12,$12,$12,$12,$13,$13,$13
	db $14,$14,$14,$15,$15,$15,$16,$16,$16,$17,$17,$18,$18,$19,$19,$1A
	db $1A,$1B,$1C,$1D,$1F

DATA_0DA548:
	db $00,$02,$03,$04,$05,$05,$06,$06,$07,$07,$08,$08,$08,$09,$09,$09
	db $0A,$0A,$0A,$0B,$0B,$0B,$0C,$0C,$0C,$0D,$0D,$0D,$0E,$0E,$0E,$0E
	db $0F,$0F,$0F,$10,$10,$10,$10,$11,$11,$11,$11,$12,$12,$12,$13,$13
	db $13,$14,$14,$14,$15,$15,$15,$16,$16,$16,$17,$17,$17,$18,$18,$19
	db $19,$1A,$1A,$1B,$1C,$1D,$1F

DATA_0DA58F:
	db $00,$02,$03,$04,$05,$05,$06,$06,$07,$07,$08,$08,$08,$09,$09,$09
	db $0A,$0A,$0A,$0B,$0B,$0B,$0C,$0C,$0C,$0C,$0D,$0D,$0D,$0E,$0E,$0E
	db $0E,$0F,$0F,$0F,$10,$10,$10,$10,$11,$11,$11,$11,$12,$12,$12,$13
	db $13,$13,$13,$14,$14,$14,$15,$15,$15,$16,$16,$16,$17,$17,$17,$18
	db $18,$19,$19,$1A,$1A,$1B,$1C,$1D,$1F

DATA_0DA5D8:
	db $00,$02,$03,$04,$05,$05,$06,$06,$07,$07,$07,$08,$08,$09,$09,$09
	db $0A,$0A,$0A,$0A,$0B,$0B,$0B,$0C,$0C,$0C,$0D,$0D,$0D,$0D,$0E,$0E
	db $0E,$0E,$0F,$0F,$0F,$10,$10,$10,$10,$11,$11,$11,$11,$12,$12,$12
	db $12,$13,$13,$13,$14,$14,$14,$15,$15,$15,$15,$16,$16,$16,$17,$17
	db $18,$18,$18,$19,$19,$1A,$1A,$1B,$1C,$1D,$1F

DATA_0DA623:
	db $00,$02,$03,$04,$05,$05,$06,$06,$07,$07,$07,$08,$08,$08,$09,$09
	db $09,$0A,$0A,$0A,$0B,$0B,$0B,$0B,$0C,$0C,$0C,$0D,$0D,$0D,$0D,$0E
	db $0E,$0E,$0E,$0F,$0F,$0F,$10,$10,$10,$10,$11,$11,$11,$11,$12,$12
	db $12,$12,$13,$13,$13,$14,$14,$14,$14,$15,$15,$15,$16,$16,$16,$17
	db $17,$17,$18,$18,$18,$19,$19,$1A,$1A,$1B,$1C,$1D,$1F

DATA_0DA670:
	db $00,$02,$03,$04,$05,$05,$06,$06,$06,$07,$07,$08,$08,$08,$09,$09
	db $09,$0A,$0A,$0A,$0A,$0B,$0B,$0B,$0C,$0C,$0C,$0C,$0D,$0D,$0D,$0D
	db $0E,$0E,$0E,$0E,$0F,$0F,$0F,$10,$10,$10,$10,$11,$11,$11,$11,$12
	db $12,$12,$12,$13,$13,$13,$13,$14,$14,$14,$15,$15,$15,$15,$16,$16
	db $16,$17,$17,$17,$18,$18,$19,$19,$19,$1A,$1A,$1B,$1C,$1D,$1F

DATA_0DA6BF:
	db $00,$02,$03,$04,$04,$05,$05,$06,$06,$07,$07,$07,$08,$08,$09,$09
	db $09,$09,$0A,$0A,$0A,$0B,$0B,$0B,$0B,$0C,$0C,$0C,$0C,$0D,$0D,$0D
	db $0E,$0E,$0E,$0E,$0F,$0F,$0F,$0F,$10,$10,$10,$10,$10,$11,$11,$11
	db $11,$12,$12,$12,$13,$13,$13,$13,$14,$14,$14,$14,$15,$15,$15,$16
	db $16,$16,$16,$17,$17,$18,$18,$18,$19,$19,$1A,$1A,$1B,$1B,$1C,$1D
	db $1F

DATA_0DA710:
	db $00,$02,$03,$04,$04,$05,$05,$06,$06,$07,$07,$07,$08,$08,$08,$09
	db $09,$09,$0A,$0A,$0A,$0A,$0B,$0B,$0B,$0C,$0C,$0C,$0C,$0D,$0D,$0D
	db $0D,$0E,$0E,$0E,$0E,$0F,$0F,$0F,$0F,$10,$10,$10,$10,$10,$11,$11
	db $11,$11,$12,$12,$12,$12,$13,$13,$13,$13,$14,$14,$14,$15,$15,$15
	db $15,$16,$16,$16,$17,$17,$17,$18,$18,$18,$19,$19,$1A,$1A,$1B,$1B
	db $1C,$1D,$1F

DATA_0DA763:
	db $00,$02,$03,$04,$04,$05,$05,$06,$06,$07,$07,$07,$08,$08,$08,$09
	db $09,$09,$09,$0A,$0A,$0A,$0B,$0B,$0B,$0B,$0C,$0C,$0C,$0C,$0D,$0D
	db $0D,$0D,$0E,$0E,$0E,$0E,$0F,$0F,$0F,$0F,$10,$10,$10,$10,$10,$11
	db $11,$11,$11,$12,$12,$12,$12,$13,$13,$13,$13,$14,$14,$14,$14,$15
	db $15,$15,$16,$16,$16,$16,$17,$17,$17,$18,$18,$18,$19,$19,$1A,$1A
	db $1B,$1B,$1C,$1D,$1F

DATA_0DA7B8:
	db $00,$02,$03,$04,$04,$05,$05,$06,$06,$07,$07,$07,$08,$08,$08,$09
	db $09,$09,$09,$0A,$0A,$0A,$0A,$0B,$0B,$0B,$0B,$0C,$0C,$0C,$0C,$0D
	db $0D,$0D,$0D,$0E,$0E,$0E,$0E,$0F,$0F,$0F,$0F,$10,$10,$10,$10,$10
	db $11,$11,$11,$11,$12,$12,$12,$12,$13,$13,$13,$13,$14,$14,$14,$14
	db $15,$15,$15,$15,$16,$16,$16,$16,$17,$17,$17,$18,$18,$18,$19,$19
	db $1A,$1A,$1B,$1B,$1C,$1D,$1F

DATA_0DA80F:
	db $00,$02,$03,$04,$04,$05,$05,$06,$06,$06,$07,$07,$07,$08,$08,$08
	db $09,$09,$09,$0A,$0A,$0A,$0A,$0B,$0B,$0B,$0B,$0C,$0C,$0C,$0C,$0D
	db $0D,$0D,$0D,$0D,$0E,$0E,$0E,$0E,$0F,$0F,$0F,$0F,$10,$10,$10,$10
	db $10,$11,$11,$11,$11,$12,$12,$12,$12,$12,$13,$13,$13,$13,$14,$14
	db $14,$14,$15,$15,$15,$15,$16,$16,$16,$17,$17,$17,$18,$18,$18,$19
	db $19,$19,$1A,$1A,$1B,$1B,$1C,$1D,$1F

DATA_0DA868:
	db $00,$02,$03,$04,$04,$05,$05,$06,$06,$06,$07,$07,$07,$08,$08,$08
	db $09,$09,$09,$09,$0A,$0A,$0A,$0A,$0B,$0B,$0B,$0B,$0C,$0C,$0C,$0C
	db $0D,$0D,$0D,$0D,$0E,$0E,$0E,$0E,$0E,$0F,$0F,$0F,$0F,$10,$10,$10
	db $10,$10,$11,$11,$11,$11,$11,$12,$12,$12,$12,$13,$13,$13,$13,$14
	db $14,$14,$14,$15,$15,$15,$15,$16,$16,$16,$16,$17,$17,$17,$18,$18
	db $18,$19,$19,$19,$1A,$1A,$1B,$1B,$1C,$1D,$1F

DATA_0DA8C3:
	db $00,$02,$03,$04,$04,$05,$05,$06,$06,$06,$07,$07,$07,$08,$08,$08
	db $08,$09,$09,$09,$0A,$0A,$0A,$0A,$0B,$0B,$0B,$0B,$0C,$0C,$0C,$0C
	db $0C,$0D,$0D,$0D,$0D,$0E,$0E,$0E,$0E,$0E,$0F,$0F,$0F,$0F,$10,$10
	db $10,$10,$10,$11,$11,$11,$11,$11,$12,$12,$12,$12,$13,$13,$13,$13
	db $13,$14,$14,$14,$14,$15,$15,$15,$15,$16,$16,$16,$17,$17,$17,$17
	db $18,$18,$18,$19,$19,$19,$1A,$1A,$1B,$1B,$1C,$1D,$1F

DATA_0DA920:
	db $00,$02,$03,$04,$04,$05,$05,$05,$06,$06,$07,$07,$07,$08,$08,$08
	db $08,$09,$09,$09,$09,$0A,$0A,$0A,$0A,$0B,$0B,$0B,$0B,$0C,$0C,$0C
	db $0C,$0D,$0D,$0D,$0D,$0D,$0E,$0E,$0E,$0E,$0E,$0F,$0F,$0F,$0F,$10
	db $10,$10,$10,$10,$11,$11,$11,$11,$11,$12,$12,$12,$12,$12,$13,$13
	db $13,$13,$14,$14,$14,$14,$15,$15,$15,$15,$16,$16,$16,$16,$17,$17
	db $17,$17,$18,$18,$18,$19,$19,$1A,$1A,$1A,$1B,$1B,$1C,$1D,$1F

DATA_0DA97F:
	db $00,$02,$03,$04,$04,$05,$05,$05,$06,$06,$06,$07,$07,$07,$08,$08
	db $08,$09,$09,$09,$09,$0A,$0A,$0A,$0A,$0B,$0B,$0B,$0B,$0B,$0C,$0C
	db $0C,$0C,$0D,$0D,$0D,$0D,$0D,$0E,$0E,$0E,$0E,$0E,$0F,$0F,$0F,$0F
	db $10,$10,$10,$10,$10,$11,$11,$11,$11,$11,$12,$12,$12,$12,$12,$13
	db $13,$13,$13,$14,$14,$14,$14,$14,$15,$15,$15,$15,$16,$16,$16,$16
	db $17,$17,$17,$18,$18,$18,$19,$19,$19,$1A,$1A,$1A,$1B,$1B,$1C,$1D
	db $1F

DATA_0DA9E0:
	db $00,$02,$03,$03,$04,$04,$05,$05,$06,$06,$06,$07,$07,$07,$08,$08
	db $08,$08,$09,$09,$09,$09,$0A,$0A,$0A,$0A,$0B,$0B,$0B,$0B,$0C,$0C
	db $0C,$0C,$0C,$0D,$0D,$0D,$0D,$0D,$0E,$0E,$0E,$0E,$0E,$0F,$0F,$0F
	db $0F,$10,$10,$10,$10,$10,$11,$11,$11,$11,$11,$12,$12,$12,$12,$12
	db $13,$13,$13,$13,$13,$14,$14,$14,$14,$15,$15,$15,$15,$16,$16,$16
	db $16,$17,$17,$17,$17,$18,$18,$18,$19,$19,$19,$1A,$1A,$1B,$1B,$1C
	db $1C,$1D,$1F

DATA_0DAA43:
	db $00,$02,$03,$03,$04,$04,$05,$05,$06,$06,$06,$07,$07,$07,$08,$08
	db $08,$08,$09,$09,$09,$09,$0A,$0A,$0A,$0A,$0B,$0B,$0B,$0B,$0B,$0C
	db $0C,$0C,$0C,$0C,$0D,$0D,$0D,$0D,$0E,$0E,$0E,$0E,$0E,$0F,$0F,$0F
	db $0F,$0F,$10,$10,$10,$10,$10,$10,$11,$11,$11,$11,$11,$12,$12,$12
	db $12,$13,$13,$13,$13,$13,$14,$14,$14,$14,$14,$15,$15,$15,$15,$16
	db $16,$16,$16,$17,$17,$17,$17,$18,$18,$18,$19,$19,$19,$1A,$1A,$1B
	db $1B,$1C,$1C,$1D,$1F

DATA_0DAAA8:
	db $00,$02,$03,$03,$04,$04,$05,$05,$06,$06,$06,$07,$07,$07,$07,$08
	db $08,$08,$09,$09,$09,$09,$0A,$0A,$0A,$0A,$0A,$0B,$0B,$0B,$0B,$0C
	db $0C,$0C,$0C,$0C,$0D,$0D,$0D,$0D,$0D,$0E,$0E,$0E,$0E,$0E,$0F,$0F
	db $0F,$0F,$0F,$10,$10,$10,$10,$10,$10,$11,$11,$11,$11,$11,$12,$12
	db $12,$12,$12,$13,$13,$13,$13,$13,$14,$14,$14,$14,$15,$15,$15,$15
	db $15,$16,$16,$16,$16,$17,$17,$17,$18,$18,$18,$18,$19,$19,$19,$1A
	db $1A,$1B,$1B,$1C,$1C,$1D,$1F

DATA_0DAB0F:
	db $00,$02,$03,$03,$04,$04,$05,$05,$06,$06,$06,$07,$07,$07,$07,$08
	db $08,$08,$08,$09,$09,$09,$09,$0A,$0A,$0A,$0A,$0B,$0B,$0B,$0B,$0B
	db $0C,$0C,$0C,$0C,$0C,$0D,$0D,$0D,$0D,$0D,$0E,$0E,$0E,$0E,$0E,$0F
	db $0F,$0F,$0F,$0F,$10,$10,$10,$10,$10,$10,$11,$11,$11,$11,$11,$12
	db $12,$12,$12,$12,$13,$13,$13,$13,$13,$14,$14,$14,$14,$14,$15,$15
	db $15,$15,$16,$16,$16,$16,$17,$17,$17,$17,$18,$18,$18,$18,$19,$19
	db $19,$1A,$1A,$1B,$1B,$1C,$1C,$1D,$1F

DATA_0DAB78:
	db $00,$02,$03,$03,$04,$04,$05,$05,$05,$06,$06,$06,$07,$07,$07,$08
	db $08,$08,$08,$09,$09,$09,$09,$0A,$0A,$0A,$0A,$0A,$0B,$0B,$0B,$0B
	db $0B,$0C,$0C,$0C,$0C,$0C,$0D,$0D,$0D,$0D,$0D,$0E,$0E,$0E,$0E,$0E
	db $0F,$0F,$0F,$0F,$0F,$10,$10,$10,$10,$10,$10,$11,$11,$11,$11,$11
	db $12,$12,$12,$12,$12,$13,$13,$13,$13,$13,$14,$14,$14,$14,$14,$15
	db $15,$15,$15,$15,$16,$16,$16,$16,$17,$17,$17,$17,$18,$18,$18,$19
	db $19,$19,$1A,$1A,$1A,$1B,$1B,$1C,$1C,$1D,$1F

DATA_0DABE3:
	db $00,$02,$03,$03,$04,$04,$05,$05,$05,$06,$06,$06,$07,$07,$07,$08
	db $08,$08,$08,$09,$09,$09,$09,$09,$0A,$0A,$0A,$0A,$0B,$0B,$0B,$0B
	db $0B,$0C,$0C,$0C,$0C,$0C,$0D,$0D,$0D,$0D,$0D,$0D,$0E,$0E,$0E,$0E
	db $0E,$0F,$0F,$0F,$0F,$0F,$10,$10,$10,$10,$10,$10,$11,$11,$11,$11
	db $11,$12,$12,$12,$12,$12,$12,$13,$13,$13,$13,$13,$14,$14,$14,$14
	db $14,$15,$15,$15,$15,$16,$16,$16,$16,$16,$17,$17,$17,$17,$18,$18
	db $18,$19,$19,$19,$1A,$1A,$1A,$1B,$1B,$1C,$1C,$1D,$1F

DATA_0DAC50:
	db $00,$02,$03,$03,$04,$04,$05,$05,$05,$06,$06,$06,$07,$07,$07,$07
	db $08,$08,$08,$08,$09,$09,$09,$09,$0A,$0A,$0A,$0A,$0A,$0B,$0B,$0B
	db $0B,$0B,$0C,$0C,$0C,$0C,$0C,$0D,$0D,$0D,$0D,$0D,$0E,$0E,$0E,$0E
	db $0E,$0E,$0F,$0F,$0F,$0F,$0F,$10,$10,$10,$10,$10,$10,$11,$11,$11
	db $11,$11,$11,$12,$12,$12,$12,$12,$13,$13,$13,$13,$13,$14,$14,$14
	db $14,$14,$15,$15,$15,$15,$15,$16,$16,$16,$16,$17,$17,$17,$17,$18
	db $18,$18,$18,$19,$19,$19,$1A,$1A,$1A,$1B,$1B,$1C,$1C,$1D,$1F

DATA_0DACBF:
	db $00,$02,$03,$03,$04,$04,$05,$05,$05,$06,$06,$06,$07,$07,$07,$07
	db $08,$08,$08,$08,$09,$09,$09,$09,$09,$0A,$0A,$0A,$0A,$0B,$0B,$0B
	db $0B,$0B,$0C,$0C,$0C,$0C,$0C,$0C,$0D,$0D,$0D,$0D,$0D,$0E,$0E,$0E
	db $0E,$0E,$0E,$0F,$0F,$0F,$0F,$0F,$10,$10,$10,$10,$10,$10,$11,$11
	db $11,$11,$11,$11,$12,$12,$12,$12,$12,$13,$13,$13,$13,$13,$13,$14
	db $14,$14,$14,$14,$15,$15,$15,$15,$16,$16,$16,$16,$16,$17,$17,$17
	db $17,$18,$18,$18,$18,$19,$19,$19,$1A,$1A,$1A,$1B,$1B,$1C,$1C,$1D
	db $1F

DATA_0DAD30:
	db $00,$02,$03,$03,$04,$04,$05,$05,$05,$06,$06,$06,$07,$07,$07,$07
	db $08,$08,$08,$08,$09,$09,$09,$09,$09,$0A,$0A,$0A,$0A,$0A,$0B,$0B
	db $0B,$0B,$0B,$0C,$0C,$0C,$0C,$0C,$0D,$0D,$0D,$0D,$0D,$0D,$0E,$0E
	db $0E,$0E,$0E,$0E,$0F,$0F,$0F,$0F,$0F,$10,$10,$10,$10,$10,$10,$11
	db $11,$11,$11,$11,$11,$12,$12,$12,$12,$12,$12,$13,$13,$13,$13,$13
	db $14,$14,$14,$14,$14,$15,$15,$15,$15,$15,$16,$16,$16,$16,$16,$17
	db $17,$17,$17,$18,$18,$18,$18,$19,$19,$19,$1A,$1A,$1A,$1B,$1B,$1C
	db $1C,$1D,$1F

DATA_0DADA3:
	db $00,$02,$03,$03,$04,$04,$05,$05,$05,$06,$06,$06,$06,$07,$07,$07
	db $08,$08,$08,$08,$08,$09,$09,$09,$09,$0A,$0A,$0A,$0A,$0A,$0B,$0B
	db $0B,$0B,$0B,$0B,$0C,$0C,$0C,$0C,$0C,$0D,$0D,$0D,$0D,$0D,$0D,$0E
	db $0E,$0E,$0E,$0E,$0E,$0F,$0F,$0F,$0F,$0F,$10,$10,$10,$10,$10,$10
	db $11,$11,$11,$11,$11,$11,$12,$12,$12,$12,$12,$12,$13,$13,$13,$13
	db $13,$14,$14,$14,$14,$14,$14,$15,$15,$15,$15,$15,$16,$16,$16,$16
	db $17,$17,$17,$17,$17,$18,$18,$18,$19,$19,$19,$19,$1A,$1A,$1A,$1B
	db $1B,$1C,$1C,$1D,$1F

DATA_0DAE18:
	db $00,$02,$03,$03,$04,$04,$04,$05,$05,$06,$06,$06,$06,$07,$07,$07
	db $07,$08,$08,$08,$08,$09,$09,$09,$09,$09,$0A,$0A,$0A,$0A,$0A,$0B
	db $0B,$0B,$0B,$0B,$0C,$0C,$0C,$0C,$0C,$0C,$0D,$0D,$0D,$0D,$0D,$0D
	db $0E,$0E,$0E,$0E,$0E,$0E,$0F,$0F,$0F,$0F,$0F,$10,$10,$10,$10,$10
	db $10,$11,$11,$11,$11,$11,$11,$12,$12,$12,$12,$12,$12,$13,$13,$13
	db $13,$13,$13,$14,$14,$14,$14,$14,$15,$15,$15,$15,$15,$16,$16,$16
	db $16,$16,$17,$17,$17,$17,$18,$18,$18,$18,$19,$19,$19,$19,$1A,$1A
	db $1B,$1B,$1B,$1C,$1C,$1D,$1F

DATA_0DAE8F:
	db $00,$02,$03,$03,$04,$04,$04,$05,$05,$05,$06,$06,$06,$07,$07,$07
	db $07,$08,$08,$08,$08,$09,$09,$09,$09,$09,$0A,$0A,$0A,$0A,$0A,$0B
	db $0B,$0B,$0B,$0B,$0B,$0C,$0C,$0C,$0C,$0C,$0C,$0D,$0D,$0D,$0D,$0D
	db $0E,$0E,$0E,$0E,$0E,$0E,$0F,$0F,$0F,$0F,$0F,$0F,$10,$10,$10,$10
	db $10,$10,$10,$11,$11,$11,$11,$11,$11,$12,$12,$12,$12,$12,$13,$13
	db $13,$13,$13,$13,$14,$14,$14,$14,$14,$14,$15,$15,$15,$15,$15,$16
	db $16,$16,$16,$16,$17,$17,$17,$17,$18,$18,$18,$18,$19,$19,$19,$1A
	db $1A,$1A,$1B,$1B,$1B,$1C,$1C,$1D,$1F

DATA_0DAF08:
	db $00,$02,$03,$03,$04,$04,$04,$05,$05,$05,$06,$06,$06,$07,$07,$07
	db $07,$08,$08,$08,$08,$08,$09,$09,$09,$09,$09,$0A,$0A,$0A,$0A,$0A
	db $0B,$0B,$0B,$0B,$0B,$0C,$0C,$0C,$0C,$0C,$0C,$0D,$0D,$0D,$0D,$0D
	db $0D,$0E,$0E,$0E,$0E,$0E,$0E,$0F,$0F,$0F,$0F,$0F,$0F,$10,$10,$10
	db $10,$10,$10,$10,$11,$11,$11,$11,$11,$11,$12,$12,$12,$12,$12,$12
	db $13,$13,$13,$13,$13,$13,$14,$14,$14,$14,$14,$15,$15,$15,$15,$15
	db $16,$16,$16,$16,$16,$17,$17,$17,$17,$17,$18,$18,$18,$18,$19,$19
	db $19,$1A,$1A,$1A,$1B,$1B,$1B,$1C,$1C,$1D,$1F

DATA_0DAF83:
	db $00,$02,$03,$03,$04,$04,$04,$05,$05,$05,$06,$06,$06,$07,$07,$07
	db $07,$07,$08,$08,$08,$08,$09,$09,$09,$09,$09,$0A,$0A,$0A,$0A,$0A
	db $0B,$0B,$0B,$0B,$0B,$0B,$0C,$0C,$0C,$0C,$0C,$0C,$0D,$0D,$0D,$0D
	db $0D,$0D,$0E,$0E,$0E,$0E,$0E,$0E,$0F,$0F,$0F,$0F,$0F,$0F,$10,$10
	db $10,$10,$10,$10,$10,$11,$11,$11,$11,$11,$11,$12,$12,$12,$12,$12
	db $12,$13,$13,$13,$13,$13,$13,$14,$14,$14,$14,$14,$14,$15,$15,$15
	db $15,$15,$16,$16,$16,$16,$16,$17,$17,$17,$17,$18,$18,$18,$18,$18
	db $19,$19,$19,$1A,$1A,$1A,$1B,$1B,$1B,$1C,$1C,$1D,$1F

DATA_0DB000:
	db $00,$02,$02,$03,$04,$04,$04,$05,$05,$05,$06,$06,$06,$06,$07,$07
	db $07,$07,$08,$08,$08,$08,$09,$09,$09,$09,$09,$09,$0A,$0A,$0A,$0A
	db $0A,$0B,$0B,$0B,$0B,$0B,$0B,$0C,$0C,$0C,$0C,$0C,$0C,$0D,$0D,$0D
	db $0D,$0D,$0D,$0E,$0E,$0E,$0E,$0E,$0E,$0F,$0F,$0F,$0F,$0F,$0F,$10
	db $10,$10,$10,$10,$10,$10,$11,$11,$11,$11,$11,$11,$12,$12,$12,$12
	db $12,$12,$13,$13,$13,$13,$13,$13,$14,$14,$14,$14,$14,$14,$15,$15
	db $15,$15,$15,$16,$16,$16,$16,$16,$16,$17,$17,$17,$17,$18,$18,$18
	db $18,$19,$19,$19,$19,$1A,$1A,$1A,$1B,$1B,$1B,$1C,$1D,$1D,$1F

DATA_0DB07F:
	db $00,$00,$02,$00,$04,$00,$06,$00,$08,$00,$0A,$00,$0C,$00,$0E,$00
	db $40,$02,$42,$02,$44,$02,$46,$02,$48,$02,$4A,$02,$4C,$02,$4E,$02
	db $80,$04,$82,$04,$84,$04,$86,$04,$88,$04,$8A,$04,$8C,$04,$8E,$04
	db $C0,$06,$C2,$06,$C4,$06,$C6,$06,$C8,$06,$CA,$06,$CC,$06,$CE,$06
	db $00,$09,$02,$09,$04,$09,$06,$09,$08,$09,$0A,$09,$0C,$09,$0E,$09
	db $40,$0B,$42,$0B,$44,$0B,$46,$0B,$48,$0B,$4A,$0B,$4C,$0B,$4E,$0B
	db $80,$0D,$82,$0D,$84,$0D,$86,$0D,$88,$0D,$8A,$0D,$8C,$0D,$8E,$0D
	db $C0,$0F,$C2,$0F,$C4,$0F,$C6,$0F,$C8,$0F,$CA,$0F,$CC,$0F,$CE,$0F
	db $00,$12,$02,$12,$04,$12,$06,$12,$08,$12,$0A,$12,$0C,$12,$0E,$12
	db $40,$14,$42,$14,$44,$14,$46,$14,$48,$14,$4A,$14,$4C,$14,$4E,$14
	db $80,$16,$82,$16,$84,$16,$86,$16,$88,$16,$8A,$16,$8C,$16,$8E,$16
	db $C0,$18,$C2,$18,$C4,$18,$C6,$18,$C8,$18,$CA,$18,$CC,$18,$CE,$18
	db $00,$1B,$02,$1B,$04,$1B,$06,$1B,$08,$1B,$0A,$1B,$0C,$1B,$0E,$1B
	db $40,$1D,$42,$1D,$44,$1D,$46,$1D,$48,$1D,$4A,$1D,$4C,$1D,$4E,$1D

DATA_0DB15F:
	db $00,$80,$C0,$E0,$F0,$F8,$FC,$FE,$00,$80,$C0,$E0,$F0,$F8,$FC,$FE
	db $00,$80,$C0,$E0,$F0,$F8,$FC,$FE,$00,$80,$C0,$E0,$F0,$F8,$FC,$FE
	db $00,$80,$C0,$E0,$F0,$F8,$FC,$FE,$00,$80,$C0,$E0,$F0,$F8,$FC,$FE
	db $00,$80,$C0,$E0,$F0,$F8,$FC,$FE,$00,$80,$C0,$E0,$F0,$F8,$FC,$FE
	db $00,$80,$C0,$E0,$F0,$F8,$FC,$FE,$00,$80,$C0,$E0,$F0,$F8,$FC,$FE
	db $00,$80,$C0,$E0,$F0,$F8,$FC,$FE,$00,$80,$C0,$E0,$F0,$F8,$FC,$FE
	db $00,$80,$C0,$E0,$F0,$F8,$FC,$FE,$00,$80,$C0,$E0,$F0,$F8,$FC,$FE
	db $00,$80,$C0,$E0,$F0,$F8,$FC,$FE,$00,$80,$C0,$E0,$F0,$F8,$FC,$FE
	db $00,$80,$C0,$E0,$F0,$F8,$FC,$FE,$00,$80,$C0,$E0,$F0,$F8,$FC,$FE

DATA_0DB1EF:
	db $7F,$3F,$1F,$0F,$07,$03,$01,$00,$7F,$3F,$1F,$0F,$07,$03,$01,$00
	db $7F,$3F,$1F,$0F,$07,$03,$01,$00,$7F,$3F,$1F,$0F,$07,$03,$01,$00
	db $7F,$3F,$1F,$0F,$07,$03,$01,$00,$7F,$3F,$1F,$0F,$07,$03,$01,$00
	db $7F,$3F,$1F,$0F,$07,$03,$01,$00,$7F,$3F,$1F,$0F,$07,$03,$01,$00
	db $7F,$3F,$1F,$0F,$07,$03,$01,$00,$7F,$3F,$1F,$0F,$07,$03,$01,$00
	db $7F,$3F,$1F,$0F,$07,$03,$01,$00,$7F,$3F,$1F,$0F,$07,$03,$01,$00
	db $7F,$3F,$1F,$0F,$07,$03,$01,$00,$7F,$3F,$1F,$0F,$07,$03,$01,$00
	db $7F,$3F,$1F,$0F,$07,$03,$01,$00,$7F,$3F,$1F,$0F,$07,$03,$01,$00
	db $7F,$3F,$1F,$0F,$07,$03,$01,$00,$7F,$3F,$1F,$0F,$07,$03,$01,$00

	%FREE_BYTES($0DB27F, 19841, $FF)
%BANK_END(<EndBank>)
endmacro

;#############################################################################################################
;#############################################################################################################

macro FB2000Bank0EMacros(StartBank, EndBank)
%BANK_START(<StartBank>)

DATA_0E8000:
	incbin "Palettes/Layer2_CityZone.bin"
	db $FF

DATA_0E8041:
	incbin "Graphics/GFX_Layer2_CityZone.rnc"

DATA_0E8B25:
	incbin "Palettes/Layer2_AsteroidZone.bin"
	db $FF

DATA_0E8B66:
	incbin "Graphics/GFX_Layer2_AsteroidZone.rnc"

DATA_0E9AC1:
	incbin "Palettes/Layer2_IceZone.bin"
	db $FF

DATA_0E9B02:
	incbin "Graphics/GFX_Layer2_IceZone.rnc"

DATA_0EABAC:
	incbin "Palettes/Layer2_DesertZone.bin"
	db $FF

DATA_0EABED:
	incbin "Graphics/GFX_Layer2_DesertZone.rnc"

DATA_0EBD6C:
	incbin "Palettes/Layer2_MarsZone.bin"
	db $FF

DATA_0EBDAD:
	incbin "Graphics/GFX_Layer2_MarsZone.rnc"

DATA_0EC836:
	incbin "Palettes/Layer2_SpaceZone.bin"
	db $FF

DATA_0EC877:
	incbin "Graphics/GFX_Layer2_SpaceZone.rnc"

DATA_0ED395:
	incbin "Palettes/Layer2_CyberZone.bin"
	db $FF

DATA_0ED3D6:
	incbin "Graphics/GFX_Layer2_CyberZone.rnc"

DATA_0EE1ED:
	incbin "Palettes/Layer2_StarZone.bin"
	db $FF

DATA_0EE22E:
	incbin "Graphics/GFX_Layer2_StarZone.rnc"

DATA_0EE943:
	incbin "Palettes/Layer2_Arena.bin"
	db $FF

DATA_0EE984:
	incbin "Graphics/GFX_Layer2_Arena.rnc"

	%FREE_BYTES($0EFCBD, 835, $FF)
%BANK_END(<EndBank>)
endmacro

;#############################################################################################################
;#############################################################################################################

macro FB2000Bank0FMacros(StartBank, EndBank)
%BANK_START(<StartBank>)

DATA_0F8000:
	dw DATA_0F8232
	dw DATA_0F829C
	dw DATA_0F8313
	dw DATA_0F8388
	dw DATA_0F8401
	dw DATA_0F8455
	dw DATA_0F849E
	dw DATA_0F84F9
	dw DATA_0F854F
	dw DATA_0F85A5
	dw DATA_0F85F9
	dw DATA_0F8655
	dw DATA_0F86AE
	dw DATA_0F8713
	dw DATA_0F8771
	dw DATA_0F87D1
	dw DATA_0F8836
	dw DATA_0F88A3
	dw DATA_0F8918
	dw DATA_0F8988
	dw DATA_0F89FD
	dw DATA_0F8A6F
	dw DATA_0F8ADE
	dw DATA_0F8B58
	dw DATA_0F8BE1
	dw DATA_0F8C39
	dw DATA_0F8C8F
	dw DATA_0F8CE1
	dw DATA_0F8D38
	dw DATA_0F8D9E
	dw DATA_0F8E30
	dw DATA_0F8EA1
	dw DATA_0F8F0D
	dw DATA_0F8F7C
	dw DATA_0F8FEA
	dw DATA_0F9056
	dw DATA_0F9100
	dw DATA_0F9177
	dw DATA_0F91EC
	dw DATA_0F925A
	dw DATA_0F92BF
	dw DATA_0F9331
	dw DATA_0F93F4
	dw DATA_0F944E
	dw DATA_0F94B8
	dw DATA_0F951F
	dw DATA_0F9597
	dw DATA_0F95F4
	dw DATA_0F9675
	dw DATA_0F97E5
	dw DATA_0F9821
	dw DATA_0F9867
	dw DATA_0F98BF
	dw DATA_0F99B0
	dw DATA_0F9A3C
	dw DATA_0F9AAD
	dw DATA_0F9B29
	dw DATA_0F9BA6
	dw DATA_0F9CB9
	dw DATA_0F9CF7
	dw DATA_0F9D82
	dw DATA_0F9DE9
	dw DATA_0F9E5B
	dw DATA_0F9EA9
	dw DATA_0F9F43
	dw DATA_0F9FD4
	dw DATA_0FA108
	dw DATA_0FA15D
	dw DATA_0FA220
	dw DATA_0FA27C
	dw DATA_0FA308
	dw DATA_0FA34F
	dw DATA_0FA38C
	dw DATA_0FA405
	dw DATA_0FA4B1
	dw DATA_0FA567
	dw DATA_0FA5CE
	dw DATA_0FA66D
	dw DATA_0FA731
	dw DATA_0FA7A7
	dw DATA_0FA87B
	dw DATA_0FA90D
	dw DATA_0FA978
	dw DATA_0FA9CB
	dw DATA_0FAA34
	dw DATA_0FAAFC
	dw DATA_0FAB6B
	dw DATA_0FAC00
	dw DATA_0FAD13
	dw DATA_0FADC9
	dw DATA_0FAE20
	dw DATA_0FAE87
	dw DATA_0FAFAD
	dw DATA_0FB04E
	dw DATA_0FB118
	dw DATA_0FB18E
	dw DATA_0FB1FB
	dw DATA_0FB27F
	dw DATA_0FB382
	dw DATA_0FB483
	dw DATA_0FB4F5
	dw DATA_0FB573
	dw DATA_0FB5ED
	dw DATA_0FB680
	dw DATA_0FB6F3
	dw DATA_0FB7C1
	dw DATA_0FB85F
	dw DATA_0FB8BF
	dw DATA_0FB9CA
	dw DATA_0FBA9E
	dw DATA_0FBB25
	dw DATA_0FBB9B
	dw DATA_0FBC2E
	dw DATA_0FBC81
	dw DATA_0FBD1E
	dw DATA_0FBDD1
	dw DATA_0FBECE
	dw DATA_0FBF37
	dw DATA_0FC049
	dw DATA_0FC0BE
	dw DATA_0FC14B
	dw DATA_0FC24A
	dw DATA_0FC385

DATA_0F80F6:
	dw DATA_0FC4F7
	dw DATA_0FC515
	dw DATA_0FC542
	dw DATA_0FC56E
	dw DATA_0FC5A7
	dw DATA_0FC5DF
	dw DATA_0FC605
	dw DATA_0FC621
	dw DATA_0FC63E
	dw DATA_0FC683
	dw DATA_0FC6B0
	dw DATA_0FC6F8
	dw DATA_0FC73E
	dw DATA_0FC75D
	dw DATA_0FC778
	dw DATA_0FC7B5
	dw DATA_0FC7D2
	dw DATA_0FC804
	dw DATA_0FC856
	dw DATA_0FC87D
	dw DATA_0FC8BF
	dw DATA_0FC8F3
	dw DATA_0FC936
	dw DATA_0FC97F
	dw DATA_0FC9B0
	dw DATA_0FC9CF
	dw DATA_0FC9FD
	dw DATA_0FCA23
	dw DATA_0FCA45
	dw DATA_0FCA69
	dw DATA_0FCA8A
	dw DATA_0FCAAD
	dw DATA_0FCAE7
	dw DATA_0FCB07
	dw DATA_0FCB2A
	dw DATA_0FCB83
	dw DATA_0FCBAE
	dw DATA_0FCBDE
	dw DATA_0FCC04
	dw DATA_0FCC3A
	dw DATA_0FCC68
	dw DATA_0FCC8C
	dw DATA_0FCD05
	dw DATA_0FCD43
	dw DATA_0FCD62
	dw DATA_0FCD92
	dw DATA_0FCDD9
	dw DATA_0FCE1E
	dw DATA_0FCE4D
	dw DATA_0FCE7B
	dw DATA_0FCEDC
	dw DATA_0FCF2F

DATA_0F815E:
	dw DATA_0FCF67
	dw DATA_0FCF7E
	dw DATA_0FCFAB
	dw DATA_0FCFCD
	dw DATA_0FCFF1
	dw DATA_0FD02B
	dw DATA_0FD04C
	dw DATA_0FD078
	dw DATA_0FD0A5
	dw DATA_0FD0D2
	dw DATA_0FD100
	dw DATA_0FD12B
	dw DATA_0FD166
	dw DATA_0FD1A3
	dw DATA_0FD1ED
	dw DATA_0FD215
	dw DATA_0FD286
	dw DATA_0FD2CF
	dw DATA_0FD303
	dw DATA_0FD337
	dw DATA_0FD38B
	dw DATA_0FD3B6
	dw DATA_0FD3D2
	dw DATA_0FD3EE
	dw DATA_0FD405
	dw DATA_0FD438
	dw DATA_0FD454
	dw DATA_0FD493
	dw DATA_0FD4C7
	dw DATA_0FD4F2
	dw DATA_0FD546
	dw DATA_0FD57A
	dw DATA_0FD5D1
	dw DATA_0FD606
	dw DATA_0FD682
	dw DATA_0FD6A1
	dw DATA_0FD6D5
	dw DATA_0FD717
	dw DATA_0FD74B
	dw DATA_0FD794
	dw DATA_0FD7BB
	dw DATA_0FD804
	dw DATA_0FD820
	dw DATA_0FD853
	dw DATA_0FD896
	dw DATA_0FD95D
	dw DATA_0FD9A6
	dw DATA_0FD9FA
	dw DATA_0FDA4E
	dw DATA_0FDAB9
	dw DATA_0FDB80
	dw DATA_0FDBB4
	dw DATA_0FDBC7
	dw DATA_0FDBE3
	dw DATA_0FDBFF
	dw DATA_0FDC1B
	dw DATA_0FDC2E
	dw DATA_0FDC4A
	dw DATA_0FDC71
	dw DATA_0FDC98
	dw DATA_0FDCBF
	dw DATA_0FDCE6
	dw DATA_0FDD0D
	dw DATA_0FDD34
	dw DATA_0FDD68
	dw DATA_0FDD9C
	dw DATA_0FDDD0
	dw DATA_0FDE04
	dw DATA_0FDE38
	dw DATA_0FDE6C
	dw DATA_0FDEB7
	dw DATA_0FDF02
	dw DATA_0FDF4D
	dw DATA_0FDF98
	dw DATA_0FDFE3
	dw DATA_0FE026
	dw DATA_0FE039
	dw DATA_0FE055
	dw DATA_0FE071
	dw DATA_0FE08D
	dw DATA_0FE0A0
	dw DATA_0FE0E3
	dw DATA_0FE14A
	dw DATA_0FE1B1
	dw DATA_0FE218
	dw DATA_0FE27F
	dw DATA_0FE2E6
	dw DATA_0FE33A
	dw DATA_0FE3B6
	dw DATA_0FE432
	dw DATA_0FE4AE
	dw DATA_0FE52A
	dw DATA_0FE5A6
	dw DATA_0FE622
	dw DATA_0FE69E
	dw DATA_0FE71A
	dw DATA_0FE796
	dw DATA_0FE812
	dw DATA_0FE866
	dw DATA_0FE8CD
	dw DATA_0FE949
	dw DATA_0FE9C5
	dw DATA_0FEA41
	dw DATA_0FEABD
	dw DATA_0FEB39
	dw DATA_0FEBB5

DATA_0F8232:
	db $00,$23,"CITY ZONE:HONOLULU",$00
	db $F4,$01,$00,$80,$8A,$33,$07,$64,$00,$00,$08,$00,$00,$00,$00,$54
	db $10,$FF,$60,$02,$00,$12,$60,$02,$01,$12,$60,$02,$02,$12,$60,$02
	db $03,$12,$40,$02,$40,$32,$40,$02,$C0,$23,$40,$02,$C1,$44,$40,$02
	db $41,$11,$40,$02,$42,$14,$40,$02,$C2,$41,$20,$03,$18,$33,$01,$80
	db $03,$29,$33,$02,$80,$03,$29,$33,$01,$80,$03,$29,$33,$08,$80,$03
	db $29,$33,$04,$A0,$00

DATA_0F829C:
	db $00,$18,"SEATTLE",$00
	db $F4,$01,$00,$80,$8A,$34,$07,$00,$00,$64,$08,$00,$00,$00,$11,$43
	db $10,$FF,$60,$02,$00,$12,$60,$02,$01,$12,$60,$02,$02,$12,$60,$02
	db $03,$12,$40,$02,$00,$13,$40,$02,$00,$53,$40,$02,$81,$34,$40,$02
	db $00,$31,$40,$02,$00,$35,$40,$02,$43,$15,$40,$02,$83,$55,$40,$02
	db $C3,$51,$40,$02,$41,$43,$40,$02,$C1,$23,$40,$02,$01,$32,$40,$02
	db $00,$33,$20,$03,$18,$44,$01,$80,$03,$29,$44,$08,$80,$03,$29,$54
	db $01,$80,$03,$29,$44,$02,$80,$03,$29,$44,$01,$A0,$00

DATA_0F8313:
	db $00,$1A,"VANCOUVER",$00
	db $F4,$01,$00,$80,$8A,$35,$07,$00,$64,$00,$08,$00,$00,$00,$00,$43
	db $10,$FF,$60,$02,$00,$12,$60,$02,$01,$12,$60,$02,$02,$12,$60,$02
	db $03,$12,$40,$02,$C1,$33,$40,$02,$41,$35,$40,$02,$41,$31,$40,$02
	db $42,$51,$40,$02,$62,$55,$40,$02,$82,$15,$40,$02,$C2,$11,$40,$02
	db $83,$44,$40,$02,$03,$52,$40,$02,$03,$24,$40,$02,$03,$32,$20,$03
	db $18,$22,$01,$80,$03,$29,$22,$02,$80,$03,$29,$22,$04,$80,$03,$29
	db $21,$02,$80,$03,$29,$22,$01,$A0,$00

DATA_0F8388:
	db $00,$1A,"AMSTERDAM",$00
	db $F4,$01,$00,$80,$8A,$36,$07,$64,$00,$00,$08,$00,$00,$00,$00,$43
	db $10,$FF,$60,$02,$00,$12,$60,$02,$01,$12,$60,$02,$02,$12,$60,$02
	db $03,$12,$40,$02,$43,$22,$40,$02,$43,$44,$40,$02,$83,$42,$40,$02
	db $03,$24,$40,$02,$C3,$55,$40,$02,$03,$51,$40,$02,$43,$11,$40,$02
	db $83,$15,$40,$02,$83,$32,$40,$02,$C3,$23,$40,$02,$03,$34,$40,$02
	db $43,$43,$20,$03,$18,$33,$01,$80,$03,$29,$33,$02,$80,$03,$29,$33
	db $04,$80,$03,$29,$33,$08,$80,$03,$29,$23,$04,$A0,$00

DATA_0F8401:
	db $00,$19,"YOKOHAMA",$00
	db $F4,$01,$00,$80,$8A,$37,$07,$64,$00,$00,$08,$00,$11,$11,$00,$10
	db $32,$FF,$60,$02,$00,$12,$60,$02,$01,$12,$60,$02,$02,$12,$60,$02
	db $03,$12,$40,$02,$C5,$24,$40,$02,$C5,$41,$40,$02,$85,$44,$20,$03
	db $18,$22,$01,$80,$03,$29,$22,$02,$80,$03,$29,$22,$04,$80,$03,$29
	db $22,$08,$80,$03,$29,$22,$01,$A0,$00

DATA_0F8455:
	db $00,$1B,"CITY BANK",$00
	db $14,$00,$00,$01,$8A,$38,$05,$22,$21,$21,$08,$11,$11,$11,$11,$10
	db $10,$FF,$60,$02,$40,$13,$60,$02,$41,$13,$60,$02,$42,$13,$60,$02
	db $43,$13,$20,$03,$10,$23,$00,$20,$03,$10,$33,$00,$20,$03,$10,$43
	db $00,$20,$03,$10,$32,$00,$20,$03,$10,$34,$00,$A0,$00

DATA_0F849E:
	db $00,$1C,"DESERT ZONE",$00
	db $F4,$01,$00,$80,$8A,$39,$07,$64,$00,$00,$08,$11,$0A,$0A,$2F,$00
	db $10,$FF,$60,$02,$40,$11,$60,$02,$41,$11,$60,$02,$42,$11,$60,$02
	db $43,$11,$40,$02,$43,$23,$40,$02,$83,$66,$40,$02,$C3,$22,$40,$02
	db $05,$55,$20,$03,$18,$43,$01,$80,$03,$29,$43,$02,$80,$03,$29,$43
	db $04,$80,$03,$29,$42,$02,$80,$03,$29,$43,$01,$A0,$00

DATA_0F84F9:
	db $00,$17,"SAHARA",$00
	db $F4,$01,$00,$80,$8A,$3A,$07,$00,$00,$64,$08,$11,$0A,$0A,$1F,$10
	db $10,$FF,$60,$02,$C0,$66,$60,$02,$C1,$66,$60,$02,$C2,$66,$60,$02
	db $C3,$66,$40,$02,$43,$22,$40,$02,$44,$23,$40,$02,$45,$24,$40,$02
	db $41,$54,$20,$03,$18,$44,$01,$80,$03,$29,$44,$08,$80,$03,$29,$54
	db $01,$80,$03,$29,$45,$08,$80,$03,$29,$44,$01,$A0,$00

DATA_0F854F:
	db $00,$17,"MOJAVE",$00
	db $F4,$01,$00,$80,$8A,$3B,$07,$64,$00,$00,$08,$11,$0A,$0A,$1F,$10
	db $10,$FF,$60,$02,$C0,$61,$60,$02,$C1,$61,$60,$02,$C2,$61,$60,$02
	db $C3,$61,$40,$02,$84,$66,$40,$02,$44,$11,$40,$02,$C5,$25,$40,$02
	db $05,$55,$20,$03,$18,$44,$01,$80,$03,$29,$54,$01,$80,$03,$29,$43
	db $02,$80,$03,$29,$44,$01,$80,$03,$29,$44,$02,$A0,$00

DATA_0F85A5:
	db $00,$15,"GOBI",$00
	db $F4,$01,$00,$80,$8A,$3C,$08,$00,$64,$00,$05,$11,$0A,$0A,$1F,$10
	db $10,$FF,$60,$02,$C0,$66,$60,$02,$C1,$66,$60,$02,$C2,$66,$60,$02
	db $C3,$66,$40,$02,$04,$41,$40,$02,$05,$44,$40,$02,$45,$16,$40,$02
	db $44,$23,$20,$03,$18,$43,$01,$80,$03,$29,$42,$02,$80,$03,$29,$53
	db $01,$80,$03,$29,$43,$02,$80,$03,$29,$43,$01,$A0,$00

DATA_0F85F9:
	db $00,$1D,"DEATH VALLEY",$00
	db $F4,$01,$00,$80,$8A,$3D,$05,$64,$00,$00,$08,$00,$00,$00,$00,$00
	db $64,$FF,$60,$02,$00,$61,$60,$02,$01,$61,$60,$02,$02,$61,$60,$02
	db $03,$61,$40,$02,$04,$11,$40,$02,$C4,$23,$40,$02,$46,$36,$40,$02
	db $46,$32,$20,$03,$18,$43,$01,$80,$03,$29,$42,$02,$80,$03,$29,$53
	db $01,$80,$03,$29,$43,$02,$80,$03,$29,$43,$01,$A0,$00

DATA_0F8655:
	db $00,$17,"OASIS",$00
	db $19,$00,$00,$01,$8A,$3E,$05,$22,$21,$21,$08,$11,$11,$11,$11,$10
	db $10,$FF,$60,$02,$40,$13,$60,$02,$41,$13,$60,$02,$42,$13,$60,$02
	db $43,$13,$20,$03,$10,$23,$00,$20,$03,$10,$24,$00,$20,$03,$10,$34
	db $00,$20,$03,$10,$33,$00,$20,$03,$10,$32,$00,$20,$03,$10,$22,$00
	db $20,$03,$10,$42,$00,$20,$03,$10,$43,$00,$20,$03,$10,$44,$00,$A0
	db $00

DATA_0F86AE:
	db $00,$1E,"ASTEROID ZONE",$00
	db $C8,$00,$00,$80,$8A,$3F,$07,$64,$00,$00,$08,$11,$0A,$0A,$2B,$0A
	db $0A,$FF,$60,$02,$40,$14,$60,$02,$41,$14,$60,$02,$42,$14,$60,$02
	db $43,$14,$40,$02,$43,$26,$40,$02,$83,$66,$40,$02,$C3,$62,$40,$02
	db $03,$22,$40,$02,$04,$45,$40,$02,$84,$43,$20,$03,$18,$44,$01,$80
	db $03,$29,$43,$02,$80,$03,$29,$44,$04,$80,$03,$29,$44,$02,$80,$03
	db $29,$44,$01,$A0,$00

DATA_0F8713:
	db $00,$17,"CHIRON",$00
	db $C8,$00,$00,$80,$8A,$40,$07,$00,$00,$64,$08,$11,$11,$11,$11,$10
	db $10,$FF,$60,$02,$40,$14,$60,$02,$41,$14,$60,$02,$42,$14,$60,$02
	db $43,$14,$40,$02,$44,$17,$40,$02,$C4,$43,$40,$02,$45,$26,$40,$02
	db $C4,$71,$40,$02,$C5,$62,$40,$02,$44,$45,$20,$03,$18,$44,$01,$80
	db $03,$29,$43,$02,$80,$03,$29,$44,$04,$80,$03,$29,$44,$02,$80,$03
	db $29,$44,$01,$A0,$00

DATA_0F8771:
	db $00,$19,"PHAETHON",$00
	db $C8,$00,$00,$80,$8A,$41,$07,$64,$00,$00,$08,$11,$0A,$0A,$1F,$10
	db $10,$FF,$60,$02,$40,$14,$60,$02,$41,$14,$60,$02,$42,$14,$60,$02
	db $43,$14,$40,$02,$C5,$77,$40,$02,$44,$17,$40,$02,$C4,$71,$40,$02
	db $46,$26,$40,$02,$45,$11,$40,$02,$C6,$62,$20,$03,$18,$44,$01,$80
	db $03,$29,$43,$02,$80,$03,$29,$44,$04,$80,$03,$29,$44,$02,$80,$03
	db $29,$44,$01,$A0,$00

DATA_0F87D1:
	db $00,$16,"VESTA",$00
	db $C8,$00,$00,$80,$8A,$42,$07,$00,$64,$00,$08,$11,$0A,$0A,$1F,$10
	db $10,$FF,$60,$02,$40,$14,$60,$02,$41,$14,$60,$02,$42,$14,$60,$02
	db $43,$14,$40,$02,$45,$17,$40,$02,$05,$11,$40,$02,$86,$35,$40,$02
	db $04,$22,$40,$02,$06,$53,$40,$02,$84,$66,$40,$02,$85,$77,$40,$02
	db $C5,$71,$20,$03,$18,$44,$01,$80,$03,$29,$43,$02,$80,$03,$29,$44
	db $04,$80,$03,$29,$44,$02,$80,$03,$29,$44,$01,$A0,$00

DATA_0F8836:
	db $00,$16,"CERES",$00
	db $FA,$00,$00,$80,$8A,$43,$07,$64,$00,$00,$08,$00,$00,$00,$00,$00
	db $64,$FF,$60,$02,$40,$14,$60,$02,$41,$14,$60,$02,$42,$14,$60,$02
	db $43,$14,$40,$02,$05,$22,$40,$02,$45,$26,$40,$02,$46,$35,$40,$02
	db $C6,$53,$40,$02,$C6,$62,$40,$02,$86,$66,$40,$02,$87,$77,$40,$02
	db $C7,$71,$40,$02,$07,$11,$40,$02,$47,$17,$20,$03,$18,$44,$01,$80
	db $03,$29,$43,$02,$80,$03,$29,$44,$04,$80,$03,$29,$44,$02,$80,$03
	db $29,$44,$01,$A0,$00

DATA_0F88A3:
	db $00,$1F,"ASTEROID GOLD",$00
	db $1E,$00,$00,$01,$8A,$44,$05,$22,$21,$21,$08,$11,$11,$11,$11,$10
	db $10,$FF,$60,$02,$40,$14,$60,$02,$41,$14,$60,$02,$42,$14,$60,$02
	db $43,$14,$20,$03,$10,$44,$00,$20,$03,$10,$54,$00,$20,$03,$10,$34
	db $00,$20,$03,$10,$43,$00,$20,$03,$10,$45,$00,$20,$03,$10,$55,$00
	db $20,$03,$10,$53,$00,$20,$03,$10,$33,$00,$20,$03,$10,$35,$00,$20
	db $03,$10,$24,$00,$20,$03,$10,$42,$00,$20,$03,$10,$64,$00,$20,$03
	db $0C,$46,$00,$A0,$00

DATA_0F8918:
	db $00,$21,"ICE ZONE: TUNDRA",$00
	db $C8,$00,$00,$80,$8A,$45,$07,$64,$00,$00,$08,$11,$0A,$0A,$1F,$10
	db $10,$FF,$60,$02,$40,$15,$60,$02,$41,$15,$60,$02,$42,$15,$60,$02
	db $43,$15,$40,$02,$46,$18,$40,$02,$C6,$91,$40,$02,$04,$43,$40,$02
	db $84,$66,$40,$02,$85,$98,$40,$02,$05,$11,$40,$02,$C7,$46,$40,$02
	db $47,$63,$20,$03,$18,$55,$01,$80,$03,$29,$65,$01,$80,$03,$29,$55
	db $02,$80,$03,$29,$55,$01,$80,$03,$29,$54,$02,$A0,$00

DATA_0F8988:
	db $00,$1E,"ARCTIC CIRCLE",$00
	db $F4,$01,$00,$80,$8A,$46,$07,$00,$00,$64,$08,$11,$0A,$0A,$1F,$10
	db $10,$FF,$60,$02,$40,$15,$60,$02,$41,$15,$60,$02,$42,$15,$60,$02
	db $43,$15,$40,$02,$46,$18,$40,$02,$C6,$91,$40,$02,$04,$43,$40,$02
	db $84,$66,$40,$02,$85,$98,$40,$02,$05,$11,$40,$02,$47,$46,$40,$02
	db $C7,$63,$40,$02,$44,$52,$40,$02,$46,$52,$20,$03,$18,$55,$01,$80
	db $03,$29,$65,$01,$80,$03,$29,$55,$02,$80,$03,$29,$55,$01,$80,$03
	db $29,$54,$02,$A0,$00

DATA_0F89FD:
	db $00,$1B,"ANTARCTICA",$00
	db $F4,$01,$00,$80,$8A,$47,$07,$64,$00,$00,$08,$11,$0A,$0A,$1F,$10
	db $10,$FF,$60,$02,$40,$15,$60,$02,$41,$15,$60,$02,$42,$15,$60,$02
	db $43,$15,$40,$02,$46,$18,$40,$02,$C6,$91,$40,$02,$44,$52,$40,$02
	db $C4,$57,$40,$02,$85,$98,$40,$02,$05,$11,$40,$02,$46,$27,$40,$02
	db $C6,$82,$40,$02,$47,$53,$40,$02,$C7,$56,$20,$03,$18,$55,$01,$80
	db $03,$29,$65,$01,$80,$03,$29,$55,$02,$80,$03,$29,$55,$01,$80,$03
	db $29,$54,$02,$A0,$00

DATA_0F8A6F:
	db $00,$18,"CYBERIA",$00
	db $F4,$01,$00,$80,$8A,$48,$07,$00,$64,$00,$08,$11,$11,$11,$11,$10
	db $10,$FF,$60,$02,$40,$15,$60,$02,$41,$15,$60,$02,$42,$15,$60,$02
	db $43,$15,$40,$02,$46,$18,$40,$02,$C6,$91,$40,$02,$87,$44,$40,$02
	db $87,$98,$40,$02,$07,$66,$40,$02,$07,$11,$40,$02,$47,$46,$40,$02
	db $C7,$63,$40,$02,$07,$27,$40,$02,$07,$81,$20,$03,$18,$55,$01,$80
	db $03,$29,$65,$01,$80,$03,$29,$55,$02,$80,$03,$29,$55,$01,$80,$03
	db $29,$54,$02,$A0,$00

DATA_0F8ADE:
	db $00,$1B,"ICE SCREAM",$00
	db $F4,$01,$00,$80,$8A,$49,$07,$64,$00,$00,$08,$00,$00,$00,$00,$00
	db $64,$FF,$60,$02,$40,$15,$60,$02,$41,$15,$60,$02,$42,$15,$60,$02
	db $43,$15,$40,$02,$07,$91,$40,$02,$07,$57,$40,$02,$89,$22,$40,$02
	db $07,$27,$40,$02,$87,$35,$40,$02,$07,$81,$40,$02,$07,$11,$40,$02
	db $07,$74,$40,$02,$49,$46,$40,$02,$C9,$63,$40,$02,$87,$98,$40,$02
	db $07,$18,$20,$03,$18,$55,$01,$80,$03,$29,$65,$01,$80,$03,$29,$55
	db $02,$80,$03,$29,$55,$01,$80,$03,$29,$54,$02,$A0,$00

DATA_0F8B58:
	db $00,$1F,"FROZEN ASSETS",$00
	db $23,$00,$00,$01,$8A,$4A,$05,$22,$21,$21,$08,$11,$11,$11,$11,$10
	db $10,$FF,$60,$02,$40,$14,$60,$02,$41,$14,$60,$02,$42,$14,$60,$02
	db $43,$14,$20,$03,$10,$44,$00,$20,$03,$10,$43,$00,$20,$03,$10,$53
	db $00,$20,$03,$10,$54,$00,$20,$03,$10,$55,$00,$20,$03,$10,$45,$00
	db $20,$03,$10,$35,$00,$20,$03,$10,$34,$00,$20,$03,$10,$33,$00,$20
	db $03,$10,$42,$00,$20,$03,$10,$64,$00,$20,$03,$10,$46,$00,$20,$03
	db $10,$24,$00,$20,$03,$10,$62,$00,$20,$03,$10,$66,$00,$20,$03,$0F
	db $77,$00,$20,$03,$0C,$71,$01,$A0,$00

DATA_0F8BE1:
	db $00,$21,"SPACE ZONE: NOVA",$00
	db $F4,$01,$00,$80,$8A,$4B,$07,$64,$00,$00,$08,$11,$0A,$0A,$1F,$10
	db $10,$FF,$60,$02,$00,$12,$60,$02,$01,$12,$60,$02,$02,$12,$60,$02
	db $03,$12,$40,$02,$07,$42,$40,$02,$07,$24,$20,$03,$18,$33,$01,$80
	db $03,$29,$33,$02,$80,$03,$29,$33,$04,$80,$03,$29,$32,$02,$80,$03
	db $29,$23,$04,$A0,$00

DATA_0F8C39:
	db $00,$17,"QUASAR",$00
	db $F4,$01,$00,$80,$8A,$4C,$07,$00,$00,$64,$08,$11,$0A,$0A,$1F,$10
	db $10,$FF,$60,$02,$00,$12,$60,$02,$01,$12,$60,$02,$02,$12,$60,$02
	db $03,$12,$40,$02,$89,$33,$40,$02,$47,$25,$40,$02,$C7,$41,$40,$02
	db $87,$54,$20,$03,$18,$44,$01,$80,$03,$29,$54,$01,$80,$03,$29,$44
	db $02,$80,$03,$29,$44,$01,$80,$03,$29,$44,$08,$A0,$00

DATA_0F8C8F:
	db $00,$17,"NEBULA",$00
	db $F4,$01,$00,$80,$8A,$4D,$07,$64,$00,$00,$08,$11,$0A,$0A,$1F,$10
	db $10,$FF,$60,$02,$00,$12,$60,$02,$01,$12,$60,$02,$02,$12,$60,$02
	db $03,$12,$40,$02,$4A,$35,$40,$02,$CA,$53,$40,$02,$09,$33,$20,$03
	db $18,$34,$01,$80,$03,$29,$33,$02,$80,$03,$29,$34,$04,$80,$03,$29
	db $34,$02,$80,$03,$29,$34,$01,$A0,$00

DATA_0F8CE1:
	db $00,$1C,"WHITE DWARF",$00
	db $F4,$01,$00,$80,$8A,$4E,$07,$00,$00,$64,$08,$11,$0A,$0A,$1F,$10
	db $10,$FF,$60,$02,$00,$11,$60,$02,$01,$11,$60,$02,$02,$11,$60,$02
	db $03,$11,$40,$02,$0B,$15,$40,$02,$0B,$51,$40,$02,$0B,$55,$20,$03
	db $18,$33,$01,$80,$03,$29,$33,$04,$80,$03,$29,$32,$02,$80,$03,$29
	db $23,$04,$80,$03,$29,$33,$02,$A0,$00

DATA_0F8D38:
	db $00,$1B,"BLACK HOLE",$00
	db $F4,$01,$00,$80,$8A,$4F,$07,$64,$00,$00,$08,$00,$00,$00,$00,$00
	db $64,$FF,$60,$02,$40,$11,$60,$02,$41,$11,$60,$02,$42,$11,$60,$02
	db $43,$11,$40,$02,$08,$43,$40,$02,$88,$22,$20,$03,$18,$33,$01,$80
	db $03,$29,$C2,$08,$80,$03,$29,$C2,$04,$80,$03,$29,$C2,$02,$80,$03
	db $29,$C2,$01,$80,$03,$29,$34,$08,$80,$03,$29,$33,$04,$80,$03,$29
	db $32,$02,$80,$03,$29,$23,$04,$A0,$00

DATA_0F8D9E:
	db $00,$19,"POLARIS",$00
	db $28,$00,$00,$01,$8A,$50,$05,$22,$21,$21,$08,$11,$11,$11,$11,$10
	db $10,$FF,$60,$02,$40,$15,$60,$02,$41,$15,$60,$02,$42,$15,$60,$02
	db $43,$15,$20,$03,$10,$25,$00,$20,$03,$10,$35,$00,$20,$03,$10,$45
	db $00,$20,$03,$10,$55,$00,$20,$03,$10,$65,$00,$20,$03,$10,$75,$00
	db $20,$03,$10,$85,$00,$20,$03,$10,$64,$00,$20,$03,$10,$54,$00,$20
	db $03,$10,$53,$00,$20,$03,$10,$52,$00,$20,$03,$10,$58,$00,$20,$03
	db $10,$56,$00,$20,$03,$10,$57,$00,$20,$03,$10,$44,$00,$20,$03,$10
	db $46,$00,$20,$03,$10,$66,$00,$20,$03,$0C,$95,$01,$20,$03,$08,$59
	db $00,$20,$03,$0F,$51,$00,$A0,$00

DATA_0F8E30:
	db $00,$1A,"MARS ZONE",$00
	db $F4,$01,$00,$80,$8A,$51,$07,$43,$00,$21,$07,$11,$0A,$0A,$2F,$00
	db $10,$FF,$60,$02,$00,$A8,$60,$02,$01,$A8,$60,$02,$02,$A8,$60,$02
	db $03,$A8,$40,$02,$07,$71,$40,$02,$07,$11,$40,$02,$07,$38,$40,$02
	db $47,$3A,$40,$02,$47,$34,$40,$02,$C7,$97,$40,$02,$C7,$93,$40,$02
	db $07,$26,$40,$02,$47,$56,$40,$02,$07,$74,$20,$03,$18,$65,$01,$80
	db $03,$29,$64,$02,$80,$03,$29,$65,$04,$80,$03,$29,$65,$02,$80,$03
	db $29,$65,$01,$A0,$00

DATA_0F8EA1:
	db $00,$15,"ARES",$00
	db $F4,$01,$00,$80,$8A,$52,$07,$28,$14,$28,$08,$11,$0A,$0A,$2F,$00
	db $10,$FF,$60,$02,$00,$A8,$60,$02,$01,$A8,$60,$02,$02,$A8,$60,$02
	db $03,$A8,$40,$02,$47,$35,$40,$02,$08,$16,$40,$02,$88,$63,$40,$02
	db $C8,$21,$40,$02,$47,$93,$40,$02,$C7,$57,$40,$02,$47,$29,$40,$02
	db $87,$86,$40,$02,$C7,$8A,$40,$02,$07,$A1,$20,$03,$18,$66,$01,$80
	db $03,$29,$66,$01,$80,$03,$29,$66,$02,$80,$03,$29,$76,$01,$80,$03
	db $29,$65,$02,$A0,$00

DATA_0F8F0D:
	db $00,$18,"BARSUME",$00
	db $F4,$01,$00,$80,$8A,$53,$07,$32,$00,$32,$08,$11,$0A,$0A,$2F,$00
	db $10,$FF,$60,$02,$40,$99,$60,$02,$41,$99,$60,$02,$42,$99,$60,$02
	db $43,$99,$40,$02,$47,$78,$40,$02,$07,$19,$40,$02,$47,$27,$40,$02
	db $07,$34,$40,$02,$09,$41,$40,$02,$C9,$84,$40,$02,$09,$25,$40,$02
	db $48,$93,$40,$02,$48,$46,$40,$02,$88,$12,$20,$03,$18,$65,$01,$80
	db $03,$29,$65,$02,$80,$03,$29,$75,$01,$80,$03,$29,$65,$08,$80,$03
	db $29,$65,$01,$A0,$00

DATA_0F8F7C:
	db $00,$1B,"RED PLANET",$00
	db $F4,$01,$00,$80,$8A,$54,$05,$22,$21,$21,$08,$11,$0A,$0A,$2F,$00
	db $10,$FF,$60,$02,$C0,$A2,$60,$02,$C1,$A2,$60,$02,$C2,$A2,$60,$02
	db $C3,$A2,$40,$02,$48,$94,$40,$02,$48,$54,$40,$02,$88,$99,$40,$02
	db $48,$41,$40,$02,$89,$4A,$40,$02,$C9,$25,$40,$02,$4A,$11,$40,$02
	db $8A,$2A,$40,$02,$0A,$79,$20,$03,$18,$65,$01,$80,$03,$29,$65,$02
	db $80,$03,$29,$65,$04,$80,$03,$29,$65,$08,$80,$03,$29,$65,$01,$A0
	db $00

DATA_0F8FEA:
	db $00,$1D,"OLYMPUS MONS",$00
	db $F4,$01,$00,$80,$8A,$55,$07,$64,$00,$00,$07,$00,$00,$00,$00,$00
	db $64,$FF,$60,$02,$20,$41,$60,$02,$21,$41,$60,$02,$22,$41,$60,$02
	db $23,$41,$40,$02,$0B,$34,$40,$02,$0B,$93,$40,$02,$0B,$99,$40,$02
	db $0A,$13,$40,$02,$08,$19,$40,$02,$4A,$81,$40,$02,$48,$4A,$40,$02
	db $CC,$96,$20,$03,$18,$66,$01,$80,$03,$29,$66,$02,$80,$03,$29,$66
	db $04,$80,$03,$29,$66,$01,$80,$03,$29,$65,$02,$A0,$00

DATA_0F9056:
	db $00,$22,"PLAIN OF ELYSIUM",$00
	db $2D,$00,$00,$01,$8A,$56,$05,$22,$21,$21,$08,$11,$11,$11,$11,$10
	db $10,$FF,$60,$02,$40,$15,$60,$02,$41,$15,$60,$02,$42,$15,$60,$02
	db $43,$15,$20,$03,$10,$55,$00,$20,$03,$10,$45,$00,$20,$03,$10,$35
	db $00,$20,$03,$10,$25,$00,$20,$03,$10,$65,$00,$20,$03,$10,$75,$00
	db $20,$03,$10,$85,$00,$20,$03,$10,$56,$00,$20,$03,$10,$57,$00,$20
	db $03,$10,$58,$00,$20,$03,$10,$54,$00,$20,$03,$10,$53,$00,$20,$03
	db $10,$52,$00,$20,$03,$10,$64,$00,$20,$03,$10,$66,$00,$20,$03,$10
	db $44,$00,$20,$03,$10,$46,$00,$20,$03,$10,$51,$00,$20,$03,$10,$95
	db $00,$20,$03,$10,$59,$00,$20,$03,$0F,$19,$00,$20,$03,$02,$99,$01
	db $20,$03,$0C,$91,$01,$A0,$00

DATA_0F9100:
	db $00,$20,"STAR ZONE: VEGA",$00
	db $2C,$01,$00,$80,$8A,$57,$07,$44,$10,$10,$08,$11,$0A,$0A,$2F,$00
	db $10,$FF,$60,$02,$40,$16,$60,$02,$41,$16,$60,$02,$42,$16,$60,$02
	db $43,$16,$40,$02,$CA,$B1,$40,$02,$4B,$2A,$40,$02,$8B,$69,$40,$02
	db $0B,$63,$40,$02,$69,$48,$40,$02,$E9,$84,$40,$02,$8A,$BB,$40,$02
	db $09,$99,$40,$02,$4A,$22,$40,$02,$CA,$AA,$20,$03,$18,$66,$01,$80
	db $03,$29,$66,$08,$80,$03,$29,$66,$01,$80,$03,$29,$66,$02,$80,$03
	db $29,$76,$01,$A0,$00

DATA_0F9177:
	db $00,$16,"ORION",$00
	db $2C,$01,$00,$80,$8A,$58,$07,$44,$10,$11,$08,$11,$0A,$0A,$2F,$00
	db $10,$FF,$60,$02,$40,$16,$60,$02,$41,$16,$60,$02,$42,$16,$60,$02
	db $43,$16,$40,$02,$4B,$22,$40,$02,$4B,$2A,$40,$02,$09,$99,$40,$02
	db $48,$69,$40,$02,$69,$48,$40,$02,$E9,$84,$40,$02,$09,$33,$40,$02
	db $C8,$56,$40,$02,$0A,$AA,$40,$02,$48,$63,$40,$02,$48,$76,$40,$02
	db $0A,$A2,$20,$03,$18,$66,$01,$80,$03,$29,$66,$08,$80,$03,$29,$66
	db $01,$80,$03,$29,$66,$02,$80,$03,$29,$76,$01,$A0,$00

DATA_0F91EC:
	db $00,$17,"ALTAIR",$00
	db $2C,$01,$00,$80,$8A,$59,$05,$44,$10,$10,$04,$11,$0A,$0A,$2F,$00
	db $10,$FF,$60,$02,$40,$16,$60,$02,$41,$16,$60,$02,$42,$16,$60,$02
	db $43,$16,$40,$02,$CA,$B1,$40,$02,$48,$63,$40,$02,$8A,$BB,$40,$02
	db $48,$69,$40,$02,$69,$48,$40,$02,$E9,$84,$40,$02,$08,$A2,$40,$02
	db $88,$23,$40,$02,$0C,$A9,$40,$02,$8C,$2A,$20,$03,$18,$66,$01,$80
	db $03,$29,$66,$08,$80,$03,$29,$66,$01,$80,$03,$29,$66,$02,$80,$03
	db $29,$76,$01,$A0,$00

DATA_0F925A:
	db $00,$16,"MIZAR",$00
	db $2C,$01,$00,$80,$8A,$5A,$05,$44,$10,$10,$04,$11,$0A,$0A,$2F,$00
	db $10,$FF,$60,$02,$40,$16,$60,$02,$41,$16,$60,$02,$42,$16,$60,$02
	db $43,$16,$40,$02,$CA,$B1,$40,$02,$48,$63,$40,$02,$8A,$BB,$40,$02
	db $48,$69,$40,$02,$8C,$2A,$40,$02,$0D,$84,$40,$02,$08,$A2,$40,$02
	db $88,$23,$20,$03,$18,$66,$01,$80,$03,$29,$66,$08,$80,$03,$29,$66
	db $01,$80,$03,$29,$66,$02,$80,$03,$29,$76,$01,$A0,$00

DATA_0F92BF:
	db $00,$1B,"BETELGEUSE",$00
	db $2C,$01,$00,$80,$8A,$5B,$04,$64,$00,$00,$07,$00,$00,$00,$00,$00
	db $64,$FF,$60,$02,$40,$16,$60,$02,$41,$16,$60,$02,$42,$16,$60,$02
	db $43,$16,$40,$02,$CA,$B1,$40,$02,$48,$63,$40,$02,$8A,$BB,$40,$02
	db $48,$69,$40,$02,$8C,$2A,$40,$02,$4D,$48,$40,$02,$08,$A2,$40,$02
	db $88,$23,$40,$02,$8E,$BB,$40,$02,$0E,$11,$20,$03,$18,$66,$01,$80
	db $03,$29,$66,$08,$80,$03,$29,$66,$01,$80,$03,$29,$66,$02,$80,$03
	db $29,$76,$01,$A0,$00

DATA_0F9331:
	db $00,$22,"1ST VIRTUAL BANK",$00
	db $32,$00,$00,$01,$8A,$5C,$05,$22,$21,$21,$08,$11,$11,$11,$11,$10
	db $10,$FF,$60,$02,$40,$16,$60,$02,$41,$16,$60,$02,$42,$16,$60,$02
	db $43,$16,$20,$03,$10,$26,$00,$20,$03,$10,$36,$00,$20,$03,$10,$46
	db $00,$20,$03,$10,$56,$00,$20,$03,$10,$66,$00,$20,$03,$10,$76,$00
	db $20,$03,$10,$86,$00,$20,$03,$10,$96,$00,$20,$03,$10,$A6,$00,$20
	db $03,$10,$B6,$00,$20,$03,$10,$65,$00,$20,$03,$10,$64,$00,$20,$03
	db $10,$63,$00,$20,$03,$10,$62,$00,$20,$03,$10,$61,$00,$20,$03,$10
	db $67,$00,$20,$03,$10,$68,$00,$20,$03,$10,$69,$00,$20,$03,$10,$6A
	db $00,$20,$03,$10,$6B,$00,$20,$03,$10,$75,$00,$20,$03,$10,$77,$00
	db $20,$03,$10,$57,$00,$20,$03,$10,$55,$00,$20,$03,$05,$99,$00,$20
	db $03,$0F,$93,$00,$20,$03,$02,$33,$01,$20,$03,$0C,$39,$01,$A0,$00

DATA_0F93F4:
	db $00,$1B,"CYBER ZONE",$00
	db $F4,$01,$00,$80,$8A,$5D,$04,$64,$00,$00,$03,$11,$0A,$0A,$2F,$00
	db $10,$FF,$60,$02,$40,$16,$60,$02,$41,$16,$60,$02,$42,$16,$60,$02
	db $43,$16,$40,$02,$88,$B6,$40,$02,$CD,$75,$40,$02,$C8,$7B,$40,$02
	db $48,$41,$20,$03,$18,$66,$01,$80,$03,$29,$65,$02,$80,$03,$29,$66
	db $04,$80,$03,$29,$66,$02,$80,$03,$29,$66,$01,$A0,$00

DATA_0F944E:
	db $00,$1B,"DRONE TOWN",$00
	db $F4,$01,$00,$80,$8A,$5E,$07,$64,$00,$00,$08,$11,$0A,$0A,$2F,$00
	db $10,$FF,$60,$02,$40,$16,$60,$02,$41,$16,$60,$02,$42,$16,$60,$02
	db $43,$16,$40,$02,$CE,$2A,$40,$02,$4E,$A2,$40,$02,$49,$33,$40,$02
	db $4C,$75,$40,$02,$49,$93,$40,$02,$4D,$57,$40,$02,$CA,$99,$40,$02
	db $8A,$39,$20,$03,$18,$66,$01,$80,$03,$29,$65,$02,$80,$03,$29,$66
	db $04,$80,$03,$29,$66,$02,$80,$03,$29,$66,$01,$A0,$00

DATA_0F94B8:
	db $00,$1C,"SMILEYVILLE",$00
	db $F4,$01,$00,$80,$8A,$5F,$04,$64,$00,$00,$03,$11,$0A,$0A,$2F,$00
	db $10,$FF,$60,$02,$40,$16,$60,$02,$41,$16,$60,$02,$42,$16,$60,$02
	db $43,$16,$40,$02,$4E,$AA,$40,$02,$8C,$39,$40,$02,$CE,$22,$40,$02
	db $CF,$75,$40,$02,$4D,$57,$40,$02,$08,$93,$40,$02,$C8,$8A,$20,$03
	db $18,$66,$01,$80,$03,$29,$65,$02,$80,$03,$29,$66,$04,$80,$03,$29
	db $66,$02,$80,$03,$29,$66,$01,$A0,$00

DATA_0F951F:
	db $00,$1D,"CYBER CENTER",$00
	db $F4,$01,$00,$80,$8A,$60,$04,$64,$00,$00,$03,$11,$0A,$0A,$2F,$00
	db $10,$FF,$60,$02,$40,$16,$60,$02,$41,$16,$60,$02,$42,$16,$60,$02
	db $43,$16,$40,$02,$8C,$39,$40,$02,$4F,$57,$40,$02,$0C,$93,$40,$02
	db $CF,$75,$40,$02,$CE,$2A,$40,$02,$CE,$22,$40,$02,$4F,$A2,$40,$02
	db $CF,$2A,$40,$02,$CE,$99,$40,$02,$4E,$33,$40,$02,$0F,$AA,$20,$03
	db $18,$66,$01,$80,$03,$29,$65,$02,$80,$03,$29,$66,$04,$80,$03,$29
	db $66,$02,$80,$03,$29,$66,$01,$A0,$00

DATA_0F9597:
	db $00,$1A,"MEGAPOLIS",$00
	db $F4,$01,$00,$80,$8A,$61,$04,$64,$00,$00,$03,$11,$0A,$0A,$2F,$00
	db $10,$FF,$60,$02,$40,$15,$60,$02,$41,$15,$60,$02,$42,$15,$60,$02
	db $43,$15,$40,$02,$0F,$88,$40,$02,$0E,$33,$40,$02,$8F,$22,$40,$02
	db $0E,$73,$40,$02,$8E,$77,$20,$03,$18,$55,$01,$80,$03,$29,$55,$08
	db $80,$03,$29,$65,$01,$80,$03,$29,$55,$02,$80,$03,$29,$55,$01,$A0
	db $00

DATA_0F95F4:
	db $00,$1F,"MASTER CONTROL",$00
	db $F4,$01,$00,$80,$8A,$62,$02,$64,$00,$00,$03,$00,$00,$00,$21,$21
	db $22,$FF,$60,$02,$40,$16,$60,$02,$41,$16,$60,$02,$42,$16,$60,$02
	db $43,$16,$40,$02,$CB,$92,$40,$02,$50,$55,$40,$02,$08,$39,$40,$02
	db $CD,$A1,$40,$02,$88,$53,$40,$02,$8A,$77,$40,$02,$4E,$7A,$40,$02
	db $4F,$57,$40,$02,$4F,$2A,$80,$03,$29,$64,$02,$80,$03,$29,$65,$04
	db $80,$03,$29,$66,$04,$80,$03,$29,$66,$02,$80,$03,$29,$56,$02,$80
	db $03,$29,$56,$01,$80,$03,$29,$55,$01,$80,$03,$29,$54,$02,$A0,$00

DATA_0F9675:
	db $00,$11,"FIND THE EXIT",$00
	db $F4,$01,$10,$60,$02,$80,$4E,$60,$02,$81,$4E,$60,$02,$82,$4E,$60
	db $02,$83,$4E,$40,$02,$0F,$1D,$40,$02,$08,$37,$40,$02,$0F,$3D,$40
	db $02,$49,$12,$40,$02,$00,$4B,$40,$02,$47,$34,$40,$02,$49,$11,$40
	db $02,$00,$4C,$40,$02,$C8,$35,$40,$02,$0B,$1A,$40,$02,$4A,$3B,$40
	db $02,$4D,$3C,$20,$03,$0F,$49,$00,$20,$03,$02,$48,$01,$20,$03,$02
	db $32,$02,$20,$05,$C8,$22,$02,$85,$97,$20,$03,$0F,$33,$00,$20,$05
	db $CC,$46,$09,$90,$97,$20,$03,$0F,$47,$00,$20,$05,$C8,$45,$01,$9B
	db $97,$20,$05,$C2,$23,$03,$9D,$97,$20,$03,$08,$43,$02,$20,$03,$0E
	db $5B,$00,$80,$04,$26,$17,$01,$40,$80,$06,$E6,$4B,$08,$01,$A8,$97
	db $80,$04,$26,$19,$01,$46,$80,$04,$26,$5B,$08,$09,$80,$04,$26,$69
	db $01,$0E,$80,$04,$26,$67,$01,$13,$80,$04,$26,$65,$01,$18,$80,$04
	db $26,$63,$01,$1D,$80,$04,$26,$61,$01,$22,$80,$04,$26,$41,$08,$27
	db $80,$04,$26,$20,$02,$2C,$80,$04,$26,$11,$01,$31,$80,$04,$26,$13
	db $01,$36,$80,$04,$26,$15,$01,$3B,$80,$03,$24,$55,$08,$80,$05,$E8
	db $13,$02,$BB,$97,$80,$05,$E8,$41,$01,$C2,$97,$80,$05,$E8,$38,$02
	db $C9,$97,$80,$05,$E8,$4B,$04,$DF,$97,$80,$03,$28,$4A,$02,$A0,$00
	db $00,$80,$89,$97,$00,$80,$8D,$97,$00,$40,$0B,$80,$00,$94,$97,$80
	db $00,$98,$97,$40,$00,$0A,$00,$00,$00,$80,$A1,$97,$80,$00,$A5,$97
	db $40,$00,$09,$80,$00,$AC,$97,$80,$00,$B0,$97,$80,$00,$B4,$97,$80
	db $00,$B8,$97,$08,$00,$4A,$80,$00,$BF,$97,$00,$40,$25,$80,$00,$C6
	db $97,$00,$40,$23,$00,$80,$CD,$97,$00,$80,$D1,$97,$00,$80,$D5,$97
	db $00,$80,$D9,$97,$80,$00,$DD,$97,$10,$00,$00,$80,$E3,$97,$10,$00

DATA_0F97E5:
	db $00,$0D,"SHOOTME2S",$00
	db $FA,$00,$10,$60,$02,$80,$4E,$60,$02,$81,$4E,$60,$02,$82,$4E,$60
	db $02,$83,$4E,$40,$02,$00,$4C,$40,$02,$00,$4B,$40,$02,$81,$5A,$40
	db $02,$01,$49,$80,$03,$28,$57,$08,$80,$04,$26,$58,$02,$01,$A0,$00

DATA_0F9821:
	db $00,$10,"MEET ISHOOTU",$00
	db $F4,$01,$10,$60,$02,$80,$4E,$60,$02,$81,$4E,$60,$02,$82,$4E,$60
	db $02,$83,$4E,$40,$02,$00,$4C,$40,$02,$00,$4B,$40,$02,$01,$49,$40
	db $02,$81,$5A,$40,$02,$82,$46,$40,$02,$C2,$57,$40,$02,$02,$55,$80
	db $04,$26,$54,$02,$01,$A0,$00

DATA_0F9867:
	db $00,$11,"MEET ISHOOTU2",$00
	db $F4,$01,$10,$60,$02,$80,$4E,$60,$02,$81,$4E,$60,$02,$82,$4E,$60
	db $02,$83,$4E,$40,$02,$00,$4C,$40,$02,$00,$4B,$40,$02,$01,$49,$40
	db $02,$81,$5A,$40,$02,$82,$46,$40,$02,$C2,$57,$40,$02,$02,$55,$40
	db $02,$43,$24,$40,$02,$03,$23,$40,$02,$03,$53,$80,$04,$26,$23,$01
	db $01,$80,$03,$28,$52,$02,$A0,$00

DATA_0F98BF:
	db $00,$0F,"SHOOT DOORS",$00
	db $F4,$01,$10,$60,$02,$80,$4E,$60,$02,$81,$4E,$60,$02,$82,$4E,$60
	db $02,$83,$4E,$40,$02,$00,$4C,$40,$02,$00,$4B,$40,$02,$01,$49,$40
	db $02,$81,$5A,$40,$02,$82,$46,$40,$02,$C2,$57,$40,$02,$02,$55,$40
	db $02,$83,$52,$40,$02,$C3,$43,$40,$02,$43,$24,$20,$03,$0F,$5C,$00
	db $20,$03,$08,$29,$01,$20,$03,$02,$45,$01,$20,$03,$0C,$27,$02,$80
	db $04,$26,$51,$02,$01,$80,$05,$E7,$4D,$08,$7F,$99,$80,$05,$E7,$59
	db $08,$81,$99,$80,$04,$26,$18,$01,$42,$80,$03,$28,$38,$01,$80,$03
	db $28,$17,$02,$80,$05,$E8,$29,$08,$83,$99,$80,$03,$28,$35,$04,$80
	db $05,$E7,$4B,$08,$89,$99,$80,$05,$E8,$45,$08,$8B,$99,$80,$05,$E8
	db $27,$02,$8D,$99,$80,$05,$E8,$42,$04,$93,$99,$80,$05,$E7,$55,$08
	db $A6,$99,$80,$05,$E7,$52,$02,$A8,$99,$80,$05,$E8,$5A,$02,$AA,$99
	db $A0,$00,$10,$00,$10,$00,$80,$00,$87,$99,$10,$00,$10,$00,$00,$10
	db $80,$00,$91,$99,$00,$10,$00,$80,$97,$99,$00,$80,$9B,$99,$00,$80
	db $9F,$99,$00,$80,$A3,$99,$00,$08,$28,$10,$00,$10,$00,$80,$00,$AE
	db $99,$10,$00

DATA_0F99B0:
	db $00,$0E,"TOUCH PODS",$00
	db $F4,$01,$10,$60,$02,$80,$4E,$60,$02,$81,$4E,$60,$02,$82,$4E,$60
	db $02,$83,$4E,$40,$02,$00,$4D,$40,$02,$01,$58,$40,$02,$81,$57,$40
	db $02,$82,$44,$40,$02,$C2,$43,$40,$02,$01,$4B,$40,$02,$C1,$5A,$40
	db $02,$02,$55,$40,$02,$43,$24,$40,$02,$03,$53,$20,$05,$CE,$4E,$01
	db $32,$9A,$20,$03,$0E,$49,$02,$20,$03,$0E,$46,$03,$80,$05,$E7,$4C
	db $02,$34,$9A,$80,$05,$E7,$4B,$08,$36,$9A,$80,$05,$E7,$59,$08,$38
	db $9A,$80,$04,$26,$14,$04,$01,$80,$05,$E7,$55,$08,$3A,$9A,$80,$03
	db $28,$53,$08,$A0,$00,$00,$11,$10,$00,$10,$00,$10,$00,$10,$00

DATA_0F9A3C:
	db $00,$11,"FLOOR BUTTONS",$00
	db $F4,$01,$10,$60,$02,$80,$4E,$60,$02,$81,$4E,$60,$02,$82,$4E,$60
	db $02,$83,$4E,$40,$02,$82,$5A,$40,$02,$42,$46,$40,$02,$43,$23,$40
	db $02,$83,$55,$40,$02,$00,$4C,$40,$02,$01,$49,$40,$02,$82,$24,$40
	db $02,$C2,$23,$40,$02,$43,$34,$40,$02,$43,$33,$20,$03,$0E,$4D,$04
	db $20,$03,$15,$4B,$00,$20,$03,$15,$58,$00,$80,$03,$21,$4B,$08,$80
	db $03,$21,$57,$08,$80,$04,$26,$24,$01,$01,$80,$03,$28,$52,$02,$A0
	db $00

DATA_0F9AAD:
	db $00,$12,"KEY TO SUCCESS",$00
	db $F4,$01,$10,$60,$02,$80,$4E,$60,$02,$81,$4E,$60,$02,$82,$4E,$60
	db $02,$83,$4E,$40,$02,$43,$11,$40,$02,$C2,$5A,$40,$02,$41,$46,$40
	db $02,$01,$49,$40,$02,$02,$55,$40,$02,$42,$53,$40,$02,$43,$24,$40
	db $02,$43,$23,$40,$02,$83,$57,$40,$02,$82,$59,$20,$03,$0E,$4D,$05
	db $20,$05,$CA,$4C,$00,$23,$9B,$20,$05,$CA,$58,$00,$26,$9B,$80,$03
	db $24,$4B,$08,$80,$03,$24,$57,$80,$80,$04,$26,$14,$04,$01,$80,$03
	db $28,$52,$02,$A0,$00,$00,$40,$0A,$00,$40,$0A

DATA_0F9B29:
	db $00,$0E,"EASY MONEY",$00
	db $F4,$01,$10,$60,$02,$80,$4E,$60,$02,$81,$4E,$60,$02,$82,$4E,$60
	db $02,$83,$4E,$40,$02,$82,$5A,$40,$02,$C3,$34,$40,$02,$43,$43,$40
	db $02,$03,$54,$40,$02,$01,$57,$40,$02,$41,$33,$40,$02,$01,$4B,$40
	db $02,$02,$56,$40,$02,$03,$53,$40,$02,$43,$24,$20,$03,$0E,$4D,$06
	db $20,$03,$15,$4C,$00,$20,$03,$0E,$46,$07,$20,$03,$10,$49,$00,$20
	db $03,$15,$58,$00,$20,$03,$10,$23,$00,$80,$04,$26,$24,$01,$01,$80
	db $03,$28,$52,$02,$80,$03,$21,$4B,$08,$80,$03,$21,$57,$80,$A0,$00

DATA_0F9BA6:
	db $00,$12,"THE FIRST TEST",$00
	db $F4,$01,$10,$60,$02,$80,$48,$60,$02,$81,$48,$60,$02,$82,$48,$60
	db $02,$83,$48,$40,$02,$03,$56,$40,$02,$C3,$45,$40,$02,$82,$32,$40
	db $02,$83,$16,$40,$02,$C2,$22,$40,$02,$42,$11,$40,$02,$82,$36,$40
	db $02,$02,$12,$40,$02,$82,$26,$40,$02,$42,$46,$40,$02,$83,$53,$40
	db $02,$82,$41,$20,$03,$0E,$28,$08,$20,$03,$0E,$13,$09,$20,$03,$0E
	db $47,$0A,$20,$03,$0A,$58,$00,$20,$03,$0C,$38,$01,$20,$03,$15,$31
	db $00,$20,$03,$0E,$37,$0B,$20,$03,$0E,$29,$0C,$20,$03,$10,$43,$00
	db $20,$03,$10,$44,$00,$80,$04,$26,$39,$08,$01,$80,$03,$28,$17,$08
	db $80,$03,$28,$4C,$02,$80,$03,$28,$38,$04,$80,$04,$26,$29,$02,$0A
	db $80,$05,$E8,$28,$02,$A7,$9C,$80,$03,$24,$55,$08,$80,$03,$28,$33
	db $04,$80,$03,$28,$34,$04,$80,$05,$E7,$31,$04,$AD,$9C,$80,$05,$E7
	db $13,$08,$AF,$9C,$80,$03,$28,$18,$04,$80,$05,$E7,$37,$08,$B1,$9C
	db $80,$03,$28,$58,$02,$80,$05,$E7,$14,$02,$B3,$9C,$80,$03,$28,$47
	db $01,$80,$05,$E7,$47,$08,$B5,$9C,$80,$03,$21,$11,$04,$80,$03,$21
	db $22,$08,$80,$03,$21,$32,$08,$80,$05,$E7,$56,$02,$B7,$9C,$A0,$00
	db $80,$00,$AB,$9C,$10,$00,$10,$00,$10,$00,$10,$00,$10,$00,$10,$00
	db $10,$00

DATA_0F9CB9:
	db $00,$0C,"ISHOOTU2",$00
	db $C8,$00,$00,$60,$02,$00,$11,$60,$02,$01,$11,$60,$02,$02,$11,$60
	db $02,$03,$11,$40,$02,$82,$44,$40,$02,$43,$24,$40,$02,$03,$41,$40
	db $02,$81,$14,$40,$02,$03,$22,$40,$02,$43,$21,$80,$04,$26,$33,$04
	db $01,$A0,$00

DATA_0F9CF7:
	db $00,$0D,"FIRST AID",$00
	db $FA,$00,$17,$60,$02,$80,$52,$60,$02,$81,$52,$60,$02,$82,$52,$60
	db $02,$83,$52,$40,$02,$43,$22,$40,$02,$01,$32,$40,$02,$41,$21,$40
	db $02,$42,$31,$40,$02,$42,$33,$40,$02,$82,$44,$40,$02,$83,$13,$40
	db $02,$43,$22,$40,$02,$43,$34,$40,$02,$02,$43,$40,$02,$C2,$42,$40
	db $02,$42,$41,$20,$03,$0E,$51,$0D,$20,$03,$04,$12,$03,$20,$03,$04
	db $24,$03,$20,$03,$10,$11,$00,$80,$05,$E7,$23,$01,$7C,$9D,$80,$05
	db $E7,$14,$08,$7E,$9D,$80,$04,$26,$14,$02,$01,$80,$03,$28,$42,$04
	db $80,$05,$E7,$41,$04,$80,$9D,$A0,$00,$10,$00,$10,$00,$10,$00

DATA_0F9D82:
	db $00,$13,"DRONE TERRITORY",$00
	db $F4,$01,$18,$60,$02,$00,$32,$60,$02,$01,$22,$60,$02,$02,$21,$60
	db $02,$03,$31,$40,$02,$82,$44,$40,$02,$82,$14,$40,$02,$82,$38,$40
	db $02,$82,$28,$40,$02,$82,$1A,$40,$02,$82,$4A,$40,$02,$83,$37,$40
	db $02,$83,$3A,$40,$02,$83,$3B,$40,$02,$83,$2B,$40,$02,$83,$2A,$40
	db $02,$83,$27,$20,$03,$04,$47,$01,$20,$03,$04,$17,$01,$80,$04,$26
	db $2C,$02,$01,$A0,$00

DATA_0F9DE9:
	db $00,$10,"FIND THE KEY",$00
	db $2C,$01,$19,$60,$02,$40,$13,$60,$02,$41,$13,$60,$02,$42,$13,$60
	db $02,$43,$13,$40,$02,$C2,$53,$40,$02,$41,$11,$40,$02,$01,$32,$40
	db $02,$C2,$41,$40,$02,$02,$54,$40,$02,$42,$43,$40,$02,$41,$25,$20
	db $03,$0A,$52,$00,$20,$03,$15,$51,$00,$80,$03,$28,$23,$04,$80,$03
	db $24,$54,$08,$80,$04,$26,$63,$01,$01,$80,$03,$24,$53,$08,$80,$03
	db $24,$43,$04,$80,$05,$E7,$41,$01,$59,$9E,$80,$03,$21,$51,$02,$A0
	db $00,$10,$00

DATA_0F9E5B:
	db $00,$10,"TURKEY SHOOT",$00
	db $F4,$01,$15,$60,$02,$80,$14,$60,$02,$81,$14,$60,$02,$82,$14,$60
	db $02,$83,$14,$40,$02,$44,$15,$40,$02,$C4,$54,$40,$02,$04,$51,$20
	db $03,$15,$12,$00,$20,$03,$0E,$13,$0E,$80,$03,$21,$11,$04,$80,$05
	db $E7,$55,$08,$A7,$9E,$80,$04,$26,$16,$08,$01,$A0,$00,$10,$00

DATA_0F9EA9:
	db $00,$10,"DOOR BUTTONS",$00
	db $90,$01,$01,$60,$02,$80,$16,$60,$02,$81,$16,$60,$02,$82,$16,$60
	db $02,$83,$16,$40,$02,$C3,$61,$40,$02,$83,$63,$40,$02,$43,$22,$40
	db $02,$C3,$55,$40,$02,$03,$52,$40,$02,$83,$25,$40,$02,$43,$56,$40
	db $02,$83,$11,$20,$03,$14,$42,$00,$20,$03,$14,$23,$00,$20,$03,$14
	db $35,$00,$20,$03,$14,$54,$00,$20,$03,$14,$14,$00,$20,$03,$14,$31
	db $00,$20,$03,$14,$46,$00,$20,$03,$14,$63,$00,$80,$04,$26,$73,$01
	db $01,$80,$03,$20,$14,$04,$80,$03,$20,$36,$80,$80,$03,$20,$46,$08
	db $80,$03,$20,$64,$10,$80,$03,$20,$63,$01,$80,$03,$20,$41,$20,$80
	db $03,$20,$31,$02,$80,$03,$20,$13,$40,$A0,$00

DATA_0F9F43:
	db $00,$0D,"FREEZE UP",$00
	db $2C,$01,$19,$60,$02,$00,$11,$60,$02,$01,$11,$60,$02,$02,$11,$60
	db $02,$03,$11,$40,$02,$04,$22,$40,$02,$84,$44,$40,$02,$C4,$42,$40
	db $02,$44,$24,$20,$03,$14,$33,$00,$20,$03,$0E,$12,$0F,$20,$03,$01
	db $32,$64,$80,$03,$28,$13,$02,$80,$03,$20,$23,$02,$80,$03,$20,$32
	db $01,$80,$03,$20,$42,$01,$80,$03,$20,$43,$08,$80,$03,$20,$44,$08
	db $80,$03,$20,$34,$04,$80,$03,$20,$24,$04,$80,$04,$26,$13,$01,$01
	db $80,$03,$20,$35,$80,$80,$03,$20,$53,$10,$80,$03,$20,$31,$20,$80
	db $03,$28,$12,$02,$80,$03,$20,$23,$08,$80,$03,$20,$23,$01,$80,$03
	db $20,$14,$04,$A0,$00

DATA_0F9FD4:
	db $00,$0D,"PROXIMITY",$00
	db $F4,$01,$11,$60,$02,$00,$11,$60,$02,$01,$11,$60,$02,$02,$11,$60
	db $02,$03,$11,$40,$02,$41,$23,$40,$02,$41,$25,$40,$02,$C1,$65,$40
	db $02,$C1,$63,$40,$02,$01,$36,$40,$02,$01,$56,$40,$02,$81,$32,$40
	db $02,$81,$52,$40,$02,$03,$45,$40,$02,$03,$43,$40,$02,$04,$55,$40
	db $02,$04,$53,$20,$03,$0E,$12,$10,$80,$05,$E7,$13,$04,$D8,$A0,$80
	db $05,$E7,$25,$01,$DA,$A0,$80,$05,$E7,$36,$02,$DC,$A0,$80,$05,$E7
	db $57,$08,$DE,$A0,$80,$05,$E7,$65,$04,$E0,$A0,$80,$05,$E7,$73,$01
	db $E2,$A0,$80,$05,$E7,$51,$02,$E4,$A0,$80,$05,$E7,$31,$02,$E6,$A0
	db $80,$05,$E7,$32,$02,$E8,$A0,$80,$05,$E7,$52,$02,$EA,$A0,$80,$05
	db $E7,$54,$08,$EC,$A0,$80,$05,$E7,$33,$02,$EE,$A0,$80,$05,$E7,$34
	db $02,$F0,$A0,$80,$05,$E7,$54,$02,$F2,$A0,$80,$05,$E7,$55,$02,$F4
	db $A0,$80,$05,$E7,$35,$02,$F6,$A0,$80,$05,$E7,$25,$04,$F8,$A0,$80
	db $05,$E7,$23,$04,$FA,$A0,$80,$05,$E7,$63,$01,$FC,$A0,$80,$05,$E7
	db $65,$01,$FE,$A0,$80,$05,$E7,$45,$04,$00,$A1,$80,$05,$E7,$45,$01
	db $02,$A1,$80,$05,$E7,$43,$01,$04,$A1,$80,$05,$E7,$53,$01,$06,$A1
	db $80,$04,$26,$64,$01,$01,$A0,$00,$10,$10,$10,$10,$10,$10,$10,$10
	db $10,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10
	db $10,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10
	db $10,$10,$10,$10,$10,$10,$10,$10

DATA_0FA108:
	db $00,$0C,"GREMLINS",$00
	db $C8,$00,$19,$60,$02,$40,$13,$60,$02,$41,$13,$60,$02,$42,$13,$60
	db $02,$43,$13,$40,$02,$05,$54,$40,$02,$85,$52,$40,$02,$C5,$53,$20
	db $03,$15,$33,$00,$20,$03,$0E,$23,$11,$80,$03,$21,$55,$08,$80,$03
	db $21,$43,$04,$80,$03,$21,$51,$02,$80,$04,$26,$54,$01,$01,$80,$03
	db $28,$52,$02,$80,$03,$28,$53,$02,$A0,$00

DATA_0FA15D:
	db $00,$13,"TEST #2: AMBUSH",$00
	db $F4,$01,$11,$60,$02,$00,$11,$60,$02,$01,$11,$60,$02,$02,$11,$60
	db $02,$03,$11,$40,$02,$04,$71,$40,$02,$04,$77,$40,$02,$04,$37,$40
	db $02,$44,$23,$40,$02,$44,$45,$40,$02,$04,$51,$40,$02,$C4,$63,$40
	db $02,$04,$57,$20,$03,$14,$35,$00,$20,$03,$0E,$57,$12,$20,$03,$14
	db $32,$00,$20,$03,$02,$74,$01,$20,$03,$14,$41,$00,$20,$03,$0E,$52
	db $13,$80,$03,$28,$37,$04,$80,$04,$26,$84,$01,$01,$80,$03,$28,$41
	db $01,$80,$03,$28,$23,$01,$80,$03,$20,$33,$81,$80,$03,$20,$35,$01
	db $80,$03,$28,$52,$02,$80,$03,$20,$43,$01,$80,$03,$28,$55,$02,$80
	db $03,$20,$73,$21,$80,$03,$20,$75,$81,$80,$04,$26,$46,$02,$0A,$80
	db $05,$E8,$47,$04,$16,$A2,$80,$03,$20,$36,$02,$80,$03,$28,$27,$04
	db $80,$03,$20,$45,$01,$A0,$00,$00,$80,$1A,$A2,$80,$00,$1E,$A2,$00
	db $10

DATA_0FA220:
	db $00,$0D,"CAMOFLAGE",$00
	db $90,$01,$19,$60,$02,$00,$11,$60,$02,$01,$11,$60,$02,$02,$11,$60
	db $02,$03,$11,$40,$02,$05,$13,$40,$02,$45,$15,$40,$02,$85,$35,$40
	db $02,$85,$55,$40,$02,$C5,$33,$40,$02,$85,$53,$20,$03,$07,$32,$FF
	db $20,$03,$0E,$12,$14,$80,$04,$26,$24,$01,$01,$80,$05,$E7,$31,$04
	db $7A,$A2,$80,$03,$28,$32,$02,$80,$03,$28,$12,$02,$A0,$00,$10,$00

DATA_0FA27C:
	db $00,$0D,"TELEPORTS",$00
	db $2C,$01,$19,$60,$02,$40,$13,$60,$02,$41,$13,$60,$02,$42,$13,$60
	db $02,$43,$13,$40,$02,$42,$15,$40,$02,$83,$33,$40,$02,$C4,$45,$40
	db $02,$C5,$53,$40,$02,$C5,$43,$20,$03,$17,$25,$11,$20,$03,$17,$55
	db $41,$20,$03,$0E,$23,$15,$80,$03,$28,$54,$02,$80,$03,$28,$25,$04
	db $80,$05,$E7,$34,$02,$00,$A3,$80,$05,$E7,$31,$02,$02,$A3,$80,$05
	db $E7,$51,$02,$04,$A3,$80,$03,$28,$23,$04,$80,$03,$28,$11,$02,$80
	db $03,$28,$31,$04,$80,$03,$28,$43,$01,$80,$05,$E7,$14,$02,$06,$A3
	db $80,$04,$26,$43,$02,$01,$A0,$00,$10,$00,$10,$00,$10,$00,$10,$00

DATA_0FA308:
	db $00,$0A,"WALLYS",$00
	db $F4,$01,$0C,$60,$02,$80,$77,$60,$02,$81,$77,$60,$02,$82,$77,$60
	db $02,$83,$77,$40,$02,$86,$16,$40,$02,$86,$56,$40,$02,$06,$32,$20
	db $03,$0E,$76,$16,$80,$04,$26,$52,$02,$01,$80,$05,$E7,$66,$02,$4B
	db $A3,$80,$05,$E7,$21,$02,$4D,$A3,$A0,$00,$10,$10,$10,$10

DATA_0FA34F:
	db $00,$0E,"WALLYWORLD",$00
	db $F4,$01,$0B,$60,$02,$C0,$77,$60,$02,$C1,$77,$60,$02,$C2,$77,$60
	db $02,$C3,$77,$40,$02,$46,$17,$40,$02,$86,$66,$40,$02,$C6,$71,$40
	db $02,$06,$11,$80,$04,$26,$22,$02,$01,$80,$03,$28,$33,$01,$A0,$00

DATA_0FA38C:
	db $00,$0D,"MOVE FAST",$00
	db $64,$00,$14,$60,$02,$00,$11,$60,$02,$01,$11,$60,$02,$02,$11,$60
	db $02,$03,$11,$40,$02,$02,$23,$40,$02,$82,$33,$40,$02,$82,$45,$40
	db $02,$C2,$43,$40,$02,$42,$25,$40,$02,$C2,$35,$40,$02,$83,$73,$40
	db $02,$83,$62,$40,$02,$03,$51,$40,$02,$43,$52,$40,$02,$06,$41,$40
	db $02,$46,$83,$20,$03,$0A,$44,$00,$20,$03,$15,$72,$00,$20,$03,$0E
	db $12,$17,$80,$04,$26,$83,$04,$01,$80,$05,$E7,$42,$04,$03,$A4,$80
	db $03,$21,$73,$04,$80,$03,$24,$43,$08,$A0,$00,$10,$10

DATA_0FA405:
	db $00,$0F,"BLACK WALLS",$00
	db $F4,$01,$11,$60,$02,$C0,$21,$60,$02,$C1,$21,$60,$02,$C2,$21,$60
	db $02,$C3,$21,$40,$02,$C4,$25,$40,$02,$C5,$43,$40,$02,$C6,$63,$20
	db $03,$15,$53,$00,$20,$03,$0E,$23,$18,$20,$03,$14,$65,$00,$20,$05
	db $CA,$61,$00,$A0,$A4,$80,$04,$26,$45,$02,$01,$80,$03,$28,$35,$04
	db $80,$03,$28,$21,$04,$80,$03,$28,$43,$04,$80,$05,$E9,$45,$04,$A3
	db $A4,$80,$03,$28,$25,$04,$80,$03,$28,$61,$01,$80,$03,$28,$63,$04
	db $80,$03,$28,$55,$04,$80,$03,$28,$47,$01,$80,$05,$E9,$53,$04,$A6
	db $A4,$80,$05,$E9,$65,$04,$AA,$A4,$80,$03,$28,$23,$04,$80,$05,$E9
	db $15,$04,$AD,$A4,$80,$05,$E9,$43,$01,$AF,$A4,$A0,$00,$00,$40,$0A
	db $40,$00,$20,$40,$40,$21,$21,$00,$40,$24,$10,$00,$00,$10

DATA_0FA4B1:
	db $00,$0E,"PROTECTION",$00
	db $F4,$01,$27,$60,$02,$C0,$55,$60,$02,$C1,$55,$60,$02,$C2,$55,$60
	db $02,$C3,$55,$40,$02,$04,$21,$40,$02,$05,$31,$40,$02,$06,$41,$40
	db $02,$05,$14,$40,$02,$04,$13,$40,$02,$06,$23,$40,$02,$C6,$62,$40
	db $02,$06,$51,$40,$02,$44,$15,$40,$02,$04,$12,$40,$02,$06,$11,$20
	db $03,$14,$33,$00,$20,$03,$16,$61,$00,$20,$03,$15,$16,$00,$20,$03
	db $0E,$45,$19,$20,$03,$06,$54,$96,$80,$03,$21,$52,$48,$80,$05,$E7
	db $44,$01,$63,$A5,$80,$04,$26,$11,$08,$01,$80,$03,$28,$61,$02,$80
	db $03,$22,$12,$08,$80,$03,$20,$23,$81,$80,$03,$20,$24,$01,$80,$03
	db $20,$25,$81,$80,$03,$20,$26,$81,$80,$03,$21,$22,$48,$80,$03,$21
	db $32,$48,$80,$03,$21,$42,$48,$80,$05,$E7,$44,$08,$65,$A5,$80,$03
	db $21,$12,$24,$A0,$00,$10,$00,$10,$00

DATA_0FA567:
	db $00,$0E,"GLASS MAZE",$00
	db $96,$00,$19,$60,$02,$40,$13,$60,$02,$41,$13,$60,$02,$42,$13,$60
	db $02,$43,$13,$40,$02,$C4,$45,$40,$02,$04,$25,$40,$02,$04,$33,$40
	db $02,$06,$53,$20,$03,$0E,$23,$1A,$80,$03,$28,$12,$02,$80,$03,$28
	db $32,$02,$80,$03,$28,$52,$02,$80,$04,$26,$45,$02,$01,$80,$05,$E8
	db $45,$01,$C8,$A5,$80,$05,$E8,$23,$04,$CA,$A5,$80,$05,$E7,$15,$04
	db $CC,$A5,$A0,$00,$01,$01,$01,$01,$10,$00

DATA_0FA5CE:
	db $00,$0D,"MINI MAZE",$00
	db $2C,$01,$19,$60,$02,$C0,$21,$60,$02,$C1,$21,$60,$02,$C2,$21,$60
	db $02,$C3,$21,$40,$02,$C4,$54,$40,$02,$44,$31,$40,$02,$C4,$35,$40
	db $02,$01,$15,$40,$02,$C6,$33,$40,$02,$81,$14,$40,$02,$41,$23,$40
	db $02,$C2,$53,$40,$02,$04,$52,$40,$02,$04,$51,$40,$02,$C6,$45,$20
	db $03,$10,$55,$00,$20,$03,$15,$42,$00,$80,$04,$26,$53,$04,$01,$80
	db $03,$21,$53,$08,$80,$03,$28,$21,$04,$80,$03,$21,$53,$01,$80,$05
	db $E8,$23,$04,$65,$A6,$80,$03,$21,$54,$08,$80,$03,$28,$54,$02,$80
	db $05,$E7,$42,$02,$67,$A6,$80,$05,$E7,$41,$02,$69,$A6,$80,$03,$28
	db $51,$01,$80,$05,$E7,$35,$04,$6B,$A6,$A0,$00,$01,$01,$10,$00,$10
	db $00,$10,$00

DATA_0FA66D:
	db $00,$13,"TEST #3: LEVELS",$00
	db $8A,$02,$1A,$60,$02,$80,$53,$60,$02,$81,$53,$60,$02,$82,$53,$60
	db $02,$83,$53,$40,$02,$06,$18,$40,$02,$45,$14,$40,$02,$C5,$54,$40
	db $02,$04,$25,$40,$02,$04,$45,$40,$02,$44,$28,$40,$02,$44,$19,$40
	db $02,$C4,$48,$40,$02,$C4,$59,$40,$02,$06,$58,$40,$02,$06,$3A,$20
	db $03,$14,$36,$00,$20,$03,$0A,$3B,$00,$20,$03,$08,$3C,$02,$20,$03
	db $0E,$4C,$1B,$20,$03,$02,$5C,$01,$80,$03,$20,$26,$08,$80,$03,$20
	db $37,$02,$80,$04,$26,$5C,$02,$01,$80,$05,$E7,$33,$02,$22,$A7,$80
	db $03,$28,$3B,$04,$80,$05,$E7,$3B,$01,$24,$A7,$80,$03,$24,$59,$08
	db $80,$03,$24,$4B,$42,$80,$03,$20,$45,$02,$80,$03,$24,$19,$08,$80
	db $03,$24,$3B,$08,$80,$05,$E8,$2B,$02,$26,$A7,$80,$04,$26,$1C,$04
	db $0A,$A0,$00,$10,$10,$10,$10,$80,$00,$2A,$A7,$80,$00,$2E,$A7,$40
	db $00,$24

DATA_0FA731:
	db $00,$0A,"ROVERS",$00
	db $58,$02,$06,$60,$02,$00,$61,$60,$02,$01,$61,$60,$02,$02,$61,$60
	db $02,$03,$61,$40,$02,$07,$56,$40,$02,$07,$65,$40,$02,$07,$26,$40
	db $02,$07,$12,$40,$02,$07,$33,$20,$03,$14,$16,$00,$20,$03,$15,$21
	db $00,$20,$03,$0E,$62,$1C,$80,$04,$26,$56,$02,$01,$80,$03,$28,$55
	db $02,$80,$03,$28,$22,$08,$80,$05,$E7,$64,$02,$A1,$A7,$80,$05,$E7
	db $36,$01,$A3,$A7,$80,$03,$20,$13,$08,$80,$03,$21,$65,$02,$80,$05
	db $E7,$14,$02,$A5,$A7,$A0,$00,$10,$10,$10,$10,$10,$10

DATA_0FA7A7:
	db $00,$0B,"CHOICES",$00
	db $F4,$01,$1E,$60,$02,$00,$42,$60,$02,$01,$42,$60,$02,$02,$42,$60
	db $02,$03,$42,$40,$02,$07,$62,$40,$02,$07,$66,$40,$02,$07,$22,$40
	db $02,$07,$26,$40,$02,$43,$24,$40,$02,$C3,$64,$40,$02,$C5,$52,$40
	db $02,$C5,$25,$40,$02,$C5,$65,$40,$02,$C5,$23,$20,$03,$0A,$45,$00
	db $20,$03,$14,$54,$00,$20,$03,$15,$34,$00,$20,$03,$06,$46,$64,$80
	db $03,$24,$14,$04,$80,$03,$21,$25,$04,$80,$03,$21,$36,$08,$80,$03
	db $24,$74,$01,$80,$03,$24,$62,$01,$80,$03,$24,$62,$02,$80,$03,$24
	db $66,$08,$80,$03,$24,$66,$01,$80,$03,$24,$22,$02,$80,$03,$24,$22
	db $04,$80,$03,$24,$26,$08,$80,$03,$24,$26,$04,$80,$03,$20,$64,$01
	db $80,$03,$20,$46,$08,$80,$03,$20,$24,$04,$80,$03,$21,$23,$04,$80
	db $03,$21,$32,$02,$80,$03,$21,$52,$02,$80,$03,$21,$53,$04,$80,$03
	db $21,$55,$04,$80,$03,$21,$55,$02,$80,$04,$26,$47,$02,$01,$80,$03
	db $24,$47,$01,$80,$03,$24,$47,$04,$A0,$00

DATA_0FA87B:
	db $00,$13,"KEYS OPEN DOORS",$00
	db $F4,$01,$1F,$60,$02,$80,$4E,$60,$02,$81,$4E,$60,$02,$82,$4E,$60
	db $02,$83,$4E,$40,$02,$C3,$58,$40,$02,$43,$28,$40,$02,$02,$49,$40
	db $02,$02,$39,$40,$02,$04,$45,$40,$02,$04,$46,$40,$02,$04,$35,$40
	db $02,$04,$36,$40,$02,$07,$61,$40,$02,$07,$11,$20,$03,$14,$4B,$00
	db $20,$03,$14,$3B,$00,$20,$03,$15,$54,$00,$20,$03,$15,$24,$00,$20
	db $03,$09,$3E,$00,$80,$04,$26,$40,$02,$01,$80,$04,$26,$31,$08,$02
	db $80,$03,$20,$4A,$02,$80,$03,$20,$3A,$02,$80,$03,$21,$24,$08,$80
	db $03,$21,$54,$08,$80,$03,$23,$48,$08,$80,$03,$23,$38,$08,$A0,$00

DATA_0FA90D:
	db $00,$0A,"SPIRAL",$00
	db $26,$02,$07,$60,$02,$60,$15,$60,$02,$61,$25,$60,$02,$62,$26,$60
	db $02,$63,$16,$40,$02,$A4,$62,$40,$02,$A4,$53,$40,$02,$45,$11,$40
	db $02,$45,$22,$40,$02,$46,$65,$40,$02,$46,$66,$40,$02,$47,$45,$20
	db $03,$14,$23,$00,$80,$04,$26,$35,$04,$01,$80,$03,$28,$25,$04,$80
	db $03,$28,$35,$02,$80,$05,$E7,$45,$02,$74,$A9,$80,$03,$20,$64,$02
	db $80,$03,$28,$24,$08,$80,$05,$E7,$21,$04,$76,$A9,$A0,$00,$10,$00
	db $10,$00

DATA_0FA978:
	db $00,$0C,"SCANNERS",$00
	db $2C,$01,$03,$60,$02,$80,$55,$60,$02,$81,$55,$60,$02,$82,$55,$60
	db $02,$83,$55,$40,$02,$09,$31,$40,$02,$09,$51,$40,$02,$05,$14,$40
	db $02,$05,$15,$40,$02,$07,$25,$20,$03,$14,$41,$00,$20,$03,$04,$21
	db $03,$20,$03,$0E,$54,$1D,$80,$04,$26,$26,$08,$01,$80,$03,$28,$24
	db $02,$80,$03,$20,$13,$42,$A0,$00

DATA_0FA9CB:
	db $00,$0F,"CORNER SHOT",$00
	db $F4,$01,$11,$60,$02,$80,$34,$60,$02,$81,$34,$60,$02,$82,$34,$60
	db $02,$83,$34,$40,$02,$C9,$77,$40,$02,$C9,$17,$40,$02,$C9,$11,$40
	db $02,$C9,$71,$40,$02,$C9,$56,$40,$02,$C9,$65,$20,$03,$06,$32,$96
	db $20,$03,$16,$23,$00,$80,$04,$26,$66,$08,$01,$80,$03,$28,$23,$04
	db $80,$03,$28,$32,$02,$80,$03,$28,$65,$01,$80,$03,$28,$55,$02,$80
	db $03,$22,$31,$02,$80,$03,$22,$65,$04,$A0,$00

DATA_0FAA34:
	db $00,$0E,"CROSS FIRE",$00
	db $90,$01,$13,$60,$02,$60,$37,$60,$02,$61,$37,$60,$02,$62,$37,$60
	db $02,$63,$37,$40,$02,$07,$74,$40,$02,$09,$67,$40,$02,$07,$75,$40
	db $02,$0B,$28,$40,$02,$09,$34,$40,$02,$06,$75,$40,$02,$06,$53,$40
	db $02,$0B,$88,$40,$02,$0B,$82,$40,$02,$0B,$22,$20,$03,$0F,$91,$00
	db $20,$03,$02,$99,$01,$20,$03,$0C,$19,$01,$20,$03,$08,$11,$01,$80
	db $05,$E7,$74,$02,$D7,$AA,$80,$05,$E7,$63,$01,$D9,$AA,$80,$05,$E7
	db $63,$04,$DB,$AA,$80,$05,$E7,$75,$02,$DD,$AA,$80,$04,$26,$73,$02
	db $01,$80,$05,$E7,$53,$01,$DF,$AA,$80,$05,$E8,$84,$01,$E1,$AA,$80
	db $05,$E9,$84,$02,$F3,$AA,$80,$05,$E9,$48,$04,$F6,$AA,$80,$05,$E9
	db $25,$02,$F9,$AA,$A0,$00,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10
	db $00,$80,$E5,$AA,$00,$80,$E9,$AA,$00,$80,$ED,$AA,$00,$80,$F1,$AA
	db $10,$00,$10,$08,$37,$10,$08,$58,$08,$10,$64

DATA_0FAAFC:
	db $00,$0C,"GAUNTLET",$00
	db $F4,$01,$20,$60,$02,$00,$31,$60,$02,$01,$31,$60,$02,$02,$31,$60
	db $02,$03,$31,$40,$02,$C9,$43,$40,$02,$49,$23,$40,$02,$C9,$44,$40
	db $02,$C9,$45,$40,$02,$C9,$46,$40,$02,$C9,$47,$40,$02,$C9,$48,$40
	db $02,$49,$24,$40,$02,$49,$25,$40,$02,$49,$26,$40,$02,$49,$27,$40
	db $02,$49,$28,$20,$03,$0E,$42,$1E,$20,$03,$0A,$55,$00,$20,$03,$16
	db $35,$00,$80,$04,$26,$3A,$02,$01,$80,$03,$22,$53,$08,$80,$03,$24
	db $38,$02,$A0,$00

DATA_0FAB6B:
	db $00,$10,"MEET BOUNCER",$00
	db $F4,$01,$12,$60,$02,$40,$21,$60,$02,$41,$21,$60,$02,$42,$21,$60
	db $02,$43,$21,$40,$02,$48,$17,$40,$02,$48,$35,$40,$02,$48,$53,$20
	db $03,$14,$47,$00,$20,$03,$0B,$44,$00,$20,$03,$0A,$42,$00,$20,$03
	db $0E,$31,$1F,$80,$04,$26,$56,$01,$01,$80,$03,$28,$53,$08,$80,$03
	db $28,$56,$02,$80,$03,$28,$35,$02,$80,$03,$28,$36,$02,$80,$03,$28
	db $54,$02,$80,$03,$28,$55,$02,$80,$03,$28,$34,$08,$80,$03,$28,$35
	db $08,$80,$03,$28,$32,$02,$80,$03,$28,$31,$02,$80,$03,$24,$46,$08
	db $80,$03,$20,$44,$08,$80,$03,$25,$42,$08,$80,$03,$28,$51,$02,$80
	db $03,$28,$53,$02,$A0,$00

DATA_0FAC00:
	db $00,$13,"TEST 4: VILLAGE",$00
	db $BC,$02,$1D,$60,$02,$40,$21,$60,$02,$41,$21,$60,$02,$42,$21,$60
	db $02,$43,$21,$40,$02,$89,$93,$40,$02,$06,$75,$40,$02,$07,$52,$40
	db $02,$07,$55,$40,$02,$89,$19,$40,$02,$86,$23,$40,$02,$06,$12,$40
	db $02,$85,$15,$40,$02,$85,$25,$40,$02,$85,$35,$40,$02,$48,$87,$40
	db $02,$C6,$98,$20,$03,$09,$82,$00,$20,$03,$17,$39,$28,$20,$03,$02
	db $84,$01,$20,$03,$15,$96,$00,$20,$03,$14,$29,$00,$20,$03,$17,$65
	db $26,$20,$03,$0F,$95,$00,$20,$03,$0F,$85,$00,$20,$03,$0E,$86,$20
	db $20,$03,$17,$16,$91,$20,$05,$C1,$42,$96,$FB,$AC,$80,$03,$23,$97
	db $02,$80,$04,$26,$11,$01,$0A,$80,$03,$23,$57,$02,$80,$03,$28,$46
	db $01,$80,$03,$23,$32,$01,$80,$04,$26,$F2,$04,$0A,$80,$03,$28,$26
	db $04,$80,$03,$23,$43,$01,$80,$03,$20,$98,$08,$80,$03,$21,$84,$01
	db $80,$03,$23,$17,$08,$80,$03,$23,$46,$04,$80,$03,$23,$72,$01,$80
	db $03,$28,$18,$04,$80,$03,$28,$14,$02,$80,$04,$26,$A4,$01,$01,$80
	db $03,$28,$11,$02,$80,$05,$E8,$21,$01,$06,$AD,$80,$03,$28,$42,$04
	db $80,$05,$E7,$42,$02,$11,$AD,$A0,$00,$80,$00,$FF,$AC,$80,$00,$03
	db $AD,$40,$00,$0A,$80,$00,$0A,$AD,$80,$00,$0E,$AD,$40,$00,$24,$10
	db $00

DATA_0FAD13:
	db $00,$13,"WINDOW SHOPPING",$00
	db $F4,$01,$11,$60,$02,$00,$11,$60,$02,$01,$11,$60,$02,$02,$11,$60
	db $02,$03,$11,$40,$02,$07,$53,$40,$02,$47,$33,$40,$02,$87,$35,$40
	db $02,$C7,$55,$20,$05,$D0,$25,$00,$B7,$AD,$20,$03,$07,$23,$4B,$20
	db $03,$0E,$12,$21,$20,$03,$04,$56,$02,$20,$03,$06,$52,$4B,$20,$03
	db $01,$65,$4B,$20,$03,$0D,$63,$00,$20,$03,$0C,$36,$01,$20,$03,$0E
	db $32,$22,$80,$04,$26,$54,$01,$01,$80,$05,$E8,$31,$02,$B9,$AD,$80
	db $05,$E8,$51,$02,$BB,$AD,$80,$05,$E8,$73,$01,$BD,$AD,$80,$05,$E8
	db $65,$04,$BF,$AD,$80,$05,$E8,$23,$01,$C1,$AD,$80,$05,$E8,$25,$01
	db $C3,$AD,$80,$05,$E8,$36,$02,$C5,$AD,$80,$05,$E8,$56,$02,$C7,$AD
	db $A0,$00,$00,$00,$10,$01,$10,$01,$10,$01,$10,$01,$10,$01,$10,$01
	db $10,$01,$10,$01

DATA_0FADC9:
	db $00,$12,"FIND BLACK KEY",$00
	db $F4,$01,$11,$60,$02,$80,$14,$60,$02,$81,$14,$60,$02,$82,$14,$60
	db $02,$83,$14,$40,$02,$C9,$55,$40,$02,$C9,$53,$40,$02,$09,$73,$40
	db $02,$09,$75,$40,$02,$09,$77,$40,$02,$09,$71,$40,$02,$89,$34,$20
	db $03,$0B,$54,$00,$80,$04,$26,$74,$04,$01,$80,$03,$25,$74,$02,$80
	db $03,$25,$74,$08,$A0,$00

DATA_0FAE20:
	db $00,$10,"JUMPING JACK",$00
	db $F4,$01,$11,$60,$02,$00,$14,$60,$02,$41,$47,$60,$02,$82,$74,$60
	db $02,$C3,$41,$40,$02,$89,$54,$40,$02,$89,$45,$40,$02,$89,$34,$40
	db $02,$89,$43,$20,$03,$17,$32,$37,$20,$03,$17,$36,$31,$20,$03,$17
	db $52,$57,$20,$03,$17,$56,$51,$20,$03,$17,$63,$13,$20,$03,$17,$23
	db $73,$20,$03,$17,$25,$75,$20,$03,$17,$65,$15,$20,$03,$0E,$16,$23
	db $80,$04,$26,$54,$01,$01,$A0,$00

DATA_0FAE87:
	db $00,$12,"VILLAGE GUARDS",$00
	db $BC,$02,$1D,$60,$02,$40,$11,$60,$02,$41,$11,$60,$02,$42,$11,$60
	db $02,$43,$11,$40,$02,$0B,$52,$40,$02,$0B,$82,$40,$02,$0B,$96,$40
	db $02,$0B,$99,$40,$02,$08,$44,$40,$02,$88,$79,$40,$02,$41,$15,$40
	db $02,$C1,$36,$40,$02,$41,$17,$40,$02,$07,$29,$40,$02,$07,$19,$40
	db $02,$48,$58,$20,$03,$06,$69,$96,$20,$03,$0D,$23,$00,$20,$03,$0B
	db $39,$00,$20,$03,$0A,$93,$00,$20,$03,$0E,$21,$24,$20,$03,$01,$12
	db $96,$80,$05,$E7,$13,$02,$93,$AF,$80,$05,$E7,$92,$08,$95,$AF,$80
	db $05,$E7,$73,$04,$97,$AF,$80,$03,$28,$49,$01,$80,$03,$24,$18,$02
	db $80,$04,$26,$A4,$01,$01,$80,$03,$28,$36,$04,$80,$03,$28,$36,$02
	db $80,$03,$28,$17,$02,$80,$03,$28,$48,$01,$80,$03,$25,$84,$02,$80
	db $05,$E7,$89,$01,$99,$AF,$80,$03,$28,$84,$01,$80,$03,$28,$78,$01
	db $80,$03,$28,$11,$02,$80,$03,$28,$72,$02,$80,$05,$E7,$22,$04,$9B
	db $AF,$80,$05,$E7,$33,$04,$9D,$AF,$80,$05,$E7,$62,$04,$9F,$AF,$80
	db $05,$E7,$46,$04,$A1,$AF,$80,$05,$E7,$57,$02,$A3,$AF,$80,$05,$E7
	db $59,$01,$A5,$AF,$80,$05,$E7,$97,$02,$A7,$AF,$80,$05,$E7,$14,$02
	db $A9,$AF,$80,$05,$E7,$37,$02,$AB,$AF,$A0,$00,$10,$10,$10,$10,$10
	db $10,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10
	db $10,$10,$10,$10,$10

DATA_0FAFAD:
	db $00,$0E,"NO RETREAT",$00
	db $F4,$01,$11,$60,$02,$00,$12,$60,$02,$01,$12,$60,$02,$02,$12,$60
	db $02,$03,$12,$40,$02,$06,$74,$40,$02,$4B,$25,$40,$02,$07,$52,$40
	db $02,$49,$23,$20,$03,$0E,$45,$25,$20,$03,$10,$63,$00,$20,$03,$10
	db $32,$00,$20,$03,$10,$36,$00,$80,$04,$26,$25,$02,$01,$80,$03,$28
	db $25,$01,$80,$03,$28,$32,$08,$80,$03,$28,$22,$04,$80,$03,$28,$23
	db $01,$80,$03,$28,$51,$02,$80,$03,$28,$63,$04,$80,$03,$28,$56,$02
	db $80,$03,$28,$36,$02,$80,$05,$E9,$65,$04,$42,$B0,$80,$05,$E9,$54
	db $02,$45,$B0,$80,$03,$28,$45,$01,$80,$05,$E9,$33,$02,$48,$B0,$80
	db $05,$E9,$53,$01,$4B,$B0,$A0,$00,$00,$08,$65,$00,$08,$54,$00,$08
	db $34,$00,$08,$43

DATA_0FB04E:
	db $00,$0F,"DOUBLE BACK",$00
	db $26,$02,$11,$60,$02,$00,$16,$60,$02,$01,$16,$60,$02,$02,$16,$60
	db $02,$03,$16,$40,$02,$C5,$61,$40,$02,$45,$14,$40,$02,$05,$41,$40
	db $02,$05,$12,$40,$02,$47,$75,$40,$02,$85,$74,$40,$02,$85,$76,$40
	db $02,$47,$13,$40,$02,$05,$51,$20,$03,$0E,$17,$26,$80,$03,$28,$47
	db $04,$80,$03,$28,$57,$04,$80,$03,$28,$16,$08,$80,$03,$28,$14,$02
	db $80,$03,$28,$31,$04,$80,$03,$28,$31,$01,$80,$03,$28,$72,$02,$80
	db $03,$28,$74,$08,$80,$05,$E9,$25,$04,$00,$B1,$80,$05,$E9,$32,$02
	db $03,$B1,$80,$05,$E9,$63,$01,$06,$B1,$80,$05,$E9,$56,$08,$09,$B1
	db $80,$04,$26,$57,$02,$01,$80,$05,$E9,$56,$02,$0C,$B1,$80,$05,$E9
	db $15,$04,$0F,$B1,$80,$05,$E9,$31,$02,$12,$B1,$80,$05,$E9,$73,$01
	db $15,$B1,$A0,$00,$00,$08,$32,$00,$08,$63,$00,$08,$56,$00,$08,$25
	db $00,$08,$15,$00,$08,$31,$00,$08,$73,$00,$08,$57

DATA_0FB118:
	db $00,$14,"LETS MAKE A DEAL",$00
	db $F4,$01,$22,$60,$02,$40,$12,$60,$02,$41,$21,$60,$02,$42,$22,$60
	db $02,$43,$11,$40,$02,$48,$62,$40,$02,$09,$51,$40,$02,$49,$52,$40
	db $02,$89,$53,$40,$02,$C9,$54,$40,$02,$CB,$61,$40,$02,$CB,$64,$40
	db $02,$CB,$73,$20,$03,$14,$63,$00,$20,$03,$15,$71,$00,$20,$03,$16
	db $74,$00,$20,$03,$0A,$72,$00,$80,$04,$26,$83,$01,$01,$80,$03,$21
	db $64,$01,$80,$03,$20,$61,$01,$80,$03,$22,$62,$01,$80,$03,$24,$73
	db $01,$A0,$00

DATA_0FB18E:
	db $00,$0C,"VAMPIRES",$00
	db $F4,$01,$09,$60,$02,$00,$61,$60,$02,$01,$61,$60,$02,$02,$61,$60
	db $02,$03,$61,$40,$02,$A9,$55,$40,$02,$29,$22,$40,$02,$69,$13,$40
	db $02,$69,$46,$40,$02,$6A,$21,$40,$02,$6B,$56,$40,$02,$6B,$65,$40
	db $02,$6A,$12,$40,$02,$6A,$26,$40,$02,$6A,$36,$40,$02,$68,$15,$40
	db $02,$68,$14,$20,$03,$0E,$62,$27,$80,$04,$26,$17,$08,$01,$80,$05
	db $E7,$15,$02,$F7,$B1,$80,$05,$E7,$16,$04,$F9,$B1,$A0,$00,$10,$10
	db $10,$10

DATA_0FB1FB:
	db $00,$0F,"COFFEE SHOP",$00
	db $58,$02,$23,$60,$02,$C0,$71,$60,$02,$C1,$72,$60,$02,$C2,$62,$60
	db $02,$C3,$61,$40,$02,$0B,$42,$40,$02,$0A,$75,$40,$02,$0B,$64,$40
	db $02,$0B,$13,$40,$02,$0B,$15,$40,$02,$0B,$76,$40,$02,$0B,$53,$40
	db $02,$0B,$65,$40,$02,$0B,$66,$20,$03,$14,$14,$00,$20,$03,$15,$77
	db $00,$20,$03,$0A,$57,$00,$20,$03,$0B,$74,$00,$20,$03,$01,$47,$64
	db $80,$03,$20,$56,$81,$80,$03,$21,$45,$04,$80,$04,$26,$75,$04,$01
	db $80,$03,$28,$75,$08,$80,$03,$25,$57,$08,$80,$03,$24,$65,$01,$80
	db $03,$20,$65,$04,$A0,$00

DATA_0FB27F:
	db $00,$11,"TEST #5: TOWN",$00
	db $84,$03,$21,$60,$02,$40,$16,$60,$02,$41,$16,$60,$02,$42,$16,$60
	db $02,$43,$16,$40,$02,$0B,$89,$40,$02,$0B,$49,$40,$02,$8B,$43,$40
	db $02,$8B,$83,$40,$02,$89,$B6,$40,$02,$8A,$65,$40,$02,$0A,$67,$40
	db $02,$CA,$66,$40,$02,$CA,$A8,$40,$02,$CA,$A4,$40,$02,$4A,$28,$40
	db $02,$4A,$24,$20,$03,$15,$53,$00,$20,$03,$14,$37,$00,$20,$03,$14
	db $35,$00,$20,$03,$15,$59,$00,$20,$03,$15,$79,$00,$20,$03,$14,$95
	db $00,$20,$03,$14,$97,$00,$20,$03,$15,$73,$00,$20,$03,$0B,$99,$00
	db $20,$03,$0E,$26,$28,$20,$03,$09,$69,$00,$20,$03,$08,$33,$01,$20
	db $03,$17,$61,$66,$20,$03,$02,$96,$01,$20,$03,$0E,$93,$29,$80,$04
	db $26,$B6,$04,$01,$80,$03,$25,$96,$04,$80,$03,$20,$37,$12,$80,$03
	db $20,$97,$42,$80,$03,$20,$35,$18,$80,$03,$25,$A6,$04,$80,$03,$20
	db $95,$48,$80,$03,$21,$79,$24,$80,$03,$21,$59,$21,$80,$03,$21,$53
	db $81,$80,$03,$21,$73,$84,$80,$03,$20,$62,$08,$80,$04,$26,$6B,$02
	db $0A,$80,$03,$21,$69,$20,$80,$05,$E3,$63,$08,$73,$B3,$80,$03,$28
	db $6A,$02,$A0,$00,$80,$00,$77,$B3,$80,$00,$7B,$B3,$80,$00,$7F,$B3
	db $10,$08,$6B

DATA_0FB382:
	db $00,$07,"ICE",$00
	db $F4,$01,$24,$60,$02,$40,$15,$60,$02,$41,$25,$60,$02,$42,$35,$60
	db $02,$43,$45,$40,$02,$04,$58,$40,$02,$C4,$52,$40,$02,$C5,$67,$40
	db $02,$C5,$63,$40,$02,$C6,$76,$40,$02,$C6,$74,$40,$02,$C7,$38,$40
	db $02,$C7,$32,$40,$02,$C4,$36,$40,$02,$C4,$34,$40,$02,$C3,$37,$40
	db $02,$C3,$33,$20,$03,$14,$79,$00,$80,$05,$E7,$66,$04,$5D,$B4,$80
	db $05,$E7,$67,$08,$5F,$B4,$80,$05,$E7,$58,$01,$61,$B4,$80,$05,$E7
	db $49,$08,$63,$B4,$80,$05,$E7,$64,$04,$65,$B4,$80,$05,$E7,$64,$08
	db $67,$B4,$80,$05,$E7,$42,$04,$69,$B4,$80,$05,$E7,$41,$02,$6B,$B4
	db $80,$05,$E7,$32,$04,$6D,$B4,$80,$05,$E7,$33,$04,$6F,$B4,$80,$05
	db $E7,$34,$04,$71,$B4,$80,$05,$E7,$36,$04,$73,$B4,$80,$05,$E7,$37
	db $04,$75,$B4,$80,$05,$E7,$48,$01,$77,$B4,$80,$05,$E7,$52,$02,$79
	db $B4,$80,$05,$E7,$57,$02,$7B,$B4,$80,$05,$E7,$57,$04,$7D,$B4,$80
	db $05,$E7,$63,$01,$7F,$B4,$80,$05,$E0,$75,$01,$81,$B4,$80,$04,$26
	db $75,$04,$01,$A0,$00,$10,$00,$10,$00,$10,$00,$10,$00,$10,$00,$10
	db $00,$10,$00,$10,$00,$10,$00,$10,$00,$10,$00,$10,$00,$10,$00,$10
	db $00,$10,$00,$10,$00,$10,$00,$10,$00,$01,$01

DATA_0FB483:
	db $00,$0A,"CAMPUS",$00
	db $F4,$01,$08,$60,$02,$40,$21,$60,$02,$41,$11,$60,$02,$C2,$22,$60
	db $02,$03,$12,$40,$02,$C9,$41,$40,$02,$C9,$63,$40,$02,$C9,$24,$40
	db $02,$C9,$35,$40,$02,$CA,$51,$40,$02,$CA,$52,$40,$02,$CA,$62,$40
	db $02,$C8,$14,$40,$02,$C8,$36,$40,$02,$C8,$25,$40,$02,$CB,$56,$40
	db $02,$CB,$65,$20,$03,$14,$61,$00,$20,$03,$16,$16,$00,$80,$03,$20
	db $46,$08,$80,$03,$20,$64,$01,$80,$03,$22,$66,$08,$80,$03,$22,$66
	db $01,$80,$04,$26,$66,$02,$01,$A0,$00

DATA_0FB4F5:
	db $00,$0E,"SHARK BAIT",$00
	db $F4,$01,$25,$60,$02,$00,$71,$60,$02,$01,$61,$60,$02,$02,$72,$60
	db $02,$03,$62,$40,$02,$0E,$14,$40,$02,$0E,$47,$40,$02,$0E,$64,$40
	db $02,$09,$77,$40,$02,$0E,$26,$40,$02,$0E,$21,$40,$02,$0E,$76,$40
	db $02,$0E,$56,$40,$02,$C9,$33,$40,$02,$C9,$35,$40,$02,$09,$11,$40
	db $02,$0A,$17,$20,$03,$14,$53,$00,$20,$03,$15,$55,$00,$80,$04,$26
	db $44,$04,$01,$80,$03,$20,$45,$04,$80,$03,$21,$24,$04,$80,$05,$E7
	db $23,$04,$6F,$B5,$80,$05,$E7,$25,$04,$71,$B5,$A0,$00,$10,$00,$10
	db $00

DATA_0FB573:
	db $00,$0D,"NIGHTMARE",$00
	db $F4,$01,$09,$60,$02,$40,$16,$60,$02,$41,$16,$60,$02,$42,$16,$60
	db $02,$43,$16,$40,$02,$4B,$66,$40,$02,$CB,$56,$40,$02,$49,$33,$40
	db $02,$C9,$44,$40,$02,$0E,$24,$40,$02,$09,$55,$40,$02,$09,$22,$40
	db $02,$C8,$64,$40,$02,$88,$32,$40,$02,$8A,$11,$40,$02,$CA,$12,$40
	db $02,$0D,$51,$20,$03,$14,$43,$00,$20,$03,$14,$41,$00,$20,$03,$15
	db $63,$00,$20,$03,$0E,$15,$2A,$80,$04,$26,$61,$04,$01,$80,$03,$20
	db $41,$41,$80,$03,$21,$61,$21,$80,$03,$24,$63,$88,$A0,$00

DATA_0FB5ED:
	db $00,$0E,"FAST TRACK",$00
	db $C8,$00,$26,$60,$02,$00,$51,$60,$02,$01,$51,$60,$02,$02,$51,$60
	db $02,$03,$51,$40,$02,$09,$2B,$40,$02,$09,$24,$40,$02,$09,$18,$40
	db $02,$4D,$42,$40,$02,$4D,$43,$40,$02,$4D,$44,$40,$02,$4D,$45,$20
	db $03,$10,$48,$00,$20,$03,$16,$17,$00,$20,$05,$D4,$55,$00,$7E,$B6
	db $80,$03,$20,$42,$04,$80,$03,$20,$43,$04,$80,$03,$20,$44,$04,$80
	db $03,$20,$45,$04,$80,$03,$22,$31,$01,$80,$04,$26,$41,$01,$01,$80
	db $03,$28,$42,$01,$80,$03,$28,$43,$01,$80,$03,$28,$44,$01,$80,$03
	db $28,$45,$01,$80,$03,$28,$45,$08,$80,$03,$28,$43,$02,$80,$03,$28
	db $43,$08,$A0,$00,$00,$03

DATA_0FB680:
	db $00,$0D,"BOX LUNCH",$00
	db $F4,$01,$27,$60,$02,$00,$61,$60,$02,$01,$61,$60,$02,$02,$61,$60
	db $02,$03,$61,$40,$02,$4B,$12,$40,$02,$0B,$56,$40,$02,$0B,$11,$40
	db $02,$09,$14,$40,$02,$0A,$22,$40,$02,$48,$16,$40,$02,$0E,$15,$40
	db $02,$0B,$24,$20,$05,$D5,$36,$00,$F1,$B6,$20,$03,$14,$23,$00,$20
	db $03,$16,$21,$00,$20,$03,$0E,$62,$2B,$80,$04,$26,$14,$08,$01,$80
	db $03,$21,$16,$14,$80,$03,$20,$21,$24,$80,$03,$20,$22,$02,$80,$03
	db $22,$14,$02,$A0,$00,$00,$03

DATA_0FB6F3:
	db $00,$12,"WALLY'S DELITE",$00
	db $F4,$01,$28,$60,$02,$00,$51,$60,$02,$01,$51,$60,$02,$02,$51,$60
	db $02,$03,$51,$40,$02,$06,$23,$40,$02,$06,$43,$40,$02,$06,$47,$40
	db $02,$06,$4C,$40,$02,$06,$2B,$40,$02,$06,$17,$40,$02,$06,$5B,$40
	db $02,$06,$5E,$40,$02,$07,$3E,$40,$02,$07,$2E,$20,$05,$D5,$2A,$00
	db $A7,$B7,$80,$05,$E7,$43,$02,$A9,$B7,$80,$05,$E7,$24,$08,$AB,$B7
	db $80,$05,$E7,$48,$08,$AD,$B7,$80,$05,$E7,$18,$08,$AF,$B7,$80,$05
	db $E7,$3A,$01,$B1,$B7,$80,$05,$E7,$2B,$01,$B3,$B7,$80,$05,$E7,$3C
	db $04,$B5,$B7,$80,$05,$E7,$5B,$08,$B7,$B7,$80,$05,$E7,$5E,$08,$B9
	db $B7,$80,$05,$E7,$3D,$02,$BB,$B7,$80,$05,$E7,$56,$02,$BD,$B7,$80
	db $03,$21,$3E,$01,$80,$04,$26,$2E,$02,$01,$80,$05,$E7,$26,$01,$BF
	db $B7,$A0,$00,$00,$01,$10,$00,$10,$00,$10,$00,$10,$00,$10,$00,$10
	db $00,$10,$00,$10,$00,$10,$00,$10,$00,$10,$00,$10,$00

DATA_0FB7C1:
	db $00,$0F,"FALSE START",$00
	db $58,$02,$11,$60,$02,$40,$17,$60,$02,$41,$17,$60,$02,$42,$17,$60
	db $02,$43,$17,$40,$02,$0B,$73,$40,$02,$0B,$11,$40,$02,$0B,$34,$20
	db $03,$14,$77,$00,$20,$03,$15,$16,$00,$20,$03,$0E,$27,$2C,$80,$04
	db $26,$71,$04,$01,$80,$05,$E0,$13,$48,$4B,$B8,$80,$05,$E1,$35,$12
	db $4D,$B8,$80,$05,$E1,$15,$48,$4F,$B8,$80,$05,$E0,$71,$12,$51,$B8
	db $80,$05,$E0,$53,$18,$53,$B8,$80,$05,$E0,$31,$12,$55,$B8,$80,$05
	db $E0,$75,$18,$57,$B8,$80,$05,$E0,$73,$21,$59,$B8,$80,$05,$E1,$55
	db $12,$5B,$B8,$80,$05,$E1,$33,$84,$5D,$B8,$A0,$00,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01

DATA_0FB85F:
	db $00,$10,"FEEDING TIME",$00
	db $2C,$01,$16,$60,$02,$60,$33,$60,$02,$61,$33,$60,$02,$62,$33,$60
	db $02,$63,$33,$40,$02,$8E,$54,$40,$02,$0E,$12,$40,$02,$4E,$25,$40
	db $02,$CE,$41,$40,$02,$45,$44,$40,$02,$C5,$42,$40,$02,$05,$24,$40
	db $02,$05,$22,$40,$02,$0A,$13,$40,$02,$4A,$35,$40,$02,$8A,$53,$40
	db $02,$CA,$31,$80,$04,$26,$07,$08,$01,$80,$04,$26,$16,$08,$01,$A0
	db $00

DATA_0FB8BF:
	db $00,$13,"TEST #6: FINALS",$00
	db $F4,$01,$13,$60,$02,$60,$37,$60,$02,$61,$37,$60,$02,$62,$37,$60
	db $02,$63,$37,$40,$02,$CA,$33,$40,$02,$0D,$63,$40,$02,$0D,$82,$40
	db $02,$09,$55,$40,$02,$8B,$66,$40,$02,$0B,$13,$40,$02,$08,$34,$40
	db $02,$0B,$96,$40,$02,$09,$35,$40,$02,$0B,$29,$40,$02,$09,$57,$40
	db $02,$07,$67,$20,$03,$14,$64,$00,$20,$03,$16,$43,$00,$20,$03,$15
	db $76,$00,$20,$03,$0E,$74,$2D,$20,$03,$0F,$59,$00,$20,$03,$17,$91
	db $59,$20,$03,$17,$19,$86,$20,$03,$17,$99,$24,$20,$03,$02,$11,$01
	db $20,$03,$0C,$75,$01,$80,$03,$21,$54,$08,$80,$03,$20,$35,$08,$80
	db $03,$22,$67,$01,$80,$05,$E7,$73,$01,$B4,$B9,$80,$03,$28,$53,$01
	db $80,$03,$21,$63,$02,$80,$05,$E7,$73,$02,$B6,$B9,$80,$05,$E8,$74
	db $02,$B8,$B9,$80,$04,$26,$40,$02,$01,$80,$05,$E7,$84,$01,$BA,$B9
	db $80,$05,$E8,$91,$02,$BC,$B9,$80,$05,$E8,$86,$02,$BE,$B9,$80,$05
	db $E8,$85,$02,$C0,$B9,$80,$05,$E8,$39,$04,$C2,$B9,$80,$05,$E8,$38
	db $02,$C4,$B9,$80,$05,$E8,$23,$02,$C6,$B9,$80,$05,$E8,$22,$02,$C8
	db $B9,$A0,$00,$10,$10,$10,$10,$10,$00,$10,$10,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01

DATA_0FB9CA:
	db $00,$0F,"DO NOT MISS",$00
	db $2C,$01,$29,$60,$02,$80,$35,$60,$02,$81,$35,$60,$02,$82,$35,$60
	db $02,$83,$35,$40,$02,$C9,$52,$40,$02,$C9,$54,$40,$02,$09,$41,$40
	db $02,$09,$21,$40,$02,$49,$12,$40,$02,$49,$14,$40,$02,$89,$25,$40
	db $02,$89,$45,$40,$02,$0A,$31,$40,$02,$4A,$13,$40,$02,$CA,$53,$40
	db $02,$8B,$33,$20,$03,$0C,$55,$03,$80,$04,$26,$01,$04,$01,$80,$05
	db $E8,$24,$02,$83,$BA,$80,$05,$E8,$24,$01,$85,$BA,$80,$05,$E8,$23
	db $01,$87,$BA,$80,$05,$E8,$22,$01,$89,$BA,$80,$05,$E8,$21,$02,$8B
	db $BA,$80,$05,$E8,$31,$02,$8D,$BA,$80,$05,$E8,$41,$02,$8F,$BA,$80
	db $05,$E8,$52,$01,$91,$BA,$80,$05,$E8,$53,$01,$93,$BA,$80,$05,$E8
	db $54,$01,$95,$BA,$80,$05,$E8,$44,$02,$97,$BA,$80,$05,$E8,$35,$08
	db $99,$BA,$80,$05,$E8,$55,$01,$9C,$BA,$A0,$00,$11,$01,$11,$01,$11
	db $01,$11,$01,$11,$01,$11,$01,$11,$01,$11,$01,$11,$01,$11,$01,$11
	db $01,$01,$09,$34,$10,$00

DATA_0FBA9E:
	db $00,$0B,"SONAR  ",$00
	db $58,$02,$2A,$60,$02,$00,$11,$60,$02,$01,$11,$60,$02,$02,$11,$60
	db $02,$03,$11,$40,$02,$0C,$31,$40,$02,$0C,$48,$40,$02,$0C,$4B,$40
	db $02,$0C,$35,$40,$02,$0C,$1A,$20,$03,$07,$16,$4B,$20,$03,$06,$19
	db $32,$20,$03,$0E,$13,$2E,$80,$05,$E7,$12,$04,$17,$BB,$80,$05,$E7
	db $15,$04,$19,$BB,$80,$05,$E7,$28,$01,$1B,$BB,$80,$05,$E7,$2B,$01
	db $1D,$BB,$80,$05,$E7,$33,$02,$1F,$BB,$80,$05,$E7,$36,$02,$21,$BB
	db $80,$05,$E7,$3A,$08,$23,$BB,$80,$04,$26,$1C,$01,$01,$A0,$00,$10
	db $10,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10

DATA_0FBB25:
	db $00,$09,"NINJA",$00
	db $F4,$01,$0A,$60,$02,$80,$16,$60,$02,$81,$16,$60,$02,$82,$16,$60
	db $02,$83,$16,$40,$02,$0D,$63,$40,$02,$0C,$62,$40,$02,$0B,$31,$40
	db $02,$09,$43,$40,$02,$C9,$66,$40,$02,$0F,$61,$40,$02,$09,$41,$20
	db $03,$14,$52,$00,$20,$03,$15,$42,$00,$20,$03,$14,$32,$00,$20,$03
	db $0E,$15,$2F,$80,$04,$26,$60,$02,$01,$80,$03,$28,$61,$02,$80,$03
	db $28,$51,$02,$80,$03,$21,$43,$48,$80,$03,$21,$53,$04,$80,$03,$21
	db $31,$24,$80,$03,$21,$31,$11,$80,$03,$20,$42,$81,$A0,$00

DATA_0FBB9B:
	db $00,$09,"SOLAR",$00
	db $F4,$01,$2B,$60,$02,$40,$34,$60,$02,$41,$35,$60,$02,$C2,$65,$60
	db $02,$C3,$64,$40,$02,$C9,$74,$40,$02,$C9,$75,$40,$02,$49,$24,$40
	db $02,$49,$25,$40,$02,$89,$46,$40,$02,$89,$56,$40,$02,$09,$53,$40
	db $02,$09,$43,$40,$02,$0F,$52,$40,$02,$0F,$57,$40,$02,$0F,$47,$40
	db $02,$0F,$33,$20,$03,$14,$44,$00,$20,$03,$14,$45,$00,$20,$03,$14
	db $55,$00,$20,$03,$14,$54,$00,$80,$03,$20,$64,$04,$80,$05,$E0,$75
	db $01,$2C,$BC,$80,$03,$20,$56,$08,$80,$03,$20,$46,$08,$80,$03,$20
	db $43,$02,$80,$03,$20,$53,$02,$80,$03,$20,$24,$04,$80,$03,$20,$25
	db $04,$80,$04,$26,$27,$02,$01,$A0,$00,$00,$10

DATA_0FBC2E:
	db $00,$0B,"SHATTER",$00
	db $F4,$01,$0D,$60,$02,$00,$31,$60,$02,$01,$32,$60,$02,$02,$22,$60
	db $02,$03,$21,$40,$02,$04,$53,$40,$02,$09,$48,$40,$02,$07,$81,$40
	db $02,$09,$63,$40,$02,$09,$36,$40,$02,$08,$81,$40,$02,$08,$15,$40
	db $02,$08,$76,$40,$02,$48,$14,$80,$03,$28,$47,$04,$80,$03,$28,$58
	db $04,$80,$04,$26,$59,$08,$01,$A0,$00

DATA_0FBC81:
	db $00,$09,"RAZOR",$00
	db $F4,$01,$30,$60,$02,$80,$3D,$60,$02,$81,$2D,$60,$02,$82,$3C,$60
	db $02,$83,$2C,$40,$02,$0C,$26,$40,$02,$0C,$36,$40,$02,$0D,$31,$40
	db $02,$0D,$32,$40,$02,$0D,$21,$40,$02,$0D,$22,$40,$02,$0E,$76,$40
	db $02,$0E,$77,$40,$02,$0E,$78,$40,$02,$0E,$68,$40,$02,$0F,$67,$20
	db $05,$D5,$6B,$00,$0E,$BD,$20,$03,$14,$61,$00,$20,$05,$D4,$64,$00
	db $10,$BD,$80,$05,$E7,$30,$02,$13,$BD,$80,$03,$27,$8A,$02,$80,$05
	db $E8,$7A,$02,$16,$BD,$80,$04,$26,$9D,$01,$01,$80,$03,$21,$8D,$01
	db $80,$03,$20,$64,$08,$80,$05,$E8,$3D,$08,$18,$BD,$80,$05,$E8,$3D
	db $01,$1B,$BD,$A0,$00,$01,$00,$00,$08,$24,$00,$08,$8A,$00,$10,$01
	db $08,$3C,$01,$08,$2D

DATA_0FBD1E:
	db $00,$0A,"ROMPUS",$00
	db $58,$02,$2D,$60,$02,$00,$52,$60,$02,$C1,$41,$60,$02,$C2,$51,$60
	db $02,$43,$42,$40,$02,$09,$33,$40,$02,$89,$35,$40,$02,$8A,$4A,$40
	db $02,$8A,$2A,$40,$02,$8A,$38,$40,$02,$8F,$3E,$40,$02,$0C,$5C,$40
	db $02,$0C,$1C,$40,$02,$08,$26,$40,$02,$08,$46,$20,$05,$D5,$4E,$00
	db $C3,$BD,$20,$05,$D4,$59,$00,$C5,$BD,$20,$03,$14,$13,$00,$20,$05
	db $D4,$56,$00,$C7,$BD,$20,$05,$D4,$47,$00,$C9,$BD,$20,$05,$D4,$27
	db $00,$CB,$BD,$20,$05,$D4,$16,$00,$CD,$BD,$20,$03,$0A,$45,$00,$20
	db $05,$D5,$3A,$00,$CF,$BD,$80,$03,$21,$5B,$08,$80,$03,$20,$58,$28
	db $80,$03,$24,$3D,$02,$80,$03,$21,$53,$12,$80,$03,$20,$18,$08,$80
	db $03,$21,$1B,$08,$80,$04,$26,$3E,$02,$01,$A0,$00,$00,$01,$00,$03
	db $00,$03,$00,$03,$00,$03,$00,$03,$00,$03

DATA_0FBDD1:
	db $00,$08,"GRID",$00
	db $F4,$01,$2E,$60,$02,$00,$91,$60,$02,$01,$91,$60,$02,$02,$91,$60
	db $02,$03,$91,$40,$02,$04,$95,$40,$02,$08,$22,$40,$02,$04,$75,$40
	db $02,$08,$25,$40,$02,$05,$98,$40,$02,$0A,$52,$40,$02,$05,$78,$40
	db $02,$0B,$57,$40,$02,$0B,$59,$40,$02,$09,$54,$40,$02,$09,$56,$40
	db $02,$0F,$28,$20,$03,$0E,$92,$30,$80,$05,$E8,$05,$04,$A8,$BE,$80
	db $05,$E8,$38,$04,$AA,$BE,$80,$05,$E7,$57,$08,$AC,$BE,$80,$05,$E8
	db $02,$04,$AE,$BE,$80,$05,$E8,$35,$04,$B0,$BE,$80,$05,$E8,$20,$02
	db $B2,$BE,$80,$05,$E8,$50,$02,$B4,$BE,$80,$05,$E8,$32,$04,$B6,$BE
	db $80,$05,$E8,$80,$02,$B8,$BE,$80,$05,$E8,$A2,$01,$BA,$BE,$80,$05
	db $E8,$95,$04,$BC,$BE,$80,$05,$E8,$A8,$01,$BE,$BE,$80,$05,$E8,$8A
	db $08,$C0,$BE,$80,$05,$E8,$5A,$08,$C2,$BE,$80,$05,$E8,$08,$04,$C4
	db $BE,$80,$05,$E8,$68,$04,$C6,$BE,$80,$05,$E8,$75,$01,$C8,$BE,$80
	db $05,$E8,$53,$02,$CA,$BE,$80,$06,$E6,$29,$02,$01,$CC,$BE,$A0,$00
	db $01,$01,$01,$01,$00,$13,$01,$01,$01,$01,$01,$01,$01,$01,$01,$11
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$11
	db $01,$11,$01,$11,$01,$01

DATA_0FBECE:
	db $00,$0C,"DIAGONAL",$00
	db $F4,$01,$2F,$60,$02,$80,$19,$60,$02,$81,$19,$60,$02,$82,$19,$60
	db $02,$83,$19,$40,$02,$6F,$82,$40,$02,$6F,$83,$40,$02,$6F,$73,$40
	db $02,$6F,$72,$40,$02,$AD,$55,$40,$02,$A8,$48,$20,$03,$10,$75,$00
	db $20,$05,$C4,$53,$03,$2D,$BF,$80,$05,$E8,$74,$02,$31,$BF,$80,$04
	db $26,$95,$08,$01,$80,$05,$E8,$94,$08,$33,$BF,$80,$05,$E8,$53,$04
	db $35,$BF,$A0,$00,$41,$41,$04,$04,$01,$01,$10,$00,$11,$11

DATA_0FBF37:
	db $00,$13,"MASTER'S CASTLE",$00
	db $E7,$03,$2C,$60,$02,$40,$17,$60,$02,$41,$17,$60,$02,$42,$17,$60
	db $02,$43,$17,$40,$02,$09,$96,$40,$02,$89,$99,$40,$02,$0B,$54,$40
	db $02,$0F,$B3,$40,$02,$0F,$A4,$40,$02,$10,$D7,$40,$02,$0F,$69,$40
	db $02,$0F,$AA,$40,$02,$0F,$66,$40,$02,$0F,$DC,$40,$02,$0B,$5B,$40
	db $02,$0B,$54,$20,$03,$15,$73,$00,$20,$03,$0A,$D4,$00,$20,$03,$0B
	db $93,$00,$20,$03,$14,$67,$00,$20,$03,$15,$C3,$00,$20,$03,$14,$68
	db $00,$20,$03,$0E,$E9,$31,$20,$03,$09,$B6,$00,$20,$03,$0E,$DA,$32
	db $20,$03,$02,$3C,$03,$20,$03,$02,$33,$03,$20,$03,$08,$49,$02,$20
	db $03,$0F,$46,$00,$20,$05,$CC,$74,$06,$3B,$C0,$80,$05,$E8,$B3,$02
	db $3D,$C0,$80,$05,$E7,$8C,$04,$40,$C0,$80,$04,$26,$E8,$04,$80,$80
	db $03,$20,$67,$48,$80,$03,$20,$68,$42,$80,$03,$23,$E6,$01,$80,$03
	db $25,$79,$01,$80,$03,$21,$C3,$21,$80,$03,$24,$A2,$02,$80,$03,$25
	db $CA,$02,$80,$03,$21,$83,$42,$80,$03,$25,$76,$01,$80,$05,$E9,$CA
	db $08,$42,$C0,$80,$05,$E7,$84,$04,$45,$C0,$80,$05,$E7,$AC,$02,$47
	db $C0,$80,$03,$28,$A7,$04,$80,$03,$20,$57,$18,$80,$03,$20,$58,$12
	db $A0,$00,$01,$01,$00,$08,$B4,$10,$10,$01,$09,$C9,$10,$10,$10,$10

DATA_0FC049:
	db $00,$0C,"GUARDIAN",$00
	db $F4,$01,$11,$60,$02,$40,$14,$60,$02,$01,$41,$60,$02,$82,$47,$60
	db $02,$C3,$74,$40,$02,$C9,$44,$40,$02,$07,$33,$40,$02,$47,$35,$40
	db $02,$87,$55,$40,$02,$C7,$53,$20,$03,$0C,$42,$03,$20,$03,$02,$46
	db $02,$80,$05,$E8,$43,$02,$B2,$C0,$80,$05,$E8,$44,$02,$B4,$C0,$80
	db $05,$E8,$44,$01,$B6,$C0,$80,$06,$E6,$44,$04,$01,$B8,$C0,$80,$05
	db $E8,$45,$02,$BA,$C0,$80,$05,$E8,$42,$02,$BC,$C0,$A0,$00,$03,$10
	db $03,$10,$03,$10,$01,$00,$10,$10,$10,$10

DATA_0FC0BE:
	db $00,$0C,"INVIPORT",$00
	db $F4,$01,$32,$60,$02,$00,$31,$60,$02,$01,$21,$60,$02,$02,$32,$60
	db $02,$03,$22,$40,$02,$09,$55,$40,$02,$09,$75,$40,$02,$09,$73,$40
	db $02,$09,$53,$40,$02,$09,$64,$40,$02,$09,$62,$40,$02,$09,$72,$20
	db $03,$02,$71,$01,$20,$03,$02,$61,$01,$20,$03,$08,$51,$01,$20,$03
	db $08,$41,$02,$80,$05,$E7,$34,$08,$3F,$C1,$80,$05,$E7,$23,$02,$42
	db $C1,$80,$05,$E7,$26,$08,$45,$C1,$80,$05,$E7,$16,$08,$48,$C1,$80
	db $04,$26,$44,$08,$01,$80,$03,$28,$42,$08,$80,$03,$28,$52,$08,$80
	db $03,$28,$62,$08,$A0,$00,$00,$0B,$31,$00,$0B,$21,$00,$0B,$21,$00
	db $0B,$11

DATA_0FC14B:
	db $00,$10,"FOX-N-HOUNDS",$00
	db $58,$02,$11,$60,$02,$00,$12,$60,$02,$01,$12,$60,$02,$02,$12,$60
	db $02,$03,$12,$40,$02,$0F,$61,$40,$02,$0E,$45,$40,$02,$0E,$43,$40
	db $02,$0F,$67,$40,$02,$0C,$17,$40,$02,$0C,$56,$40,$02,$0C,$54,$40
	db $02,$08,$17,$40,$02,$0C,$52,$40,$02,$0E,$41,$40,$02,$0B,$63,$40
	db $02,$08,$47,$20,$03,$14,$55,$00,$20,$03,$14,$53,$00,$20,$03,$14
	db $33,$00,$20,$03,$14,$35,$00,$20,$03,$14,$73,$00,$20,$03,$14,$37
	db $00,$20,$03,$14,$75,$00,$20,$03,$14,$13,$00,$20,$03,$14,$51,$00
	db $20,$03,$02,$71,$02,$20,$03,$08,$72,$01,$20,$03,$08,$77,$02,$80
	db $03,$20,$33,$81,$80,$03,$20,$53,$81,$80,$03,$20,$31,$02,$80,$04
	db $26,$84,$01,$01,$80,$03,$20,$31,$42,$80,$03,$20,$35,$81,$80,$03
	db $20,$55,$81,$80,$05,$E8,$26,$04,$44,$C2,$80,$03,$20,$35,$42,$80
	db $03,$20,$55,$42,$80,$03,$20,$53,$42,$80,$03,$20,$51,$02,$80,$03
	db $23,$31,$41,$80,$03,$23,$37,$41,$80,$03,$23,$57,$41,$80,$03,$23
	db $51,$41,$80,$03,$23,$57,$08,$80,$03,$20,$33,$42,$80,$03,$20,$36
	db $02,$80,$05,$E0,$73,$02,$47,$C2,$A0,$00,$00,$08,$53,$04,$00,$74

DATA_0FC24A:
	db $00,$0F,"HOT PURSUIT",$00
	db $E7,$03,$31,$60,$02,$00,$11,$60,$02,$01,$11,$60,$02,$02,$11,$60
	db $02,$03,$11,$40,$02,$0F,$DD,$40,$02,$08,$84,$40,$02,$CA,$69,$40
	db $02,$4E,$BB,$40,$02,$CA,$E2,$40,$02,$4B,$36,$40,$02,$08,$4B,$40
	db $02,$4D,$B7,$40,$02,$89,$72,$40,$02,$4C,$23,$40,$02,$0B,$A4,$40
	db $02,$0B,$65,$20,$03,$14,$A7,$00,$20,$03,$14,$C9,$00,$20,$03,$17
	db $EE,$99,$20,$03,$14,$7D,$00,$20,$03,$16,$91,$00,$20,$03,$09,$15
	db $00,$20,$03,$15,$28,$00,$20,$03,$02,$3C,$01,$20,$03,$0F,$EA,$00
	db $20,$03,$0C,$98,$0A,$20,$03,$0F,$AE,$00,$20,$03,$08,$96,$01,$20
	db $05,$CE,$D1,$33,$58,$C3,$80,$04,$26,$EE,$04,$01,$80,$03,$20,$D9
	db $48,$80,$03,$20,$8D,$84,$80,$03,$20,$A8,$42,$80,$05,$E8,$DD,$01
	db $5B,$C3,$80,$05,$E9,$98,$02,$5D,$C3,$80,$05,$E8,$DE,$01,$60,$C3
	db $80,$05,$E8,$EC,$02,$62,$C3,$80,$05,$E8,$DC,$02,$64,$C3,$80,$03
	db $21,$9D,$02,$80,$05,$E7,$31,$04,$66,$C3,$80,$05,$E8,$45,$08,$68
	db $C3,$80,$05,$E8,$47,$04,$6A,$C3,$80,$05,$E8,$18,$08,$6C,$C3,$80
	db $05,$E7,$44,$01,$6E,$C3,$80,$05,$E8,$C6,$01,$70,$C3,$80,$03,$22
	db $94,$01,$80,$03,$23,$E3,$02,$80,$05,$E8,$97,$02,$72,$C3,$A0,$00
	db $40,$00,$0F,$01,$01,$00,$08,$DD,$01,$01,$01,$01,$01,$01,$10,$10
	db $11,$11,$11,$11,$11,$11,$10,$10,$11,$11,$80,$00,$76,$C3,$80,$00
	db $7A,$C3,$80,$00,$7E,$C3,$80,$00,$82,$C3,$40,$00,$23

DATA_0FC385:
	db $00,$12,"CENTRAL MATRIX",$00
	db $20,$03,$0F,$60,$02,$80,$29,$60,$02,$81,$29,$60,$02,$82,$29,$60
	db $02,$83,$29,$40,$02,$8D,$15,$40,$02,$8C,$52,$40,$02,$8C,$95,$40
	db $02,$8C,$26,$40,$02,$8D,$5A,$40,$02,$8D,$61,$40,$02,$8D,$96,$40
	db $02,$88,$76,$40,$02,$08,$45,$40,$02,$48,$57,$40,$02,$C8,$64,$40
	db $02,$CF,$89,$20,$03,$15,$49,$00,$20,$03,$17,$44,$66,$20,$03,$17
	db $74,$38,$20,$03,$17,$47,$83,$20,$03,$02,$77,$02,$20,$03,$0C,$65
	db $03,$20,$05,$CC,$55,$0A,$AD,$C4,$80,$03,$21,$76,$04,$80,$05,$E8
	db $37,$04,$AF,$C4,$80,$05,$E8,$36,$04,$B2,$C4,$80,$05,$E8,$35,$04
	db $B5,$C4,$80,$05,$E8,$34,$04,$B8,$C4,$80,$05,$E8,$43,$02,$BB,$C4
	db $80,$05,$E8,$53,$02,$BE,$C4,$80,$05,$E8,$63,$02,$C1,$C4,$80,$05
	db $E8,$84,$01,$C4,$C4,$80,$05,$E8,$85,$01,$C7,$C4,$80,$05,$E8,$87
	db $01,$CA,$C4,$80,$05,$E8,$48,$08,$CD,$C4,$80,$05,$E8,$58,$08,$D0
	db $C4,$80,$05,$E8,$68,$08,$D3,$C4,$80,$05,$E8,$78,$08,$D6,$C4,$80
	db $05,$E8,$75,$01,$D9,$C4,$80,$05,$E8,$76,$01,$DC,$C4,$80,$04,$26
	db $65,$01,$F2,$80,$05,$E8,$66,$02,$DF,$C4,$80,$05,$E8,$64,$02,$E2
	db $C4,$80,$05,$E8,$54,$02,$E5,$C4,$80,$05,$E8,$45,$04,$E8,$C4,$80
	db $05,$E8,$56,$01,$EB,$C4,$80,$05,$E8,$56,$02,$EE,$C4,$80,$06,$E6
	db $66,$01,$F2,$F1,$C4,$A0,$00,$01,$01,$01,$09,$87,$01,$09,$86,$01
	db $09,$85,$01,$09,$84,$01,$09,$48,$01,$09,$58,$01,$09,$68,$01,$09
	db $34,$01,$09,$35,$01,$09,$37,$01,$09,$43,$01,$09,$53,$01,$09,$63
	db $01,$09,$73,$01,$09,$45,$01,$09,$46,$01,$09,$64,$01,$09,$67,$01
	db $09,$57,$01,$09,$75,$01,$09,$76,$01,$09,$54,$80,$00,$F5,$C4,$10
	db $00

DATA_0FC4F7:					; Note: I'm not entirely sure why the clue text is formated this way. The lines don't cut off in this manner in game.
	db $02,$00
	db "WARNING. WARP TO L",$00
	db "EVEL 10.",$00

DATA_0FC515:
	db $03,$00
	db "TO USE A POD, PUSH",$00
	db " AGAINST IT & PRES",$00
	db "S B.",$00

DATA_0FC542:
	db $03,$00
	db "PODS LIKE THIS CON",$00
	db "TAIN ITEMS AND CLU",$00
	db "ES.",$00

DATA_0FC56E:
	db $03,$00
	db "TO READ A CLUE AGA",$00
	db "IN, PRESS START TO",$00
	db " PAUSE THE GAME.",$00

DATA_0FC5A7:
	db $03,$00
	db "TOUCH FLOOR BUTTON",$00
	db "S TO OPEN AND CLOS",$00
	db "E HIDDEN DOORS.",$00

DATA_0FC5DF:
	db $02,$00
	db "SOME SECRET DOORS ",$00
	db "OPEN WITH A KEY.",$00

DATA_0FC605:
	db $02,$00
	db "COINS ADD TO YOUR ",$00
	db "SCORE.",$00

DATA_0FC621:
	db $02,$00
	db "5000 POINTS EARNS ",$00
	db "A LIFE.",$00

DATA_0FC63E:
	db $04,$00
	db "SECRET WARP: ON LE",$00
	db "VEL 1, TOUCH AND S",$00
	db "HOOT WALL TO RIGHT",$00
	db " OF EXIT.",$00

DATA_0FC683:
	db $03,$00
	db "CHECK YOUR MAP AGA",$00
	db "IN. NOW IT SHOWS M",$00
	db "ORE.",$00

DATA_0FC6B0:
	db $04,$00
	db "CHECK YOUR MAP. IN",$00
	db " CYBERSCAPE, MAPS ",$00
	db "ONLY SHOW WHERE YO",$00
	db "U HAVE BEEN.",$00

DATA_0FC6F8:
	db $04,$00
	db "GREAT, ZONE 1 COMP",$00
	db "LETED. GET A LIFE ",$00
	db "IN THE POD NEXT TO",$00
	db " THE EXIT.",$00

DATA_0FC73E:
	db $02,$00
	db "WARNING...WARP TO ",$00
	db "LEVEL 20.",$00

DATA_0FC75D:
	db $02,$00
	db "BANDAIDS WILL HEAL",$00
	db " YOU.",$00

DATA_0FC778:
	db $04,$00
	db "TURKEY (SMILOIDUS ",$00
	db "WIMPUS): WEAK, DUM",$00
	db "B, BUT SHOOTS BACK",$00
	db ".",$00

DATA_0FC7B5:
	db $02,$00
	db "FREEZE STOPS DRONE",$00
	db "S COLD.",$00

DATA_0FC7D2:
	db $03,$00
	db "YOU ARE NOW STRONG",$00
	db " ENOUGH TO BASH DO",$00
	db "WN DOORS.",$00

DATA_0FC804:
	db $05,$00
	db "GREMLIN (SMILOIDUS",$00
	db " IMPACTUS): A NOT-",$00
	db "SO-SMART BOMB THAT",$00
	db " EXPLODES ON CONTA",$00
	db "CT.",$00

DATA_0FC856:
	db $02,$00
	db "ARMOR POWER-UPS GI",$00
	db "VE YOU MORE HITS.",$00

DATA_0FC87D:
	db $04,$00
	db "SECRET WARP: ON LE",$00
	db "VEL 10, SHOOT WALL",$00
	db " TO RIGHT OF EXIT ",$00
	db "TWICE.",$00

DATA_0FC8BF:
	db $03,$00
	db "WITH CAMO, SMILOID",$00
	db "S WILL IGNORE YOU ",$00
	db "FOR AWHILE.",$00

DATA_0FC8F3:
	db $04,$00
	db "PULSING CIRCLES AR",$00
	db "E TELEPORTS. THEY ",$00
	db "MOVE YOU TO OTHER ",$00
	db "PLACES.",$00

DATA_0FC936:
	db $04,$00
	db "WALLY (DRONUS MISD",$00
	db "IRECTUS): A WALLHU",$00
	db "GGER THAT TAKES AL",$00
	db "OT OF DAMAGE.",$00

DATA_0FC97F:
	db $03,$00
	db "HURRY. YOU WILL LO",$00
	db "SE A LIFE IF TIME ",$00
	db "RUNS OUT",$00

DATA_0FC9B0:
	db $02,$00
	db "TOUCH OR SHOOT BLA",$00
	db "CK WALLS.",$00

DATA_0FC9CF:
	db $03,$00
	db "SHIELDS PROTECT YO",$00
	db "U FROM SHOTS...BRI",$00
	db "EFLY.",$00

DATA_0FC9FD:
	db $02,$00
	db "SOME WALLS ARE BUL",$00
	db "LET-PROOF GLASS.",$00

DATA_0FCA23:
	db $02,$00
	db "AUTO-MAG GIVES YOU",$00
	db " MORE SHOTS.",$00

DATA_0FCA45:
	db $02,$00
	db "ROVER: DO NOT TUR",$00
	db "N TAIL ON THEM.",$00

DATA_0FCA69:
	db $02,$00
	db "SCANNER: ITS NO SI",$00
	db "TTING DUCK.",$00

DATA_0FCA8A:
	db $02,$00
	db "BLACK BUTTONS OPEN",$00
	db " BLACK WALLS.",$00

DATA_0FCAAD:
	db $03,$00
	db "BOUNCERS ARE STRON",$00
	db "G AND FAST, WITH N",$00
	db "O SENSE OF HUMOR.",$00

DATA_0FCAE7:
	db $02,$00
	db "SPEEDUPS MAKE YOU ",$00
	db "GO FASTER.",$00

DATA_0FCB07:
	db $02,$00
	db "YOUR SHOTS CAN NOW",$00
	db " BREAK GLASS.",$00

DATA_0FCB2A:
	db $05,$00
	db "SECRET WARP: ON LE",$00
	db "VEL 30, SHOOT WALL",$00
	db " TO RIGHT OF LAST ",$00
	db "DOOR 3 TIMES, THEN",$00
	db " TAKE KEY.",$00

DATA_0FCB83:
	db $03,$00
	db "SLIP BY TELEPORTS ",$00
	db "WHEN THEY ARE SMAL",$00
	db "L.",$00

DATA_0FCBAE:
	db $03,$00
	db "GUARD: WILL DEFEND",$00
	db " ITS POSITION TO T",$00
	db "HE END.",$00

DATA_0FCBDE:
	db $02,$00
	db "SOME BLACK DOORS A",$00
	db "RE ONE WAY ONLY.",$00

DATA_0FCC04:
	db $03,$00
	db "BLACK DOORS SOMETI",$00
	db "MES SEND YOU TO ST",$00
	db "RANGE PLACES.",$00

DATA_0FCC3A:
	db $03,$00
	db "VAMPIRE: KEEP AWAY",$00
	db " FROM THIS FACE SU",$00
	db "CKER.",$00

DATA_0FCC68:
	db $02,$00
	db "BLACK KEYS CAN OPE",$00
	db "N BLACK DOORS.",$00

DATA_0FCC8C:
	db $07,$00
	db "AT START OF LEVEL ",$00
	db "40, SHOOT WALL BEH",$00
	db "IND YOU 3 TIMES. T",$00
	db "HEN SHOOT FREEZE 3",$00
	db "TIMES TO GET KEY. ",$00
	db "KEY OPENS 3 SHOT W",$00
	db "ALL.",$00

DATA_0FCD05:
	db $04,$00
	db "KAMIKAZE: IT DOES ",$00
	db "SERIOUS DAMAGE AS ",$00
	db "IT CRASHES INTO YO",$00
	db "U.",$00

DATA_0FCD43:
	db $02,$00
	db "SOME BUTTONS ARE I",$00
	db "NVISIBLE.",$00

DATA_0FCD62:
	db $03,$00
	db "BUTTONS CAN OPEN A",$00
	db "ND CLOSE INVISIBLE",$00
	db " DOORS.",$00

DATA_0FCD92:
	db $04,$00
	db "ON LEVEL 50, TOUCH",$00
	db " DOOR OPPOSITE TEL",$00
	db "EPORT 3 TIMES, THE",$00
	db "N SHOOT IT.",$00

DATA_0FCDD9:
	db $04,$00
	db "SONAR: ITS EXCELLE",$00
	db "NT HEARING MAKES U",$00
	db "P FOR ITS LACK OF ",$00
	db "EYESIGHT.",$00

DATA_0FCE1E:
	db $03,$00
	db "NINJA: IT LIVES UP",$00
	db " TO ITS NAME. GOOD",$00
	db " LUCK.",$00

DATA_0FCE4D:
	db $03,$00
	db "SOME WINDOWS CAN O",$00
	db "NLY BE OPENED BY T",$00
	db "OUCH.",$00

DATA_0FCE7B:
	db $05,$00
	db "CONGRATULATIONS...",$00
	db " YOU HAVE BEATEN T",$00
	db "HE MAZE MASTER. YO",$00
	db "U ARE THE NEW CYBE",$00
	db "RSCAPE CHAMPION!!!",$00

DATA_0FCEDC:
	db $05,$00
	db "AN ALTERNATE ROUTE",$00
	db " FOR EXPERTS: ON L",$00
	db "EVEL 5, TOUCH WALL",$00
	db " LEFT OF EXIT 5",$00
	db " TIMES.",$00

DATA_0FCF2F:
	db $03,$00
	db "TO FIND HIDDEN ARE",$00
	db "A ON LEVEL 1, SH",$00
	db "OOT EXIT 5 TIMES.",$00

DATA_0FCF67:
	db $04,$04
	db "Tiny",$00
	db $09,$05,$01,$03
	db $0A,$09,$04,$02
	db $08,$02,$0F,$0A
	db $0C,$04,$05,$06

DATA_0FCF7E:
	db $06,$06
	db "Target",$00
	db $09,$05,$03,$09,$05,$03
	db $0A,$09,$00,$04,$03,$0A
	db $0C,$02,$08,$01,$00,$06
	db $09,$00,$04,$02,$08,$03
	db $0A,$0C,$01,$00,$06,$0A
	db $0C,$05,$06,$0C,$05,$06

DATA_0FCFAB:
	db $04,$04
	db "Multi-Player #1",$00
	db $09,$01,$05,$03
	db $08,$00,$03,$0A
	db $0A,$0C,$00,$02
	db $0C,$05,$04,$06

DATA_0FCFCD:
	db $05,$05
	db "Suspense",$00
	db $09,$01,$01,$05,$03
	db $0C,$02,$08,$01,$06
	db $09,$00,$04,$00,$03
	db $0A,$08,$01,$00,$02
	db $0C,$04,$06,$0C,$06

DATA_0FCFF1:
	db $07,$07
	db "Hudson",$00
	db $09,$01,$05,$05,$01,$01,$03
	db $0A,$0A,$09,$01,$02,$08,$02
	db $0A,$0A,$08,$04,$00,$00,$02
	db $0A,$08,$00,$05,$00,$02,$0A
	db $08,$00,$00,$01,$02,$0A,$0A
	db $08,$02,$08,$04,$06,$0A,$0A
	db $0C,$04,$04,$05,$05,$04,$06

DATA_0FD02B:
	db $05,$05
	db "Cross",$00
	db $09,$05,$01,$05,$03
	db $0A,$09,$00,$03,$0A
	db $08,$00,$00,$00,$02
	db $0A,$0C,$00,$06,$0A
	db $0C,$05,$00,$05,$06

DATA_0FD04C:
	db $06,$06
	db "Twist",$00
	db $09,$05,$03,$09,$05,$03
	db $0C,$01,$00,$00,$03,$0A
	db $09,$00,$00,$02,$08,$02
	db $08,$02,$08,$00,$00,$06
	db $0A,$0C,$00,$00,$04,$03
	db $0C,$05,$06,$0C,$05,$06

DATA_0FD078:
	db $06,$06
	db "Spiral",$00
	db $09,$01,$03,$09,$01,$03
	db $08,$06,$0C,$00,$00,$02
	db $0C,$03,$09,$02,$08,$06
	db $09,$02,$08,$06,$0C,$03
	db $08,$00,$00,$03,$09,$02
	db $0C,$04,$06,$0C,$04,$06

DATA_0FD0A5:
	db $06,$06
	db "Campus",$00
	db $09,$01,$03,$09,$01,$03
	db $08,$06,$08,$02,$0C,$02
	db $0C,$01,$00,$00,$01,$06
	db $09,$04,$00,$00,$04,$03
	db $08,$03,$08,$02,$09,$02
	db $0C,$04,$06,$0C,$04,$06

DATA_0FD0D2:
	db $06,$06
	db "Crystal",$00
	db $09,$03,$09,$05,$05,$03
	db $0C,$00,$04,$01,$03,$0A
	db $09,$02,$09,$00,$02,$0A
	db $0A,$08,$00,$06,$08,$06
	db $0A,$0C,$04,$01,$00,$03
	db $0C,$05,$05,$06,$0C,$06

DATA_0FD100:
	db $06,$06
	db "Plus",$00
	db $09,$01,$03,$09,$01,$03
	db $08,$06,$0C,$02,$0C,$02
	db $0C,$01,$01,$02,$09,$06
	db $09,$06,$08,$04,$04,$03
	db $08,$03,$08,$03,$09,$02
	db $0C,$04,$06,$0C,$04,$06

DATA_0FD12B:
	db $07,$07
	db "MedDuel",$00
	db $09,$01,$01,$01,$05,$01,$03
	db $0A,$0C,$02,$0A,$09,$04,$02
	db $08,$01,$00,$00,$00,$05,$02
	db $0A,$0C,$00,$00,$00,$03,$0A
	db $08,$01,$04,$00,$04,$00,$02
	db $0A,$0C,$01,$04,$05,$06,$0A
	db $0C,$05,$04,$05,$05,$05,$04

DATA_0FD166:
	db $07,$07
	db "Midi-Maze",$00
	db $09,$05,$05,$05,$05,$05,$03
	db $08,$05,$05,$01,$05,$03,$0A
	db $0A,$09,$01,$02,$0F,$0A,$0A
	db $0A,$08,$04,$00,$01,$02,$0A
	db $0A,$0A,$0F,$08,$04,$06,$0A
	db $0A,$0C,$05,$04,$05,$05,$02
	db $0C,$05,$05,$05,$05,$05,$06

DATA_0FD1A3:
	db $08,$08
	db "Shatter",$00
	db $09,$05,$01,$03,$09,$01,$01,$03
	db $08,$01,$02,$08,$02,$0C,$02,$0A
	db $08,$06,$08,$00,$04,$01,$04,$02
	db $0C,$01,$02,$08,$01,$00,$01,$06
	db $09,$04,$00,$04,$02,$08,$04,$03
	db $08,$01,$04,$01,$00,$02,$09,$02
	db $0A,$08,$03,$08,$02,$08,$04,$02
	db $0C,$04,$04,$06,$0C,$04,$05,$06

DATA_0FD1ED:
	db $05,$05
	db "Feeding Time",$00
	db $09,$01,$01,$01,$03
	db $08,$00,$00,$00,$02
	db $08,$00,$00,$00,$02
	db $08,$00,$00,$00,$02
	db $0C,$04,$04,$04,$06

DATA_0FD215:
	db $0A,$0A
	db "Big Center",$00
	db $09,$05,$01,$03,$09,$01,$05,$01,$05,$03
	db $08,$03,$0C,$00,$06,$08,$05,$00,$07,$0A
	db $08,$04,$01,$00,$03,$08,$03,$08,$05,$02
	db $0C,$03,$0C,$00,$00,$00,$00,$02,$0D,$02
	db $09,$04,$01,$00,$00,$00,$00,$04,$01,$02
	db $08,$05,$00,$00,$00,$00,$00,$03,$08,$06
	db $0A,$09,$06,$08,$00,$00,$00,$04,$00,$03
	db $08,$04,$01,$06,$0A,$08,$00,$05,$02,$0A
	db $0A,$09,$00,$01,$04,$02,$0C,$03,$0C,$02
	db $0C,$04,$06,$0C,$05,$04,$05,$04,$05,$06

DATA_0FD286:
	db $0E,$05
	db "",$00
	db $09,$01,$05,$05,$01,$01,$05,$03,$0D,$01,$01,$01,$05,$03
	db $08,$02,$09,$03,$08,$02,$0F,$0A,$0F,$08,$00,$02,$0F,$0A
	db $08,$06,$08,$02,$08,$04,$01,$00,$05,$04,$04,$04,$05,$06
	db $0A,$0F,$08,$02,$0E,$0B,$0C,$06,$09,$01,$05,$05,$01,$03
	db $0C,$05,$04,$04,$05,$04,$05,$05,$04,$06,$0D,$07,$0C,$06

DATA_0FD2CF:
	db $07,$07
	db "",$00
	db $09,$05,$01,$05,$01,$05,$03
	db $0A,$0F,$0A,$0F,$0A,$0F,$0A
	db $08,$05,$00,$05,$00,$05,$02
	db $0A,$0F,$0A,$0F,$0A,$0F,$0A
	db $08,$05,$00,$05,$00,$05,$02
	db $0A,$0F,$0A,$0F,$0A,$0F,$0A
	db $0C,$05,$04,$05,$04,$05,$06

DATA_0FD303:
	db $07,$07
	db "",$00
	db $09,$05,$01,$05,$01,$05,$03
	db $0A,$0F,$0A,$0F,$0A,$0F,$0A
	db $08,$05,$00,$05,$00,$05,$02
	db $08,$07,$08,$07,$08,$07,$0A
	db $08,$05,$00,$05,$00,$05,$02
	db $0A,$0F,$0A,$0F,$0A,$0F,$0A
	db $0C,$05,$04,$05,$04,$05,$06

DATA_0FD337:
	db $09,$09
	db "",$00
	db $09,$01,$01,$01,$03,$09,$01,$01,$03
	db $08,$00,$04,$04,$06,$0C,$04,$00,$02
	db $08,$02,$09,$01,$05,$01,$03,$08,$02
	db $08,$02,$0C,$06,$09,$00,$02,$0C,$06
	db $0C,$06,$0F,$09,$00,$06,$0A,$09,$03
	db $09,$03,$0F,$0C,$06,$09,$02,$08,$02
	db $08,$02,$0D,$03,$0F,$0C,$06,$08,$02
	db $08,$00,$01,$02,$09,$01,$01,$00,$02
	db $0C,$04,$04,$06,$0C,$04,$04,$04,$06

DATA_0FD38B:
	db $05,$08
	db "",$00
	db $0D,$05,$05,$03,$0F
	db $09,$03,$09,$00,$03
	db $0C,$06,$08,$00,$02
	db $0D,$01,$04,$04,$06
	db $09,$00,$03,$0D,$03
	db $08,$00,$02,$0F,$0A
	db $0C,$04,$02,$0D,$06
	db $0D,$07,$0A,$0D,$07

DATA_0FD3B6:
	db $05,$05
	db "",$00
	db $09,$05,$05,$07,$0B
	db $08,$01,$01,$03,$0A
	db $08,$00,$00,$02,$0A
	db $08,$04,$04,$02,$0A
	db $0C,$05,$05,$04,$06

DATA_0FD3D2:
	db $05,$05
	db "",$00
	db $09,$01,$00,$01,$03
	db $08,$00,$00,$00,$02
	db $00,$00,$00,$00,$00
	db $08,$00,$00,$00,$02
	db $0C,$04,$04,$04,$06

DATA_0FD3EE:
	db $04,$05
	db "",$00
	db $0B,$0B,$0D,$07
	db $0A,$0A,$0D,$03
	db $0A,$0C,$03,$0A
	db $08,$01,$04,$06
	db $0C,$06,$0D,$07

DATA_0FD405:
	db $0C,$04
	db "",$00
	db $09,$03,$09,$01,$01,$03,$09,$01,$01,$03,$09,$03
	db $08,$00,$00,$02,$08,$00,$00,$02,$08,$00,$00,$02
	db $08,$00,$00,$02,$08,$00,$00,$02,$08,$00,$00,$02
	db $0C,$06,$0C,$04,$04,$06,$0C,$04,$04,$06,$0C,$06

DATA_0FD438:
	db $05,$05
	db "",$00
	db $09,$05,$01,$05,$03
	db $0A,$0F,$0A,$0F,$0A
	db $08,$05,$00,$05,$02
	db $0A,$0F,$0A,$0F,$0A
	db $0C,$05,$04,$05,$06

DATA_0FD454:
	db $0C,$05
	db "",$00
	db $09,$01,$07,$0B,$09,$07,$0B,$0F,$09,$01,$03,$0B
	db $08,$02,$0D,$02,$0C,$01,$02,$09,$00,$04,$02,$0E
	db $08,$00,$05,$00,$05,$00,$00,$00,$02,$0F,$0E,$0B
	db $08,$02,$0D,$02,$09,$04,$02,$0C,$00,$01,$01,$02
	db $0C,$04,$07,$0E,$0C,$07,$0E,$0F,$0C,$04,$06,$0C

DATA_0FD493:
	db $07,$07
	db "",$00
	db $09,$05,$05,$05,$05,$05,$03
	db $08,$05,$05,$01,$05,$03,$0A
	db $0A,$09,$01,$02,$0F,$0A,$0A
	db $0A,$08,$04,$00,$01,$02,$0A
	db $0A,$0A,$0F,$08,$04,$06,$0A
	db $0A,$0C,$05,$04,$05,$05,$02
	db $0C,$05,$05,$05,$05,$05,$06

DATA_0FD4C7:
	db $05,$08
	db "",$00
	db $0D,$01,$05,$01,$07
	db $0B,$0E,$09,$00,$03
	db $0C,$07,$08,$00,$02
	db $0D,$01,$04,$04,$06
	db $09,$00,$03,$09,$03
	db $08,$00,$02,$08,$02
	db $0C,$04,$02,$0C,$06
	db $0D,$07,$0A,$0D,$07

DATA_0FD4F2:
	db $09,$09
	db "",$00
	db $09,$05,$05,$01,$03,$09,$01,$01,$03
	db $0A,$09,$07,$0A,$0A,$0A,$0A,$0A,$0A
	db $08,$04,$01,$02,$0C,$00,$06,$0A,$0E
	db $0A,$09,$02,$08,$05,$00,$05,$04,$03
	db $0A,$08,$02,$0A,$09,$00,$01,$01,$02
	db $0A,$08,$06,$0A,$0C,$04,$06,$08,$06
	db $08,$04,$01,$00,$05,$05,$05,$04,$03
	db $0A,$09,$02,$0A,$09,$01,$03,$09,$02
	db $0C,$04,$06,$0E,$0C,$04,$04,$04,$06

DATA_0FD546:
	db $07,$07
	db "",$00
	db $09,$05,$01,$01,$01,$05,$03
	db $0A,$09,$02,$0A,$08,$03,$0A
	db $08,$04,$00,$00,$00,$04,$02
	db $0A,$0D,$00,$00,$00,$07,$0A
	db $08,$01,$00,$00,$00,$01,$02
	db $0A,$0C,$02,$0A,$08,$06,$0A
	db $0C,$05,$04,$04,$04,$05,$06

DATA_0FD57A:
	db $0E,$06
	db "",$00
	db $09,$01,$03,$0D,$01,$01,$05,$07,$09,$01,$01,$03,$0D,$07
	db $08,$04,$04,$03,$0C,$06,$0F,$0B,$0C,$04,$04,$06,$0D,$07
	db $0A,$09,$03,$08,$01,$01,$01,$00,$01,$01,$01,$01,$01,$07
	db $0A,$0C,$06,$08,$04,$04,$04,$00,$04,$04,$04,$04,$04,$07
	db $08,$01,$01,$06,$09,$03,$0F,$0E,$09,$01,$01,$03,$0D,$07
	db $0C,$04,$06,$0F,$0C,$04,$05,$07,$0C,$04,$04,$06,$0D,$07

DATA_0FD5D1:
	db $0A,$05
	db "",$00
	db $09,$01,$05,$05,$07,$0D,$05,$05,$01,$03
	db $0C,$02,$09,$01,$01,$01,$01,$03,$0C,$06
	db $0D,$00,$00,$00,$00,$00,$00,$00,$05,$05
	db $09,$02,$0C,$04,$04,$04,$04,$06,$09,$03
	db $0C,$04,$05,$05,$07,$0D,$05,$05,$04,$06

DATA_0FD606:
	db $0B,$0B
	db "",$00
	db $09,$05,$05,$05,$03,$0B,$09,$05,$05,$05,$03
	db $0A,$09,$03,$0B,$08,$04,$02,$0B,$09,$03,$0A
	db $0A,$0A,$0E,$08,$02,$0F,$08,$02,$0E,$0A,$0A
	db $0A,$0C,$03,$0E,$08,$01,$02,$0E,$09,$06,$0A
	db $0C,$01,$04,$01,$00,$00,$00,$01,$04,$01,$06
	db $0D,$02,$0F,$08,$00,$00,$00,$02,$0D,$00,$05
	db $09,$04,$01,$04,$00,$00,$00,$04,$01,$04,$03
	db $0A,$09,$06,$0B,$08,$04,$02,$0B,$0C,$03,$0A
	db $0A,$0A,$0B,$08,$02,$0B,$08,$02,$0B,$0A,$0A
	db $0A,$0C,$06,$0E,$08,$00,$02,$0E,$0C,$06,$0A
	db $0C,$05,$05,$05,$06,$0A,$0C,$05,$05,$05,$06

DATA_0FD682:
	db $04,$07
	db "",$00
	db $09,$01,$01,$03
	db $08,$02,$0C,$02
	db $08,$04,$01,$02
	db $08,$03,$08,$02
	db $08,$00,$00,$02
	db $0A,$0A,$0A,$0A
	db $0E,$0E,$0A,$0E

DATA_0FD6A1:
	db $07,$07
	db "",$00
	db $09,$01,$03,$0B,$09,$01,$03
	db $08,$00,$04,$04,$04,$00,$02
	db $08,$00,$01,$01,$01,$00,$02
	db $08,$06,$0C,$04,$02,$08,$06
	db $08,$03,$09,$01,$00,$00,$07
	db $08,$02,$08,$02,$0A,$08,$03
	db $0C,$06,$0C,$04,$02,$0C,$06

DATA_0FD6D5:
	db $09,$07
	db "",$00
	db $0B,$0B,$0F,$0B,$0B,$0B,$0F,$0B,$0B
	db $0A,$0E,$0B,$0E,$0A,$0E,$0B,$0E,$0A
	db $0E,$0F,$0E,$0F,$0A,$0F,$0E,$0F,$0E
	db $0B,$0D,$01,$01,$00,$01,$01,$07,$0B
	db $0E,$0F,$0C,$00,$00,$00,$06,$0F,$0E
	db $0D,$05,$07,$0C,$00,$06,$0D,$05,$07
	db $0D,$05,$05,$07,$0E,$0D,$05,$05,$07

DATA_0FD717:
	db $07,$07
	db "",$00
	db $09,$01,$01,$01,$01,$01,$03
	db $08,$00,$00,$00,$00,$00,$02
	db $08,$02,$0A,$0A,$0A,$08,$02
	db $08,$02,$0A,$0A,$0A,$08,$02
	db $08,$02,$0E,$0E,$0E,$08,$02
	db $08,$00,$01,$01,$01,$00,$02
	db $0C,$04,$04,$04,$04,$04,$06

DATA_0FD74B:
	db $0E,$05
	db "",$00
	db $09,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$03
	db $08,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$00,$02
	db $0A,$09,$01,$01,$03,$09,$03,$0F,$09,$01,$03,$0F,$08,$02
	db $0E,$08,$00,$00,$02,$0C,$06,$0B,$0C,$04,$06,$0F,$08,$02
	db $0D,$04,$04,$04,$04,$05,$05,$04,$05,$05,$05,$05,$04,$06

DATA_0FD794:
	db $06,$06
	db "",$00
	db $0D,$03,$0D,$05,$05,$03
	db $09,$04,$01,$01,$01,$02
	db $08,$01,$00,$04,$04,$02
	db $08,$00,$02,$09,$03,$0A
	db $08,$00,$02,$0C,$06,$0A
	db $0C,$04,$04,$05,$05,$06

DATA_0FD7BB:
	db $0E,$05
	db "",$00
	db $09,$01,$05,$03,$0F,$0F,$0F,$09,$05,$05,$05,$05,$03,$0F
	db $08,$02,$0F,$0C,$01,$03,$0F,$0A,$0F,$0F,$0F,$0F,$0A,$0F
	db $08,$02,$0F,$0F,$08,$04,$05,$00,$01,$01,$05,$05,$02,$0F
	db $08,$02,$0F,$09,$02,$0F,$0F,$0C,$00,$02,$0F,$0F,$0A,$0F
	db $0C,$04,$05,$04,$04,$07,$0F,$0F,$0C,$06,$0F,$0F,$0E,$0F

DATA_0FD804:
	db $05,$05
	db "",$00
	db $0B,$0B,$0B,$0B,$0F
	db $0C,$00,$00,$00,$07
	db $0D,$00,$00,$00,$07
	db $0D,$00,$00,$00,$07
	db $0F,$0E,$0E,$0E,$0F

DATA_0FD820:
	db $0C,$04
	db "",$00
	db $0D,$01,$07,$0D,$01,$07,$0D,$01,$07,$0D,$01,$06
	db $09,$00,$03,$09,$00,$03,$09,$00,$03,$09,$00,$03
	db $08,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$02
	db $0C,$04,$06,$0C,$04,$06,$0C,$04,$06,$0C,$04,$06

DATA_0FD853:
	db $08,$08
	db "",$00
	db $0F,$0D,$01,$03,$09,$01,$07,$0F
	db $0B,$0B,$0C,$02,$08,$06,$0B,$0B
	db $0A,$08,$03,$0A,$0A,$09,$02,$0A
	db $0E,$0C,$04,$00,$00,$04,$06,$0E
	db $0B,$09,$01,$00,$00,$01,$03,$0B
	db $0A,$08,$06,$0A,$0A,$0C,$02,$0A
	db $0E,$0E,$09,$02,$08,$03,$0E,$0E
	db $0F,$0D,$04,$06,$0C,$04,$07,$0F

DATA_0FD896:
	db $0E,$0E
	db "",$00
	db $09,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$03
	db $08,$00,$04,$04,$00,$00,$00,$00,$00,$00,$04,$04,$00,$02
	db $08,$02,$09,$03,$0C,$04,$00,$00,$04,$06,$09,$03,$08,$02
	db $08,$02,$0C,$02,$09,$07,$08,$02,$0D,$03,$08,$06,$08,$02
	db $08,$00,$03,$08,$06,$09,$00,$00,$03,$0C,$02,$09,$00,$02
	db $08,$04,$06,$08,$03,$08,$00,$00,$02,$09,$02,$0C,$04,$02
	db $0A,$09,$03,$0E,$0C,$02,$08,$02,$0C,$04,$04,$01,$03,$0A
	db $0A,$0C,$00,$01,$05,$00,$00,$00,$01,$05,$05,$00,$06,$0A
	db $08,$03,$0E,$08,$03,$0C,$00,$00,$06,$09,$03,$0A,$09,$02
	db $08,$00,$05,$00,$00,$05,$04,$04,$05,$00,$00,$00,$00,$02
	db $08,$06,$0B,$08,$06,$09,$01,$01,$03,$0C,$06,$0A,$0C,$02
	db $0A,$09,$00,$04,$07,$08,$00,$00,$00,$05,$05,$00,$03,$0A
	db $0A,$0C,$06,$09,$03,$08,$04,$04,$06,$09,$03,$0C,$06,$0A
	db $0C,$05,$05,$04,$06,$0C,$05,$01,$07,$0C,$04,$05,$05,$06

DATA_0FD95D:
	db $0E,$05
	db "",$00
	db $09,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$07,$0B,$0B
	db $0C,$04,$02,$0C,$06,$08,$02,$08,$00,$02,$08,$05,$06,$0E
	db $09,$05,$00,$05,$05,$00,$02,$08,$00,$02,$08,$05,$05,$07
	db $08,$03,$0A,$09,$03,$08,$02,$08,$00,$02,$08,$01,$03,$0B
	db $0C,$04,$04,$04,$06,$0C,$04,$04,$04,$04,$04,$04,$04,$06

DATA_0FD9A6:
	db $09,$09
	db "",$00
	db $09,$01,$03,$09,$01,$03,$09,$01,$03
	db $08,$00,$00,$00,$00,$00,$00,$00,$00
	db $0C,$04,$06,$0C,$04,$06,$0C,$04,$06
	db $09,$01,$03,$09,$01,$03,$09,$01,$03
	db $08,$00,$00,$00,$00,$00,$00,$00,$02
	db $0C,$04,$06,$0C,$04,$06,$0C,$04,$06
	db $09,$01,$03,$09,$01,$03,$09,$01,$03
	db $08,$00,$00,$00,$00,$00,$00,$00,$00
	db $0C,$04,$06,$0C,$04,$06,$0C,$04,$06

DATA_0FD9FA:
	db $09,$09
	db "",$00
	db $09,$03,$0F,$0D,$07,$0F,$09,$01,$03
	db $0C,$00,$03,$0F,$0F,$09,$00,$00,$02
	db $0F,$0C,$06,$0F,$09,$04,$00,$00,$06
	db $0B,$0F,$0F,$09,$02,$0F,$08,$06,$0F
	db $0E,$0F,$09,$04,$00,$01,$06,$0F,$0B
	db $0F,$09,$02,$0F,$08,$06,$0F,$0F,$0E
	db $09,$00,$00,$01,$06,$0F,$09,$03,$0F
	db $08,$00,$00,$06,$0F,$0F,$0C,$00,$03
	db $0C,$04,$04,$05,$05,$07,$0F,$0C,$06

DATA_0FDA4E:
	db $0D,$08
	db "",$00
	db $0F,$09,$01,$01,$03,$0F,$0F,$0F,$09,$01,$01,$03,$0F
	db $09,$00,$00,$04,$04,$01,$01,$01,$04,$04,$00,$00,$03
	db $0C,$04,$06,$09,$03,$0C,$04,$06,$09,$03,$0C,$04,$06
	db $0D,$05,$07,$0C,$06,$0D,$05,$07,$0C,$06,$0D,$05,$07
	db $0D,$05,$07,$09,$03,$0D,$05,$07,$09,$03,$0D,$05,$07
	db $09,$01,$03,$0C,$06,$09,$01,$03,$0C,$06,$09,$01,$03
	db $0C,$00,$00,$01,$01,$04,$04,$04,$01,$01,$00,$00,$06
	db $0F,$0C,$04,$04,$06,$0F,$0F,$0F,$0C,$04,$04,$06,$0F

DATA_0FDAB9:
	db $0E,$0E
	db "",$00
	db $09,$01,$01,$03,$09,$01,$01,$05,$05,$05,$05,$05,$05,$03
	db $08,$00,$00,$02,$08,$00,$02,$09,$01,$01,$05,$05,$03,$0A
	db $08,$04,$04,$02,$08,$00,$02,$08,$06,$08,$01,$03,$0A,$0A
	db $0C,$03,$09,$04,$04,$04,$02,$0C,$03,$08,$04,$00,$02,$0A
	db $09,$00,$02,$09,$05,$05,$06,$09,$06,$08,$01,$04,$02,$0A
	db $08,$06,$0A,$0A,$09,$03,$0B,$0C,$03,$08,$00,$01,$02,$0A
	db $08,$03,$0A,$0C,$06,$0C,$02,$09,$06,$0A,$0C,$04,$02,$0A
	db $0C,$00,$02,$09,$05,$05,$04,$04,$05,$04,$05,$05,$02,$0A
	db $09,$02,$0A,$08,$03,$09,$03,$0D,$01,$01,$01,$01,$00,$06
	db $08,$06,$0A,$08,$02,$08,$00,$01,$00,$00,$00,$00,$02,$0B
	db $08,$01,$02,$08,$02,$0A,$08,$02,$08,$00,$00,$02,$08,$02
	db $0C,$02,$0A,$0A,$08,$02,$08,$06,$08,$00,$04,$00,$02,$0A
	db $09,$02,$0A,$0C,$04,$06,$0C,$05,$00,$04,$01,$04,$00,$02
	db $0C,$04,$04,$05,$05,$05,$05,$05,$06,$0D,$04,$05,$04,$02

DATA_0FDB80:
	db $07,$07
	db "",$00
	db $09,$01,$01,$01,$01,$01,$03
	db $08,$00,$00,$00,$00,$00,$02
	db $0C,$04,$04,$04,$04,$04,$02
	db $09,$01,$03,$0F,$09,$01,$02
	db $08,$00,$00,$01,$00,$00,$02
	db $08,$00,$00,$00,$00,$00,$02
	db $0C,$04,$04,$04,$04,$04,$06

DATA_0FDBB4:
	db $04,$04
	db "",$00
	db $09,$05,$01,$03
	db $0A,$09,$04,$02
	db $08,$02,$0F,$0A
	db $0C,$04,$05,$06

DATA_0FDBC7:
	db $05,$05
	db "",$00
	db $09,$05,$01,$05,$03
	db $0A,$0F,$0A,$0F,$0A
	db $08,$05,$00,$05,$02
	db $0A,$0F,$0A,$0F,$0A
	db $0C,$05,$04,$05,$06

DATA_0FDBE3:
	db $05,$05
	db "",$00
	db $09,$05,$03,$09,$03
	db $0A,$0F,$08,$04,$02
	db $08,$01,$00,$03,$0A
	db $0A,$0C,$00,$04,$02
	db $0C,$05,$04,$05,$06

DATA_0FDBFF:
	db $05,$05
	db "",$00
	db $09,$01,$01,$05,$03
	db $0A,$0A,$08,$05,$02
	db $08,$04,$00,$01,$02
	db $08,$05,$02,$0A,$0A
	db $0C,$05,$04,$04,$06

DATA_0FDC1B:
	db $04,$04
	db "",$00
	db $09,$05,$01,$03
	db $08,$01,$02,$0A
	db $0A,$08,$04,$02
	db $0C,$04,$05,$06

DATA_0FDC2E:
	db $05,$05
	db "",$00
	db $09,$01,$01,$01,$03
	db $08,$00,$00,$00,$02
	db $08,$00,$00,$00,$02
	db $08,$00,$00,$00,$02
	db $0C,$04,$04,$04,$06

DATA_0FDC4A:
	db $06,$06
	db "",$00
	db $09,$01,$05,$01,$05,$03
	db $0A,$0E,$09,$00,$03,$0A
	db $08,$01,$00,$02,$08,$02
	db $0A,$08,$00,$02,$0C,$02
	db $0A,$08,$04,$04,$05,$02
	db $0C,$04,$05,$05,$05,$06

DATA_0FDC71:
	db $06,$06
	db "",$00
	db $09,$05,$01,$05,$01,$03
	db $08,$03,$0A,$09,$02,$0A
	db $0A,$0C,$00,$00,$02,$0A
	db $0A,$09,$00,$00,$00,$02
	db $08,$00,$04,$00,$06,$0A
	db $0C,$04,$05,$04,$05,$06

DATA_0FDC98:
	db $06,$06
	db "",$00
	db $09,$01,$03,$09,$01,$03
	db $08,$06,$0A,$0A,$0E,$0A
	db $0A,$09,$00,$00,$01,$02
	db $08,$00,$00,$00,$02,$0A
	db $0A,$0C,$00,$02,$0C,$02
	db $0C,$05,$04,$04,$05,$06

DATA_0FDCBF:
	db $06,$06
	db "",$00
	db $09,$01,$03,$09,$01,$03
	db $08,$06,$0A,$0A,$0E,$0A
	db $0A,$09,$00,$00,$01,$02
	db $08,$00,$00,$00,$02,$0A
	db $0A,$0C,$00,$02,$0C,$02
	db $0C,$05,$04,$04,$05,$06

DATA_0FDCE6:
	db $06,$06
	db "",$00
	db $09,$01,$03,$09,$01,$03
	db $08,$06,$0A,$0A,$0E,$0A
	db $0A,$09,$00,$00,$01,$02
	db $08,$00,$00,$00,$02,$0A
	db $0A,$0C,$00,$02,$0C,$02
	db $0C,$05,$04,$04,$05,$06

DATA_0FDD0D:
	db $06,$06
	db "",$00
	db $09,$01,$01,$01,$01,$03
	db $08,$00,$00,$00,$00,$02
	db $08,$00,$00,$00,$00,$02
	db $08,$00,$00,$00,$00,$02
	db $08,$00,$00,$00,$00,$02
	db $0C,$04,$04,$04,$04,$06

DATA_0FDD34:
	db $07,$07
	db "",$00
	db $09,$01,$01,$01,$05,$05,$03
	db $0A,$0C,$04,$00,$01,$03,$0A
	db $08,$01,$01,$00,$00,$02,$0A
	db $08,$00,$00,$00,$00,$00,$02
	db $0A,$08,$00,$00,$04,$04,$02
	db $0A,$0C,$04,$00,$01,$03,$0A
	db $0C,$05,$05,$04,$04,$04,$06

DATA_0FDD68:
	db $07,$07
	db "",$00
	db $09,$01,$01,$01,$05,$05,$03
	db $0A,$0C,$04,$00,$01,$03,$0A
	db $08,$01,$01,$00,$00,$02,$0A
	db $08,$00,$00,$00,$00,$00,$02
	db $0A,$08,$00,$00,$04,$04,$02
	db $0A,$0C,$04,$00,$01,$03,$0A
	db $0C,$05,$05,$04,$04,$04,$06

DATA_0FDD9C:
	db $07,$07
	db "",$00
	db $09,$01,$01,$01,$05,$05,$03
	db $0A,$0C,$04,$00,$01,$03,$0A
	db $08,$01,$01,$00,$00,$02,$0A
	db $08,$00,$00,$00,$00,$00,$02
	db $0A,$08,$00,$00,$04,$04,$02
	db $0A,$0C,$04,$00,$01,$03,$0A
	db $0C,$05,$05,$04,$04,$04,$06

DATA_0FDDD0:
	db $07,$07
	db "",$00
	db $09,$01,$01,$01,$05,$05,$03
	db $0A,$0C,$04,$00,$05,$03,$0A
	db $08,$01,$01,$00,$03,$0A,$0A
	db $08,$00,$00,$00,$00,$00,$02
	db $0A,$0A,$0C,$00,$04,$04,$02
	db $0A,$0C,$05,$00,$01,$03,$0A
	db $0C,$05,$05,$04,$04,$04,$06

DATA_0FDE04:
	db $07,$07
	db "",$00
	db $09,$01,$01,$01,$05,$05,$03
	db $0A,$0C,$04,$00,$05,$03,$0A
	db $08,$01,$01,$00,$03,$0A,$0A
	db $08,$00,$00,$00,$00,$00,$02
	db $0A,$0A,$0C,$00,$04,$04,$02
	db $0A,$0C,$05,$00,$01,$03,$0A
	db $0C,$05,$05,$04,$04,$04,$06

DATA_0FDE38:
	db $07,$07
	db "",$00
	db $09,$01,$01,$01,$01,$01,$03
	db $08,$00,$00,$00,$00,$00,$02
	db $08,$00,$00,$00,$00,$00,$02
	db $08,$00,$00,$00,$00,$00,$02
	db $08,$00,$00,$00,$00,$00,$02
	db $08,$00,$00,$00,$00,$00,$02
	db $0C,$04,$04,$04,$04,$04,$06

DATA_0FDE6C:
	db $08,$09
	db "",$00
	db $09,$05,$01,$01,$01,$01,$05,$03
	db $08,$03,$0A,$0A,$0A,$0A,$09,$02
	db $0A,$08,$02,$08,$02,$08,$02,$0A
	db $08,$04,$00,$00,$00,$02,$08,$02
	db $08,$03,$08,$00,$00,$02,$0C,$02
	db $08,$02,$08,$00,$00,$00,$01,$02
	db $0A,$08,$02,$08,$02,$08,$02,$0A
	db $08,$06,$0A,$0A,$0A,$0A,$0C,$02
	db $0C,$05,$04,$04,$04,$04,$05,$06

DATA_0FDEB7:
	db $08,$09
	db "",$00
	db $09,$05,$01,$01,$01,$01,$05,$03
	db $08,$03,$0A,$0A,$0A,$0A,$09,$02
	db $0A,$08,$02,$08,$02,$08,$02,$0A
	db $08,$04,$00,$00,$00,$02,$08,$02
	db $08,$03,$08,$00,$00,$02,$0C,$02
	db $08,$02,$08,$00,$00,$00,$01,$02
	db $0A,$08,$02,$08,$02,$08,$02,$0A
	db $08,$06,$0A,$0A,$0A,$0A,$0C,$02
	db $0C,$05,$04,$04,$04,$04,$05,$06

DATA_0FDF02:
	db $08,$09
	db "",$00
	db $09,$05,$01,$01,$01,$01,$05,$03
	db $08,$03,$0A,$0A,$0A,$0A,$09,$02
	db $0A,$08,$02,$08,$02,$08,$02,$0A
	db $08,$04,$00,$00,$00,$02,$08,$02
	db $08,$03,$08,$00,$00,$02,$0C,$02
	db $08,$02,$08,$00,$00,$00,$01,$02
	db $0A,$08,$02,$08,$02,$08,$02,$0A
	db $08,$06,$0A,$0A,$0A,$0A,$0C,$02
	db $0C,$05,$04,$04,$04,$04,$05,$06

DATA_0FDF4D:
	db $08,$09
	db "",$00
	db $09,$05,$01,$01,$01,$01,$05,$03
	db $08,$03,$0A,$0A,$0A,$0A,$09,$02
	db $0A,$08,$02,$08,$02,$08,$02,$0A
	db $08,$04,$00,$00,$00,$02,$08,$02
	db $08,$03,$08,$00,$00,$02,$0C,$02
	db $08,$02,$08,$00,$00,$00,$01,$02
	db $0A,$08,$02,$08,$02,$08,$02,$0A
	db $08,$06,$0A,$0A,$0A,$0A,$0C,$02
	db $0C,$05,$04,$04,$04,$04,$05,$06

DATA_0FDF98:
	db $08,$09
	db "",$00
	db $09,$05,$01,$01,$01,$01,$05,$03
	db $08,$03,$0A,$0A,$0A,$0A,$09,$02
	db $0A,$08,$02,$08,$02,$08,$02,$0A
	db $08,$04,$00,$00,$00,$02,$08,$02
	db $08,$03,$08,$00,$00,$02,$0C,$02
	db $08,$02,$08,$00,$00,$00,$01,$02
	db $0A,$08,$02,$08,$02,$08,$02,$0A
	db $08,$06,$0A,$0A,$0A,$0A,$0C,$02
	db $0C,$05,$04,$04,$04,$04,$05,$06

DATA_0FDFE3:
	db $08,$08
	db "",$00
	db $09,$01,$01,$01,$01,$01,$01,$03
	db $08,$00,$00,$00,$00,$00,$00,$02
	db $08,$00,$00,$00,$00,$00,$00,$02
	db $08,$00,$00,$00,$00,$00,$00,$02
	db $08,$00,$00,$00,$00,$00,$00,$02
	db $08,$00,$00,$00,$00,$00,$00,$02
	db $08,$00,$00,$00,$00,$00,$00,$02
	db $0C,$04,$04,$04,$04,$04,$04,$06

DATA_0FE026:
	db $04,$04
	db "",$00
	db $09,$05,$01,$03
	db $0A,$09,$04,$02
	db $08,$02,$0F,$0A
	db $0C,$04,$05,$06

DATA_0FE039:
	db $05,$05
	db "",$00
	db $09,$05,$01,$05,$03
	db $0A,$0F,$0A,$0F,$0A
	db $08,$05,$00,$05,$02
	db $0A,$0F,$0A,$0F,$0A
	db $0C,$05,$04,$05,$06

DATA_0FE055:
	db $05,$05
	db "",$00
	db $09,$05,$03,$09,$03
	db $0A,$0F,$08,$04,$02
	db $08,$01,$00,$03,$0A
	db $0A,$0C,$00,$04,$02
	db $0C,$05,$04,$05,$06

DATA_0FE071:
	db $05,$05
	db "",$00
	db $09,$05,$05,$01,$03
	db $0A,$09,$05,$00,$02
	db $0A,$08,$04,$02,$0A
	db $08,$00,$04,$06,$0A
	db $0C,$04,$05,$05,$06

DATA_0FE08D:
	db $04,$04
	db "",$00
	db $09,$05,$01,$03
	db $0A,$09,$00,$02
	db $08,$00,$00,$02
	db $0C,$04,$04,$06

DATA_0FE0A0:
	db $08,$08
	db "",$00
	db $09,$01,$01,$01,$01,$01,$01,$03
	db $08,$00,$00,$00,$00,$00,$00,$02
	db $08,$00,$00,$00,$00,$00,$00,$02
	db $08,$00,$00,$00,$00,$00,$00,$02
	db $08,$00,$00,$00,$00,$00,$00,$02
	db $08,$00,$00,$00,$00,$00,$00,$02
	db $08,$00,$00,$00,$00,$00,$00,$02
	db $0C,$04,$04,$04,$04,$04,$04,$06

DATA_0FE0E3:
	db $0A,$0A
	db "",$00
	db $09,$01,$01,$01,$01,$01,$01,$01,$01,$03
	db $08,$04,$04,$04,$02,$0C,$00,$04,$04,$02
	db $08,$01,$05,$03,$08,$05,$02,$09,$03,$0A
	db $08,$00,$05,$02,$0A,$0F,$08,$06,$0C,$02
	db $08,$00,$03,$08,$00,$01,$00,$03,$09,$02
	db $08,$02,$0A,$08,$00,$00,$00,$04,$02,$0A
	db $08,$00,$02,$08,$00,$00,$00,$01,$00,$02
	db $0A,$08,$00,$00,$04,$04,$02,$0A,$0C,$02
	db $0A,$0C,$06,$0C,$03,$09,$06,$0A,$09,$02
	db $0C,$05,$05,$05,$06,$0C,$05,$04,$04,$06

DATA_0FE14A:
	db $0A,$0A
	db "",$00
	db $09,$01,$05,$05,$01,$05,$01,$01,$01,$03
	db $0A,$08,$05,$05,$04,$05,$02,$0A,$0A,$0A
	db $08,$04,$05,$01,$03,$09,$06,$0A,$0A,$0A
	db $0A,$0D,$01,$06,$0A,$08,$03,$0A,$08,$02
	db $08,$05,$04,$07,$08,$00,$02,$08,$02,$0A
	db $08,$05,$05,$01,$00,$00,$00,$00,$00,$02
	db $08,$03,$09,$04,$04,$00,$04,$06,$0A,$0A
	db $08,$00,$02,$09,$01,$02,$09,$01,$06,$0A
	db $08,$02,$0A,$0A,$08,$02,$08,$06,$09,$02
	db $0C,$04,$04,$04,$04,$04,$04,$05,$04,$06

DATA_0FE1B1:
	db $0A,$0A
	db "",$00
	db $09,$05,$01,$01,$01,$01,$01,$01,$05,$03
	db $08,$01,$02,$0C,$00,$06,$0A,$08,$07,$0A
	db $08,$06,$0A,$0D,$00,$03,$0A,$08,$05,$02
	db $08,$05,$00,$01,$02,$0A,$08,$04,$03,$0A
	db $08,$05,$00,$00,$00,$02,$08,$01,$00,$02
	db $08,$03,$08,$00,$00,$00,$00,$04,$00,$02
	db $0A,$0A,$0A,$08,$04,$02,$0A,$09,$06,$0A
	db $08,$00,$00,$00,$05,$02,$0A,$08,$01,$02
	db $0A,$0A,$0A,$0A,$0B,$0A,$0A,$0A,$0A,$0A
	db $0C,$04,$04,$04,$04,$04,$04,$04,$04,$06

DATA_0FE218:
	db $0A,$0A
	db "",$00
	db $09,$01,$01,$01,$01,$05,$05,$01,$01,$03
	db $08,$04,$04,$04,$00,$01,$07,$08,$04,$02
	db $08,$05,$05,$05,$06,$08,$03,$08,$05,$02
	db $08,$05,$05,$05,$01,$06,$0C,$00,$05,$02
	db $0A,$09,$03,$09,$00,$01,$01,$02,$09,$02
	db $08,$02,$0A,$08,$00,$02,$0A,$08,$06,$0A
	db $0A,$0A,$08,$00,$00,$02,$08,$06,$0D,$02
	db $08,$02,$08,$04,$02,$08,$06,$09,$05,$02
	db $08,$02,$0A,$0B,$0A,$0A,$09,$00,$05,$02
	db $0C,$04,$04,$04,$04,$04,$04,$04,$05,$06

DATA_0FE27F:
	db $0A,$0A
	db "",$00
	db $09,$05,$05,$01,$05,$05,$01,$05,$05,$03
	db $08,$03,$09,$00,$03,$09,$00,$03,$09,$02
	db $08,$00,$06,$0C,$00,$06,$0C,$00,$06,$0A
	db $08,$00,$03,$09,$00,$03,$09,$00,$03,$0A
	db $08,$06,$0C,$00,$00,$00,$00,$06,$0C,$02
	db $08,$03,$09,$00,$00,$00,$00,$03,$09,$02
	db $0A,$0C,$00,$06,$0C,$00,$06,$0C,$00,$02
	db $0A,$09,$00,$03,$09,$00,$03,$09,$00,$02
	db $08,$06,$0C,$00,$06,$0C,$00,$06,$0C,$02
	db $0C,$05,$05,$04,$05,$05,$04,$05,$05,$06

DATA_0FE2E6:
	db $09,$09
	db "",$00
	db $09,$01,$01,$01,$01,$01,$01,$01,$03
	db $08,$00,$00,$00,$00,$00,$00,$00,$02
	db $08,$00,$00,$00,$00,$00,$00,$00,$02
	db $08,$00,$00,$00,$00,$00,$00,$00,$02
	db $08,$00,$00,$00,$00,$00,$00,$00,$02
	db $08,$00,$00,$00,$00,$00,$00,$00,$02
	db $08,$00,$00,$00,$00,$00,$00,$00,$02
	db $08,$00,$00,$00,$00,$00,$00,$00,$02
	db $0C,$04,$04,$04,$04,$04,$04,$04,$06

DATA_0FE33A:
	db $0B,$0B
	db "",$00
	db $09,$01,$03,$09,$05,$01,$05,$03,$09,$01,$03
	db $08,$00,$04,$04,$01,$00,$01,$04,$04,$00,$02
	db $0C,$02,$09,$01,$06,$0A,$0C,$01,$03,$08,$06
	db $09,$02,$08,$00,$01,$00,$01,$00,$02,$08,$03
	db $0A,$08,$06,$08,$00,$00,$00,$02,$0C,$02,$0A
	db $08,$00,$05,$00,$00,$00,$00,$00,$05,$00,$02
	db $0A,$08,$03,$08,$00,$00,$00,$02,$09,$02,$0A
	db $0C,$02,$08,$00,$04,$00,$04,$00,$02,$08,$06
	db $09,$02,$0C,$04,$03,$0A,$09,$04,$06,$08,$03
	db $08,$00,$01,$01,$04,$00,$04,$01,$01,$00,$02
	db $0C,$04,$06,$0C,$05,$04,$05,$06,$0C,$04,$06

DATA_0FE3B6:
	db $0B,$0B
	db "",$00
	db $09,$01,$05,$01,$05,$01,$05,$01,$01,$05,$03
	db $08,$00,$01,$04,$01,$00,$01,$04,$04,$03,$0A
	db $0A,$08,$00,$01,$02,$0A,$0C,$01,$03,$08,$02
	db $08,$02,$08,$06,$08,$04,$01,$00,$02,$08,$02
	db $0A,$08,$04,$01,$00,$01,$00,$02,$0C,$02,$0A
	db $0A,$08,$05,$02,$08,$00,$02,$08,$05,$02,$0A
	db $0A,$08,$03,$08,$00,$04,$00,$04,$01,$02,$0A
	db $08,$02,$08,$00,$04,$01,$02,$09,$02,$08,$02
	db $08,$02,$0C,$04,$03,$0A,$08,$04,$00,$02,$0A
	db $0A,$0C,$01,$01,$04,$04,$04,$01,$04,$00,$02
	db $0C,$05,$04,$04,$05,$05,$05,$04,$05,$04,$06

DATA_0FE432:
	db $0B,$0B
	db "",$00
	db $09,$05,$05,$03,$09,$05,$05,$03,$09,$05,$03
	db $0A,$09,$01,$04,$00,$01,$01,$04,$04,$03,$0A
	db $0A,$08,$00,$05,$06,$0A,$0C,$01,$03,$08,$06
	db $0C,$02,$0A,$09,$01,$04,$01,$00,$02,$08,$03
	db $09,$00,$06,$08,$00,$01,$00,$02,$0C,$02,$0A
	db $0A,$08,$05,$02,$08,$00,$02,$08,$05,$02,$0A
	db $0A,$08,$03,$08,$00,$04,$00,$02,$09,$00,$06
	db $0C,$02,$08,$00,$04,$01,$04,$06,$0A,$08,$03
	db $09,$02,$0C,$04,$03,$0A,$09,$05,$00,$02,$0A
	db $0A,$0C,$01,$01,$04,$04,$00,$01,$04,$06,$0A
	db $0C,$05,$06,$0C,$05,$05,$06,$0C,$05,$05,$06

DATA_0FE4AE:
	db $0B,$0B
	db "",$00
	db $09,$05,$01,$01,$05,$01,$05,$01,$01,$05,$03
	db $0A,$09,$00,$04,$01,$00,$01,$04,$00,$03,$0A
	db $08,$00,$00,$03,$0A,$0A,$0A,$09,$00,$00,$02
	db $08,$02,$0C,$00,$04,$04,$00,$00,$06,$08,$02
	db $0A,$08,$05,$00,$01,$01,$02,$08,$05,$02,$0A
	db $08,$00,$05,$02,$08,$00,$02,$08,$05,$00,$02
	db $0A,$08,$05,$02,$08,$04,$04,$00,$05,$02,$0A
	db $08,$02,$09,$00,$00,$01,$01,$00,$03,$08,$02
	db $08,$00,$00,$06,$0A,$0A,$0A,$0C,$00,$00,$02
	db $0A,$0C,$00,$01,$04,$00,$04,$01,$00,$06,$0A
	db $0C,$05,$04,$04,$05,$04,$05,$04,$04,$05,$06

DATA_0FE52A:
	db $0B,$0B
	db "",$00
	db $09,$05,$05,$01,$05,$05,$05,$01,$05,$05,$03
	db $0A,$09,$05,$04,$01,$01,$01,$04,$05,$03,$0A
	db $0A,$0A,$09,$01,$04,$00,$04,$01,$03,$0A,$0A
	db $08,$02,$08,$00,$01,$04,$01,$00,$02,$08,$02
	db $0A,$08,$02,$08,$00,$01,$00,$02,$08,$02,$0A
	db $0A,$08,$00,$02,$08,$00,$02,$08,$00,$02,$0A
	db $0A,$08,$02,$08,$00,$04,$00,$02,$08,$02,$0A
	db $08,$02,$08,$00,$04,$01,$04,$00,$02,$08,$02
	db $0A,$0A,$0C,$04,$01,$00,$01,$04,$06,$0A,$0A
	db $0A,$0C,$05,$01,$04,$04,$04,$01,$05,$06,$0A
	db $0C,$05,$05,$04,$05,$05,$05,$04,$05,$05,$06

DATA_0FE5A6:
	db $0B,$0B
	db "",$00
	db $09,$01,$01,$01,$01,$01,$01,$01,$01,$01,$03
	db $08,$00,$00,$00,$00,$00,$00,$00,$00,$00,$02
	db $08,$00,$00,$00,$00,$00,$00,$00,$00,$00,$02
	db $08,$00,$00,$00,$00,$00,$00,$00,$00,$00,$02
	db $08,$00,$00,$00,$00,$00,$00,$00,$00,$00,$02
	db $08,$00,$00,$00,$00,$00,$00,$00,$00,$00,$02
	db $08,$00,$00,$00,$00,$00,$00,$00,$00,$00,$02
	db $08,$00,$00,$00,$00,$00,$00,$00,$00,$00,$02
	db $08,$00,$00,$00,$00,$00,$00,$00,$00,$00,$02
	db $08,$00,$00,$00,$00,$00,$00,$00,$00,$00,$02
	db $0C,$04,$04,$04,$04,$04,$04,$04,$04,$04,$06

DATA_0FE622:
	db $0B,$0B
	db "",$00
	db $09,$01,$03,$09,$01,$01,$01,$03,$09,$01,$03
	db $08,$06,$0C,$00,$04,$00,$04,$00,$06,$0C,$02
	db $0C,$03,$09,$04,$01,$04,$01,$04,$03,$09,$06
	db $09,$00,$02,$09,$00,$01,$00,$03,$08,$00,$03
	db $08,$02,$08,$00,$00,$00,$00,$00,$02,$08,$02
	db $08,$00,$02,$08,$00,$00,$00,$02,$08,$00,$02
	db $08,$02,$08,$00,$00,$00,$00,$00,$02,$08,$02
	db $0C,$00,$02,$0C,$00,$04,$00,$06,$08,$00,$06
	db $09,$06,$0C,$01,$04,$01,$04,$01,$06,$0C,$03
	db $08,$03,$09,$00,$01,$00,$01,$00,$03,$09,$02
	db $0C,$04,$06,$0C,$04,$04,$04,$06,$0C,$04,$06

DATA_0FE69E:
	db $0B,$0B
	db "",$00
	db $09,$01,$03,$09,$01,$01,$01,$03,$09,$01,$03
	db $08,$06,$0C,$00,$04,$04,$04,$00,$06,$0C,$02
	db $0C,$03,$09,$04,$05,$01,$05,$04,$03,$09,$06
	db $09,$00,$02,$09,$01,$00,$01,$03,$08,$00,$03
	db $08,$02,$0A,$08,$00,$00,$00,$02,$0A,$08,$02
	db $08,$02,$08,$00,$00,$00,$00,$00,$02,$08,$02
	db $08,$02,$0A,$08,$00,$00,$00,$02,$0A,$08,$02
	db $0C,$00,$02,$0C,$04,$00,$04,$06,$08,$00,$06
	db $09,$06,$0C,$01,$05,$04,$05,$01,$06,$0C,$03
	db $08,$03,$09,$00,$01,$01,$01,$00,$03,$09,$02
	db $0C,$04,$06,$0C,$04,$04,$04,$06,$0C,$04,$06

DATA_0FE71A:
	db $0B,$0B
	db "",$00
	db $09,$01,$03,$09,$01,$01,$01,$03,$09,$01,$03
	db $08,$06,$0C,$00,$04,$04,$04,$00,$06,$0C,$02
	db $0C,$03,$09,$04,$01,$05,$01,$04,$03,$09,$06
	db $09,$00,$02,$09,$04,$01,$04,$03,$08,$00,$03
	db $08,$02,$08,$02,$09,$00,$03,$08,$02,$08,$02
	db $08,$02,$0A,$08,$00,$00,$00,$02,$0A,$08,$02
	db $08,$02,$08,$02,$0C,$00,$06,$08,$02,$08,$02
	db $0C,$00,$02,$0C,$01,$04,$01,$06,$08,$00,$06
	db $09,$06,$0C,$01,$04,$05,$04,$01,$06,$0C,$03
	db $08,$03,$09,$00,$01,$01,$01,$00,$03,$09,$02
	db $0C,$04,$06,$0C,$04,$04,$04,$06,$0C,$04,$06

DATA_0FE796:
	db $0B,$0B
	db "",$00
	db $09,$01,$03,$09,$01,$01,$01,$03,$09,$01,$03
	db $08,$06,$08,$04,$00,$00,$00,$04,$02,$0C,$02
	db $0C,$01,$00,$01,$06,$0A,$0C,$01,$00,$01,$06
	db $09,$02,$08,$00,$05,$00,$05,$00,$02,$08,$03
	db $08,$00,$06,$0A,$09,$00,$03,$0A,$0C,$00,$02
	db $08,$00,$05,$00,$00,$00,$00,$00,$05,$00,$02
	db $08,$00,$03,$0A,$0C,$00,$06,$0A,$09,$00,$02
	db $0C,$02,$08,$00,$05,$00,$05,$00,$02,$08,$06
	db $09,$04,$00,$04,$03,$0A,$09,$04,$00,$04,$03
	db $08,$03,$08,$01,$00,$00,$00,$01,$02,$09,$02
	db $0C,$04,$06,$0C,$04,$04,$04,$06,$0C,$04,$06

DATA_0FE812:
	db $09,$09
	db "",$00
	db $09,$01,$03,$09,$01,$03,$09,$01,$03
	db $08,$06,$0C,$00,$04,$00,$06,$0C,$02
	db $0C,$03,$09,$04,$01,$04,$03,$09,$06
	db $09,$00,$02,$09,$00,$03,$08,$00,$03
	db $08,$02,$08,$00,$00,$00,$02,$08,$02
	db $0C,$00,$02,$0C,$00,$06,$08,$00,$06
	db $09,$06,$0C,$01,$04,$01,$06,$0C,$03
	db $08,$03,$09,$00,$01,$00,$03,$09,$02
	db $0C,$04,$06,$0C,$04,$06,$0C,$04,$06

DATA_0FE866:
	db $0A,$0A
	db "",$00
	db $09,$05,$01,$03,$09,$01,$05,$01,$05,$03
	db $08,$03,$0C,$00,$06,$08,$05,$00,$07,$0A
	db $08,$04,$01,$00,$03,$08,$03,$08,$05,$02
	db $0C,$03,$0C,$00,$00,$00,$00,$02,$0D,$02
	db $09,$04,$01,$00,$00,$00,$00,$04,$01,$02
	db $08,$05,$00,$00,$00,$00,$00,$03,$08,$06
	db $0A,$09,$06,$08,$00,$00,$00,$04,$00,$03
	db $08,$04,$01,$02,$0A,$08,$00,$05,$02,$0A
	db $0A,$09,$00,$00,$04,$02,$0C,$03,$0C,$02
	db $0C,$04,$06,$0C,$05,$04,$05,$04,$05,$06

DATA_0FE8CD:
	db $0B,$0B
	db "",$00
	db $09,$05,$05,$03,$09,$05,$05,$03,$09,$05,$03
	db $0A,$09,$01,$04,$00,$01,$01,$04,$04,$03,$0A
	db $0A,$08,$00,$05,$06,$0A,$0C,$01,$03,$08,$06
	db $0C,$02,$0A,$09,$01,$04,$01,$00,$02,$08,$03
	db $09,$00,$06,$08,$00,$01,$00,$02,$0C,$02,$0A
	db $0A,$08,$05,$02,$08,$00,$02,$08,$05,$02,$0A
	db $0A,$08,$03,$08,$00,$04,$00,$02,$09,$00,$06
	db $0C,$02,$08,$00,$04,$01,$04,$06,$0A,$08,$03
	db $09,$02,$0C,$04,$03,$0A,$09,$05,$00,$02,$0A
	db $0A,$0C,$01,$01,$04,$04,$00,$01,$04,$06,$0A
	db $0C,$05,$06,$0C,$05,$05,$06,$0C,$05,$05,$06

DATA_0FE949:
	db $0B,$0B
	db "",$00
	db $09,$05,$03,$0B,$0B,$0B,$09,$05,$03,$0B,$0F
	db $0A,$09,$02,$08,$00,$04,$02,$0F,$0C,$00,$07
	db $0E,$08,$02,$0C,$00,$01,$04,$01,$05,$04,$03
	db $0B,$08,$00,$01,$04,$00,$01,$06,$09,$01,$06
	db $08,$02,$0A,$0A,$09,$00,$00,$01,$04,$06,$0F
	db $0E,$08,$00,$04,$00,$00,$00,$02,$09,$03,$0B
	db $09,$00,$06,$09,$00,$04,$00,$04,$02,$08,$06
	db $08,$00,$03,$0E,$0A,$09,$00,$01,$02,$0A,$0B
	db $0C,$06,$0A,$0D,$00,$00,$00,$00,$00,$04,$02
	db $0D,$05,$04,$01,$02,$08,$04,$02,$0E,$0B,$0A
	db $0F,$0D,$05,$04,$06,$0C,$07,$0C,$05,$04,$06

DATA_0FE9C5:
	db $0B,$0B
	db "",$00
	db $0F,$0B,$0B,$0F,$09,$01,$03,$09,$05,$03,$0F
	db $09,$02,$08,$01,$06,$0A,$08,$04,$03,$08,$03
	db $0A,$0E,$0C,$00,$07,$0A,$08,$03,$0E,$08,$02
	db $0A,$0D,$01,$02,$0B,$08,$00,$00,$01,$02,$0A
	db $0C,$01,$02,$08,$00,$02,$0C,$00,$06,$0A,$0E
	db $09,$00,$06,$0E,$08,$00,$01,$00,$03,$0A,$0F
	db $0E,$0C,$03,$0B,$0A,$08,$02,$0A,$0E,$08,$03
	db $0B,$09,$04,$04,$02,$0E,$08,$00,$05,$02,$0E
	db $0C,$00,$05,$07,$08,$05,$00,$06,$0F,$08,$07
	db $09,$00,$03,$09,$04,$01,$04,$01,$03,$0A,$0B
	db $0C,$06,$0C,$06,$0D,$04,$07,$0E,$0C,$04,$06

DATA_0FEA41:
	db $0B,$0B
	db "",$00
	db $09,$05,$01,$01,$03,$0B,$09,$05,$03,$0D,$03
	db $0A,$09,$02,$0E,$0C,$04,$02,$0B,$0C,$05,$02
	db $08,$06,$0C,$03,$09,$01,$04,$04,$03,$09,$06
	db $08,$03,$0F,$0C,$00,$00,$07,$0F,$08,$06,$0F
	db $08,$02,$0D,$01,$06,$08,$01,$03,$08,$07,$0B
	db $0C,$00,$07,$08,$01,$00,$02,$0A,$0C,$01,$02
	db $0F,$08,$05,$04,$02,$08,$06,$0C,$05,$00,$02
	db $0D,$02,$0B,$0F,$0C,$00,$07,$0B,$0B,$0A,$0E
	db $09,$06,$0C,$01,$01,$00,$03,$08,$04,$04,$03
	db $0A,$0F,$09,$06,$08,$00,$00,$00,$01,$03,$0A
	db $0C,$05,$06,$0F,$0E,$0C,$06,$0C,$06,$0C,$06

DATA_0FEABD:
	db $0B,$0B
	db "",$00
	db $09,$07,$09,$05,$03,$09,$05,$03,$0D,$05,$03
	db $08,$05,$02,$09,$04,$04,$03,$08,$05,$01,$02
	db $0C,$03,$0A,$0C,$03,$09,$06,$0C,$03,$0A,$0A
	db $09,$06,$0A,$09,$00,$00,$01,$01,$02,$0A,$0A
	db $08,$05,$00,$00,$00,$00,$00,$00,$04,$00,$06
	db $0A,$0F,$0A,$08,$00,$00,$00,$02,$09,$00,$07
	db $0C,$03,$0A,$08,$00,$00,$00,$02,$0C,$04,$03
	db $09,$04,$00,$04,$00,$04,$00,$04,$05,$01,$06
	db $0A,$09,$00,$03,$08,$05,$06,$09,$05,$02,$0F
	db $08,$00,$00,$04,$00,$05,$05,$00,$07,$0A,$0F
	db $0E,$0E,$0E,$0D,$04,$05,$05,$04,$05,$04,$07

DATA_0FEB39:
	db $0B,$0B
	db "",$00
	db $0F,$09,$01,$05,$05,$01,$05,$05,$01,$03,$0F
	db $09,$06,$0C,$03,$09,$04,$03,$09,$06,$0C,$03
	db $08,$03,$09,$00,$06,$09,$04,$00,$03,$09,$02
	db $0A,$0C,$00,$00,$01,$06,$09,$00,$00,$06,$0A
	db $0A,$09,$02,$0C,$00,$01,$00,$02,$0C,$03,$0A
	db $08,$02,$0C,$03,$08,$00,$02,$0C,$03,$08,$02
	db $0A,$0C,$03,$08,$00,$04,$00,$03,$08,$06,$0A
	db $0A,$09,$00,$00,$06,$09,$04,$00,$00,$03,$0A
	db $08,$06,$0C,$00,$01,$06,$09,$00,$06,$0C,$02
	db $0C,$03,$09,$06,$0C,$01,$06,$0C,$03,$09,$06
	db $0F,$0C,$04,$05,$05,$04,$05,$05,$04,$06,$0F

DATA_0FEBB5:
	db $0E,$0E
	db "",$00
	db $09,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$03
	db $08,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$02
	db $08,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$02
	db $08,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$02
	db $08,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$02
	db $08,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$02
	db $08,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$02
	db $08,$00,$00,$00,$00,$00,$00,$04,$00,$00,$00,$00,$00,$02
	db $08,$00,$00,$00,$00,$00,$00,$01,$00,$00,$00,$00,$00,$02
	db $08,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$02
	db $08,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$02
	db $08,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$02
	db $08,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$02
	db $0C,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$06

	%FREE_BYTES($0FEC7C, 4996, $FF)
%BANK_END(<EndBank>)
endmacro

;#############################################################################################################
;#############################################################################################################
