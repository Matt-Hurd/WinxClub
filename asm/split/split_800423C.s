	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_03003EA4
	IMPORT sub_8002230
	IMPORT __16__rt_sdiv
	IMPORT sub_8040504

	thumb_func_start sub_800423C
sub_800423C
	push {r0, r1, r2, r4, r5, r6, r7, lr}
	sub sp, #0x20
	adds r4, r1, #0
	movs r1, #1
	ldr r0, [sp, #0x20]
	lsls r1, r1, #0xb
	adds r6, r2, #0
	adds r2, r0, r1
	str r2, [sp, #0x1c]
	ldr r0, [r2, #0x28]
	movs r1, #2
	orrs r0, r1
	str r0, [r2, #0x28]
	ldr r5, [r4, #0x50]
	movs r1, #0x21
	ldr r0, [r5, #0x18]
	lsls r1, r1, #6
	str r0, [sp, #0x18]
	ldr r0, _0800463C
	ldr r0, [r0]
	adds r0, r0, r1
	subs r0, r4, r0
	bl sub_8040504
	ldr r0, [r4, #0x48]
	lsls r2, r0, #0x15
	lsls r0, r0, #0x15
	lsls r0, r1, #2
	ldr r1, [sp, #0x20]
	adds r0, r0, r1
	ldr r7, [r0, #0xc]
	ldr r1, [r6, #4]
	movs r0, #0
	cmp r1, #0
	bgt _08004284
	movs r0, #0x14
_08004284
	ldr r2, [r4, #0x40]
	ldr r3, [r4, #0x38]
	asrs r1, r2, #0x13
	asrs r6, r3, #0x13
	cmp r1, r6
	bne _0800429C
	lsls r6, r2, #0xd
	lsrs r6, r6, #0x1d
	bne _080042AA
	lsls r6, r3, #0xd
	lsrs r6, r6, #0x1d
	beq _080042AA
_0800429C
	movs r3, #0x1f
	lsls r2, r2, #0xd
	lsrs r2, r2, #0x1d
	bne _080042A6
	movs r3, #0x1e
_080042A6
	str r3, [sp, #4]
	b _080042B6
_080042AA
	movs r2, #0x1f
	lsls r3, r3, #0xd
	lsrs r3, r3, #0x1d
	bne _080042B4
	movs r2, #0x1e
_080042B4
	str r2, [sp, #4]
_080042B6
	ldr r2, [r4, #0x44]
	asrs r2, r2, #0x13
	adds r0, r2, r0
	str r0, [sp, #0x14]
	ldrh r0, [r5, #0xc]
	str r0, [sp, #0x10]
	bl __16__rt_sdiv
	ldrh r0, [r5, #0xe]
	adds r6, r1, #0
	ldr r1, [sp, #0x14]
	adds r5, r0, #0
	bl __16__rt_sdiv
	cmp r6, #0
	bge _080042DA
	ldr r0, [sp, #0x10]
	adds r6, r0, r6
_080042DA
	cmp r1, #0
	bge _080042E0
	adds r1, r5, r1
_080042E0
	ldr r0, [sp, #0x18]
	lsls r2, r6, #1
	adds r0, r0, r2
	ldr r2, [sp, #0x10]
	muls r2, r1
	lsls r1, r2, #1
	adds r5, r0, r1
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #4]
	subs r6, r0, r6
	movs r0, #0
	str r0, [sp]
	cmp r1, #0
	ble _080043E0
	ldr r0, [sp, #0x20]
	adds r0, #8
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x20]
	adds r0, #4
	str r0, [sp, #8]
_08004308
	ldrh r0, [r5]
	lsrs r1, r0, #0xf
	lsls r1, r1, #0x1f
	ldr r1, [r4, #0x54]
	ldr r1, [r1, #0x10]
	beq _080043A2
	lsls r0, r0, #0x11
	lsrs r0, r0, #0xf
	mov ip, r1
	add ip, r0
	adds r2, r1, #0
	mov r1, ip
	ldr r1, [r1]
	ldr r0, [r4, #0x30]
	mov lr, r1
	lsls r1, r1, #0xc
	lsrs r1, r1, #0x1a
	lsls r3, r1, #1
	adds r1, r3, r1
	lsls r1, r1, #3
	adds r0, r0, r1
	mov r1, lr
	lsls r1, r1, #0x12
	ldr r0, [r0, #0xc]
	lsrs r1, r1, #0x11
	adds r0, r0, r1
	ldrh r0, [r0]
	mov lr, r2
	ldr r2, _08004640
	lsls r0, r0, #0x11
	lsrs r0, r0, #0xf
	add lr, r0
	mov r1, lr
	ldr r0, [r1]
	movs r3, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xe
	adds r0, r0, r7
	ldr r1, [r0]
	lsls r3, r3, #0xb
	ands r2, r1
	subs r1, r1, r3
	ldr r3, _08004644
	ands r1, r3
	orrs r1, r2
	str r1, [r0]
	lsls r0, r1, #0xb
	lsrs r0, r0, #0x16
	bne _08004394
	mov r1, lr
	ldr r0, [sp, #0xc]
	ldr r1, [r1]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0xe
	ldr r1, [r7, r1]
	lsls r2, r1, #0xa
	bmi _0800437C
	ldr r0, [sp, #8]
_0800437C
	lsls r2, r1, #0x15
	lsls r1, r1, #0xa
	lsrs r1, r1, #0x1f
	lsrs r2, r2, #0x15
	lsls r2, r1
	lsls r1, r2, #2
	ldr r2, [sp, #0x1c]
	ldr r2, [r2, #0x20]
	adds r1, r1, r2
	ldr r2, [r0]
	str r2, [r1]
	str r1, [r0]
_08004394
	ldr r0, _0800463C
	adds r2, r4, #0
	mov r1, ip
	ldr r0, [r0]
	bl sub_8002230
	b _080043FC
_080043A2
	lsls r0, r0, #0x11
	lsrs r0, r0, #0xf
	mov ip, r1
	add ip, r0
	mov r1, ip
	ldr r0, [r1]
	ldr r2, _08004640
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xe
	adds r0, r0, r7
	ldr r1, [r0]
	movs r3, #1
	lsls r3, r3, #0xb
	ands r2, r1
	subs r1, r1, r3
	ldr r3, _08004644
	ands r1, r3
	orrs r1, r2
	str r1, [r0]
	lsls r0, r1, #0xb
	lsrs r0, r0, #0x16
	bne _080043FC
	mov r1, ip
	ldr r0, [sp, #0xc]
	ldr r1, [r1]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0xe
	ldr r1, [r7, r1]
	lsls r2, r1, #0xa
	bmi _080043E4
	b _080043E2
_080043E0
	b _0800441C
_080043E2
	ldr r0, [sp, #8]
_080043E4
	lsls r2, r1, #0x15
	lsls r1, r1, #0xa
	lsrs r1, r1, #0x1f
	lsrs r2, r2, #0x15
	lsls r2, r1
	lsls r1, r2, #2
	ldr r2, [sp, #0x1c]
	ldr r2, [r2, #0x20]
	adds r1, r1, r2
	ldr r2, [r0]
	str r2, [r1]
	str r1, [r0]
_080043FC
	subs r6, #1
	bne _0800440C
	ldr r0, [r4, #0x50]
	ldrh r6, [r0, #0xc]
	lsls r0, r6, #1
	subs r0, #2
	subs r5, r5, r0
	b _0800440E
_0800440C
	adds r5, #2
_0800440E
	ldr r0, [sp]
	ldr r1, [sp, #4]
	adds r0, #1
	str r0, [sp]
	cmp r0, r1
	bge _0800441C
	b _08004308
_0800441C
	ldr r2, [sp, #0x1c]
	movs r1, #2
	ldr r0, [r2, #0x28]
	bics r0, r1
	str r0, [r2, #0x28]
	add sp, #0x2c
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_800442E
sub_800442E
	push {r0, r1, r2, r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, _0800463C
	adds r5, r1, #0
	movs r1, #0x21
	ldr r0, [r0]
	lsls r1, r1, #6
	adds r0, r0, r1
	adds r6, r3, #0
	subs r0, r5, r0
	sub sp, #0x14
	bl sub_8040504
	lsls r0, r1, #2
	adds r0, r0, r4
	ldr r0, [r0, #0xc]
	ldr r2, [r5]
	ldr r3, [r5, #0x48]
	movs r1, #6
	lsls r3, r3, #0x15
	bmi _0800445A
	movs r1, #5
_0800445A
	lsls r3, r6, #1
	adds r2, r3, r2
	ldr r6, [r5, #0x30]
	ldr r3, [sp, #0x1c]
	ldr r3, [r3]
	mov ip, r3
	lsls r3, r3, #0xc
	lsrs r7, r3, #0x1a
	lsls r3, r7, #1
	adds r3, r3, r7
	lsls r3, r3, #3
	adds r3, r6, r3
	ldr r6, [r3, #8]
	mov r3, ip
	lsls r3, r3, #0x12
	lsrs r3, r3, #0x11
	adds r3, r6, r3
	ldr r6, [r5, #0x54]
	ldr r7, _08004640
	ldr r6, [r6, #0x10]
	ldrh r3, [r3]
	lsls r3, r3, #0x11
	lsrs r3, r3, #0xf
	adds r6, r6, r3
	str r6, [sp]
	ldr r3, [r6]
	lsls r3, r3, #0x10
	lsrs r3, r3, #0xe
	mov ip, r3
	add ip, r0
	mov r6, ip
	ldr r3, [r6]
	adds r6, r3, #0
	ands r3, r7
	movs r7, #1
	lsls r7, r7, #0xb
	subs r6, r6, r7
	ldr r7, _08004644
	ands r6, r7
	orrs r3, r6
	mov r6, ip
	str r3, [r6]
	adds r6, r4, #0
	adds r6, #8
	mov ip, r6
	adds r6, r4, #4
	mov lr, r6
	movs r6, #1
	lsls r6, r6, #0xb
	adds r7, r4, r6
	lsls r3, r3, #0xb
	lsrs r3, r3, #0x16
	cmp r3, #0
	str r7, [sp, #0x10]
	bne _080044F2
	ldr r6, [sp]
	mov r3, ip
	ldr r6, [r6]
	lsls r6, r6, #0x10
	lsrs r6, r6, #0xe
	ldr r6, [r0, r6]
	lsls r7, r6, #0xa
	bmi _080044DA
	mov r3, lr
_080044DA
	lsls r7, r6, #0x15
	lsls r6, r6, #0xa
	lsrs r6, r6, #0x1f
	lsrs r7, r7, #0x15
	lsls r7, r6
	lsls r6, r7, #2
	ldr r7, [sp, #0x10]
	ldr r7, [r7, #0x20]
	adds r6, r6, r7
	ldr r7, [r3]
	str r7, [r6]
	str r6, [r3]
_080044F2
	ldr r6, [r5, #0x30]
	ldr r3, [sp, #0x1c]
	ldr r3, [r3]
	str r3, [sp, #0xc]
	lsls r3, r3, #0xc
	lsrs r7, r3, #0x1a
	lsls r3, r7, #1
	adds r3, r3, r7
	lsls r3, r3, #3
	adds r3, r6, r3
	ldr r6, [r3, #0xc]
	ldr r3, [sp, #0xc]
	lsls r3, r3, #0x12
	lsrs r3, r3, #0x11
	adds r3, r6, r3
	ldrh r3, [r3]
	ldr r6, [r5, #0x54]
	ldr r6, [r6, #0x10]
	lsls r3, r3, #0x11
	lsrs r3, r3, #0xf
	adds r3, r6, r3
	ldr r6, [r3]
	lsls r6, r6, #0x10
	lsrs r6, r6, #0xe
	str r6, [sp, #8]
	ldr r6, [r0, r6]
	lsls r7, r6, #0xb
	lsrs r7, r7, #0x16
	beq _08004534
	lsls r6, r6, #0x15
	lsrs r6, r6, #0x15
	mov lr, r6
	b _080045F2
_08004534
	movs r6, #1
	cmp r1, #5
	bne _0800453C
	movs r6, #0
_0800453C
	str r6, [sp]
	ldr r6, [sp, #8]
	movs r7, #1
	adds r6, r6, r0
	str r6, [sp, #4]
	ldr r6, [r6]
	lsls r7, r7, #0x15
	bics r6, r7
	ldr r7, [sp]
	lsls r7, r7, #0x1f
	lsrs r7, r7, #0xa
	orrs r6, r7
	ldr r7, [sp, #4]
	cmp r1, #5
	str r6, [r7]
	mov r6, lr
	beq _08004560
	mov r6, ip
_08004560
	mov ip, r6
	cmp r1, #5
	bne _0800457E
	ldr r6, [r4, #4]
	cmp r6, #0
	bne _0800457E
	ldr r6, [r4, #8]
	str r6, [r4, #4]
	ldr r7, [r6]
	str r7, [r4, #8]
	adds r7, r6, #4
	str r7, [r6]
	ldr r4, [r4, #4]
	movs r6, #0
	str r6, [r4, #4]
_0800457E
	mov r6, ip
	ldr r4, [r6]
	ldr r7, [sp, #0x10]
	ldr r6, [r7, #0x20]
	subs r4, r4, r6
	asrs r6, r4, #2
	ldr r4, [r3]
	lsls r4, r4, #0x10
	lsrs r4, r4, #0xe
	ldr r7, [r0, r4]
	adds r4, r4, r0
	lsls r7, r7, #0xa
	lsrs r7, r7, #0x1f
	asrs r6, r7
	ldr r7, [r4]
	lsls r6, r6, #0x15
	lsrs r7, r7, #0xb
	lsls r7, r7, #0xb
	lsrs r6, r6, #0x15
	orrs r6, r7
	str r6, [r4]
	lsls r6, r6, #0x15
	lsrs r6, r6, #0x15
	mov lr, r6
	mov r6, ip
	ldr r4, [r6]
	ldr r4, [r4]
	str r4, [sp]
	ldr r6, [r5, #0x54]
	ldr r4, _08004648
	ldr r7, [r6, #0xc]
	ldr r6, [r3]
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	lsls r6, r1
	adds r6, r7, r6
	str r6, [r4]
	mov r6, lr
	movs r7, #3
	lsls r7, r7, #0x19
	lsls r6, r1
	adds r6, r6, r7
	str r6, [r4, #4]
	movs r6, #1
	lsls r6, r1
	adds r1, r6, #0
	asrs r6, r6, #0x1f
	lsrs r6, r6, #0x1e
	adds r1, r6, r1
	asrs r1, r1, #2
	movs r6, #0x21
	lsls r6, r6, #0x1a
	orrs r1, r6
	str r1, [r4, #8]
	ldr r1, [r4, #8]
	ldr r4, [sp]
	mov r6, ip
	str r4, [r6]
_080045F2
	ldr r1, [r3]
	ldr r7, _08004640
	lsls r1, r1, #0x10
	lsrs r1, r1, #0xe
	adds r0, r1, r0
	ldr r1, [r0]
	ldr r6, _08004644
	adds r4, r1, #0
	ands r4, r7
	movs r7, #1
	lsls r7, r7, #0xb
	adds r1, r1, r7
	ands r1, r6
	orrs r1, r4
	str r1, [r0]
	adds r5, #0x40
	ldrh r0, [r5, #0xa]
	ldrh r1, [r2]
	mov r6, lr
	subs r0, r6, r0
	lsls r0, r0, #0x16
	lsrs r1, r1, #0xa
	lsls r1, r1, #0xa
	lsrs r0, r0, #0x16
	orrs r1, r0
	strh r1, [r2]
	ldr r0, [r3]
	lsrs r4, r7, #1
	lsls r0, r0, #0xf
	lsrs r0, r0, #0x1f
	lsls r0, r0, #0xa
	bics r1, r4
	orrs r1, r0
	strh r1, [r2]
	ldr r0, [r3]
	lsls r0, r0, #0xe
	b _0800464C
	ALIGN
_0800463C DCDU gUnknown_03003EA4
_08004640 DCDU 0xFFE007FF
_08004644 DCDU 0x001FF800
_08004648 DCDU REG_DMA3
_0800464C
	lsrs r0, r0, #0x1f
	lsls r0, r0, #0xb
	bics r1, r7
	orrs r0, r1
	strh r0, [r2]
	ldr r1, [r3]
	movs r3, #0xf
	lsls r3, r3, #0xc
	lsls r1, r1, #6
	lsrs r1, r1, #0x18
	lsls r1, r1, #0xc
	bics r0, r3
	orrs r0, r1
	strh r0, [r2]
	add sp, #0x24
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	END
