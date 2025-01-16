main.main STEXT size=256 args=0x0 locals=0x58 funcid=0x0 align=0x0
	0x0000 00000 (/Users/denis/Desktop/go-optimizations/type-casting/main.go:8)	TEXT	main.main(SB), ABIInternal, $96-0
	0x0000 00000 (/Users/denis/Desktop/go-optimizations/type-casting/main.go:8)	MOVD	16(g), R16
	0x0004 00004 (/Users/denis/Desktop/go-optimizations/type-casting/main.go:8)	PCDATA	$0, $-2
	0x0004 00004 (/Users/denis/Desktop/go-optimizations/type-casting/main.go:8)	CMP	R16, RSP
	0x0008 00008 (/Users/denis/Desktop/go-optimizations/type-casting/main.go:8)	BLS	236
	0x000c 00012 (/Users/denis/Desktop/go-optimizations/type-casting/main.go:8)	PCDATA	$0, $-1
	0x000c 00012 (/Users/denis/Desktop/go-optimizations/type-casting/main.go:8)	MOVD.W	R30, -96(RSP)
	0x0010 00016 (/Users/denis/Desktop/go-optimizations/type-casting/main.go:8)	MOVD	R29, -8(RSP)
	0x0014 00020 (/Users/denis/Desktop/go-optimizations/type-casting/main.go:8)	SUB	$8, RSP, R29
	0x0018 00024 (/Users/denis/Desktop/go-optimizations/type-casting/main.go:8)	FUNCDATA	$0, gclocals·D1/YcbyNumM1nqYyoY4wEQ==(SB)
	0x0018 00024 (/Users/denis/Desktop/go-optimizations/type-casting/main.go:8)	FUNCDATA	$1, gclocals·u9HbVkyM64FUVXF5GssKnA==(SB)
	0x0018 00024 (/Users/denis/Desktop/go-optimizations/type-casting/main.go:8)	FUNCDATA	$2, main.main.stkobj(SB)
	0x0018 00024 (/Users/denis/Desktop/go-optimizations/type-casting/main.go:9)	MOVD	$type:[11]uint8(SB), R0
	0x0020 00032 (/Users/denis/Desktop/go-optimizations/type-casting/main.go:9)	PCDATA	$1, $0
	0x0020 00032 (/Users/denis/Desktop/go-optimizations/type-casting/main.go:9)	CALL	runtime.newobject(SB)
	0x0024 00036 (/Users/denis/Desktop/go-optimizations/type-casting/main.go:9)	MOVD	R0, main..autotmp_30-40(SP)
	0x0028 00040 (/Users/denis/Desktop/go-optimizations/type-casting/main.go:9)	MOVD	$8022916924116329800, R1
	0x0038 00056 (/Users/denis/Desktop/go-optimizations/type-casting/main.go:9)	MOVD	R1, (R0)
	0x003c 00060 (/Users/denis/Desktop/go-optimizations/type-casting/main.go:9)	MOVD	$7236284523806224236, R1
	0x004c 00076 (/Users/denis/Desktop/go-optimizations/type-casting/main.go:9)	MOVD	R1, 3(R0)
	0x0050 00080 (/Users/denis/Desktop/go-optimizations/type-casting/main.go:11)	MOVD	$11, R1
	0x0054 00084 (/Users/denis/Desktop/go-optimizations/type-casting/main.go:11)	MOVD	R1, R2
	0x0058 00088 (/Users/denis/Desktop/go-optimizations/type-casting/main.go:11)	PCDATA	$1, $1
	0x0058 00088 (/Users/denis/Desktop/go-optimizations/type-casting/main.go:11)	CALL	main.sliceToString(SB)
	0x005c 00092 (/Users/denis/Desktop/go-optimizations/type-casting/main.go:11)	STP	(ZR, ZR), main..autotmp_16-16(SP)
	0x0060 00096 (/Users/denis/Desktop/go-optimizations/type-casting/main.go:11)	PCDATA	$1, $2
	0x0060 00096 (/Users/denis/Desktop/go-optimizations/type-casting/main.go:11)	CALL	runtime.convTstring(SB)
	0x0064 00100 (/Users/denis/Desktop/go-optimizations/type-casting/main.go:11)	MOVD	$type:string(SB), R1
	0x006c 00108 (/Users/denis/Desktop/go-optimizations/type-casting/main.go:11)	MOVD	R1, main..autotmp_16-16(SP)
	0x0070 00112 (/Users/denis/Desktop/go-optimizations/type-casting/main.go:11)	MOVD	R0, main..autotmp_16-8(SP)
	0x0074 00116 (/Users/denis/Desktop/go-optimizations/type-casting/main.go:11)	PCDATA	$0, $-3
	0x0074 00116 (/opt/go/go/src/fmt/print.go:314)	MOVD	os.Stdout(SB), R2
	0x007c 00124 (/opt/go/go/src/fmt/print.go:314)	PCDATA	$0, $-1
	0x007c 00124 (<unknown line number>)	NOP
	0x007c 00124 (/opt/go/go/src/fmt/print.go:314)	MOVD	$go:itab.*os.File,io.Writer(SB), R0
	0x0084 00132 (/opt/go/go/src/fmt/print.go:314)	MOVD	$1, R3
	0x0088 00136 (/opt/go/go/src/fmt/print.go:314)	MOVD	R3, R4
	0x008c 00140 (/opt/go/go/src/fmt/print.go:314)	MOVD	R2, R1
	0x0090 00144 (/opt/go/go/src/fmt/print.go:314)	MOVD	$main..autotmp_16-16(SP), R2
	0x0094 00148 (/opt/go/go/src/fmt/print.go:314)	PCDATA	$1, $1
	0x0094 00148 (/opt/go/go/src/fmt/print.go:314)	CALL	fmt.Fprintln(SB)
	0x0098 00152 (/Users/denis/Desktop/go-optimizations/type-casting/main.go:12)	MOVD	main..autotmp_30-40(SP), R0
	0x009c 00156 (/Users/denis/Desktop/go-optimizations/type-casting/main.go:12)	MOVD	$11, R1
	0x00a0 00160 (/Users/denis/Desktop/go-optimizations/type-casting/main.go:12)	MOVD	R1, R2
	0x00a4 00164 (/Users/denis/Desktop/go-optimizations/type-casting/main.go:12)	PCDATA	$1, $0
	0x00a4 00164 (/Users/denis/Desktop/go-optimizations/type-casting/main.go:12)	CALL	main.sliceToStringUnsafe(SB)
	0x00a8 00168 (/Users/denis/Desktop/go-optimizations/type-casting/main.go:12)	STP	(ZR, ZR), main..autotmp_19-32(SP)
	0x00ac 00172 (/Users/denis/Desktop/go-optimizations/type-casting/main.go:12)	PCDATA	$1, $3
	0x00ac 00172 (/Users/denis/Desktop/go-optimizations/type-casting/main.go:12)	CALL	runtime.convTstring(SB)
	0x00b0 00176 (/Users/denis/Desktop/go-optimizations/type-casting/main.go:12)	MOVD	$type:string(SB), R1
	0x00b8 00184 (/Users/denis/Desktop/go-optimizations/type-casting/main.go:12)	MOVD	R1, main..autotmp_19-32(SP)
	0x00bc 00188 (/Users/denis/Desktop/go-optimizations/type-casting/main.go:12)	MOVD	R0, main..autotmp_19-24(SP)
	0x00c0 00192 (/Users/denis/Desktop/go-optimizations/type-casting/main.go:12)	PCDATA	$0, $-4
	0x00c0 00192 (/opt/go/go/src/fmt/print.go:314)	MOVD	os.Stdout(SB), R1
	0x00c8 00200 (/opt/go/go/src/fmt/print.go:314)	PCDATA	$0, $-1
	0x00c8 00200 (<unknown line number>)	NOP
	0x00c8 00200 (/opt/go/go/src/fmt/print.go:314)	MOVD	$go:itab.*os.File,io.Writer(SB), R0
	0x00d0 00208 (/opt/go/go/src/fmt/print.go:314)	MOVD	$main..autotmp_19-32(SP), R2
	0x00d4 00212 (/opt/go/go/src/fmt/print.go:314)	MOVD	$1, R3
	0x00d8 00216 (/opt/go/go/src/fmt/print.go:314)	MOVD	R3, R4
	0x00dc 00220 (/opt/go/go/src/fmt/print.go:314)	PCDATA	$1, $0
	0x00dc 00220 (/opt/go/go/src/fmt/print.go:314)	CALL	fmt.Fprintln(SB)
	0x00e0 00224 (/Users/denis/Desktop/go-optimizations/type-casting/main.go:13)	LDP	-8(RSP), (R29, R30)
	0x00e4 00228 (/Users/denis/Desktop/go-optimizations/type-casting/main.go:13)	ADD	$96, RSP
	0x00e8 00232 (/Users/denis/Desktop/go-optimizations/type-casting/main.go:13)	RET	(R30)
	0x00ec 00236 (/Users/denis/Desktop/go-optimizations/type-casting/main.go:13)	NOP
	0x00ec 00236 (/Users/denis/Desktop/go-optimizations/type-casting/main.go:8)	PCDATA	$1, $-1
	0x00ec 00236 (/Users/denis/Desktop/go-optimizations/type-casting/main.go:8)	PCDATA	$0, $-2
	0x00ec 00236 (/Users/denis/Desktop/go-optimizations/type-casting/main.go:8)	MOVD	R30, R3
	0x00f0 00240 (/Users/denis/Desktop/go-optimizations/type-casting/main.go:8)	CALL	runtime.morestack_noctxt(SB)
	0x00f4 00244 (/Users/denis/Desktop/go-optimizations/type-casting/main.go:8)	PCDATA	$0, $-1
	0x00f4 00244 (/Users/denis/Desktop/go-optimizations/type-casting/main.go:8)	JMP	0
	0x0000 90 0b 40 f9 ff 63 30 eb 29 07 00 54 fe 0f 1a f8  ..@..c0.)..T....
	0x0010 fd 83 1f f8 fd 23 00 d1 00 00 00 90 00 00 00 91  .....#..........
	0x0020 00 00 00 94 e0 1b 00 f9 01 a9 8c d2 81 8d ad f2  ................
	0x0030 e1 0d c4 f2 e1 ea ed f2 01 00 00 f9 81 ed 8d d2  ................
	0x0040 01 e4 aa f2 e1 4d ce f2 81 8d ec f2 01 30 00 f8  .....M.......0..
	0x0050 61 01 80 d2 e2 03 01 aa 00 00 00 94 ff ff 04 a9  a...............
	0x0060 00 00 00 94 01 00 00 90 21 00 00 91 e1 27 00 f9  ........!....'..
	0x0070 e0 2b 00 f9 1b 00 00 90 62 03 40 f9 00 00 00 90  .+......b.@.....
	0x0080 00 00 00 91 e3 03 40 b2 e4 03 03 aa e1 03 02 aa  ......@.........
	0x0090 e2 23 01 91 00 00 00 94 e0 1b 40 f9 61 01 80 d2  .#........@.a...
	0x00a0 e2 03 01 aa 00 00 00 94 ff ff 03 a9 00 00 00 94  ................
	0x00b0 01 00 00 90 21 00 00 91 e1 1f 00 f9 e0 23 00 f9  ....!........#..
	0x00c0 1b 00 00 90 61 03 40 f9 00 00 00 90 00 00 00 91  ....a.@.........
	0x00d0 e2 e3 00 91 e3 03 40 b2 e4 03 03 aa 00 00 00 94  ......@.........
	0x00e0 fd fb 7f a9 ff 83 01 91 c0 03 5f d6 e3 03 1e aa  .........._.....
	0x00f0 00 00 00 94 c3 ff ff 17 00 00 00 00 00 00 00 00  ................
	rel 0+0 t=R_USEIFACE type:string+0
	rel 0+0 t=R_USEIFACE type:*os.File+0
	rel 0+0 t=R_USEIFACE type:string+0
	rel 0+0 t=R_USEIFACE type:*os.File+0
	rel 24+8 t=R_ADDRARM64 type:[11]uint8+0
	rel 32+4 t=R_CALLARM64 runtime.newobject+0
	rel 88+4 t=R_CALLARM64 main.sliceToString+0
	rel 96+4 t=R_CALLARM64 runtime.convTstring+0
	rel 100+8 t=R_ADDRARM64 type:string+0
	rel 116+8 t=R_ARM64_PCREL_LDST64 os.Stdout+0
	rel 124+8 t=R_ADDRARM64 go:itab.*os.File,io.Writer+0
	rel 148+4 t=R_CALLARM64 fmt.Fprintln+0
	rel 164+4 t=R_CALLARM64 main.sliceToStringUnsafe+0
	rel 172+4 t=R_CALLARM64 runtime.convTstring+0
	rel 176+8 t=R_ADDRARM64 type:string+0
	rel 192+8 t=R_ARM64_PCREL_LDST64 os.Stdout+0
	rel 200+8 t=R_ADDRARM64 go:itab.*os.File,io.Writer+0
	rel 220+4 t=R_CALLARM64 fmt.Fprintln+0
	rel 240+4 t=R_CALLARM64 runtime.morestack_noctxt+0
