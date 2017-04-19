//+build !noasm !appengine
// AUTO-GENERATED BY C2GOASM -- DO NOT EDIT

TEXT ·_SimdSse2GrayToBgra(SB), 7, $0-48

	MOVQ arg1+0(FP), DI
	MOVQ arg2+8(FP), SI
	MOVQ arg3+16(FP), DX
	MOVQ arg4+24(FP), CX
	MOVQ arg5+32(FP), R8
	MOVQ arg6+40(FP), R9

	QUAD $0xc3894c3824548a44
	LONG $0xf0e38348; WORD $0x394c; BYTE $0xc3
	JNE  LBB0_16
	QUAD $0x48f0e38348fb8948
	WORD $0xfb39
	JNE  LBB0_16
	QUAD $0x8948c80948c8894c; QUAD $0xc33948f0e38348c3
	JNE  LBB0_16
	WORD $0x8548; BYTE $0xd2
	JE   LBB0_29
	QUAD $0xc06e0f66c2b60f41; QUAD $0xc0700f66c0600f66
	QUAD $0x0ff300c0700ff2c4; QUAD $0x8348f0894800c070
	WORD $0xf0e0
	JE   LBB0_13
	LONG $0x48d23145; WORD $0xf039
	JNE  LBB0_6

LBB0_10:
	WORD $0xc031

LBB0_11:
	QUAD $0x6f0f66070c6f0f66; QUAD $0x6f0f66d2600f66d1
	QUAD $0x6f0f66db680f66d9; QUAD $0x680f66e0600f66e1
	QUAD $0x610f66ea6f0f66c8; QUAD $0x66802c7f0f4166ec
	QUAD $0x547f0f4166d4690f; QUAD $0x0f66d36f0f661080
	QUAD $0x80547f0f4166d161; QUAD $0x0f4166d9690f6620
	QUAD $0x10c0834830805c7f
	WORD $0x3948; BYTE $0xf0
	JB   LBB0_11
	QUAD $0xff49c8014dcf0148
	LONG $0xd23949c2
	JNE  LBB0_10
	JMP  LBB0_29

LBB0_16:
	WORD $0x8548; BYTE $0xd2
	JE   LBB0_29
	QUAD $0xc06e0f66c2b60f41; QUAD $0xc0700f66c0600f66
	QUAD $0x0ff300c0700ff2c4; QUAD $0x8348f0894800c070
	WORD $0xf0e0
	JE   LBB0_26
	LONG $0x48d23145; WORD $0xf039
	JNE  LBB0_19

LBB0_23:
	WORD $0xc031

LBB0_24:
	QUAD $0x6f0f66070c6f0ff3; QUAD $0x6f0f66d2600f66d1
	QUAD $0x6f0f66db680f66d9; QUAD $0x680f66e0600f66e1
	QUAD $0x610f66ea6f0f66c8; QUAD $0x66802c7f0f41f3ec
	QUAD $0x547f0f41f3d4690f; QUAD $0x0f66d36f0f661080
	QUAD $0x80547f0f41f3d161; QUAD $0x0f41f3d9690f6620
	QUAD $0x10c0834830805c7f
	WORD $0x3948; BYTE $0xf0
	JB   LBB0_24
	QUAD $0xff49c8014dcf0148
	LONG $0xd23949c2
	JNE  LBB0_23
	JMP  LBB0_29

LBB0_26:
	WORD $0x3948; BYTE $0xf0
	JE   LBB0_29
	QUAD $0x748d49f03e448d48
	WORD $0xf0b0

LBB0_28:
	QUAD $0xd16f0f66086f0ff3; QUAD $0xd96f0f66d2600f66
	QUAD $0xe16f0f66db680f66; QUAD $0xc8680f66e0600f66
	QUAD $0xec610f66ea6f0f66; QUAD $0x690f66d06e7f0ff3
	QUAD $0x0f66e0567f0ff3d4; QUAD $0x0ff3d1610f66d36f
	QUAD $0xf3d9690f66f0567f; QUAD $0x014cc801481e7f0f
	LONG $0xcaff48ce
	JNE  LBB0_28
	JMP  LBB0_29

