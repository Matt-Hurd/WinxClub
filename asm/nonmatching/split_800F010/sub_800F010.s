	thumb_func_start sub_800F010
sub_800F010
	push {r3, r4, r5, r6, r7, lr}
	ldr r0, [r1, #0x10]
	adds r4, r1, #0
	ldr r0, [r0]
	ldr r1, [r1, #0x2c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x16
	adds r0, #4
	lsls r5, r0, #0x10
	ldr r0, [r2, #0x10]
	adds r4, #0x2c
	ldr r0, [r0]
	ldr r6, [r4, #4]
	lsls r0, r0, #1
	lsrs r0, r0, #0x16
	adds r0, #4
	adds r2, #0x2c
	str r2, [sp]
	lsls r7, r0, #0x10
	subs r0, r1, r5
	ldr r2, [r2]
	adds r1, r1, r5
	subs r4, r6, r5
	adds r5, r6, r5
	subs r6, r2, r7
	mov lr, r2
	ldr r2, [sp]
	mov ip, r6
	ldr r2, [r2, #4]
	add lr, r7
	subs r6, r2, r7
	adds r7, r2, r7
	ldr r2, [r3]
	cmp r2, #0
	ble %1
	adds r1, r2, r1
	b %2
1
	adds r0, r2, r0
2
	ldr r2, [r3, #4]
	cmp r2, #0
	ble %3
	adds r5, r2, r5
	b %4
3
	adds r4, r2, r4
4
	cmp r0, lr
	ble %6
	movs r0, #0
5
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
6
	cmp r1, ip
	bge %7
	movs r0, #0
	b %5
7
	cmp r4, r7
	ble %8
	movs r0, #0
	b %5
8
	cmp r5, r6
	bge %9
	movs r0, #0
	b %5
9
	movs r0, #1
	b %5

