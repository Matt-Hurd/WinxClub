    INCLUDE asm/macros.inc
    AREA text, CODE

	IMPORT gUnknown_03003EA0
	IMPORT gUnknown_0803ECDC
	IMPORT sub_803DA18

	thumb_func_start sub_8041178
sub_8041178 ;@ 0x08041178
	push {r3, lr}
	ldr r2, _08041194 ;@ =gUnknown_0803ECDC
	ldr r3, _08041198 ;@ =gUnknown_03003EA0
	str r2, [r0]
	movs r2, #0
	str r2, [r3]
	cmp r1, #0
	beq _0804118C
	bl sub_803DA18
_0804118C
	add sp, #4
	pop {r3}
	bx r3
	ALIGN
_08041194 DCDU gUnknown_0803ECDC
_08041198 DCDU gUnknown_03003EA0
	END