LBB0_19:
	QUAD $0xffffffc0b51c8d4c

LBB0_20:
	WORD $0xdb31

LBB0_21:
	QUAD $0x6f0f661f0c6f0ff3; QUAD $0x6f0f66d2600f66d1
	QUAD $0x6f0f66db680f66d9; QUAD $0x680f66e0600f66e1
	QUAD $0x610f66ea6f0f66c8; QUAD $0x66982c7f0f41f3ec
	QUAD $0x547f0f41f3d4690f; QUAD $0x0f66d36f0f661098
	QUAD $0x98547f0f41f3d161; QUAD $0x0f41f3d9690f6620
	QUAD $0x10c3834830985c7f
	WORD $0x3948; BYTE $0xc3
	JB   LBB0_21
	QUAD $0x0f66f0374c6f0ff3; QUAD $0x0f66d2600f66d16f
	QUAD $0x0f66db680f66d96f; QUAD $0x0f66e0600f66e16f
	QUAD $0x0f66ea6f0f66c868; QUAD $0x182c7f0f43f3ec61
	QUAD $0x7f0f43f3d4690f66; QUAD $0x66d36f0f66101854
	QUAD $0x547f0f43f3d1610f; QUAD $0x43f3d9690f662018
	QUAD $0xcf014830185c7f0f; QUAD $0x3949c2ff49c8014d
	BYTE $0xd2
	JNE  LBB0_20
	JMP  LBB0_29

LBB0_13:
	WORD $0x3948; BYTE $0xf0
	JE   LBB0_29
	QUAD $0x748d49f03e448d48
	WORD $0xf0b0

LBB0_15:
	QUAD $0xd16f0f66086f0ff3; QUAD $0xd96f0f66d2600f66
	QUAD $0xe16f0f66db680f66; QUAD $0xc8680f66e0600f66
	QUAD $0xec610f66ea6f0f66; QUAD $0x690f66d06e7f0ff3
	QUAD $0x0f66e0567f0ff3d4; QUAD $0x0ff3d1610f66d36f
	QUAD $0xf3d9690f66f0567f; QUAD $0x014cc801481e7f0f
	LONG $0xcaff48ce
	JNE  LBB0_15
	JMP  LBB0_29

LBB0_6:
	QUAD $0xffffffc0b51c8d4c

LBB0_7:
	WORD $0xdb31

LBB0_8:
	QUAD $0x6f0f661f0c6f0f66; QUAD $0x6f0f66d2600f66d1
	QUAD $0x6f0f66db680f66d9; QUAD $0x680f66e0600f66e1
	QUAD $0x610f66ea6f0f66c8; QUAD $0x66982c7f0f4166ec
	QUAD $0x547f0f4166d4690f; QUAD $0x0f66d36f0f661098
	QUAD $0x98547f0f4166d161; QUAD $0x0f4166d9690f6620
	QUAD $0x10c3834830985c7f
	WORD $0x3948; BYTE $0xc3
	JB   LBB0_8
	QUAD $0x0f66f0374c6f0ff3; QUAD $0x0f66d2600f66d16f
	QUAD $0x0f66db680f66d96f; QUAD $0x0f66e0600f66e16f
	QUAD $0x0f66ea6f0f66c868; QUAD $0x182c7f0f43f3ec61
	QUAD $0x7f0f43f3d4690f66; QUAD $0x66d36f0f66101854
	QUAD $0x547f0f43f3d1610f; QUAD $0x43f3d9690f662018
	QUAD $0xcf014830185c7f0f; QUAD $0x3949c2ff49c8014d
	BYTE $0xd2
	JNE  LBB0_7

LBB0_29:
	RET