"".main STEXT size=416 args=0x0 locals=0x88 funcid=0x0
	0x0000 00000 (main.go:5)	TEXT	"".main(SB), ABIInternal, $144-0
	0x0000 00000 (main.go:5)	MOVD	16(g), R1
	0x0004 00004 (main.go:5)	PCDATA	$0, $-2
	0x0004 00004 (main.go:5)	SUB	$16, RSP, R2
	0x0008 00008 (main.go:5)	CMP	R1, R2
	0x000c 00012 (main.go:5)	BLS	392
	0x0010 00016 (main.go:5)	PCDATA	$0, $-1
	0x0010 00016 (main.go:5)	MOVD.W	R30, -144(RSP)
	0x0014 00020 (main.go:5)	MOVD	R29, -8(RSP)
	0x0018 00024 (main.go:5)	SUB	$8, RSP, R29
	0x001c 00028 (main.go:5)	FUNCDATA	ZR, gclocals·69c1753bd5f81501d95132d08af04464(SB)
	0x001c 00028 (main.go:5)	FUNCDATA	$1, gclocals·d527b79a98f329c2ba624a68e7df03d6(SB)
	0x001c 00028 (main.go:5)	FUNCDATA	$2, "".main.stkobj(SB)
	0x001c 00028 (main.go:6)	MOVD	$type.[5]int(SB), R0
	0x0024 00036 (main.go:6)	MOVD	R0, 8(RSP)
	0x0028 00040 (main.go:6)	PCDATA	$1, ZR
	0x0028 00040 (main.go:6)	CALL	runtime.newobject(SB)
	0x002c 00044 (main.go:6)	MOVD	16(RSP), R0
	0x0030 00048 (main.go:6)	MOVD	R0, ""..autotmp_45-40(SP)
	0x0034 00052 (main.go:6)	MOVD	$1, R1
	0x0038 00056 (main.go:6)	MOVD	R1, (R0)
	0x003c 00060 (main.go:6)	MOVD	$2, R2
	0x0040 00064 (main.go:6)	MOVD	R2, 8(R0)
	0x0044 00068 (main.go:6)	MOVD	$3, R2
	0x0048 00072 (main.go:6)	MOVD	R2, 16(R0)
	0x004c 00076 (main.go:6)	MOVD	$4, R2
	0x0050 00080 (main.go:6)	MOVD	R2, 24(R0)
	0x0054 00084 (main.go:6)	MOVD	$5, R2
	0x0058 00088 (main.go:6)	MOVD	R2, 32(R0)
	0x005c 00092 (main.go:8)	MOVD	$type.int(SB), R3
	0x0064 00100 (main.go:8)	MOVD	R3, 8(RSP)
	0x0068 00104 (main.go:8)	STP	(ZR, ZR), 16(RSP)
	0x006c 00108 (main.go:8)	PCDATA	$1, $1
	0x006c 00108 (main.go:8)	CALL	runtime.makeslice(SB)
	0x0070 00112 (main.go:8)	MOVD	32(RSP), R0
	0x0074 00116 (main.go:9)	MOVD	""..autotmp_45-40(SP), R1
	0x0078 00120 (main.go:9)	MOVD	(R1), R2
	0x007c 00124 (main.go:9)	MOVD	R2, ""..autotmp_46-48(SP)
	0x0080 00128 (main.go:9)	MOVD	$type.int(SB), R3
	0x0088 00136 (main.go:9)	MOVD	R3, 8(RSP)
	0x008c 00140 (main.go:9)	MOVD	R0, 16(RSP)
	0x0090 00144 (main.go:9)	STP	(ZR, ZR), 24(RSP)
	0x0094 00148 (main.go:9)	MOVD	$1, R0
	0x0098 00152 (main.go:9)	MOVD	R0, 40(RSP)
	0x009c 00156 (main.go:9)	CALL	runtime.growslice(SB)
	0x00a0 00160 (main.go:9)	MOVD	48(RSP), R0
	0x00a4 00164 (main.go:9)	MOVD	56(RSP), R1
	0x00a8 00168 (main.go:9)	MOVD	64(RSP), R2
	0x00ac 00172 (main.go:9)	MOVD	""..autotmp_46-48(SP), R3
	0x00b0 00176 (main.go:9)	MOVD	R3, (R0)
	0x00b4 00180 (main.go:14)	MOVD	R0, 8(RSP)
	0x00b8 00184 (main.go:9)	ADD	$1, R1, R0
	0x00bc 00188 (main.go:14)	MOVD	R0, 16(RSP)
	0x00c0 00192 (main.go:14)	MOVD	R2, 24(RSP)
	0x00c4 00196 (main.go:14)	CALL	runtime.convTslice(SB)
	0x00c8 00200 (main.go:14)	MOVD	32(RSP), R0
	0x00cc 00204 (main.go:14)	STP	(ZR, ZR), ""..autotmp_22-16(SP)
	0x00d0 00208 (main.go:14)	MOVD	$type.[]int(SB), R1
	0x00d8 00216 (main.go:14)	MOVD	R1, ""..autotmp_22-16(SP)
	0x00dc 00220 (main.go:14)	MOVD	R0, ""..autotmp_22-8(SP)
	0x00e0 00224 (<unknown line number>)	NOP
	0x00e0 00224 (<unknown line number>)	PCDATA	$0, $-3
	0x00e0 00224 ($GOROOT/src/fmt/print.go:274)	MOVD	os.Stdout(SB), R0
	0x00ec 00236 ($GOROOT/src/fmt/print.go:274)	PCDATA	$0, $-1
	0x00ec 00236 ($GOROOT/src/fmt/print.go:274)	MOVD	$go.itab.*os.File,io.Writer(SB), R2
	0x00f4 00244 ($GOROOT/src/fmt/print.go:274)	MOVD	R2, 8(RSP)
	0x00f8 00248 ($GOROOT/src/fmt/print.go:274)	MOVD	R0, 16(RSP)
	0x00fc 00252 ($GOROOT/src/fmt/print.go:274)	MOVD	$""..autotmp_22-16(SP), R0
	0x0100 00256 ($GOROOT/src/fmt/print.go:274)	MOVD	R0, 24(RSP)
	0x0104 00260 ($GOROOT/src/fmt/print.go:274)	MOVD	$1, R0
	0x0108 00264 ($GOROOT/src/fmt/print.go:274)	MOVD	R0, 32(RSP)
	0x010c 00268 ($GOROOT/src/fmt/print.go:274)	MOVD	R0, 40(RSP)
	0x0110 00272 ($GOROOT/src/fmt/print.go:274)	CALL	fmt.Fprintln(SB)
	0x0114 00276 (main.go:15)	MOVD	""..autotmp_45-40(SP), R0
	0x0118 00280 (main.go:15)	MOVD	R0, 8(RSP)
	0x011c 00284 (main.go:15)	MOVD	$1, R0
	0x0120 00288 (main.go:15)	MOVD	R0, 16(RSP)
	0x0124 00292 (main.go:15)	MOVD	$5, R1
	0x0128 00296 (main.go:15)	MOVD	R1, 24(RSP)
	0x012c 00300 (main.go:15)	PCDATA	$1, ZR
	0x012c 00300 (main.go:15)	CALL	runtime.convTslice(SB)
	0x0130 00304 (main.go:15)	MOVD	32(RSP), R0
	0x0134 00308 (main.go:15)	STP	(ZR, ZR), ""..autotmp_25-32(SP)
	0x0138 00312 (main.go:15)	MOVD	$type.[]int(SB), R1
	0x0140 00320 (main.go:15)	MOVD	R1, ""..autotmp_25-32(SP)
	0x0144 00324 (main.go:15)	MOVD	R0, ""..autotmp_25-24(SP)
	0x0148 00328 (<unknown line number>)	NOP
	0x0148 00328 (<unknown line number>)	PCDATA	$0, $-4
	0x0148 00328 ($GOROOT/src/fmt/print.go:274)	MOVD	os.Stdout(SB), R0
	0x0154 00340 ($GOROOT/src/fmt/print.go:274)	PCDATA	$0, $-1
	0x0154 00340 ($GOROOT/src/fmt/print.go:274)	MOVD	$go.itab.*os.File,io.Writer(SB), R1
	0x015c 00348 ($GOROOT/src/fmt/print.go:274)	MOVD	R1, 8(RSP)
	0x0160 00352 ($GOROOT/src/fmt/print.go:274)	MOVD	R0, 16(RSP)
	0x0164 00356 ($GOROOT/src/fmt/print.go:274)	MOVD	$""..autotmp_25-32(SP), R0
	0x0168 00360 ($GOROOT/src/fmt/print.go:274)	MOVD	R0, 24(RSP)
	0x016c 00364 ($GOROOT/src/fmt/print.go:274)	MOVD	$1, R0
	0x0170 00368 ($GOROOT/src/fmt/print.go:274)	MOVD	R0, 32(RSP)
	0x0174 00372 ($GOROOT/src/fmt/print.go:274)	MOVD	R0, 40(RSP)
	0x0178 00376 ($GOROOT/src/fmt/print.go:274)	CALL	fmt.Fprintln(SB)
	0x017c 00380 (main.go:16)	MOVD	-8(RSP), R29
	0x0180 00384 (main.go:16)	MOVD.P	144(RSP), R30
	0x0184 00388 (main.go:16)	RET	(R30)
	0x0188 00392 (main.go:16)	NOP
	0x0188 00392 (main.go:5)	PCDATA	$1, $-1
	0x0188 00392 (main.go:5)	PCDATA	$0, $-2
	0x0188 00392 (main.go:5)	MOVD	R30, R3
	0x018c 00396 (main.go:5)	CALL	runtime.morestack_noctxt(SB)
	0x0190 00400 (main.go:5)	PCDATA	$0, $-1
	0x0190 00400 (main.go:5)	JMP	0
	0x0000 81 0b 40 f9 e2 43 00 d1 5f 00 01 eb e9 0b 00 54  ..@..C.._......T
	0x0010 fe 0f 17 f8 fd 83 1f f8 fd 23 00 d1 00 00 00 90  .........#......
	0x0020 00 00 00 91 e0 07 00 f9 00 00 00 94 e0 0b 40 f9  ..............@.
	0x0030 e0 33 00 f9 e1 03 40 b2 01 00 00 f9 e2 03 7f b2  .3....@.........
	0x0040 02 04 00 f9 e2 07 40 b2 02 08 00 f9 e2 03 7e b2  ......@.......~.
	0x0050 02 0c 00 f9 a2 00 80 d2 02 10 00 f9 03 00 00 90  ................
	0x0060 63 00 00 91 e3 07 00 f9 ff 7f 01 a9 00 00 00 94  c...............
	0x0070 e0 13 40 f9 e1 33 40 f9 22 00 40 f9 e2 2f 00 f9  ..@..3@.".@../..
	0x0080 03 00 00 90 63 00 00 91 e3 07 00 f9 e0 0b 00 f9  ....c...........
	0x0090 ff ff 01 a9 e0 03 40 b2 e0 17 00 f9 00 00 00 94  ......@.........
	0x00a0 e0 1b 40 f9 e1 1f 40 f9 e2 23 40 f9 e3 2f 40 f9  ..@...@..#@../@.
	0x00b0 03 00 00 f9 e0 07 00 f9 20 04 00 91 e0 0b 00 f9  ........ .......
	0x00c0 e2 0f 00 f9 00 00 00 94 e0 13 40 f9 ff ff 07 a9  ..........@.....
	0x00d0 01 00 00 90 21 00 00 91 e1 3f 00 f9 e0 43 00 f9  ....!....?...C..
	0x00e0 1b 00 00 90 7b 03 00 91 60 03 40 f9 02 00 00 90  ....{...`.@.....
	0x00f0 42 00 00 91 e2 07 00 f9 e0 0b 00 f9 e0 e3 01 91  B...............
	0x0100 e0 0f 00 f9 e0 03 40 b2 e0 13 00 f9 e0 17 00 f9  ......@.........
	0x0110 00 00 00 94 e0 33 40 f9 e0 07 00 f9 e0 03 40 b2  .....3@.......@.
	0x0120 e0 0b 00 f9 a1 00 80 d2 e1 0f 00 f9 00 00 00 94  ................
	0x0130 e0 13 40 f9 ff ff 06 a9 01 00 00 90 21 00 00 91  ..@.........!...
	0x0140 e1 37 00 f9 e0 3b 00 f9 1b 00 00 90 7b 03 00 91  .7...;......{...
	0x0150 60 03 40 f9 01 00 00 90 21 00 00 91 e1 07 00 f9  `.@.....!.......
	0x0160 e0 0b 00 f9 e0 a3 01 91 e0 0f 00 f9 e0 03 40 b2  ..............@.
	0x0170 e0 13 00 f9 e0 17 00 f9 00 00 00 94 fd 83 5f f8  .............._.
	0x0180 fe 07 49 f8 c0 03 5f d6 e3 03 1e aa 00 00 00 94  ..I..._.........
	0x0190 9c ff ff 17 00 00 00 00 00 00 00 00 00 00 00 00  ................
	rel 0+0 t=24 type.[]int+0
	rel 0+0 t=24 type.*os.File+0
	rel 0+0 t=24 type.[]int+0
	rel 0+0 t=24 type.*os.File+0
	rel 28+8 t=3 type.[5]int+0
	rel 40+4 t=9 runtime.newobject+0
	rel 92+8 t=3 type.int+0
	rel 108+4 t=9 runtime.makeslice+0
	rel 128+8 t=3 type.int+0
	rel 156+4 t=9 runtime.growslice+0
	rel 196+4 t=9 runtime.convTslice+0
	rel 208+8 t=3 type.[]int+0
	rel 224+8 t=3 os.Stdout+0
	rel 236+8 t=3 go.itab.*os.File,io.Writer+0
	rel 272+4 t=9 fmt.Fprintln+0
	rel 300+4 t=9 runtime.convTslice+0
	rel 312+8 t=3 type.[]int+0
	rel 328+8 t=3 os.Stdout+0
	rel 340+8 t=3 go.itab.*os.File,io.Writer+0
	rel 376+4 t=9 fmt.Fprintln+0
	rel 396+4 t=9 runtime.morestack_noctxt+0
os.(*File).close STEXT dupok size=32 args=0x18 locals=0x0 funcid=0x0 leaf
	0x0000 00000 (<autogenerated>:1)	TEXT	os.(*File).close(SB), DUPOK|LEAF|NOFRAME|ABIInternal, $0-24
	0x0000 00000 (<autogenerated>:1)	FUNCDATA	ZR, gclocals·e6397a44f8e1b6e77d0f200b4fba5269(SB)
	0x0000 00000 (<autogenerated>:1)	FUNCDATA	$1, gclocals·69c1753bd5f81501d95132d08af04464(SB)
	0x0000 00000 (<autogenerated>:1)	FUNCDATA	$5, os.(*File).close.arginfo1(SB)
	0x0000 00000 (<autogenerated>:1)	MOVD	""..this(FP), R0
	0x0004 00004 (<autogenerated>:1)	MOVD	(R0), R0
	0x0008 00008 (<autogenerated>:1)	MOVD	R0, ""..this(FP)
	0x000c 00012 (<autogenerated>:1)	STP	(ZR, ZR), "".~r0+8(FP)
	0x0010 00016 (<autogenerated>:1)	JMP	os.(*file).close(SB)
	0x0000 e0 07 40 f9 00 00 40 f9 e0 07 00 f9 ff 7f 01 a9  ..@...@.........
	0x0010 00 00 00 14 00 00 00 00 00 00 00 00 00 00 00 00  ................
	rel 16+4 t=9 os.(*file).close+0
go.cuinfo.packagename. SDWARFCUINFO dupok size=0
	0x0000 6d 61 69 6e                                      main
""..inittask SNOPTRDATA size=32
	0x0000 00 00 00 00 00 00 00 00 01 00 00 00 00 00 00 00  ................
	0x0010 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	rel 24+8 t=1 fmt..inittask+0
go.info.fmt.Println$abstract SDWARFABSFCN dupok size=42
	0x0000 04 66 6d 74 2e 50 72 69 6e 74 6c 6e 00 01 01 11  .fmt.Println....
	0x0010 61 00 00 00 00 00 00 11 6e 00 01 00 00 00 00 11  a.......n.......
	0x0020 65 72 72 00 01 00 00 00 00 00                    err.......
	rel 0+0 t=23 type.[]interface {}+0
	rel 0+0 t=23 type.error+0
	rel 0+0 t=23 type.int+0
	rel 19+4 t=31 go.info.[]interface {}+0
	rel 27+4 t=31 go.info.int+0
	rel 37+4 t=31 go.info.error+0
runtime.memequal64·f SRODATA dupok size=8
	0x0000 00 00 00 00 00 00 00 00                          ........
	rel 0+8 t=1 runtime.memequal64+0
runtime.gcbits.01 SRODATA dupok size=1
	0x0000 01                                               .
type..namedata.*[]int- SRODATA dupok size=8
	0x0000 00 06 2a 5b 5d 69 6e 74                          ..*[]int
type.*[]int SRODATA dupok size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 1b 31 52 88 08 08 08 36 00 00 00 00 00 00 00 00  .1R....6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.memequal64·f+0
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*[]int-+0
	rel 48+8 t=1 type.[]int+0
type.[]int SRODATA dupok size=56
	0x0000 18 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 8e 66 f9 1b 02 08 08 17 00 00 00 00 00 00 00 00  .f..............
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*[]int-+0
	rel 44+4 t=-32763 type.*[]int+0
	rel 48+8 t=1 type.int+0
type..eqfunc40 SRODATA dupok size=16
	0x0000 00 00 00 00 00 00 00 00 28 00 00 00 00 00 00 00  ........(.......
	rel 0+8 t=1 runtime.memequal_varlen+0
type..namedata.*[5]int- SRODATA dupok size=9
	0x0000 00 07 2a 5b 35 5d 69 6e 74                       ..*[5]int
type.*[5]int SRODATA dupok size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 7f 3e c9 04 08 08 08 36 00 00 00 00 00 00 00 00  .>.....6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.memequal64·f+0
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*[5]int-+0
	rel 48+8 t=1 type.[5]int+0
runtime.gcbits. SRODATA dupok size=0
type.[5]int SRODATA dupok size=72
	0x0000 28 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  (...............
	0x0010 9f 12 55 0a 0a 08 08 11 00 00 00 00 00 00 00 00  ..U.............
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0040 05 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 type..eqfunc40+0
	rel 32+8 t=1 runtime.gcbits.+0
	rel 40+4 t=5 type..namedata.*[5]int-+0
	rel 44+4 t=-32763 type.*[5]int+0
	rel 48+8 t=1 type.int+0
	rel 56+8 t=1 type.[]int+0
runtime.nilinterequal·f SRODATA dupok size=8
	0x0000 00 00 00 00 00 00 00 00                          ........
	rel 0+8 t=1 runtime.nilinterequal+0
type..namedata.*interface {}- SRODATA dupok size=15
	0x0000 00 0d 2a 69 6e 74 65 72 66 61 63 65 20 7b 7d     ..*interface {}
type.*interface {} SRODATA dupok size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 4f 0f 96 9d 08 08 08 36 00 00 00 00 00 00 00 00  O......6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.memequal64·f+0
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*interface {}-+0
	rel 48+8 t=1 type.interface {}+0
runtime.gcbits.02 SRODATA dupok size=1
	0x0000 02                                               .
type.interface {} SRODATA dupok size=80
	0x0000 10 00 00 00 00 00 00 00 10 00 00 00 00 00 00 00  ................
	0x0010 e7 57 a0 18 02 08 08 14 00 00 00 00 00 00 00 00  .W..............
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0040 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	rel 24+8 t=1 runtime.nilinterequal·f+0
	rel 32+8 t=1 runtime.gcbits.02+0
	rel 40+4 t=5 type..namedata.*interface {}-+0
	rel 44+4 t=-32763 type.*interface {}+0
	rel 56+8 t=1 type.interface {}+80
type..namedata.*[]interface {}- SRODATA dupok size=17
	0x0000 00 0f 2a 5b 5d 69 6e 74 65 72 66 61 63 65 20 7b  ..*[]interface {
	0x0010 7d                                               }
type.*[]interface {} SRODATA dupok size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 f3 04 9a e7 08 08 08 36 00 00 00 00 00 00 00 00  .......6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.memequal64·f+0
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*[]interface {}-+0
	rel 48+8 t=1 type.[]interface {}+0
type.[]interface {} SRODATA dupok size=56
	0x0000 18 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 70 93 ea 2f 02 08 08 17 00 00 00 00 00 00 00 00  p../............
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*[]interface {}-+0
	rel 44+4 t=-32763 type.*[]interface {}+0
	rel 48+8 t=1 type.interface {}+0
go.itab.*os.File,io.Writer SRODATA dupok size=32
	0x0000 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0010 44 b5 f3 33 00 00 00 00 00 00 00 00 00 00 00 00  D..3............
	rel 0+8 t=1 type.io.Writer+0
	rel 8+8 t=1 type.*os.File+0
	rel 24+8 t=-32767 os.(*File).Write+0
type..importpath.fmt. SRODATA dupok size=5
	0x0000 00 03 66 6d 74                                   ..fmt
gclocals·69c1753bd5f81501d95132d08af04464 SRODATA dupok size=8
	0x0000 02 00 00 00 00 00 00 00                          ........
gclocals·d527b79a98f329c2ba624a68e7df03d6 SRODATA dupok size=10
	0x0000 02 00 00 00 05 00 00 00 00 01                    ..........
"".main.stkobj SRODATA static size=56
	0x0000 02 00 00 00 00 00 00 00 e0 ff ff ff 10 00 00 00  ................
	0x0010 10 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0020 f0 ff ff ff 10 00 00 00 10 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.gcbits.02+0
	rel 48+8 t=1 runtime.gcbits.02+0
gclocals·e6397a44f8e1b6e77d0f200b4fba5269 SRODATA dupok size=10
	0x0000 02 00 00 00 03 00 00 00 01 00                    ..........
os.(*File).close.arginfo1 SRODATA static dupok size=3
	0x0000 00 08 ff                                         ...
"".main STEXT size=528 args=0x0 locals=0x88 funcid=0x0
	0x0000 00000 (main.go:5)	TEXT	"".main(SB), ABIInternal, $144-0
	0x0000 00000 (main.go:5)	MOVD	16(g), R1
	0x0004 00004 (main.go:5)	PCDATA	$0, $-2
	0x0004 00004 (main.go:5)	SUB	$16, RSP, R2
	0x0008 00008 (main.go:5)	CMP	R1, R2
	0x000c 00012 (main.go:5)	BLS	504
	0x0010 00016 (main.go:5)	PCDATA	$0, $-1
	0x0010 00016 (main.go:5)	MOVD.W	R30, -144(RSP)
	0x0014 00020 (main.go:5)	MOVD	R29, -8(RSP)
	0x0018 00024 (main.go:5)	SUB	$8, RSP, R29
	0x001c 00028 (main.go:5)	FUNCDATA	ZR, gclocals·69c1753bd5f81501d95132d08af04464(SB)
	0x001c 00028 (main.go:5)	FUNCDATA	$1, gclocals·d527b79a98f329c2ba624a68e7df03d6(SB)
	0x001c 00028 (main.go:5)	FUNCDATA	$2, "".main.stkobj(SB)
	0x001c 00028 (main.go:6)	MOVD	$type.[5]int(SB), R0
	0x0024 00036 (main.go:6)	MOVD	R0, 8(RSP)
	0x0028 00040 (main.go:6)	PCDATA	$1, ZR
	0x0028 00040 (main.go:6)	CALL	runtime.newobject(SB)
	0x002c 00044 (main.go:6)	MOVD	16(RSP), R0
	0x0030 00048 (main.go:6)	MOVD	R0, ""..autotmp_47-40(SP)
	0x0034 00052 (main.go:6)	MOVD	$1, R1
	0x0038 00056 (main.go:6)	MOVD	R1, (R0)
	0x003c 00060 (main.go:6)	MOVD	$2, R2
	0x0040 00064 (main.go:6)	MOVD	R2, 8(R0)
	0x0044 00068 (main.go:6)	MOVD	$3, R3
	0x0048 00072 (main.go:6)	MOVD	R3, 16(R0)
	0x004c 00076 (main.go:6)	MOVD	$4, R3
	0x0050 00080 (main.go:6)	MOVD	R3, 24(R0)
	0x0054 00084 (main.go:6)	MOVD	$5, R3
	0x0058 00088 (main.go:6)	MOVD	R3, 32(R0)
	0x005c 00092 (main.go:8)	MOVD	$type.int(SB), R4
	0x0064 00100 (main.go:8)	MOVD	R4, 8(RSP)
	0x0068 00104 (main.go:8)	STP	(ZR, ZR), 16(RSP)
	0x006c 00108 (main.go:8)	PCDATA	$1, $1
	0x006c 00108 (main.go:8)	CALL	runtime.makeslice(SB)
	0x0070 00112 (main.go:8)	MOVD	32(RSP), R0
	0x0074 00116 (main.go:9)	MOVD	""..autotmp_47-40(SP), R1
	0x0078 00120 (main.go:9)	MOVD	(R1), R2
	0x007c 00124 (main.go:9)	MOVD	R2, ""..autotmp_48-48(SP)
	0x0080 00128 (main.go:9)	MOVD	$type.int(SB), R3
	0x0088 00136 (main.go:9)	MOVD	R3, 8(RSP)
	0x008c 00140 (main.go:9)	MOVD	R0, 16(RSP)
	0x0090 00144 (main.go:9)	STP	(ZR, ZR), 24(RSP)
	0x0094 00148 (main.go:9)	MOVD	$1, R0
	0x0098 00152 (main.go:9)	MOVD	R0, 40(RSP)
	0x009c 00156 (main.go:9)	CALL	runtime.growslice(SB)
	0x00a0 00160 (main.go:9)	MOVD	48(RSP), R0
	0x00a4 00164 (main.go:9)	MOVD	64(RSP), R1
	0x00a8 00168 (main.go:9)	MOVD	56(RSP), R2
	0x00ac 00172 (main.go:9)	MOVD	""..autotmp_48-48(SP), R3
	0x00b0 00176 (main.go:9)	MOVD	R3, (R0)
	0x00b4 00180 (main.go:9)	ADD	$1, R2, R3
	0x00b8 00184 (main.go:10)	ADD	$2, R2, R2
	0x00bc 00188 (main.go:10)	MOVD	""..autotmp_47-40(SP), R4
	0x00c0 00192 (main.go:10)	MOVD	24(R4), R5
	0x00c4 00196 (main.go:10)	CMP	R2, R1
	0x00c8 00200 (main.go:10)	BHS	284
	0x00cc 00204 (main.go:9)	MOVD	R3, "".new1Sli.len-56(SP)
	0x00d0 00208 (main.go:10)	MOVD	R5, ""..autotmp_48-48(SP)
	0x00d4 00212 (main.go:10)	MOVD	$type.int(SB), R4
	0x00dc 00220 (main.go:10)	MOVD	R4, 8(RSP)
	0x00e0 00224 (main.go:10)	MOVD	R0, 16(RSP)
	0x00e4 00228 (main.go:10)	MOVD	R3, 24(RSP)
	0x00e8 00232 (main.go:10)	MOVD	R1, 32(RSP)
	0x00ec 00236 (main.go:10)	MOVD	R2, 40(RSP)
	0x00f0 00240 (main.go:10)	CALL	runtime.growslice(SB)
	0x00f4 00244 (main.go:10)	MOVD	48(RSP), R0
	0x00f8 00248 (main.go:10)	MOVD	56(RSP), R1
	0x00fc 00252 (main.go:10)	MOVD	64(RSP), R2
	0x0100 00256 (main.go:10)	ADD	$1, R1, R1
	0x0104 00260 (main.go:10)	MOVD	"".new1Sli.len-56(SP), R3
	0x0108 00264 (main.go:14)	MOVD	""..autotmp_47-40(SP), R4
	0x010c 00268 (main.go:10)	MOVD	""..autotmp_48-48(SP), R5
	0x0110 00272 (main.go:10)	MOVD	R2, R6
	0x0114 00276 (main.go:10)	MOVD	R1, R2
	0x0118 00280 (main.go:10)	MOVD	R6, R1
	0x011c 00284 (main.go:10)	MOVD	R5, (R0)(R3<<3)
	0x0120 00288 (main.go:14)	MOVD	24(R4), R3
	0x0124 00292 (main.go:14)	MOVD	R3, 8(R4)
	0x0128 00296 (main.go:16)	MOVD	R0, 8(RSP)
	0x012c 00300 (main.go:16)	MOVD	R2, 16(RSP)
	0x0130 00304 (main.go:16)	MOVD	R1, 24(RSP)
	0x0134 00308 (main.go:16)	CALL	runtime.convTslice(SB)
	0x0138 00312 (main.go:16)	MOVD	32(RSP), R0
	0x013c 00316 (main.go:16)	STP	(ZR, ZR), ""..autotmp_24-16(SP)
	0x0140 00320 (main.go:16)	MOVD	$type.[]int(SB), R1
	0x0148 00328 (main.go:16)	MOVD	R1, ""..autotmp_24-16(SP)
	0x014c 00332 (main.go:16)	MOVD	R0, ""..autotmp_24-8(SP)
	0x0150 00336 (<unknown line number>)	NOP
	0x0150 00336 (<unknown line number>)	PCDATA	$0, $-3
	0x0150 00336 ($GOROOT/src/fmt/print.go:274)	MOVD	os.Stdout(SB), R0
	0x015c 00348 ($GOROOT/src/fmt/print.go:274)	PCDATA	$0, $-1
	0x015c 00348 ($GOROOT/src/fmt/print.go:274)	MOVD	$go.itab.*os.File,io.Writer(SB), R2
	0x0164 00356 ($GOROOT/src/fmt/print.go:274)	MOVD	R2, 8(RSP)
	0x0168 00360 ($GOROOT/src/fmt/print.go:274)	MOVD	R0, 16(RSP)
	0x016c 00364 ($GOROOT/src/fmt/print.go:274)	MOVD	$""..autotmp_24-16(SP), R0
	0x0170 00368 ($GOROOT/src/fmt/print.go:274)	MOVD	R0, 24(RSP)
	0x0174 00372 ($GOROOT/src/fmt/print.go:274)	MOVD	$1, R0
	0x0178 00376 ($GOROOT/src/fmt/print.go:274)	MOVD	R0, 32(RSP)
	0x017c 00380 ($GOROOT/src/fmt/print.go:274)	MOVD	R0, 40(RSP)
	0x0180 00384 ($GOROOT/src/fmt/print.go:274)	CALL	fmt.Fprintln(SB)
	0x0184 00388 (main.go:17)	MOVD	""..autotmp_47-40(SP), R0
	0x0188 00392 (main.go:17)	MOVD	R0, 8(RSP)
	0x018c 00396 (main.go:17)	MOVD	$2, R0
	0x0190 00400 (main.go:17)	MOVD	R0, 16(RSP)
	0x0194 00404 (main.go:17)	MOVD	$5, R0
	0x0198 00408 (main.go:17)	MOVD	R0, 24(RSP)
	0x019c 00412 (main.go:17)	PCDATA	$1, ZR
	0x019c 00412 (main.go:17)	CALL	runtime.convTslice(SB)
	0x01a0 00416 (main.go:17)	MOVD	32(RSP), R0
	0x01a4 00420 (main.go:17)	STP	(ZR, ZR), ""..autotmp_27-32(SP)
	0x01a8 00424 (main.go:17)	MOVD	$type.[]int(SB), R1
	0x01b0 00432 (main.go:17)	MOVD	R1, ""..autotmp_27-32(SP)
	0x01b4 00436 (main.go:17)	MOVD	R0, ""..autotmp_27-24(SP)
	0x01b8 00440 (<unknown line number>)	NOP
	0x01b8 00440 (<unknown line number>)	PCDATA	$0, $-4
	0x01b8 00440 ($GOROOT/src/fmt/print.go:274)	MOVD	os.Stdout(SB), R0
	0x01c4 00452 ($GOROOT/src/fmt/print.go:274)	PCDATA	$0, $-1
	0x01c4 00452 ($GOROOT/src/fmt/print.go:274)	MOVD	$go.itab.*os.File,io.Writer(SB), R1
	0x01cc 00460 ($GOROOT/src/fmt/print.go:274)	MOVD	R1, 8(RSP)
	0x01d0 00464 ($GOROOT/src/fmt/print.go:274)	MOVD	R0, 16(RSP)
	0x01d4 00468 ($GOROOT/src/fmt/print.go:274)	MOVD	$""..autotmp_27-32(SP), R0
	0x01d8 00472 ($GOROOT/src/fmt/print.go:274)	MOVD	R0, 24(RSP)
	0x01dc 00476 ($GOROOT/src/fmt/print.go:274)	MOVD	$1, R0
	0x01e0 00480 ($GOROOT/src/fmt/print.go:274)	MOVD	R0, 32(RSP)
	0x01e4 00484 ($GOROOT/src/fmt/print.go:274)	MOVD	R0, 40(RSP)
	0x01e8 00488 ($GOROOT/src/fmt/print.go:274)	CALL	fmt.Fprintln(SB)
	0x01ec 00492 (main.go:18)	MOVD	-8(RSP), R29
	0x01f0 00496 (main.go:18)	MOVD.P	144(RSP), R30
	0x01f4 00500 (main.go:18)	RET	(R30)
	0x01f8 00504 (main.go:18)	NOP
	0x01f8 00504 (main.go:5)	PCDATA	$1, $-1
	0x01f8 00504 (main.go:5)	PCDATA	$0, $-2
	0x01f8 00504 (main.go:5)	MOVD	R30, R3
	0x01fc 00508 (main.go:5)	CALL	runtime.morestack_noctxt(SB)
	0x0200 00512 (main.go:5)	PCDATA	$0, $-1
	0x0200 00512 (main.go:5)	JMP	0
	0x0000 81 0b 40 f9 e2 43 00 d1 5f 00 01 eb 69 0f 00 54  ..@..C.._...i..T
	0x0010 fe 0f 17 f8 fd 83 1f f8 fd 23 00 d1 00 00 00 90  .........#......
	0x0020 00 00 00 91 e0 07 00 f9 00 00 00 94 e0 0b 40 f9  ..............@.
	0x0030 e0 33 00 f9 e1 03 40 b2 01 00 00 f9 e2 03 7f b2  .3....@.........
	0x0040 02 04 00 f9 e3 07 40 b2 03 08 00 f9 e3 03 7e b2  ......@.......~.
	0x0050 03 0c 00 f9 a3 00 80 d2 03 10 00 f9 04 00 00 90  ................
	0x0060 84 00 00 91 e4 07 00 f9 ff 7f 01 a9 00 00 00 94  ................
	0x0070 e0 13 40 f9 e1 33 40 f9 22 00 40 f9 e2 2f 00 f9  ..@..3@.".@../..
	0x0080 03 00 00 90 63 00 00 91 e3 07 00 f9 e0 0b 00 f9  ....c...........
	0x0090 ff ff 01 a9 e0 03 40 b2 e0 17 00 f9 00 00 00 94  ......@.........
	0x00a0 e0 1b 40 f9 e1 23 40 f9 e2 1f 40 f9 e3 2f 40 f9  ..@..#@...@../@.
	0x00b0 03 00 00 f9 43 04 00 91 42 08 00 91 e4 33 40 f9  ....C...B....3@.
	0x00c0 85 0c 40 f9 3f 00 02 eb a2 02 00 54 e3 2b 00 f9  ..@.?......T.+..
	0x00d0 e5 2f 00 f9 04 00 00 90 84 00 00 91 e4 07 00 f9  ./..............
	0x00e0 e0 0b 00 f9 e3 0f 00 f9 e1 13 00 f9 e2 17 00 f9  ................
	0x00f0 00 00 00 94 e0 1b 40 f9 e1 1f 40 f9 e2 23 40 f9  ......@...@..#@.
	0x0100 21 04 00 91 e3 2b 40 f9 e4 33 40 f9 e5 2f 40 f9  !....+@..3@../@.
	0x0110 e6 03 02 aa e2 03 01 aa e1 03 06 aa 05 78 23 f8  .............x#.
	0x0120 83 0c 40 f9 83 04 00 f9 e0 07 00 f9 e2 0b 00 f9  ..@.............
	0x0130 e1 0f 00 f9 00 00 00 94 e0 13 40 f9 ff ff 07 a9  ..........@.....
	0x0140 01 00 00 90 21 00 00 91 e1 3f 00 f9 e0 43 00 f9  ....!....?...C..
	0x0150 1b 00 00 90 7b 03 00 91 60 03 40 f9 02 00 00 90  ....{...`.@.....
	0x0160 42 00 00 91 e2 07 00 f9 e0 0b 00 f9 e0 e3 01 91  B...............
	0x0170 e0 0f 00 f9 e0 03 40 b2 e0 13 00 f9 e0 17 00 f9  ......@.........
	0x0180 00 00 00 94 e0 33 40 f9 e0 07 00 f9 e0 03 7f b2  .....3@.........
	0x0190 e0 0b 00 f9 a0 00 80 d2 e0 0f 00 f9 00 00 00 94  ................
	0x01a0 e0 13 40 f9 ff ff 06 a9 01 00 00 90 21 00 00 91  ..@.........!...
	0x01b0 e1 37 00 f9 e0 3b 00 f9 1b 00 00 90 7b 03 00 91  .7...;......{...
	0x01c0 60 03 40 f9 01 00 00 90 21 00 00 91 e1 07 00 f9  `.@.....!.......
	0x01d0 e0 0b 00 f9 e0 a3 01 91 e0 0f 00 f9 e0 03 40 b2  ..............@.
	0x01e0 e0 13 00 f9 e0 17 00 f9 00 00 00 94 fd 83 5f f8  .............._.
	0x01f0 fe 07 49 f8 c0 03 5f d6 e3 03 1e aa 00 00 00 94  ..I..._.........
	0x0200 80 ff ff 17 00 00 00 00 00 00 00 00 00 00 00 00  ................
	rel 0+0 t=24 type.[]int+0
	rel 0+0 t=24 type.*os.File+0
	rel 0+0 t=24 type.[]int+0
	rel 0+0 t=24 type.*os.File+0
	rel 28+8 t=3 type.[5]int+0
	rel 40+4 t=9 runtime.newobject+0
	rel 92+8 t=3 type.int+0
	rel 108+4 t=9 runtime.makeslice+0
	rel 128+8 t=3 type.int+0
	rel 156+4 t=9 runtime.growslice+0
	rel 212+8 t=3 type.int+0
	rel 240+4 t=9 runtime.growslice+0
	rel 308+4 t=9 runtime.convTslice+0
	rel 320+8 t=3 type.[]int+0
	rel 336+8 t=3 os.Stdout+0
	rel 348+8 t=3 go.itab.*os.File,io.Writer+0
	rel 384+4 t=9 fmt.Fprintln+0
	rel 412+4 t=9 runtime.convTslice+0
	rel 424+8 t=3 type.[]int+0
	rel 440+8 t=3 os.Stdout+0
	rel 452+8 t=3 go.itab.*os.File,io.Writer+0
	rel 488+4 t=9 fmt.Fprintln+0
	rel 508+4 t=9 runtime.morestack_noctxt+0
os.(*File).close STEXT dupok size=32 args=0x18 locals=0x0 funcid=0x0 leaf
	0x0000 00000 (<autogenerated>:1)	TEXT	os.(*File).close(SB), DUPOK|LEAF|NOFRAME|ABIInternal, $0-24
	0x0000 00000 (<autogenerated>:1)	FUNCDATA	ZR, gclocals·e6397a44f8e1b6e77d0f200b4fba5269(SB)
	0x0000 00000 (<autogenerated>:1)	FUNCDATA	$1, gclocals·69c1753bd5f81501d95132d08af04464(SB)
	0x0000 00000 (<autogenerated>:1)	FUNCDATA	$5, os.(*File).close.arginfo1(SB)
	0x0000 00000 (<autogenerated>:1)	MOVD	""..this(FP), R0
	0x0004 00004 (<autogenerated>:1)	MOVD	(R0), R0
	0x0008 00008 (<autogenerated>:1)	MOVD	R0, ""..this(FP)
	0x000c 00012 (<autogenerated>:1)	STP	(ZR, ZR), "".~r0+8(FP)
	0x0010 00016 (<autogenerated>:1)	JMP	os.(*file).close(SB)
	0x0000 e0 07 40 f9 00 00 40 f9 e0 07 00 f9 ff 7f 01 a9  ..@...@.........
	0x0010 00 00 00 14 00 00 00 00 00 00 00 00 00 00 00 00  ................
	rel 16+4 t=9 os.(*file).close+0
go.cuinfo.packagename. SDWARFCUINFO dupok size=0
	0x0000 6d 61 69 6e                                      main
""..inittask SNOPTRDATA size=32
	0x0000 00 00 00 00 00 00 00 00 01 00 00 00 00 00 00 00  ................
	0x0010 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	rel 24+8 t=1 fmt..inittask+0
go.info.fmt.Println$abstract SDWARFABSFCN dupok size=42
	0x0000 04 66 6d 74 2e 50 72 69 6e 74 6c 6e 00 01 01 11  .fmt.Println....
	0x0010 61 00 00 00 00 00 00 11 6e 00 01 00 00 00 00 11  a.......n.......
	0x0020 65 72 72 00 01 00 00 00 00 00                    err.......
	rel 0+0 t=23 type.[]interface {}+0
	rel 0+0 t=23 type.error+0
	rel 0+0 t=23 type.int+0
	rel 19+4 t=31 go.info.[]interface {}+0
	rel 27+4 t=31 go.info.int+0
	rel 37+4 t=31 go.info.error+0
runtime.memequal64·f SRODATA dupok size=8
	0x0000 00 00 00 00 00 00 00 00                          ........
	rel 0+8 t=1 runtime.memequal64+0
runtime.gcbits.01 SRODATA dupok size=1
	0x0000 01                                               .
type..namedata.*[]int- SRODATA dupok size=8
	0x0000 00 06 2a 5b 5d 69 6e 74                          ..*[]int
type.*[]int SRODATA dupok size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 1b 31 52 88 08 08 08 36 00 00 00 00 00 00 00 00  .1R....6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.memequal64·f+0
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*[]int-+0
	rel 48+8 t=1 type.[]int+0
type.[]int SRODATA dupok size=56
	0x0000 18 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 8e 66 f9 1b 02 08 08 17 00 00 00 00 00 00 00 00  .f..............
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*[]int-+0
	rel 44+4 t=-32763 type.*[]int+0
	rel 48+8 t=1 type.int+0
type..eqfunc40 SRODATA dupok size=16
	0x0000 00 00 00 00 00 00 00 00 28 00 00 00 00 00 00 00  ........(.......
	rel 0+8 t=1 runtime.memequal_varlen+0
type..namedata.*[5]int- SRODATA dupok size=9
	0x0000 00 07 2a 5b 35 5d 69 6e 74                       ..*[5]int
type.*[5]int SRODATA dupok size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 7f 3e c9 04 08 08 08 36 00 00 00 00 00 00 00 00  .>.....6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.memequal64·f+0
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*[5]int-+0
	rel 48+8 t=1 type.[5]int+0
runtime.gcbits. SRODATA dupok size=0
type.[5]int SRODATA dupok size=72
	0x0000 28 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  (...............
	0x0010 9f 12 55 0a 0a 08 08 11 00 00 00 00 00 00 00 00  ..U.............
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0040 05 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 type..eqfunc40+0
	rel 32+8 t=1 runtime.gcbits.+0
	rel 40+4 t=5 type..namedata.*[5]int-+0
	rel 44+4 t=-32763 type.*[5]int+0
	rel 48+8 t=1 type.int+0
	rel 56+8 t=1 type.[]int+0
runtime.nilinterequal·f SRODATA dupok size=8
	0x0000 00 00 00 00 00 00 00 00                          ........
	rel 0+8 t=1 runtime.nilinterequal+0
type..namedata.*interface {}- SRODATA dupok size=15
	0x0000 00 0d 2a 69 6e 74 65 72 66 61 63 65 20 7b 7d     ..*interface {}
type.*interface {} SRODATA dupok size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 4f 0f 96 9d 08 08 08 36 00 00 00 00 00 00 00 00  O......6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.memequal64·f+0
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*interface {}-+0
	rel 48+8 t=1 type.interface {}+0
runtime.gcbits.02 SRODATA dupok size=1
	0x0000 02                                               .
type.interface {} SRODATA dupok size=80
	0x0000 10 00 00 00 00 00 00 00 10 00 00 00 00 00 00 00  ................
	0x0010 e7 57 a0 18 02 08 08 14 00 00 00 00 00 00 00 00  .W..............
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0040 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	rel 24+8 t=1 runtime.nilinterequal·f+0
	rel 32+8 t=1 runtime.gcbits.02+0
	rel 40+4 t=5 type..namedata.*interface {}-+0
	rel 44+4 t=-32763 type.*interface {}+0
	rel 56+8 t=1 type.interface {}+80
type..namedata.*[]interface {}- SRODATA dupok size=17
	0x0000 00 0f 2a 5b 5d 69 6e 74 65 72 66 61 63 65 20 7b  ..*[]interface {
	0x0010 7d                                               }
type.*[]interface {} SRODATA dupok size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 f3 04 9a e7 08 08 08 36 00 00 00 00 00 00 00 00  .......6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.memequal64·f+0
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*[]interface {}-+0
	rel 48+8 t=1 type.[]interface {}+0
type.[]interface {} SRODATA dupok size=56
	0x0000 18 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 70 93 ea 2f 02 08 08 17 00 00 00 00 00 00 00 00  p../............
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*[]interface {}-+0
	rel 44+4 t=-32763 type.*[]interface {}+0
	rel 48+8 t=1 type.interface {}+0
go.itab.*os.File,io.Writer SRODATA dupok size=32
	0x0000 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0010 44 b5 f3 33 00 00 00 00 00 00 00 00 00 00 00 00  D..3............
	rel 0+8 t=1 type.io.Writer+0
	rel 8+8 t=1 type.*os.File+0
	rel 24+8 t=-32767 os.(*File).Write+0
type..importpath.fmt. SRODATA dupok size=5
	0x0000 00 03 66 6d 74                                   ..fmt
gclocals·69c1753bd5f81501d95132d08af04464 SRODATA dupok size=8
	0x0000 02 00 00 00 00 00 00 00                          ........
gclocals·d527b79a98f329c2ba624a68e7df03d6 SRODATA dupok size=10
	0x0000 02 00 00 00 05 00 00 00 00 01                    ..........
"".main.stkobj SRODATA static size=56
	0x0000 02 00 00 00 00 00 00 00 e0 ff ff ff 10 00 00 00  ................
	0x0010 10 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0020 f0 ff ff ff 10 00 00 00 10 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.gcbits.02+0
	rel 48+8 t=1 runtime.gcbits.02+0
gclocals·e6397a44f8e1b6e77d0f200b4fba5269 SRODATA dupok size=10
	0x0000 02 00 00 00 03 00 00 00 01 00                    ..........
os.(*File).close.arginfo1 SRODATA static dupok size=3
	0x0000 00 08 ff                                         ...
