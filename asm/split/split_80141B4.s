	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT sub_803F464
	IMPORT sub_803F928

	thumb_func_start sub_80141B4

sub_80141B4
	push {r0, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r2, sp, #0xc
	str r2, [sp, #8]
	add r1, sp, #0x10
	add r0, sp, #0x18
	str r0, [sp]
	str r1, [sp, #4]
	add r1, sp, #0x20
	ldr r0, [sp, #0x28]
	add r2, sp, #0x1c
	add r3, sp, #0x14
	movs r7, #0
	bl sub_803F928
	add r3, sp, #0
	movs r0, #0x1c
	ldrsh r0, [r3, r0]
	cmp r0, #0
	ble %23
	movs r0, #0x20
	ldrsh r0, [r3, r0]
	cmp r0, #0
	ble %23
	ldr r1, [sp, #0x28]
	adds r1, #0x40
	str r1, [sp, #0x24]
15
	add r3, sp, #0
	movs r0, #0xc
	ldrsh r0, [r3, r0]
	ldr r1, [sp, #0x24]
	movs r6, #0
	ldrh r1, [r1, #0x1c]
	adds r0, r7, r0
	muls r0, r1
	movs r1, #0x10
	ldrsh r1, [r3, r1]
	adds r0, r0, r1
	asrs r1, r0, #0x1f
	lsrs r1, r1, #0x1e
	adds r0, r1, r0
	ldr r1, [sp, #0x28]
	asrs r0, r0, #2
	ldr r1, [r1, #0x54]
	lsls r0, r0, #2
	adds r4, r0, r1
	ldrh r0, [r3, #0x14]
	ldr r1, [sp, #0x28]
	ldrh r1, [r1, #0x20]
	adds r0, r7, r0
	adds r7, #1
	muls r0, r1
	ldrh r1, [r3, #0x18]
	lsls r7, r7, #0x10
	lsrs r7, r7, #0x10
	adds r0, r0, r1
	asrs r1, r0, #0x1f
	lsrs r1, r1, #0x1e
	adds r0, r1, r0
	ldr r1, [sp, #0x28]
	asrs r0, r0, #2
	ldr r1, [r1, #0x48]
	lsls r0, r0, #2
	adds r5, r0, r1
	ldr r1, [sp, #0x28]
	ldr r0, [r1, #0x40]
	cmp r0, #0
	beq %16
	movs r1, #0x1c
	movs r2, #0
	adds r0, r4, #0
	ldrsh r1, [r3, r1]
	bl sub_803F464
16
	add r3, sp, #0
	movs r0, #0x1c
	ldrsh r0, [r3, r0]
	cmp r0, #0
	ble %22
17
	ldr r1, [r4]
	ldr r0, [r5]
	lsls r2, r1, #0x18
	lsrs r2, r2, #0x18
	lsls r3, r0, #0x18
	beq %18
	lsls r2, r0, #0x18
	lsrs r2, r2, #0x18
18
	mov ip, r2
	movs r2, #0xff
	lsls r2, r2, #8
	ands r2, r1
	lsls r3, r0, #0x10
	lsrs r3, r3, #0x18
	beq %19
	movs r2, #0xff
	lsls r2, r2, #8
	ands r2, r0
19
	mov r3, ip
	orrs r3, r2
	movs r2, #0xff
	lsls r2, r2, #0x10
	mov ip, r3
	lsls r3, r0, #8
	ands r2, r1
	lsrs r3, r3, #0x18
	beq %20
	movs r2, #0xff
	lsls r2, r2, #0x10
	ands r2, r0
20
	mov r3, ip
	lsrs r1, r1, #0x18
	lsls r1, r1, #0x18
	orrs r2, r3
	lsrs r3, r0, #0x18
	beq %21
	lsrs r1, r0, #0x18
	lsls r1, r1, #0x18
21
	orrs r1, r2
	adds r0, r1, #0
	stm r4!, {r0}
	movs r0, #0x1c
	add r3, sp, #0
	ldrsh r0, [r3, r0]
	adds r6, #4
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	adds r5, #4
	cmp r6, r0
	blt %17
22
	add r3, sp, #0
	movs r0, #0x20
	ldrsh r0, [r3, r0]
	cmp r7, r0
	b %24
23
	b %25
24
	blt %15
25
	add sp, #0x2c
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	ALIGN

	END
