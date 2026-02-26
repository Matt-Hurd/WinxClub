	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT sub_801F640

	non_word_aligned_thumb_func_start sub_801CBAA

sub_801CBAA
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	movs r0, #5
	lsls r0, r0, #8
	adds r7, r1, #0
	adds r6, r5, r0
	ldr r0, [r6, #0x1c]
	movs r4, #0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x19
	beq %6
5
	lsls r0, r4, #2
	adds r0, r0, r5
	ldr r0, [r0, #0x20]
	adds r1, r7, #0
	bl sub_801F640
	ldr r0, [r6, #0x1c]
	adds r4, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x19
	cmp r0, r4
	bhi %5
6
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	END
