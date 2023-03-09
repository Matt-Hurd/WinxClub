    INCLUDE asm/macros.inc
    AREA text, CODE

	IMPORT gUnknown_03003EA4
	IMPORT gUnknown_03003EB0
	IMPORT sub_800212C
	IMPORT sub_803BE68
	IMPORT sub_8040504

	thumb_func_start sub_8002828
sub_8002828 ;@ 0x08002828
	push {r3, r4, r5, r6, r7}
	movs r2, #1
	lsls r2, r2, #0xb
	movs r4, #3
	ldr r1, [r0, #8]
	lsls r4, r4, #0x19
	adds r2, r0, r2
	cmp r1, #0
	ldr r6, _08002C14 ;@ =0x10001000
	ldr r5, _08002C10 ;@ =0x040000D4
	beq _0800285E
	mov r7, sp
	adds r0, r5, #0
_08002842
	str r6, [sp]
	str r7, [r0]
	ldr r3, [r2, #0x20]
	subs r3, r1, r3
	asrs r3, r3, #2
	lsls r3, r3, #5
	adds r3, r3, r4
	str r3, [r0, #4]
	ldr r3, _08002C18 ;@ =0x85000010
	str r3, [r0, #8]
	ldr r3, [r0, #8]
	ldr r1, [r1]
	cmp r1, #0
	bne _08002842
_0800285E
	ldr r0, _08002C1C ;@ =gUnknown_03003EB0
	ldr r0, [r0]
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _08002886
	mov r1, sp
_0800286A
	str r6, [sp]
	str r1, [r5]
	ldr r3, [r2, #0x20]
	subs r3, r0, r3
	asrs r3, r3, #2
	lsls r3, r3, #5
	adds r3, r3, r4
	str r3, [r5, #4]
	ldr r3, _08002C20 ;@ =0x85000008
	str r3, [r5, #8]
	ldr r3, [r5, #8]
	ldr r0, [r0]
	cmp r0, #0
	bne _0800286A
_08002886
	pop {r3, r4, r5, r6, r7}
	bx lr

	non_word_aligned_thumb_func_start sub_800288A
sub_800288A ;@ 0x0800288A
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r0, [r1, #0x50]
	ldr r4, [r1]
	adds r7, r1, #0
	ldr r1, [r0, #0x18]
	sub sp, #0x4c
	str r1, [sp, #0x2c]
	movs r1, #1
	lsls r1, r1, #0xb
	adds r0, r4, #0
	bl sub_803BE68
	ldr r0, [r7, #0x50]
	movs r3, #0x1e
	ldr r2, [r0]
	movs r1, #0x14
	lsls r6, r2, #0x1f
	bmi _080028B8
	ldrh r6, [r0, #0xc]
	cmp r6, #0x1e
	bge _080028B8
	adds r3, r6, #0
_080028B8
	str r3, [sp, #0x28]
	lsls r3, r2, #0x1e
	bmi _080028C6
	ldrh r3, [r0, #0xe]
	cmp r3, #0x14
	bge _080028C6
	adds r1, r3, #0
_080028C6
	str r1, [sp, #0x24]
	movs r1, #0
	lsls r2, r2, #0x1f
	bmi _080028D8
	ldrh r2, [r0, #0xc]
	subs r2, #0x1e
	cmp r2, #0
	ble _080028D8
	adds r1, r2, #0
_080028D8
	str r1, [sp, #0x20]
	ldr r3, [sp, #0x28]
	movs r1, #0x20
	subs r1, r1, r3
	str r1, [sp, #0x1c]
	ldrh r0, [r0, #0xe]
	movs r1, #0x21
	lsls r1, r1, #6
	str r0, [sp, #0x14]
	ldr r0, _08002C24 ;@ =gUnknown_03003EA4
	ldr r0, [r0]
	adds r0, r0, r1
	subs r0, r7, r0
	bl sub_8040504
	ldr r0, [r7, #0x48]
	movs r6, #6
	lsls r2, r0, #0x15
	bmi _08002900
	movs r6, #5
_08002900
	lsls r0, r0, #0x15
	lsls r0, r1, #2
	adds r0, r0, r5
	ldr r3, [r0, #0xc]
	movs r0, #0
	str r3, [sp, #4]
	ldr r1, [sp, #0x24]
	str r0, [sp, #0xc]
	cmp r1, #0
	ble _080029E6
	adds r0, r5, #4
	cmp r6, #5
	bne _0800291E
	movs r1, #0
	b _08002920
_0800291E
	movs r1, #1
_08002920
	lsls r1, r1, #0x1f
	lsrs r3, r1, #0xa
	adds r1, r5, #0
	adds r1, #8
	cmp r6, #5
	str r3, [sp, #0x48]
	beq _08002930
	adds r0, r1, #0
_08002930
	str r0, [sp, #0x44]
	movs r0, #1
	lsls r0, r0, #0xb
	adds r2, r5, r0
	movs r0, #1
	lsls r0, r6
	asrs r1, r0, #0x1f
	lsrs r1, r1, #0x1e
	adds r0, r1, r0
	asrs r1, r0, #2
	movs r0, #0x21
	lsls r0, r0, #0x1a
	orrs r1, r0
	str r2, [sp, #0x40]
	ldr r0, [sp, #0x20]
	str r1, [sp, #0x3c]
	lsls r0, r0, #1
	str r0, [sp, #0x34]
	adds r1, r7, #0
	adds r1, #0x40
	ldr r0, [sp, #0x1c]
	str r1, [sp, #0x38]
	lsls r0, r0, #1
	str r0, [sp, #0x30]
_08002960
	ldr r0, [sp, #0x14]
	cmp r0, #0
	bne _08002970
	ldr r0, [r7, #0x50]
	ldrh r1, [r0, #0xe]
	str r1, [sp, #0x14]
	ldr r1, [r0, #0x18]
	str r1, [sp, #0x2c]
_08002970
	ldr r0, [r7, #0x50]
	ldrh r0, [r0, #0xc]
	ldr r1, [sp, #0x28]
	str r0, [sp, #0x18]
	movs r0, #0
	str r0, [sp, #0x10]
	cmp r1, #0
	ble _08002A64
_08002980
	ldr r0, [sp, #0x18]
	cmp r0, #0
	bne _08002994
	ldr r0, [r7, #0x50]
	ldrh r0, [r0, #0xc]
	ldr r1, [sp, #0x2c]
	str r0, [sp, #0x18]
	lsls r0, r0, #1
	subs r1, r1, r0
	str r1, [sp, #0x2c]
_08002994
	ldr r1, [sp, #0x2c]
	ldrh r0, [r1]
	lsrs r1, r0, #0xf
	lsls r1, r1, #0x1f
	ldr r1, [r7, #0x54]
	ldr r1, [r1, #0x10]
	beq _08002A86
	lsls r0, r0, #0x11
	lsrs r0, r0, #0xf
	mov lr, r1
	add lr, r0
	mov ip, r1
	mov r1, lr
	ldr r1, [r1]
	ldr r0, [r7, #0x30]
	lsls r2, r1, #0xc
	lsrs r2, r2, #0x1a
	lsls r3, r2, #1
	adds r2, r3, r2
	lsls r2, r2, #3
	adds r0, r0, r2
	ldr r0, [r0, #0xc]
	lsls r1, r1, #0x12
	lsrs r1, r1, #0x11
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x11
	lsrs r0, r0, #0xf
	add r0, ip
	ldr r1, [r0]
	ldr r3, [sp, #4]
	lsls r1, r1, #0x10
	lsrs r2, r1, #0xe
	ldr r1, [r3, r2]
	lsls r3, r1, #0xb
	lsrs r3, r3, #0x16
	beq _080029E8
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x15
	str r1, [sp, #8]
	b _08002A84
_080029E6
	b _08002CA6
_080029E8
	ldr r3, [sp, #4]
	adds r1, r2, r3
	movs r3, #1
	ldr r2, [r1]
	lsls r3, r3, #0x15
	bics r2, r3
	ldr r3, [sp, #0x48]
	orrs r2, r3
	str r2, [r1]
	ldr r1, [sp, #0x44]
	cmp r6, #5
	mov ip, r1
	bne _08002A1A
	ldr r1, [r5, #4]
	cmp r1, #0
	bne _08002A1A
	ldr r1, [r5, #8]
	str r1, [r5, #4]
	ldr r2, [r1]
	str r2, [r5, #8]
	adds r2, r1, #4
	str r2, [r1]
	ldr r1, [r5, #4]
	movs r2, #0
	str r2, [r1, #4]
_08002A1A
	mov r1, ip
	ldr r1, [r1]
	ldr r2, [sp, #0x40]
	ldr r2, [r2, #0x20]
	subs r1, r1, r2
	asrs r2, r1, #2
	ldr r1, [r0]
	ldr r3, [sp, #4]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0xe
	ldr r3, [r3, r1]
	lsls r3, r3, #0xa
	lsrs r3, r3, #0x1f
	asrs r2, r3
	ldr r3, [sp, #4]
	lsls r2, r2, #0x15
	adds r1, r1, r3
	ldr r3, [r1]
	lsrs r2, r2, #0x15
	lsrs r3, r3, #0xb
	lsls r3, r3, #0xb
	orrs r2, r3
	str r2, [r1]
	lsls r1, r2, #0x15
	lsrs r1, r1, #0x15
	str r1, [sp, #8]
	mov r1, ip
	ldr r1, [r1]
	ldr r3, _08002C10 ;@ =0x040000D4
	ldr r1, [r1]
	str r1, [sp]
	ldr r1, [r7, #0x54]
	ldr r2, [r1, #0xc]
	ldr r1, [r0]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	b _08002A66
_08002A64
	b _08002C72
_08002A66
	lsls r1, r6
	adds r1, r2, r1
	str r1, [r3]
	ldr r1, [sp, #8]
	movs r2, #3
	lsls r2, r2, #0x19
	lsls r1, r6
	adds r1, r1, r2
	str r1, [r3, #4]
	ldr r1, [sp, #0x3c]
	str r1, [r3, #8]
	ldr r1, [r3, #8]
	ldr r1, [sp]
	mov r2, ip
	str r1, [r2]
_08002A84
	b _08002A88
_08002A86
	b _08002B0C
_08002A88
	ldr r1, [r0]
	ldr r3, [sp, #4]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0xe
	mov ip, r1
	add ip, r3
	mov r2, ip
	ldr r1, [r2]
	ldr r3, _08002C28 ;@ =0xFFE007FF
	adds r2, r1, #0
	ands r1, r3
	movs r3, #1
	lsls r3, r3, #0xb
	adds r2, r2, r3
	ldr r3, _08002C2C ;@ =0x001FF800
	ands r2, r3
	orrs r1, r2
	mov r2, ip
	str r1, [r2]
	ldr r1, [sp, #0x38]
	movs r3, #1
	ldrh r1, [r1, #0xa]
	ldr r2, [sp, #8]
	lsls r3, r3, #0xa
	subs r1, r2, r1
	ldrh r2, [r4]
	lsls r1, r1, #0x16
	lsrs r1, r1, #0x16
	lsrs r2, r2, #0xa
	lsls r2, r2, #0xa
	orrs r2, r1
	strh r2, [r4]
	ldr r1, [r0]
	bics r2, r3
	lsls r1, r1, #0xf
	lsrs r1, r1, #0x1f
	lsls r1, r1, #0xa
	orrs r2, r1
	strh r2, [r4]
	ldr r1, [r0]
	lsls r3, r3, #1
	lsls r1, r1, #0xe
	lsrs r1, r1, #0x1f
	lsls r1, r1, #0xb
	bics r2, r3
	orrs r1, r2
	strh r1, [r4]
	ldr r0, [r0]
	movs r2, #0xf
	lsls r0, r0, #6
	lsrs r0, r0, #0x18
	lsls r2, r2, #0xc
	bics r1, r2
	lsls r0, r0, #0xc
	orrs r0, r1
	strh r0, [r4]
	ldr r0, _08002C24 ;@ =gUnknown_03003EA4
	ldr r0, [r0]
	ldr r1, [r7]
	subs r1, r4, r1
	asrs r2, r1, #1
	mov r1, lr
	adds r3, r7, #0
	bl sub_800212C
	b _08002C54
_08002B0C
	lsls r0, r0, #0x11
	lsrs r0, r0, #0xf
	adds r0, r1, r0
	ldr r1, [r0]
	ldr r3, [sp, #4]
	lsls r1, r1, #0x10
	lsrs r2, r1, #0xe
	ldr r1, [r3, r2]
	lsls r3, r1, #0xb
	lsrs r3, r3, #0x16
	beq _08002B2A
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x15
	mov lr, r1
	b _08002BC2
_08002B2A
	ldr r3, [sp, #4]
	adds r1, r2, r3
	movs r3, #1
	ldr r2, [r1]
	lsls r3, r3, #0x15
	bics r2, r3
	ldr r3, [sp, #0x48]
	orrs r2, r3
	str r2, [r1]
	ldr r1, [sp, #0x44]
	cmp r6, #5
	mov ip, r1
	bne _08002B5C
	ldr r1, [r5, #4]
	cmp r1, #0
	bne _08002B5C
	ldr r1, [r5, #8]
	str r1, [r5, #4]
	ldr r2, [r1]
	str r2, [r5, #8]
	adds r2, r1, #4
	str r2, [r1]
	ldr r1, [r5, #4]
	movs r2, #0
	str r2, [r1, #4]
_08002B5C
	mov r1, ip
	ldr r1, [r1]
	ldr r2, [sp, #0x40]
	ldr r2, [r2, #0x20]
	subs r1, r1, r2
	asrs r2, r1, #2
	ldr r1, [r0]
	ldr r3, [sp, #4]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0xe
	ldr r3, [r3, r1]
	lsls r3, r3, #0xa
	lsrs r3, r3, #0x1f
	asrs r2, r3
	ldr r3, [sp, #4]
	lsls r2, r2, #0x15
	adds r1, r1, r3
	ldr r3, [r1]
	lsrs r2, r2, #0x15
	lsrs r3, r3, #0xb
	lsls r3, r3, #0xb
	orrs r2, r3
	str r2, [r1]
	lsls r1, r2, #0x15
	lsrs r1, r1, #0x15
	mov lr, r1
	mov r1, ip
	ldr r1, [r1]
	ldr r3, _08002C10 ;@ =0x040000D4
	ldr r1, [r1]
	str r1, [sp]
	ldr r1, [r7, #0x54]
	ldr r2, [r1, #0xc]
	ldr r1, [r0]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r1, r6
	adds r1, r2, r1
	str r1, [r3]
	mov r1, lr
	movs r2, #3
	lsls r2, r2, #0x19
	lsls r1, r6
	adds r1, r1, r2
	str r1, [r3, #4]
	ldr r1, [sp, #0x3c]
	str r1, [r3, #8]
	ldr r1, [r3, #8]
	ldr r1, [sp]
	mov r2, ip
	str r1, [r2]
_08002BC2
	ldr r1, [r0]
	ldr r3, [sp, #4]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0xe
	mov ip, r1
	add ip, r3
	mov r2, ip
	ldr r1, [r2]
	ldr r3, _08002C28 ;@ =0xFFE007FF
	adds r2, r1, #0
	ands r1, r3
	movs r3, #1
	lsls r3, r3, #0xb
	adds r2, r2, r3
	ldr r3, _08002C2C ;@ =0x001FF800
	ands r2, r3
	orrs r1, r2
	mov r2, ip
	str r1, [r2]
	ldr r1, [sp, #0x38]
	mov r2, lr
	ldrh r1, [r1, #0xa]
	movs r3, #1
	lsls r3, r3, #0xa
	subs r1, r2, r1
	ldrh r2, [r4]
	lsls r1, r1, #0x16
	lsrs r1, r1, #0x16
	lsrs r2, r2, #0xa
	lsls r2, r2, #0xa
	orrs r2, r1
	strh r2, [r4]
	ldr r1, [r0]
	bics r2, r3
	lsls r1, r1, #0xf
	lsrs r1, r1, #0x1f
	lsls r1, r1, #0xa
	orrs r2, r1
	b _08002C30
	ALIGN
_08002C10 DCDU 0x040000D4
_08002C14 DCDU 0x10001000
_08002C18 DCDU 0x85000010
_08002C1C DCDU gUnknown_03003EB0
_08002C20 DCDU 0x85000008
_08002C24 DCDU gUnknown_03003EA4
_08002C28 DCDU 0xFFE007FF
_08002C2C DCDU 0x001FF800
_08002C30
	strh r2, [r4]
	ldr r1, [r0]
	lsls r3, r3, #1
	lsls r1, r1, #0xe
	lsrs r1, r1, #0x1f
	lsls r1, r1, #0xb
	bics r2, r3
	orrs r1, r2
	strh r1, [r4]
	ldr r0, [r0]
	movs r2, #0xf
	lsls r2, r2, #0xc
	lsls r0, r0, #6
	lsrs r0, r0, #0x18
	lsls r0, r0, #0xc
	bics r1, r2
	orrs r0, r1
	strh r0, [r4]
_08002C54
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x2c]
	adds r0, #1
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x18]
	adds r1, #2
	subs r0, #1
	str r0, [sp, #0x18]
	str r1, [sp, #0x2c]
	ldr r1, [sp, #0x28]
	ldr r0, [sp, #0x10]
	adds r4, #2
	cmp r0, r1
	bge _08002C72
	b _08002980
_08002C72
	ldr r0, [sp, #0x20]
	cmp r0, #0
	beq _08002C82
	ldr r0, [sp, #0x34]
	ldr r1, [sp, #0x2c]
	adds r1, r0, r1
	str r1, [sp, #0x2c]
	b _08002C8C
_08002C82
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x2c]
	lsls r0, r0, #1
	adds r1, r0, r1
	str r1, [sp, #0x2c]
_08002C8C
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x24]
	adds r0, #1
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x30]
	adds r4, r0, r4
	ldr r0, [sp, #0x14]
	subs r0, #1
	str r0, [sp, #0x14]
	ldr r0, [sp, #0xc]
	cmp r0, r1
	bge _08002CA6
	b _08002960
_08002CA6
	add sp, #0x4c
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