main.sliceToString STEXT size=96 args=0x18 locals=0x28 funcid=0x0 align=0x0
	0x0000 00000 (/Users/denis/Desktop/go-optimizations/type-casting/main.go:16)	TEXT	main.sliceToString(SB), ABIInternal, $48-24
	0x0000 00000 (/Users/denis/Desktop/go-optimizations/type-casting/main.go:16)	MOVD	16(g), R16
	0x0004 00004 (/Users/denis/Desktop/go-optimizations/type-casting/main.go:16)	PCDATA	$0, $-2
	0x0004 00004 (/Users/denis/Desktop/go-optimizations/type-casting/main.go:16)	CMP	R16, RSP
	0x0008 00008 (/Users/denis/Desktop/go-optimizations/type-casting/main.go:16)	BLS	56
	0x000c 00012 (/Users/denis/Desktop/go-optimizations/type-casting/main.go:16)	PCDATA	$0, $-1
	0x000c 00012 (/Users/denis/Desktop/go-optimizations/type-casting/main.go:16)	MOVD.W	R30, -48(RSP)
	0x0010 00016 (/Users/denis/Desktop/go-optimizations/type-casting/main.go:16)	MOVD	R29, -8(RSP)
	0x0014 00020 (/Users/denis/Desktop/go-optimizations/type-casting/main.go:16)	SUB	$8, RSP, R29
	0x0018 00024 (/Users/denis/Desktop/go-optimizations/type-casting/main.go:16)	MOVD	R0, main.input(FP)
	0x001c 00028 (/Users/denis/Desktop/go-optimizations/type-casting/main.go:16)	FUNCDATA	$0, gclocals·wgcWObbY2HYnK2SU/U22lA==(SB)
	0x001c 00028 (/Users/denis/Desktop/go-optimizations/type-casting/main.go:16)	FUNCDATA	$1, gclocals·J5F+7Qw7O7ve2QcWC7DpeQ==(SB)
	0x001c 00028 (/Users/denis/Desktop/go-optimizations/type-casting/main.go:16)	FUNCDATA	$5, main.sliceToString.arginfo1(SB)
	0x001c 00028 (/Users/denis/Desktop/go-optimizations/type-casting/main.go:16)	FUNCDATA	$6, main.sliceToString.argliveinfo(SB)
	0x001c 00028 (/Users/denis/Desktop/go-optimizations/type-casting/main.go:16)	PCDATA	$3, $1
	0x001c 00028 (/Users/denis/Desktop/go-optimizations/type-casting/main.go:17)	MOVD	R1, R2
	0x0020 00032 (/Users/denis/Desktop/go-optimizations/type-casting/main.go:17)	MOVD	R0, R1
	0x0024 00036 (/Users/denis/Desktop/go-optimizations/type-casting/main.go:17)	MOVD	ZR, R0
	0x0028 00040 (/Users/denis/Desktop/go-optimizations/type-casting/main.go:17)	PCDATA	$1, $1
	-----------------------------------------------------------------------------------------------------------------------
	0x0028 00040 (/Users/denis/Desktop/go-optimizations/type-casting/main.go:17)	CALL	runtime.slicebytetostring(SB)
	-----------------------------------------------------------------------------------------------------------------------
	0x002c 00044 (/Users/denis/Desktop/go-optimizations/type-casting/main.go:17)	LDP	-8(RSP), (R29, R30)
	0x0030 00048 (/Users/denis/Desktop/go-optimizations/type-casting/main.go:17)	ADD	$48, RSP
	0x0034 00052 (/Users/denis/Desktop/go-optimizations/type-casting/main.go:17)	RET	(R30)
	0x0038 00056 (/Users/denis/Desktop/go-optimizations/type-casting/main.go:17)	NOP
	0x0038 00056 (/Users/denis/Desktop/go-optimizations/type-casting/main.go:16)	PCDATA	$1, $-1
	0x0038 00056 (/Users/denis/Desktop/go-optimizations/type-casting/main.go:16)	PCDATA	$0, $-2
	0x0038 00056 (/Users/denis/Desktop/go-optimizations/type-casting/main.go:16)	MOVD	R0, 8(RSP)
	0x003c 00060 (/Users/denis/Desktop/go-optimizations/type-casting/main.go:16)	MOVD	R1, 16(RSP)
	0x0040 00064 (/Users/denis/Desktop/go-optimizations/type-casting/main.go:16)	MOVD	R2, 24(RSP)
	0x0044 00068 (/Users/denis/Desktop/go-optimizations/type-casting/main.go:16)	MOVD	R30, R3
	0x0048 00072 (/Users/denis/Desktop/go-optimizations/type-casting/main.go:16)	CALL	runtime.morestack_noctxt(SB)
	0x004c 00076 (/Users/denis/Desktop/go-optimizations/type-casting/main.go:16)	PCDATA	$0, $-1
	0x004c 00076 (/Users/denis/Desktop/go-optimizations/type-casting/main.go:16)	MOVD	8(RSP), R0
	0x0050 00080 (/Users/denis/Desktop/go-optimizations/type-casting/main.go:16)	MOVD	16(RSP), R1
	0x0054 00084 (/Users/denis/Desktop/go-optimizations/type-casting/main.go:16)	MOVD	24(RSP), R2
	0x0058 00088 (/Users/denis/Desktop/go-optimizations/type-casting/main.go:16)	JMP	0
	0x0000 90 0b 40 f9 ff 63 30 eb 89 01 00 54 fe 0f 1d f8  ..@..c0....T....
	0x0010 fd 83 1f f8 fd 23 00 d1 e0 1f 00 f9 e2 03 01 aa  .....#..........
	0x0020 e1 03 00 aa e0 03 1f aa 00 00 00 94 fd fb 7f a9  ................
	0x0030 ff c3 00 91 c0 03 5f d6 e0 07 00 f9 e1 0b 00 f9  ......_.........
	0x0040 e2 0f 00 f9 e3 03 1e aa 00 00 00 94 e0 07 40 f9  ..............@.
	0x0050 e1 0b 40 f9 e2 0f 40 f9 ea ff ff 17 00 00 00 00  ..@...@.........
	rel 40+4 t=R_CALLARM64 runtime.slicebytetostring+0
	rel 72+4 t=R_CALLARM64 runtime.morestack_noctxt+0
