    INCLUDE asm/macros.inc
    AREA text, CODE

	IMPORT gUnknown_080414B8
	IMPORT gUnknown_0804AC68
	IMPORT sub_803C04C

	non_word_aligned_thumb_func_start sub_800C482
sub_800C482 ;@ 0x0800C482
	push {r4, r5}
	movs r4, #0xc1
	adds r2, r0, #0
	adds r0, r1, #0
	lsls r4, r4, #5
	cmp r1, #0x20
	bhs _0800C4A4
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r2
	adds r1, r1, r4
	ldrb r2, [r1, #0xc]
	adds r2, #1
	strb r2, [r1, #0xc]
_0800C4A0
	pop {r4, r5}
	bx lr
_0800C4A4
	movs r0, #0xcd
	lsls r0, r0, #5
	adds r1, r2, r0
	ldrb r0, [r1, #0xa]
	lsls r3, r0, #1
	adds r3, r3, r0
	lsls r3, r3, #2
	adds r3, r3, r2
	adds r3, r3, r4
	ldrb r3, [r3, #0xd]
	strb r3, [r1, #0xa]
	lsls r3, r0, #1
	adds r3, r3, r0
	lsls r3, r3, #2
	adds r3, r3, r2
	adds r3, r3, r4
	ldrb r5, [r3, #0xc]
	adds r5, #1
	strb r5, [r3, #0xc]
	ldrb r5, [r1, #0xb]
	strb r5, [r3, #0xd]
	movs r5, #0xff
	strb r5, [r3, #0xe]
	ldrb r3, [r1, #0xd]
	cmp r3, #0
	beq _0800C4E6
	ldrb r5, [r1, #0xb]
	lsls r3, r5, #1
	adds r3, r3, r5
	lsls r3, r3, #2
	adds r2, r3, r2
	adds r2, r2, r4
	strb r0, [r2, #0xe]
_0800C4E6
	strb r0, [r1, #0xb]
	ldrb r2, [r1, #0xd]
	adds r2, #1
	strb r2, [r1, #0xd]
	b _0800C4A0

	thumb_func_start sub_800C4F0
sub_800C4F0 ;@ 0x0800C4F0
	lsls r2, r1, #1
	adds r2, r2, r1
	lsls r2, r2, #2
	ldr r3, _0800C8A4 ;@ =0x00001824
	adds r2, r2, r0
	adds r2, r2, r3
	push {r4, r5, r6, r7}
	ldrb r3, [r2, #8]
	adds r3, #0xff
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	strb r3, [r2, #8]
	bne _0800C55A
	movs r3, #0xcd
	lsls r3, r3, #5
	adds r4, r0, r3
	ldrb r3, [r4, #0xb]
	cmp r3, r1
	bne _0800C51A
	ldrb r3, [r2, #9]
	strb r3, [r4, #0xb]
_0800C51A
	ldrb r3, [r2, #9]
	movs r6, #0xc1
	lsls r6, r6, #5
	cmp r3, #0x20
	bhs _0800C534
	adds r7, r3, #0
	lsls r3, r7, #1
	adds r3, r3, r7
	lsls r3, r3, #2
	ldrb r5, [r2, #0xa]
	adds r3, r3, r0
	adds r3, r3, r6
	strb r5, [r3, #0xe]
_0800C534
	ldrb r3, [r2, #0xa]
	cmp r3, #0x20
	bhs _0800C54A
	adds r7, r3, #0
	lsls r3, r7, #1
	adds r3, r3, r7
	lsls r3, r3, #2
	ldrb r5, [r2, #9]
	adds r0, r3, r0
	adds r0, r0, r6
	strb r5, [r0, #0xd]
_0800C54A
	movs r0, #0
	strb r0, [r2, #0xb]
	ldrb r0, [r4, #0xa]
	strb r0, [r2, #9]
	strb r1, [r4, #0xa]
	ldrb r0, [r4, #0xd]
	adds r0, #0xff
	strb r0, [r4, #0xd]
_0800C55A
	pop {r4, r5, r6, r7}
	bx lr

	non_word_aligned_thumb_func_start sub_800C55E
sub_800C55E ;@ 0x0800C55E
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r0, [r0, #0x78]
	movs r6, #1
	orrs r0, r6
	sub sp, #0x24
	str r0, [r5, #0x78]
	ldrh r0, [r1, #0x28]
	adds r4, r1, #0
	ldr r1, _0800C8A4 ;@ =0x00001824
	lsls r0, r0, #0x12
	lsrs r0, r0, #0x1b
	lsls r3, r0, #1
	adds r0, r3, r0
	lsls r0, r0, #2
	adds r0, r0, r5
	adds r1, r0, r1
	str r1, [sp, #0x18]
	ldr r0, [r4]
	lsls r0, r0, #0x1b
	bpl _0800C60C
	ldr r1, [sp, #0x18]
	ldrb r0, [r1, #0xb]
	cmp r0, #0
	bne _0800C600
	ldrh r0, [r4, #0x24]
	lsls r1, r6, #0xc
	ldr r7, _0800C8A8 ;@ =gUnknown_080414B8
	adds r0, r0, r1
	lsls r0, r0, #0x12
	lsrs r0, r0, #0x11
	ldrsh r0, [r7, r0]
	lsls r1, r0, #2
	movs r3, #0x20
	ldrsh r0, [r4, r3]
	bl sub_803C04C
	ldr r1, [sp, #0x18]
	strh r0, [r1]
	ldrh r0, [r4, #0x24]
	lsls r0, r0, #0x12
	lsrs r0, r0, #0x11
	ldrsh r0, [r7, r0]
	lsls r0, r0, #2
	NEGS r1, r0
	movs r3, #0x22
	ldrsh r0, [r4, r3]
	bl sub_803C04C
	ldr r1, [sp, #0x18]
	strh r0, [r1, #4]
	ldrh r0, [r4, #0x24]
	lsls r0, r0, #0x12
	lsrs r0, r0, #0x11
	ldrsh r0, [r7, r0]
	lsls r1, r0, #2
	movs r3, #0x20
	ldrsh r0, [r4, r3]
	bl sub_803C04C
	ldr r1, [sp, #0x18]
	strh r0, [r1, #2]
	ldrh r0, [r4, #0x24]
	lsls r1, r6, #0xc
	adds r0, r0, r1
	lsls r0, r0, #0x12
	lsrs r0, r0, #0x11
	ldrsh r0, [r7, r0]
	lsls r1, r0, #2
	movs r3, #0x22
	ldrsh r0, [r4, r3]
	bl sub_803C04C
	ldr r1, [sp, #0x18]
	strh r0, [r1, #6]
	ldr r1, [sp, #0x18]
	movs r0, #0x33
	lsls r0, r0, #7
	adds r0, r5, r0
	strb r6, [r1, #0xb]
	str r6, [r0, #0x24]
_0800C600
	ldr r0, [r4]
	movs r1, #0x10
	bics r0, r1
	movs r1, #0x80
	orrs r0, r1
	str r0, [r4]
_0800C60C
	ldr r0, [r4, #0x44]
	ldr r2, [r4, #0x10]
	cmp r0, #0
	beq _0800C616
	ldr r2, [r4, #0x48]
_0800C616
	ldr r7, [r4, #0x18]
	cmp r7, #0
	beq _0800C620
	adds r1, r7, #0
	b _0800C630
_0800C620
	ldr r0, [r5, #0x18]
	ldr r1, [r2]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r3, r1, #2
	adds r1, r3, r1
	lsls r1, r1, #2
	adds r1, r0, r1
_0800C630
	ldr r3, [r4, #0x14]
	adds r0, r6, #0
	mov ip, r3
	adds r3, r6, #0
	cmp r7, #0
	bne _0800C642
	ldr r2, [r2]
	lsls r2, r2, #0xc
	lsrs r3, r2, #0x1c
_0800C642
	subs r2, r3, #1
	str r2, [sp, #0x14]
	adds r3, r2, #1
	beq _0800C72E
	movs r3, #3
	lsls r3, r3, #0xb
	adds r3, r5, r3
	movs r2, #0x13
	lsls r2, r2, #8
	adds r2, r5, r2
	str r3, [sp, #0x20]
_0800C658
	ldr r0, [r4]
	lsls r0, r0, #0x1a
	bpl _0800C710
	ldr r0, [r4, #0x18]
	cmp r0, #0
	ldr r0, [r1]
	beq _0800C670
	lsls r0, r0, #4
	ldr r3, [r2, #0x14]
	lsrs r0, r0, #4
	str r0, [r3, #4]
	b _0800C68A
_0800C670
	ldr r6, _0800C8AC ;@ =0x0FFFFFFF
	adds r3, r6, #0
	bics r3, r0
	bne _0800C67E
	ldr r0, [r2, #0x14]
	str r6, [r0, #4]
	b _0800C68A
_0800C67E
	lsls r0, r0, #4
	ldr r3, [r5, #0x20]
	lsrs r0, r0, #2
	adds r0, r3, r0
	ldr r3, [r2, #0x14]
	str r0, [r3, #4]
_0800C68A
	mov r3, ip
	ldr r0, [r3]
	ldr r3, _0800C8B0 ;@ =0x06010000
	lsrs r0, r0, #0x15
	lsls r0, r0, #5
	adds r0, r0, r3
	ldr r3, [r2, #0x14]
	str r0, [r3]
	ldr r0, [r1, #4]
	lsls r3, r0, #0x14
	lsrs r3, r3, #0x18
	adds r3, #1
	lsrs r6, r3, #1
	lsls r3, r0, #0xc
	lsrs r3, r3, #0x18
	adds r3, #1
	lsrs r3, r3, #1
	muls r6, r3
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	movs r3, #0x40
	cmp r0, #9
	beq _0800C6BA
	movs r3, #0x20
_0800C6BA
	ldr r0, [r2, #0x14]
	muls r6, r3
	strh r6, [r0, #8]
	ldr r0, [r2, #0x14]
	ldr r6, _0800C8AC ;@ =0x0FFFFFFF
	ldr r3, [r0, #4]
	cmp r3, r6
	beq _0800C6D2
	ldr r3, [r1]
	lsrs r3, r3, #0x1c
	strh r3, [r0, #0xa]
	b _0800C6DA
_0800C6D2
	movs r3, #0
	str r3, [r0, #4]
	ldr r0, [r2, #0x14]
	strh r3, [r0, #0xa]
_0800C6DA
	ldr r0, [r2, #0x14]
	adds r0, #0xc
	str r0, [r2, #0x14]
	ldr r0, [r4]
	lsls r0, r0, #0x18
	bmi _0800C710
	mov r3, ip
	ldr r3, [r3]
	lsrs r0, r3, #0x15
	lsls r3, r3, #0xb
	lsrs r6, r3, #0x18
	lsls r3, r6, #2
	adds r3, r3, r6
	lsls r3, r3, #1
	ldr r6, _0800C8B4 ;@ =0x0000131C
	adds r3, r3, r5
	adds r3, r3, r6
	ldrh r6, [r3]
	lsls r0, r0, #0x16
	lsrs r6, r6, #0xa
	lsls r6, r6, #0xa
	lsrs r0, r0, #0x16
	orrs r0, r6
	strh r0, [r3]
	ldr r3, [sp, #0x20]
	movs r0, #1
	str r0, [r3, #0x18]
_0800C710
	ldr r0, [r4]
	lsls r0, r0, #0x18
	bpl _0800C7EA
	mov r3, ip
	ldr r0, [r3]
	lsls r0, r0, #0xb
	lsrs r0, r0, #0x18
	lsls r3, r0, #2
	adds r0, r3, r0
	lsls r0, r0, #1
	ldr r3, _0800C8B8 ;@ =0x00001318
	adds r0, r0, r5
	adds r0, r0, r3
	ldrh r3, [r4, #0x26]
	b _0800C730
_0800C72E
	b _0800C91A
_0800C730
	strh r3, [r0]
	ldrh r3, [r4, #0x28]
	movs r7, #3
	lsls r7, r7, #0xe
	strh r3, [r0, #2]
	ldrh r3, [r4, #0x2a]
	strh r3, [r0, #4]
	ldr r3, [r1, #4]
	lsls r6, r3, #0x14
	lsrs r6, r6, #0x18
	lsls r3, r3, #0xc
	lsrs r3, r3, #0x18
	lsls r6, r6, #4
	orrs r3, r6
	ldr r6, _0800C8BC ;@ =gUnknown_0804AC68
	ldrb r3, [r6, r3]
	ldrh r6, [r0, #2]
	bics r6, r7
	lsls r7, r3, #0x1e
	lsrs r7, r7, #0x10
	orrs r6, r7
	strh r6, [r0, #2]
	mov lr, r6
	ldrh r6, [r0]
	movs r7, #3
	lsls r3, r3, #0x1c
	lsrs r3, r3, #0x1e
	lsls r7, r7, #0xe
	bics r6, r7
	lsls r3, r3, #0xe
	orrs r6, r3
	strh r6, [r0]
	str r6, [sp, #0x1c]
	ldr r3, [r1, #4]
	lsls r6, r3, #0x14
	lsls r3, r3, #0xc
	lsrs r3, r3, #0x18
	lsls r3, r3, #2
	lsrs r6, r6, #0x18
	lsls r7, r6, #2
	adds r3, #4
	str r3, [sp, #0xc]
	adds r7, #4
	str r7, [sp, #0x10]
	ldrh r6, [r0, #4]
	mov r3, ip
	ldr r3, [r3]
	lsrs r6, r6, #0xa
	lsls r3, r3, #1
	lsrs r3, r3, #0x16
	lsls r6, r6, #0xa
	orrs r3, r6
	strh r3, [r0, #4]
	adds r6, r3, #0
	mov r3, ip
	ldr r3, [r3]
	lsls r3, r3, #0x13
	lsrs r7, r3, #0x1b
	adds r3, r6, #0
	movs r6, #0xf
	lsls r6, r6, #0xc
	bics r3, r6
	lsls r6, r7, #0xc
	orrs r3, r6
	strh r3, [r0, #4]
	ldrb r3, [r4, #5]
	strb r3, [r0, #6]
	ldrh r3, [r4, #0x26]
	lsls r3, r3, #0x16
	lsrs r6, r3, #0x1e
	beq _0800C892
	lsrs r3, r3, #0x1e
	cmp r3, #3
	bne _0800C7EC
	mov r6, lr
	lsrs r3, r6, #9
	ldr r7, [sp, #0x10]
	lsls r3, r3, #9
	subs r6, r6, r7
	lsls r6, r6, #0x17
	lsrs r6, r6, #0x17
	orrs r3, r6
	strh r3, [r0, #2]
	ldr r6, [sp, #0x1c]
	ldr r7, [sp, #0xc]
	lsrs r3, r6, #8
	subs r6, r6, r7
	lsls r6, r6, #0x18
	lsls r3, r3, #8
	lsrs r6, r6, #0x18
	orrs r3, r6
	strh r3, [r0]
	b _0800C814
_0800C7EA
	b _0800C906
_0800C7EC
	ldr r7, [sp, #0x10]
	mov r6, lr
	asrs r3, r7, #1
	subs r3, r6, r3
	lsls r3, r3, #0x17
	lsrs r6, r6, #9
	lsls r6, r6, #9
	lsrs r3, r3, #0x17
	orrs r3, r6
	strh r3, [r0, #2]
	ldr r3, [sp, #0xc]
	ldr r6, [sp, #0x1c]
	asrs r3, r3, #1
	subs r3, r6, r3
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	lsrs r6, r6, #8
	lsls r6, r6, #8
	orrs r3, r6
	strh r3, [r0]
_0800C814
	ldr r7, [sp, #0x10]
	movs r3, #0x10
	asrs r6, r7, #1
	ldrsh r7, [r1, r3]
	movs r3, #0x20
	subs r7, r6, r7
	ldrsh r6, [r4, r3]
	muls r7, r6
	muls r7, r6
	asrs r3, r7, #0x10
	mov lr, r3
	ldr r3, [sp, #0xc]
	asrs r6, r3, #1
	movs r3, #0x12
	ldrsh r7, [r1, r3]
	movs r3, #0x22
	subs r7, r6, r7
	ldrsh r6, [r4, r3]
	muls r7, r6
	muls r7, r6
	asrs r3, r7, #0x10
	str r3, [sp, #8]
	ldr r7, [sp, #0x18]
	movs r3, #0
	ldrsh r6, [r7, r3]
	mov r3, lr
	muls r6, r3
	movs r3, #2
	ldrsh r7, [r7, r3]
	ldr r3, [sp, #8]
	muls r7, r3
	subs r3, r6, r7
	asrs r7, r3, #8
	str r7, [sp, #4]
	ldr r7, [sp, #0x18]
	mov r6, lr
	ldrh r3, [r7, #4]
	NEGS r3, r3
	muls r3, r6
	ldrh r6, [r7, #6]
	ldr r7, [sp, #8]
	muls r6, r7
	adds r3, r3, r6
	asrs r7, r3, #8
	ldrh r3, [r0, #2]
	mov lr, r7
	ldr r7, [sp, #4]
	lsrs r6, r3, #9
	adds r3, r3, r7
	lsls r3, r3, #0x17
	lsrs r3, r3, #0x17
	lsls r6, r6, #9
	orrs r3, r6
	strh r3, [r0, #2]
	ldrh r3, [r0]
	lsrs r6, r3, #8
	add r3, lr
	lsls r3, r3, #0x18
	lsls r6, r6, #8
	lsrs r3, r3, #0x18
	orrs r3, r6
	strh r3, [r0]
	b _0800C900
_0800C892
	b _0800C894
_0800C894
	ldrh r3, [r4, #0x28]
	lsls r3, r3, #0x13
	bpl _0800C8C0
	movs r3, #0x10
	ldrsh r6, [r1, r3]
	ldr r7, [sp, #0x10]
	subs r3, r7, r6
	b _0800C8C6
	ALIGN
_0800C8A4 DCDU 0x00001824
_0800C8A8 DCDU gUnknown_080414B8
_0800C8AC DCDU 0x0FFFFFFF
_0800C8B0 DCDU 0x06010000
_0800C8B4 DCDU 0x0000131C
_0800C8B8 DCDU 0x00001318
_0800C8BC DCDU gUnknown_0804AC68
_0800C8C0
	movs r3, #0x10
	ldrsh r6, [r1, r3]
	adds r3, r6, #0
_0800C8C6
	mov r7, lr
	subs r3, r7, r3
	mov r6, lr
	lsrs r6, r6, #9
	lsls r3, r3, #0x17
	lsrs r3, r3, #0x17
	lsls r6, r6, #9
	orrs r3, r6
	strh r3, [r0, #2]
	ldrh r3, [r4, #0x28]
	lsls r3, r3, #0x12
	bpl _0800C8E8
	movs r3, #0x12
	ldrsh r6, [r1, r3]
	ldr r3, [sp, #0xc]
	subs r3, r3, r6
	b _0800C8EE
_0800C8E8
	movs r3, #0x12
	ldrsh r6, [r1, r3]
	adds r3, r6, #0
_0800C8EE
	ldr r6, [sp, #0x1c]
	ldr r7, [sp, #0x1c]
	lsrs r6, r6, #8
	subs r3, r7, r3
	lsls r3, r3, #0x18
	lsls r6, r6, #8
	lsrs r3, r3, #0x18
	orrs r3, r6
	strh r3, [r0]
_0800C900
	ldr r3, [sp, #0x20]
	movs r0, #1
	str r0, [r3, #0x18]
_0800C906
	ldr r0, [sp, #0x14]
	mov r3, ip
	adds r3, #8
	subs r0, #1
	mov ip, r3
	adds r1, #0x14
	adds r3, r0, #1
	str r0, [sp, #0x14]
	beq _0800C91A
	b _0800C658
_0800C91A
	ldr r0, [r4]
	movs r1, #0x20
	bics r0, r1
	movs r1, #0x40
	bics r0, r1
	movs r1, #0x80
	bics r0, r1
	str r0, [r4]
	ldr r0, [r5, #0x78]
	lsrs r0, r0, #1
	lsls r0, r0, #1
	str r0, [r5, #0x78]
	add sp, #0x24
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
