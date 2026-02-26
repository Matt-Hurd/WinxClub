	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT __VTABLE__349dword_803EC74
	IMPORT __VTABLE__367dword_803ECEC
	IMPORT gUnknown_03003EB0
	IMPORT sub_80025D6
	IMPORT sub_803DA18

	thumb_func_start sub_8002614

sub_8002614
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _08002818
	adds r5, r1, #0
	str r0, [r4]
	adds r0, r4, #0
	bl sub_80025D6
	ldr r0, _08002810
	ldr r1, _08002814
	str r0, [r4]
	movs r0, #0
	str r0, [r1]
	cmp r5, #0
	beq %6
	adds r0, r4, #0
	bl sub_803DA18
6
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	ALIGN
_08002810 DCDU __VTABLE__367dword_803ECEC
_08002814 DCDU gUnknown_03003EB0
_08002818 DCDU __VTABLE__349dword_803EC74

	END
