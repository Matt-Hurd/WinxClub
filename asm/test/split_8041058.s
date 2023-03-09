    INCLUDE asm/macros.inc
    AREA text, CODE

	IMPORT gUnknown_03003E80
	IMPORT gUnknown_0803ECBC
	IMPORT sub_803DA18

	thumb_func_start sub_8041058
sub_8041058 ;@ 0x08041058
	push {r3, lr}
	ldr r2, _08041074 ;@ =gUnknown_0803ECBC
	ldr r3, _08041078 ;@ =gUnknown_03003E80
	str r2, [r0]
	movs r2, #0
	str r2, [r3]
	cmp r1, #0
	beq _0804106C
	bl sub_803DA18
_0804106C
	add sp, #4
	pop {r3}
	bx r3
	ALIGN
_08041074 DCDU gUnknown_0803ECBC
_08041078 DCDU gUnknown_03003E80
