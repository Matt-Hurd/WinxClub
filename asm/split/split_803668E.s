	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT sub_802913E

	non_word_aligned_thumb_func_start sub_803668E

sub_803668E
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r4, r0, #0
	adds r4, #0x80
	ldr r0, [r4, #0x2c]
	adds r6, r5, #0
	adds r7, r5, #0
	lsls r0, r0, #5
	lsrs r0, r0, #0x17
	adds r7, #0xe0
	adds r6, #0x70
	cmp r0, #0x3e
	sub sp, #0x1c
	beq %5
	cmp r0, #0x3f
	beq %6
	cmp r0, #0x40
	bne %4
	movs r0, #0x93
	lsls r0, r0, #2
	strh r0, [r7]
	ldr r0, [r4, #0x30]
	movs r1, #0xff
	lsls r1, r1, #0x13
	bics r0, r1
	movs r1, #0
	str r1, [r5, #0x70]
	str r1, [r4, #0x24]
	ldr r2, [r4, #0xc]
	movs r3, #0xf
	lsls r3, r3, #0xf
	bics r2, r3
	str r2, [r4, #0xc]
	ldr r2, _080368E8
	lsrs r0, r0, #7
	lsls r0, r0, #7
	ands r0, r2
	movs r2, #5
	lsls r2, r2, #7
	adds r0, r0, r2
	str r0, [r4, #0x30]
	strb r1, [r6, #0xd]
	strb r1, [r6, #0xc]
4
	add sp, #0x1c
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
5
	movs r2, #2
	movs r1, #7
	movs r0, #0
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	str r2, [sp, #0x14]
	movs r2, #0x32
	movs r1, #0x14
	ldr r0, _080368EC
	str r1, [sp, #4]
	str r2, [sp, #8]
	movs r2, #2
	movs r1, #0
	movs r3, #0x32
	str r0, [sp]
	adds r0, r5, #0
	bl sub_802913E
	movs r0, #0x2d
	lsls r0, r0, #4
	strh r0, [r7]
	subs r0, #2
	strh r0, [r7, #2]
	ldr r0, [r4, #0x30]
	movs r1, #0xff
	lsls r1, r1, #0x13
	bics r0, r1
	movs r1, #1
	lsls r1, r1, #0x1a
	adds r0, r0, r1
	movs r1, #0
	movs r2, #1
	lsls r2, r2, #0x14
	str r1, [r5, #0x70]
	str r2, [r4, #0x24]
	ldr r2, [r4, #0xc]
	movs r3, #0xf
	lsls r3, r3, #0xf
	bics r2, r3
	movs r3, #5
	lsls r3, r3, #0xf
	adds r2, r2, r3
	str r2, [r4, #0xc]
	lsrs r0, r0, #7
	lsls r0, r0, #7
	ldr r2, _080368E8
	adds r0, #0x32
	ands r0, r2
	movs r2, #1
	lsls r2, r2, #9
	adds r0, r0, r2
	str r0, [r4, #0x30]
	movs r0, #0x1e
	strb r0, [r6, #0xd]
	strb r1, [r6, #0xc]
	b %4
6
	movs r2, #2
	movs r1, #7
	str r1, [sp, #0x10]
	str r2, [sp, #0x14]
	movs r0, #0
	str r0, [sp, #0xc]
	movs r2, #0x32
	movs r1, #0x14
	str r1, [sp, #4]
	str r2, [sp, #8]
	movs r0, #0xfc
	str r0, [sp]
	movs r2, #2
	movs r1, #0
	movs r3, #0x28
	adds r0, r5, #0
	bl sub_802913E
	movs r0, #0xfd
	strh r0, [r7]
	movs r0, #0xfb
	strh r0, [r7, #2]
	ldr r0, [r4, #0x30]
	movs r1, #0xff
	lsls r1, r1, #0x13
	bics r0, r1
	movs r1, #0x91
	lsls r1, r1, #0x13
	adds r0, r0, r1
	movs r1, #0
	str r1, [r5, #0x70]
	str r1, [r4, #0x24]
	ldr r2, [r4, #0xc]
	movs r3, #0xf
	lsls r3, r3, #0xf
	bics r2, r3
	str r2, [r4, #0xc]
	lsrs r0, r0, #7
	lsls r0, r0, #7
	ldr r2, _080368E8
	adds r0, #0x32
	ands r0, r2
	movs r2, #1
	lsls r2, r2, #9
	adds r0, r0, r2
	str r0, [r4, #0x30]
	movs r0, #0x1e
	strb r0, [r6, #0xd]
	strb r1, [r6, #0xc]
	b %4

	ALIGN
_080368E8 DCDU 0xFFFF007F
_080368EC DCDU 0x000002CF

	END
