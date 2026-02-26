	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT sub_800BBF4

	thumb_func_start sub_800BC30

sub_800BC30
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	lsls r0, r1, #1
	adds r5, r0, r4
	adds r7, r1, #0
	adds r6, r2, #0
	adds r5, #0x80
	ldrh r0, [r5]
	lsrs r0, r0, #8
	bne %5
	movs r0, #0xf
	lsls r0, r0, #6
	adds r1, r4, r0
	movs r0, #0x13
	lsls r0, r0, #8
	adds r0, r4, r0
	lsls r2, r7, #5
	cmp r6, #0
	ldr r3, [r4, #0x1c]
	beq %3
	adds r2, r3, r2
	ldr r3, [r0, #0x14]
	str r2, [r3, #4]
	ldrb r1, [r1]
	ldr r2, _0800BFF8
	lsls r1, r1, #5
	adds r1, r1, r2
	ldr r2, [r0, #0x14]
	str r1, [r2]
	ldr r2, [r0, #0x14]
	lsls r1, r6, #5
	strh r1, [r2, #8]
	ldr r2, [r0, #0x14]
	movs r1, #0
	strh r1, [r2, #0xa]
	ldr r1, [r0, #0x14]
	adds r1, #0xc
	str r1, [r0, #0x14]
	b %4
3
	adds r2, r3, r2
	ldr r3, [r0, #0x10]
	str r2, [r3, #4]
	ldrb r1, [r1]
	ldr r2, _0800BFF8
	lsls r1, r1, #5
	adds r1, r1, r2
	ldr r2, [r0, #0x10]
	str r1, [r2]
	ldr r1, [r0, #0x10]
	adds r1, #8
	str r1, [r0, #0x10]
4
	adds r1, r6, #0
	adds r0, r4, #0
	bl sub_800BBF4
	ldrh r1, [r5]
	movs r2, #0xf0
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x18
	bics r1, r2
	orrs r0, r1
	lsrs r0, r0, #4
	lsls r1, r6, #0x1c
	lsrs r1, r1, #0x1c
	lsls r0, r0, #4
	orrs r0, r1
	strh r0, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x1c
	lsls r0, r0, #1
	movs r1, #0x1d
	lsls r1, r1, #5
	adds r0, r0, r4
	adds r0, r0, r1
	strh r7, [r0]
5
	ldrh r0, [r5]
	movs r1, #0xff
	lsls r1, r1, #8
	adds r2, r0, #0
	adds r0, #0xff
	adds r0, #1
	ands r0, r1
	bics r2, r1
	orrs r0, r2
	strh r0, [r5]
	pop {r4, r5, r6, r7}
	pop {r3}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x1c
	bx r3

	ALIGN
_0800BFF8 DCDU 0x05000200

	END
