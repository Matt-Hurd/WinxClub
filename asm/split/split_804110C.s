	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_03003E94
	IMPORT gUnknown_0803ECD0
	IMPORT sub_803DA18

	thumb_func_start sub_804110C
sub_804110C
	push {r3, lr}
	ldr r2, _08041128
	ldr r3, _0804112C
	str r2, [r0]
	movs r2, #0
	str r2, [r3]
	cmp r1, #0
	beq _08041120
	bl sub_803DA18
_08041120
	add sp, #4
	pop {r3}
	bx r3
	ALIGN
_08041128 DCDU gUnknown_0803ECD0
_0804112C DCDU gUnknown_03003E94
	END
