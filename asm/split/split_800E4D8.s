	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT sub_803D984
	IMPORT sub_80412A8

	thumb_func_start sub_800E4D8

sub_800E4D8
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	movs r2, #0
	movs r1, #0
	bl sub_80412A8
	movs r2, #0
	movs r1, #0
	bl sub_803D984
	adds r4, r0, #0
	movs r2, #2
	adds r1, r0, #0
	adds r0, r5, #0
	bl sub_80412A8
	adds r0, r4, #0
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	END