main.sliceToStringUnsafe STEXT size=16 args=0x18 locals=0x0 funcid=0x0 align=0x0 leaf
	0x0000 00000 (/Users/denis/Desktop/go-optimizations/type-casting/main.go:21)	TEXT	main.sliceToStringUnsafe(SB), LEAF|NOFRAME|ABIInternal, $0-24
	0x0000 00000 (/Users/denis/Desktop/go-optimizations/type-casting/main.go:21)	FUNCDATA	$0, gclocals·wgcWObbY2HYnK2SU/U22lA==(SB)
	0x0000 00000 (/Users/denis/Desktop/go-optimizations/type-casting/main.go:21)	FUNCDATA	$1, gclocals·J5F+7Qw7O7ve2QcWC7DpeQ==(SB)
	0x0000 00000 (/Users/denis/Desktop/go-optimizations/type-casting/main.go:21)	FUNCDATA	$2, main.sliceToStringUnsafe.stkobj(SB)
	0x0000 00000 (/Users/denis/Desktop/go-optimizations/type-casting/main.go:21)	FUNCDATA	$5, main.sliceToStringUnsafe.arginfo1(SB)
	0x0000 00000 (/Users/denis/Desktop/go-optimizations/type-casting/main.go:21)	MOVD	R0, main.input(FP)
	0x0004 00004 (/Users/denis/Desktop/go-optimizations/type-casting/main.go:21)	MOVD	R1, main.input+8(FP)
	0x0008 00008 (/Users/denis/Desktop/go-optimizations/type-casting/main.go:21)	MOVD	R2, main.input+16(FP)
	0x000c 00012 (/Users/denis/Desktop/go-optimizations/type-casting/main.go:22)	RET	(R30)
	0x0000 e0 07 00 f9 e1 0b 00 f9 e2 0f 00 f9 c0 03 5f d6  .............._.
