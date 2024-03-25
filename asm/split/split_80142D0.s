    INCLUDE asm/macros.inc
    AREA text, CODE

	IMPORT gUnknown_03003C40
	IMPORT gUnknown_03003EB8
	IMPORT gUnknown_0803E700
	IMPORT sub_80014E4
	IMPORT sub_80133A0
	IMPORT sub_80134B8
	IMPORT sub_80134F8
	IMPORT sub_801352C
	IMPORT sub_8013E2C
	IMPORT sub_803D498
	IMPORT sub_803D9F8
	IMPORT sub_803DA18
	IMPORT sub_803F464
	IMPORT sub_803F55C
	IMPORT sub_803F5FC
	IMPORT sub_803F774
	IMPORT sub_803F8BC
	IMPORT sub_803F928
	IMPORT sub_8040034

	thumb_func_start sub_80142D0
sub_80142D0 ;@ 0x080142D0
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
	ble _080143D6
	movs r0, #0x24
	ldrsh r0, [r3, r0]
	cmp r0, #0
	ble _080143D6
	ldr r3, [sp, #0x2c]
	ldrh r0, [r3]
	lsls r1, r0, #0x10
	orrs r0, r1
	adds r1, r7, #0
	adds r1, #0x40
	str r1, [sp, #0x30]
	str r0, [sp, #0x28]
_0801432C
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
	beq _08014380
	movs r0, #0x20
	ldrsh r0, [r3, r0]
	ldr r2, [sp, #0x28]
	lsls r1, r0, #1
	adds r0, r4, #0
	bl sub_803F464
_08014380
	add r3, sp, #0
	movs r0, #0x20
	ldrsh r0, [r3, r0]
	cmp r0, #0
	ble _080143CA
_0801438A
	ldr r1, [r4]
	ldrh r0, [r5]
	lsls r2, r1, #0x10
	lsrs r2, r2, #0x10
	lsls r3, r0, #0x18
	beq _0801439E
	lsls r2, r0, #0x18
	ldr r3, [sp, #0x2c]
	lsrs r2, r2, #0x17
	ldrh r2, [r3, r2]
_0801439E
	lsrs r1, r1, #0x10
	lsls r1, r1, #0x10
	lsls r3, r0, #0x10
	lsrs r3, r3, #0x18
	beq _080143B2
	lsrs r0, r0, #8
	ldr r3, [sp, #0x2c]
	lsls r0, r0, #1
	ldrh r0, [r3, r0]
	lsls r1, r0, #0x10
_080143B2
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
	blt _0801438A
_080143CA
	add r3, sp, #0
	movs r0, #0x24
	ldrsh r0, [r3, r0]
	ldr r1, [sp, #0x14]
	cmp r1, r0
	blt _0801432C
_080143D6
	add sp, #0x34
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	ALIGN

	thumb_func_start sub_80143E0
sub_80143E0 ;@ 0x080143E0
	push {r4, lr}
	adds r4, r0, #0
	bne _080143F8
	movs r0, #0x78
	bl sub_803D9F8
	adds r4, r0, #0
	bne _080143F8
	adds r0, r4, #0
_080143F2
	pop {r4}
	pop {r3}
	bx r3
_080143F8
	adds r0, r4, #0
	bl sub_80134B8
	ldr r0, _0801472C ;@ =_0803E700
	adds r1, r4, #0
	str r0, [r4]
	movs r0, #1
	strb r0, [r4, #0xc]
	movs r0, #0
	str r0, [r4, #0x54]
	str r0, [r4, #0x58]
	str r0, [r4, #0x5c]
	str r0, [r4, #0x60]
	str r0, [r4, #0x64]
	str r0, [r4, #0x68]
	str r0, [r4, #0x70]
	adds r1, #0x60
	strb r0, [r1, #0xe]
	strb r0, [r1, #0xf]
	strb r0, [r1, #0xc]
	strb r0, [r1, #0xd]
	adds r0, r4, #0
	adds r0, #0x70
	movs r1, #0xff
	strb r1, [r0, #4]
	strb r1, [r0, #5]
	adds r0, r4, #0
	bl sub_8013E2C
	adds r0, r4, #0
	b _080143F2

	non_word_aligned_thumb_func_start sub_8014436
sub_8014436 ;@ 0x08014436
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _0801472C ;@ =_0803E700
	adds r5, r1, #0
	str r0, [r4]
	ldr r1, [r4, #0x54]
	cmp r1, #0
	beq _08014450
	ldr r2, [r4, #0x58]
	ldr r3, [r4, #0x5c]
	adds r0, r4, #0
	bl sub_803F5FC
_08014450
	ldr r1, [r4, #0x60]
	cmp r1, #0
	beq _08014460
	ldr r2, [r4, #0x64]
	ldr r3, [r4, #0x68]
	adds r0, r4, #0
	bl sub_803F5FC
_08014460
	adds r0, r4, #0
	bl sub_803F55C
	movs r1, #0
	str r1, [r4, #0x54]
	adds r0, r4, #0
	adds r0, #0x60
	str r1, [r4, #0x60]
	strb r1, [r0, #0xe]
	strb r1, [r0, #0xf]
	adds r0, r4, #0
	bl sub_80134F8
	movs r1, #0
	adds r0, r4, #0
	bl sub_801352C
	cmp r5, #0
	beq _0801448C
	adds r0, r4, #0
	bl sub_803DA18
_0801448C
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start nullsub_46
nullsub_46 ;@ 0x08014492
	bx lr

	thumb_func_start sub_8014494
sub_8014494 ;@ 0x08014494
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	movs r0, #0xef
	movs r2, #0x9f
	cmp r1, #0
	beq _0801450C
	ldrh r3, [r4, #0xe]
	cmp r3, #0
	beq _0801450C
	ldr r1, [r4, #0x70]
	cmp r1, #0
	beq _080144C2
	adds r4, #0x54
	ldm r4!, {r1, r3, r5, r6}
	subs r4, #0x64
	str r6, [r4, #0x54]
	ldr r6, [r4, #0x64]
	str r6, [r4, #0x58]
	ldr r6, [r4, #0x68]
	adds r4, #0x60
	stm r4!, {r1, r3, r5}
	subs r4, #0x6c
	str r6, [r4, #0x5c]
_080144C2
	adds r6, r4, #0
	adds r6, #0x60
	ldrb r1, [r6, #0xe]
	movs r7, #0
	cmp r1, #0
	bls _08014570
_080144CE
	ldrb r0, [r6, #0xf]
	movs r5, #0
	cmp r0, #0
	bls _080144FE
_080144D6
	movs r0, #0xef
	add r3, sp, #0
	strh r0, [r3]
	movs r0, #0x9f
	strh r0, [r3, #2]
	ldrb r0, [r6, #0xf]
	ldr r1, [r4, #0x54]
	muls r0, r7
	adds r0, r0, r5
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, sp
	bl sub_8040034
	adds r5, #1
	ldrb r0, [r6, #0xf]
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r0, r5
	bhi _080144D6
_080144FE
	adds r7, #1
	ldrb r0, [r6, #0xe]
	lsls r7, r7, #0x18
	lsrs r7, r7, #0x18
	cmp r0, r7
	bhi _080144CE
	b _08014570
_0801450C
	cmp r1, #0
	bne _08014570
	ldrb r1, [r4, #0xc]
	ldr r3, _08014730 ;@ =gUnknown_03003C40
	lsls r1, r1, #2
	ldr r7, [r3, r1]
	cmp r7, #0
	beq _08014570
_0801451C
	ldrh r0, [r7, #0xe]
	cmp r0, #0
	beq _0801456A
	adds r5, r7, #0
	adds r5, #0x60
	ldrb r0, [r5, #0xe]
	movs r6, #0
	cmp r0, #0
	bls _0801456A
_0801452E
	ldrb r0, [r5, #0xf]
	movs r4, #0
	cmp r0, #0
	bls _0801455E
_08014536
	movs r0, #0xef
	add r3, sp, #0
	strh r0, [r3]
	movs r0, #0x9f
	strh r0, [r3, #2]
	ldrb r0, [r5, #0xf]
	ldr r1, [r7, #0x54]
	muls r0, r6
	adds r0, r0, r4
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, sp
	bl sub_8040034
	adds r4, #1
	ldrb r0, [r5, #0xf]
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	cmp r0, r4
	bhi _08014536
_0801455E
	adds r6, #1
	ldrb r0, [r5, #0xe]
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	cmp r0, r6
	bhi _0801452E
_0801456A
	ldr r7, [r7, #4]
	cmp r7, #0
	bne _0801451C
_08014570
	ldr r0, _08014734 ;@ =gUnknown_03003EB8
	ldr r0, [r0]
	bl sub_80014E4
	bl sub_803D498
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_8014582
sub_8014582 ;@ 0x08014582
	push {r0, r1, r4, r5, r6, r7, lr}
	sub sp, #0x1c
	cmp r1, #0
	beq _08014668
	ldr r0, [sp, #0x1c]
	ldrh r0, [r0, #0xe]
	cmp r0, #0
	beq _08014668
	ldr r0, [sp, #0x1c]
	ldr r0, [r0, #0x70]
	ldr r4, [sp, #0x1c]
	adds r4, #0x60
	cmp r0, #0
	beq _080145D4
	ldrb r0, [r4, #0xe]
	ldrb r1, [r4, #0xf]
	movs r5, #0
	muls r0, r1
	cmp r0, #0
	bls _080145D4
	movs r6, #0xef
	add r7, sp, #4
_080145AE
	add r3, sp, #0
	strh r6, [r3, #4]
	movs r0, #0x9f
	strh r0, [r3, #6]
	ldr r0, [sp, #0x1c]
	lsls r1, r5, #2
	ldr r0, [r0, #0x60]
	ldr r0, [r0, r1]
	adds r1, r7, #0
	bl sub_8040034
	ldrb r0, [r4, #0xe]
	ldrb r1, [r4, #0xf]
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	muls r0, r1
	cmp r0, r5
	bhi _080145AE
_080145D4
	ldr r0, [sp, #0x1c]
	movs r3, #0x1a
	ldrsh r0, [r0, r3]
	add r2, sp, #0x10
	add r1, sp, #0x14
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x1c]
	bl sub_803F774
	add r3, sp, #0
	ldrb r0, [r3, #0x10]
	movs r5, #0
	cmp r0, #0
	bls _080146D4
_080145F0
	ldr r0, [sp, #0x1c]
	movs r3, #0x18
	ldrsh r7, [r0, r3]
	add r3, sp, #0
	ldrb r0, [r3, #0x14]
	movs r6, #0
	cmp r0, #0
	bls _08014646
_08014600
	add r3, sp, #0
	strh r7, [r3, #4]
	ldr r0, [sp, #0xc]
	strh r0, [r3, #6]
	ldr r0, [sp, #0x1c]
	ldr r1, [r0, #0x54]
	ldrb r0, [r4, #0xf]
	muls r0, r5
	adds r0, r0, r6
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	add r1, sp, #4
	bl sub_8040034
	ldr r0, [sp, #0x1c]
	ldr r1, [r0, #0x54]
	ldrb r0, [r4, #0xf]
	muls r0, r5
	adds r0, r0, r6
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	add r1, sp, #8
	bl sub_803F8BC
	add r3, sp, #0
	ldrh r0, [r3, #8]
	adds r6, #1
	lsls r6, r6, #0x18
	adds r0, r0, r7
	lsls r7, r0, #0x10
	ldrb r0, [r3, #0x14]
	asrs r7, r7, #0x10
	lsrs r6, r6, #0x18
	cmp r6, r0
	blo _08014600
_08014646
	add r3, sp, #0
	ldrh r0, [r3, #0xa]
	ldr r1, [sp, #0xc]
	adds r5, #1
	adds r0, r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #0xc]
	ldr r1, [sp, #0x1c]
	movs r0, #0
	strh r0, [r1, #0xe]
	ldrb r0, [r3, #0x10]
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, r0
	blo _080145F0
	b _080146D4
_08014668
	b _0801466A
_0801466A
	cmp r1, #0
	bne _080146D4
	ldr r0, [sp, #0x1c]
	ldr r1, _08014730 ;@ =gUnknown_03003C40
	ldrb r0, [r0, #0xc]
	lsls r0, r0, #2
	ldr r5, [r1, r0]
	cmp r5, #0
	beq _080146D4
_0801467C
	ldrh r0, [r5, #0xe]
	cmp r0, #0
	beq _08014718
	movs r3, #0x1a
	ldrsh r0, [r5, r3]
	add r2, sp, #0x10
	add r1, sp, #0x14
	str r0, [sp, #0xc]
	adds r0, r5, #0
	bl sub_803F774
	add r3, sp, #0
	ldrb r0, [r3, #0x10]
	movs r6, #0
	cmp r0, #0
	bls _08014714
	adds r0, r5, #0
	adds r0, #0x60
	str r0, [sp, #0x18]
_080146A2
	movs r3, #0x18
	ldrsh r7, [r5, r3]
	add r3, sp, #0
	ldrb r0, [r3, #0x14]
	movs r4, #0
	cmp r0, #0
	bls _080146FA
_080146B0
	add r3, sp, #0
	strh r7, [r3, #4]
	ldr r0, [sp, #0xc]
	strh r0, [r3, #6]
	ldr r1, [r5, #0x54]
	ldr r0, [sp, #0x18]
	ldrb r0, [r0, #0xf]
	muls r0, r6
	adds r0, r0, r4
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	add r1, sp, #4
	bl sub_8040034
	ldr r1, [r5, #0x54]
	ldr r0, [sp, #0x18]
	ldrb r0, [r0, #0xf]
	b _080146D6
_080146D4
	b _0801471E
_080146D6
	muls r0, r6
	adds r0, r0, r4
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	add r1, sp, #8
	bl sub_803F8BC
	add r3, sp, #0
	ldrh r0, [r3, #8]
	adds r4, #1
	lsls r4, r4, #0x18
	adds r0, r0, r7
	lsls r7, r0, #0x10
	ldrb r0, [r3, #0x14]
	asrs r7, r7, #0x10
	lsrs r4, r4, #0x18
	cmp r4, r0
	blo _080146B0
_080146FA
	add r3, sp, #0
	ldrh r0, [r3, #0xa]
	ldr r1, [sp, #0xc]
	adds r6, #1
	adds r0, r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #0xc]
	ldrb r0, [r3, #0x10]
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	cmp r6, r0
	blo _080146A2
_08014714
	movs r0, #0
	strh r0, [r5, #0xe]
_08014718
	ldr r5, [r5, #4]
	cmp r5, #0
	bne _0801467C
_0801471E
	ldr r1, [sp, #0x1c]
	movs r0, #0
	strh r0, [r1, #0xe]
	add sp, #0x24
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	ALIGN
_0801472C DCDU gUnknown_0803E700
_08014730 DCDU gUnknown_03003C40
_08014734 DCDU gUnknown_03003EB8
	END