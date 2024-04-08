    INCLUDE asm/macros.inc
    AREA text, CODE

	IMPORT gUnknown_03003EAC
	IMPORT gUnknown_0803ECE8
	IMPORT sub_803DA18

	thumb_func_start sub_80411E4
sub_80411E4 ;@ 0x080411E4
	push {r3, lr}
	ldr r2, _08041200 ;@ =gUnknown_0803ECE8
	ldr r3, _08041204 ;@ =gUnknown_03003EAC
	str r2, [r0]
	movs r2, #0
	str r2, [r3]
	cmp r1, #0
	beq _080411F8
	bl sub_803DA18
_080411F8
	add sp, #4
	pop {r3}
	bx r3
	ALIGN
_08041200 DCDU gUnknown_0803ECE8
_08041204 DCDU gUnknown_03003EAC
	END