go:cuinfo.producer.main SDWARFCUINFO dupok size=0
	0x0000 2d 73 68 61 72 65 64 20 72 65 67 61 62 69        -shared regabi
go:cuinfo.packagename.main SDWARFCUINFO dupok size=0
	0x0000 6d 61 69 6e                                      main
go:info.fmt.Println$abstract SDWARFABSFCN dupok size=44
	0x0000 05 66 6d 74 2e 50 72 69 6e 74 6c 6e 00 01 b9 02  .fmt.Println....
	0x0010 01 13 61 00 00 00 00 00 00 13 6e 00 01 00 00 00  ..a.......n.....
	0x0020 00 13 65 72 72 00 01 00 00 00 00 00              ..err.......
	rel 0+0 t=R_USETYPE type:[]interface {}+0
	rel 0+0 t=R_USETYPE type:error+0
	rel 0+0 t=R_USETYPE type:int+0
	rel 21+4 t=R_DWARFSECREF go:info.[]interface {}+0
	rel 29+4 t=R_DWARFSECREF go:info.int+0
	rel 39+4 t=R_DWARFSECREF go:info.error+0
go:itab.*os.File,io.Writer SRODATA dupok size=32
	0x0000 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0010 5a 22 ee 60 00 00 00 00 00 00 00 00 00 00 00 00  Z".`............
	rel 0+8 t=R_ADDR type:io.Writer+0
	rel 8+8 t=R_ADDR type:*os.File+0
	rel 24+8 t=RelocType(-32767) os.(*File).Write+0
