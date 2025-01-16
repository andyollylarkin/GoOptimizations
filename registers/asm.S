# command-line-arguments
main.main STEXT size=66 args=0x0 locals=0x30 funcid=0x0 align=0x0
	0x0000 00000 (/Users/denis/Desktop/go-optimizations/registers/main.go:3)	TEXT	main.main(SB), ABIInternal, $48-0
	0x0000 00000 (/Users/denis/Desktop/go-optimizations/registers/main.go:3)	CMPQ	SP, 16(R14)
	0x0004 00004 (/Users/denis/Desktop/go-optimizations/registers/main.go:3)	PCDATA	$0, $-2
	0x0004 00004 (/Users/denis/Desktop/go-optimizations/registers/main.go:3)	JLS	58
	0x0006 00006 (/Users/denis/Desktop/go-optimizations/registers/main.go:3)	PCDATA	$0, $-1
	0x0006 00006 (/Users/denis/Desktop/go-optimizations/registers/main.go:3)	PUSHQ	BP
	0x0007 00007 (/Users/denis/Desktop/go-optimizations/registers/main.go:3)	MOVQ	SP, BP
	0x000a 00010 (/Users/denis/Desktop/go-optimizations/registers/main.go:3)	SUBQ	$40, SP
	0x000e 00014 (/Users/denis/Desktop/go-optimizations/registers/main.go:3)	FUNCDATA	$0, gclocals·g2BeySu+wFnoycgXfElmcg==(SB)
	0x000e 00014 (/Users/denis/Desktop/go-optimizations/registers/main.go:3)	FUNCDATA	$1, gclocals·g2BeySu+wFnoycgXfElmcg==(SB)
	0x000e 00014 (/Users/denis/Desktop/go-optimizations/registers/main.go:4)	MOVL	$1, AX
	0x0013 00019 (/Users/denis/Desktop/go-optimizations/registers/main.go:4)	MOVL	$2, BX
	0x0018 00024 (/Users/denis/Desktop/go-optimizations/registers/main.go:4)	PCDATA	$1, $0
	0x0018 00024 (/Users/denis/Desktop/go-optimizations/registers/main.go:4)	CALL	main.sum(SB)
	0x001d 00029 (/Users/denis/Desktop/go-optimizations/registers/main.go:5)	MOVL	$1, AX
	0x0022 00034 (/Users/denis/Desktop/go-optimizations/registers/main.go:5)	MOVL	$2, BX
	0x0027 00039 (/Users/denis/Desktop/go-optimizations/registers/main.go:5)	XORL	CX, CX
	0x0029 00041 (/Users/denis/Desktop/go-optimizations/registers/main.go:5)	MOVQ	CX, DI
	0x002c 00044 (/Users/denis/Desktop/go-optimizations/registers/main.go:5)	MOVQ	CX, SI
	0x002f 00047 (/Users/denis/Desktop/go-optimizations/registers/main.go:5)	CALL	main.sumObj(SB)
	0x0034 00052 (/Users/denis/Desktop/go-optimizations/registers/main.go:6)	ADDQ	$40, SP
	0x0038 00056 (/Users/denis/Desktop/go-optimizations/registers/main.go:6)	POPQ	BP
	0x0039 00057 (/Users/denis/Desktop/go-optimizations/registers/main.go:6)	RET
	0x003a 00058 (/Users/denis/Desktop/go-optimizations/registers/main.go:6)	NOP
	0x003a 00058 (/Users/denis/Desktop/go-optimizations/registers/main.go:3)	PCDATA	$1, $-1
	0x003a 00058 (/Users/denis/Desktop/go-optimizations/registers/main.go:3)	PCDATA	$0, $-2
	0x003a 00058 (/Users/denis/Desktop/go-optimizations/registers/main.go:3)	CALL	runtime.morestack_noctxt(SB)
	0x003f 00063 (/Users/denis/Desktop/go-optimizations/registers/main.go:3)	PCDATA	$0, $-1
	0x003f 00063 (/Users/denis/Desktop/go-optimizations/registers/main.go:3)	NOP
	0x0040 00064 (/Users/denis/Desktop/go-optimizations/registers/main.go:3)	JMP	0
	0x0000 49 3b 66 10 76 34 55 48 89 e5 48 83 ec 28 b8 01  I;f.v4UH..H..(..
	0x0010 00 00 00 bb 02 00 00 00 e8 00 00 00 00 b8 01 00  ................
	0x0020 00 00 bb 02 00 00 00 31 c9 48 89 cf 48 89 ce e8  .......1.H..H...
	0x0030 00 00 00 00 48 83 c4 28 5d c3 e8 00 00 00 00 90  ....H..(].......
	0x0040 eb be                                            ..
	rel 25+4 t=R_CALL main.sum+0
	rel 48+4 t=R_CALL main.sumObj+0
	rel 59+4 t=R_CALL runtime.morestack_noctxt+0
main.sum STEXT nosplit size=4 args=0x10 locals=0x0 funcid=0x0 align=0x0
	0x0000 00000 (/Users/denis/Desktop/go-optimizations/registers/main.go:13)	TEXT	main.sum(SB), NOSPLIT|NOFRAME|ABIInternal, $0-16
	0x0000 00000 (/Users/denis/Desktop/go-optimizations/registers/main.go:13)	FUNCDATA	$0, gclocals·g2BeySu+wFnoycgXfElmcg==(SB)
	0x0000 00000 (/Users/denis/Desktop/go-optimizations/registers/main.go:13)	FUNCDATA	$1, gclocals·g2BeySu+wFnoycgXfElmcg==(SB)
	0x0000 00000 (/Users/denis/Desktop/go-optimizations/registers/main.go:13)	FUNCDATA	$5, main.sum.arginfo1(SB)
	0x0000 00000 (/Users/denis/Desktop/go-optimizations/registers/main.go:13)	FUNCDATA	$6, main.sum.argliveinfo(SB)
	0x0000 00000 (/Users/denis/Desktop/go-optimizations/registers/main.go:13)	PCDATA	$3, $1
	-----------------------------------------------------------------------------------------------------
	Просто складываем два числа из регистров
	0x0000 00000 (/Users/denis/Desktop/go-optimizations/registers/main.go:14)	ADDQ	BX, AX
	-----------------------------------------------------------------------------------------------------
	0x0003 00003 (/Users/denis/Desktop/go-optimizations/registers/main.go:14)	RET
	0x0000 48 01 d8 c3                                      H...
main.sumObj STEXT nosplit size=35 args=0x28 locals=0x0 funcid=0x0 align=0x0
	0x0000 00000 (/Users/denis/Desktop/go-optimizations/registers/main.go:18)	TEXT	main.sumObj(SB), NOSPLIT|NOFRAME|ABIInternal, $0-40
	0x0000 00000 (/Users/denis/Desktop/go-optimizations/registers/main.go:18)	FUNCDATA	$0, gclocals·g2BeySu+wFnoycgXfElmcg==(SB)
	0x0000 00000 (/Users/denis/Desktop/go-optimizations/registers/main.go:18)	FUNCDATA	$1, gclocals·g2BeySu+wFnoycgXfElmcg==(SB)
	0x0000 00000 (/Users/denis/Desktop/go-optimizations/registers/main.go:18)	FUNCDATA	$5, main.sumObj.arginfo1(SB)
	-----------------------------------------------------------------------------------------------------
	Сначала помещаем значения из регистров в стек, а затем складываем их
	- Хотя функции делают одно и то же, но вторая функция работает медленнее из-за того, что она использует память
	- Хотя функции делают одно и то же, но компилятор реализовал их по разному, потому что ему не известно, будут ли использованы остальные значения в обьекте.
		По этой причине он помещает их на стек. В первом случае компилятор использует регистры, потому что значения в них и передаются (ABI соглашение в linux).
	0x0000 00000 (/Users/denis/Desktop/go-optimizations/registers/main.go:18)	MOVQ	AX, main.obj+8(SP)
	0x0005 00005 (/Users/denis/Desktop/go-optimizations/registers/main.go:18)	MOVQ	BX, main.obj+16(SP)
	0x000a 00010 (/Users/denis/Desktop/go-optimizations/registers/main.go:18)	MOVQ	CX, main.obj+24(SP)
	0x000f 00015 (/Users/denis/Desktop/go-optimizations/registers/main.go:18)	MOVQ	DI, main.obj+32(SP)
	0x0014 00020 (/Users/denis/Desktop/go-optimizations/registers/main.go:18)	MOVQ	SI, main.obj+40(SP)
	0x0019 00025 (/Users/denis/Desktop/go-optimizations/registers/main.go:19)	MOVQ	main.obj+8(SP), CX
	0x001e 00030 (/Users/denis/Desktop/go-optimizations/registers/main.go:19)	LEAQ	(CX)(BX*1), AX
	-----------------------------------------------------------------------------------------------------
	0x0022 00034 (/Users/denis/Desktop/go-optimizations/registers/main.go:19)	RET
	0x0000 48 89 44 24 08 48 89 5c 24 10 48 89 4c 24 18 48  H.D$.H.\$.H.L$.H
	0x0010 89 7c 24 20 48 89 74 24 28 48 8b 4c 24 08 48 8d  .|$ H.t$(H.L$.H.
	0x0020 04 19 c3                                         ...
go:cuinfo.producer.main SDWARFCUINFO dupok size=0
	0x0000 72 65 67 61 62 69                                regabi
go:cuinfo.packagename.main SDWARFCUINFO dupok size=0
	0x0000 6d 61 69 6e                                      main
main..inittask SNOPTRDATA size=8
	0x0000 00 00 00 00 00 00 00 00                          ........
type:.eqfunc40 SRODATA dupok size=16
	0x0000 00 00 00 00 00 00 00 00 28 00 00 00 00 00 00 00  ........(.......
	rel 0+8 t=R_ADDR runtime.memequal_varlen+0
runtime.memequal64·f SRODATA dupok size=8
	0x0000 00 00 00 00 00 00 00 00                          ........
	rel 0+8 t=R_ADDR runtime.memequal64+0
runtime.gcbits.0100000000000000 SRODATA dupok size=8
	0x0000 01 00 00 00 00 00 00 00                          ........
type:.namedata.*main.ObjToSum. SRODATA dupok size=16
	0x0000 01 0e 2a 6d 61 69 6e 2e 4f 62 6a 54 6f 53 75 6d  ..*main.ObjToSum
type:*main.ObjToSum SRODATA size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 53 3a f9 48 08 08 08 36 00 00 00 00 00 00 00 00  S:.H...6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=R_ADDR runtime.memequal64·f+0
	rel 32+8 t=R_ADDR runtime.gcbits.0100000000000000+0
	rel 40+4 t=R_ADDROFF type:.namedata.*main.ObjToSum.+0
	rel 48+8 t=R_ADDR type:main.ObjToSum+0
runtime.gcbits. SRODATA dupok size=0
type:.importpath.main. SRODATA dupok size=6
	0x0000 00 04 6d 61 69 6e                                ..main
type:.namedata.a- SRODATA dupok size=3
	0x0000 00 01 61                                         ..a
type:.namedata.b- SRODATA dupok size=3
	0x0000 00 01 62                                         ..b
type:.namedata.c- SRODATA dupok size=3
	0x0000 00 01 63                                         ..c
type:.namedata.d- SRODATA dupok size=3
	0x0000 00 01 64                                         ..d
type:.namedata.e- SRODATA dupok size=3
	0x0000 00 01 65                                         ..e
type:main.ObjToSum SRODATA size=216
	0x0000 28 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  (...............
	0x0010 ac 96 e2 66 0f 08 08 19 00 00 00 00 00 00 00 00  ...f............
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0040 05 00 00 00 00 00 00 00 05 00 00 00 00 00 00 00  ................
	0x0050 00 00 00 00 00 00 00 00 88 00 00 00 00 00 00 00  ................
	0x0060 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0070 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0080 00 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0090 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x00a0 10 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x00b0 00 00 00 00 00 00 00 00 18 00 00 00 00 00 00 00  ................
	0x00c0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x00d0 20 00 00 00 00 00 00 00                           .......
	rel 24+8 t=R_ADDR type:.eqfunc40+0
	rel 32+8 t=R_ADDR runtime.gcbits.+0
	rel 40+4 t=R_ADDROFF type:.namedata.*main.ObjToSum.+0
	rel 44+4 t=R_ADDROFF type:*main.ObjToSum+0
	rel 48+8 t=R_ADDR type:.importpath.main.+0
	rel 56+8 t=R_ADDR type:main.ObjToSum+96
	rel 80+4 t=R_ADDROFF type:.importpath.main.+0
	rel 96+8 t=R_ADDR type:.namedata.a-+0
	rel 104+8 t=R_ADDR type:int+0
	rel 120+8 t=R_ADDR type:.namedata.b-+0
	rel 128+8 t=R_ADDR type:int+0
	rel 144+8 t=R_ADDR type:.namedata.c-+0
	rel 152+8 t=R_ADDR type:int+0
	rel 168+8 t=R_ADDR type:.namedata.d-+0
	rel 176+8 t=R_ADDR type:int+0
	rel 192+8 t=R_ADDR type:.namedata.e-+0
	rel 200+8 t=R_ADDR type:int+0
main..stmp_0 SRODATA static size=40
	0x0000 01 00 00 00 00 00 00 00 02 00 00 00 00 00 00 00  ................
gclocals·g2BeySu+wFnoycgXfElmcg== SRODATA dupok size=8
	0x0000 01 00 00 00 00 00 00 00                          ........
main.sum.arginfo1 SRODATA static dupok size=5
	0x0000 00 08 08 08 ff                                   .....
main.sum.argliveinfo SRODATA static dupok size=2
	0x0000 00 00                                            ..
main.sumObj.arginfo1 SRODATA static dupok size=13
	0x0000 fe 00 08 08 08 10 08 18 08 20 08 fd ff           ......... ...
