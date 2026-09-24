	non_word_aligned_thumb_func_start sub_80148BE
sub_80148BE
	push {r4, r5, r6, r7, lr}
	lsls r6, r1, #0x10
	asrs r6, r6, #0x10
	lsls r5, r2, #0x10
	adds r4, r0, #0
	asrs r5, r5, #0x10
	sub sp, #0x5c
	bl sub_8040104
	ldr r1, [r4, #0x54]
	cmp r1, #0
	beq %16
	ldr r2, [r4, #0x58]
	ldr r3, [r4, #0x5c]
	adds r0, r4, #0
	bl sub_803F5FC
16
	ldr r1, [r4, #0x60]
	cmp r1, #0
	beq %17
	ldr r2, [r4, #0x64]
	ldr r3, [r4, #0x68]
	adds r0, r4, #0
	bl sub_803F5FC
17
	movs r7, #0
	str r7, [r4, #0x54]
	movs r0, #0
	lsls r1, r5, #0x1d
	str r7, [r4, #0x64]
	beq %18
	lsrs r1, r5, #3
	lsls r1, r1, #3
	adds r1, #8
	lsls r5, r1, #0x10
	asrs r5, r5, #0x10
18
	lsls r1, r6, #0x1d
	beq %19
	lsrs r1, r6, #3
	lsls r1, r1, #3
	adds r1, #8
	lsls r6, r1, #0x10
	asrs r6, r6, #0x10
19
	strh r5, [r4, #0x28]
	strh r6, [r4, #0x2a]
	cmp r5, #0
	ble %24
	add r3, sp, #8
20
	cmp r5, #0x20
	blt %21
	movs r1, #2
	strb r1, [r3, r0]
	b %23
21
	cmp r5, #8
	ble %22
	movs r1, #1
	strb r1, [r3, r0]
	b %23
22
	strb r7, [r3, r0]
23
	adds r1, r0, #1
	lsls r1, r1, #0x18
	adds r2, r0, #0
	ldrb r2, [r3, r2]
	lsrs r1, r1, #0x18
	adds r0, r1, #0
	movs r1, #8
	lsls r1, r2
	subs r1, r5, r1
	lsls r5, r1, #0x10
	asrs r5, r5, #0x10
	cmp r5, #0
	bgt %20
24
	adds r5, r4, #0
	adds r5, #0x60
	strb r0, [r5, #0xe]
	movs r0, #0
	cmp r6, #0
	ble %29
	add r3, sp, #0x28
25
	cmp r6, #0x20
	blt %26
	movs r1, #2
	strb r1, [r3, r0]
	b %28
26
	cmp r6, #8
	ble %27
	movs r1, #1
	strb r1, [r3, r0]
	b %28
27
	strb r7, [r3, r0]
28
	adds r1, r0, #1
	lsls r1, r1, #0x18
	adds r2, r0, #0
	ldrb r2, [r3, r2]
	lsrs r1, r1, #0x18
	adds r0, r1, #0
	movs r1, #8
	lsls r1, r2
	subs r1, r6, r1
	lsls r6, r1, #0x10
	asrs r6, r6, #0x10
	cmp r6, #0
	bgt %25
29
	strb r0, [r5, #0xf]
	bl GetEWRAMStart
	adds r1, r0, #0
	ldrb r0, [r5, #0xe]
	ldrb r2, [r5, #0xf]
	muls r0, r2
	lsls r0, r0, #2
	adds r3, r7, #0
	movs r2, #0
	bl sub_803DA9C
	str r0, [r4, #0x54]
	bl GetEWRAMStart
	adds r1, r0, #0
	ldrb r0, [r5, #0xe]
	ldrb r2, [r5, #0xf]
	muls r0, r2
	lsls r3, r0, #2
	adds r0, r3, r0
	lsls r0, r0, #2
	adds r3, r7, #0
	movs r2, #0
	bl sub_803DA9C
	str r0, [r4, #0x58]
	bl GetEWRAMStart
	adds r1, r0, #0
	ldrb r0, [r5, #0xe]
	ldrb r2, [r5, #0xf]
	muls r0, r2
	lsls r0, r0, #3
	adds r3, r7, #0
	movs r2, #0
	bl sub_803DA9C
	movs r6, #0
	str r0, [r4, #0x5c]
	str r6, [sp, #0x4c]
	ldrb r0, [r5, #0xe]
	cmp r0, #0
	bls %33
	adds r1, r4, #0
	adds r1, #0x70
	str r1, [sp, #0x58]
30
	movs r2, #0
	str r2, [sp, #0x48]
	ldrb r0, [r5, #0xf]
	cmp r0, #0
	bls %34
31
	ldr r0, _08014DBC
	add r1, sp, #0x28
	ldr r0, [r0]
	ldr r2, [sp, #0x48]
	ldrb r3, [r1, r2]
	movs r1, #8
	adds r2, r1, #0
	lsls r2, r3
	mov r3, sp
	ldr r7, [sp, #0x4c]
	adds r3, r3, r1
	ldrb r3, [r3, r7]
	lsls r1, r3
	add r3, sp, #0
	strh r2, [r3, #4]
	strh r1, [r3, #6]
	lsls r2, r6, #2
	adds r2, r2, r6
	lsls r2, r2, #2
	ldr r1, [r4, #0x58]
	str r2, [sp, #0x54]
	adds r2, r1, r2
	ldr r1, [r4, #0x5c]
	lsls r3, r6, #3
	str r3, [sp, #0x50]
	adds r1, r1, r3
	add r3, sp, #4
	bl sub_80015F2
	ldr r0, _08014DBC
	ldr r0, [r0]
	bl sub_800116A
	ldr r1, [r4, #0x54]
	lsls r7, r6, #2
	str r0, [r1, r7]
	ldr r1, [r4, #0x58]
	ldr r2, [sp, #0x54]
	adds r2, r1, r2
	ldr r1, [r4, #0x5c]
	ldr r3, [sp, #0x50]
	adds r1, r1, r3
	bl sub_803FE80
	movs r0, #0xef
	add r3, sp, #0
	strh r0, [r3, #4]
	movs r0, #0x9f
	strh r0, [r3, #6]
	ldr r0, [r4, #0x54]
	add r1, sp, #4
	ldr r0, [r0, r7]
	bl sub_8040034
	ldr r0, [r4, #0x54]
	ldr r2, _08014DC0
	ldr r0, [r0, r7]
	ldr r1, [sp, #0x58]
	ldrb r1, [r1, #4]
	ldrb r1, [r2, r1]
	bl sub_803FF64
	ldr r0, [r4, #0x54]
	ldrb r1, [r5, #0xd]
	ldr r0, [r0, r7]
	movs r3, #3
	ldrh r2, [r0, #0x26]
	lsls r3, r3, #0xa
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x14
	bics r2, r3
	orrs r1, r2
	strh r1, [r0, #0x26]
	ldr r1, [r0]
	movs r2, #0x80
	orrs r1, r2
	str r1, [r0]
	ldr r0, [r4, #0x54]
	ldr r1, [r0, r7]
	ldrb r2, [r1, #5]
	ldrb r0, [r5, #0xc]
	cmp r2, r0
	beq %32
	ldrh r2, [r1, #0x2a]
	bics r2, r3
	lsls r3, r0, #0x18
	lsrs r3, r3, #0x1e
	lsls r3, r3, #0xa
	orrs r2, r3
	strh r2, [r1, #0x2a]
	strb r0, [r1, #5]
	ldr r0, [r1]
	lsls r2, r0, #0x16
	bmi %32
	movs r2, #0x80
	orrs r0, r2
	str r0, [r1]
32
	ldr r0, [r4, #0x54]
	movs r1, #1
	ldr r0, [r0, r7]
	bl sub_80401E4
	adds r6, #1
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	b %35
33
	b %37
34
	b %36
35
	ldr r2, [sp, #0x48]
	adds r2, #1
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	str r2, [sp, #0x48]
	ldrb r0, [r5, #0xf]
	cmp r0, r2
	bhi %31
36
	ldr r7, [sp, #0x4c]
	adds r7, #1
	lsls r7, r7, #0x18
	lsrs r7, r7, #0x18
	str r7, [sp, #0x4c]
	ldrb r0, [r5, #0xe]
	cmp r0, r7
	bls %37
	b %30
37
	ldr r0, [r4, #0x70]
	cmp r0, #0
	beq %38
	adds r0, r4, #0
	bl sub_803EF2C
38
	add sp, #0x5c
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

