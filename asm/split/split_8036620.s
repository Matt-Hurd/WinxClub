    INCLUDE asm/macros.inc
    AREA text, CODE

	IMPORT gUnknown_03003EA0
	IMPORT gUnknown_0803E7B0
	IMPORT sub_80003F4
	IMPORT sub_80007A0
	IMPORT sub_8005106
	IMPORT sub_800BE0E
	IMPORT sub_800C1CA
	IMPORT sub_8029070
	IMPORT sub_802911C
	IMPORT sub_802913E
	IMPORT sub_803D9F8
	IMPORT sub_803DA18
	IMPORT sub_803DA80

	thumb_func_start sub_8036620
sub_8036620 ;@ 0x08036620
	push {r4, lr}
	adds r4, r0, #0
	bne _08036638
	movs r0, #0xe4
	bl sub_803D9F8
	adds r4, r0, #0
	bne _08036638
	adds r0, r4, #0
_08036632
	pop {r4}
	pop {r3}
	bx r3
_08036638
	adds r0, r4, #0
	bl sub_8029070
	ldr r0, _080368CC ;@ =gUnknown_0803E7B0
	movs r1, #0x97
	str r0, [r4]
	add r0, pc, #0x288 ;@ =_080368D0
	str r0, [r4, #0x4c]
	movs r0, #0xc
	strh r0, [r4, #4]
	movs r0, #2
	strb r0, [r1, r4]
	movs r0, #0xff
	movs r1, #0xb6
	strb r0, [r1, r4]
	adds r0, r4, #0
	adds r0, #0x80
	ldr r1, [r0, #4]
	ldr r2, _080368E4 ;@ =0xF000FFFF
	ands r1, r2
	movs r2, #1
	lsls r2, r2, #0x19
	adds r1, r1, r2
	str r1, [r0, #4]
	adds r0, r4, #0
	b _08036632

	thumb_func_start sub_803666C
sub_803666C ;@ 0x0803666C
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _080368CC ;@ =gUnknown_0803E7B0
	adds r5, r1, #0
	movs r1, #0
	str r0, [r4]
	adds r0, r4, #0
	bl sub_802911C
	cmp r5, #0
	beq _08036688
	adds r0, r4, #0
	bl sub_803DA18
_08036688
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_803668E
sub_803668E ;@ 0x0803668E
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r4, r0, #0
	adds r4, #0x80
	ldr r0, [r4, #0x2c]
	adds r6, r5, #0
	adds r7, r5, #0
	lsls r0, r0, #5
	lsrs r0, r0, #0x17
	adds r7, #0xe0
	adds r6, #0x70
	cmp r0, #0x3e
	sub sp, #0x1c
	beq _080366EC
	cmp r0, #0x3f
	beq _0803675C
	cmp r0, #0x40
	bne _080366E4
	movs r0, #0x93
	lsls r0, r0, #2
	strh r0, [r7]
	ldr r0, [r4, #0x30]
	movs r1, #0xff
	lsls r1, r1, #0x13
	bics r0, r1
	movs r1, #0
	str r1, [r5, #0x70]
	str r1, [r4, #0x24]
	ldr r2, [r4, #0xc]
	movs r3, #0xf
	lsls r3, r3, #0xf
	bics r2, r3
	str r2, [r4, #0xc]
	ldr r2, _080368E8 ;@ =0xFFFF007F
	lsrs r0, r0, #7
	lsls r0, r0, #7
	ands r0, r2
	movs r2, #5
	lsls r2, r2, #7
	adds r0, r0, r2
	str r0, [r4, #0x30]
	strb r1, [r6, #0xd]
	strb r1, [r6, #0xc]
_080366E4
	add sp, #0x1c
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
_080366EC
	movs r2, #2
	movs r1, #7
	movs r0, #0
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	str r2, [sp, #0x14]
	movs r2, #0x32
	movs r1, #0x14
	ldr r0, _080368EC ;@ =0x000002CF
	str r1, [sp, #4]
	str r2, [sp, #8]
	movs r2, #2
	movs r1, #0
	movs r3, #0x32
	str r0, [sp]
	adds r0, r5, #0
	bl sub_802913E
	movs r0, #0x2d
	lsls r0, r0, #4
	strh r0, [r7]
	subs r0, #2
	strh r0, [r7, #2]
	ldr r0, [r4, #0x30]
	movs r1, #0xff
	lsls r1, r1, #0x13
	bics r0, r1
	movs r1, #1
	lsls r1, r1, #0x1a
	adds r0, r0, r1
	movs r1, #0
	movs r2, #1
	lsls r2, r2, #0x14
	str r1, [r5, #0x70]
	str r2, [r4, #0x24]
	ldr r2, [r4, #0xc]
	movs r3, #0xf
	lsls r3, r3, #0xf
	bics r2, r3
	movs r3, #5
	lsls r3, r3, #0xf
	adds r2, r2, r3
	str r2, [r4, #0xc]
	lsrs r0, r0, #7
	lsls r0, r0, #7
	ldr r2, _080368E8 ;@ =0xFFFF007F
	adds r0, #0x32
	ands r0, r2
	movs r2, #1
	lsls r2, r2, #9
	adds r0, r0, r2
	str r0, [r4, #0x30]
	movs r0, #0x1e
	strb r0, [r6, #0xd]
	strb r1, [r6, #0xc]
	b _080366E4
_0803675C
	movs r2, #2
	movs r1, #7
	str r1, [sp, #0x10]
	str r2, [sp, #0x14]
	movs r0, #0
	str r0, [sp, #0xc]
	movs r2, #0x32
	movs r1, #0x14
	str r1, [sp, #4]
	str r2, [sp, #8]
	movs r0, #0xfc
	str r0, [sp]
	movs r2, #2
	movs r1, #0
	movs r3, #0x28
	adds r0, r5, #0
	bl sub_802913E
	movs r0, #0xfd
	strh r0, [r7]
	movs r0, #0xfb
	strh r0, [r7, #2]
	ldr r0, [r4, #0x30]
	movs r1, #0xff
	lsls r1, r1, #0x13
	bics r0, r1
	movs r1, #0x91
	lsls r1, r1, #0x13
	adds r0, r0, r1
	movs r1, #0
	str r1, [r5, #0x70]
	str r1, [r4, #0x24]
	ldr r2, [r4, #0xc]
	movs r3, #0xf
	lsls r3, r3, #0xf
	bics r2, r3
	str r2, [r4, #0xc]
	lsrs r0, r0, #7
	lsls r0, r0, #7
	ldr r2, _080368E8 ;@ =0xFFFF007F
	adds r0, #0x32
	ands r0, r2
	movs r2, #1
	lsls r2, r2, #9
	adds r0, r0, r2
	str r0, [r4, #0x30]
	movs r0, #0x1e
	strb r0, [r6, #0xd]
	strb r1, [r6, #0xc]
	b _080366E4

	thumb_func_start nullsub_56
nullsub_56 ;@ 0x080367C0
	bx lr

	non_word_aligned_thumb_func_start sub_80367C2
sub_80367C2 ;@ 0x080367C2
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r0, #0xe0
	ldrh r1, [r0]
	ldr r0, [r5, #0x2c]
	movs r2, #0
	bl sub_80007A0
	ldr r4, [r5, #0x2c]
	movs r2, #1
	ldrh r1, [r4, #0x28]
	lsls r2, r2, #0xc
	bics r1, r2
	movs r2, #0
	orrs r1, r2
	strh r1, [r4, #0x28]
	adds r0, r4, #0
	bl sub_80003F4
	ldr r0, [r4]
	movs r6, #0x80
	lsls r1, r0, #0x1e
	cmp r1, #0
	blt _0803687C
	ldr r1, [r4, #0x3c]
	lsls r7, r6, #2
	cmp r1, #0
	ldr r2, _080368F0 ;@ =gUnknown_03003EA0
	blt _08036816
	movs r3, #0xf
	ldr r1, [r4, #0x34]
	lsls r3, r3, #0x14
	cmp r1, r3
	bge _08036816
	ldr r1, [r4, #0x40]
	cmp r1, #0
	blt _08036816
	movs r3, #5
	ldr r1, [r4, #0x38]
	lsls r3, r3, #0x15
	cmp r1, r3
	blt _0803682C
_08036816
	lsls r0, r0, #0x16
	bmi _0803687C
	adds r1, r4, #0
	ldr r0, [r2]
	bl sub_800C1CA
	ldr r0, [r4]
	orrs r0, r7
	orrs r0, r6
	str r0, [r4]
	b _0803687C
_0803682C
	lsls r0, r0, #0x16
	bpl _08036846
	adds r1, r4, #0
	ldr r0, [r2]
	bl sub_800BE0E
	ldr r0, [r4]
	movs r1, #0x20
	bics r0, r7
	orrs r0, r1
	movs r1, #0x40
	orrs r0, r1
	str r0, [r4]
_08036846
	ldr r0, [r4, #0x2c]
	asrs r1, r0, #0x1f
	lsrs r1, r1, #0x10
	adds r0, r1, r0
	ldrh r1, [r4, #0x28]
	asrs r0, r0, #0x10
	lsls r0, r0, #0x17
	lsrs r1, r1, #9
	lsls r1, r1, #9
	lsrs r0, r0, #0x17
	orrs r0, r1
	strh r0, [r4, #0x28]
	ldr r0, [r4, #0x30]
	asrs r1, r0, #0x1f
	lsrs r1, r1, #0x10
	adds r0, r1, r0
	ldrh r1, [r4, #0x26]
	asrs r0, r0, #0x10
	lsls r0, r0, #0x18
	lsrs r1, r1, #8
	lsls r1, r1, #8
	lsrs r0, r0, #0x18
	orrs r0, r1
	strh r0, [r4, #0x26]
	ldr r0, [r4]
	orrs r0, r6
	str r0, [r4]
_0803687C
	ldr r0, [r4]
	orrs r0, r6
	str r0, [r4]
	bl sub_8005106
	adds r1, r0, #0
	movs r4, #0
	adds r3, r4, #0
	movs r2, #0
	movs r0, #0x1c
	bl sub_803DA80
	cmp r0, #0
	beq _080368A6
	movs r1, #0
	movs r2, #0
	movs r3, #0
	stm r0!, {r1, r2, r3}
	stm r0!, {r1, r2, r3}
	stm r0!, {r3}
	subs r0, #0x1c
_080368A6
	strh r4, [r0]
	strh r4, [r0, #2]
	strh r4, [r0, #4]
	strh r4, [r0, #6]
	strh r4, [r0, #8]
	strh r4, [r0, #0xa]
	strh r4, [r0, #0xc]
	strh r4, [r0, #0xe]
	strh r4, [r0, #0x10]
	strh r4, [r0, #0x12]
	movs r1, #3
	strb r1, [r0, #0x14]
	ldr r1, [r5, #0x28]
	str r1, [r0, #0x18]
	str r0, [r5, #0x28]
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
	ALIGN
_080368CC DCDU gUnknown_0803E7B0
_080368D0 DCDU 0x74617453
_080368D4 DCDU 0x53206369
_080368D8 DCDU 0x70697263
_080368DC DCDU 0x72472074
_080368E0 DCDU 0x0070756F
_080368E4 DCDU 0xF000FFFF
_080368E8 DCDU 0xFFFF007F
_080368EC DCDU 0x000002CF
_080368F0 DCDU gUnknown_03003EA0
	END