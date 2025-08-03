    INCLUDE asm/macros.inc
    AREA text, CODE

	IMPORT gUnknown_03003E7C
	IMPORT gUnknown_0803ECB8
	IMPORT maybeMallocEWRAM
	IMPORT sub_803DA18

	thumb_func_start sub_8041020
sub_8041020 ;@ 0x08041020
	push {r3, lr}
	cmp r0, #0
	bne _0804102C
	movs r0, #8
	bl maybeMallocEWRAM
_0804102C
	add sp, #4
	pop {r3}
	bx r3
	ALIGN

	thumb_func_start sub_8041034
sub_8041034 ;@ 0x08041034
	push {r3, lr}
	ldr r2, _08041050 ;@ =gUnknown_0803ECB8
	ldr r3, _08041054 ;@ =gUnknown_03003E7C
	str r2, [r0]
	movs r2, #0
	str r2, [r3]
	cmp r1, #0
	beq _08041048
	bl sub_803DA18
_08041048
	add sp, #4
	pop {r3}
	bx r3
	ALIGN
_08041050 DCDU gUnknown_0803ECB8
_08041054 DCDU gUnknown_03003E7C
	END