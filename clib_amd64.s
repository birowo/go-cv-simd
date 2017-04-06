#include "textflag.h"

// void *memcpy(void *dst, const void *src, size_t n)
// DI = dst, SI = src, DX = size
TEXT clib·_memcpy(SB), NOSPLIT|NOFRAME, $16-0
	PUSHQ R8
	PUSHQ CX
	XORQ  CX, CX // clear register

MEMCPY_QUAD_LOOP:
	ADDQ $8, CX
	CMPQ CX, DX
	JA   MEMCPY_QUAD_DONE
	MOVQ -8(SI)(CX*1), R8
	MOVQ R8, -8(DI)(CX*1)
	JMP  MEMCPY_QUAD_LOOP

MEMCPY_QUAD_DONE:
	SUBQ $4, CX
	CMPQ CX, DX
	JA   MEMCPY_LONG_DONE
	MOVL -4(SI)(CX*1), R8
	MOVL R8, -4(DI)(CX*1)
	ADDQ $4, CX

MEMCPY_LONG_DONE:
	SUBQ $2, CX
	CMPQ CX, DX
	JA   MEMCPY_WORD_DONE
	MOVW -2(SI)(CX*1), R8
	MOVW R8, -2(DI)(CX*1)
	ADDQ $2, CX

MEMCPY_WORD_DONE:
	SUBQ $1, CX
	CMPQ CX, DX
	JA   MEMCPY_BYTE_DONE
	MOVB -1(SI)(CX*1), R8
	MOVB R8, -1(DI)(CX*1)

MEMCPY_BYTE_DONE:
	MOVQ DI, AX // set return value
	POPQ CX
	POPQ R8
	RET

// func _ClibMemcpy(dst, src unsafe.Pointer, n uint) unsafe.Pointer
TEXT ·_ClibMemcpy(SB), NOSPLIT|NOFRAME, $16-16
	MOVQ arg1+0(FP), DI
	MOVQ arg2+8(FP), SI
	MOVQ arg3+16(FP), DX
	CALL clib·_memcpy(SB)
	MOVQ AX, ret+24(FP)
	RET

// void *memset(void *str, int c, size_t n)
// DI = str, SI = c, DX = size
TEXT clib·_memset(SB), NOSPLIT|NOFRAME, $16-0
	PUSHQ R8
	PUSHQ CX

	// TODO OR R8 across the register
	XORQ R8, R8 // clear register
	XORQ CX, CX // clear register

MEMSET_QUAD_LOOP:
	ADDQ $8, CX
	CMPQ CX, DX
	JA   MEMSET_QUAD_DONE
	MOVQ R8, -8(DI)(CX*1)
	JMP  MEMSET_QUAD_LOOP

MEMSET_QUAD_DONE:
	SUBQ $4, CX
	CMPQ CX, DX
	JA   MEMSET_LONG_DONE
	MOVL R8, -4(DI)(CX*1)
	ADDQ $4, CX

MEMSET_LONG_DONE:
	SUBQ $2, CX
	CMPQ CX, DX
	JA   MEMSET_WORD_DONE
	MOVW R8, -2(DI)(CX*1)
	ADDQ $2, CX

MEMSET_WORD_DONE:
	SUBQ $1, CX
	CMPQ CX, DX
	JA   MEMSET_BYTE_DONE
	MOVB R8, -1(DI)(CX*1)

MEMSET_BYTE_DONE:
	MOVQ DI, AX // set return value
	POPQ CX
	POPQ R8
	RET

// float floor (float x);
// DI = x
TEXT clib·_floor(SB), NOSPLIT|NOFRAME, $16-16
	MOVQ X0, -16(SP)               // save X0
	MOVL DI, X0
	LONG $0x0a3a0f66; WORD $0x01c0 // roundss xmm0, xmm0, 1
	MOVL X0, AX
	MOVQ -16(SP), X0               // restore X0
	RET

// func _ClibFloor32(fl float32) float32
TEXT ·_ClibFloor32(SB), NOSPLIT|NOFRAME, $16-16
	MOVL arg1+0(FP), DI
	CALL clib·_floor(SB)
	MOVL AX, ret+8(FP)
	RET

// double floor (double x);
// DI = x
TEXT clib·_floor64(SB), NOSPLIT|NOFRAME, $16-16
	MOVQ X0, -16(SP)               // save X0
	MOVQ DI, X0
	LONG $0x0b3a0f66; WORD $0x01c0 // roundsd xmm0, xmm0, 1
	MOVQ X0, AX
	MOVQ -16(SP), X0               // restore X0
	RET

// func _ClibFloor64(fl float64) float64
TEXT ·_ClibFloor64(SB), NOSPLIT|NOFRAME, $16-16
	MOVQ arg1+0(FP), DI
	CALL clib·_floor64(SB)
	MOVQ AX, ret+8(FP)
	RET
