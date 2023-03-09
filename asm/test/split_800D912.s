    INCLUDE asm/macros.inc
    AREA text, CODE

	IMPORT gUnknown_03003EB0
	IMPORT gUnknown_08041448
	IMPORT gUnknown_08041468
	IMPORT gUnknown_08041488
	IMPORT gUnknown_080414A8
	IMPORT sub_8001BB4
	IMPORT sub_80025D6
	IMPORT sub_800263E
	IMPORT sub_8002698
	IMPORT sub_800288A
	IMPORT sub_800CE6C
	IMPORT sub_800D5A8
	IMPORT sub_803B8CE
	IMPORT sub_803BEB0
	IMPORT sub_803D9A8
	IMPORT sub_803D9C4
	


	non_word_aligned_thumb_func_start sub_800D912
sub_800D912 ;@ 0x0800D912
	push {r0, r1, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	movs r0, #0x27
	lsls r0, r0, #6
	adds r6, r4, r0
	ldr r0, [r6, #0x3c]
	movs r1, #1
	lsls r1, r1, #0x18
	orrs r0, r1
	sub sp, #4
	str r0, [r6, #0x3c]
	movs r0, #0x21
	lsls r0, r0, #6
	adds r5, r4, r0
	str r5, [sp]
	ldr r1, [r4, #8]
	movs r0, #0
	movs r7, #0
	cmp r1, #0
	beq _0800D93C
	ldrb r0, [r1]
_0800D93C
	cmp r0, #0
	bls _0800D964
_0800D940
	ldr r0, [r5, #0x30]
	cmp r0, #0
	beq _0800D952
	movs r2, #0
	movs r1, #0
	bl sub_803D9A8
	movs r0, #0
	str r0, [r5, #0x30]
_0800D952
	ldr r1, [r4, #8]
	adds r7, #1
	adds r5, #0x58
	movs r0, #0
	cmp r1, #0
	beq _0800D960
	ldrb r0, [r1]
_0800D960
	cmp r0, r7
	bhi _0800D940
_0800D964
	ldr r0, [r6, #0x14]
	cmp r0, #0
	beq _0800D976
	movs r2, #0
	movs r1, #0
	bl sub_803D9A8
	movs r5, #0
	str r5, [r6, #0x14]
_0800D976
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _0800D986
	ldr r0, [r6, #0x3c]
	lsls r0, r0, #5
	lsrs r0, r0, #0x1f
	bl sub_800263E
_0800D986
	ldr r0, _0800DD64 ;@ =gUnknown_03003EB0
	ldr r0, [r0]
	cmp r0, #0
	beq _0800D992
	bl sub_80025D6
_0800D992
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0800D9A4
	movs r2, #0
	movs r1, #0
	bl sub_803D9A8
	movs r5, #0
	str r5, [r4, #8]
_0800D9A4
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _0800D9B6
	movs r2, #0
	movs r1, #0
	bl sub_803D9A8
	movs r5, #0
	str r5, [r4, #0xc]
_0800D9B6
	movs r5, #0
	str r5, [r4, #4]
	movs r1, #0xff
	adds r1, #0x61
	ldr r0, [sp]
	bl sub_803BEB0
	movs r0, #0x13
	lsls r0, r0, #7
	adds r0, r4, r0
	str r5, [r0, #0x20]
	str r5, [r0, #0x24]
	ldr r0, [r6, #0x3c]
	movs r1, #1
	lsls r1, r1, #0x18
	bics r0, r1
	str r0, [r6, #0x3c]
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	thumb_func_start sub_800D9E0
sub_800D9E0 ;@ 0x0800D9E0
	push {r0, r1, r4, r5, r6, r7, lr}
	sub sp, #0x44
	ldr r1, [sp, #0x48]
	ldr r0, [r1, #0x28]
	movs r1, #0x27
	ldr r2, [sp, #0x44]
	lsls r1, r1, #6
	adds r1, r2, r1
	str r1, [sp, #0x40]
	movs r2, #1
	lsls r2, r2, #0x1a
	ldr r1, [r1, #0x3c]
	lsls r0, r0, #0x1f
	lsrs r0, r0, #5
	bics r1, r2
	orrs r0, r1
	ldr r1, [sp, #0x40]
	str r0, [r1, #0x3c]
	ldr r0, [sp, #0x44]
	movs r1, #1
	bl sub_800D912
	ldr r1, [sp, #0x48]
	movs r4, #0
	ldr r0, [r1]
	ldr r2, [sp, #0x44]
	str r0, [r2, #4]
	ldr r1, [sp, #0x40]
	ldr r0, [r1, #0x3c]
	movs r1, #1
	lsls r1, r1, #0x18
	orrs r0, r1
	ldr r1, [sp, #0x40]
	str r0, [r1, #0x3c]
	movs r0, #0x13
	ldr r2, [sp, #0x44]
	lsls r0, r0, #7
	adds r0, r2, r0
	str r0, [sp, #0x3c]
	str r4, [r0, #0x20]
	ldr r1, [sp, #0x40]
	movs r0, #0
	str r0, [r1, #0x18]
	ldr r1, [sp, #0x48]
	ldr r0, [r1, #0xc]
	cmp r0, #0
	bne _0800DA4C
	movs r3, #1
	lsls r3, r3, #0x1a
	ldrh r0, [r3]
	movs r1, #0xf
	lsls r1, r1, #8
	bics r0, r1
	strh r0, [r3]
_0800DA4C
	ldr r1, [sp, #0x48]
	add r6, sp, #0x18
	ldr r0, [r1]
	add r5, sp, #4
	ldm r0!, {r1, r2, r3}
	stm r6!, {r1, r2, r3}
	ldm r0!, {r2, r3}
	stm r6!, {r2, r3}
	ldr r1, [sp, #0x48]
	ldr r0, [sp, #0x1c]
	ldr r1, [r1]
	movs r3, #0
	adds r0, r0, r1
	str r0, [sp, #0x1c]
	ldr r1, [sp, #0x48]
	ldr r0, [sp, #0x20]
	ldr r1, [r1]
	movs r2, #0
	adds r0, r0, r1
	str r0, [sp, #0x20]
	ldr r1, [sp, #0x48]
	ldr r0, [sp, #0x24]
	ldr r1, [r1]
	subs r6, #0x14
	adds r0, r0, r1
	str r0, [sp, #0x24]
	ldr r1, [sp, #0x48]
	ldr r0, [sp, #0x28]
	ldr r1, [r1]
	adds r0, r0, r1
	str r0, [sp, #0x28]
	movs r0, #0
	movs r1, #0
	stm r5!, {r0, r1, r2, r3}
	stm r5!, {r3}
	subs r5, #0x14
	add r1, sp, #0x44
	adds r3, r5, #0
	adds r2, r6, #0
	ldm r1!, {r0, r1}
	bl sub_800D5A8
	adds r1, r0, #0
	adds r3, r4, #0
	movs r2, #0
	movs r0, #1
	bl sub_803D9C4
	ldr r2, [sp, #0x44]
	add r1, sp, #0x44
	str r0, [r2, #8]
	adds r3, r5, #0
	adds r2, r6, #0
	ldm r1!, {r0, r1}
	bl sub_800CE6C
	ldr r2, [sp, #0x44]
	ldr r6, [r2, #8]
	ldr r1, [sp, #0x48]
	ldr r0, [r1, #0xc]
	cmp r0, #0
	bne _0800DAD4
	ldr r0, [sp, #0x40]
	ldr r0, [r0, #0x3c]
	lsls r0, r0, #5
	lsrs r0, r0, #0x1f
	bl sub_800263E
_0800DAD4
	movs r2, #1
	lsls r2, r2, #0x1a
	ldr r0, [sp, #0x40]
	str r2, [sp, #0x28]
	ldr r1, [r0, #0x3c]
	ldr r0, _0800DD68 ;@ =0xFF800FFF
	ands r1, r0
	asrs r2, r0, #0xb
	ands r1, r2
	ldr r2, [sp, #0x40]
	str r1, [r2, #0x3c]
	ldr r1, [sp, #0x48]
	ldr r1, [r1, #0xc]
	cmp r1, #0
	bne _0800DB0C
	ldr r2, [sp, #0x28]
	movs r3, #0x80
	ldrh r1, [r2]
	movs r2, #1
	lsls r2, r2, #0xd
	bics r1, r2
	lsls r2, r2, #1
	bics r1, r2
	lsls r2, r2, #1
	bics r1, r2
	ldr r2, [sp, #0x28]
	bics r1, r3
	strh r1, [r2]
_0800DB0C
	movs r3, #0
	str r3, [sp, #0x24]
	add r4, sp, #0x14
	movs r1, #0
	movs r2, #0
	stm r4!, {r1, r2, r3}
	stm r4!, {r3}
	ldrb r2, [r6]
	subs r4, #0x10
	cmp r2, #0
	bls _0800DB42
_0800DB22
	lsls r3, r1, #3
	adds r3, r3, r1
	ldr r2, [r6, #4]
	lsls r3, r3, #2
	adds r2, r2, r3
	ldr r2, [r2]
	adds r1, #1
	lsls r2, r2, #0xc
	lsrs r2, r2, #0x1c
	adds r2, r2, r4
	ldrb r3, [r2]
	adds r3, #1
	strb r3, [r2]
	ldrb r2, [r6]
	cmp r2, r1
	bhi _0800DB22
_0800DB42
	ldrb r1, [r6]
	adds r1, #0xff
	lsls r3, r1, #0x18
	lsrs r3, r3, #0x18
	movs r1, #0
	adds r2, r4, #0
_0800DB4E
	ldrb r5, [r2, r1]
	strb r3, [r2, r1]
	adds r1, #1
	subs r3, r3, r5
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	cmp r1, #0x10
	blo _0800DB4E
	ldrb r3, [r6]
	movs r1, #0
	cmp r3, #0
	bls _0800DB8A
	add r7, sp, #0x24
_0800DB68
	lsls r3, r1, #3
	adds r3, r3, r1
	ldr r4, [r6, #4]
	lsls r3, r3, #2
	adds r3, r4, r3
	ldr r3, [r3]
	lsls r3, r3, #0xc
	lsrs r3, r3, #0x1c
	adds r3, r3, r2
	ldrb r4, [r3]
	adds r5, r4, #1
	strb r5, [r3]
	strb r1, [r7, r4]
	ldrb r3, [r6]
	adds r1, #1
	cmp r3, r1
	bhi _0800DB68
_0800DB8A
	movs r2, #0
	str r2, [sp, #0x1c]
	ldr r2, [sp, #0x44]
	movs r1, #0x21
	lsls r1, r1, #6
	adds r4, r2, r1
	ldr r1, _0800DD6C ;@ =0x04000008
	str r4, [sp, #0x38]
	movs r2, #0x20
	movs r7, #0
	movs r3, #0
	str r3, [sp, #0x10]
	str r7, [sp, #0x20]
	str r2, [sp, #0x18]
	str r1, [sp, #0x14]
	ldrb r1, [r6]
	cmp r1, #0
	bls _0800DC94
_0800DBAE
	ldr r0, [r6, #4]
	ldr r3, [sp, #0x10]
	add r1, sp, #0x24
	ldrb r1, [r1, r3]
	lsls r3, r1, #3
	adds r1, r3, r1
	lsls r1, r1, #2
	adds r5, r0, r1
	ldr r0, [r6, #8]
	ldr r1, [r5]
	ldr r2, [sp, #0x18]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x18
	lsls r3, r1, #2
	adds r1, r3, r1
	lsls r1, r1, #2
	adds r0, r0, r1
	ldr r1, [sp, #0x48]
	subs r2, #1
	str r2, [sp, #0x18]
	ldr r1, [r1, #0xc]
	cmp r1, #0
	bne _0800DC42
	ldr r1, [sp, #0x14]
	movs r2, #0xc
	ldrh r1, [r1]
	ldr r3, [sp, #0x10]
	bics r1, r2
	movs r2, #3
	subs r2, r2, r3
	lsls r2, r2, #0x1e
	lsrs r1, r1, #2
	lsls r1, r1, #2
	lsrs r2, r2, #0x1e
	orrs r1, r2
	movs r2, #0x1f
	lsls r2, r2, #8
	bics r1, r2
	ldr r2, [sp, #0x18]
	lsls r2, r2, #0x1b
	lsrs r2, r2, #0x13
	orrs r1, r2
	movs r2, #3
	lsls r2, r2, #0xe
	bics r1, r2
	movs r2, #0
	orrs r2, r1
	ldr r1, [sp, #0x14]
	strh r2, [r1]
	ldr r3, [r0, #4]
	movs r1, #1
	lsls r3, r3, #8
	lsrs r3, r3, #0x1c
	cmp r3, #9
	beq _0800DC1E
	movs r1, #0
_0800DC1E
	movs r3, #0x80
	lsls r1, r1, #0x1f
	lsrs r1, r1, #0x18
	bics r2, r3
	orrs r1, r2
	movs r2, #0x40
	bics r1, r2
	ldr r2, [sp, #0x14]
	lsls r3, r3, #0x13
	strh r1, [r2]
	ldr r1, [sp, #0x14]
	str r1, [r4, #8]
	ldrh r1, [r3]
	ldr r7, [sp, #0x20]
	lsrs r2, r3, #0x12
	lsls r2, r7
	orrs r1, r2
	strh r1, [r3]
_0800DC42
	ldr r1, [sp, #0x14]
	ldr r7, [sp, #0x20]
	adds r1, #2
	str r1, [sp, #0x14]
	movs r1, #3
	adds r7, #1
	str r7, [sp, #0x20]
	lsls r1, r1, #0x19
	str r1, [r4, #4]
	ldr r2, [sp, #0x18]
	movs r3, #0
	lsls r2, r2, #0xb
	adds r1, r2, r1
	str r1, [r4]
	ldr r1, [r4, #0x48]
	ldr r2, [sp, #0x18]
	lsrs r1, r1, #0xa
	lsls r2, r2, #0x1c
	lsrs r2, r2, #0x16
	lsls r1, r1, #0xa
	orrs r1, r2
	str r1, [r4, #0x48]
	str r3, [r4, #0x38]
	str r3, [r4, #0x3c]
	ldr r2, [r0, #4]
	movs r1, #1
	lsls r2, r2, #8
	lsrs r2, r2, #0x1c
	cmp r2, #9
	beq _0800DC80
	movs r1, #0
_0800DC80
	movs r7, #1
	lsls r7, r7, #0xa
	ldr r2, [r4, #0x48]
	lsls r1, r1, #0x1f
	lsrs r1, r1, #0x15
	bics r2, r7
	orrs r1, r2
	str r1, [r4, #0x48]
	movs r3, #0
	b _0800DC96
_0800DC94
	b _0800DE22
_0800DC96
	adds r2, r4, #0
	adds r2, #0x40
	strh r3, [r2, #0xa]
	ldr r3, [r0, #4]
	lsls r7, r7, #1
	lsls r3, r3, #8
	lsrs r3, r3, #0x1c
	adds r1, r7, #0
	cmp r3, #9
	beq _0800DCAC
	lsrs r1, r1, #1
_0800DCAC
	strh r1, [r2, #0xc]
	ldr r1, [r4, #0x48]
	bics r1, r7
	str r1, [r4, #0x48]
	ldr r1, [r5, #0x1c]
	str r0, [r4, #0x54]
	str r1, [r4, #0x34]
	str r5, [r4, #0x50]
	ldr r0, [r5]
	lsls r0, r0, #6
	lsrs r1, r0, #0x1a
	beq _0800DDA8
	lsrs r0, r0, #0x1a
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #3
	movs r3, #0
	movs r2, #0
	movs r0, #1
	bl sub_803D9C4
	str r0, [r4, #0x30]
	ldr r1, [r4, #0x50]
	movs r0, #0
	ldr r1, [r1]
	lsls r1, r1, #6
	lsrs r1, r1, #0x1a
	beq _0800DDB2
_0800DCE4
	lsls r7, r0, #2
	adds r7, r7, r0
	lsls r7, r7, #2
	ldr r1, [r5, #0x1c]
	mov lr, r7
	adds r1, r1, r7
	ldr r3, [r1, #0x10]
	ldr r1, [r1, #8]
	ldr r2, [r4, #0x30]
	lsls r1, r1, #0xf
	lsrs r7, r1, #0x1a
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #3
	adds r2, r2, r1
	str r2, [sp, #0x34]
	mov ip, r3
	movs r3, #0xff
	ldr r2, [r2]
	lsls r3, r3, #7
	bics r2, r3
	lsls r3, r7, #7
	orrs r2, r3
	ldr r3, [sp, #0x34]
	str r2, [r3]
	str r2, [sp, #0x30]
	ldr r2, [r5, #0x1c]
	add r2, lr
	ldr r2, [r2, #8]
	lsls r2, r2, #0xf
	lsrs r3, r2, #0x1a
	ldr r2, [r4, #0x30]
	adds r7, r2, r1
	ldr r2, [sp, #0x30]
	lsrs r2, r2, #6
	lsls r2, r2, #6
	orrs r2, r3
	str r2, [r7]
	ldr r3, [r4, #0x30]
	movs r7, #0x40
	bics r2, r7
	adds r3, r3, r1
	str r2, [r3]
	ldr r2, [r5, #0x1c]
	add r2, lr
	ldrh r3, [r2, #4]
	ldrh r7, [r2, #6]
	muls r3, r7
	adds r2, r3, #0
	ldr r3, [r4, #0x30]
	adds r3, r3, r1
	strh r2, [r3, #2]
	ldr r2, [r4, #0x30]
	mov r3, ip
	adds r2, r2, r1
	str r3, [r2, #0xc]
	ldr r2, [r4, #0x30]
	adds r2, r2, r1
	str r2, [sp, #0x2c]
	ldr r3, [r5, #0x1c]
	ldrh r2, [r2, #2]
	add r3, lr
	ldr r3, [r3, #8]
	b _0800DD70
	ALIGN
_0800DD64 DCDU gUnknown_03003EB0
_0800DD68 DCDU 0xFF800FFF
_0800DD6C DCDU 0x04000008
_0800DD70
	lsls r3, r3, #0x19
	lsrs r3, r3, #0x19
	subs r3, #1
	muls r2, r3
	lsls r2, r2, #1
	adds r3, r2, #0
	ldr r2, [sp, #0x2c]
	add r3, ip
	str r3, [r2, #0x10]
	ldr r2, [r4, #0x30]
	mov r3, ip
	adds r2, r2, r1
	str r3, [r2, #0x14]
	ldr r2, [sp, #0x1c]
	ldr r3, [r4, #0x30]
	adds r2, #1
	adds r3, r3, r1
	strh r2, [r3, #4]
	ldr r2, [r4, #0x30]
	adds r1, r2, r1
	ldrh r1, [r1, #2]
	ldr r2, [sp, #0x1c]
	adds r2, r1, r2
	str r2, [sp, #0x1c]
	ldr r1, [r4, #0x50]
	adds r0, #1
	ldr r1, [r1]
	b _0800DDAA
_0800DDA8
	b _0800DDCA
_0800DDAA
	lsls r1, r1, #6
	lsrs r1, r1, #0x1a
	cmp r1, r0
	bhi _0800DCE4
_0800DDB2
	ldrh r1, [r5, #4]
	ldr r0, [sp, #0x40]
	ldr r2, _0800E15C ;@ =0x007FF000
	ldr r0, [r0, #0x3c]
	lsls r1, r1, #0xc
	adds r1, r0, r1
	ands r1, r2
	mvns r2, r2
	ands r0, r2
	orrs r0, r1
	ldr r1, [sp, #0x40]
	str r0, [r1, #0x3c]
_0800DDCA
	ldr r0, [r4, #0x50]
	ldr r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1e
	cmp r0, #1
	bne _0800DDDA
	ldr r0, [sp, #0x3c]
	str r4, [r0, #0x20]
_0800DDDA
	movs r7, #0
	ldr r1, _0800E160 ;@ =gUnknown_08041448
	str r7, [r4, #0xc]
	ldr r0, [r1, #4]
	ldr r2, _0800E164 ;@ =gUnknown_08041468
	str r0, [r4, #0x10]
	ldr r0, [r2, #4]
	ldr r3, _0800E168 ;@ =gUnknown_08041488
	str r0, [r4, #0x14]
	ldr r0, [r3, #4]
	str r0, [r4, #0x18]
	str r7, [r4, #0x1c]
	ldr r0, [r1, #0x14]
	adds r1, r5, #0
	str r0, [r4, #0x20]
	ldr r0, [r2, #0x14]
	add r2, sp, #0x44
	str r0, [r4, #0x24]
	ldr r0, [r3, #0x14]
	str r0, [r4, #0x28]
	ldr r0, _0800E16C ;@ =gUnknown_080414A8
	ldr r0, [r0, #4]
	str r0, [r4, #0x2c]
	ldr r0, [r4, #0x50]
	ldr r3, [r0, #0x18]
	ldm r2!, {r0, r2}
	bl sub_8001BB4
	ldr r3, [sp, #0x10]
	adds r4, #0x58
	adds r3, #1
	str r3, [sp, #0x10]
	ldrb r0, [r6]
	cmp r0, r3
	bls _0800DE22
	b _0800DBAE
_0800DE22
	ldr r0, [sp, #0x40]
	ldr r0, [r0, #0x3c]
	lsls r0, r0, #9
	lsrs r1, r0, #0x15
	beq _0800DE46
	lsrs r0, r0, #0x15
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, #0xc
	movs r3, #0
	movs r2, #0
	movs r0, #1
	bl sub_803D9C4
	ldr r1, [sp, #0x40]
	str r0, [r1, #0x14]
	b _0800DE4C
_0800DE46
	ldr r0, [sp, #0x40]
	movs r3, #0
	str r3, [r0, #0x14]
_0800DE4C
	ldr r0, [sp, #0x40]
	ldr r2, _0800E170 ;@ =0xFFFFF001
	ldr r0, [r0, #0x3c]
	ldr r1, [sp, #0x40]
	ands r0, r2
	str r0, [r1, #0x3c]
	ldr r1, [sp, #0x48]
	ldr r0, [r1, #0xc]
	cmp r0, #0
	bne _0800DE90
	ldr r4, _0800E174 ;@ =gUnknown_03003EB0
	ldr r0, [r4]
	bl sub_8002698
	ldrb r0, [r6]
	movs r5, #0
	ldr r7, [sp, #0x38]
	cmp r0, #0
	bls _0800DE86
_0800DE72
	movs r2, #1
	adds r1, r7, #0
	ldr r0, [r4]
	bl sub_800288A
	ldrb r0, [r6]
	adds r5, #1
	adds r7, #0x58
	cmp r0, r5
	bhi _0800DE72
_0800DE86
	ldr r2, [sp, #0x28]
	ldrh r0, [r2]
	lsrs r0, r0, #3
	lsls r0, r0, #3
	strh r0, [r2]
_0800DE90
	ldr r0, [sp, #0x3c]
	movs r5, #1
	ldr r1, [r0, #0x20]
	adds r6, r5, #0
	ldr r0, [r1, #0x50]
	ldr r1, [r1, #0x54]
	ldrh r2, [r0, #0xc]
	ldr r1, [r1, #4]
	ldrh r0, [r0, #0xe]
	lsls r4, r1, #5
	lsls r1, r1, #2
	lsrs r1, r1, #0x1d
	lsls r5, r1
	lsrs r4, r4, #0x1d
	lsls r6, r4
	ldr r1, [sp, #0x3c]
	movs r3, #0
	str r3, [r1, #0x28]
	muls r2, r6
	lsls r2, r2, #0x10
	ldr r1, [sp, #0x3c]
	asrs r2, r2, #0x10
	subs r2, #0xf0
	str r3, [r1, #0x2c]
	lsls r1, r2, #0x10
	ldr r2, [sp, #0x3c]
	muls r0, r5
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r1, [r2, #0x30]
	ldr r1, [sp, #0x3c]
	subs r0, #0xa0
	lsls r0, r0, #0x10
	str r0, [r1, #0x34]
	movs r0, #1
	ldr r1, [sp, #0x3c]
	lsls r0, r0, #0x13
	str r0, [r1, #0x38]
	ldr r0, [sp, #0x40]
	movs r1, #1
	ldr r0, [r0, #0x3c]
	lsls r1, r1, #0x18
	bics r0, r1
	lsrs r1, r1, #1
	bics r0, r1
	ldr r1, [sp, #0x40]
	str r0, [r1, #0x3c]
	add sp, #0x4c
	pop {r4, r5, r6, r7}
	pop {r3}
	movs r0, #1
	bx r3


	thumb_func_start sub_800DEF8
sub_800DEF8 ;@ 0x0800DEF8
	push {r0, r1, r2, r4, r5, r6, r7, lr}
	movs r2, #0x27
	lsls r2, r2, #6
	adds r1, r0, r2
	sub sp, #0x10
	str r1, [sp, #0xc]
	adds r7, r0, #0
	ldr r0, [r1, #0x3c]
	movs r1, #1
	lsls r1, r1, #0x18
	orrs r0, r1
	ldr r1, [sp, #0xc]
	movs r6, #0
	str r0, [r1, #0x3c]
	adds r0, r2, #0
	subs r0, #0xff
	subs r0, #0x81
	adds r4, r7, r0
	ldr r1, [r7, #8]
	movs r0, #0
	cmp r1, #0
	beq _0800DF26
	ldrb r0, [r1]
_0800DF26
	cmp r0, #0
	bls _0800DFFA
_0800DF2A
	ldr r0, [r4, #0x38]
	ldr r1, [r4, #0x3c]
	str r0, [r4, #0x40]
	str r1, [r4, #0x44]
	mov ip, r0
	ldr r0, [sp, #0x18]
	cmp r0, #0
	bne _0800DF78
	ldr r0, [r4, #0x50]
	ldr r2, [r0]
	lsls r2, r2, #0x1c
	lsrs r2, r2, #0x1e
	cmp r2, #1
	beq _0800DF4A
	cmp r2, #2
	bne _0800DF78
_0800DF4A
	ldr r2, [sp, #0x14]
	ldr r2, [r2]
	asrs r3, r2, #0x1f
	lsrs r3, r3, #0x18
	adds r2, r3, r2
	movs r3, #0x10
	ldrsh r5, [r0, r3]
	asrs r2, r2, #8
	muls r2, r5
	add r2, ip
	str r2, [r4, #0x38]
	ldr r2, [sp, #0x14]
	ldr r2, [r2, #4]
	asrs r3, r2, #0x1f
	lsrs r3, r3, #0x18
	adds r2, r3, r2
	movs r3, #0x12
	ldrsh r0, [r0, r3]
	asrs r2, r2, #8
	muls r2, r0
	adds r0, r2, r1
	str r0, [r4, #0x3c]
	b _0800DFA0
_0800DF78
	ldr r0, [r4, #0x50]
	ldr r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1e
	cmp r0, #3
	bne _0800E068
	lsls r0, r6, #2
	movs r1, #0x27
	lsls r1, r1, #6
	adds r0, r0, r7
	adds r0, r0, r1
	ldr r3, [r0, #0x1c]
	cmp r3, #0
	beq _0800DFA0
	adds r1, r4, #0
	adds r1, #0x38
	ldr r2, [r0, #0x2c]
	adds r0, r6, #0
	bl sub_803B8CE
_0800DFA0
	ldr r0, [r4, #0x38]
	ldr r1, [r4, #0x40]
	asrs r0, r0, #0x10
	asrs r1, r1, #0x10
	subs r0, r0, r1
	str r0, [sp, #4]
	ldr r0, [r4, #0x3c]
	ldr r1, [r4, #0x44]
	asrs r0, r0, #0x10
	asrs r1, r1, #0x10
	subs r0, r0, r1
	str r0, [sp, #8]
	ldr r0, [r4, #0x50]
	ldr r1, [r0]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1e
	cmp r1, #3
	bne _0800E00E
	ldr r1, [sp, #4]
	cmp r1, #7
	ble _0800DFD6
	ldrh r0, [r0, #0xc]
	ldr r1, [sp, #4]
	lsls r0, r0, #3
	subs r0, r0, r1
	str r0, [sp, #4]
	b _0800DFE6
_0800DFD6
	ldr r1, [sp, #4]
	adds r3, r1, #7
	bge _0800DFE6
	ldrh r0, [r0, #0xc]
	ldr r1, [sp, #4]
	lsls r0, r0, #3
	adds r0, r0, r1
	str r0, [sp, #4]
_0800DFE6
	ldr r0, [sp, #8]
	cmp r0, #7
	ble _0800DFFC
	ldr r0, [r4, #0x50]
	ldrh r0, [r0, #0xe]
	ldr r1, [sp, #8]
	lsls r0, r0, #3
	subs r0, r0, r1
	str r0, [sp, #8]
	b _0800E00E
_0800DFFA
	b _0800E144
_0800DFFC
	ldr r0, [sp, #8]
	adds r3, r0, #7
	bge _0800E00E
	ldr r0, [r4, #0x50]
	ldrh r0, [r0, #0xe]
	ldr r1, [sp, #8]
	lsls r0, r0, #3
	adds r0, r0, r1
	str r0, [sp, #8]
_0800E00E
	ldr r1, [sp, #4]
	movs r5, #0
	movs r0, #0
	cmp r1, #0
	beq _0800E05A
	ldr r1, [r4, #0x40]
	lsls r2, r1, #0xd
	mov ip, r2
	lsrs r2, r2, #0x1d
	ldr r2, [r4, #0x38]
	bne _0800E02E
	lsls r2, r2, #0xd
	lsrs r2, r2, #0x1d
	beq _0800E036
	movs r5, #1
	b _0800E036
_0800E02E
	lsls r2, r2, #0xd
	lsrs r2, r2, #0x1d
	bne _0800E036
	movs r0, #1
_0800E036
	asrs r2, r1, #0x13
	ldr r1, [r4, #0x38]
	asrs r3, r1, #0x13
	cmp r2, r3
	beq _0800E050
	mov r2, ip
	lsrs r2, r2, #0x1d
	beq _0800E048
	movs r0, #1
_0800E048
	lsls r1, r1, #0xd
	lsrs r1, r1, #0x1d
	beq _0800E050
	movs r5, #1
_0800E050
	movs r2, #1
	ldr r1, [r4, #0x48]
	lsls r2, r2, #0xb
	orrs r1, r2
	str r1, [r4, #0x48]
_0800E05A
	ldr r1, [sp, #8]
	cmp r1, #0
	beq _0800E0AE
	ldr r1, [r4, #0x44]
	lsls r2, r1, #0xd
	mov ip, r2
	b _0800E06A
_0800E068
	b _0800E130
_0800E06A
	lsrs r2, r2, #0x1d
	ldr r2, [r4, #0x3c]
	bne _0800E07C
	lsls r2, r2, #0xd
	lsrs r2, r2, #0x1d
	beq _0800E086
	movs r2, #2
	orrs r5, r2
	b _0800E086
_0800E07C
	lsls r2, r2, #0xd
	lsrs r2, r2, #0x1d
	bne _0800E086
	movs r2, #2
	orrs r0, r2
_0800E086
	asrs r2, r1, #0x13
	ldr r1, [r4, #0x3c]
	asrs r3, r1, #0x13
	cmp r2, r3
	beq _0800E0A4
	mov r2, ip
	lsrs r2, r2, #0x1d
	beq _0800E09A
	movs r2, #2
	orrs r0, r2
_0800E09A
	lsls r1, r1, #0xd
	lsrs r1, r1, #0x1d
	beq _0800E0A4
	movs r2, #2
	orrs r5, r2
_0800E0A4
	movs r2, #1
	ldr r1, [r4, #0x48]
	lsls r2, r2, #0xb
	orrs r1, r2
	str r1, [r4, #0x48]
_0800E0AE
	cmp r0, #0
	beq _0800E0C8
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r3, [r0, #0x1c]
	cmp r3, #0
	beq _0800E0C8
	ldr r0, _0800E174 ;@ =gUnknown_03003EB0
	add r2, sp, #4
	adds r1, r4, #0
	ldr r0, [r0]
	bl sub_803B8CE
_0800E0C8
	cmp r5, #0
	beq _0800E0E2
	lsls r0, r5, #2
	adds r0, r0, r4
	ldr r3, [r0, #0xc]
	cmp r3, #0
	beq _0800E0E2
	ldr r0, _0800E174 ;@ =gUnknown_03003EB0
	add r2, sp, #4
	adds r1, r4, #0
	ldr r0, [r0]
	bl sub_803B8CE
_0800E0E2
	ldr r1, [r4, #0x50]
	ldrh r0, [r1, #0xc]
	ldrh r1, [r1, #0xe]
	ldr r2, [r4, #0x38]
	lsls r0, r0, #0x13
	lsls r1, r1, #0x13
	cmp r2, r0
	ble _0800E0FE
	subs r2, r2, r0
	str r2, [r4, #0x38]
	ldr r2, [r4, #0x40]
	subs r0, r2, r0
	str r0, [r4, #0x40]
	b _0800E10E
_0800E0FE
	NEGS r3, r0
	cmp r2, r3
	bge _0800E10E
	adds r2, r2, r0
	str r2, [r4, #0x38]
	ldr r2, [r4, #0x40]
	adds r0, r2, r0
	str r0, [r4, #0x40]
_0800E10E
	ldr r0, [r4, #0x3c]
	cmp r0, r1
	ble _0800E120
	subs r0, r0, r1
	str r0, [r4, #0x3c]
	ldr r0, [r4, #0x44]
	subs r0, r0, r1
	str r0, [r4, #0x44]
	b _0800E130
_0800E120
	NEGS r2, r1
	cmp r0, r2
	bge _0800E130
	adds r0, r0, r1
	str r0, [r4, #0x3c]
	ldr r0, [r4, #0x44]
	adds r0, r0, r1
	str r0, [r4, #0x44]
_0800E130
	ldr r1, [r7, #8]
	adds r6, #1
	adds r4, #0x58
	movs r0, #0
	cmp r1, #0
	beq _0800E13E
	ldrb r0, [r1]
_0800E13E
	cmp r0, r6
	bls _0800E144
	b _0800DF2A
_0800E144
	ldr r1, [sp, #0xc]
	ldr r0, [r1, #0x3c]
	movs r1, #1
	lsls r1, r1, #0x18
	bics r0, r1
	ldr r1, [sp, #0xc]
	str r0, [r1, #0x3c]
	add sp, #0x1c
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	ALIGN
_0800E15C DCDU 0x007FF000
_0800E160 DCDU gUnknown_08041448
_0800E164 DCDU gUnknown_08041468
_0800E168 DCDU gUnknown_08041488
_0800E16C DCDU gUnknown_080414A8
_0800E170 DCDU 0xFFFFF001
_0800E174 DCDU gUnknown_03003EB0
