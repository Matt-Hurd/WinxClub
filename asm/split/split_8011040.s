    INCLUDE asm/macros.inc
    AREA text, CODE

	IMPORT gUnknown_030033F4
	IMPORT gUnknown_03003E98
	IMPORT gUnknown_0804AE80
	IMPORT sub_8004674
	IMPORT sub_8008160
	IMPORT sub_80108DA
	IMPORT sub_8010B8A
	IMPORT sub_8010ED2
	IMPORT sub_8010F10
	IMPORT sub_8010F90
	IMPORT sub_803C124
	IMPORT sub_803E204
	IMPORT sub_803E210

	thumb_func_start sub_8011040
sub_8011040 ;@ 0x08011040
	push {r0, r1, r2, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	movs r0, #0
	sub sp, #8
	str r0, [sp, #4]
	movs r0, #0x1b
	lsls r0, r0, #6
	adds r5, r4, r0
	adds r7, r1, #0
	movs r6, #0
	cmp r1, #0
	ble _08011066
	ldr r0, [r5, #0x18]
	cmp r0, r7
	bls _08011060
	str r7, [r5, #0x18]
_08011060
	ldr r1, [r5, #0x18]
	subs r0, r0, r1
	str r0, [sp, #4]
_08011066
	ldr r0, [sp, #0x10]
	cmp r0, #0
	ble _0801107E
	movs r6, #0x4b
	ldr r0, [sp, #0x10]
	lsls r6, r6, #6
	muls r6, r0
	ldr r0, _08011380 ;@ =0x0001FEEF
	cmp r6, r0
	bls _0801107C
	adds r6, r0, #0
_0801107C
	str r6, [r5, #0x3c]
_0801107E
	ldr r0, _08011384 ;@ =gUnknown_030033F4
	ldr r0, [r0]
	cmp r0, #0
	bne _08011090
	adds r0, r4, #0
	bl sub_8010F90
	cmp r0, #0
	bne _0801107E
_08011090
	ldr r0, _08011384 ;@ =gUnknown_030033F4
	ldr r0, [r0]
	cmp r0, #0
	bne _080110A2
	adds r0, r4, #0
	bl sub_8010F10
	cmp r0, #0
	bne _08011090
_080110A2
	ldr r0, _08011384 ;@ =gUnknown_030033F4
	ldr r0, [r0]
	cmp r0, #0
	bne _080110B4
	adds r0, r4, #0
	bl sub_8010B8A
	cmp r0, #0
	bne _080110A2
_080110B4
	ldr r0, [sp, #0x10]
	cmp r0, #0
	ble _080110C0
	ldr r0, _08011380 ;@ =0x0001FEEF
	subs r0, r0, r6
	str r0, [r5, #0x3c]
_080110C0
	cmp r7, #0
	ble _080110F8
	ldr r0, [sp, #4]
	str r0, [r5, #0x18]
	movs r0, #0x6d
	lsls r0, r0, #4
	adds r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #0xff
	beq _08011100
	subs r0, #1
	lsls r3, r0, #1
	adds r0, r3, r0
	lsls r0, r0, #2
	adds r1, r0, r4
	movs r0, #0x19
	lsls r0, r0, #6
	adds r0, r1, r0
	ldr r1, [r0, #0xc]
	ldr r0, [r0, #0x14]
	lsls r2, r0, #0x13
	lsrs r2, r2, #0x11
	lsrs r0, r0, #0xd
	lsls r0, r0, #2
	adds r1, r1, r2
	adds r0, r1, r0
	adds r0, #8
	str r0, [r5, #0x14]
_080110F8
	add sp, #0x14
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
_08011100
	movs r0, #0
	str r0, [r5, #0x14]
	b _080110F8

	non_word_aligned_thumb_func_start sub_8011106
sub_8011106 ;@ 0x08011106
	movs r1, #0x1b
	lsls r1, r1, #6
	push {r4, lr}
	adds r4, r0, r1
	adds r1, #0x10
	ldr r2, [r4, #0x14]
	adds r1, r0, r1
	cmp r2, #0
	beq _0801112C
	ldrb r2, [r1, #1]
	cmp r2, #0
	beq _0801112C
	ldr r2, [r4, #0x18]
	cmp r2, #0
	beq _0801112C
	movs r0, #0
_08011126
	pop {r4}
	pop {r3}
	bx r3
_0801112C
	ldr r2, [r4, #0x20]
	cmp r2, #0
	beq _08011140
	ldrb r1, [r1, #0xf]
	bl sub_8010ED2
	cmp r0, #0
	beq _08011140
	movs r0, #0
	b _08011126
_08011140
	ldr r0, [r4, #0x3c]
	cmp r0, #0
	ble _0801114A
	movs r0, #0
	b _08011126
_0801114A
	movs r0, #1
	b _08011126

	non_word_aligned_thumb_func_start sub_801114E
sub_801114E ;@ 0x0801114E
	adds r1, r0, #0
	ldr r1, [r1, #0x5c]
	movs r0, #1
	cmp r1, #0
	ble _0801115A
	movs r0, #0
_0801115A
	bx lr

	thumb_func_start sub_801115C
sub_801115C ;@ 0x0801115C
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	movs r3, #0x1b
	lsls r3, r3, #6
	adds r2, r3, #0
	adds r2, #0x10
	adds r3, r4, r3
	ldr r1, [r4, #0x60]
	adds r7, r4, #0
	adds r5, r4, #0
	adds r5, #0x50
	adds r7, #0x80
	adds r6, r4, r2
	movs r0, #0
	sub sp, #0x24
	str r3, [sp, #0x20]
	cmp r1, #0
	bgt _08011264
	ldr r0, [r4, #0x5c]
	subs r1, r0, #1
	str r1, [r4, #0x5c]
	cmp r0, #0
	bne _080111A0
	str r0, [r4, #0x5c]
	str r0, [r4, #0x60]
	str r0, [r4, #0x64]
	str r0, [r4, #0x68]
	movs r0, #0xb
	strb r0, [r5, #4]
	movs r0, #0
_08011198
	add sp, #0x24
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
_080111A0
	ldrb r0, [r5, #4]
	cmp r0, #0xb
	blo _080111AC
	movs r0, #0
	strb r0, [r5, #4]
	b _080111D8
_080111AC
	lsls r3, r0, #1
	adds r0, r3, r0
	lsls r0, r0, #2
	ldr r1, _08011388 ;@ =0x0000064C
	adds r0, r0, r4
	adds r0, r0, r1
	movs r1, #0
	movs r3, #0
	movs r2, #0
	stm r0!, {r1, r2, r3}
	ldrb r0, [r6, #1]
	adds r0, #1
	strb r0, [r6, #1]
	ldrb r0, [r5, #4]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	strb r0, [r5, #4]
	cmp r0, #0xb
	blo _080111D8
	movs r0, #0
	strb r0, [r5, #4]
_080111D8
	ldrb r0, [r5, #4]
	ldr r1, _08011388 ;@ =0x0000064C
	lsls r3, r0, #1
	adds r0, r3, r0
	lsls r0, r0, #2
	adds r0, r0, r4
	adds r0, r0, r1
	adds r2, r0, #4
	str r2, [sp, #0x10]
	ldr r1, [r0, #4]
	lsrs r1, r1, #0x10
	str r1, [r4, #0x60]
	ldr r1, [r4, #0x6c]
	ldr r3, [r4, #0x74]
	adds r2, r1, #0
	adds r1, #1
	mov ip, r1
	cmp r1, r3
	bge _08011214
	lsls r3, r2, #1
	adds r2, r3, r2
	ldr r1, [r4, #0x70]
	lsls r2, r2, #2
	adds r1, r1, r2
	ldr r1, [r1, #0xc]
	ldr r0, [r0]
	cmp r1, r0
	bne _08011214
	mov r1, ip
	str r1, [r4, #0x6c]
_08011214
	ldr r2, [sp, #0x10]
	ldr r1, _0801138C ;@ =gUnknown_0804AE80
	ldr r0, [r2]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1c
	adds r0, r0, r1
	str r0, [sp, #0xc]
	ldr r0, [r4, #0xc]
	str r0, [sp, #0x1c]
	lsls r0, r0, #0xa
	lsrs r1, r0, #0x16
	ldr r0, [sp, #0xc]
	ldrb r0, [r0]
	bl sub_803C124
	str r0, [sp, #8]
	ldr r0, [sp, #0x1c]
	lsrs r1, r0, #0x16
	ldr r0, [sp, #0xc]
	ldrb r0, [r0, #1]
	bl sub_803C124
	adds r1, r0, #0
	ldr r0, [sp, #8]
	muls r0, r1
	str r0, [r4, #0x58]
	ldr r2, [sp, #0x10]
	adds r1, r0, #0
	ldr r2, [r2]
	movs r0, #1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x16
	lsls r3, r0, #8
	cmp r2, r3
	bhi _0801125C
	movs r0, #0
_0801125C
	str r0, [r7, #4]
	cmp r0, #0
	beq _0801126A
	b _08011266
_08011264
	b _08011296
_08011266
	lsls r0, r1, #1
	str r0, [r4, #0x58]
_0801126A
	ldrb r0, [r6, #0xe]
	cmp r0, #0xff
	bne _08011276
	movs r0, #0
	strb r0, [r6, #0xe]
	b _08011294
_08011276
	movs r2, #1
	lsls r2, r0
	ldr r1, [sp, #0x20]
	adds r0, #1
	ldr r1, [r1, #0x20]
	lsls r0, r0, #0x18
	orrs r1, r2
	ldr r2, [sp, #0x20]
	lsrs r0, r0, #0x18
	str r1, [r2, #0x20]
	strb r0, [r6, #0xe]
	cmp r0, #0xb
	blo _08011294
	movs r0, #0
	strb r0, [r6, #0xe]
_08011294
	movs r0, #1
_08011296
	ldr r1, [r7, #0xc]
	cmp r1, #0
	beq _080112B4
	ldr r0, _08011390 ;@ =gUnknown_03003E98
	ldr r0, [r0]
	bl sub_8004674
	adds r1, r4, #0
	adds r1, #0xff
	adds r1, #0x4d
	bl sub_80108DA
	movs r0, #0
	str r0, [r7, #0xc]
	b _080112B8
_080112B4
	cmp r0, #0
	beq _08011338
_080112B8
	ldr r1, [sp, #0x20]
	ldr r0, [r1, #0x24]
	ldrb r1, [r6, #0xe]
	lsls r3, r1, #1
	adds r1, r3, r1
	lsls r1, r1, #0xb
	adds r6, r0, r1
	ldrb r0, [r5, #4]
	movs r1, #0x65
	lsls r1, r1, #4
	lsls r3, r0, #1
	adds r0, r3, r0
	lsls r0, r0, #2
	adds r0, r0, r4
	adds r0, r0, r1
	movs r1, #0x17
	lsls r1, r1, #8
	str r0, [sp, #0x10]
	ldr r0, [r7, #8]
	adds r1, r4, r1
	str r1, [sp, #0x18]
	movs r1, #0xd3
	lsls r1, r1, #2
	adds r1, r4, r1
	str r1, [sp, #0x14]
	movs r1, #0x71
	lsls r1, r1, #4
	adds r7, r4, r1
	cmp r0, #0
	beq _0801133A
	adds r1, r6, #0
	adds r0, r4, #0
	bl sub_803E204
	movs r0, #1
	add r3, sp, #0
	strb r0, [r3, #0xc]
	strb r0, [r3, #0xd]
	ldrb r0, [r5, #4]
	ldr r1, [sp, #0x14]
	adds r2, r7, #0
	lsls r3, r0, #1
	adds r0, r3, r0
	lsls r0, r0, #2
	movs r3, #0x19
	lsls r3, r3, #6
	adds r0, r0, r4
	adds r0, r0, r3
	ldr r0, [r0, #0x10]
	str r2, [sp, #8]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1d
	str r0, [sp]
	ldr r0, [sp, #0x10]
	str r1, [sp, #4]
	ldr r0, [r0]
	ldr r1, [sp, #0x18]
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x16
	adds r0, r6, #0
	add r2, sp, #0xc
	ldr r1, [r1, #0x14]
	bl sub_803E210
_08011338
	b _0801135E
_0801133A
	ldr r0, [sp, #0x10]
	ldr r2, _0801138C ;@ =gUnknown_0804AE80
	ldr r3, [r0]
	str r7, [sp, #8]
	lsls r0, r3, #0x1d
	lsrs r0, r0, #0x1d
	lsls r1, r0, #1
	adds r2, r1, r2
	ldr r1, [sp, #0x14]
	str r0, [sp]
	str r1, [sp, #4]
	ldr r1, [sp, #0x18]
	lsls r0, r3, #0x10
	lsrs r3, r0, #0x16
	adds r0, r6, #0
	ldr r1, [r1, #0x14]
	bl sub_803E210
_0801135E
	adds r0, r4, #0
	bl sub_8010F90
	adds r0, r4, #0
	bl sub_8010F10
	bl sub_8008160
	ldr r0, _08011384 ;@ =gUnknown_030033F4
	ldr r0, [r0]
	cmp r0, #0
	bne _0801137C
	adds r0, r4, #0
	bl sub_8010B8A
_0801137C
	movs r0, #1
	b _08011198
	ALIGN
_08011380 DCDU 0x0001FEEF
_08011384 DCDU gUnknown_030033F4
_08011388 DCDU 0x0000064C
_0801138C DCDU gUnknown_0804AE80
_08011390 DCDU gUnknown_03003E98
	END