main..inittask SNOPTRDATA size=8
	0x0000 00 00 00 00 00 00 00 00                          ........
	rel 0+0 t=R_INITORDER fmt..inittask+0
runtime.memequal64·f SRODATA dupok size=8
	0x0000 00 00 00 00 00 00 00 00                          ........
	rel 0+8 t=R_ADDR runtime.memequal64+0
runtime.gcbits.0100000000000000 SRODATA dupok size=8
	0x0000 01 00 00 00 00 00 00 00                          ........
type:.namedata.*[]uint8- SRODATA dupok size=10
	0x0000 00 08 2a 5b 5d 75 69 6e 74 38                    ..*[]uint8
type:*[]uint8 SRODATA dupok size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 1f bb cf 43 08 08 08 36 00 00 00 00 00 00 00 00  ...C...6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=R_ADDR runtime.memequal64·f+0
	rel 32+8 t=R_ADDR runtime.gcbits.0100000000000000+0
	rel 40+4 t=R_ADDROFF type:.namedata.*[]uint8-+0
	rel 48+8 t=R_ADDR type:[]uint8+0
go:string."Hello World" SRODATA dupok size=11
	0x0000 48 65 6c 6c 6f 20 57 6f 72 6c 64                 Hello World
type:.namedata.*[11]uint8- SRODATA dupok size=12
	0x0000 00 0a 2a 5b 31 31 5d 75 69 6e 74 38              ..*[11]uint8
