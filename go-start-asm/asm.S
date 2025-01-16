# command-line-arguments
main.main STEXT size=50 args=0x0 locals=0x10 funcid=0x0 align=0x0
	0x0000 00000 (/Users/denis/Desktop/go-optimizations/go-start-asm/main.go:5)	TEXT	main.main(SB), ABIInternal, $16-0
	0x0000 00000 (/Users/denis/Desktop/go-optimizations/go-start-asm/main.go:5)	CMPQ	SP, 16(R14)
	0x0004 00004 (/Users/denis/Desktop/go-optimizations/go-start-asm/main.go:5)	PCDATA	$0, $-2
	0x0004 00004 (/Users/denis/Desktop/go-optimizations/go-start-asm/main.go:5)	JLS	43
	0x0006 00006 (/Users/denis/Desktop/go-optimizations/go-start-asm/main.go:5)	PCDATA	$0, $-1
	0x0006 00006 (/Users/denis/Desktop/go-optimizations/go-start-asm/main.go:5)	PUSHQ	BP
	0x0007 00007 (/Users/denis/Desktop/go-optimizations/go-start-asm/main.go:5)	MOVQ	SP, BP
	0x000a 00010 (/Users/denis/Desktop/go-optimizations/go-start-asm/main.go:5)	SUBQ	$8, SP
	0x000e 00014 (/Users/denis/Desktop/go-optimizations/go-start-asm/main.go:5)	FUNCDATA	$0, gclocals·g2BeySu+wFnoycgXfElmcg==(SB)
	0x000e 00014 (/Users/denis/Desktop/go-optimizations/go-start-asm/main.go:5)	FUNCDATA	$1, gclocals·g2BeySu+wFnoycgXfElmcg==(SB)
	0x000e 00014 (/Users/denis/Desktop/go-optimizations/go-start-asm/main.go:6)	LEAQ	main.main.func1·f(SB), AX
	0x0015 00021 (/Users/denis/Desktop/go-optimizations/go-start-asm/main.go:6)	PCDATA	$1, $0
	0x0015 00021 (/Users/denis/Desktop/go-optimizations/go-start-asm/main.go:6)	CALL	runtime.newproc(SB)
	0x001a 00026 (/Users/denis/Desktop/go-optimizations/go-start-asm/main.go:9)	XORL	AX, AX
	0x001c 00028 (/Users/denis/Desktop/go-optimizations/go-start-asm/main.go:9)	NOP
	0x0020 00032 (/Users/denis/Desktop/go-optimizations/go-start-asm/main.go:9)	CALL	os.Exit(SB)
	0x0025 00037 (/Users/denis/Desktop/go-optimizations/go-start-asm/main.go:10)	ADDQ	$8, SP
	0x0029 00041 (/Users/denis/Desktop/go-optimizations/go-start-asm/main.go:10)	POPQ	BP
	0x002a 00042 (/Users/denis/Desktop/go-optimizations/go-start-asm/main.go:10)	RET
	0x002b 00043 (/Users/denis/Desktop/go-optimizations/go-start-asm/main.go:10)	NOP
	0x002b 00043 (/Users/denis/Desktop/go-optimizations/go-start-asm/main.go:5)	PCDATA	$1, $-1
	0x002b 00043 (/Users/denis/Desktop/go-optimizations/go-start-asm/main.go:5)	PCDATA	$0, $-2
	0x002b 00043 (/Users/denis/Desktop/go-optimizations/go-start-asm/main.go:5)	CALL	runtime.morestack_noctxt(SB)
	0x0030 00048 (/Users/denis/Desktop/go-optimizations/go-start-asm/main.go:5)	PCDATA	$0, $-1
	0x0030 00048 (/Users/denis/Desktop/go-optimizations/go-start-asm/main.go:5)	JMP	0
	0x0000 49 3b 66 10 76 25 55 48 89 e5 48 83 ec 08 48 8d  I;f.v%UH..H...H.
	0x0010 05 00 00 00 00 e8 00 00 00 00 31 c0 0f 1f 40 00  ..........1...@.
	0x0020 e8 00 00 00 00 48 83 c4 08 5d c3 e8 00 00 00 00  .....H...]......
	0x0030 eb ce                                            ..
	rel 17+4 t=R_PCREL main.main.func1·f+0
	rel 22+4 t=R_CALL runtime.newproc+0
	rel 33+4 t=R_CALL os.Exit+0
	rel 44+4 t=R_CALL runtime.morestack_noctxt+0
