	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_03003E7C
	IMPORT __VTABLE__354dword_803ECB8
	IMPORT __nw__FUi
	IMPORT sub_803DA18

	thumb_func_start sub_8041020
sub_8041020
	push {r3, lr}
	cmp r0, #0
	bne %1
	movs r0, #8
	bl __nw__FUi
1
	add sp, #4
	pop {r3}
	bx r3
	ALIGN

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
_08041050 DCDU __VTABLE__354dword_803ECB8
_08041054 DCDU gUnknown_03003E7C
	END
