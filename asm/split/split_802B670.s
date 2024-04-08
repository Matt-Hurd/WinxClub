    INCLUDE asm/macros.inc
    AREA text, CODE

	IMPORT gUnknown_03003444
	IMPORT gUnknown_0300345C
	IMPORT gUnknown_030034F8
	IMPORT gUnknown_080414B8
	IMPORT gUnknown_08051090
	IMPORT sub_8018386
	IMPORT sub_802459E
	IMPORT sub_8028C2E
	IMPORT sub_802B2F8
	IMPORT sub_803B8CE
	IMPORT sub_803B92C
	IMPORT sub_803B940
	IMPORT sub_8040034
	IMPORT sub_8040594

	thumb_func_start sub_802B670
sub_802B670 ;@ 0x0802B670
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _0802BA04 ;@ =gUnknown_03003444
	movs r2, #0
	ldr r1, [r0]
	adds r3, r2, #0
	ldr r0, [r1, #0x14]
	lsls r5, r0, #0x1c
	bmi _0802B684
	ldrh r3, [r1, #6]
_0802B684
	lsls r5, r3, #0x10
	lsrs r5, r5, #0x10
	lsls r0, r0, #0x1c
	lsls r1, r5, #0x1e
	movs r3, #3
	cmp r1, #0
	ldr r0, _0802BA08 ;@ =gUnknown_030034F8
	bge _0802B6A4
	strb r2, [r4, #1]
	strb r2, [r4]
	strb r3, [r4, #2]
	ldr r0, [r0]
	movs r1, #0
	bl sub_802459E
	b _0802B6B4
_0802B6A4
	lsls r1, r5, #0x1f
	bpl _0802B6B4
	strb r2, [r4, #1]
	strb r3, [r4, #2]
	ldr r0, [r0]
	movs r1, #0
	bl sub_802459E
_0802B6B4
	lsls r0, r5, #0x1a
	bmi _0802B6BC
	lsls r0, r5, #0x1b
	bpl _0802B6EE
_0802B6BC
	ldr r0, _0802BA0C ;@ =gUnknown_0300345C
	ldr r0, [r0]
	adds r0, #0x20
	bl sub_8028C2E
	ldrb r0, [r4]
	movs r3, #0x56
	mov r1, sp
	adds r0, #1
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x1f
	strb r0, [r4]
	ldrb r0, [r4]
	adds r4, #0xff
	muls r0, r3
	lsrs r0, r0, #1
	adds r0, #0x7c
	add r3, sp, #0
	strh r0, [r3]
	movs r0, #0x4d
	strh r0, [r3, #2]
	adds r4, #0xc1
	ldr r0, [r4, #0x38]
	bl sub_8040034
_0802B6EE
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	thumb_func_start sub_802B6F4
sub_802B6F4 ;@ 0x0802B6F4
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	movs r0, #0x1d
	lsls r0, r0, #0x12
	sub sp, #0x1c
	str r0, [sp, #8]
	ldrb r6, [r4, #1]
	movs r5, #0xd
	lsls r5, r5, #0x13
	adds r0, r6, #0
	bl sub_8040594
	movs r0, #0x2d
	muls r0, r6
	lsrs r2, r6, #1
	adds r0, r0, r2
	adds r0, r1, r0
	add r3, sp, #0
	strh r0, [r3, #4]
	lsls r0, r0, #0x12
	ldr r1, _0802BA10 ;@ =gUnknown_080414B8
	lsrs r0, r0, #0x11
	ldrsh r0, [r1, r0]
	lsls r0, r0, #2
	str r0, [sp, #0xc]
	adds r1, r5, #0
	bl sub_803B92C
	add r2, pc, #0x2E4 ;@ =_0802BA14
	ldm r2!, {r2, r3}
	bl sub_803B940
	asrs r0, r0, #0x10
	movs r1, #0xa0
	subs r0, r1, r0
	subs r0, #0x38
	lsls r6, r0, #0x10
	asrs r6, r6, #0x10
	adds r0, r6, #0
	adds r0, #0x38
	lsls r1, r0, #0x10
	movs r5, #0
	asrs r1, r1, #0x10
	ldr r7, _0802BA1C ;@ =gUnknown_08051090
	str r1, [sp, #0x18]
_0802B74E
	lsls r0, r5, #1
	ldrh r0, [r7, r0]
	ldr r1, [sp, #0x18]
	add r3, sp, #0
	adds r0, #0x7c
	strh r0, [r3]
	lsls r0, r5, #2
	adds r0, r0, r4
	adds r0, #0xff
	strh r1, [r3, #2]
	adds r0, #0xc1
	ldr r0, [r0, #0x24]
	mov r1, sp
	bl sub_8040034
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #3
	blo _0802B74E
	movs r1, #0x7c
	add r3, sp, #0
	strh r1, [r3]
	adds r0, r6, #0
	adds r0, #0x4d
	strh r0, [r3, #2]
	adds r0, r4, #0
	adds r0, #0xff
	adds r0, #0xc1
	str r0, [sp, #0x14]
	ldr r0, [r0, #0x38]
	mov r1, sp
	bl sub_8040034
	ldr r1, [r4, #4]
	adds r0, r4, #4
	ldr r2, [r1, #0x14]
	adds r3, r2, r1
	adds r1, r6, #0
	adds r1, #0x3c
	lsls r2, r1, #0x10
	asrs r2, r2, #0x10
	movs r1, #0x7c
	bl sub_803B8CE
	ldr r1, [r4, #0x7c]
	adds r0, r4, #0
	ldr r2, [r1, #0x14]
	adds r0, #0x7c
	adds r3, r2, r1
	adds r1, r6, #0
	adds r1, #0x46
	lsls r2, r1, #0x10
	asrs r2, r2, #0x10
	movs r1, #0x7c
	bl sub_803B8CE
	adds r0, r4, #0
	adds r0, #0xf4
	ldr r1, [r0]
	adds r6, #0x50
	ldr r2, [r1, #0x14]
	adds r3, r2, r1
	lsls r2, r6, #0x10
	asrs r2, r2, #0x10
	adds r5, r2, #0
	movs r1, #0x90
	bl sub_803B8CE
	adds r0, r4, #0
	adds r0, #0xff
	adds r0, #0x6d
	ldr r1, [r0]
	ldr r2, [r1, #0x14]
	adds r3, r2, r1
	adds r2, r5, #0
	movs r1, #0xbb
	bl sub_803B8CE
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #8]
	bl sub_803B92C
	add r2, pc, #0x21C ;@ =_0802BA14
	ldm r2!, {r2, r3}
	bl sub_803B940
	asrs r1, r0, #0x10
	movs r5, #0
	movs r6, #0x28
	str r1, [sp, #0x10]
_0802B804
	ldr r1, [sp, #0x10]
	lsls r0, r5, #6
	adds r0, r0, r1
	subs r0, #0x60
	add r3, sp, #0
	strh r0, [r3]
	lsls r0, r5, #2
	adds r0, r0, r4
	adds r0, #0xff
	adds r0, #0xc1
	strh r6, [r3, #2]
	ldr r0, [r0, #0x30]
	mov r1, sp
	bl sub_8040034
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #2
	blo _0802B804
	ldrb r0, [r4, #1]
	adds r0, #2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	strb r0, [r4, #1]
	cmp r0, #0x5a
	blo _0802B8A8
	movs r0, #2
	strb r0, [r4, #2]
	movs r5, #0
	mov r7, sp
_0802B842
	ldr r1, _0802BA1C ;@ =gUnknown_08051090
	lsls r0, r5, #1
	ldrh r0, [r1, r0]
	add r3, sp, #0
	adds r0, #0x7c
	strh r0, [r3]
	movs r0, #0x38
	strh r0, [r3, #2]
	lsls r0, r5, #2
	adds r0, r0, r4
	adds r0, #0xff
	adds r0, #0xc1
	ldr r0, [r0, #0x24]
	adds r1, r7, #0
	bl sub_8040034
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #3
	blo _0802B842
	movs r5, #0
	mov r7, sp
_0802B870
	lsls r0, r5, #6
	adds r0, #0x14
	add r3, sp, #0
	strh r0, [r3]
	lsls r0, r5, #2
	adds r0, r0, r4
	adds r0, #0xff
	adds r0, #0xc1
	strh r6, [r3, #2]
	ldr r0, [r0, #0x30]
	adds r1, r7, #0
	bl sub_8040034
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #2
	blo _0802B870
	movs r1, #0x7c
	add r3, sp, #0
	strh r1, [r3]
	movs r0, #0x4d
	strh r0, [r3, #2]
	ldr r0, [sp, #0x14]
	mov r1, sp
	ldr r0, [r0, #0x38]
	bl sub_8040034
_0802B8A8
	add sp, #0x1c
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	thumb_func_start sub_802B8B0
sub_802B8B0 ;@ 0x0802B8B0
	push {r4, r5, r6, r7, lr}
	movs r6, #0x1d
	lsls r6, r6, #0x12
	sub sp, #0xc
	str r6, [sp, #8]
	ldrb r5, [r0, #1]
	adds r4, r0, #0
	adds r0, r5, #0
	bl sub_8040594
	movs r0, #0x2d
	muls r0, r5
	lsrs r2, r5, #1
	adds r0, r0, r2
	adds r0, r1, r0
	add r3, sp, #0
	strh r0, [r3, #4]
	lsls r0, r0, #0x12
	ldr r1, _0802BA10 ;@ =gUnknown_080414B8
	lsrs r0, r0, #0x11
	ldrsh r0, [r1, r0]
	adds r1, r6, #0
	lsls r7, r0, #2
	adds r0, r7, #0
	bl sub_803B92C
	add r2, pc, #0x12C ;@ =_0802BA14
	ldm r2!, {r2, r3}
	bl sub_803B940
	asrs r6, r0, #0x10
	movs r5, #0
_0802B8F0
	ldr r1, _0802BA1C ;@ =gUnknown_08051090
	lsls r0, r5, #1
	ldrh r0, [r1, r0]
	add r3, sp, #0
	mov r1, sp
	adds r0, r0, r6
	adds r0, #0x7c
	strh r0, [r3]
	movs r0, #0x38
	strh r0, [r3, #2]
	lsls r0, r5, #2
	adds r0, r0, r4
	adds r0, #0xff
	adds r0, #0xc1
	ldr r0, [r0, #0x24]
	bl sub_8040034
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #3
	blo _0802B8F0
	ldrb r0, [r4]
	movs r3, #0x56
	mov r1, sp
	muls r0, r3
	lsrs r0, r0, #1
	adds r0, r0, r6
	adds r0, #0x7c
	add r3, sp, #0
	strh r0, [r3]
	movs r0, #0x4d
	strh r0, [r3, #2]
	movs r0, #0xff
	adds r0, #0xf9
	ldr r0, [r0, r4]
	bl sub_8040034
	ldr r1, [r4, #4]
	adds r0, r4, #4
	ldr r2, [r1, #0x14]
	adds r3, r2, r1
	adds r1, r6, #0
	adds r1, #0x7c
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #0x3c
	adds r5, r1, #0
	bl sub_803B8CE
	ldr r1, [r4, #0x7c]
	adds r0, r4, #0
	ldr r2, [r1, #0x14]
	adds r0, #0x7c
	adds r3, r2, r1
	movs r2, #0x46
	adds r1, r5, #0
	bl sub_803B8CE
	adds r0, r4, #0
	adds r0, #0xf4
	ldr r1, [r0]
	ldr r2, [r1, #0x14]
	adds r3, r2, r1
	adds r1, r6, #0
	adds r1, #0x90
	lsls r1, r1, #0x10
	movs r2, #0x50
	asrs r1, r1, #0x10
	bl sub_803B8CE
	adds r0, r4, #0
	adds r0, #0xff
	adds r0, #0x6d
	ldr r1, [r0]
	ldr r2, [r1, #0x14]
	adds r3, r2, r1
	adds r6, #0xbb
	lsls r1, r6, #0x10
	movs r2, #0x50
	asrs r1, r1, #0x10
	bl sub_803B8CE
	adds r0, r7, #0
	ldr r1, [sp, #8]
	bl sub_803B92C
	add r2, pc, #0x74 ;@ =_0802BA14
	ldm r2!, {r2, r3}
	bl sub_803B940
	asrs r0, r0, #0x10
	movs r5, #0
	movs r1, #0x14
	subs r6, r1, r0
	mov r7, sp
_0802B9B0
	lsls r0, r5, #6
	adds r0, r6, r0
	add r3, sp, #0
	strh r0, [r3]
	movs r0, #0x28
	strh r0, [r3, #2]
	lsls r0, r5, #2
	adds r0, r0, r4
	adds r0, #0xff
	adds r0, #0xc1
	ldr r0, [r0, #0x30]
	adds r1, r7, #0
	bl sub_8040034
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #2
	blo _0802B9B0
	ldrb r0, [r4, #1]
	adds r0, #3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	strb r0, [r4, #1]
	cmp r0, #0x5a
	blo _0802B9FA
	movs r0, #0
	strb r0, [r4, #2]
	ldrb r0, [r4]
	cmp r0, #1
	bne _0802B9F4
	movs r0, #2
	bl sub_8018386
_0802B9F4
	adds r0, r4, #0
	bl sub_802B2F8
_0802B9FA
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	ALIGN
_0802BA04 DCDU gUnknown_03003444
_0802BA08 DCDU gUnknown_030034F8
_0802BA0C DCDU gUnknown_0300345C
_0802BA10 DCDU gUnknown_080414B8
_0802BA14 DCDU 0x00010000
_0802BA18 DCDU 0x00000000
_0802BA1C DCDU gUnknown_08051090
	END