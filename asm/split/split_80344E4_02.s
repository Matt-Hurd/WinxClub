	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT HostileCreature__ctor
	IMPORT __VTABLE__308Boss
	IMPORT sub_803DA18

	non_word_aligned_thumb_func_start Boss__ctor

Boss__ctor
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _080348C4
	adds r5, r1, #0
	movs r1, #0
	str r0, [r4]
	adds r0, r4, #0
	bl HostileCreature__ctor
	cmp r5, #0
	beq %3
	adds r0, r4, #0
	bl sub_803DA18
3
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	ALIGN
_080348C4 DCDU __VTABLE__308Boss

	END