type:.eqfunc11 SRODATA dupok size=16
	0x0000 00 00 00 00 00 00 00 00 0b 00 00 00 00 00 00 00  ................
	rel 0+8 t=R_ADDR runtime.memequal_varlen+0
runtime.gcbits. SRODATA dupok size=0
type:[11]uint8 SRODATA dupok size=72
	0x0000 0b 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0010 c1 e7 d7 13 0a 01 01 11 00 00 00 00 00 00 00 00  ................
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0040 0b 00 00 00 00 00 00 00                          ........
	rel 24+8 t=R_ADDR type:.eqfunc11+0
	rel 32+8 t=R_ADDR runtime.gcbits.+0
	rel 40+4 t=R_ADDROFF type:.namedata.*[11]uint8-+0
	rel 44+4 t=RelocType(-32763) type:*[11]uint8+0
	rel 48+8 t=R_ADDR type:uint8+0
	rel 56+8 t=R_ADDR type:[]uint8+0
type:*[11]uint8 SRODATA dupok size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 41 02 dc 01 08 08 08 36 00 00 00 00 00 00 00 00  A......6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=R_ADDR runtime.memequal64·f+0
	rel 32+8 t=R_ADDR runtime.gcbits.0100000000000000+0
	rel 40+4 t=R_ADDROFF type:.namedata.*[11]uint8-+0
	rel 48+8 t=R_ADDR type:[11]uint8+0
