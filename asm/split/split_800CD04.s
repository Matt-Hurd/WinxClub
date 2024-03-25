    INCLUDE asm/macros.inc
    AREA text, CODE


	thumb_func_start sub_800CD04
sub_800CD04 ;@ 0x0800CD04
	push {r4}
	lsls r4, r2, #1
	adds r0, r4, r0
	movs r4, #0x1d
	lsls r4, r4, #5
	ldr r3, _0800CD90 ;@ =0x00000FFF
	adds r0, r0, r4
	strh r3, [r0]
	movs r3, #0x1f
	lsls r3, r3, #8
	ldr r0, [r1]
	lsls r2, r2, #0x1b
	lsrs r2, r2, #0x13
	bics r0, r3
	orrs r0, r2
	str r0, [r1]
	pop {r4}
	bx lr

	thumb_func_start sub_800CD28
sub_800CD28 ;@ 0x0800CD28
	ldr r1, [r1, #0x14]
	ldr r2, _0800CD94 ;@ =0x00001318
	ldr r1, [r1]
	lsls r1, r1, #0xb
	lsrs r1, r1, #0x18
	lsls r3, r1, #2
	adds r1, r3, r1
	lsls r1, r1, #1
	adds r1, r1, r0
	adds r1, r1, r2
	ldrh r2, [r1]
	movs r3, #3
	lsls r3, r3, #8
	bics r2, r3
	subs r3, #0xff
	subs r3, #1
	adds r2, r2, r3
	strh r2, [r1]
	movs r2, #3
	lsls r2, r2, #0xb
	movs r1, #1
	adds r0, r0, r2
	str r1, [r0, #0x18]
	bx lr

	thumb_func_start sub_800CD58
sub_800CD58 ;@ 0x0800CD58
	push {r4}
	ldrh r2, [r1, #0x26]
	ldr r1, [r1, #0x14]
	movs r4, #3
	ldr r1, [r1]
	lsls r2, r2, #0x16
	lsls r1, r1, #0xb
	lsrs r1, r1, #0x18
	lsls r3, r1, #2
	adds r1, r3, r1
	lsls r1, r1, #1
	ldr r3, _0800CD94 ;@ =0x00001318
	adds r1, r1, r0
	adds r1, r1, r3
	ldrh r3, [r1]
	lsrs r2, r2, #0x1e
	lsls r4, r4, #8
	bics r3, r4
	lsls r2, r2, #8
	orrs r2, r3
	strh r2, [r1]
	lsls r2, r4, #3
	movs r1, #1
	adds r0, r0, r2
	str r1, [r0, #0x18]
	pop {r4}
	bx lr
	ALIGN
_0800CD90 DCDU 0x00000FFF
_0800CD94 DCDU 0x00001318
	END