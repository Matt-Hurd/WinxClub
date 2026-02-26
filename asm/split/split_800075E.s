	INCLUDE asm/macros.inc
	AREA text, CODE

	non_word_aligned_thumb_func_start sub_800075E

sub_800075E
	push {r4}
	ldr r3, [r0, #0x10]
	ldrh r2, [r0, #0x28]
	ldr r3, [r3, #4]
	lsls r3, r3, #0xd
	lsls r2, r2, #0x17
	lsrs r2, r2, #0x17
	asrs r3, r3, #0x17
	adds r3, r2, r3
	str r3, [r1]
	ldr r4, [r0, #0x10]
	ldrh r2, [r0, #0x26]
	ldr r4, [r4, #4]
	lsls r4, r4, #2
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	asrs r4, r4, #0x17
	adds r2, r2, r4
	str r2, [r1, #4]
	ldr r4, [r0, #0x10]
	ldr r4, [r4]
	lsls r4, r4, #1
	lsrs r4, r4, #0x16
	adds r3, r3, r4
	str r3, [r1, #8]
	ldr r0, [r0, #0x10]
	ldr r0, [r0, #4]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x16
	adds r0, r2, r0
	str r0, [r1, #0xc]
	pop {r4}
	bx lr

	END
