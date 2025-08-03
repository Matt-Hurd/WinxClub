	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_03003EBC
	IMPORT gUnknown_0803ECF4
	IMPORT sub_803DA18

	thumb_func_start sub_8041250
sub_8041250
	push {r3, lr}
	ldr r2, _0804126C
	ldr r3, _08041270
	str r2, [r0]
	movs r2, #0
	str r2, [r3]
	cmp r1, #0
	beq _08041264
	bl sub_803DA18
_08041264
	add sp, #4
	pop {r3}
	bx r3
	ALIGN
_0804126C DCDU gUnknown_0803ECF4
_08041270 DCDU gUnknown_03003EBC
	END
