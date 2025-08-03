	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_03003EB0
	IMPORT gUnknown_0803ECEC
	IMPORT sub_803DA18

	thumb_func_start sub_8041208
sub_8041208
	push {r3, lr}
	ldr r2, _08041224
	ldr r3, _08041228
	str r2, [r0]
	movs r2, #0
	str r2, [r3]
	cmp r1, #0
	beq _0804121C
	bl sub_803DA18
_0804121C
	add sp, #4
	pop {r3}
	bx r3
	ALIGN
_08041224 DCDU gUnknown_0803ECEC
_08041228 DCDU gUnknown_03003EB0
	END