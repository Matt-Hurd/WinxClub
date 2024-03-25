    INCLUDE asm/macros.inc
    AREA text, CODE

	IMPORT gUnknown_03003EA4
	IMPORT gUnknown_03003EB0
	IMPORT sub_800212C
	IMPORT sub_8002230
	IMPORT sub_803BE68
	IMPORT sub_803C04C
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

	non_word_aligned_thumb_func_start sub_8002CAE
sub_8002CAE ;@ 0x08002CAE
	push {r0, r1, r2, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	movs r0, #1
	lsls r0, r0, #0xb
	adds r4, r6, r0
	ldr r0, [r4, #0x28]
	movs r2, #1
	orrs r0, r2
	sub sp, #0x80
	str r0, [r4, #0x28]
	ldr r0, _080030A0 ;@ =gUnknown_03003EA4
	adds r5, r1, #0
	movs r1, #0x21
	ldr r0, [r0]
	lsls r1, r1, #6
	adds r0, r0, r1
	subs r0, r5, r0
	bl sub_8040504
	ldr r2, [r5, #0x48]
	movs r0, #6
	lsls r3, r2, #0x15
	bmi _08002CDE
	movs r0, #5
_08002CDE
	str r0, [sp, #0x2c]
	lsls r0, r2, #0x15
	lsls r0, r1, #2
	adds r0, r0, r6
	ldr r7, [r0, #0xc]
	ldr r3, [sp, #0x88]
	movs r0, #0x1e
	ldr r1, [r3]
	cmp r1, #0
	bgt _08002CF4
	movs r0, #0
_08002CF4
	ldr r3, [sp, #0x88]
	movs r2, #0x14
	ldr r3, [r3, #4]
	cmp r3, #0
	bgt _08002D00
	movs r2, #0
_08002D00
	str r2, [sp, #0x28]
	movs r2, #1
	cmp r1, #0
	ble _08002D0A
	movs r2, #0
_08002D0A
	str r2, [sp, #0x24]
	ldr r1, [r5, #0x38]
	asrs r1, r1, #0x13
	adds r1, r1, r0
	lsls r2, r1, #0x1b
	lsrs r2, r2, #0x1b
	str r2, [sp, #0x20]
	ldr r0, [r5, #0x3c]
	str r0, [sp, #0x7c]
	lsls r0, r0, #8
	lsrs r0, r0, #0x1b
	str r0, [sp, #0x1c]
	ldr r0, [r5, #0x50]
	str r0, [sp, #0x78]
	str r0, [sp, #0x74]
	ldrh r0, [r0, #0xc]
	str r0, [sp, #0x70]
	bl sub_803C04C
	ldr r0, [sp, #0x7c]
	str r1, [sp, #0x18]
	asrs r1, r0, #0x13
	ldr r0, [sp, #0x74]
	ldrh r0, [r0, #0xe]
	str r0, [sp, #0x6c]
	bl sub_803C04C
	ldr r2, [sp, #0x18]
	cmp r2, #0
	bge _08002D4E
	ldr r0, [sp, #0x70]
	ldr r2, [sp, #0x18]
	adds r2, r0, r2
	str r2, [sp, #0x18]
_08002D4E
	cmp r1, #0
	bge _08002D56
	ldr r0, [sp, #0x6c]
	adds r1, r0, r1
_08002D56
	ldr r0, [sp, #0x1c]
	ldr r2, [sp, #0x20]
	lsls r0, r0, #5
	adds r0, r0, r2
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x78]
	ldr r0, [r0, #0x18]
	ldr r2, [sp, #0x18]
	lsls r2, r2, #1
	str r2, [sp, #0x68]
	adds r0, r0, r2
	ldr r2, [sp, #0x70]
	muls r2, r1
	lsls r2, r2, #1
	adds r0, r0, r2
	str r0, [sp, #0x34]
	ldr r0, [sp, #0x6c]
	subs r0, r0, r1
	str r0, [sp, #0x14]
	movs r0, #0
	str r0, [sp, #0xc]
	ldr r3, [sp, #0x2c]
	adds r0, r6, #4
	cmp r3, #5
	bne _08002D8C
	movs r1, #0
	b _08002D8E
_08002D8C
	movs r1, #1
_08002D8E
	lsls r1, r1, #0x1f
	lsrs r3, r1, #0xa
	str r3, [sp, #0x64]
	ldr r3, [sp, #0x2c]
	adds r1, r6, #0
	adds r1, #8
	cmp r3, #5
	beq _08002DA0
	adds r0, r1, #0
_08002DA0
	ldr r3, [sp, #0x2c]
	str r0, [sp, #0x60]
	lsls r0, r3, #0x1d
	lsrs r2, r0, #0x12
	adds r0, r5, #0
	adds r0, #0x40
	str r0, [sp, #0x58]
	str r2, [sp, #0x5c]
_08002DB0
	ldr r0, [r5]
	ldr r1, [sp, #0x10]
	lsls r1, r1, #0x16
	lsrs r1, r1, #0x15
	adds r1, r0, r1
	ldr r0, [sp, #0x34]
	ldrh r0, [r0]
	lsrs r2, r0, #0xf
	lsls r2, r2, #0x1f
	ldr r2, [r5, #0x54]
	ldr r2, [r2, #0x10]
	beq _08002EAC
	lsls r0, r0, #0x11
	lsrs r0, r0, #0xf
	mov ip, r2
	add ip, r0
	mov lr, r2
	mov r2, ip
	ldr r0, [r5, #0x30]
	ldr r2, [r2]
	str r2, [sp, #0x54]
	lsls r2, r2, #0xc
	lsrs r2, r2, #0x1a
	lsls r3, r2, #1
	adds r2, r3, r2
	lsls r2, r2, #3
	adds r0, r0, r2
	ldr r0, [r0, #0xc]
	ldr r2, [sp, #0x54]
	lsls r2, r2, #0x12
	lsrs r2, r2, #0x11
	adds r0, r0, r2
	ldrh r0, [r0]
	lsls r0, r0, #0x11
	lsrs r0, r0, #0xf
	add r0, lr
	str r0, [sp, #8]
	ldr r0, [r0]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xe
	ldr r2, [r7, r0]
	lsls r3, r2, #0xb
	lsrs r3, r3, #0x16
	beq _08002E10
	lsls r2, r2, #0x15
	lsrs r2, r2, #0x15
	str r2, [sp, #0x30]
	b _08002EBE
_08002E10
	ldr r3, [sp, #0x2c]
	adds r0, r0, r7
	ldr r2, [r0]
	movs r3, #1
	lsls r3, r3, #0x15
	bics r2, r3
	ldr r3, [sp, #0x64]
	orrs r2, r3
	str r2, [r0]
	ldr r2, [sp, #0x60]
	ldr r3, [sp, #0x2c]
	str r2, [sp, #4]
	cmp r3, #5
	bne _08002E44
	ldr r0, [r6, #4]
	cmp r0, #0
	bne _08002E44
	ldr r0, [r6, #8]
	str r0, [r6, #4]
	ldr r2, [r0]
	str r2, [r6, #8]
	adds r2, r0, #4
	str r2, [r0]
	ldr r2, [r6, #4]
	movs r0, #0
	str r0, [r2, #4]
_08002E44
	ldr r2, [sp, #4]
	ldr r0, [r2]
	ldr r2, [r4, #0x20]
	subs r0, r0, r2
	asrs r2, r0, #2
	ldr r0, [sp, #8]
	ldr r0, [r0]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xe
	ldr r3, [r7, r0]
	adds r0, r0, r7
	lsls r3, r3, #0xa
	lsrs r3, r3, #0x1f
	asrs r2, r3
	ldr r3, [r0]
	lsls r2, r2, #0x15
	lsrs r3, r3, #0xb
	lsls r3, r3, #0xb
	lsrs r2, r2, #0x15
	orrs r2, r3
	str r2, [r0]
	lsls r2, r2, #0x15
	lsrs r2, r2, #0x15
	str r2, [sp, #0x30]
	ldr r2, [sp, #4]
	ldr r3, [r4, #0x1c]
	ldr r0, [r2]
	ldr r0, [r0]
	mov lr, r0
	ldr r0, [r3]
	ldr r2, [sp, #0x30]
	lsrs r0, r0, #0xb
	lsls r0, r0, #0xb
	orrs r0, r2
	str r0, [r3]
	movs r2, #7
	lsls r2, r2, #0xb
	bics r0, r2
	ldr r3, [r4, #0x1c]
	ldr r2, [sp, #0x5c]
	orrs r0, r2
	str r0, [r3]
	ldr r0, [r5, #0x54]
	ldr r2, [r0, #0xc]
	ldr r0, [sp, #8]
	ldr r0, [r0]
	ldr r3, [sp, #0x2c]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r3
	adds r0, r2, r0
	b _08002EAE
_08002EAC
	b _08002F48
_08002EAE
	ldr r2, [r4, #0x1c]
	str r0, [r2, #4]
	ldr r0, [r4, #0x1c]
	adds r0, #8
	str r0, [r4, #0x1c]
	ldr r2, [sp, #4]
	mov r0, lr
	str r0, [r2]
_08002EBE
	ldr r0, [sp, #8]
	ldr r3, _080030A4 ;@ =0xFFE007FF
	ldr r0, [r0]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xe
	mov lr, r0
	add lr, r7
	mov r2, lr
	ldr r0, [r2]
	adds r2, r0, #0
	ands r0, r3
	movs r3, #1
	lsls r3, r3, #0xb
	adds r2, r2, r3
	ldr r3, _080030A8 ;@ =0x001FF800
	ands r2, r3
	orrs r0, r2
	mov r2, lr
	str r0, [r2]
	ldr r0, [sp, #0x58]
	movs r3, #1
	ldrh r0, [r0, #0xa]
	ldr r2, [sp, #0x30]
	lsls r3, r3, #0xa
	subs r0, r2, r0
	ldrh r2, [r1]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x16
	lsrs r2, r2, #0xa
	lsls r2, r2, #0xa
	orrs r2, r0
	strh r2, [r1]
	ldr r0, [sp, #8]
	bics r2, r3
	ldr r0, [r0]
	lsls r3, r3, #1
	lsls r0, r0, #0xf
	lsrs r0, r0, #0x1f
	lsls r0, r0, #0xa
	orrs r2, r0
	strh r2, [r1]
	ldr r0, [sp, #8]
	bics r2, r3
	ldr r0, [r0]
	movs r3, #0xf
	lsls r0, r0, #0xe
	lsrs r0, r0, #0x1f
	lsls r0, r0, #0xb
	orrs r0, r2
	strh r0, [r1]
	ldr r2, [sp, #8]
	lsls r3, r3, #0xc
	ldr r2, [r2]
	bics r0, r3
	lsls r2, r2, #6
	lsrs r2, r2, #0x18
	lsls r2, r2, #0xc
	orrs r0, r2
	strh r0, [r1]
	ldr r0, _080030A0 ;@ =gUnknown_03003EA4
	ldr r0, [r0]
	ldr r2, [r5]
	subs r1, r1, r2
	asrs r2, r1, #1
	mov r1, ip
	adds r3, r5, #0
	bl sub_800212C
	b _08003088
_08002F48
	lsls r0, r0, #0x11
	lsrs r0, r0, #0xf
	mov ip, r2
	add ip, r0
	mov r0, ip
	ldr r0, [r0]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xe
	ldr r2, [r7, r0]
	lsls r3, r2, #0xb
	lsrs r3, r3, #0x16
	beq _08002F68
	lsls r2, r2, #0x15
	lsrs r2, r2, #0x15
	str r2, [sp, #0x30]
	b _08003012
_08002F68
	ldr r3, [sp, #0x2c]
	adds r0, r0, r7
	ldr r2, [r0]
	movs r3, #1
	lsls r3, r3, #0x15
	bics r2, r3
	ldr r3, [sp, #0x64]
	orrs r2, r3
	str r2, [r0]
	ldr r2, [sp, #0x60]
	ldr r3, [sp, #0x2c]
	str r2, [sp, #8]
	cmp r3, #5
	bne _08002F9C
	ldr r0, [r6, #4]
	cmp r0, #0
	bne _08002F9C
	ldr r0, [r6, #8]
	str r0, [r6, #4]
	ldr r2, [r0]
	str r2, [r6, #8]
	adds r2, r0, #4
	str r2, [r0]
	ldr r2, [r6, #4]
	movs r0, #0
	str r0, [r2, #4]
_08002F9C
	ldr r2, [sp, #8]
	ldr r0, [r2]
	ldr r2, [r4, #0x20]
	subs r0, r0, r2
	asrs r2, r0, #2
	mov r0, ip
	ldr r0, [r0]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xe
	ldr r3, [r7, r0]
	adds r0, r0, r7
	lsls r3, r3, #0xa
	lsrs r3, r3, #0x1f
	asrs r2, r3
	ldr r3, [r0]
	lsls r2, r2, #0x15
	lsrs r3, r3, #0xb
	lsls r3, r3, #0xb
	lsrs r2, r2, #0x15
	orrs r2, r3
	str r2, [r0]
	lsls r2, r2, #0x15
	lsrs r2, r2, #0x15
	str r2, [sp, #0x30]
	ldr r2, [sp, #8]
	ldr r3, [r4, #0x1c]
	ldr r0, [r2]
	ldr r0, [r0]
	mov lr, r0
	ldr r0, [r3]
	ldr r2, [sp, #0x30]
	lsrs r0, r0, #0xb
	lsls r0, r0, #0xb
	orrs r0, r2
	str r0, [r3]
	movs r2, #7
	lsls r2, r2, #0xb
	bics r0, r2
	ldr r3, [r4, #0x1c]
	ldr r2, [sp, #0x5c]
	orrs r0, r2
	str r0, [r3]
	ldr r0, [r5, #0x54]
	ldr r2, [r0, #0xc]
	mov r0, ip
	ldr r0, [r0]
	ldr r3, [sp, #0x2c]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r3
	adds r0, r2, r0
	ldr r2, [r4, #0x1c]
	str r0, [r2, #4]
	ldr r0, [r4, #0x1c]
	adds r0, #8
	str r0, [r4, #0x1c]
	ldr r2, [sp, #8]
	mov r0, lr
	str r0, [r2]
_08003012
	mov r0, ip
	ldr r0, [r0]
	ldr r3, _080030A4 ;@ =0xFFE007FF
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xe
	mov lr, r0
	add lr, r7
	mov r2, lr
	ldr r0, [r2]
	adds r2, r0, #0
	ands r0, r3
	movs r3, #1
	lsls r3, r3, #0xb
	adds r2, r2, r3
	ldr r3, _080030A8 ;@ =0x001FF800
	ands r2, r3
	orrs r0, r2
	mov r2, lr
	str r0, [r2]
	ldr r0, [sp, #0x58]
	movs r3, #1
	ldrh r0, [r0, #0xa]
	ldr r2, [sp, #0x30]
	lsls r3, r3, #0xa
	subs r0, r2, r0
	ldrh r2, [r1]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x16
	lsrs r2, r2, #0xa
	lsls r2, r2, #0xa
	orrs r2, r0
	strh r2, [r1]
	mov r0, ip
	ldr r0, [r0]
	bics r2, r3
	lsls r0, r0, #0xf
	lsrs r0, r0, #0x1f
	lsls r0, r0, #0xa
	orrs r2, r0
	strh r2, [r1]
	mov r0, ip
	ldr r0, [r0]
	lsls r3, r3, #1
	bics r2, r3
	lsls r0, r0, #0xe
	lsrs r0, r0, #0x1f
	lsls r0, r0, #0xb
	orrs r0, r2
	strh r0, [r1]
	mov r2, ip
	ldr r2, [r2]
	movs r3, #0xf
	lsls r3, r3, #0xc
	lsls r2, r2, #6
	lsrs r2, r2, #0x18
	lsls r2, r2, #0xc
	bics r0, r3
	orrs r0, r2
	strh r0, [r1]
_08003088
	ldr r0, [sp, #0x14]
	subs r0, #1
	str r0, [sp, #0x14]
	ldr r0, [r5, #0x50]
	bne _080030AC
	ldrh r1, [r0, #0xe]
	str r1, [sp, #0x14]
	ldr r0, [r0, #0x18]
	ldr r1, [sp, #0x68]
	adds r0, r0, r1
	str r0, [sp, #0x34]
	b _080030B6
	ALIGN
_080030A0 DCDU gUnknown_03003EA4
_080030A4 DCDU 0xFFE007FF
_080030A8 DCDU 0x001FF800
_080030AC
	ldrh r0, [r0, #0xc]
	ldr r1, [sp, #0x34]
	lsls r0, r0, #1
	adds r0, r0, r1
	str r0, [sp, #0x34]
_080030B6
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x10]
	adds r0, #1
	adds r1, #0x20
	str r1, [sp, #0x10]
	cmp r0, #0x15
	str r0, [sp, #0xc]
	bge _080030C8
	b _08002DB0
_080030C8
	ldr r0, [r5, #0x38]
	ldr r1, [sp, #0x24]
	asrs r0, r0, #0x13
	adds r1, r0, r1
	lsls r0, r1, #0x1b
	lsrs r0, r0, #0x1b
	str r0, [sp, #0x20]
	ldr r0, [r5, #0x3c]
	ldr r2, [sp, #0x28]
	asrs r0, r0, #0x13
	adds r0, r0, r2
	str r0, [sp, #0x50]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	str r0, [sp, #0x1c]
	ldr r0, [r5, #0x50]
	str r0, [sp, #0x4c]
	str r0, [sp, #0x48]
	ldrh r0, [r0, #0xc]
	str r0, [sp, #0x44]
	bl sub_803C04C
	ldr r0, [sp, #0x48]
	str r1, [sp, #0x18]
	ldrh r0, [r0, #0xe]
	ldr r1, [sp, #0x50]
	str r0, [sp, #0x40]
	bl sub_803C04C
	ldr r2, [sp, #0x18]
	cmp r2, #0
	bge _08003110
	ldr r0, [sp, #0x44]
	ldr r2, [sp, #0x18]
	adds r2, r0, r2
	str r2, [sp, #0x18]
_08003110
	cmp r1, #0
	bge _08003118
	ldr r0, [sp, #0x40]
	adds r1, r0, r1
_08003118
	ldr r0, [sp, #0x4c]
	ldr r0, [r0, #0x18]
	ldr r2, [sp, #0x18]
	lsls r2, r2, #1
	adds r0, r0, r2
	ldr r2, [sp, #0x44]
	muls r2, r1
	lsls r1, r2, #1
	adds r0, r0, r1
	str r0, [sp, #0x34]
	ldr r0, [sp, #0x44]
	ldr r1, [sp, #0x18]
	subs r0, r0, r1
	str r0, [sp, #0x18]
	movs r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x1c]
	lsls r1, r0, #6
	str r1, [sp, #0x3c]
_0800313E
	ldr r0, [r5]
	ldr r1, [sp, #0x20]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1a
	adds r0, r0, r1
	ldr r1, [sp, #0x3c]
	adds r1, r0, r1
	ldr r0, [sp, #0x34]
	ldrh r0, [r0]
	lsrs r2, r0, #0xf
	lsls r2, r2, #0x1f
	ldr r2, [r5, #0x54]
	ldr r2, [r2, #0x10]
	beq _0800323E
	lsls r0, r0, #0x11
	lsrs r0, r0, #0xf
	mov ip, r2
	add ip, r0
	mov lr, r2
	mov r2, ip
	ldr r0, [r5, #0x30]
	ldr r2, [r2]
	str r2, [sp, #0x38]
	lsls r2, r2, #0xc
	lsrs r2, r2, #0x1a
	lsls r3, r2, #1
	adds r2, r3, r2
	lsls r2, r2, #3
	adds r0, r0, r2
	ldr r0, [r0, #0xc]
	ldr r2, [sp, #0x38]
	lsls r2, r2, #0x12
	lsrs r2, r2, #0x11
	adds r0, r0, r2
	ldrh r0, [r0]
	lsls r0, r0, #0x11
	lsrs r0, r0, #0xf
	add r0, lr
	str r0, [sp, #8]
	ldr r0, [r0]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xe
	ldr r2, [r7, r0]
	lsls r3, r2, #0xb
	lsrs r3, r3, #0x16
	beq _080031A2
	lsls r2, r2, #0x15
	lsrs r2, r2, #0x15
	str r2, [sp, #0x30]
	b _08003250
_080031A2
	ldr r3, [sp, #0x2c]
	adds r0, r0, r7
	ldr r2, [r0]
	movs r3, #1
	lsls r3, r3, #0x15
	bics r2, r3
	ldr r3, [sp, #0x64]
	orrs r2, r3
	str r2, [r0]
	ldr r2, [sp, #0x60]
	ldr r3, [sp, #0x2c]
	str r2, [sp, #4]
	cmp r3, #5
	bne _080031D6
	ldr r0, [r6, #4]
	cmp r0, #0
	bne _080031D6
	ldr r0, [r6, #8]
	str r0, [r6, #4]
	ldr r2, [r0]
	str r2, [r6, #8]
	adds r2, r0, #4
	str r2, [r0]
	ldr r2, [r6, #4]
	movs r0, #0
	str r0, [r2, #4]
_080031D6
	ldr r2, [sp, #4]
	ldr r0, [r2]
	ldr r2, [r4, #0x20]
	subs r0, r0, r2
	asrs r2, r0, #2
	ldr r0, [sp, #8]
	ldr r0, [r0]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xe
	ldr r3, [r7, r0]
	adds r0, r0, r7
	lsls r3, r3, #0xa
	lsrs r3, r3, #0x1f
	asrs r2, r3
	ldr r3, [r0]
	lsls r2, r2, #0x15
	lsrs r3, r3, #0xb
	lsls r3, r3, #0xb
	lsrs r2, r2, #0x15
	orrs r2, r3
	str r2, [r0]
	lsls r2, r2, #0x15
	lsrs r2, r2, #0x15
	str r2, [sp, #0x30]
	ldr r2, [sp, #4]
	ldr r3, [r4, #0x1c]
	ldr r0, [r2]
	ldr r0, [r0]
	mov lr, r0
	ldr r0, [r3]
	ldr r2, [sp, #0x30]
	lsrs r0, r0, #0xb
	lsls r0, r0, #0xb
	orrs r0, r2
	str r0, [r3]
	movs r2, #7
	lsls r2, r2, #0xb
	bics r0, r2
	ldr r3, [r4, #0x1c]
	ldr r2, [sp, #0x5c]
	orrs r0, r2
	str r0, [r3]
	ldr r0, [r5, #0x54]
	ldr r2, [r0, #0xc]
	ldr r0, [sp, #8]
	ldr r0, [r0]
	ldr r3, [sp, #0x2c]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r3
	adds r0, r2, r0
	b _08003240
_0800323E
	b _080032DA
_08003240
	ldr r2, [r4, #0x1c]
	str r0, [r2, #4]
	ldr r0, [r4, #0x1c]
	adds r0, #8
	str r0, [r4, #0x1c]
	ldr r2, [sp, #4]
	mov r0, lr
	str r0, [r2]
_08003250
	ldr r0, [sp, #8]
	ldr r3, _08003644 ;@ =0xFFE007FF
	ldr r0, [r0]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xe
	mov lr, r0
	add lr, r7
	mov r2, lr
	ldr r0, [r2]
	adds r2, r0, #0
	ands r0, r3
	movs r3, #1
	lsls r3, r3, #0xb
	adds r2, r2, r3
	ldr r3, _08003648 ;@ =0x001FF800
	ands r2, r3
	orrs r0, r2
	mov r2, lr
	str r0, [r2]
	ldr r0, [sp, #0x58]
	movs r3, #1
	ldrh r0, [r0, #0xa]
	ldr r2, [sp, #0x30]
	lsls r3, r3, #0xa
	subs r0, r2, r0
	ldrh r2, [r1]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x16
	lsrs r2, r2, #0xa
	lsls r2, r2, #0xa
	orrs r2, r0
	strh r2, [r1]
	ldr r0, [sp, #8]
	bics r2, r3
	ldr r0, [r0]
	lsls r3, r3, #1
	lsls r0, r0, #0xf
	lsrs r0, r0, #0x1f
	lsls r0, r0, #0xa
	orrs r2, r0
	strh r2, [r1]
	ldr r0, [sp, #8]
	bics r2, r3
	ldr r0, [r0]
	movs r3, #0xf
	lsls r0, r0, #0xe
	lsrs r0, r0, #0x1f
	lsls r0, r0, #0xb
	orrs r0, r2
	strh r0, [r1]
	ldr r2, [sp, #8]
	lsls r3, r3, #0xc
	ldr r2, [r2]
	bics r0, r3
	lsls r2, r2, #6
	lsrs r2, r2, #0x18
	lsls r2, r2, #0xc
	orrs r0, r2
	strh r0, [r1]
	ldr r0, _0800364C ;@ =gUnknown_03003EA4
	ldr r0, [r0]
	ldr r2, [r5]
	subs r1, r1, r2
	asrs r2, r1, #1
	mov r1, ip
	adds r3, r5, #0
	bl sub_800212C
	b _0800341A
_080032DA
	lsls r0, r0, #0x11
	lsrs r0, r0, #0xf
	mov ip, r2
	add ip, r0
	mov r0, ip
	ldr r0, [r0]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xe
	ldr r2, [r7, r0]
	lsls r3, r2, #0xb
	lsrs r3, r3, #0x16
	beq _080032FA
	lsls r2, r2, #0x15
	lsrs r2, r2, #0x15
	str r2, [sp, #0x30]
	b _080033A4
_080032FA
	ldr r3, [sp, #0x2c]
	adds r0, r0, r7
	ldr r2, [r0]
	movs r3, #1
	lsls r3, r3, #0x15
	bics r2, r3
	ldr r3, [sp, #0x64]
	orrs r2, r3
	str r2, [r0]
	ldr r2, [sp, #0x60]
	ldr r3, [sp, #0x2c]
	str r2, [sp, #8]
	cmp r3, #5
	bne _0800332E
	ldr r0, [r6, #4]
	cmp r0, #0
	bne _0800332E
	ldr r0, [r6, #8]
	str r0, [r6, #4]
	ldr r2, [r0]
	str r2, [r6, #8]
	adds r2, r0, #4
	str r2, [r0]
	ldr r2, [r6, #4]
	movs r0, #0
	str r0, [r2, #4]
_0800332E
	ldr r2, [sp, #8]
	ldr r0, [r2]
	ldr r2, [r4, #0x20]
	subs r0, r0, r2
	asrs r2, r0, #2
	mov r0, ip
	ldr r0, [r0]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xe
	ldr r3, [r7, r0]
	adds r0, r0, r7
	lsls r3, r3, #0xa
	lsrs r3, r3, #0x1f
	asrs r2, r3
	ldr r3, [r0]
	lsls r2, r2, #0x15
	lsrs r3, r3, #0xb
	lsls r3, r3, #0xb
	lsrs r2, r2, #0x15
	orrs r2, r3
	str r2, [r0]
	lsls r2, r2, #0x15
	lsrs r2, r2, #0x15
	str r2, [sp, #0x30]
	ldr r2, [sp, #8]
	ldr r3, [r4, #0x1c]
	ldr r0, [r2]
	ldr r0, [r0]
	mov lr, r0
	ldr r0, [r3]
	ldr r2, [sp, #0x30]
	lsrs r0, r0, #0xb
	lsls r0, r0, #0xb
	orrs r0, r2
	str r0, [r3]
	movs r2, #7
	lsls r2, r2, #0xb
	bics r0, r2
	ldr r3, [r4, #0x1c]
	ldr r2, [sp, #0x5c]
	orrs r0, r2
	str r0, [r3]
	ldr r0, [r5, #0x54]
	ldr r2, [r0, #0xc]
	mov r0, ip
	ldr r0, [r0]
	ldr r3, [sp, #0x2c]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r3
	adds r0, r2, r0
	ldr r2, [r4, #0x1c]
	str r0, [r2, #4]
	ldr r0, [r4, #0x1c]
	adds r0, #8
	str r0, [r4, #0x1c]
	ldr r2, [sp, #8]
	mov r0, lr
	str r0, [r2]
_080033A4
	mov r0, ip
	ldr r0, [r0]
	ldr r3, _08003644 ;@ =0xFFE007FF
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xe
	mov lr, r0
	add lr, r7
	mov r2, lr
	ldr r0, [r2]
	adds r2, r0, #0
	ands r0, r3
	movs r3, #1
	lsls r3, r3, #0xb
	adds r2, r2, r3
	ldr r3, _08003648 ;@ =0x001FF800
	ands r2, r3
	orrs r0, r2
	mov r2, lr
	str r0, [r2]
	ldr r0, [sp, #0x58]
	movs r3, #1
	ldrh r0, [r0, #0xa]
	ldr r2, [sp, #0x30]
	lsls r3, r3, #0xa
	subs r0, r2, r0
	ldrh r2, [r1]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x16
	lsrs r2, r2, #0xa
	lsls r2, r2, #0xa
	orrs r2, r0
	strh r2, [r1]
	mov r0, ip
	ldr r0, [r0]
	bics r2, r3
	lsls r0, r0, #0xf
	lsrs r0, r0, #0x1f
	lsls r0, r0, #0xa
	orrs r2, r0
	strh r2, [r1]
	mov r0, ip
	ldr r0, [r0]
	lsls r3, r3, #1
	bics r2, r3
	lsls r0, r0, #0xe
	lsrs r0, r0, #0x1f
	lsls r0, r0, #0xb
	orrs r0, r2
	strh r0, [r1]
	mov r2, ip
	ldr r2, [r2]
	movs r3, #0xf
	lsls r3, r3, #0xc
	lsls r2, r2, #6
	lsrs r2, r2, #0x18
	lsls r2, r2, #0xc
	bics r0, r3
	orrs r0, r2
	strh r0, [r1]
_0800341A
	ldr r0, [sp, #0x18]
	subs r0, #1
	str r0, [sp, #0x18]
	bne _08003434
	ldr r0, [r5, #0x50]
	ldrh r0, [r0, #0xc]
	ldr r1, [sp, #0x34]
	str r0, [sp, #0x18]
	lsls r0, r0, #1
	subs r0, #2
	subs r0, r1, r0
	str r0, [sp, #0x34]
	b _0800343A
_08003434
	ldr r0, [sp, #0x34]
	adds r0, #2
	str r0, [sp, #0x34]
_0800343A
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x20]
	adds r0, #1
	adds r1, #1
	str r1, [sp, #0x20]
	cmp r0, #0x1e
	str r0, [sp, #0xc]
	bge _0800344C
	b _0800313E
_0800344C
	ldr r0, [r4, #0x28]
	lsrs r0, r0, #1
	lsls r0, r0, #1
	str r0, [r4, #0x28]
	add sp, #0x8c
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3


	thumb_func_start sub_800345C
sub_800345C ;@ 0x0800345C
	push {r0, r1, r2, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	movs r0, #1
	lsls r0, r0, #0xb
	adds r4, r6, r0
	ldr r0, [r4, #0x28]
	adds r5, r1, #0
	movs r1, #1
	orrs r0, r1
	sub sp, #0x68
	str r0, [r4, #0x28]
	ldr r0, _0800364C ;@ =gUnknown_03003EA4
	movs r1, #0x21
	ldr r0, [r0]
	lsls r1, r1, #6
	adds r0, r0, r1
	subs r0, r5, r0
	bl sub_8040504
	ldr r0, [r5, #0x48]
	movs r3, #6
	lsls r2, r0, #0x15
	bmi _0800348C
	movs r3, #5
_0800348C
	lsls r0, r0, #0x15
	lsls r0, r1, #2
	adds r0, r0, r6
	str r3, [sp, #0x28]
	ldr r7, [r0, #0xc]
	ldr r1, [sp, #0x70]
	movs r0, #0x1e
	ldr r1, [r1]
	cmp r1, #0
	bgt _080034A2
	movs r0, #0
_080034A2
	ldr r2, [r5, #0x3c]
	movs r1, #0x15
	str r2, [sp, #0x64]
	lsls r2, r2, #0xd
	lsrs r2, r2, #0x1d
	bne _080034B0
	movs r1, #0x14
_080034B0
	str r1, [sp, #0x24]
	ldr r1, [r5, #0x38]
	asrs r1, r1, #0x13
	adds r1, r1, r0
	lsls r2, r1, #0x1b
	ldr r0, [sp, #0x64]
	lsrs r2, r2, #0x1b
	lsls r0, r0, #8
	lsrs r0, r0, #0x1b
	str r0, [sp, #0x1c]
	str r2, [sp, #0x20]
	ldr r0, [r5, #0x50]
	str r0, [sp, #0x60]
	str r0, [sp, #0x5c]
	ldrh r0, [r0, #0xc]
	str r0, [sp, #0x58]
	bl sub_803C04C
	ldr r0, [sp, #0x64]
	str r1, [sp, #0x18]
	asrs r1, r0, #0x13
	ldr r0, [sp, #0x5c]
	ldrh r0, [r0, #0xe]
	str r0, [sp, #0x54]
	bl sub_803C04C
	ldr r2, [sp, #0x18]
	cmp r2, #0
	bge _080034F2
	ldr r0, [sp, #0x58]
	ldr r2, [sp, #0x18]
	adds r2, r0, r2
	str r2, [sp, #0x18]
_080034F2
	cmp r1, #0
	bge _080034FA
	ldr r0, [sp, #0x54]
	adds r1, r0, r1
_080034FA
	ldr r0, [sp, #0x1c]
	ldr r2, [sp, #0x20]
	lsls r0, r0, #5
	adds r0, r0, r2
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x60]
	ldr r0, [r0, #0x18]
	ldr r2, [sp, #0x18]
	lsls r2, r2, #1
	str r2, [sp, #0x50]
	adds r0, r0, r2
	ldr r2, [sp, #0x58]
	muls r2, r1
	lsls r2, r2, #1
	adds r0, r0, r2
	str r0, [sp, #0x30]
	ldr r0, [sp, #0x54]
	subs r0, r0, r1
	str r0, [sp, #0x14]
	movs r0, #0
	ldr r1, [sp, #0x24]
	str r0, [sp, #0xc]
	cmp r1, #0
	ble _08003610
	ldr r3, [sp, #0x28]
	movs r1, #1
	adds r0, r6, #4
	cmp r3, #5
	bne _08003536
	movs r1, #0
_08003536
	lsls r1, r1, #0x1f
	lsrs r3, r1, #0xa
	str r3, [sp, #0x4c]
	ldr r3, [sp, #0x28]
	adds r1, r6, #0
	adds r1, #8
	cmp r3, #5
	beq _08003548
	adds r0, r1, #0
_08003548
	str r0, [sp, #0x48]
	ldr r3, [sp, #0x28]
	lsls r0, r3, #0x1d
	lsrs r2, r0, #0x12
	adds r0, r5, #0
	adds r0, #0x40
	str r0, [sp, #0x40]
	str r2, [sp, #0x44]
_08003558
	ldr r0, [r5]
	ldr r1, [sp, #0x10]
	lsls r1, r1, #0x16
	lsrs r1, r1, #0x15
	adds r1, r0, r1
	ldr r0, [sp, #0x30]
	ldrh r0, [r0]
	lsrs r2, r0, #0xf
	lsls r2, r2, #0x1f
	ldr r2, [r5, #0x54]
	ldr r2, [r2, #0x10]
	beq _08003640
	lsls r0, r0, #0x11
	lsrs r0, r0, #0xf
	mov ip, r2
	add ip, r0
	mov lr, r2
	mov r2, ip
	ldr r0, [r5, #0x30]
	ldr r2, [r2]
	str r2, [sp, #0x3c]
	lsls r2, r2, #0xc
	lsrs r2, r2, #0x1a
	lsls r3, r2, #1
	adds r2, r3, r2
	lsls r2, r2, #3
	adds r0, r0, r2
	ldr r0, [r0, #0xc]
	ldr r2, [sp, #0x3c]
	lsls r2, r2, #0x12
	lsrs r2, r2, #0x11
	adds r0, r0, r2
	ldrh r0, [r0]
	lsls r0, r0, #0x11
	lsrs r0, r0, #0xf
	add lr, r0
	mov r0, lr
	ldr r0, [r0]
	lsls r0, r0, #0x10
	lsrs r2, r0, #0xe
	ldr r0, [r7, r2]
	lsls r3, r0, #0xb
	lsrs r3, r3, #0x16
	beq _080035B8
	lsls r2, r0, #0x15
	lsrs r2, r2, #0x15
	str r2, [sp, #0x2c]
	b _08003678
_080035B8
	ldr r3, [sp, #0x28]
	adds r0, r2, r7
	ldr r2, [r0]
	movs r3, #1
	lsls r3, r3, #0x15
	bics r2, r3
	ldr r3, [sp, #0x4c]
	orrs r2, r3
	str r2, [r0]
	ldr r2, [sp, #0x48]
	ldr r3, [sp, #0x28]
	str r2, [sp, #8]
	cmp r3, #5
	bne _080035EC
	ldr r0, [r6, #4]
	cmp r0, #0
	bne _080035EC
	ldr r0, [r6, #8]
	str r0, [r6, #4]
	ldr r2, [r0]
	str r2, [r6, #8]
	adds r2, r0, #4
	str r2, [r0]
	ldr r2, [r6, #4]
	movs r0, #0
	str r0, [r2, #4]
_080035EC
	ldr r2, [sp, #8]
	ldr r0, [r2]
	ldr r2, [r4, #0x20]
	subs r0, r0, r2
	asrs r2, r0, #2
	mov r0, lr
	ldr r0, [r0]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xe
	ldr r3, [r7, r0]
	adds r0, r0, r7
	lsls r3, r3, #0xa
	lsrs r3, r3, #0x1f
	asrs r2, r3
	ldr r3, [r0]
	lsrs r3, r3, #0xb
	lsls r3, r3, #0xb
	b _08003612
_08003610
	b _08003874
_08003612
	lsls r2, r2, #0x15
	lsrs r2, r2, #0x15
	orrs r2, r3
	str r2, [r0]
	lsls r2, r2, #0x15
	lsrs r2, r2, #0x15
	str r2, [sp, #0x2c]
	ldr r2, [sp, #8]
	ldr r0, [r2]
	ldr r0, [r0]
	str r0, [sp, #4]
	ldr r3, [r4, #0x1c]
	ldr r0, [r3]
	ldr r2, [sp, #0x2c]
	lsrs r0, r0, #0xb
	lsls r0, r0, #0xb
	orrs r0, r2
	str r0, [r3]
	movs r2, #7
	lsls r2, r2, #0xb
	bics r0, r2
	ldr r3, [r4, #0x1c]
	b _08003650
_08003640
	b _08003700
	ALIGN
_08003644 DCDU 0xFFE007FF
_08003648 DCDU 0x001FF800
_0800364C DCDU gUnknown_03003EA4
_08003650
	ldr r2, [sp, #0x44]
	orrs r0, r2
	str r0, [r3]
	ldr r0, [r5, #0x54]
	ldr r2, [r0, #0xc]
	mov r0, lr
	ldr r0, [r0]
	ldr r3, [sp, #0x28]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r3
	adds r0, r2, r0
	ldr r2, [r4, #0x1c]
	str r0, [r2, #4]
	ldr r0, [r4, #0x1c]
	add r2, sp, #4
	adds r0, #8
	str r0, [r4, #0x1c]
	ldm r2!, {r0, r2}
	str r0, [r2]
_08003678
	mov r0, lr
	ldr r0, [r0]
	ldr r3, _08003A68 ;@ =0xFFE007FF
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xe
	adds r2, r0, r7
	str r2, [sp, #0x38]
	ldr r0, [r2]
	adds r2, r0, #0
	ands r0, r3
	movs r3, #1
	lsls r3, r3, #0xb
	adds r2, r2, r3
	ldr r3, _08003A6C ;@ =0x001FF800
	ands r2, r3
	orrs r0, r2
	ldr r2, [sp, #0x38]
	movs r3, #1
	str r0, [r2]
	ldr r0, [sp, #0x40]
	lsls r3, r3, #0xa
	ldrh r0, [r0, #0xa]
	ldr r2, [sp, #0x2c]
	subs r0, r2, r0
	ldrh r2, [r1]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x16
	lsrs r2, r2, #0xa
	lsls r2, r2, #0xa
	orrs r2, r0
	strh r2, [r1]
	mov r0, lr
	ldr r0, [r0]
	bics r2, r3
	lsls r0, r0, #0xf
	lsrs r0, r0, #0x1f
	lsls r0, r0, #0xa
	orrs r2, r0
	strh r2, [r1]
	mov r0, lr
	ldr r0, [r0]
	lsls r3, r3, #1
	bics r2, r3
	lsls r0, r0, #0xe
	lsrs r0, r0, #0x1f
	lsls r0, r0, #0xb
	orrs r0, r2
	strh r0, [r1]
	mov r2, lr
	ldr r2, [r2]
	movs r3, #0xf
	lsls r2, r2, #6
	lsrs r2, r2, #0x18
	lsls r3, r3, #0xc
	bics r0, r3
	lsls r2, r2, #0xc
	orrs r0, r2
	strh r0, [r1]
	ldr r0, _08003A70 ;@ =gUnknown_03003EA4
	ldr r0, [r0]
	ldr r2, [r5]
	subs r1, r1, r2
	asrs r2, r1, #1
	mov r1, ip
	adds r3, r5, #0
	bl sub_800212C
	b _0800383E
_08003700
	lsls r0, r0, #0x11
	lsrs r0, r0, #0xf
	mov ip, r2
	add ip, r0
	mov r0, ip
	ldr r0, [r0]
	lsls r0, r0, #0x10
	lsrs r2, r0, #0xe
	ldr r0, [r7, r2]
	lsls r3, r0, #0xb
	lsrs r3, r3, #0x16
	beq _08003720
	lsls r2, r0, #0x15
	lsrs r2, r2, #0x15
	mov lr, r2
	b _080037CA
_08003720
	ldr r3, [sp, #0x28]
	adds r0, r2, r7
	ldr r2, [r0]
	movs r3, #1
	lsls r3, r3, #0x15
	bics r2, r3
	ldr r3, [sp, #0x4c]
	orrs r2, r3
	str r2, [r0]
	ldr r2, [sp, #0x48]
	ldr r3, [sp, #0x28]
	str r2, [sp, #8]
	cmp r3, #5
	bne _08003754
	ldr r0, [r6, #4]
	cmp r0, #0
	bne _08003754
	ldr r0, [r6, #8]
	str r0, [r6, #4]
	ldr r2, [r0]
	str r2, [r6, #8]
	adds r2, r0, #4
	str r2, [r0]
	ldr r2, [r6, #4]
	movs r0, #0
	str r0, [r2, #4]
_08003754
	ldr r2, [sp, #8]
	ldr r0, [r2]
	ldr r2, [r4, #0x20]
	subs r0, r0, r2
	asrs r2, r0, #2
	mov r0, ip
	ldr r0, [r0]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xe
	ldr r3, [r7, r0]
	adds r0, r0, r7
	lsls r3, r3, #0xa
	lsrs r3, r3, #0x1f
	asrs r2, r3
	ldr r3, [r0]
	lsls r2, r2, #0x15
	lsrs r3, r3, #0xb
	lsls r3, r3, #0xb
	lsrs r2, r2, #0x15
	orrs r2, r3
	str r2, [r0]
	lsls r2, r2, #0x15
	lsrs r2, r2, #0x15
	mov lr, r2
	ldr r2, [sp, #8]
	ldr r0, [r2]
	mov r2, lr
	ldr r0, [r0]
	str r0, [sp, #4]
	ldr r3, [r4, #0x1c]
	ldr r0, [r3]
	lsrs r0, r0, #0xb
	lsls r0, r0, #0xb
	orrs r0, r2
	str r0, [r3]
	movs r2, #7
	lsls r2, r2, #0xb
	bics r0, r2
	ldr r3, [r4, #0x1c]
	ldr r2, [sp, #0x44]
	orrs r0, r2
	str r0, [r3]
	ldr r0, [r5, #0x54]
	ldr r2, [r0, #0xc]
	mov r0, ip
	ldr r0, [r0]
	ldr r3, [sp, #0x28]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r3
	adds r0, r2, r0
	ldr r2, [r4, #0x1c]
	str r0, [r2, #4]
	ldr r0, [r4, #0x1c]
	add r2, sp, #4
	adds r0, #8
	str r0, [r4, #0x1c]
	ldm r2!, {r0, r2}
	str r0, [r2]
_080037CA
	mov r0, ip
	ldr r0, [r0]
	ldr r3, _08003A68 ;@ =0xFFE007FF
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xe
	adds r2, r0, r7
	str r2, [sp, #0x34]
	ldr r0, [r2]
	adds r2, r0, #0
	ands r0, r3
	movs r3, #1
	lsls r3, r3, #0xb
	adds r2, r2, r3
	ldr r3, _08003A6C ;@ =0x001FF800
	ands r2, r3
	orrs r0, r2
	ldr r2, [sp, #0x34]
	movs r3, #1
	str r0, [r2]
	ldr r0, [sp, #0x40]
	mov r2, lr
	ldrh r0, [r0, #0xa]
	lsls r3, r3, #0xa
	subs r0, r2, r0
	ldrh r2, [r1]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x16
	lsrs r2, r2, #0xa
	lsls r2, r2, #0xa
	orrs r2, r0
	strh r2, [r1]
	mov r0, ip
	ldr r0, [r0]
	bics r2, r3
	lsls r0, r0, #0xf
	lsrs r0, r0, #0x1f
	lsls r0, r0, #0xa
	orrs r2, r0
	strh r2, [r1]
	mov r0, ip
	ldr r0, [r0]
	lsls r3, r3, #1
	bics r2, r3
	lsls r0, r0, #0xe
	lsrs r0, r0, #0x1f
	lsls r0, r0, #0xb
	orrs r0, r2
	strh r0, [r1]
	mov r2, ip
	ldr r2, [r2]
	movs r3, #0xf
	lsls r3, r3, #0xc
	lsls r2, r2, #6
	lsrs r2, r2, #0x18
	lsls r2, r2, #0xc
	bics r0, r3
	orrs r0, r2
	strh r0, [r1]
_0800383E
	ldr r0, [sp, #0x14]
	subs r0, #1
	str r0, [sp, #0x14]
	ldr r0, [r5, #0x50]
	bne _08003856
	ldrh r1, [r0, #0xe]
	str r1, [sp, #0x14]
	ldr r0, [r0, #0x18]
	ldr r1, [sp, #0x50]
	adds r0, r0, r1
	str r0, [sp, #0x30]
	b _08003860
_08003856
	ldrh r0, [r0, #0xc]
	ldr r1, [sp, #0x30]
	lsls r0, r0, #1
	adds r0, r0, r1
	str r0, [sp, #0x30]
_08003860
	ldr r1, [sp, #0x10]
	ldr r0, [sp, #0xc]
	adds r1, #0x20
	str r1, [sp, #0x10]
	ldr r1, [sp, #0x24]
	adds r0, #1
	str r0, [sp, #0xc]
	cmp r0, r1
	bge _08003874
	b _08003558
_08003874
	ldr r0, [r4, #0x28]
	lsrs r0, r0, #1
	lsls r0, r0, #1
	str r0, [r4, #0x28]
	add sp, #0x74
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3


	thumb_func_start sub_8003884
sub_8003884 ;@ 0x08003884
	push {r0, r1, r2, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	movs r0, #1
	lsls r0, r0, #0xb
	adds r4, r6, r0
	ldr r0, [r4, #0x28]
	adds r5, r1, #0
	movs r1, #1
	orrs r0, r1
	sub sp, #0x60
	str r0, [r4, #0x28]
	ldr r0, _08003A70 ;@ =gUnknown_03003EA4
	movs r1, #0x21
	ldr r0, [r0]
	lsls r1, r1, #6
	adds r0, r0, r1
	subs r0, r5, r0
	bl sub_8040504
	ldr r0, [r5, #0x48]
	movs r3, #6
	lsls r2, r0, #0x15
	bmi _080038B4
	movs r3, #5
_080038B4
	lsls r0, r0, #0x15
	lsls r0, r1, #2
	adds r0, r0, r6
	str r3, [sp, #0x20]
	ldr r7, [r0, #0xc]
	ldr r0, [sp, #0x68]
	movs r1, #0x14
	ldr r0, [r0, #4]
	cmp r0, #0
	bgt _080038CA
	movs r1, #0
_080038CA
	ldr r0, [r5, #0x38]
	movs r2, #0x1f
	lsls r3, r0, #0xd
	lsrs r3, r3, #0x1d
	bne _080038D6
	movs r2, #0x1e
_080038D6
	str r2, [sp, #0x1c]
	lsls r2, r0, #8
	lsrs r2, r2, #0x1b
	str r2, [sp, #0x18]
	ldr r2, [r5, #0x3c]
	asrs r2, r2, #0x13
	adds r1, r2, r1
	str r1, [sp, #0x5c]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1b
	str r1, [sp, #0x14]
	asrs r1, r0, #0x13
	ldr r0, [r5, #0x50]
	str r0, [sp, #0x58]
	str r0, [sp, #0x54]
	ldrh r0, [r0, #0xc]
	str r0, [sp, #0x50]
	bl sub_803C04C
	ldr r0, [sp, #0x54]
	str r1, [sp, #0x10]
	ldrh r0, [r0, #0xe]
	ldr r1, [sp, #0x5c]
	str r0, [sp, #0x4c]
	bl sub_803C04C
	ldr r2, [sp, #0x10]
	cmp r2, #0
	bge _08003918
	ldr r0, [sp, #0x50]
	ldr r2, [sp, #0x10]
	adds r2, r0, r2
	str r2, [sp, #0x10]
_08003918
	cmp r1, #0
	bge _08003920
	ldr r0, [sp, #0x4c]
	adds r1, r0, r1
_08003920
	ldr r0, [sp, #0x58]
	ldr r0, [r0, #0x18]
	ldr r2, [sp, #0x10]
	lsls r2, r2, #1
	adds r0, r0, r2
	ldr r2, [sp, #0x50]
	muls r2, r1
	lsls r1, r2, #1
	adds r0, r0, r1
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x50]
	ldr r1, [sp, #0x10]
	subs r0, r0, r1
	str r0, [sp, #0x10]
	movs r0, #0
	ldr r1, [sp, #0x1c]
	str r0, [sp, #0xc]
	cmp r1, #0
	ble _08003A2A
	ldr r0, [sp, #0x14]
	ldr r3, [sp, #0x20]
	lsls r1, r0, #6
	str r1, [sp, #0x48]
	movs r1, #1
	adds r0, r6, #4
	cmp r3, #5
	bne _08003958
	movs r1, #0
_08003958
	lsls r1, r1, #0x1f
	lsrs r3, r1, #0xa
	str r3, [sp, #0x44]
	ldr r3, [sp, #0x20]
	adds r1, r6, #0
	adds r1, #8
	cmp r3, #5
	beq _0800396A
	adds r0, r1, #0
_0800396A
	str r0, [sp, #0x40]
	ldr r3, [sp, #0x20]
	lsls r0, r3, #0x1d
	lsrs r2, r0, #0x12
	adds r0, r5, #0
	adds r0, #0x40
	str r0, [sp, #0x38]
	str r2, [sp, #0x3c]
_0800397A
	ldr r0, [r5]
	ldr r1, [sp, #0x18]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1a
	adds r0, r0, r1
	ldr r1, [sp, #0x48]
	adds r1, r0, r1
	ldr r0, [sp, #0x28]
	ldrh r0, [r0]
	lsrs r2, r0, #0xf
	lsls r2, r2, #0x1f
	ldr r2, [r5, #0x54]
	ldr r2, [r2, #0x10]
	beq _08003A66
	lsls r0, r0, #0x11
	lsrs r0, r0, #0xf
	mov ip, r2
	add ip, r0
	mov lr, r2
	mov r2, ip
	ldr r0, [r5, #0x30]
	ldr r2, [r2]
	str r2, [sp, #0x34]
	lsls r2, r2, #0xc
	lsrs r2, r2, #0x1a
	lsls r3, r2, #1
	adds r2, r3, r2
	lsls r2, r2, #3
	adds r0, r0, r2
	ldr r0, [r0, #0xc]
	ldr r2, [sp, #0x34]
	lsls r2, r2, #0x12
	lsrs r2, r2, #0x11
	adds r0, r0, r2
	ldrh r0, [r0]
	lsls r0, r0, #0x11
	lsrs r0, r0, #0xf
	add lr, r0
	mov r0, lr
	ldr r0, [r0]
	lsls r0, r0, #0x10
	lsrs r2, r0, #0xe
	ldr r0, [r7, r2]
	lsls r3, r0, #0xb
	lsrs r3, r3, #0x16
	beq _080039DE
	lsls r2, r0, #0x15
	lsrs r2, r2, #0x15
	str r2, [sp, #0x24]
	b _08003A9C
_080039DE
	ldr r3, [sp, #0x20]
	adds r0, r2, r7
	ldr r2, [r0]
	movs r3, #1
	lsls r3, r3, #0x15
	bics r2, r3
	ldr r3, [sp, #0x44]
	orrs r2, r3
	str r2, [r0]
	ldr r2, [sp, #0x40]
	ldr r3, [sp, #0x20]
	str r2, [sp, #8]
	cmp r3, #5
	bne _08003A12
	ldr r0, [r6, #4]
	cmp r0, #0
	bne _08003A12
	ldr r0, [r6, #8]
	str r0, [r6, #4]
	ldr r2, [r0]
	str r2, [r6, #8]
	adds r2, r0, #4
	str r2, [r0]
	ldr r2, [r6, #4]
	movs r0, #0
	str r0, [r2, #4]
_08003A12
	ldr r2, [sp, #8]
	ldr r0, [r2]
	ldr r2, [r4, #0x20]
	subs r0, r0, r2
	asrs r2, r0, #2
	mov r0, lr
	ldr r0, [r0]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xe
	ldr r3, [r7, r0]
	lsls r3, r3, #0xa
	b _08003A2C
_08003A2A
	b _08003C96
_08003A2C
	lsrs r3, r3, #0x1f
	asrs r2, r3
	adds r0, r0, r7
	ldr r3, [r0]
	lsls r2, r2, #0x15
	lsrs r3, r3, #0xb
	lsls r3, r3, #0xb
	lsrs r2, r2, #0x15
	orrs r2, r3
	str r2, [r0]
	lsls r2, r2, #0x15
	lsrs r2, r2, #0x15
	str r2, [sp, #0x24]
	ldr r2, [sp, #8]
	ldr r0, [r2]
	ldr r0, [r0]
	str r0, [sp, #4]
	ldr r3, [r4, #0x1c]
	ldr r0, [r3]
	ldr r2, [sp, #0x24]
	lsrs r0, r0, #0xb
	lsls r0, r0, #0xb
	orrs r0, r2
	str r0, [r3]
	movs r2, #7
	lsls r2, r2, #0xb
	bics r0, r2
	ldr r3, [r4, #0x1c]
	b _08003A74
_08003A66
	b _08003B24
	ALIGN
_08003A68 DCDU 0xFFE007FF
_08003A6C DCDU 0x001FF800
_08003A70 DCDU gUnknown_03003EA4
_08003A74
	ldr r2, [sp, #0x3c]
	orrs r0, r2
	str r0, [r3]
	ldr r0, [r5, #0x54]
	ldr r2, [r0, #0xc]
	mov r0, lr
	ldr r0, [r0]
	ldr r3, [sp, #0x20]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r3
	adds r0, r2, r0
	ldr r2, [r4, #0x1c]
	str r0, [r2, #4]
	ldr r0, [r4, #0x1c]
	add r2, sp, #4
	adds r0, #8
	str r0, [r4, #0x1c]
	ldm r2!, {r0, r2}
	str r0, [r2]
_08003A9C
	mov r0, lr
	ldr r0, [r0]
	ldr r3, _08003E8C ;@ =0xFFE007FF
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xe
	adds r2, r0, r7
	str r2, [sp, #0x30]
	ldr r0, [r2]
	adds r2, r0, #0
	ands r0, r3
	movs r3, #1
	lsls r3, r3, #0xb
	adds r2, r2, r3
	ldr r3, _08003E90 ;@ =0x001FF800
	ands r2, r3
	orrs r0, r2
	ldr r2, [sp, #0x30]
	movs r3, #1
	str r0, [r2]
	ldr r0, [sp, #0x38]
	lsls r3, r3, #0xa
	ldrh r0, [r0, #0xa]
	ldr r2, [sp, #0x24]
	subs r0, r2, r0
	ldrh r2, [r1]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x16
	lsrs r2, r2, #0xa
	lsls r2, r2, #0xa
	orrs r2, r0
	strh r2, [r1]
	mov r0, lr
	ldr r0, [r0]
	bics r2, r3
	lsls r0, r0, #0xf
	lsrs r0, r0, #0x1f
	lsls r0, r0, #0xa
	orrs r2, r0
	strh r2, [r1]
	mov r0, lr
	ldr r0, [r0]
	lsls r3, r3, #1
	bics r2, r3
	lsls r0, r0, #0xe
	lsrs r0, r0, #0x1f
	lsls r0, r0, #0xb
	orrs r0, r2
	strh r0, [r1]
	mov r2, lr
	ldr r2, [r2]
	movs r3, #0xf
	lsls r2, r2, #6
	lsrs r2, r2, #0x18
	lsls r3, r3, #0xc
	bics r0, r3
	lsls r2, r2, #0xc
	orrs r0, r2
	strh r0, [r1]
	ldr r0, _08003E94 ;@ =gUnknown_03003EA4
	ldr r0, [r0]
	ldr r2, [r5]
	subs r1, r1, r2
	asrs r2, r1, #1
	mov r1, ip
	adds r3, r5, #0
	bl sub_800212C
	b _08003C62
_08003B24
	lsls r0, r0, #0x11
	lsrs r0, r0, #0xf
	mov ip, r2
	add ip, r0
	mov r0, ip
	ldr r0, [r0]
	lsls r0, r0, #0x10
	lsrs r2, r0, #0xe
	ldr r0, [r7, r2]
	lsls r3, r0, #0xb
	lsrs r3, r3, #0x16
	beq _08003B44
	lsls r2, r0, #0x15
	lsrs r2, r2, #0x15
	mov lr, r2
	b _08003BEE
_08003B44
	ldr r3, [sp, #0x20]
	adds r0, r2, r7
	ldr r2, [r0]
	movs r3, #1
	lsls r3, r3, #0x15
	bics r2, r3
	ldr r3, [sp, #0x44]
	orrs r2, r3
	str r2, [r0]
	ldr r2, [sp, #0x40]
	ldr r3, [sp, #0x20]
	str r2, [sp, #8]
	cmp r3, #5
	bne _08003B78
	ldr r0, [r6, #4]
	cmp r0, #0
	bne _08003B78
	ldr r0, [r6, #8]
	str r0, [r6, #4]
	ldr r2, [r0]
	str r2, [r6, #8]
	adds r2, r0, #4
	str r2, [r0]
	ldr r2, [r6, #4]
	movs r0, #0
	str r0, [r2, #4]
_08003B78
	ldr r2, [sp, #8]
	ldr r0, [r2]
	ldr r2, [r4, #0x20]
	subs r0, r0, r2
	asrs r2, r0, #2
	mov r0, ip
	ldr r0, [r0]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xe
	ldr r3, [r7, r0]
	adds r0, r0, r7
	lsls r3, r3, #0xa
	lsrs r3, r3, #0x1f
	asrs r2, r3
	ldr r3, [r0]
	lsls r2, r2, #0x15
	lsrs r3, r3, #0xb
	lsls r3, r3, #0xb
	lsrs r2, r2, #0x15
	orrs r2, r3
	str r2, [r0]
	lsls r2, r2, #0x15
	lsrs r2, r2, #0x15
	mov lr, r2
	ldr r2, [sp, #8]
	ldr r0, [r2]
	mov r2, lr
	ldr r0, [r0]
	str r0, [sp, #4]
	ldr r3, [r4, #0x1c]
	ldr r0, [r3]
	lsrs r0, r0, #0xb
	lsls r0, r0, #0xb
	orrs r0, r2
	str r0, [r3]
	movs r2, #7
	lsls r2, r2, #0xb
	bics r0, r2
	ldr r3, [r4, #0x1c]
	ldr r2, [sp, #0x3c]
	orrs r0, r2
	str r0, [r3]
	ldr r0, [r5, #0x54]
	ldr r2, [r0, #0xc]
	mov r0, ip
	ldr r0, [r0]
	ldr r3, [sp, #0x20]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r3
	adds r0, r2, r0
	ldr r2, [r4, #0x1c]
	str r0, [r2, #4]
	ldr r0, [r4, #0x1c]
	add r2, sp, #4
	adds r0, #8
	str r0, [r4, #0x1c]
	ldm r2!, {r0, r2}
	str r0, [r2]
_08003BEE
	mov r0, ip
	ldr r0, [r0]
	ldr r3, _08003E8C ;@ =0xFFE007FF
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xe
	adds r2, r0, r7
	str r2, [sp, #0x2c]
	ldr r0, [r2]
	adds r2, r0, #0
	ands r0, r3
	movs r3, #1
	lsls r3, r3, #0xb
	adds r2, r2, r3
	ldr r3, _08003E90 ;@ =0x001FF800
	ands r2, r3
	orrs r0, r2
	ldr r2, [sp, #0x2c]
	movs r3, #1
	str r0, [r2]
	ldr r0, [sp, #0x38]
	mov r2, lr
	ldrh r0, [r0, #0xa]
	lsls r3, r3, #0xa
	subs r0, r2, r0
	ldrh r2, [r1]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x16
	lsrs r2, r2, #0xa
	lsls r2, r2, #0xa
	orrs r2, r0
	strh r2, [r1]
	mov r0, ip
	ldr r0, [r0]
	bics r2, r3
	lsls r0, r0, #0xf
	lsrs r0, r0, #0x1f
	lsls r0, r0, #0xa
	orrs r2, r0
	strh r2, [r1]
	mov r0, ip
	ldr r0, [r0]
	lsls r3, r3, #1
	bics r2, r3
	lsls r0, r0, #0xe
	lsrs r0, r0, #0x1f
	lsls r0, r0, #0xb
	orrs r0, r2
	strh r0, [r1]
	mov r2, ip
	ldr r2, [r2]
	movs r3, #0xf
	lsls r3, r3, #0xc
	lsls r2, r2, #6
	lsrs r2, r2, #0x18
	lsls r2, r2, #0xc
	bics r0, r3
	orrs r0, r2
	strh r0, [r1]
_08003C62
	ldr r0, [sp, #0x10]
	subs r0, #1
	str r0, [sp, #0x10]
	bne _08003C7C
	ldr r0, [r5, #0x50]
	ldrh r0, [r0, #0xc]
	ldr r1, [sp, #0x28]
	str r0, [sp, #0x10]
	lsls r0, r0, #1
	subs r0, #2
	subs r0, r1, r0
	str r0, [sp, #0x28]
	b _08003C82
_08003C7C
	ldr r0, [sp, #0x28]
	adds r0, #2
	str r0, [sp, #0x28]
_08003C82
	ldr r1, [sp, #0x18]
	ldr r0, [sp, #0xc]
	adds r1, #1
	str r1, [sp, #0x18]
	ldr r1, [sp, #0x1c]
	adds r0, #1
	str r0, [sp, #0xc]
	cmp r0, r1
	bge _08003C96
	b _0800397A
_08003C96
	ldr r0, [r4, #0x28]
	lsrs r0, r0, #1
	lsls r0, r0, #1
	str r0, [r4, #0x28]
	add sp, #0x6c
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_8003CA6
sub_8003CA6 ;@ 0x08003CA6
	push {r0, r1, r2, r4, r5, r6, r7, lr}
	sub sp, #0x48
	adds r4, r1, #0
	movs r1, #1
	ldr r0, [sp, #0x48]
	lsls r1, r1, #0xb
	adds r6, r0, r1
	ldr r0, [r6, #0x28]
	movs r1, #2
	orrs r0, r1
	str r0, [r6, #0x28]
	ldr r0, _08003E94 ;@ =gUnknown_03003EA4
	movs r1, #0x21
	ldr r0, [r0]
	lsls r1, r1, #6
	adds r0, r0, r1
	adds r7, r2, #0
	subs r0, r4, r0
	bl sub_8040504
	ldr r0, [r4, #0x48]
	lsls r2, r0, #0x15
	lsls r0, r0, #0x15
	lsls r0, r1, #2
	ldr r1, [sp, #0x48]
	adds r0, r0, r1
	ldr r5, [r0, #0xc]
	movs r0, #0
	ldr r1, [r7]
	mvns r0, r0
	adds r3, r0, #0
	cmp r1, #0
	mov lr, r1
	bgt _08003CF6
	ldr r1, [r4, #0x38]
	movs r3, #0x1f
	lsls r1, r1, #0xd
	lsrs r1, r1, #0x1d
	bne _08003CF6
	movs r3, #0x1e
_08003CF6
	ldr r1, [r7, #4]
	adds r2, r0, #0
	cmp r1, #0
	mov ip, r3
	bgt _08003D0C
	ldr r3, [r4, #0x3c]
	movs r2, #0x15
	lsls r3, r3, #0xd
	lsrs r3, r3, #0x1d
	bne _08003D0C
	movs r2, #0x14
_08003D0C
	str r2, [sp, #0xc]
	ldr r3, [r4, #0x38]
	movs r2, #0
	lsls r7, r3, #0xd
	lsrs r7, r7, #0x1d
	beq _08003D22
	movs r2, #1
	mov r7, lr
	cmp r7, #0
	ble _08003D22
	movs r2, #0
_08003D22
	str r2, [sp, #8]
	ldr r2, [r4, #0x3c]
	lsls r7, r2, #0xd
	lsrs r7, r7, #0x1d
	bne _08003D34
	cmp r1, #0
	bgt _08003D3A
	movs r0, #0
	b _08003D3A
_08003D34
	cmp r1, #0
	bgt _08003D3A
	movs r0, #1
_08003D3A
	asrs r1, r3, #0x13
	asrs r2, r2, #0x13
	adds r0, r2, r0
	str r0, [sp, #0x44]
	ldr r0, [r4, #0x50]
	add r1, ip
	str r0, [sp, #0x40]
	str r0, [sp, #0x3c]
	ldrh r0, [r0, #0xc]
	str r0, [sp, #0x38]
	bl sub_803C04C
	ldr r0, [sp, #0x3c]
	adds r7, r1, #0
	ldrh r0, [r0, #0xe]
	ldr r1, [sp, #0x44]
	str r0, [sp, #0x34]
	bl sub_803C04C
	cmp r7, #0
	bge _08003D68
	ldr r0, [sp, #0x38]
	adds r7, r0, r7
_08003D68
	cmp r1, #0
	bge _08003D70
	ldr r0, [sp, #0x34]
	adds r1, r0, r1
_08003D70
	ldr r0, [sp, #0x40]
	lsls r2, r7, #1
	ldr r0, [r0, #0x18]
	str r2, [sp, #0x30]
	adds r0, r0, r2
	ldr r2, [sp, #0x38]
	muls r2, r1
	lsls r2, r2, #1
	adds r0, r0, r2
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x34]
	subs r0, r0, r1
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp]
	ldr r0, [sp, #0x48]
	adds r0, #8
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x48]
	adds r0, #4
	str r0, [sp, #0x28]
_08003D9A
	ldr r1, [sp, #0x10]
	ldrh r0, [r1]
	lsrs r1, r0, #0xf
	lsls r1, r1, #0x1f
	ldr r1, [r4, #0x54]
	ldr r1, [r1, #0x10]
	beq _08003E30
	lsls r0, r0, #0x11
	lsrs r0, r0, #0xf
	adds r7, r1, r0
	adds r2, r1, #0
	ldr r1, [r7]
	ldr r0, [r4, #0x30]
	mov ip, r1
	lsls r1, r1, #0xc
	lsrs r1, r1, #0x1a
	lsls r3, r1, #1
	adds r1, r3, r1
	lsls r1, r1, #3
	adds r0, r0, r1
	mov r1, ip
	lsls r1, r1, #0x12
	ldr r0, [r0, #0xc]
	lsrs r1, r1, #0x11
	adds r0, r0, r1
	ldrh r0, [r0]
	mov ip, r2
	ldr r2, _08003E8C ;@ =0xFFE007FF
	lsls r0, r0, #0x11
	lsrs r0, r0, #0xf
	add ip, r0
	mov r1, ip
	ldr r0, [r1]
	movs r3, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xe
	adds r0, r0, r5
	ldr r1, [r0]
	lsls r3, r3, #0xb
	ands r2, r1
	subs r1, r1, r3
	ldr r3, _08003E90 ;@ =0x001FF800
	ands r1, r3
	orrs r1, r2
	str r1, [r0]
	lsls r0, r1, #0xb
	lsrs r0, r0, #0x16
	bne _08003E22
	mov r1, ip
	ldr r0, [sp, #0x2c]
	ldr r1, [r1]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0xe
	ldr r1, [r5, r1]
	lsls r2, r1, #0xa
	bmi _08003E0C
	ldr r0, [sp, #0x28]
_08003E0C
	lsls r2, r1, #0x15
	lsls r1, r1, #0xa
	lsrs r1, r1, #0x1f
	lsrs r2, r2, #0x15
	lsls r2, r1
	lsls r1, r2, #2
	ldr r2, [r6, #0x20]
	adds r1, r1, r2
	ldr r2, [r0]
	str r2, [r1]
	str r1, [r0]
_08003E22
	ldr r0, _08003E94 ;@ =gUnknown_03003EA4
	adds r2, r4, #0
	adds r1, r7, #0
	ldr r0, [r0]
	bl sub_8002230
	b _08003E7E
_08003E30
	lsls r0, r0, #0x11
	lsrs r0, r0, #0xf
	adds r0, r1, r0
	ldr r1, [r0]
	ldr r3, _08003E8C ;@ =0xFFE007FF
	lsls r1, r1, #0x10
	lsrs r1, r1, #0xe
	adds r1, r1, r5
	ldr r2, [r1]
	movs r7, #1
	lsls r7, r7, #0xb
	ands r3, r2
	subs r2, r2, r7
	ldr r7, _08003E90 ;@ =0x001FF800
	ands r2, r7
	orrs r2, r3
	str r2, [r1]
	lsls r1, r2, #0xb
	lsrs r1, r1, #0x16
	bne _08003E7E
	ldr r1, [sp, #0x2c]
	ldr r0, [r0]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xe
	ldr r0, [r5, r0]
	lsls r2, r0, #0xa
	bmi _08003E68
	ldr r1, [sp, #0x28]
_08003E68
	lsls r2, r0, #0x15
	lsls r0, r0, #0xa
	lsrs r0, r0, #0x1f
	lsrs r2, r2, #0x15
	lsls r2, r0
	lsls r0, r2, #2
	ldr r2, [r6, #0x20]
	adds r0, r0, r2
	ldr r2, [r1]
	str r2, [r0]
	str r0, [r1]
_08003E7E
	ldr r0, [sp, #4]
	subs r0, #1
	str r0, [sp, #4]
	ldr r0, [r4, #0x50]
	bne _08003EA6
	b _08003E98
	ALIGN
_08003E8C DCDU 0xFFE007FF
_08003E90 DCDU 0x001FF800
_08003E94 DCDU gUnknown_03003EA4
_08003E98
	ldrh r1, [r0, #0xe]
	str r1, [sp, #4]
	ldr r0, [r0, #0x18]
	ldr r1, [sp, #0x30]
	adds r1, r0, r1
	str r1, [sp, #0x10]
	b _08003EB0
_08003EA6
	ldrh r0, [r0, #0xc]
	ldr r1, [sp, #0x10]
	lsls r0, r0, #1
	adds r1, r0, r1
	str r1, [sp, #0x10]
_08003EB0
	ldr r0, [sp]
	adds r0, #1
	str r0, [sp]
	cmp r0, #0x15
	bge _08003EBC
	b _08003D9A
_08003EBC
	ldr r0, [r4, #0x38]
	ldr r2, [sp, #8]
	asrs r0, r0, #0x13
	adds r1, r0, r2
	ldr r0, [r4, #0x3c]
	ldr r2, [sp, #0xc]
	asrs r0, r0, #0x13
	adds r0, r0, r2
	str r0, [sp, #0x24]
	ldr r0, [r4, #0x50]
	str r0, [sp, #0x20]
	str r0, [sp, #0x1c]
	ldrh r0, [r0, #0xc]
	str r0, [sp, #0x18]
	bl sub_803C04C
	ldr r0, [sp, #0x1c]
	adds r7, r1, #0
	ldrh r0, [r0, #0xe]
	ldr r1, [sp, #0x24]
	str r0, [sp, #0x14]
	bl sub_803C04C
	cmp r7, #0
	bge _08003EF2
	ldr r0, [sp, #0x18]
	adds r7, r0, r7
_08003EF2
	cmp r1, #0
	bge _08003EFA
	ldr r0, [sp, #0x14]
	adds r1, r0, r1
_08003EFA
	ldr r0, [sp, #0x20]
	lsls r2, r7, #1
	ldr r0, [r0, #0x18]
	adds r0, r0, r2
	ldr r2, [sp, #0x18]
	muls r2, r1
	lsls r1, r2, #1
	adds r1, r0, r1
	ldr r0, [sp, #0x18]
	str r1, [sp, #0x10]
	subs r7, r0, r7
	movs r0, #0
	str r0, [sp]
_08003F14
	ldr r1, [sp, #0x10]
	ldrh r0, [r1]
	lsrs r1, r0, #0xf
	lsls r1, r1, #0x1f
	ldr r1, [r4, #0x54]
	ldr r1, [r1, #0x10]
	beq _08003FAE
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
	ldr r2, _08004230 ;@ =0xFFE007FF
	lsls r0, r0, #0x11
	lsrs r0, r0, #0xf
	add lr, r0
	mov r1, lr
	ldr r0, [r1]
	movs r3, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xe
	adds r0, r0, r5
	ldr r1, [r0]
	lsls r3, r3, #0xb
	ands r2, r1
	subs r1, r1, r3
	ldr r3, _08004234 ;@ =0x001FF800
	ands r1, r3
	orrs r1, r2
	str r1, [r0]
	lsls r0, r1, #0xb
	lsrs r0, r0, #0x16
	bne _08003FA0
	mov r1, lr
	ldr r0, [sp, #0x2c]
	ldr r1, [r1]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0xe
	ldr r1, [r5, r1]
	lsls r2, r1, #0xa
	bmi _08003F8A
	ldr r0, [sp, #0x28]
_08003F8A
	lsls r2, r1, #0x15
	lsls r1, r1, #0xa
	lsrs r1, r1, #0x1f
	lsrs r2, r2, #0x15
	lsls r2, r1
	lsls r1, r2, #2
	ldr r2, [r6, #0x20]
	adds r1, r1, r2
	ldr r2, [r0]
	str r2, [r1]
	str r1, [r0]
_08003FA0
	ldr r0, _08004238 ;@ =gUnknown_03003EA4
	adds r2, r4, #0
	mov r1, ip
	ldr r0, [r0]
	bl sub_8002230
	b _08004002
_08003FAE
	lsls r0, r0, #0x11
	lsrs r0, r0, #0xf
	mov ip, r1
	add ip, r0
	mov r1, ip
	ldr r0, [r1]
	ldr r2, _08004230 ;@ =0xFFE007FF
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xe
	adds r0, r0, r5
	ldr r1, [r0]
	movs r3, #1
	lsls r3, r3, #0xb
	ands r2, r1
	subs r1, r1, r3
	ldr r3, _08004234 ;@ =0x001FF800
	ands r1, r3
	orrs r1, r2
	str r1, [r0]
	lsls r0, r1, #0xb
	lsrs r0, r0, #0x16
	bne _08004002
	mov r1, ip
	ldr r0, [sp, #0x2c]
	ldr r1, [r1]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0xe
	ldr r1, [r5, r1]
	lsls r2, r1, #0xa
	bmi _08003FEC
	ldr r0, [sp, #0x28]
_08003FEC
	lsls r2, r1, #0x15
	lsls r1, r1, #0xa
	lsrs r1, r1, #0x1f
	lsrs r2, r2, #0x15
	lsls r2, r1
	lsls r1, r2, #2
	ldr r2, [r6, #0x20]
	adds r1, r1, r2
	ldr r2, [r0]
	str r2, [r1]
	str r1, [r0]
_08004002
	subs r7, #1
	bne _08004016
	ldr r0, [r4, #0x50]
	ldrh r7, [r0, #0xc]
	ldr r1, [sp, #0x10]
	lsls r0, r7, #1
	subs r0, #2
	subs r1, r1, r0
	str r1, [sp, #0x10]
	b _0800401C
_08004016
	ldr r1, [sp, #0x10]
	adds r1, #2
	str r1, [sp, #0x10]
_0800401C
	ldr r0, [sp]
	adds r0, #1
	str r0, [sp]
	cmp r0, #0x1e
	bge _08004028
	b _08003F14
_08004028
	ldr r0, [r6, #0x28]
	movs r1, #2
	bics r0, r1
	str r0, [r6, #0x28]
	add sp, #0x54
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	thumb_func_start sub_8004038
sub_8004038 ;@ 0x08004038
	push {r0, r1, r2, r4, r5, r6, r7, lr}
	sub sp, #0x28
	adds r4, r1, #0
	movs r1, #1
	ldr r0, [sp, #0x28]
	lsls r1, r1, #0xb
	adds r5, r2, #0
	adds r2, r0, r1
	str r2, [sp, #0x24]
	ldr r0, [r2, #0x28]
	movs r1, #2
	orrs r0, r1
	str r0, [r2, #0x28]
	ldr r7, [r4, #0x50]
	movs r1, #0x21
	ldr r0, [r7, #0x18]
	lsls r1, r1, #6
	str r0, [sp, #0x20]
	ldr r0, _08004238 ;@ =gUnknown_03003EA4
	ldr r0, [r0]
	adds r0, r0, r1
	subs r0, r4, r0
	bl sub_8040504
	ldr r0, [r4, #0x48]
	lsls r2, r0, #0x15
	lsls r0, r0, #0x15
	lsls r0, r1, #2
	ldr r1, [sp, #0x28]
	adds r0, r0, r1
	ldr r6, [r0, #0xc]
	ldr r1, [r5]
	movs r0, #0
	cmp r1, #0
	bgt _08004080
	movs r0, #0x1e
_08004080
	ldr r1, [r4, #0x44]
	asrs r3, r1, #0x13
	str r3, [sp, #0x1c]
	ldr r2, [r4, #0x3c]
	asrs r5, r2, #0x13
	cmp r3, r5
	bne _0800409A
	lsls r3, r1, #0xd
	lsrs r3, r3, #0x1d
	bne _080040A8
	lsls r3, r2, #0xd
	lsrs r3, r3, #0x1d
	beq _080040A8
_0800409A
	movs r2, #0x15
	lsls r1, r1, #0xd
	lsrs r1, r1, #0x1d
	bne _080040A4
	movs r2, #0x14
_080040A4
	str r2, [sp, #8]
	b _080040B4
_080040A8
	movs r1, #0x15
	lsls r2, r2, #0xd
	lsrs r2, r2, #0x1d
	bne _080040B2
	movs r1, #0x14
_080040B2
	str r1, [sp, #8]
_080040B4
	ldr r1, [r4, #0x40]
	asrs r1, r1, #0x13
	adds r1, r1, r0
	ldrh r0, [r7, #0xc]
	str r0, [sp, #0x18]
	bl sub_803C04C
	ldrh r0, [r7, #0xe]
	adds r5, r1, #0
	ldr r1, [sp, #0x1c]
	adds r7, r0, #0
	bl sub_803C04C
	cmp r5, #0
	bge _080040D6
	ldr r0, [sp, #0x18]
	adds r5, r0, r5
_080040D6
	cmp r1, #0
	bge _080040DC
	adds r1, r7, r1
_080040DC
	lsls r2, r5, #1
	ldr r0, [sp, #0x20]
	str r2, [sp, #0x14]
	adds r0, r0, r2
	ldr r2, [sp, #0x18]
	subs r7, r7, r1
	muls r2, r1
	lsls r2, r2, #1
	adds r5, r0, r2
	movs r0, #0
	ldr r1, [sp, #8]
	str r0, [sp, #4]
	cmp r1, #0
	ble _080041DC
	ldr r0, [sp, #0x28]
	adds r0, #8
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x28]
	adds r0, #4
	str r0, [sp, #0xc]
_08004104
	ldrh r0, [r5]
	lsrs r1, r0, #0xf
	lsls r1, r1, #0x1f
	ldr r1, [r4, #0x54]
	ldr r1, [r1, #0x10]
	beq _0800419E
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
	ldr r2, _08004230 ;@ =0xFFE007FF
	lsls r0, r0, #0x11
	lsrs r0, r0, #0xf
	add lr, r0
	mov r1, lr
	ldr r0, [r1]
	movs r3, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xe
	adds r0, r0, r6
	ldr r1, [r0]
	lsls r3, r3, #0xb
	ands r2, r1
	subs r1, r1, r3
	ldr r3, _08004234 ;@ =0x001FF800
	ands r1, r3
	orrs r1, r2
	str r1, [r0]
	lsls r0, r1, #0xb
	lsrs r0, r0, #0x16
	bne _08004190
	mov r1, lr
	ldr r0, [sp, #0x10]
	ldr r1, [r1]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0xe
	ldr r1, [r6, r1]
	lsls r2, r1, #0xa
	bmi _08004178
	ldr r0, [sp, #0xc]
_08004178
	lsls r2, r1, #0x15
	lsls r1, r1, #0xa
	lsrs r1, r1, #0x1f
	lsrs r2, r2, #0x15
	lsls r2, r1
	lsls r1, r2, #2
	ldr r2, [sp, #0x24]
	ldr r2, [r2, #0x20]
	adds r1, r1, r2
	ldr r2, [r0]
	str r2, [r1]
	str r1, [r0]
_08004190
	ldr r0, _08004238 ;@ =gUnknown_03003EA4
	adds r2, r4, #0
	mov r1, ip
	ldr r0, [r0]
	bl sub_8002230
	b _080041F8
_0800419E
	lsls r0, r0, #0x11
	lsrs r0, r0, #0xf
	mov ip, r1
	add ip, r0
	mov r1, ip
	ldr r0, [r1]
	ldr r2, _08004230 ;@ =0xFFE007FF
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xe
	adds r0, r0, r6
	ldr r1, [r0]
	movs r3, #1
	lsls r3, r3, #0xb
	ands r2, r1
	subs r1, r1, r3
	ldr r3, _08004234 ;@ =0x001FF800
	ands r1, r3
	orrs r1, r2
	str r1, [r0]
	lsls r0, r1, #0xb
	lsrs r0, r0, #0x16
	bne _080041F8
	mov r1, ip
	ldr r0, [sp, #0x10]
	ldr r1, [r1]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0xe
	ldr r1, [r6, r1]
	lsls r2, r1, #0xa
	bmi _080041E0
	b _080041DE
_080041DC
	b _0800421C
_080041DE
	ldr r0, [sp, #0xc]
_080041E0
	lsls r2, r1, #0x15
	lsls r1, r1, #0xa
	lsrs r1, r1, #0x1f
	lsrs r2, r2, #0x15
	lsls r2, r1
	lsls r1, r2, #2
	ldr r2, [sp, #0x24]
	ldr r2, [r2, #0x20]
	adds r1, r1, r2
	ldr r2, [r0]
	str r2, [r1]
	str r1, [r0]
_080041F8
	subs r7, #1
	ldr r0, [r4, #0x50]
	bne _08004208
	ldrh r7, [r0, #0xe]
	ldr r0, [r0, #0x18]
	ldr r1, [sp, #0x14]
	adds r5, r0, r1
	b _0800420E
_08004208
	ldrh r0, [r0, #0xc]
	lsls r0, r0, #1
	adds r5, r0, r5
_0800420E
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	adds r0, #1
	str r0, [sp, #4]
	cmp r0, r1
	bge _0800421C
	b _08004104
_0800421C
	ldr r2, [sp, #0x24]
	movs r1, #2
	ldr r0, [r2, #0x28]
	bics r0, r1
	str r0, [r2, #0x28]
	add sp, #0x34
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	ALIGN
_08004230 DCDU 0xFFE007FF
_08004234 DCDU 0x001FF800
_08004238 DCDU gUnknown_03003EA4
	END