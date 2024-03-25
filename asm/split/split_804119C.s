    INCLUDE asm/macros.inc
    AREA text, CODE

	IMPORT gUnknown_03003EA4
	IMPORT gUnknown_0803ECE0
	IMPORT sub_803DA18

	thumb_func_start sub_804119C
sub_804119C ;@ 0x0804119C
	push {r3, lr}
	ldr r2, _080411B8 ;@ =gUnknown_0803ECE0
	ldr r3, _080411BC ;@ =gUnknown_03003EA4
	str r2, [r0]
	movs r2, #0
	str r2, [r3]
	cmp r1, #0
	beq _080411B0
	bl sub_803DA18
_080411B0
	add sp, #4
	pop {r3}
	bx r3
	ALIGN
_080411B8 DCDU gUnknown_0803ECE0
_080411BC DCDU gUnknown_03003EA4
	END