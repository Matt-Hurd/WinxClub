	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT __VTABLE__354dword_803ECB8
	IMPORT gUnknown_03003E7C
	IMPORT sub_803DA18

	thumb_func_start sub_8041034

sub_8041034
	push {r3, lr}
	ldr r2, _08041050
	ldr r3, _08041054
	str r2, [r0]
	movs r2, #0
	str r2, [r3]
	cmp r1, #0
	beq %2
	bl sub_803DA18
2
	add sp, #4
	pop {r3}
	bx r3
	ALIGN

	ALIGN
_08041050 DCDU __VTABLE__354dword_803ECB8
_08041054 DCDU gUnknown_03003E7C

	END