runtime.nilinterequal·f SRODATA dupok size=8
	0x0000 00 00 00 00 00 00 00 00                          ........
	rel 0+8 t=R_ADDR runtime.nilinterequal+0
type:.namedata.*[1]interface {}- SRODATA dupok size=18
	0x0000 00 10 2a 5b 31 5d 69 6e 74 65 72 66 61 63 65 20  ..*[1]interface 
	0x0010 7b 7d                                            {}
type:*[1]interface {} SRODATA dupok size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 a8 0e 57 36 08 08 08 36 00 00 00 00 00 00 00 00  ..W6...6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=R_ADDR runtime.memequal64·f+0
	rel 32+8 t=R_ADDR runtime.gcbits.0100000000000000+0
	rel 40+4 t=R_ADDROFF type:.namedata.*[1]interface {}-+0
	rel 48+8 t=R_ADDR type:[1]interface {}+0
runtime.gcbits.0200000000000000 SRODATA dupok size=8
	0x0000 02 00 00 00 00 00 00 00                          ........
type:[1]interface {} SRODATA dupok size=72
	0x0000 10 00 00 00 00 00 00 00 10 00 00 00 00 00 00 00  ................
	0x0010 6e 20 6a 3d 02 08 08 11 00 00 00 00 00 00 00 00  n j=............
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0040 01 00 00 00 00 00 00 00                          ........
	rel 24+8 t=R_ADDR runtime.nilinterequal·f+0
	rel 32+8 t=R_ADDR runtime.gcbits.0200000000000000+0
	rel 40+4 t=R_ADDROFF type:.namedata.*[1]interface {}-+0
	rel 44+4 t=RelocType(-32763) type:*[1]interface {}+0
	rel 48+8 t=R_ADDR type:interface {}+0
	rel 56+8 t=R_ADDR type:[]interface {}+0
gclocals·D1/YcbyNumM1nqYyoY4wEQ== SRODATA dupok size=8
	0x0000 04 00 00 00 00 00 00 00                          ........
gclocals·u9HbVkyM64FUVXF5GssKnA== SRODATA dupok size=12
	0x0000 04 00 00 00 05 00 00 00 00 01 11 04              ............
main.main.stkobj SRODATA static size=40
	0x0000 02 00 00 00 00 00 00 00 e0 ff ff ff 10 00 00 00  ................
	0x0010 10 00 00 00 00 00 00 00 f0 ff ff ff 10 00 00 00  ................
	0x0020 10 00 00 00 00 00 00 00                          ........
	rel 20+4 t=R_ADDROFF runtime.gcbits.0200000000000000+0
	rel 36+4 t=R_ADDROFF runtime.gcbits.0200000000000000+0
gclocals·wgcWObbY2HYnK2SU/U22lA== SRODATA dupok size=10
	0x0000 02 00 00 00 01 00 00 00 01 00                    ..........
gclocals·J5F+7Qw7O7ve2QcWC7DpeQ== SRODATA dupok size=8
	0x0000 02 00 00 00 00 00 00 00                          ........
main.sliceToString.arginfo1 SRODATA static dupok size=9
	0x0000 fe 00 08 08 08 10 08 fd ff                       .........
main.sliceToString.argliveinfo SRODATA static dupok size=2
	0x0000 00 00                                            ..
main.sliceToStringUnsafe.stkobj SRODATA static size=24
	0x0000 01 00 00 00 00 00 00 00 00 00 00 00 18 00 00 00  ................
	0x0010 08 00 00 00 00 00 00 00                          ........
	rel 20+4 t=R_ADDROFF runtime.gcbits.0100000000000000+0
main.sliceToStringUnsafe.arginfo1 SRODATA static dupok size=9
	0x0000 fe 00 08 08 08 10 08 fd ff                       .........
