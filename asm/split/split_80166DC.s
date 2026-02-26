	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT __VTABLE__303dword_803E320
	IMPORT sub_8017450
	IMPORT sub_803DA18

	thumb_func_start sub_80166DC

sub_80166DC
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _08016A9C
	adds r5, r1, #0
	movs r1, #0
	str r0, [r4]
	adds r0, r4, #0
	bl sub_8017450
	cmp r5, #0
	beq %3
	adds r0, r4, #0
	bl sub_803DA18
3
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	ALIGN
_08016A9C DCDU __VTABLE__303dword_803E320

	END
