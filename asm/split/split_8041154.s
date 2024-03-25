    INCLUDE asm/macros.inc
    AREA text, CODE

	IMPORT gUnknown_03003E9C
	IMPORT gUnknown_0803ECD8
	IMPORT sub_803DA18

	thumb_func_start sub_8041154
sub_8041154 ;@ 0x08041154
	push {r3, lr}
	ldr r2, _08041170 ;@ =gUnknown_0803ECD8
	ldr r3, _08041174 ;@ =gUnknown_03003E9C
	str r2, [r0]
	movs r2, #0
	str r2, [r3]
	cmp r1, #0
	beq _08041168
	bl sub_803DA18
_08041168
	add sp, #4
	pop {r3}
	bx r3
	ALIGN
_08041170 DCDU gUnknown_0803ECD8
_08041174 DCDU gUnknown_03003E9C
	END