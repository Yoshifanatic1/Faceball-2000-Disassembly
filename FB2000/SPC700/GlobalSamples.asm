
%SPCDataBlockStart(1800)
DATA_1800:
	dw DATA_1853	:	dw DATA_1853+$0000
	dw DATA_1F3A	:	dw DATA_1F3A+$0237
	dw DATA_21BC	:	dw DATA_21BC+$0B64
	dw DATA_2D47	:	dw DATA_2D47+$0DC8
	dw DATA_3B7E	:	dw DATA_3B7E+$0000
	dw DATA_451A	:	dw DATA_451A+$0000
	dw DATA_4B7A	:	dw DATA_4B7A+$0000
	dw DATA_50BA	:	dw DATA_50BA+$0000
	dw DATA_5CF0	:	dw DATA_5CF0+$0000
	dw DATA_637D	:	dw DATA_637D+$0000
	dw DATA_698C	:	dw DATA_698C+$0000
	dw DATA_7B23	:	dw DATA_7B23+$0000
	dw DATA_8CBA	:	dw DATA_8CBA+$0000
	dw DATA_A1A8	:	dw DATA_A1A8+$0000
	dw DATA_AC64	:	dw DATA_AC64+$0000
	dw DATA_C3C8	:	dw DATA_C3C8+$0000
	dw DATA_C3DD	:	dw DATA_C3DD+$0000
	dw DATA_C3E9	:	dw DATA_C3E9+$0000
	dw DATA_C3FE	:	dw DATA_C3FE+$0000
%SPCDataBlockEnd(1800)

%SPCDataBlockStart(1850)
UNK_1850:
	db $B5,$FF,$5F

DATA_1853:
	incbin "Samples/00.brr"

DATA_1F3A:
	incbin "Samples/01.brr"

DATA_21BC:
	incbin "Samples/02.brr"

DATA_2D47:
	incbin "Samples/03.brr"

DATA_3B7E:
	incbin "Samples/04.brr"

DATA_451A:
	incbin "Samples/05.brr"

DATA_4B7A:
	incbin "Samples/06.brr"

DATA_50BA:
	incbin "Samples/07.brr"

DATA_5CF0:
	incbin "Samples/08.brr"

DATA_637D:
	incbin "Samples/09.brr"

DATA_698C:
	incbin "Samples/0A.brr"

DATA_7B23:
	incbin "Samples/0B.brr"

DATA_8CBA:
	incbin "Samples/0C.brr"

DATA_A1A8:
	incbin "Samples/0D.brr"

DATA_AC64:
	incbin "Samples/0E.brr"

DATA_C3C8:
	incbin "Samples/0F.brr"

DATA_C3DD:
	incbin "Samples/10.brr"

DATA_C3E9:
	incbin "Samples/11.brr"

DATA_C3FE:
	incbin "Samples/12.brr"
%SPCDataBlockEnd(1850)

%EndSPCUploadAndJumpToEngine($0700)