main.main.func1 STEXT size=55 args=0x0 locals=0x18 funcid=0x0 align=0x0
	0x0000 00000 (/Users/denis/Desktop/go-optimizations/go-start-asm/main.go:6)	TEXT	main.main.func1(SB), ABIInternal, $24-0
	0x0000 00000 (/Users/denis/Desktop/go-optimizations/go-start-asm/main.go:6)	CMPQ	SP, 16(R14)
	0x0004 00004 (/Users/denis/Desktop/go-optimizations/go-start-asm/main.go:6)	PCDATA	$0, $-2
	0x0004 00004 (/Users/denis/Desktop/go-optimizations/go-start-asm/main.go:6)	JLS	48
	0x0006 00006 (/Users/denis/Desktop/go-optimizations/go-start-asm/main.go:6)	PCDATA	$0, $-1
	0x0006 00006 (/Users/denis/Desktop/go-optimizations/go-start-asm/main.go:6)	PUSHQ	BP
	0x0007 00007 (/Users/denis/Desktop/go-optimizations/go-start-asm/main.go:6)	MOVQ	SP, BP
	0x000a 00010 (/Users/denis/Desktop/go-optimizations/go-start-asm/main.go:6)	SUBQ	$16, SP
	0x000e 00014 (/Users/denis/Desktop/go-optimizations/go-start-asm/main.go:6)	FUNCDATA	$0, gclocals·g2BeySu+wFnoycgXfElmcg==(SB)
	0x000e 00014 (/Users/denis/Desktop/go-optimizations/go-start-asm/main.go:6)	FUNCDATA	$1, gclocals·g2BeySu+wFnoycgXfElmcg==(SB)
	0x000e 00014 (/Users/denis/Desktop/go-optimizations/go-start-asm/main.go:7)	PCDATA	$1, $0
	0x000e 00014 (/Users/denis/Desktop/go-optimizations/go-start-asm/main.go:7)	CALL	runtime.printlock(SB)
	0x0013 00019 (/Users/denis/Desktop/go-optimizations/go-start-asm/main.go:7)	LEAQ	go:string."Hello, World!\n"(SB), AX
	0x001a 00026 (/Users/denis/Desktop/go-optimizations/go-start-asm/main.go:7)	MOVL	$14, BX
	0x001f 00031 (/Users/denis/Desktop/go-optimizations/go-start-asm/main.go:7)	NOP
	0x0020 00032 (/Users/denis/Desktop/go-optimizations/go-start-asm/main.go:7)	CALL	runtime.printstring(SB)
	0x0025 00037 (/Users/denis/Desktop/go-optimizations/go-start-asm/main.go:7)	CALL	runtime.printunlock(SB)
	0x002a 00042 (/Users/denis/Desktop/go-optimizations/go-start-asm/main.go:8)	ADDQ	$16, SP
	0x002e 00046 (/Users/denis/Desktop/go-optimizations/go-start-asm/main.go:8)	POPQ	BP
	0x002f 00047 (/Users/denis/Desktop/go-optimizations/go-start-asm/main.go:8)	RET
	0x0030 00048 (/Users/denis/Desktop/go-optimizations/go-start-asm/main.go:8)	NOP
	0x0030 00048 (/Users/denis/Desktop/go-optimizations/go-start-asm/main.go:6)	PCDATA	$1, $-1
	0x0030 00048 (/Users/denis/Desktop/go-optimizations/go-start-asm/main.go:6)	PCDATA	$0, $-2
	0x0030 00048 (/Users/denis/Desktop/go-optimizations/go-start-asm/main.go:6)	CALL	runtime.morestack_noctxt(SB)
	0x0035 00053 (/Users/denis/Desktop/go-optimizations/go-start-asm/main.go:6)	PCDATA	$0, $-1
	0x0035 00053 (/Users/denis/Desktop/go-optimizations/go-start-asm/main.go:6)	JMP	0
	0x0000 49 3b 66 10 76 2a 55 48 89 e5 48 83 ec 10 e8 00  I;f.v*UH..H.....
	0x0010 00 00 00 48 8d 05 00 00 00 00 bb 0e 00 00 00 90  ...H............
	0x0020 e8 00 00 00 00 e8 00 00 00 00 48 83 c4 10 5d c3  ..........H...].
	0x0030 e8 00 00 00 00 eb c9                             .......
	rel 15+4 t=R_CALL runtime.printlock+0
	rel 22+4 t=R_PCREL go:string."Hello, World!\n"+0
	rel 33+4 t=R_CALL runtime.printstring+0
	rel 38+4 t=R_CALL runtime.printunlock+0
	rel 49+4 t=R_CALL runtime.morestack_noctxt+0
go:cuinfo.producer.main SDWARFCUINFO dupok size=0
	0x0000 72 65 67 61 62 69                                regabi
go:cuinfo.packagename.main SDWARFCUINFO dupok size=0
	0x0000 6d 61 69 6e                                      main
main..inittask SNOPTRDATA size=8
	0x0000 00 00 00 00 00 00 00 00                          ........
	rel 0+0 t=R_INITORDER os..inittask+0
go:string."Hello, World!" SRODATA dupok size=13
	0x0000 48 65 6c 6c 6f 2c 20 57 6f 72 6c 64 21           Hello, World!
go:string."Hello, World!\n" SRODATA dupok size=14
	0x0000 48 65 6c 6c 6f 2c 20 57 6f 72 6c 64 21 0a        Hello, World!.
main.main.func1·f SRODATA dupok size=8
	0x0000 00 00 00 00 00 00 00 00                          ........
	rel 0+8 t=R_ADDR main.main.func1+0
gclocals·g2BeySu+wFnoycgXfElmcg== SRODATA dupok size=8
	0x0000 01 00 00 00 00 00 00 00                          ........
