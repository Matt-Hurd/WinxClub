    INCLUDE asm/macros.inc
    AREA text, CODE

	IMPORT gUnknown_03003E84
	IMPORT gUnknown_0803E870
	IMPORT nullsub_5
	IMPORT nullsub_6
	IMPORT sub_800FB48
	IMPORT sub_800FB72
	IMPORT sub_800FE3A
	IMPORT sub_8012468
	IMPORT sub_803B8CA
	IMPORT sub_803BEB0
	IMPORT sub_803D9F8
	IMPORT sub_803DA18
	IMPORT sub_803DAC0

	thumb_func_start sub_800F1E8
sub_800F1E8 ;@ 0x0800F1E8
	push {r4}
	movs r1, #0x11
	lsls r1, r1, #0xb
	str r1, [r0]
	movs r1, #0
	movs r4, #1
	movs r3, #0
_0800F1F6
	lsls r2, r1, #2
	adds r2, r2, r0
	str r3, [r2, #0x18]
	adds r1, #1
	cmp r1, #1
	str r4, [r2, #4]
	blo _0800F1F6
	movs r1, #0
_0800F206
	lsls r2, r1, #2
	adds r2, r2, r0
	str r3, [r2, #0x10]
	str r4, [r2, #8]
	adds r2, r0, r1
	adds r2, #0x70
	adds r1, #1
	cmp r1, #2
	strb r3, [r2, #0xc]
	blo _0800F206
	str r3, [r0, #0x34]
	pop {r4}
	bx lr

	thumb_func_start sub_800F220
sub_800F220 ;@ 0x0800F220
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x80
	bl sub_803BEB0
	movs r0, #0x11
	lsls r0, r0, #0xb
	str r0, [r4]
	movs r0, #0
	movs r3, #1
	movs r2, #0
_0800F236
	lsls r1, r0, #2
	adds r1, r1, r4
	str r2, [r1, #0x18]
	adds r0, #1
	cmp r0, #1
	str r3, [r1, #4]
	blo _0800F236
	movs r0, #0
_0800F246
	lsls r1, r0, #2
	adds r1, r1, r4
	str r2, [r1, #0x10]
	str r3, [r1, #8]
	adds r1, r4, r0
	adds r1, #0x70
	adds r0, #1
	cmp r0, #2
	strb r2, [r1, #0xc]
	blo _0800F246
	str r2, [r4, #0x34]
	pop {r4}
	pop {r3}
	bx r3
	ALIGN

	thumb_func_start sub_800F264
sub_800F264 ;@ 0x0800F264
	push {r4, lr}
	adds r4, r0, #0
	bne _0800F27C
	movs r0, #0x78
	bl sub_803D9F8
	adds r4, r0, #0
	bne _0800F27C
	adds r0, r4, #0
_0800F276
	pop {r4}
	pop {r3}
	bx r3
_0800F27C
	adds r0, r4, #0
	bl sub_800FB48
	ldr r0, _0800F4E8 ;@ =_0803E870
	str r0, [r4]
	movs r0, #0
	str r0, [r4, #0x70]
	str r0, [r4, #0x74]
	str r0, [r4, #0x6c]
	adds r0, r4, #0
	b _0800F276

	non_word_aligned_thumb_func_start sub_800F292
sub_800F292 ;@ 0x0800F292
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _0800F4E8 ;@ =_0803E870
	adds r5, r1, #0
	movs r1, #0
	str r0, [r4]
	adds r0, r4, #0
	bl sub_800FB72
	cmp r5, #0
	beq _0800F2AE
	adds r0, r4, #0
	bl sub_803DA18
_0800F2AE
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	thumb_func_start sub_800F2B4
sub_800F2B4 ;@ 0x0800F2B4
	movs r0, #0x98
	bx lr

	thumb_func_start sub_800F2B8
sub_800F2B8 ;@ 0x0800F2B8
	str r1, [r0, #0x70]
	bx lr

	thumb_func_start sub_800F2BC
sub_800F2BC ;@ 0x0800F2BC
	push {r3, lr}
	ldr r1, [r0, #0x74]
	cmp r1, #0
	beq _0800F2DC
	ldr r2, [r0, #0x70]
	adds r2, #0x80
	ldr r2, [r2, #0x10]
	cmp r2, #0
	beq _0800F2DC
	ldr r0, [r0, #0x5c]
	lsls r0, r0, #0x1e
	beq _0800F2DC
	ldr r0, _0800F4EC ;@ =gUnknown_03003E84
	ldr r0, [r0]
	bl nullsub_5
_0800F2DC
	add sp, #4
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_800F2E2
sub_800F2E2 ;@ 0x0800F2E2
	push {r4, lr}
	ldr r1, [r0]
	adds r4, r0, #0
	ldr r2, [r1, #0x18]
	adds r1, r2, r1
	bl sub_803B8CA
	ldr r1, [r4, #0x70]
	lsrs r0, r0, #1
	adds r1, #0x80
	ldr r1, [r1, #0xc]
	lsls r0, r0, #1
	cmp r1, r0
	bhs _0800F306
	subs r0, r0, r1
_0800F300
	pop {r4}
	pop {r3}
	bx r3
_0800F306
	ldr r3, [r4, #8]
	movs r2, #1
	lsls r2, r3
	subs r1, r2, r1
	adds r0, r1, r0
	b _0800F300

	non_word_aligned_thumb_func_start sub_800F312
sub_800F312 ;@ 0x0800F312
	push {r3, r4, r5, r6, r7, lr}
	ldr r7, [r0, #4]
	adds r4, r0, #0
	ldr r0, [r0, #0x70]
	adds r5, r1, #0
	adds r0, #0x80
	ldr r1, [r0, #0x10]
	movs r6, #0
	cmp r1, r5
	bhs _0800F32A
	subs r6, r5, r1
	adds r5, r1, #0
_0800F32A
	cmp r1, #0
	beq _0800F3C6
	ldr r0, _0800F4EC ;@ =gUnknown_03003E84
	ldr r0, [r0]
	ldr r1, [r4, #0x74]
	bl sub_803DAC0
	str r0, [sp]
	ldr r1, [r4, #0x70]
	str r0, [r1, #0x2c]
	ldr r0, [r4, #0x70]
	movs r1, #1
	mov ip, r0
	adds r0, #0x80
	ldr r0, [r0, #0xc]
	ldr r3, [r4, #8]
	adds r2, r0, r5
	lsls r1, r3
	cmp r2, r1
	bls _0800F38A
	subs r2, r1, r0
	lsrs r0, r0, #1
	lsls r0, r0, #1
	adds r1, r0, r7
	mov r0, ip
	bl sub_8012468
	ldr r0, [r4, #0x70]
	movs r1, #0x8c
	ldr r1, [r1, r0]
	ldr r3, [r4, #8]
	movs r2, #1
	lsls r2, r3
	subs r1, r2, r1
	subs r2, r5, r1
	adds r1, r7, #0
	bl sub_8012468
	ldr r0, [r4, #8]
	movs r1, #1
	lsls r1, r0
	ldr r0, [r4, #0x70]
	adds r0, #0x80
	ldr r2, [r0, #0xc]
	subs r1, r1, r2
	subs r1, r5, r1
	str r1, [r0, #0xc]
	b _0800F3AC
_0800F38A
	lsrs r0, r0, #1
	lsls r0, r0, #1
	adds r1, r0, r7
	mov r0, ip
	adds r2, r5, #0
	bl sub_8012468
	ldr r0, [r4, #0x70]
	ldr r2, [r4, #8]
	adds r0, #0x80
	ldr r1, [r0, #0xc]
	movs r3, #1
	lsls r3, r2
	adds r1, r1, r5
	subs r3, #1
	ands r1, r3
	str r1, [r0, #0xc]
_0800F3AC
	ldr r0, [r4, #0x70]
	adds r0, #0x90
	ldr r1, [r0]
	subs r1, r1, r5
	str r1, [r0]
	ldr r1, [r4, #0x70]
	ldr r0, [r4, #0x74]
	ldr r1, [r1, #0x2c]
	ldr r2, [sp]
	subs r1, r1, r2
	adds r0, r0, r1
	str r0, [r4, #0x74]
	b _0800F3D4
_0800F3C6
	movs r1, #4
	str r1, [r4, #0x5c]
	ldr r2, [r4, #8]
	movs r1, #1
	lsls r1, r2
	str r1, [r0, #0x10]
	movs r5, #0
_0800F3D4
	cmp r6, #0
	ble _0800F400
	movs r0, #0
_0800F3DA
	ldr r1, [r4, #0x70]
	ldr r3, [r4, #8]
	movs r2, #1
	adds r1, #0x80
	ldr r1, [r1, #0xc]
	lsls r2, r3
	subs r2, #1
	ands r1, r2
	lsrs r1, r1, #1
	lsls r1, r1, #1
	strh r0, [r7, r1]
	ldr r1, [r4, #0x70]
	subs r6, #2
	adds r1, #0x8c
	ldr r2, [r1]
	adds r2, #2
	str r2, [r1]
	cmp r6, #0
	bgt _0800F3DA
_0800F400
	adds r0, r5, #0
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	thumb_func_start sub_800F408
sub_800F408 ;@ 0x0800F408
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, [r0, #0x5c]
	movs r6, #1
	cmp r0, #4
	beq _0800F46A
	bgt _0800F438
	cmp r0, #1
	beq _0800F444
	cmp r0, #2
	bne _0800F4DE
	ldr r1, [r4]
	ldr r5, [r4, #0x10]
	ldr r2, [r1, #0x18]
	adds r0, r4, #0
	adds r1, r2, r1
	bl sub_803B8CA
	bics r0, r6
	str r0, [r4, #0x10]
	cmp r0, r5
	bls _0800F45A
	subs r1, r0, r5
	b _0800F462
_0800F438
	cmp r0, #8
	bne _0800F4DE
	movs r0, #0
_0800F43E
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
_0800F444
	ldr r0, [r4, #0x68]
	asrs r1, r0, #0x1f
	lsrs r1, r1, #0x18
	adds r0, r1, r0
	asrs r1, r0, #8
	adds r0, r4, #0
	bl sub_800FE3A
	movs r0, #2
	str r0, [r4, #0x5c]
	b _0800F4DE
_0800F45A
	ldr r1, [r4, #8]
	lsls r6, r1
	subs r1, r6, r5
	adds r1, r1, r0
_0800F462
	adds r0, r4, #0
	bl sub_800F312
	b _0800F4DE
_0800F46A
	adds r0, r4, #0
	ldm r4!, {r1, r5}
	ldr r2, [r1, #0x18]
	subs r4, #8
	adds r1, r2, r1
	bl sub_803B8CA
	ldr r1, [r4, #0x70]
	lsrs r0, r0, #1
	str r1, [sp]
	adds r1, #0x80
	ldr r2, [r1, #0xc]
	lsls r0, r0, #1
	cmp r2, r0
	bhs _0800F48C
	subs r0, r0, r2
	b _0800F496
_0800F48C
	ldr r7, [r4, #8]
	adds r3, r6, #0
	lsls r3, r7
	subs r2, r3, r2
	adds r0, r2, r0
_0800F496
	lsrs r0, r0, #4
	lsls r0, r0, #4
	ldr r1, [r1, #0x10]
	subs r0, #0x20
	cmp r1, r0
	bhs _0800F4A8
	adds r0, r1, #0
	movs r1, #8
	str r1, [r4, #0x5c]
_0800F4A8
	ldr r1, [sp]
	adds r1, #0x90
	ldr r2, [r1]
	subs r2, r2, r0
	str r2, [r1]
	cmp r0, #0
	ble _0800F4DE
	movs r1, #0
_0800F4B8
	ldr r2, [r4, #0x70]
	ldr r7, [r4, #8]
	adds r3, r6, #0
	adds r2, #0x80
	ldr r2, [r2, #0xc]
	lsls r3, r7
	subs r3, #1
	ands r2, r3
	lsrs r2, r2, #1
	lsls r2, r2, #1
	strh r1, [r5, r2]
	ldr r2, [r4, #0x70]
	subs r0, #2
	adds r2, #0x8c
	ldr r3, [r2]
	adds r3, #2
	str r3, [r2]
	cmp r0, #0
	bgt _0800F4B8
_0800F4DE
	adds r0, r4, #0
	bl nullsub_6
	movs r0, #1
	b _0800F43E
	ALIGN
_0800F4E8 DCDU gUnknown_0803E870
_0800F4EC DCDU gUnknown_03003E84
	END