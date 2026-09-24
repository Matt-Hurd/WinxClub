	thumb_func_start sub_802B670
sub_802B670
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _0802BA04
	movs r2, #0
	ldr r1, [r0]
	adds r3, r2, #0
	ldr r0, [r1, #0x14]
	lsls r5, r0, #0x1c
	bmi %1
	ldrh r3, [r1, #6]
1
	lsls r5, r3, #0x10
	lsrs r5, r5, #0x10
	lsls r0, r0, #0x1c
	lsls r1, r5, #0x1e
	movs r3, #3
	cmp r1, #0
	ldr r0, _0802BA08
	bge %2
	strb r2, [r4, #1]
	strb r2, [r4]
	strb r3, [r4, #2]
	ldr r0, [r0]
	movs r1, #0
	bl sub_802459E
	b %3
2
	lsls r1, r5, #0x1f
	bpl %3
	strb r2, [r4, #1]
	strb r3, [r4, #2]
	ldr r0, [r0]
	movs r1, #0
	bl sub_802459E
3
	lsls r0, r5, #0x1a
	bmi %4
	lsls r0, r5, #0x1b
	bpl %5
4
	ldr r0, _0802BA0C
	ldr r0, [r0]
	adds r0, #0x20
	bl sub_8028C2E
	ldrb r0, [r4]
	movs r3, #0x56
	mov r1, sp
	adds r0, #1
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x1f
	strb r0, [r4]
	ldrb r0, [r4]
	adds r4, #0xff
	muls r0, r3
	lsrs r0, r0, #1
	adds r0, #0x7c
	add r3, sp, #0
	strh r0, [r3]
	movs r0, #0x4d
	strh r0, [r3, #2]
	adds r4, #0xc1
	ldr r0, [r4, #0x38]
	bl sub_8040034
5
	pop {r3, r4, r5}
	pop {r3}
	bx r3

