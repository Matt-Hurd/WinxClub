	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT __nw__FUi
	IMPORT sub_80143E0

	thumb_func_start sub_8023D0C

sub_8023D0C
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	bne %2
	movs r0, #0xff
	adds r0, #0x95
	bl __nw__FUi
	adds r4, r0, #0
	bne %2
	adds r0, r4, #0
1
	pop {r3, r4, r5}
	pop {r3}
	bx r3
2
	movs r5, #0
	strb r5, [r4, #0xc]
	adds r0, r4, #0
	adds r0, #0xc0
	strb r5, [r4, #0xd]
	str r5, [r0, #8]
	str r5, [r0, #0xc]
	str r5, [r0, #0x10]
	adds r0, #0x5c
	bl sub_80143E0
	movs r0, #0
	adds r1, r5, #0
3
	lsls r2, r0, #2
	adds r2, r2, r4
	adds r0, #1
	lsls r0, r0, #0x18
	adds r2, #0xc0
	lsrs r0, r0, #0x18
	cmp r0, #0x10
	str r1, [r2, #0x1c]
	blo %3
	movs r0, #0
4
	lsls r2, r0, #2
	adds r2, r2, r4
	adds r0, #1
	lsls r0, r0, #0x18
	adds r2, #0xc0
	lsrs r0, r0, #0x18
	cmp r0, #2
	str r1, [r2, #0x14]
	blo %4
	movs r0, #0
5
	lsls r2, r0, #2
	adds r0, #1
	lsls r0, r0, #0x18
	adds r2, r2, r4
	lsrs r0, r0, #0x18
	cmp r0, #6
	str r1, [r2, #0x10]
	blo %5
	movs r0, #0
6
	lsls r3, r0, #2
	adds r0, #1
	lsls r0, r0, #0x18
	adds r3, r3, r4
	lsrs r0, r0, #0x18
	adds r2, r1, #0
	cmp r0, #8
	str r1, [r3, #0x28]
	blo %6
	movs r0, #0
7
	lsls r1, r0, #2
	adds r1, r1, r4
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r2, [r1, #0x48]
	str r2, [r1, #0x60]
	cmp r0, #6
	blo %7
	movs r0, #0
8
	lsls r1, r0, #2
	adds r1, r1, r4
	str r2, [r1, #0x78]
	adds r0, #1
	lsls r0, r0, #0x18
	adds r1, #0x80
	lsrs r0, r0, #0x18
	cmp r0, #4
	str r2, [r1, #8]
	blo %8
	movs r0, #0
9
	lsls r1, r0, #2
	adds r1, r1, r4
	adds r1, #0x80
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r2, [r1, #0x18]
	str r2, [r1, #0x30]
	cmp r0, #6
	blo %9
	adds r0, r4, #0
	b %1

	END
