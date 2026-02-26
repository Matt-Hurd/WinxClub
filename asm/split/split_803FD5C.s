	INCLUDE asm/macros.inc
	AREA text, CODE

	thumb_func_start sub_803FD5C

sub_803FD5C
	push {r4, r5, r6, r7}
	adds r5, r1, #0
	orrs r5, r2
	ldr r4, [sp, #0x10]
	movs r6, #0x13
	lsls r6, r6, #7
	orrs r5, r3
	orrs r5, r4
	adds r0, r0, r6
	cmp r5, #0
	bne %1
	ldr r5, [r0, #0x20]
	ldr r4, [r5, #0x50]
	ldr r5, [r5, #0x54]
	ldrh r2, [r4, #0xc]
	ldr r5, [r5, #4]
	ldrh r4, [r4, #0xe]
	lsls r6, r5, #5
	lsrs r7, r6, #0x1d
	movs r6, #1
	lsls r6, r7
	muls r2, r6
	lsls r5, r5, #2
	lsrs r5, r5, #0x1d
	movs r6, #1
	lsls r6, r5
	muls r4, r6
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
1
	lsls r1, r1, #0x10
	str r1, [r0, #0x28]
	lsls r1, r3, #0x10
	subs r2, #0xf0
	str r1, [r0, #0x2c]
	lsls r1, r2, #0x10
	str r1, [r0, #0x30]
	subs r4, #0xa0
	lsls r1, r4, #0x10
	str r1, [r0, #0x34]
	movs r1, #1
	lsls r1, r1, #0x13
	str r1, [r0, #0x38]
	pop {r4, r5, r6, r7}
	bx lr

	END
