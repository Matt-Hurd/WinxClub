	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_03003E90
	IMPORT gUnknown_0803ECCC
	IMPORT sub_803DA18

	thumb_func_start sub_80410E8
sub_80410E8
	push {r3, lr}
	ldr r2, _08041104
	ldr r3, _08041108
	str r2, [r0]
	movs r2, #0
	str r2, [r3]
	cmp r1, #0
	beq _080410FC
	bl sub_803DA18
_080410FC
	add sp, #4
	pop {r3}
	bx r3
	ALIGN
_08041104 DCDU gUnknown_0803ECCC
_08041108 DCDU gUnknown_03003E90
	END