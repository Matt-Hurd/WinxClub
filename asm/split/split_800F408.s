	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT __call_via_r1
	IMPORT nullsub_6
	IMPORT sub_800F312
	IMPORT sub_800FE3A

	thumb_func_start sub_800F408

sub_800F408
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, [r0, #0x5c]
	movs r6, #1
	cmp r0, #4
	beq %23
	bgt %18
	cmp r0, #1
	beq %20
	cmp r0, #2
	bne %28
	ldr r1, [r4]
	ldr r5, [r4, #0x10]
	ldr r2, [r1, #0x18]
	adds r0, r4, #0
	adds r1, r2, r1
	bl __call_via_r1
	bics r0, r6
	str r0, [r4, #0x10]
	cmp r0, r5
	bls %21
	subs r1, r0, r5
	b %22
18
	cmp r0, #8
	bne %28
	movs r0, #0
19
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
20
	ldr r0, [r4, #0x68]
	asrs r1, r0, #0x1f
	lsrs r1, r1, #0x18
	adds r0, r1, r0
	asrs r1, r0, #8
	adds r0, r4, #0
	bl sub_800FE3A
	movs r0, #2
	str r0, [r4, #0x5c]
	b %28
21
	ldr r1, [r4, #8]
	lsls r6, r1
	subs r1, r6, r5
	adds r1, r1, r0
22
	adds r0, r4, #0
	bl sub_800F312
	b %28
23
	adds r0, r4, #0
	ldm r4!, {r1, r5}
	ldr r2, [r1, #0x18]
	subs r4, #8
	adds r1, r2, r1
	bl __call_via_r1
	ldr r1, [r4, #0x70]
	lsrs r0, r0, #1
	str r1, [sp]
	adds r1, #0x80
	ldr r2, [r1, #0xc]
	lsls r0, r0, #1
	cmp r2, r0
	bhs %24
	subs r0, r0, r2
	b %25
24
	ldr r7, [r4, #8]
	adds r3, r6, #0
	lsls r3, r7
	subs r2, r3, r2
	adds r0, r2, r0
25
	lsrs r0, r0, #4
	lsls r0, r0, #4
	ldr r1, [r1, #0x10]
	subs r0, #0x20
	cmp r1, r0
	bhs %26
	adds r0, r1, #0
	movs r1, #8
	str r1, [r4, #0x5c]
26
	ldr r1, [sp]
	adds r1, #0x90
	ldr r2, [r1]
	subs r2, r2, r0
	str r2, [r1]
	cmp r0, #0
	ble %28
	movs r1, #0
27
	ldr r2, [r4, #0x70]
	ldr r7, [r4, #8]
	adds r3, r6, #0
	adds r2, #0x80
	ldr r2, [r2, #0xc]
	lsls r3, r7
	subs r3, #1
	ands r2, r3
	lsrs r2, r2, #1
	lsls r2, r2, #1
	strh r1, [r5, r2]
	ldr r2, [r4, #0x70]
	subs r0, #2
	adds r2, #0x8c
	ldr r3, [r2]
	adds r3, #2
	str r3, [r2]
	cmp r0, #0
	bgt %27
28
	adds r0, r4, #0
	bl nullsub_6
	movs r0, #1
	b %19
	ALIGN

	END
