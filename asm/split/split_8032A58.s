	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT sub_802E8B0

	thumb_func_start sub_8032A58

sub_8032A58
	push {r4, lr}
	adds r4, r0, #0
	bl sub_802E8B0
	movs r1, #7
	ldr r0, [r4, #0x34]
	lsls r1, r1, #8
	bics r0, r1
	movs r1, #3
	lsls r1, r1, #8
	adds r0, r0, r1
	str r0, [r4, #0x34]
	ldr r0, [r4, #0x4c]
	lsls r0, r0, #1
	lsrs r0, r0, #1
	str r0, [r4, #0x4c]
	pop {r4}
	pop {r3}
	bx r3

	END
