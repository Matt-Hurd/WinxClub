	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT sub_80133A0
	IMPORT sub_803F464
	IMPORT sub_803F928

	thumb_func_start sub_80142D0

sub_80142D0
	push {r4, r5, r6, r7, lr}
	movs r1, #0
	sub sp, #0x34
	adds r4, r0, #0
	adds r7, r0, #0
	adds r4, #0x20
	str r1, [sp, #0x14]
	ldrb r0, [r4, #0xd]
	bl sub_80133A0
	ldrb r1, [r4, #0xe]
	ldrb r2, [r0, #0x18]
	ldr r0, [r0, #0x10]
	muls r1, r2
	lsls r1, r1, #1
	adds r3, r1, r0
	add r1, sp, #0x10
	add r0, sp, #0x1c
	add r2, sp, #0xc
	str r2, [sp, #8]
	str r0, [sp]
	str r1, [sp, #4]
	str r3, [sp, #0x2c]
	add r3, sp, #0x18
	add r1, sp, #0x24
	adds r0, r7, #0
	add r2, sp, #0x20
	bl sub_803F928
	add r3, sp, #0
	movs r0, #0x20
	ldrsh r0, [r3, r0]
	cmp r0, #0
	ble %7
	movs r0, #0x24
	ldrsh r0, [r3, r0]
	cmp r0, #0
	ble %7
	ldr r3, [sp, #0x2c]
	ldrh r0, [r3]
	lsls r1, r0, #0x10
	orrs r0, r1
	adds r1, r7, #0
	adds r1, #0x40
	str r1, [sp, #0x30]
	str r0, [sp, #0x28]
1
	add r3, sp, #0
	movs r0, #0xc
	ldrsh r0, [r3, r0]
	ldr r1, [sp, #0x14]
	movs r6, #0
	adds r0, r1, r0
	ldr r1, [sp, #0x30]
	ldrh r1, [r1, #0x1c]
	muls r0, r1
	movs r1, #0x10
	ldrsh r1, [r3, r1]
	adds r0, r0, r1
	lsrs r1, r0, #0x1f
	adds r0, r1, r0
	asrs r0, r0, #1
	ldr r1, [r7, #0x54]
	lsls r0, r0, #2
	adds r4, r0, r1
	ldrh r0, [r7, #0x20]
	ldr r1, [sp, #0x14]
	muls r0, r1
	lsrs r1, r0, #0x1f
	adds r0, r1, r0
	asrs r0, r0, #1
	ldr r1, [r7, #0x48]
	lsls r0, r0, #1
	adds r5, r0, r1
	ldr r1, [sp, #0x14]
	adds r1, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0x14]
	ldr r0, [r7, #0x40]
	cmp r0, #0
	beq %2
	movs r0, #0x20
	ldrsh r0, [r3, r0]
	ldr r2, [sp, #0x28]
	lsls r1, r0, #1
	adds r0, r4, #0
	bl sub_803F464
2
	add r3, sp, #0
	movs r0, #0x20
	ldrsh r0, [r3, r0]
	cmp r0, #0
	ble %6
3
	ldr r1, [r4]
	ldrh r0, [r5]
	lsls r2, r1, #0x10
	lsrs r2, r2, #0x10
	lsls r3, r0, #0x18
	beq %4
	lsls r2, r0, #0x18
	ldr r3, [sp, #0x2c]
	lsrs r2, r2, #0x17
	ldrh r2, [r3, r2]
4
	lsrs r1, r1, #0x10
	lsls r1, r1, #0x10
	lsls r3, r0, #0x10
	lsrs r3, r3, #0x18
	beq %5
	lsrs r0, r0, #8
	ldr r3, [sp, #0x2c]
	lsls r0, r0, #1
	ldrh r0, [r3, r0]
	lsls r1, r0, #0x10
5
	orrs r1, r2
	adds r0, r1, #0
	stm r4!, {r0}
	movs r0, #0x20
	add r3, sp, #0
	ldrsh r0, [r3, r0]
	adds r6, #2
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	adds r5, #2
	cmp r6, r0
	blt %3
6
	add r3, sp, #0
	movs r0, #0x24
	ldrsh r0, [r3, r0]
	ldr r1, [sp, #0x14]
	cmp r1, r0
	blt %1
7
	add sp, #0x34
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	ALIGN

	END
