	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gPlayerEntity
	IMPORT gUnknown_0300329A
	IMPORT gUnknown_0300345C
	IMPORT gUnknown_03003D20
	IMPORT gUnknown_03003EA0
	IMPORT gUnknown_03003EB8
	IMPORT gUnknown_0803E658
	IMPORT sub_80007A0
	IMPORT sub_8000914
	IMPORT sub_8000D5A
	IMPORT sub_8000DE6
	IMPORT sub_800116A
	IMPORT sub_80012F0
	IMPORT sub_8001338
	IMPORT sub_8001432
	IMPORT sub_8023A70
	IMPORT sub_8028C2E
	IMPORT sub_802E418
	IMPORT sub_802E4AA
	IMPORT sub_802E4EE
	IMPORT __call_via_r1
	IMPORT maybeMallocEWRAM
	IMPORT sub_803DA18
	IMPORT sub_803FF24
	IMPORT sub_8040148
	IMPORT sub_80401E4
	IMPORT sub_8040594


	thumb_func_start sub_802BFB4
sub_802BFB4
	adds r0, #0x30
	ldrb r0, [r0, #0xc]
	bx lr
	ALIGN

	thumb_func_start sub_802BFBC
sub_802BFBC
	push {r4, lr}
	adds r4, r0, #0
	bne _0802BFD4
	movs r0, #0x4c
	bl maybeMallocEWRAM
	adds r4, r0, #0
	bne _0802BFD4
	adds r0, r4, #0
_0802BFCE
	pop {r4}
	pop {r3}
	bx r3
_0802BFD4
	adds r0, r4, #0
	bl sub_802E418
	ldr r0, _0802C3BC
	str r0, [r4]
	movs r0, #0
	str r0, [r4, #0x3c]
	str r0, [r4, #0x40]
	str r0, [r4, #0x44]
	adds r0, r4, #0
	b _0802BFCE

	non_word_aligned_thumb_func_start sub_802BFEA
sub_802BFEA
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _0802C3BC
	adds r5, r1, #0
	str r0, [r4]
	ldr r0, [r4, #0x3c]
	cmp r0, #0
	beq _0802C00A
	ldr r0, _0802C3C0
	adds r1, r4, #0
	adds r1, #0x3c
	ldr r0, [r0]
	bl sub_8000DE6
	movs r0, #0
	str r0, [r4, #0x3c]
_0802C00A
	movs r1, #0
	adds r0, r4, #0
	bl sub_802E4AA
	cmp r5, #0
	beq _0802C01C
	adds r0, r4, #0
	bl sub_803DA18
_0802C01C
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_802C022
sub_802C022
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r1, [r0, #0x10]
	adds r5, r3, #0
	ldr r3, [r1, #0x2c]
	adds r4, r0, #0
	str r3, [r0, #0x14]
	ldr r0, [r1, #0x30]
	str r0, [r4, #0x18]
	ldrb r6, [r3, #5]
	movs r0, #0xff
	ldr r7, [r4, #0x34]
	lsls r0, r0, #0xb
	bics r7, r0
	lsls r6, r6, #0xb
	orrs r6, r7
	str r6, [r4, #0x34]
	adds r3, #0x2c
	ldr r7, [r3]
	ldr r3, [r3, #4]
	str r3, [r4, #0x20]
	str r7, [r4, #0x1c]
	adds r3, r5, #1
	bne _0802C064
	ldr r1, [r1, #0x7c]
	ldr r3, [r4, #0x34]
	lsls r1, r1, #4
	lsrs r1, r1, #0x1c
	lsrs r3, r3, #8
	lsls r3, r3, #8
	orrs r1, r3
	str r1, [r4, #0x34]
	b _0802C072
_0802C064
	ldr r1, [r4, #0x34]
	lsls r3, r5, #0x18
	lsrs r1, r1, #8
	lsls r1, r1, #8
	lsrs r3, r3, #0x18
	orrs r1, r3
	str r1, [r4, #0x34]
_0802C072
	movs r3, #0xf
	ldr r1, [r4, #0x34]
	lsls r3, r3, #0x16
	lsls r2, r2, #0x1c
	lsrs r2, r2, #6
	bics r1, r3
	orrs r2, r1
	lsls r1, r2, #6
	lsrs r3, r1, #0x1c
	ldr r5, _0802C3C4
	lsls r3, r3, #1
	str r2, [r4, #0x34]
	ldrh r3, [r5, r3]
	lsrs r7, r1, #0x1c
	ldr r1, _0802C3C8
	str r3, [r4, #0x38]
	ldrb r1, [r1]
	movs r3, #1
	movs r5, #7
	adds r6, r4, #0
	adds r6, #0x40
	lsls r5, r5, #0x11
	lsls r3, r3, #0xb
	cmp r7, #0
	mov ip, r1
	beq _0802C0E2
	cmp r7, #1
	beq _0802C17E
	cmp r7, #2
	bne _0802C17C
	movs r7, #9
	ldr r1, [r4, #0x44]
	lsls r7, r7, #0x10
	adds r1, r1, r7
	lsls r7, r2, #0x18
	lsrs r7, r7, #0x18
	str r1, [r4, #0x44]
	beq _0802C1A4
	cmp r7, #1
	beq _0802C1A6
	cmp r7, #2
	beq _0802C1A8
	cmp r7, #3
	bne _0802C1AA
	subs r1, r1, r5
	str r1, [r4, #0x44]
	ldr r1, _0802C3CC
	str r1, [r4, #0x28]
	adds r1, r2, #0
	adds r2, r2, r3
	ands r2, r0
	bics r1, r0
	orrs r1, r2
	adds r0, r1, #0
	str r0, [r4, #0x34]
	b _0802C1AA
_0802C0E2
	movs r7, #9
	ldr r1, [r4, #0x44]
	lsls r7, r7, #0x10
	adds r1, r1, r7
	adds r7, r1, #0
	str r1, [r4, #0x44]
	lsls r1, r2, #0x18
	lsrs r1, r1, #0x18
	beq _0802C14C
	cmp r1, #1
	beq _0802C118
	cmp r1, #2
	beq _0802C132
	cmp r1, #3
	bne _0802C166
	subs r1, r7, r5
	str r1, [r4, #0x44]
	ldr r1, _0802C3CC
	str r1, [r4, #0x28]
	adds r1, r2, #0
	adds r2, r2, r3
	ands r2, r0
	bics r1, r0
	orrs r1, r2
	adds r0, r1, #0
	str r0, [r4, #0x34]
	b _0802C166
_0802C118
	adds r1, r7, r5
	str r1, [r4, #0x44]
	movs r1, #1
	lsls r1, r1, #0x11
	str r1, [r4, #0x28]
	adds r1, r2, #0
	subs r2, r2, r3
	ands r2, r0
	bics r1, r0
	orrs r1, r2
	adds r0, r1, #0
	str r0, [r4, #0x34]
	b _0802C166
_0802C132
	ldr r1, [r4, #0x40]
	subs r1, r1, r5
	str r1, [r4, #0x40]
	ldr r1, _0802C3CC
	str r1, [r4, #0x24]
	adds r1, r2, #0
	subs r2, r2, r3
	ands r2, r0
	bics r1, r0
	orrs r1, r2
	adds r0, r1, #0
	str r0, [r4, #0x34]
	b _0802C166
_0802C14C
	ldr r1, [r4, #0x40]
	adds r1, r1, r5
	str r1, [r4, #0x40]
	movs r1, #1
	lsls r1, r1, #0x11
	str r1, [r4, #0x24]
	adds r1, r2, #0
	subs r2, r2, r3
	ands r2, r0
	bics r1, r0
	orrs r1, r2
	adds r0, r1, #0
	str r0, [r4, #0x34]
_0802C166
	movs r0, #3
	mov r1, ip
	cmp r1, #0
	strb r0, [r6, #8]
	beq _0802C17C
	subs r1, r0, #5
	ldr r0, _0802C3D0
	ldr r0, [r0]
	adds r0, #0xac
	bl sub_8023A70
_0802C17C
	b _0802C276
_0802C17E
	b _0802C180
_0802C180
	movs r7, #9
	ldr r1, [r4, #0x44]
	lsls r7, r7, #0x10
	adds r1, r1, r7
	lsls r7, r2, #0x18
	lsrs r7, r7, #0x18
	str r1, [r4, #0x44]
	beq _0802C1F2
	cmp r7, #1
	beq _0802C1BE
	cmp r7, #2
	beq _0802C1D8
	cmp r7, #3
	bne _0802C20C
	subs r1, r1, r5
	str r1, [r4, #0x44]
	ldr r1, _0802C3CC
	b _0802C1AC
_0802C1A4
	b _0802C258
_0802C1A6
	b _0802C224
_0802C1A8
	b _0802C23E
_0802C1AA
	b _0802C272
_0802C1AC
	str r1, [r4, #0x28]
	adds r1, r2, #0
	adds r2, r2, r3
	ands r2, r0
	bics r1, r0
	orrs r1, r2
	adds r0, r1, #0
	str r0, [r4, #0x34]
	b _0802C20C
_0802C1BE
	adds r1, r1, r5
	str r1, [r4, #0x44]
	movs r1, #1
	lsls r1, r1, #0x11
	str r1, [r4, #0x28]
	adds r1, r2, #0
	subs r2, r2, r3
	ands r2, r0
	bics r1, r0
	orrs r1, r2
	adds r0, r1, #0
	str r0, [r4, #0x34]
	b _0802C20C
_0802C1D8
	ldr r1, [r4, #0x40]
	subs r1, r1, r5
	str r1, [r4, #0x40]
	ldr r1, _0802C3CC
	str r1, [r4, #0x24]
	adds r1, r2, #0
	subs r2, r2, r3
	ands r2, r0
	bics r1, r0
	orrs r1, r2
	adds r0, r1, #0
	str r0, [r4, #0x34]
	b _0802C20C
_0802C1F2
	ldr r1, [r4, #0x40]
	adds r1, r1, r5
	str r1, [r4, #0x40]
	movs r1, #1
	lsls r1, r1, #0x11
	str r1, [r4, #0x24]
	adds r1, r2, #0
	subs r2, r2, r3
	ands r2, r0
	bics r1, r0
	orrs r1, r2
	adds r0, r1, #0
	str r0, [r4, #0x34]
_0802C20C
	movs r0, #2
	mov r1, ip
	cmp r1, #0
	strb r0, [r6, #8]
	beq _0802C276
	NEGS r1, r0
	ldr r0, _0802C3D0
	ldr r0, [r0]
	adds r0, #0xac
	bl sub_8023A70
	b _0802C276
_0802C224
	adds r1, r1, r5
	str r1, [r4, #0x44]
	movs r1, #1
	lsls r1, r1, #0x11
	str r1, [r4, #0x28]
	adds r1, r2, #0
	subs r2, r2, r3
	ands r2, r0
	bics r1, r0
	orrs r1, r2
	adds r0, r1, #0
	str r0, [r4, #0x34]
	b _0802C272
_0802C23E
	ldr r1, [r4, #0x40]
	subs r1, r1, r5
	str r1, [r4, #0x40]
	ldr r1, _0802C3CC
	str r1, [r4, #0x24]
	adds r1, r2, #0
	subs r2, r2, r3
	ands r2, r0
	bics r1, r0
	orrs r1, r2
	adds r0, r1, #0
	str r0, [r4, #0x34]
	b _0802C272
_0802C258
	ldr r1, [r4, #0x40]
	adds r1, r1, r5
	str r1, [r4, #0x40]
	movs r1, #1
	lsls r1, r1, #0x11
	str r1, [r4, #0x24]
	adds r1, r2, #0
	subs r2, r2, r3
	ands r2, r0
	bics r1, r0
	orrs r1, r2
	adds r0, r1, #0
	str r0, [r4, #0x34]
_0802C272
	movs r0, #3
	strb r0, [r6, #8]
_0802C276
	ldr r5, _0802C3C0
	ldr r0, [r5]
	bl sub_800116A
	str r0, [r4, #4]
	ldr r1, [r4, #0x38]
	movs r2, #0
	bl sub_80007A0
	ldr r0, [r4, #4]
	movs r2, #2
	ldr r1, [r0]
	orrs r1, r2
	lsls r2, r2, #7
	bics r1, r2
	str r1, [r0]
	ldr r0, [r4, #0x1c]
	ldr r1, [r4, #0x40]
	adds r0, r0, r1
	ldr r1, [r4, #0x20]
	ldr r2, [r4, #0x44]
	str r0, [sp, #4]
	adds r1, r1, r2
	str r1, [sp, #8]
	ldr r0, [r4, #4]
	add r1, sp, #4
	bl sub_803FF24
	movs r2, #0x20
	movs r1, #1
	ldr r0, [r4, #4]
	bl sub_8040148
	ldr r0, [r4, #4]
	movs r2, #4
	ldr r1, [r0]
	bics r1, r2
	orrs r1, r2
	str r1, [r0]
	ldr r6, [r4, #4]
	ldr r0, [r6]
	lsls r0, r0, #0x1c
	bmi _0802C2D4
	adds r1, r6, #0
	ldr r0, [r5]
	bl sub_80012F0
_0802C2D4
	ldr r0, [r6]
	movs r1, #8
	bics r0, r1
	orrs r0, r1
	str r0, [r6]
	ldr r0, [r4, #0x34]
	movs r7, #0x5a
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	muls r7, r0
	adds r0, r7, #0
	ldr r6, [r4, #4]
	bl sub_8040594
	movs r0, #0x2d
	muls r0, r7
	lsrs r2, r7, #1
	adds r0, r0, r2
	adds r0, r1, r0
	add r3, sp, #0
	strh r0, [r3, #8]
	strh r0, [r3, #4]
	ldrh r1, [r3, #4]
	movs r3, #3
	lsls r3, r3, #0xa
	strh r1, [r6, #0x24]
	ldr r0, [r6]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r6]
	ldr r0, [r4, #4]
	ldr r1, [r4, #0x34]
	ldrh r2, [r0, #0x2a]
	lsls r1, r1, #0xd
	lsrs r1, r1, #0x18
	bics r2, r3
	lsls r3, r1, #0x18
	lsrs r3, r3, #0x1e
	lsls r3, r3, #0xa
	orrs r2, r3
	strh r2, [r0, #0x2a]
	strb r1, [r0, #5]
	ldr r1, [r0]
	movs r6, #0x80
	lsls r2, r1, #0x16
	cmp r2, #0
	blt _0802C336
	orrs r1, r6
	str r1, [r0]
_0802C336
	ldr r0, [r4, #4]
	bl sub_8000914
	movs r1, #1
	ldr r0, [r4, #4]
	bl sub_80401E4
	ldr r0, [r5]
	bl sub_800116A
	str r0, [r4, #0x3c]
	ldr r1, [r4, #0x38]
	adds r1, #3
	movs r2, #0
	bl sub_80007A0
	ldr r0, [r4, #0x3c]
	movs r2, #2
	ldr r1, [r0]
	orrs r1, r2
	lsls r2, r2, #7
	bics r1, r2
	str r1, [r0]
	ldr r0, [r4, #0x1c]
	ldr r1, [r4, #0x40]
	adds r0, r0, r1
	ldr r1, [r4, #0x20]
	ldr r2, [r4, #0x44]
	str r0, [sp, #4]
	adds r1, r1, r2
	str r1, [sp, #8]
	ldr r0, [r4, #0x3c]
	add r1, sp, #4
	bl sub_803FF24
	movs r2, #0x20
	movs r1, #1
	ldr r0, [r4, #0x3c]
	bl sub_8040148
	ldr r0, [r4, #0x34]
	movs r7, #0x5a
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	muls r7, r0
	adds r0, r7, #0
	ldr r5, [r4, #0x3c]
	bl sub_8040594
	movs r0, #0x2d
	muls r0, r7
	lsrs r2, r7, #1
	adds r0, r0, r2
	adds r0, r1, r0
	add r3, sp, #0
	strh r0, [r3, #8]
	strh r0, [r3, #4]
	ldrh r1, [r3, #4]
	strh r1, [r5, #0x24]
	ldr r0, [r5]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r5]
	ldr r0, [r4, #0x3c]
	ldr r1, [r4, #0x34]
	lsls r1, r1, #0xd
	b _0802C3D4
	ALIGN
_0802C3BC DCDU gUnknown_0803E658
_0802C3C0 DCDU gUnknown_03003EB8
_0802C3C4 DCDU gUnknown_0300329A
_0802C3C8 DCDU gUnknown_03003D20
_0802C3CC DCDU 0xFFFE0000
_0802C3D0 DCDU gPlayerEntity
_0802C3D4
	ldrh r2, [r0, #0x2a]
	movs r3, #3
	lsls r3, r3, #0xa
	bics r2, r3
	lsrs r1, r1, #0x18
	lsls r3, r1, #0x18
	lsrs r3, r3, #0x1e
	lsls r3, r3, #0xa
	orrs r2, r3
	strh r2, [r0, #0x2a]
	strb r1, [r0, #5]
	ldr r1, [r0]
	lsls r2, r1, #0x16
	bmi _0802C3F4
	orrs r1, r6
	str r1, [r0]
_0802C3F4
	ldr r0, [r4, #0x3c]
	bl sub_8000914
	movs r1, #1
	ldr r0, [r4, #0x3c]
	bl sub_80401E4
	ldr r0, _0802C6C4
	ldr r0, [r0]
	ldr r1, [r4, #0x34]
	lsls r1, r1, #6
	lsrs r1, r1, #0x1c
	adds r1, #0x34
	lsls r1, r1, #5
	adds r0, r1, r0
	bl sub_8028C2E
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_802C41E
sub_802C41E
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, [r0, #0x3c]
	sub sp, #0xc
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	beq _0802C434
	movs r1, #0
	bl sub_80401E4
	b _0802C43A
_0802C434
	movs r1, #1
	bl sub_80401E4
_0802C43A
	ldr r0, [r4, #0x34]
	adds r5, r4, #0
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x1d
	adds r5, #0x1c
	cmp r0, #0
	beq _0802C4D4
	adds r6, r4, #0
	adds r6, #0x3c
	adds r7, r4, #4
	cmp r0, #1
	beq _0802C51C
	cmp r0, #2
	bne _0802C4CC
	ldr r0, _0802C6C8
	ldr r5, [r4, #4]
	ldr r0, [r0]
	ldr r2, [r5, #0x44]
	movs r1, #0
	mvns r1, r1
	cmp r2, #0
	beq _0802C472
	bl sub_8000D5A
	ldr r0, [r0, #0x24]
	ldr r1, [r5, #0x44]
	subs r0, r1, r0
	asrs r1, r0, #3
_0802C472
	lsls r0, r1, #0x10
	ldr r1, [r4, #0x38]
	lsrs r0, r0, #0x10
	adds r1, #2
	cmp r0, r1
	ldr r0, [r4, #4]
	beq _0802C566
	movs r2, #0
	bl sub_80007A0
	ldr r0, [r4, #4]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne _0802C494
	bl sub_8000914
_0802C494
	ldr r1, [r4, #0x38]
	ldr r0, [r4, #0x3c]
	adds r1, #5
	movs r2, #0
	bl sub_80007A0
	ldr r0, [r4, #0x3c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne _0802C4AE
	bl sub_8000914
_0802C4AE
	ldr r4, [r4, #4]
	movs r5, #0
	ldr r0, [r4]
	lsls r0, r0, #0x1c
	bpl _0802C4C2
	ldr r0, _0802C6CC
	adds r1, r4, #0
	ldr r0, [r0]
	bl sub_8001338
_0802C4C2
	ldr r0, [r4]
	movs r1, #8
	bics r0, r1
	orrs r0, r5
	str r0, [r4]
_0802C4CC
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
_0802C4D4
	ldr r0, [r4, #0x3c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	beq _0802C51E
	ldr r0, [r4, #0x14]
	adds r0, #0x2c
	ldr r1, [r0]
	ldr r0, [r0, #4]
	str r0, [r5, #4]
	str r1, [r5]
	ldr r0, [r4, #0x1c]
	ldr r1, [r4, #0x40]
	adds r0, r0, r1
	ldr r1, [r4, #0x20]
	ldr r2, [r4, #0x44]
	str r0, [sp, #4]
	adds r1, r1, r2
	str r1, [sp, #8]
	ldr r0, [r4, #4]
	add r1, sp, #4
	bl sub_803FF24
	ldr r0, [r4, #0x1c]
	ldr r1, [r4, #0x40]
	adds r0, r0, r1
	ldr r1, [r4, #0x20]
	ldr r2, [r4, #0x44]
	str r0, [sp, #4]
	adds r1, r1, r2
	str r1, [sp, #8]
	ldr r0, [r4, #0x3c]
	add r1, sp, #4
	bl sub_803FF24
_0802C51A
	b _0802C4CC
_0802C51C
	b _0802C56C
_0802C51E
	ldr r1, [r4, #0x38]
	adds r1, #4
	movs r2, #0
	bl sub_80007A0
	ldr r0, [r4, #0x3c]
	bl sub_8000914
	ldr r1, [r4, #0x38]
	ldr r0, [r4, #4]
	adds r1, #1
	movs r2, #0
	bl sub_80007A0
	ldr r0, [r4, #4]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne _0802C548
	bl sub_8000914
_0802C548
	ldr r0, [r5]
	ldr r1, [r4, #0x40]
	adds r0, r0, r1
	str r0, [r5]
	ldr r0, [r5, #4]
	ldr r1, [r4, #0x44]
	adds r0, r0, r1
	str r0, [r5, #4]
	ldr r0, [r4, #0x34]
	movs r1, #7
	lsls r1, r1, #8
	bics r0, r1
	adds r0, #0xff
	adds r0, #1
	b _0802C568
_0802C566
	b _0802C5CA
_0802C568
	str r0, [r4, #0x34]
	b _0802C4CC
_0802C56C
	ldr r0, [r5]
	ldr r1, [r4, #0x24]
	adds r0, r0, r1
	str r0, [r5]
	ldr r0, [r5, #4]
	ldr r1, [r4, #0x28]
	adds r0, r0, r1
	str r0, [r5, #4]
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x18]
	adds r1, r2, r1
	bl __call_via_r1
	ldr r0, [r4, #4]
	ldr r1, [r0]
	lsls r1, r1, #0x16
	lsrs r1, r1, #0x1f
	beq _0802C5BA
	cmp r0, #0
	beq _0802C5A4
	ldr r0, _0802C6CC
	adds r1, r7, #0
	ldr r0, [r0]
	bl sub_8000DE6
	movs r5, #0
	str r5, [r4, #4]
_0802C5A4
	ldr r0, [r4, #0x3c]
	cmp r0, #0
	beq _0802C4CC
	ldr r0, _0802C6CC
	adds r1, r6, #0
	ldr r0, [r0]
	bl sub_8000DE6
	movs r5, #0
	str r5, [r4, #0x3c]
	b _0802C4CC
_0802C5BA
	adds r1, r5, #0
	bl sub_803FF24
	adds r1, r5, #0
	ldr r0, [r4, #0x3c]
	bl sub_803FF24
	b _0802C4CC
_0802C5CA
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne _0802C51A
	cmp r0, #0
	beq _0802C5E4
	ldr r0, _0802C6CC
	adds r1, r7, #0
	ldr r0, [r0]
	bl sub_8000DE6
	movs r5, #0
	str r5, [r4, #4]
_0802C5E4
	ldr r0, [r4, #0x3c]
	cmp r0, #0
	beq _0802C51A
	ldr r0, _0802C6CC
	adds r1, r6, #0
	ldr r0, [r0]
	bl sub_8000DE6
	movs r5, #0
	str r5, [r4, #0x3c]
	b _0802C4CC

	non_word_aligned_thumb_func_start sub_802C5FA
sub_802C5FA
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	bl sub_802E4EE
	ldr r0, [r4, #0x3c]
	cmp r0, #0
	beq _0802C6BC
	ldr r6, _0802C6C8
	ldr r5, [r4, #4]
	ldr r0, [r6]
	ldr r2, [r5, #0x44]
	movs r1, #0
	mvns r1, r1
	cmp r2, #0
	beq _0802C624
	bl sub_8000D5A
	ldr r0, [r0, #0x24]
	ldr r1, [r5, #0x44]
	subs r0, r1, r0
	asrs r1, r0, #3
_0802C624
	ldr r0, [r4, #0x30]
	lsls r1, r1, #0x13
	lsrs r0, r0, #0xd
	lsls r0, r0, #0xd
	lsrs r1, r1, #0x13
	orrs r0, r1
	str r0, [r4, #0x30]
	ldr r5, [r4, #4]
	ldr r0, [r6]
	bl sub_8000D5A
	ldr r1, [r5, #0x44]
	ldr r0, [r0, #0x28]
	ldr r1, [r1, #4]
	movs r2, #0x1f
	lsls r1, r1, #2
	adds r0, r0, r1
	ldr r1, [r5, #0x48]
	lsls r2, r2, #0xd
	subs r0, r1, r0
	asrs r0, r0, #2
	ldr r1, [r4, #0x30]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0xe
	bics r1, r2
	orrs r1, r0
	str r1, [r4, #0x30]
	ldr r0, [r4, #4]
	movs r3, #0x3f
	ldrb r2, [r0, #3]
	lsls r3, r3, #0x12
	bics r1, r3
	lsls r2, r2, #0x1a
	lsrs r2, r2, #8
	orrs r1, r2
	str r1, [r4, #0x30]
	ldr r2, [r0]
	movs r3, #1
	lsls r3, r3, #0x1c
	lsls r2, r2, #0x1e
	lsrs r2, r2, #0x1f
	bics r1, r3
	lsls r2, r2, #0x1c
	orrs r2, r1
	str r2, [r4, #0x30]
	ldr r1, [r0]
	lsrs r3, r3, #4
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	lsls r1, r1, #0x18
	bics r2, r3
	orrs r1, r2
	str r1, [r4, #0x30]
	ldr r0, [r0]
	lsls r2, r3, #1
	lsls r0, r0, #0x1f
	lsrs r0, r0, #6
	bics r1, r2
	orrs r0, r1
	lsls r1, r2, #4
	orrs r0, r1
	str r0, [r4, #0x30]
	ldr r1, [r4, #0x3c]
	ldr r0, [r1]
	lsls r2, r0, #0x15
	lsrs r2, r2, #0x1f
	beq _0802C6BC
	lsrs r2, r3, #0xe
	bics r0, r2
	lsls r2, r2, #1
	bics r0, r2
	str r0, [r1]
	ldr r0, _0802C6CC
	ldr r0, [r0]
	bl sub_8001432
_0802C6BC
	pop {r4, r5, r6}
	pop {r3}
	bx r3
	ALIGN
_0802C6C4 DCDU gUnknown_0300345C
_0802C6C8 DCDU gUnknown_03003EA0
_0802C6CC DCDU gUnknown_03003EB8
	END
