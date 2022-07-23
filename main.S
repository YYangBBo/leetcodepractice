"".main STEXT size=288 args=0x0 locals=0x68 funcid=0x0
	0x0000 00000 (main.go:15)	TEXT	"".main(SB), ABIInternal, $112-0
	0x0000 00000 (main.go:15)	MOVD	16(g), R1
	0x0004 00004 (main.go:15)	PCDATA	$0, $-2
	0x0004 00004 (main.go:15)	MOVD	RSP, R2
	0x0008 00008 (main.go:15)	CMP	R1, R2
	0x000c 00012 (main.go:15)	BLS	276
	0x0010 00016 (main.go:15)	PCDATA	$0, $-1
	0x0010 00016 (main.go:15)	MOVD.W	R30, -112(RSP)
	0x0014 00020 (main.go:15)	MOVD	R29, -8(RSP)
	0x0018 00024 (main.go:15)	SUB	$8, RSP, R29
	0x001c 00028 (main.go:15)	FUNCDATA	ZR, gclocals·7d2d5fca80364273fb07d5820a76fef4(SB)
	0x001c 00028 (main.go:15)	FUNCDATA	$1, gclocals·8c5236ee48e029f7b1b74ce8398f045f(SB)
	0x001c 00028 (main.go:15)	FUNCDATA	$2, "".main.stkobj(SB)
	0x001c 00028 (main.go:16)	HINT	ZR
	0x0020 00032 (main.go:16)	PCDATA	$1, ZR
	0x0020 00032 (main.go:32)	CALL	runtime.makemap_small(SB)
	0x0024 00036 (main.go:32)	MOVD	8(RSP), R0
	0x0028 00040 (main.go:32)	MOVD	R0, ""..autotmp_21-24(SP)
	0x002c 00044 (main.go:32)	MOVD	$type."".MyMap(SB), R1
	0x0034 00052 (main.go:32)	MOVD	R1, 8(RSP)
	0x0038 00056 (main.go:32)	PCDATA	$1, $1
	0x0038 00056 (main.go:32)	CALL	runtime.newobject(SB)
	0x003c 00060 (main.go:32)	MOVD	16(RSP), R0
	0x0040 00064 (main.go:32)	PCDATA	ZR, $-2
	0x0040 00064 (main.go:32)	MOVWU	runtime.writeBarrier(SB), R1
	0x004c 00076 (main.go:32)	CBNZW	R1, 92
	0x0050 00080 (main.go:32)	MOVD	""..autotmp_21-24(SP), R1
	0x0054 00084 (main.go:32)	MOVD	R1, 40(R0)
	0x0058 00088 (main.go:32)	JMP	104
	0x005c 00092 (main.go:32)	ADD	$40, R0, R2
	0x0060 00096 (main.go:32)	MOVD	""..autotmp_21-24(SP), R3
	0x0064 00100 (main.go:32)	CALL	runtime.gcWriteBarrier(SB)
	0x0068 00104 (main.go:32)	PCDATA	ZR, $-1
	0x0068 00104 (main.go:32)	MOVD	R0, "".~R0-32(SP)
	0x006c 00108 (main.go:18)	MOVD	$8, R1
	0x0070 00112 (main.go:18)	MOVW	R1, 8(RSP)
	0x0074 00116 (main.go:18)	MOVD	$"".main.func1·f(SB), R1
	0x007c 00124 (main.go:18)	MOVD	R1, 16(RSP)
	0x0080 00128 (main.go:18)	MOVD	R0, 24(RSP)
	0x0084 00132 (main.go:18)	PCDATA	$1, $2
	0x0084 00132 (main.go:18)	CALL	runtime.newproc(SB)
	0x0088 00136 (main.go:23)	MOVD	"".~R0-32(SP), R0
	0x008c 00140 (main.go:23)	MOVD	R0, 8(RSP)
	0x0090 00144 (main.go:23)	MOVD	$go.string."111"(SB), R0
	0x0098 00152 (main.go:23)	MOVD	R0, 16(RSP)
	0x009c 00156 (main.go:23)	MOVD	$3, R0
	0x00a0 00160 (main.go:23)	MOVD	R0, 24(RSP)
	0x00a4 00164 (main.go:23)	PCDATA	$1, ZR
	0x00a4 00164 (main.go:23)	CALL	"".(*MyMap).Get(SB)
	0x00a8 00168 (main.go:23)	MOVD	32(RSP), R0
	0x00ac 00172 (main.go:23)	MOVD	40(RSP), R1
	0x00b0 00176 (main.go:23)	MOVD	R0, 8(RSP)
	0x00b4 00180 (main.go:23)	MOVD	R1, 16(RSP)
	0x00b8 00184 (main.go:23)	CALL	runtime.convTstring(SB)
	0x00bc 00188 (main.go:23)	MOVD	24(RSP), R0
	0x00c0 00192 (main.go:23)	STP	(ZR, ZR), ""..autotmp_15-16(SP)
	0x00c4 00196 (main.go:23)	MOVD	$type.string(SB), R1
	0x00cc 00204 (main.go:23)	MOVD	R1, ""..autotmp_15-16(SP)
	0x00d0 00208 (main.go:23)	MOVD	R0, ""..autotmp_15-8(SP)
	0x00d4 00212 (<unknown line number>)	NOP
	0x00d4 00212 (<unknown line number>)	PCDATA	$0, $-3
	0x00d4 00212 ($GOROOT/src/fmt/print.go:274)	MOVD	os.Stdout(SB), R0
	0x00e0 00224 ($GOROOT/src/fmt/print.go:274)	PCDATA	$0, $-1
	0x00e0 00224 ($GOROOT/src/fmt/print.go:274)	MOVD	$go.itab.*os.File,io.Writer(SB), R1
	0x00e8 00232 ($GOROOT/src/fmt/print.go:274)	MOVD	R1, 8(RSP)
	0x00ec 00236 ($GOROOT/src/fmt/print.go:274)	MOVD	R0, 16(RSP)
	0x00f0 00240 ($GOROOT/src/fmt/print.go:274)	MOVD	$""..autotmp_15-16(SP), R0
	0x00f4 00244 ($GOROOT/src/fmt/print.go:274)	MOVD	R0, 24(RSP)
	0x00f8 00248 ($GOROOT/src/fmt/print.go:274)	MOVD	$1, R0
	0x00fc 00252 ($GOROOT/src/fmt/print.go:274)	MOVD	R0, 32(RSP)
	0x0100 00256 ($GOROOT/src/fmt/print.go:274)	MOVD	R0, 40(RSP)
	0x0104 00260 ($GOROOT/src/fmt/print.go:274)	CALL	fmt.Fprintln(SB)
	0x0108 00264 (main.go:24)	MOVD	-8(RSP), R29
	0x010c 00268 (main.go:24)	MOVD.P	112(RSP), R30
	0x0110 00272 (main.go:24)	RET	(R30)
	0x0114 00276 (main.go:24)	NOP
	0x0114 00276 (main.go:15)	PCDATA	$1, $-1
	0x0114 00276 (main.go:15)	PCDATA	$0, $-2
	0x0114 00276 (main.go:15)	MOVD	R30, R3
	0x0118 00280 (main.go:15)	CALL	runtime.morestack_noctxt(SB)
	0x011c 00284 (main.go:15)	PCDATA	$0, $-1
	0x011c 00284 (main.go:15)	JMP	0
	0x0000 81 0b 40 f9 e2 03 00 91 5f 00 01 eb 49 08 00 54  ..@....._...I..T
	0x0010 fe 0f 19 f8 fd 83 1f f8 fd 23 00 d1 1f 20 03 d5  .........#... ..
	0x0020 00 00 00 94 e0 07 40 f9 e0 2b 00 f9 01 00 00 90  ......@..+......
	0x0030 21 00 00 91 e1 07 00 f9 00 00 00 94 e0 0b 40 f9  !.............@.
	0x0040 1b 00 00 90 7b 03 00 91 61 03 40 b9 81 00 00 35  ....{...a.@....5
	0x0050 e1 2b 40 f9 01 14 00 f9 04 00 00 14 02 a0 00 91  .+@.............
	0x0060 e3 2b 40 f9 00 00 00 94 e0 27 00 f9 e1 03 7d b2  .+@......'....}.
	0x0070 e1 0b 00 b9 01 00 00 90 21 00 00 91 e1 0b 00 f9  ........!.......
	0x0080 e0 0f 00 f9 00 00 00 94 e0 27 40 f9 e0 07 00 f9  .........'@.....
	0x0090 00 00 00 90 00 00 00 91 e0 0b 00 f9 e0 07 40 b2  ..............@.
	0x00a0 e0 0f 00 f9 00 00 00 94 e0 13 40 f9 e1 17 40 f9  ..........@...@.
	0x00b0 e0 07 00 f9 e1 0b 00 f9 00 00 00 94 e0 0f 40 f9  ..............@.
	0x00c0 ff ff 05 a9 01 00 00 90 21 00 00 91 e1 2f 00 f9  ........!..../..
	0x00d0 e0 33 00 f9 1b 00 00 90 7b 03 00 91 60 03 40 f9  .3......{...`.@.
	0x00e0 01 00 00 90 21 00 00 91 e1 07 00 f9 e0 0b 00 f9  ....!...........
	0x00f0 e0 63 01 91 e0 0f 00 f9 e0 03 40 b2 e0 13 00 f9  .c........@.....
	0x0100 e0 17 00 f9 00 00 00 94 fd 83 5f f8 fe 07 47 f8  .........._...G.
	0x0110 c0 03 5f d6 e3 03 1e aa 00 00 00 94 b9 ff ff 17  .._.............
	rel 0+0 t=24 type.string+0
	rel 0+0 t=24 type.*os.File+0
	rel 32+4 t=9 runtime.makemap_small+0
	rel 44+8 t=3 type."".MyMap+0
	rel 56+4 t=9 runtime.newobject+0
	rel 64+8 t=3 runtime.writeBarrier+0
	rel 100+4 t=9 runtime.gcWriteBarrier+0
	rel 116+8 t=3 "".main.func1·f+0
	rel 132+4 t=9 runtime.newproc+0
	rel 144+8 t=3 go.string."111"+0
	rel 164+4 t=9 "".(*MyMap).Get+0
	rel 184+4 t=9 runtime.convTstring+0
	rel 196+8 t=3 type.string+0
	rel 212+8 t=3 os.Stdout+0
	rel 224+8 t=3 go.itab.*os.File,io.Writer+0
	rel 260+4 t=9 fmt.Fprintln+0
	rel 280+4 t=9 runtime.morestack_noctxt+0
"".main.func1 STEXT size=128 args=0x8 locals=0x38 funcid=0x0
	0x0000 00000 (main.go:18)	TEXT	"".main.func1(SB), ABIInternal, $64-8
	0x0000 00000 (main.go:18)	MOVD	16(g), R1
	0x0004 00004 (main.go:18)	PCDATA	$0, $-2
	0x0004 00004 (main.go:18)	MOVD	RSP, R2
	0x0008 00008 (main.go:18)	CMP	R1, R2
	0x000c 00012 (main.go:18)	BLS	104
	0x0010 00016 (main.go:18)	PCDATA	$0, $-1
	0x0010 00016 (main.go:18)	MOVD.W	R30, -64(RSP)
	0x0014 00020 (main.go:18)	MOVD	R29, -8(RSP)
	0x0018 00024 (main.go:18)	SUB	$8, RSP, R29
	0x001c 00028 (main.go:18)	FUNCDATA	ZR, gclocals·1a65e721a2ccc325b382662e7ffee780(SB)
	0x001c 00028 (main.go:18)	FUNCDATA	$1, gclocals·69c1753bd5f81501d95132d08af04464(SB)
	0x001c 00028 (main.go:18)	FUNCDATA	$5, "".main.func1.arginfo1(SB)
	0x001c 00028 (main.go:19)	MOVD	$2000000000, R0
	0x0024 00036 (main.go:19)	MOVD	R0, 8(RSP)
	0x0028 00040 (main.go:19)	PCDATA	$1, ZR
	0x0028 00040 (main.go:19)	CALL	time.Sleep(SB)
	0x002c 00044 (main.go:20)	MOVD	"".myMap(FP), R0
	0x0030 00048 (main.go:20)	MOVD	R0, 8(RSP)
	0x0034 00052 (main.go:20)	MOVD	$go.string."111"(SB), R0
	0x003c 00060 (main.go:20)	MOVD	R0, 16(RSP)
	0x0040 00064 (main.go:20)	MOVD	$3, R0
	0x0044 00068 (main.go:20)	MOVD	R0, 24(RSP)
	0x0048 00072 (main.go:20)	MOVD	$go.string."222"(SB), R1
	0x0050 00080 (main.go:20)	MOVD	R1, 32(RSP)
	0x0054 00084 (main.go:20)	MOVD	R0, 40(RSP)
	0x0058 00088 (main.go:20)	PCDATA	$1, $1
	0x0058 00088 (main.go:20)	CALL	"".(*MyMap).Put(SB)
	0x005c 00092 (main.go:21)	MOVD	-8(RSP), R29
	0x0060 00096 (main.go:21)	MOVD.P	64(RSP), R30
	0x0064 00100 (main.go:21)	RET	(R30)
	0x0068 00104 (main.go:21)	NOP
	0x0068 00104 (main.go:18)	PCDATA	$1, $-1
	0x0068 00104 (main.go:18)	PCDATA	$0, $-2
	0x0068 00104 (main.go:18)	MOVD	R30, R3
	0x006c 00108 (main.go:18)	CALL	runtime.morestack_noctxt(SB)
	0x0070 00112 (main.go:18)	PCDATA	$0, $-1
	0x0070 00112 (main.go:18)	JMP	0
	0x0000 81 0b 40 f9 e2 03 00 91 5f 00 01 eb e9 02 00 54  ..@....._......T
	0x0010 fe 0f 1c f8 fd 83 1f f8 fd 23 00 d1 00 80 92 d2  .........#......
	0x0020 a0 e6 ae f2 e0 07 00 f9 00 00 00 94 e0 27 40 f9  .............'@.
	0x0030 e0 07 00 f9 00 00 00 90 00 00 00 91 e0 0b 00 f9  ................
	0x0040 e0 07 40 b2 e0 0f 00 f9 01 00 00 90 21 00 00 91  ..@.........!...
	0x0050 e1 13 00 f9 e0 17 00 f9 00 00 00 94 fd 83 5f f8  .............._.
	0x0060 fe 07 44 f8 c0 03 5f d6 e3 03 1e aa 00 00 00 94  ..D..._.........
	0x0070 e4 ff ff 17 00 00 00 00 00 00 00 00 00 00 00 00  ................
	rel 40+4 t=9 time.Sleep+0
	rel 52+8 t=3 go.string."111"+0
	rel 72+8 t=3 go.string."222"+0
	rel 88+4 t=9 "".(*MyMap).Put+0
	rel 108+4 t=9 runtime.morestack_noctxt+0
"".NewMap STEXT size=128 args=0x8 locals=0x28 funcid=0x0
	0x0000 00000 (main.go:31)	TEXT	"".NewMap(SB), ABIInternal, $48-8
	0x0000 00000 (main.go:31)	MOVD	16(g), R1
	0x0004 00004 (main.go:31)	PCDATA	$0, $-2
	0x0004 00004 (main.go:31)	MOVD	RSP, R2
	0x0008 00008 (main.go:31)	CMP	R1, R2
	0x000c 00012 (main.go:31)	BLS	116
	0x0010 00016 (main.go:31)	PCDATA	$0, $-1
	0x0010 00016 (main.go:31)	MOVD.W	R30, -48(RSP)
	0x0014 00020 (main.go:31)	MOVD	R29, -8(RSP)
	0x0018 00024 (main.go:31)	SUB	$8, RSP, R29
	0x001c 00028 (main.go:31)	FUNCDATA	ZR, gclocals·263043c8f03e3241528dfae4e2812ef4(SB)
	0x001c 00028 (main.go:31)	FUNCDATA	$1, gclocals·9fb7f0986f647f17cb53dda1484e0f7a(SB)
	0x001c 00028 (main.go:32)	PCDATA	$1, ZR
	0x001c 00028 (main.go:32)	CALL	runtime.makemap_small(SB)
	0x0020 00032 (main.go:32)	MOVD	8(RSP), R0
	0x0024 00036 (main.go:32)	MOVD	R0, ""..autotmp_3-8(SP)
	0x0028 00040 (main.go:32)	MOVD	$type."".MyMap(SB), R1
	0x0030 00048 (main.go:32)	MOVD	R1, 8(RSP)
	0x0034 00052 (main.go:32)	PCDATA	$1, $1
	0x0034 00052 (main.go:32)	CALL	runtime.newobject(SB)
	0x0038 00056 (main.go:32)	MOVD	16(RSP), R0
	0x003c 00060 (main.go:32)	PCDATA	ZR, $-2
	0x003c 00060 (main.go:32)	MOVWU	runtime.writeBarrier(SB), R1
	0x0048 00072 (main.go:32)	CBNZW	R1, 88
	0x004c 00076 (main.go:32)	MOVD	""..autotmp_3-8(SP), R1
	0x0050 00080 (main.go:32)	MOVD	R1, 40(R0)
	0x0054 00084 (main.go:32)	JMP	100
	0x0058 00088 (main.go:32)	ADD	$40, R0, R2
	0x005c 00092 (main.go:32)	MOVD	""..autotmp_3-8(SP), R3
	0x0060 00096 (main.go:32)	CALL	runtime.gcWriteBarrier(SB)
	0x0064 00100 (main.go:32)	PCDATA	ZR, $-1
	0x0064 00100 (main.go:32)	MOVD	R0, "".~r0(FP)
	0x0068 00104 (main.go:32)	MOVD	-8(RSP), R29
	0x006c 00108 (main.go:32)	MOVD.P	48(RSP), R30
	0x0070 00112 (main.go:32)	RET	(R30)
	0x0074 00116 (main.go:32)	NOP
	0x0074 00116 (main.go:31)	PCDATA	$1, $-1
	0x0074 00116 (main.go:31)	PCDATA	$0, $-2
	0x0074 00116 (main.go:31)	MOVD	R30, R3
	0x0078 00120 (main.go:31)	CALL	runtime.morestack_noctxt(SB)
	0x007c 00124 (main.go:31)	PCDATA	$0, $-1
	0x007c 00124 (main.go:31)	JMP	0
	0x0000 81 0b 40 f9 e2 03 00 91 5f 00 01 eb 49 03 00 54  ..@....._...I..T
	0x0010 fe 0f 1d f8 fd 83 1f f8 fd 23 00 d1 00 00 00 94  .........#......
	0x0020 e0 07 40 f9 e0 13 00 f9 01 00 00 90 21 00 00 91  ..@.........!...
	0x0030 e1 07 00 f9 00 00 00 94 e0 0b 40 f9 1b 00 00 90  ..........@.....
	0x0040 7b 03 00 91 61 03 40 b9 81 00 00 35 e1 13 40 f9  {...a.@....5..@.
	0x0050 01 14 00 f9 04 00 00 14 02 a0 00 91 e3 13 40 f9  ..............@.
	0x0060 00 00 00 94 e0 1f 00 f9 fd 83 5f f8 fe 07 43 f8  .........._...C.
	0x0070 c0 03 5f d6 e3 03 1e aa 00 00 00 94 e1 ff ff 17  .._.............
	rel 28+4 t=9 runtime.makemap_small+0
	rel 40+8 t=3 type."".MyMap+0
	rel 52+4 t=9 runtime.newobject+0
	rel 60+8 t=3 runtime.writeBarrier+0
	rel 96+4 t=9 runtime.gcWriteBarrier+0
	rel 120+4 t=9 runtime.morestack_noctxt+0
"".(*MyMap).Get STEXT size=416 args=0x28 locals=0x68 funcid=0x0
	0x0000 00000 (main.go:35)	TEXT	"".(*MyMap).Get(SB), ABIInternal, $112-40
	0x0000 00000 (main.go:35)	MOVD	16(g), R1
	0x0004 00004 (main.go:35)	PCDATA	$0, $-2
	0x0004 00004 (main.go:35)	MOVD	RSP, R2
	0x0008 00008 (main.go:35)	CMP	R1, R2
	0x000c 00012 (main.go:35)	BLS	396
	0x0010 00016 (main.go:35)	PCDATA	$0, $-1
	0x0010 00016 (main.go:35)	MOVD.W	R30, -112(RSP)
	0x0014 00020 (main.go:35)	MOVD	R29, -8(RSP)
	0x0018 00024 (main.go:35)	SUB	$8, RSP, R29
	0x001c 00028 (main.go:35)	FUNCDATA	ZR, gclocals·c5fd0ab594db53c10510c843107681d6(SB)
	0x001c 00028 (main.go:35)	FUNCDATA	$1, gclocals·a48815f51df525c2ec205704b99ff484(SB)
	0x001c 00028 (main.go:35)	FUNCDATA	$2, "".(*MyMap).Get.stkobj(SB)
	0x001c 00028 (main.go:35)	FUNCDATA	$5, "".(*MyMap).Get.arginfo1(SB)
	0x001c 00028 (main.go:36)	MOVD	"".key+8(FP), R0
	0x0020 00032 (main.go:36)	MOVD	R0, ""..autotmp_9-32(SP)
	0x0024 00036 (main.go:36)	MOVD	"".key+16(FP), R1
	0x0028 00040 (main.go:36)	MOVD	R1, ""..autotmp_9-24(SP)
	0x002c 00044 (main.go:36)	MOVD	"".m(FP), R2
	0x0030 00048 (main.go:36)	PCDATA	$0, $-2
	0x0030 00048 (main.go:36)	MOVB	(R2), R27
	0x0034 00052 (main.go:36)	PCDATA	$0, $-1
	0x0034 00052 (main.go:36)	MOVD	R2, 8(RSP)
	0x0038 00056 (main.go:36)	MOVD	$type.string(SB), R3
	0x0040 00064 (main.go:36)	MOVD	R3, 16(RSP)
	0x0044 00068 (main.go:36)	MOVD	$""..autotmp_9-32(SP), R4
	0x0048 00072 (main.go:36)	MOVD	R4, 24(RSP)
	0x004c 00076 (main.go:36)	PCDATA	$1, ZR
	0x004c 00076 (main.go:36)	CALL	sync.(*Map).Load(SB)
	0x0050 00080 (main.go:41)	MOVD	32(RSP), R0
	0x0054 00084 (main.go:41)	MOVD	40(RSP), R1
	0x0058 00088 (main.go:36)	MOVBU	48(RSP), R2
	0x005c 00092 (main.go:37)	CBZ	R2, 152
	0x0060 00096 (main.go:41)	STP	(ZR, ZR), ""..autotmp_8-16(SP)
	0x0064 00100 (main.go:41)	MOVD	$type.string(SB), R2
	0x006c 00108 (main.go:41)	CMP	R2, R0
	0x0070 00112 (main.go:41)	BNE	368
	0x0074 00116 (main.go:41)	MOVD	(R1), R0
	0x0078 00120 (main.go:41)	MOVD	8(R1), R1
	0x007c 00124 (main.go:41)	MOVD	R0, ""..autotmp_8-16(SP)
	0x0080 00128 (main.go:41)	MOVD	R1, ""..autotmp_8-8(SP)
	0x0084 00132 (main.go:41)	MOVD	R0, "".~r1+24(FP)
	0x0088 00136 (main.go:41)	MOVD	R1, "".~r1+32(FP)
	0x008c 00140 (main.go:41)	MOVD	-8(RSP), R29
	0x0090 00144 (main.go:41)	MOVD.P	112(RSP), R30
	0x0094 00148 (main.go:41)	RET	(R30)
	0x0098 00152 (main.go:38)	MOVD	$type.chan string(SB), R0
	0x00a0 00160 (main.go:38)	MOVD	R0, 8(RSP)
	0x00a4 00164 (main.go:38)	MOVD	ZR, 16(RSP)
	0x00a8 00168 (main.go:38)	CALL	runtime.makechan(SB)
	0x00ac 00172 (main.go:38)	MOVD	"".m(FP), R0
	0x00b0 00176 (main.go:38)	MOVD	40(R0), R1
	0x00b4 00180 (main.go:38)	MOVD	24(RSP), R2
	0x00b8 00184 (main.go:38)	MOVD	R2, ""..autotmp_18-40(SP)
	0x00bc 00188 (main.go:38)	MOVD	$type.map[string]chan string(SB), R3
	0x00c4 00196 (main.go:38)	MOVD	R3, 8(RSP)
	0x00c8 00200 (main.go:38)	MOVD	R1, 16(RSP)
	0x00cc 00204 (main.go:38)	MOVD	"".key+8(FP), R1
	0x00d0 00208 (main.go:38)	MOVD	R1, 24(RSP)
	0x00d4 00212 (main.go:38)	MOVD	"".key+16(FP), R4
	0x00d8 00216 (main.go:38)	MOVD	R4, 32(RSP)
	0x00dc 00220 (main.go:38)	PCDATA	$1, $1
	0x00dc 00220 (main.go:38)	CALL	runtime.mapassign_faststr(SB)
	0x00e0 00224 (main.go:38)	MOVD	40(RSP), R2
	0x00e4 00228 (main.go:38)	PCDATA	$0, $-2
	0x00e4 00228 (main.go:38)	MOVB	(R2), R27
	0x00e8 00232 (main.go:38)	PCDATA	$0, $-1
	0x00e8 00232 (main.go:38)	PCDATA	ZR, $-2
	0x00e8 00232 (main.go:38)	MOVWU	runtime.writeBarrier(SB), R0
	0x00f4 00244 (main.go:38)	CBNZW	R0, 260
	0x00f8 00248 (main.go:38)	MOVD	""..autotmp_18-40(SP), R0
	0x00fc 00252 (main.go:38)	MOVD	R0, (R2)
	0x0100 00256 (main.go:38)	JMP	268
	0x0104 00260 (main.go:38)	MOVD	""..autotmp_18-40(SP), R3
	0x0108 00264 (main.go:38)	CALL	runtime.gcWriteBarrier(SB)
	0x010c 00268 (main.go:39)	PCDATA	ZR, $-1
	0x010c 00268 (main.go:39)	STP	(ZR, ZR), ""..autotmp_8-16(SP)
	0x0110 00272 (main.go:39)	MOVD	"".m(FP), R0
	0x0114 00276 (main.go:39)	MOVD	40(R0), R0
	0x0118 00280 (main.go:39)	MOVD	$type.map[string]chan string(SB), R1
	0x0120 00288 (main.go:39)	MOVD	R1, 8(RSP)
	0x0124 00292 (main.go:39)	MOVD	R0, 16(RSP)
	0x0128 00296 (main.go:39)	MOVD	"".key+8(FP), R0
	0x012c 00300 (main.go:39)	MOVD	R0, 24(RSP)
	0x0130 00304 (main.go:39)	MOVD	"".key+16(FP), R0
	0x0134 00308 (main.go:39)	MOVD	R0, 32(RSP)
	0x0138 00312 (main.go:39)	PCDATA	$1, $2
	0x0138 00312 (main.go:39)	CALL	runtime.mapaccess1_faststr(SB)
	0x013c 00316 (main.go:39)	MOVD	40(RSP), R0
	0x0140 00320 (main.go:39)	MOVD	(R0), R0
	0x0144 00324 (main.go:39)	MOVD	R0, 8(RSP)
	0x0148 00328 (main.go:39)	MOVD	$""..autotmp_8-16(SP), R0
	0x014c 00332 (main.go:39)	MOVD	R0, 16(RSP)
	0x0150 00336 (main.go:39)	CALL	runtime.chanrecv1(SB)
	0x0154 00340 (main.go:39)	MOVD	""..autotmp_8-16(SP), R0
	0x0158 00344 (main.go:39)	MOVD	""..autotmp_8-8(SP), R1
	0x015c 00348 (main.go:39)	MOVD	R0, "".~r1+24(FP)
	0x0160 00352 (main.go:39)	MOVD	R1, "".~r1+32(FP)
	0x0164 00356 (main.go:39)	MOVD	-8(RSP), R29
	0x0168 00360 (main.go:39)	MOVD.P	112(RSP), R30
	0x016c 00364 (main.go:39)	RET	(R30)
	0x0170 00368 (main.go:41)	MOVD	R0, 8(RSP)
	0x0174 00372 (main.go:41)	MOVD	R2, 16(RSP)
	0x0178 00376 (main.go:41)	MOVD	$type.interface {}(SB), R0
	0x0180 00384 (main.go:41)	MOVD	R0, 24(RSP)
	0x0184 00388 (main.go:41)	PCDATA	$1, $3
	0x0184 00388 (main.go:41)	CALL	runtime.panicdottypeE(SB)
	0x0188 00392 (main.go:41)	HINT	ZR
	0x018c 00396 (main.go:41)	NOP
	0x018c 00396 (main.go:35)	PCDATA	$1, $-1
	0x018c 00396 (main.go:35)	PCDATA	$0, $-2
	0x018c 00396 (main.go:35)	MOVD	R30, R3
	0x0190 00400 (main.go:35)	CALL	runtime.morestack_noctxt(SB)
	0x0194 00404 (main.go:35)	PCDATA	$0, $-1
	0x0194 00404 (main.go:35)	JMP	0
	0x0000 81 0b 40 f9 e2 03 00 91 5f 00 01 eb 09 0c 00 54  ..@....._......T
	0x0010 fe 0f 19 f8 fd 83 1f f8 fd 23 00 d1 e0 43 40 f9  .........#...C@.
	0x0020 e0 27 00 f9 e1 47 40 f9 e1 2b 00 f9 e2 3f 40 f9  .'...G@..+...?@.
	0x0030 5b 00 80 39 e2 07 00 f9 03 00 00 90 63 00 00 91  [..9........c...
	0x0040 e3 0b 00 f9 e4 23 01 91 e4 0f 00 f9 00 00 00 94  .....#..........
	0x0050 e0 13 40 f9 e1 17 40 f9 e2 c3 40 39 e2 01 00 b4  ..@...@...@9....
	0x0060 ff ff 05 a9 02 00 00 90 42 00 00 91 1f 00 02 eb  ........B.......
	0x0070 01 08 00 54 20 00 40 f9 21 04 40 f9 e0 2f 00 f9  ...T .@.!.@../..
	0x0080 e1 33 00 f9 e0 4b 00 f9 e1 4f 00 f9 fd 83 5f f8  .3...K...O...._.
	0x0090 fe 07 47 f8 c0 03 5f d6 00 00 00 90 00 00 00 91  ..G..._.........
	0x00a0 e0 07 00 f9 ff 0b 00 f9 00 00 00 94 e0 3f 40 f9  .............?@.
	0x00b0 01 14 40 f9 e2 0f 40 f9 e2 23 00 f9 03 00 00 90  ..@...@..#......
	0x00c0 63 00 00 91 e3 07 00 f9 e1 0b 00 f9 e1 43 40 f9  c............C@.
	0x00d0 e1 0f 00 f9 e4 47 40 f9 e4 13 00 f9 00 00 00 94  .....G@.........
	0x00e0 e2 17 40 f9 5b 00 80 39 1b 00 00 90 7b 03 00 91  ..@.[..9....{...
	0x00f0 60 03 40 b9 80 00 00 35 e0 23 40 f9 40 00 00 f9  `.@....5.#@.@...
	0x0100 03 00 00 14 e3 23 40 f9 00 00 00 94 ff ff 05 a9  .....#@.........
	0x0110 e0 3f 40 f9 00 14 40 f9 01 00 00 90 21 00 00 91  .?@...@.....!...
	0x0120 e1 07 00 f9 e0 0b 00 f9 e0 43 40 f9 e0 0f 00 f9  .........C@.....
	0x0130 e0 47 40 f9 e0 13 00 f9 00 00 00 94 e0 17 40 f9  .G@...........@.
	0x0140 00 00 40 f9 e0 07 00 f9 e0 63 01 91 e0 0b 00 f9  ..@......c......
	0x0150 00 00 00 94 e0 2f 40 f9 e1 33 40 f9 e0 4b 00 f9  ...../@..3@..K..
	0x0160 e1 4f 00 f9 fd 83 5f f8 fe 07 47 f8 c0 03 5f d6  .O...._...G..._.
	0x0170 e0 07 00 f9 e2 0b 00 f9 00 00 00 90 00 00 00 91  ................
	0x0180 e0 0f 00 f9 00 00 00 94 1f 20 03 d5 e3 03 1e aa  ......... ......
	0x0190 00 00 00 94 9b ff ff 17 00 00 00 00 00 00 00 00  ................
	rel 0+0 t=24 type.string+0
	rel 56+8 t=3 type.string+0
	rel 76+4 t=9 sync.(*Map).Load+0
	rel 100+8 t=3 type.string+0
	rel 152+8 t=3 type.chan string+0
	rel 168+4 t=9 runtime.makechan+0
	rel 188+8 t=3 type.map[string]chan string+0
	rel 220+4 t=9 runtime.mapassign_faststr+0
	rel 232+8 t=3 runtime.writeBarrier+0
	rel 264+4 t=9 runtime.gcWriteBarrier+0
	rel 280+8 t=3 type.map[string]chan string+0
	rel 312+4 t=9 runtime.mapaccess1_faststr+0
	rel 336+4 t=9 runtime.chanrecv1+0
	rel 376+8 t=3 type.interface {}+0
	rel 388+4 t=9 runtime.panicdottypeE+0
	rel 400+4 t=9 runtime.morestack_noctxt+0
"".(*MyMap).Put STEXT size=288 args=0x28 locals=0x58 funcid=0x0
	0x0000 00000 (main.go:45)	TEXT	"".(*MyMap).Put(SB), ABIInternal, $96-40
	0x0000 00000 (main.go:45)	MOVD	16(g), R1
	0x0004 00004 (main.go:45)	PCDATA	$0, $-2
	0x0004 00004 (main.go:45)	MOVD	RSP, R2
	0x0008 00008 (main.go:45)	CMP	R1, R2
	0x000c 00012 (main.go:45)	BLS	272
	0x0010 00016 (main.go:45)	PCDATA	$0, $-1
	0x0010 00016 (main.go:45)	MOVD.W	R30, -96(RSP)
	0x0014 00020 (main.go:45)	MOVD	R29, -8(RSP)
	0x0018 00024 (main.go:45)	SUB	$8, RSP, R29
	0x001c 00028 (main.go:45)	FUNCDATA	ZR, gclocals·03f7aa78a447e91be2abbc845f0a9283(SB)
	0x001c 00028 (main.go:45)	FUNCDATA	$1, gclocals·bfbe6cff6712e3da05f5777c96897113(SB)
	0x001c 00028 (main.go:45)	FUNCDATA	$2, "".(*MyMap).Put.stkobj(SB)
	0x001c 00028 (main.go:45)	FUNCDATA	$5, "".(*MyMap).Put.arginfo1(SB)
	0x001c 00028 (main.go:46)	MOVD	"".key+8(FP), R0
	0x0020 00032 (main.go:46)	MOVD	R0, 8(RSP)
	0x0024 00036 (main.go:46)	MOVD	"".key+16(FP), R1
	0x0028 00040 (main.go:46)	MOVD	R1, 16(RSP)
	0x002c 00044 (main.go:46)	PCDATA	$1, ZR
	0x002c 00044 (main.go:46)	CALL	runtime.convTstring(SB)
	0x0030 00048 (main.go:46)	MOVD	24(RSP), R0
	0x0034 00052 (main.go:46)	MOVD	R0, ""..autotmp_14-24(SP)
	0x0038 00056 (main.go:46)	MOVD	"".value+24(FP), R1
	0x003c 00060 (main.go:46)	MOVD	R1, 8(RSP)
	0x0040 00064 (main.go:46)	MOVD	"".value+32(FP), R2
	0x0044 00068 (main.go:46)	MOVD	R2, 16(RSP)
	0x0048 00072 (main.go:46)	PCDATA	$1, $1
	0x0048 00072 (main.go:46)	CALL	runtime.convTstring(SB)
	0x004c 00076 (main.go:46)	MOVD	"".m(FP), R0
	0x0050 00080 (main.go:46)	PCDATA	$0, $-2
	0x0050 00080 (main.go:46)	MOVB	(R0), R27
	0x0054 00084 (main.go:46)	PCDATA	$0, $-1
	0x0054 00084 (main.go:46)	MOVD	24(RSP), R1
	0x0058 00088 (main.go:46)	MOVD	R0, 8(RSP)
	0x005c 00092 (main.go:46)	MOVD	$type.string(SB), R2
	0x0064 00100 (main.go:46)	MOVD	R2, 16(RSP)
	0x0068 00104 (main.go:46)	MOVD	""..autotmp_14-24(SP), R3
	0x006c 00108 (main.go:46)	MOVD	R3, 24(RSP)
	0x0070 00112 (main.go:46)	MOVD	R2, 32(RSP)
	0x0074 00116 (main.go:46)	MOVD	R1, 40(RSP)
	0x0078 00120 (main.go:46)	PCDATA	$1, ZR
	0x0078 00120 (main.go:46)	CALL	sync.(*Map).Store(SB)
	0x007c 00124 (main.go:47)	MOVD	"".m(FP), R0
	0x0080 00128 (main.go:47)	MOVD	40(R0), R1
	0x0084 00132 (main.go:47)	MOVD	$type.map[string]chan string(SB), R2
	0x008c 00140 (main.go:47)	MOVD	R2, 8(RSP)
	0x0090 00144 (main.go:47)	MOVD	R1, 16(RSP)
	0x0094 00148 (main.go:47)	MOVD	"".key+8(FP), R1
	0x0098 00152 (main.go:47)	MOVD	R1, 24(RSP)
	0x009c 00156 (main.go:47)	MOVD	"".key+16(FP), R3
	0x00a0 00160 (main.go:47)	MOVD	R3, 32(RSP)
	0x00a4 00164 (main.go:47)	CALL	runtime.mapaccess2_faststr(SB)
	0x00a8 00168 (main.go:47)	MOVD	40(RSP), R0
	0x00ac 00172 (main.go:47)	MOVD	(R0), R0
	0x00b0 00176 (main.go:47)	MOVBU	48(RSP), R1
	0x00b4 00180 (main.go:47)	CBZ	R1, 260
	0x00b8 00184 (main.go:48)	MOVD	"".value+24(FP), R1
	0x00bc 00188 (main.go:48)	MOVD	R1, ""..autotmp_7-16(SP)
	0x00c0 00192 (main.go:48)	MOVD	"".value+32(FP), R1
	0x00c4 00196 (main.go:48)	MOVD	R1, ""..autotmp_7-8(SP)
	0x00c8 00200 (main.go:48)	MOVD	R0, 8(RSP)
	0x00cc 00204 (main.go:48)	MOVD	$""..autotmp_7-16(SP), R0
	0x00d0 00208 (main.go:48)	MOVD	R0, 16(RSP)
	0x00d4 00212 (main.go:48)	PCDATA	$1, $2
	0x00d4 00212 (main.go:48)	CALL	runtime.chansend1(SB)
	0x00d8 00216 (main.go:49)	MOVD	"".m(FP), R0
	0x00dc 00220 (main.go:49)	MOVD	40(R0), R0
	0x00e0 00224 (main.go:49)	MOVD	$type.map[string]chan string(SB), R1
	0x00e8 00232 (main.go:49)	MOVD	R1, 8(RSP)
	0x00ec 00236 (main.go:49)	MOVD	R0, 16(RSP)
	0x00f0 00240 (main.go:49)	MOVD	"".key+8(FP), R0
	0x00f4 00244 (main.go:49)	MOVD	R0, 24(RSP)
	0x00f8 00248 (main.go:49)	MOVD	"".key+16(FP), R0
	0x00fc 00252 (main.go:49)	MOVD	R0, 32(RSP)
	0x0100 00256 (main.go:49)	PCDATA	$1, $3
	0x0100 00256 (main.go:49)	CALL	runtime.mapdelete_faststr(SB)
	0x0104 00260 (main.go:51)	PCDATA	$1, $-1
	0x0104 00260 (main.go:51)	MOVD	-8(RSP), R29
	0x0108 00264 (main.go:51)	MOVD.P	96(RSP), R30
	0x010c 00268 (main.go:51)	RET	(R30)
	0x0110 00272 (main.go:51)	NOP
	0x0110 00272 (main.go:45)	PCDATA	$1, $-1
	0x0110 00272 (main.go:45)	PCDATA	$0, $-2
	0x0110 00272 (main.go:45)	MOVD	R30, R3
	0x0114 00276 (main.go:45)	CALL	runtime.morestack_noctxt(SB)
	0x0118 00280 (main.go:45)	PCDATA	$0, $-1
	0x0118 00280 (main.go:45)	JMP	0
	0x0000 81 0b 40 f9 e2 03 00 91 5f 00 01 eb 29 08 00 54  ..@....._...)..T
	0x0010 fe 0f 1a f8 fd 83 1f f8 fd 23 00 d1 e0 3b 40 f9  .........#...;@.
	0x0020 e0 07 00 f9 e1 3f 40 f9 e1 0b 00 f9 00 00 00 94  .....?@.........
	0x0030 e0 0f 40 f9 e0 23 00 f9 e1 43 40 f9 e1 07 00 f9  ..@..#...C@.....
	0x0040 e2 47 40 f9 e2 0b 00 f9 00 00 00 94 e0 37 40 f9  .G@..........7@.
	0x0050 1b 00 80 39 e1 0f 40 f9 e0 07 00 f9 02 00 00 90  ...9..@.........
	0x0060 42 00 00 91 e2 0b 00 f9 e3 23 40 f9 e3 0f 00 f9  B........#@.....
	0x0070 e2 13 00 f9 e1 17 00 f9 00 00 00 94 e0 37 40 f9  .............7@.
	0x0080 01 14 40 f9 02 00 00 90 42 00 00 91 e2 07 00 f9  ..@.....B.......
	0x0090 e1 0b 00 f9 e1 3b 40 f9 e1 0f 00 f9 e3 3f 40 f9  .....;@......?@.
	0x00a0 e3 13 00 f9 00 00 00 94 e0 17 40 f9 00 00 40 f9  ..........@...@.
	0x00b0 e1 c3 40 39 81 02 00 b4 e1 43 40 f9 e1 27 00 f9  ..@9.....C@..'..
	0x00c0 e1 47 40 f9 e1 2b 00 f9 e0 07 00 f9 e0 23 01 91  .G@..+.......#..
	0x00d0 e0 0b 00 f9 00 00 00 94 e0 37 40 f9 00 14 40 f9  .........7@...@.
	0x00e0 01 00 00 90 21 00 00 91 e1 07 00 f9 e0 0b 00 f9  ....!...........
	0x00f0 e0 3b 40 f9 e0 0f 00 f9 e0 3f 40 f9 e0 13 00 f9  .;@......?@.....
	0x0100 00 00 00 94 fd 83 5f f8 fe 07 46 f8 c0 03 5f d6  ......_...F..._.
	0x0110 e3 03 1e aa 00 00 00 94 ba ff ff 17 00 00 00 00  ................
	rel 0+0 t=24 type.string+0
	rel 0+0 t=24 type.string+0
	rel 44+4 t=9 runtime.convTstring+0
	rel 72+4 t=9 runtime.convTstring+0
	rel 92+8 t=3 type.string+0
	rel 120+4 t=9 sync.(*Map).Store+0
	rel 132+8 t=3 type.map[string]chan string+0
	rel 164+4 t=9 runtime.mapaccess2_faststr+0
	rel 212+4 t=9 runtime.chansend1+0
	rel 224+8 t=3 type.map[string]chan string+0
	rel 256+4 t=9 runtime.mapdelete_faststr+0
	rel 276+4 t=9 runtime.morestack_noctxt+0
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
""..inittask SNOPTRDATA size=48
	0x0000 00 00 00 00 00 00 00 00 03 00 00 00 00 00 00 00  ................
	0x0010 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	rel 24+8 t=1 fmt..inittask+0
	rel 32+8 t=1 sync..inittask+0
	rel 40+8 t=1 time..inittask+0
go.info."".NewMap$abstract SDWARFABSFCN dupok size=12
	0x0000 04 2e 4e 65 77 4d 61 70 00 01 01 00              ..NewMap....
	rel 0+0 t=23 type.*"".MyMap+0
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
go.string."111" SRODATA dupok size=3
	0x0000 31 31 31                                         111
go.string."222" SRODATA dupok size=3
	0x0000 32 32 32                                         222
runtime.memequal64·f SRODATA dupok size=8
	0x0000 00 00 00 00 00 00 00 00                          ........
	rel 0+8 t=1 runtime.memequal64+0
runtime.gcbits.01 SRODATA dupok size=1
	0x0000 01                                               .
type..namedata.*chan string- SRODATA dupok size=14
	0x0000 00 0c 2a 63 68 61 6e 20 73 74 72 69 6e 67        ..*chan string
type.*chan string SRODATA dupok size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 f4 25 61 85 08 08 08 36 00 00 00 00 00 00 00 00  .%a....6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.memequal64·f+0
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*chan string-+0
	rel 48+8 t=1 type.chan string+0
type.chan string SRODATA dupok size=64
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 8d 9e 8b c9 0a 08 08 32 00 00 00 00 00 00 00 00  .......2........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00 03 00 00 00 00 00 00 00  ................
	rel 24+8 t=1 runtime.memequal64·f+0
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*chan string-+0
	rel 44+4 t=-32763 type.*chan string+0
	rel 48+8 t=1 type.string+0
type..namedata.*[]uint8- SRODATA dupok size=10
	0x0000 00 08 2a 5b 5d 75 69 6e 74 38                    ..*[]uint8
type.*[]uint8 SRODATA dupok size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 a5 8e d0 69 08 08 08 36 00 00 00 00 00 00 00 00  ...i...6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.memequal64·f+0
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*[]uint8-+0
	rel 48+8 t=1 type.[]uint8+0
type.[]uint8 SRODATA dupok size=56
	0x0000 18 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 df 7e 2e 38 02 08 08 17 00 00 00 00 00 00 00 00  .~.8............
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*[]uint8-+0
	rel 44+4 t=-32763 type.*[]uint8+0
	rel 48+8 t=1 type.uint8+0
type..namedata.*[8]uint8- SRODATA dupok size=11
	0x0000 00 09 2a 5b 38 5d 75 69 6e 74 38                 ..*[8]uint8
type.*[8]uint8 SRODATA dupok size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 a9 89 a5 7a 08 08 08 36 00 00 00 00 00 00 00 00  ...z...6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.memequal64·f+0
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*[8]uint8-+0
	rel 48+8 t=1 type.[8]uint8+0
runtime.gcbits. SRODATA dupok size=0
type.[8]uint8 SRODATA dupok size=72
	0x0000 08 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0010 3e f9 30 b4 0a 01 01 11 00 00 00 00 00 00 00 00  >.0.............
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0040 08 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.memequal64·f+0
	rel 32+8 t=1 runtime.gcbits.+0
	rel 40+4 t=5 type..namedata.*[8]uint8-+0
	rel 44+4 t=-32763 type.*[8]uint8+0
	rel 48+8 t=1 type.uint8+0
	rel 56+8 t=1 type.[]uint8+0
type..namedata.*[]string- SRODATA dupok size=11
	0x0000 00 09 2a 5b 5d 73 74 72 69 6e 67                 ..*[]string
type.*[]string SRODATA dupok size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 92 22 76 84 08 08 08 36 00 00 00 00 00 00 00 00  ."v....6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.memequal64·f+0
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*[]string-+0
	rel 48+8 t=1 type.[]string+0
type.[]string SRODATA dupok size=56
	0x0000 18 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 d3 a8 f3 0a 02 08 08 17 00 00 00 00 00 00 00 00  ................
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*[]string-+0
	rel 44+4 t=-32763 type.*[]string+0
	rel 48+8 t=1 type.string+0
type..namedata.*[8]string- SRODATA dupok size=12
	0x0000 00 0a 2a 5b 38 5d 73 74 72 69 6e 67              ..*[8]string
type.*[8]string SRODATA dupok size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 ad 94 14 6f 08 08 08 36 00 00 00 00 00 00 00 00  ...o...6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.memequal64·f+0
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*[8]string-+0
	rel 48+8 t=1 type.noalg.[8]string+0
runtime.gcbits.5555 SRODATA dupok size=2
	0x0000 55 55                                            UU
type.noalg.[8]string SRODATA dupok size=72
	0x0000 80 00 00 00 00 00 00 00 78 00 00 00 00 00 00 00  ........x.......
	0x0010 55 53 8c 3e 02 08 08 11 00 00 00 00 00 00 00 00  US.>............
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0040 08 00 00 00 00 00 00 00                          ........
	rel 32+8 t=1 runtime.gcbits.5555+0
	rel 40+4 t=5 type..namedata.*[8]string-+0
	rel 44+4 t=-32763 type.*[8]string+0
	rel 48+8 t=1 type.string+0
	rel 56+8 t=1 type.[]string+0
type..namedata.*[]chan string- SRODATA dupok size=16
	0x0000 00 0e 2a 5b 5d 63 68 61 6e 20 73 74 72 69 6e 67  ..*[]chan string
type.*[]chan string SRODATA dupok size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 15 1d 5d 78 08 08 08 36 00 00 00 00 00 00 00 00  ..]x...6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.memequal64·f+0
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*[]chan string-+0
	rel 48+8 t=1 type.[]chan string+0
