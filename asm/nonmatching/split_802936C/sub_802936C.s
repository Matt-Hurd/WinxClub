	thumb_func_start sub_802936C
sub_802936C
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r4, r0, #0
	adds r6, #0x80
	ldr r0, [r6, #0xc]
	movs r1, #1
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r6, #0xc]
	ldr r5, [r4, #0x30]
	ldr r0, [r5]
	lsls r0, r0, #0x1c
	bmi %1
	ldr r0, _080296BC
	adds r1, r5, #0
	ldr r0, [r0]
	bl sub_80012F0
1
	ldr r0, [r5]
	movs r1, #8
	bics r0, r1
	orrs r0, r1
	str r0, [r5]
	ldr r0, [r4, #0x30]
	movs r2, #4
	ldr r1, [r0]
	bics r1, r2
	orrs r1, r2
	str r1, [r0]
	ldr r0, [r6, #0xc]
	lsls r0, r0, #0xd
	lsrs r1, r0, #0x1c
	beq %3
	lsrs r0, r0, #0x1c
	ldr r1, _080296C0
	lsls r0, r0, #1
	adds r0, r0, r1
	subs r0, #0x20
	ldrh r1, [r0, #0x1e]
	ldr r0, [r4, #0x30]
	bl sub_800065C
2
	pop {r4, r5, r6}
	pop {r3}
	bx r3
3
	ldr r1, _080296C4
	ldr r0, [r4, #0x30]
	bl sub_800065C
	b %2

