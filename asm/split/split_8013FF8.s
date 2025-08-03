	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_0803E6A0
	IMPORT sub_80134B8
	IMPORT sub_801352C
	IMPORT sub_8013E2C
	IMPORT __call_via_r3
	IMPORT maybeMallocEWRAM
	IMPORT sub_803DA18
	IMPORT sub_803F464
	IMPORT sub_803F928

	thumb_func_start nullsub_45
nullsub_45
	bx lr
	ALIGN

	thumb_func_start sub_8013FF8
sub_8013FF8
	push {r4, lr}
	adds r4, r0, #0
	bne _08014010
	movs r0, #0x60
	bl maybeMallocEWRAM
	adds r4, r0, #0
	bne _08014010
	adds r0, r4, #0
_0801400A
	pop {r4}
	pop {r3}
	bx r3
_08014010
	adds r0, r4, #0
	bl sub_80134B8
	ldr r0, _080142CC
	str r0, [r4]
	movs r0, #0
	strb r0, [r4, #0xc]
	movs r0, #1
	strb r0, [r4, #0x10]
	adds r0, r4, #0
	bl sub_8013E2C
	adds r0, r4, #0
	b _0801400A

	thumb_func_start sub_801402C
sub_801402C
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _080142CC
	adds r5, r1, #0
	movs r1, #0
	str r0, [r4]
	adds r0, r4, #0
	bl sub_801352C
	cmp r5, #0
	beq _08014048
	adds r0, r4, #0
	bl sub_803DA18
_08014048
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_801404E
sub_801404E
	push {r4, lr}
	ldr r3, [r0]
	ldr r4, [r3, #0x10]
	adds r3, r4, r3
	bl __call_via_r3
	pop {r4}
	pop {r3}
	bx r3

	thumb_func_start sub_8014060
sub_8014060
	strh r1, [r0, #0x18]
	strh r2, [r0, #0x1a]
	ldrh r1, [r0, #0xe]
	movs r2, #2
	orrs r1, r2
	strh r1, [r0, #0xe]
	bx lr

	non_word_aligned_thumb_func_start sub_801406E
sub_801406E
	push {r0, r4, r5, r6, r7, lr}
	sub sp, #0x30
	movs r0, #0
	movs r1, #0
	str r1, [sp, #0x18]
	str r0, [sp, #0x14]
	add r0, sp, #0x20
	add r1, sp, #0x10
	add r2, sp, #0xc
	str r2, [sp, #8]
	str r1, [sp, #4]
	str r0, [sp]
	ldr r0, [sp, #0x30]
	add r1, sp, #0x28
	add r2, sp, #0x24
	add r3, sp, #0x1c
	bl sub_803F928
	add r3, sp, #0
	movs r0, #0x24
	ldrsh r0, [r3, r0]
	cmp r0, #0
	ble _08014180
	movs r0, #0x28
	ldrsh r0, [r3, r0]
	cmp r0, #0
	ble _08014180
	ldr r1, [sp, #0x30]
	ldr r5, [sp, #0x30]
	adds r1, #0x40
	str r1, [sp, #0x2c]
	adds r5, #0x20
_080140AE
	add r3, sp, #0
	movs r0, #0xc
	ldrsh r0, [r3, r0]
	ldr r1, [sp, #0x18]
	movs r7, #0
	adds r0, r1, r0
	ldr r1, [sp, #0x2c]
	ldrh r1, [r1, #0x1c]
	muls r0, r1
	movs r1, #0x10
	ldrsh r1, [r3, r1]
	adds r0, r0, r1
	asrs r1, r0, #0x1f
	lsrs r1, r1, #0x1e
	adds r0, r1, r0
	ldr r1, [sp, #0x30]
	asrs r0, r0, #2
	ldr r1, [r1, #0x54]
	lsls r0, r0, #2
	adds r4, r0, r1
	ldr r1, [sp, #0x30]
	ldrh r0, [r1, #0x20]
	ldr r1, [sp, #0x18]
	muls r0, r1
	asrs r1, r0, #0x1f
	lsrs r1, r1, #0x1e
	adds r0, r1, r0
	ldr r1, [sp, #0x30]
	asrs r0, r0, #2
	ldr r1, [r1, #0x48]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r1, [r3, #0x20]
	lsls r1, r1, #2
	adds r6, r0, r1
	ldr r1, [sp, #0x18]
	adds r1, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0x18]
	ldr r1, [sp, #0x30]
	ldr r0, [r1, #0x40]
	cmp r0, #0
	beq _08014112
	movs r1, #0x24
	ldrsh r1, [r3, r1]
	ldr r2, [sp, #0x14]
	adds r0, r4, #0
	bl sub_803F464
_08014112
	add r3, sp, #0
	movs r0, #0x24
	ldrsh r0, [r3, r0]
	cmp r0, #0
	ble _080141A0
_0801411C
	ldr r1, [r4]
	ldr r0, [r6]
	lsls r2, r1, #0x18
	lsrs r2, r2, #0x18
	lsls r3, r0, #0x1c
	beq _08014132
	ldrb r3, [r5, #0xe]
	lsls r2, r0, #0x1c
	lsrs r2, r2, #0x1c
	lsls r3, r3, #4
	orrs r2, r3
_08014132
	mov ip, r2
	movs r2, #0xff
	lsls r2, r2, #8
	ands r2, r1
	lsls r3, r0, #0x14
	lsrs r3, r3, #0x1c
	beq _0801414C
	movs r2, #0xf
	ldrb r3, [r5, #0xe]
	lsls r2, r2, #8
	ands r2, r0
	lsls r3, r3, #0xc
	orrs r2, r3
_0801414C
	mov r3, ip
	orrs r3, r2
	movs r2, #0xff
	lsls r2, r2, #0x10
	mov ip, r3
	lsls r3, r0, #0xc
	ands r2, r1
	lsrs r3, r3, #0x1c
	beq _0801416A
	movs r2, #0xf
	ldrb r3, [r5, #0xe]
	lsls r2, r2, #0x10
	ands r2, r0
	lsls r3, r3, #0x14
	orrs r2, r3
_0801416A
	mov r3, ip
	orrs r2, r3
	lsrs r1, r1, #0x18
	lsls r1, r1, #0x18
	lsls r3, r0, #4
	lsrs r3, r3, #0x1c
	beq _08014188
	movs r1, #0xf
	lsls r1, r1, #0x18
	ands r0, r1
	b _08014182
_08014180
	b _080141AC
_08014182
	ldrb r1, [r5, #0xe]
	lsls r1, r1, #0x1c
	orrs r1, r0
_08014188
	orrs r1, r2
	adds r0, r1, #0
	stm r4!, {r0}
	movs r0, #0x24
	add r3, sp, #0
	ldrsh r0, [r3, r0]
	adds r7, #4
	lsls r7, r7, #0x10
	lsrs r7, r7, #0x10
	adds r6, #4
	cmp r7, r0
	blt _0801411C
_080141A0
	add r3, sp, #0
	movs r0, #0x28
	ldrsh r0, [r3, r0]
	ldr r1, [sp, #0x18]
	cmp r1, r0
	blt _080140AE
_080141AC
	add sp, #0x34
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

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
	ble _080142C0
	movs r0, #0x20
	ldrsh r0, [r3, r0]
	cmp r0, #0
	ble _080142C0
	ldr r1, [sp, #0x28]
	adds r1, #0x40
	str r1, [sp, #0x24]
_080141EA
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
	beq _08014248
	movs r1, #0x1c
	movs r2, #0
	adds r0, r4, #0
	ldrsh r1, [r3, r1]
	bl sub_803F464
_08014248
	add r3, sp, #0
	movs r0, #0x1c
	ldrsh r0, [r3, r0]
	cmp r0, #0
	ble _080142B6
_08014252
	ldr r1, [r4]
	ldr r0, [r5]
	lsls r2, r1, #0x18
	lsrs r2, r2, #0x18
	lsls r3, r0, #0x18
	beq _08014262
	lsls r2, r0, #0x18
	lsrs r2, r2, #0x18
_08014262
	mov ip, r2
	movs r2, #0xff
	lsls r2, r2, #8
	ands r2, r1
	lsls r3, r0, #0x10
	lsrs r3, r3, #0x18
	beq _08014276
	movs r2, #0xff
	lsls r2, r2, #8
	ands r2, r0
_08014276
	mov r3, ip
	orrs r3, r2
	movs r2, #0xff
	lsls r2, r2, #0x10
	mov ip, r3
	lsls r3, r0, #8
	ands r2, r1
	lsrs r3, r3, #0x18
	beq _0801428E
	movs r2, #0xff
	lsls r2, r2, #0x10
	ands r2, r0
_0801428E
	mov r3, ip
	lsrs r1, r1, #0x18
	lsls r1, r1, #0x18
	orrs r2, r3
	lsrs r3, r0, #0x18
	beq _0801429E
	lsrs r1, r0, #0x18
	lsls r1, r1, #0x18
_0801429E
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
	blt _08014252
_080142B6
	add r3, sp, #0
	movs r0, #0x20
	ldrsh r0, [r3, r0]
	cmp r7, r0
	b _080142C2
_080142C0
	b _080142C4
_080142C2
	blt _080141EA
_080142C4
	add sp, #0x2c
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	ALIGN
_080142CC DCDU gUnknown_0803E6A0
	END