type.[]chan string SRODATA dupok size=56
	0x0000 18 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 e0 c2 01 57 02 08 08 17 00 00 00 00 00 00 00 00  ...W............
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*[]chan string-+0
	rel 44+4 t=-32763 type.*[]chan string+0
	rel 48+8 t=1 type.chan string+0
type..namedata.*[8]chan string- SRODATA dupok size=17
	0x0000 00 0f 2a 5b 38 5d 63 68 61 6e 20 73 74 72 69 6e  ..*[8]chan strin
	0x0010 67                                               g
type.*[8]chan string SRODATA dupok size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 c9 dd 20 86 08 08 08 36 00 00 00 00 00 00 00 00  .. ....6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.memequal64·f+0
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*[8]chan string-+0
	rel 48+8 t=1 type.noalg.[8]chan string+0
runtime.gcbits.ff SRODATA dupok size=1
	0x0000 ff                                               .
type.noalg.[8]chan string SRODATA dupok size=72
	0x0000 40 00 00 00 00 00 00 00 40 00 00 00 00 00 00 00  @.......@.......
	0x0010 f7 a0 60 72 02 08 08 11 00 00 00 00 00 00 00 00  ..`r............
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0040 08 00 00 00 00 00 00 00                          ........
	rel 32+8 t=1 runtime.gcbits.ff+0
	rel 40+4 t=5 type..namedata.*[8]chan string-+0
	rel 44+4 t=-32763 type.*[8]chan string+0
	rel 48+8 t=1 type.chan string+0
	rel 56+8 t=1 type.[]chan string+0
type..namedata.*map.bucket[string]chan string- SRODATA dupok size=32
	0x0000 00 1e 2a 6d 61 70 2e 62 75 63 6b 65 74 5b 73 74  ..*map.bucket[st
	0x0010 72 69 6e 67 5d 63 68 61 6e 20 73 74 72 69 6e 67  ring]chan string
type.*map.bucket[string]chan string SRODATA dupok size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 c0 6d 45 98 08 08 08 36 00 00 00 00 00 00 00 00  .mE....6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.memequal64·f+0
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*map.bucket[string]chan string-+0
	rel 48+8 t=1 type.noalg.map.bucket[string]chan string+0
runtime.gcbits.aaaafe03 SRODATA dupok size=4
	0x0000 aa aa fe 03                                      ....
type..importpath.. SRODATA dupok size=2
	0x0000 00 00                                            ..
type..namedata.topbits- SRODATA dupok size=9
	0x0000 00 07 74 6f 70 62 69 74 73                       ..topbits
type..namedata.keys- SRODATA dupok size=6
	0x0000 00 04 6b 65 79 73                                ..keys
type..namedata.elems- SRODATA dupok size=7
	0x0000 00 05 65 6c 65 6d 73                             ..elems
type..namedata.overflow- SRODATA dupok size=10
	0x0000 00 08 6f 76 65 72 66 6c 6f 77                    ..overflow
type.noalg.map.bucket[string]chan string SRODATA dupok size=176
	0x0000 d0 00 00 00 00 00 00 00 d0 00 00 00 00 00 00 00  ................
	0x0010 71 d5 a1 dd 02 08 08 19 00 00 00 00 00 00 00 00  q...............
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0040 04 00 00 00 00 00 00 00 04 00 00 00 00 00 00 00  ................
	0x0050 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0060 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0070 00 00 00 00 00 00 00 00 10 00 00 00 00 00 00 00  ................
	0x0080 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0090 10 01 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x00a0 00 00 00 00 00 00 00 00 90 01 00 00 00 00 00 00  ................
	rel 32+8 t=1 runtime.gcbits.aaaafe03+0
	rel 40+4 t=5 type..namedata.*map.bucket[string]chan string-+0
	rel 44+4 t=-32763 type.*map.bucket[string]chan string+0
	rel 48+8 t=1 type..importpath..+0
	rel 56+8 t=1 type.noalg.map.bucket[string]chan string+80
	rel 80+8 t=1 type..namedata.topbits-+0
	rel 88+8 t=1 type.[8]uint8+0
	rel 104+8 t=1 type..namedata.keys-+0
	rel 112+8 t=1 type.noalg.[8]string+0
	rel 128+8 t=1 type..namedata.elems-+0
	rel 136+8 t=1 type.noalg.[8]chan string+0
	rel 152+8 t=1 type..namedata.overflow-+0
	rel 160+8 t=1 type.unsafe.Pointer+0
runtime.strhash·f SRODATA dupok size=8
	0x0000 00 00 00 00 00 00 00 00                          ........
	rel 0+8 t=1 runtime.strhash+0
type..namedata.*map[string]chan string- SRODATA dupok size=25
	0x0000 00 17 2a 6d 61 70 5b 73 74 72 69 6e 67 5d 63 68  ..*map[string]ch
	0x0010 61 6e 20 73 74 72 69 6e 67                       an string
type.*map[string]chan string SRODATA dupok size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 34 46 a5 10 08 08 08 36 00 00 00 00 00 00 00 00  4F.....6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.memequal64·f+0
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*map[string]chan string-+0
	rel 48+8 t=1 type.map[string]chan string+0
type.map[string]chan string SRODATA dupok size=88
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 0a 28 7b ae 02 08 08 35 00 00 00 00 00 00 00 00  .({....5........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0040 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0050 10 08 d0 00 0c 00 00 00                          ........
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*map[string]chan string-+0
	rel 44+4 t=-32763 type.*map[string]chan string+0
	rel 48+8 t=1 type.string+0
	rel 56+8 t=1 type.chan string+0
	rel 64+8 t=1 type.noalg.map.bucket[string]chan string+0
	rel 72+8 t=1 runtime.strhash·f+0
type..namedata.*main.MyMap. SRODATA dupok size=13
	0x0000 01 0b 2a 6d 61 69 6e 2e 4d 79 4d 61 70           ..*main.MyMap
type..namedata.*func(*main.MyMap, string) string- SRODATA dupok size=35
	0x0000 00 21 2a 66 75 6e 63 28 2a 6d 61 69 6e 2e 4d 79  .!*func(*main.My
	0x0010 4d 61 70 2c 20 73 74 72 69 6e 67 29 20 73 74 72  Map, string) str
	0x0020 69 6e 67                                         ing
type.*func(*"".MyMap, string) string SRODATA dupok size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 da ad 05 c7 08 08 08 36 00 00 00 00 00 00 00 00  .......6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.memequal64·f+0
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*func(*main.MyMap, string) string-+0
	rel 48+8 t=1 type.func(*"".MyMap, string) string+0
type.func(*"".MyMap, string) string SRODATA dupok size=80
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 2e 73 38 6f 02 08 08 33 00 00 00 00 00 00 00 00  .s8o...3........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 02 00 01 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0040 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*func(*main.MyMap, string) string-+0
	rel 44+4 t=-32763 type.*func(*"".MyMap, string) string+0
	rel 56+8 t=1 type.*"".MyMap+0
	rel 64+8 t=1 type.string+0
	rel 72+8 t=1 type.string+0
type..namedata.*func(*main.MyMap, string, string)- SRODATA dupok size=36
	0x0000 00 22 2a 66 75 6e 63 28 2a 6d 61 69 6e 2e 4d 79  ."*func(*main.My
	0x0010 4d 61 70 2c 20 73 74 72 69 6e 67 2c 20 73 74 72  Map, string, str
	0x0020 69 6e 67 29                                      ing)
type.*func(*"".MyMap, string, string) SRODATA dupok size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 13 9b 16 f6 08 08 08 36 00 00 00 00 00 00 00 00  .......6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.memequal64·f+0
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*func(*main.MyMap, string, string)-+0
	rel 48+8 t=1 type.func(*"".MyMap, string, string)+0
type.func(*"".MyMap, string, string) SRODATA dupok size=80
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 7f e8 57 65 02 08 08 33 00 00 00 00 00 00 00 00  ..We...3........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 03 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0040 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*func(*main.MyMap, string, string)-+0
	rel 44+4 t=-32763 type.*func(*"".MyMap, string, string)+0
	rel 56+8 t=1 type.*"".MyMap+0
	rel 64+8 t=1 type.string+0
	rel 72+8 t=1 type.string+0
type..namedata.Get. SRODATA dupok size=5
	0x0000 01 03 47 65 74                                   ..Get
type..namedata.*func(string) string- SRODATA dupok size=22
	0x0000 00 14 2a 66 75 6e 63 28 73 74 72 69 6e 67 29 20  ..*func(string) 
	0x0010 73 74 72 69 6e 67                                string
type.*func(string) string SRODATA dupok size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 9e c0 3b da 08 08 08 36 00 00 00 00 00 00 00 00  ..;....6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.memequal64·f+0
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*func(string) string-+0
	rel 48+8 t=1 type.func(string) string+0
type.func(string) string SRODATA dupok size=72
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 4d fc a8 e7 02 08 08 33 00 00 00 00 00 00 00 00  M......3........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 01 00 01 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0040 00 00 00 00 00 00 00 00                          ........
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*func(string) string-+0
	rel 44+4 t=-32763 type.*func(string) string+0
	rel 56+8 t=1 type.string+0
	rel 64+8 t=1 type.string+0
type..namedata.Put. SRODATA dupok size=5
	0x0000 01 03 50 75 74                                   ..Put
type..namedata.*func(string, string)- SRODATA dupok size=23
	0x0000 00 15 2a 66 75 6e 63 28 73 74 72 69 6e 67 2c 20  ..*func(string, 
	0x0010 73 74 72 69 6e 67 29                             string)
type.*func(string, string) SRODATA dupok size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 5b 0c 4a d1 08 08 08 36 00 00 00 00 00 00 00 00  [.J....6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.memequal64·f+0
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*func(string, string)-+0
	rel 48+8 t=1 type.func(string, string)+0
type.func(string, string) SRODATA dupok size=72
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 f5 21 99 e9 02 08 08 33 00 00 00 00 00 00 00 00  .!.....3........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 02 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0040 00 00 00 00 00 00 00 00                          ........
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*func(string, string)-+0
	rel 44+4 t=-32763 type.*func(string, string)+0
	rel 56+8 t=1 type.string+0
	rel 64+8 t=1 type.string+0
type.*"".MyMap SRODATA size=104
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 1c 1d 83 0d 09 08 08 36 00 00 00 00 00 00 00 00  .......6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00 00 00 00 00 02 00 02 00  ................
	0x0040 10 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0050 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0060 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.memequal64·f+0
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*main.MyMap.+0
	rel 48+8 t=1 type."".MyMap+0
	rel 56+4 t=5 type..importpath."".+0
	rel 72+4 t=5 type..namedata.Get.+0
	rel 76+4 t=26 type.func(string) string+0
	rel 80+4 t=26 "".(*MyMap).Get+0
	rel 84+4 t=26 "".(*MyMap).Get+0
	rel 88+4 t=5 type..namedata.Put.+0
	rel 92+4 t=26 type.func(string, string)+0
	rel 96+4 t=26 "".(*MyMap).Put+0
	rel 100+4 t=26 "".(*MyMap).Put+0
runtime.gcbits.2c SRODATA dupok size=1
	0x0000 2c                                               ,
type..namedata.buf- SRODATA dupok size=5
	0x0000 00 03 62 75 66                                   ..buf
type..namedata.dataChanMap- SRODATA dupok size=13
	0x0000 00 0b 64 61 74 61 43 68 61 6e 4d 61 70           ..dataChanMap
type."".MyMap SRODATA size=144
	0x0000 30 00 00 00 00 00 00 00 30 00 00 00 00 00 00 00  0.......0.......
	0x0010 e7 48 14 ed 07 08 08 19 00 00 00 00 00 00 00 00  .H..............
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0040 02 00 00 00 00 00 00 00 02 00 00 00 00 00 00 00  ................
	0x0050 00 00 00 00 00 00 00 00 40 00 00 00 00 00 00 00  ........@.......
	0x0060 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0070 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0080 00 00 00 00 00 00 00 00 50 00 00 00 00 00 00 00  ........P.......
	rel 32+8 t=1 runtime.gcbits.2c+0
	rel 40+4 t=5 type..namedata.*main.MyMap.+0
	rel 44+4 t=5 type.*"".MyMap+0
	rel 48+8 t=1 type..importpath."".+0
	rel 56+8 t=1 type."".MyMap+96
	rel 80+4 t=5 type..importpath."".+0
	rel 96+8 t=1 type..namedata.buf-+0
	rel 104+8 t=1 type.sync.Map+0
	rel 120+8 t=1 type..namedata.dataChanMap-+0
	rel 128+8 t=1 type.map[string]chan string+0
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
type..importpath.sync. SRODATA dupok size=6
	0x0000 00 04 73 79 6e 63                                ..sync
type..importpath.time. SRODATA dupok size=6
	0x0000 00 04 74 69 6d 65                                ..time
"".main.func1·f SRODATA dupok size=8
	0x0000 00 00 00 00 00 00 00 00                          ........
	rel 0+8 t=1 "".main.func1+0
gclocals·7d2d5fca80364273fb07d5820a76fef4 SRODATA dupok size=8
	0x0000 03 00 00 00 00 00 00 00                          ........
gclocals·8c5236ee48e029f7b1b74ce8398f045f SRODATA dupok size=11
	0x0000 03 00 00 00 04 00 00 00 00 02 01                 ...........
"".main.stkobj SRODATA static size=32
	0x0000 01 00 00 00 00 00 00 00 f0 ff ff ff 10 00 00 00  ................
	0x0010 10 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	rel 24+8 t=1 runtime.gcbits.02+0
gclocals·1a65e721a2ccc325b382662e7ffee780 SRODATA dupok size=10
	0x0000 02 00 00 00 01 00 00 00 01 00                    ..........
gclocals·69c1753bd5f81501d95132d08af04464 SRODATA dupok size=8
	0x0000 02 00 00 00 00 00 00 00                          ........
"".main.func1.arginfo1 SRODATA static dupok size=3
	0x0000 00 08 ff                                         ...
gclocals·263043c8f03e3241528dfae4e2812ef4 SRODATA dupok size=10
	0x0000 02 00 00 00 01 00 00 00 00 00                    ..........
gclocals·9fb7f0986f647f17cb53dda1484e0f7a SRODATA dupok size=10
	0x0000 02 00 00 00 01 00 00 00 00 01                    ..........
gclocals·c5fd0ab594db53c10510c843107681d6 SRODATA dupok size=12
	0x0000 04 00 00 00 04 00 00 00 03 03 00 00              ............
gclocals·a48815f51df525c2ec205704b99ff484 SRODATA dupok size=12
	0x0000 04 00 00 00 05 00 00 00 00 01 08 00              ............
"".(*MyMap).Get.stkobj SRODATA static size=56
	0x0000 02 00 00 00 00 00 00 00 e0 ff ff ff 10 00 00 00  ................
	0x0010 08 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0020 f0 ff ff ff 10 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.gcbits.01+0
	rel 48+8 t=1 runtime.gcbits.01+0
"".(*MyMap).Get.arginfo1 SRODATA static dupok size=9
	0x0000 00 08 fe 08 08 10 08 fd ff                       .........
gclocals·03f7aa78a447e91be2abbc845f0a9283 SRODATA dupok size=12
	0x0000 04 00 00 00 04 00 00 00 0b 0b 03 00              ............
gclocals·bfbe6cff6712e3da05f5777c96897113 SRODATA dupok size=12
	0x0000 04 00 00 00 03 00 00 00 00 01 00 00              ............
"".(*MyMap).Put.stkobj SRODATA static size=32
	0x0000 01 00 00 00 00 00 00 00 f0 ff ff ff 10 00 00 00  ................
	0x0010 08 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	rel 24+8 t=1 runtime.gcbits.01+0
"".(*MyMap).Put.arginfo1 SRODATA static dupok size=15
	0x0000 00 08 fe 08 08 10 08 fd fe 18 08 20 08 fd ff     ........... ...
gclocals·e6397a44f8e1b6e77d0f200b4fba5269 SRODATA dupok size=10
	0x0000 02 00 00 00 03 00 00 00 01 00                    ..........
os.(*File).close.arginfo1 SRODATA static dupok size=3
	0x0000 00 08 ff                                         ...
