    INCLUDE asm/macros.inc
    AREA text, CODE

	IMPORT gUnknown_030031EE
	IMPORT gUnknown_030031FE
	IMPORT gUnknown_03003EA0
	IMPORT gUnknown_03003EB8
	IMPORT sub_800116A
	IMPORT sub_80015F2
	IMPORT sub_8005106
	IMPORT sub_800BBF4
	IMPORT sub_80133A0
	IMPORT sub_8013E64
	IMPORT sub_8013F66
	IMPORT sub_803B8CC
	IMPORT sub_803B8CE
	IMPORT sub_803DA9C
	IMPORT sub_803EF2C
	IMPORT sub_803F3E8
	IMPORT sub_803F55C
	IMPORT sub_803F5FC
	IMPORT sub_803F774
	IMPORT sub_803F8BC
	IMPORT sub_803FE80
	IMPORT sub_803FF64
	IMPORT sub_8040034
	IMPORT sub_8040104
	IMPORT sub_80401E4

	thumb_func_start sub_8014738
sub_8014738 ;@ 0x08014738
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	strh r1, [r0, #0x18]
	strh r2, [r0, #0x1a]
	str r2, [sp, #0x10]
	add r2, sp, #0x14
	add r1, sp, #0x18
	adds r7, r0, #0
	bl sub_803F774
	adds r6, r7, #0
	adds r6, #0x60
	ldrb r0, [r6, #0xe]
	movs r5, #0
	cmp r0, #0
	bls _080147F2
_08014758
	movs r3, #0x18
	ldrsh r0, [r7, r3]
	movs r4, #0
	str r0, [sp, #0xc]
	ldrb r0, [r6, #0xf]
	cmp r0, #0
	bls _080147D8
_08014766
	add r3, sp, #0
	ldrb r0, [r3, #0x18]
	cmp r4, r0
	bhs _080147B0
	ldrb r0, [r3, #0x14]
	cmp r5, r0
	bhs _080147B0
	ldr r0, [sp, #0xc]
	strh r0, [r3, #4]
	ldr r0, [sp, #0x10]
	strh r0, [r3, #6]
	ldrb r0, [r6, #0xf]
	ldr r1, [r7, #0x54]
	muls r0, r5
	adds r0, r0, r4
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	add r1, sp, #4
	bl sub_8040034
	ldrb r0, [r6, #0xf]
	ldr r1, [r7, #0x54]
	muls r0, r5
	adds r0, r0, r4
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	add r1, sp, #8
	bl sub_803F8BC
	add r3, sp, #0
	ldrh r0, [r3, #8]
	ldr r1, [sp, #0xc]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #0xc]
	b _080147CC
_080147B0
	movs r0, #0xef
	add r3, sp, #0
	strh r0, [r3, #4]
	movs r0, #0x9f
	strh r0, [r3, #6]
	ldrb r0, [r6, #0xf]
	ldr r1, [r7, #0x54]
	muls r0, r5
	adds r0, r0, r4
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	add r1, sp, #4
	bl sub_8040034
_080147CC
	adds r4, #1
	ldrb r0, [r6, #0xf]
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	cmp r0, r4
	bhi _08014766
_080147D8
	add r3, sp, #0
	ldrh r0, [r3, #0xa]
	ldr r1, [sp, #0x10]
	adds r5, #1
	adds r0, r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #0x10]
	ldrb r0, [r6, #0xe]
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r0, r5
	bhi _08014758
_080147F2
	add sp, #0x1c
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_80147FA
sub_80147FA ;@ 0x080147FA
	adds r2, r1, #0
	adds r1, r0, #0
	adds r1, #0x60
	push {r4, r5, r6, r7}
	strb r2, [r1, #0xc]
	ldrb r2, [r1, #0xe]
	movs r4, #0
	cmp r2, #0
	bls _08014860
_0801480C
	ldrb r3, [r1, #0xf]
	movs r2, #0
	cmp r3, #0
	bls _08014854
_08014814
	ldrb r3, [r1, #0xf]
	ldr r5, [r0, #0x54]
	muls r3, r4
	adds r3, r3, r2
	lsls r3, r3, #2
	ldr r5, [r5, r3]
	ldrb r6, [r5, #5]
	ldrb r3, [r1, #0xc]
	cmp r6, r3
	beq _08014848
	ldrh r6, [r5, #0x2a]
	movs r7, #3
	lsls r7, r7, #0xa
	bics r6, r7
	lsls r7, r3, #0x18
	lsrs r7, r7, #0x1e
	lsls r7, r7, #0xa
	orrs r6, r7
	strh r6, [r5, #0x2a]
	strb r3, [r5, #5]
	ldr r3, [r5]
	lsls r6, r3, #0x16
	bmi _08014848
	movs r6, #0x80
	orrs r3, r6
	str r3, [r5]
_08014848
	adds r2, #1
	ldrb r3, [r1, #0xf]
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	cmp r3, r2
	bhi _08014814
_08014854
	adds r4, #1
	ldrb r2, [r1, #0xe]
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	cmp r2, r4
	bhi _0801480C
_08014860
	pop {r4, r5, r6, r7}
	bx lr

	thumb_func_start sub_8014864
sub_8014864 ;@ 0x08014864
	adds r2, r0, #0
	adds r2, #0x60
	push {r4, r5, r6, r7}
	strb r1, [r2, #0xd]
	ldrb r1, [r2, #0xe]
	movs r4, #0
	cmp r1, #0
	bls _080148BA
	movs r7, #3
	lsls r7, r7, #0xa
_08014878
	ldrb r1, [r2, #0xf]
	movs r3, #0
	cmp r1, #0
	bls _080148AE
_08014880
	ldrb r1, [r2, #0xf]
	ldr r5, [r0, #0x54]
	muls r1, r4
	adds r1, r1, r3
	lsls r1, r1, #2
	ldr r1, [r5, r1]
	ldrb r5, [r2, #0xd]
	ldrh r6, [r1, #0x26]
	adds r3, #1
	lsls r5, r5, #0x1e
	lsrs r5, r5, #0x14
	bics r6, r7
	orrs r5, r6
	strh r5, [r1, #0x26]
	ldr r5, [r1]
	movs r6, #0x80
	orrs r5, r6
	str r5, [r1]
	ldrb r1, [r2, #0xf]
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	cmp r1, r3
	bhi _08014880
_080148AE
	adds r4, #1
	ldrb r1, [r2, #0xe]
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	cmp r1, r4
	bhi _08014878
_080148BA
	pop {r4, r5, r6, r7}
	bx lr

	non_word_aligned_thumb_func_start sub_80148BE
sub_80148BE ;@ 0x080148BE
	push {r4, r5, r6, r7, lr}
	lsls r6, r1, #0x10
	asrs r6, r6, #0x10
	lsls r5, r2, #0x10
	adds r4, r0, #0
	asrs r5, r5, #0x10
	sub sp, #0x5c
	bl sub_8040104
	ldr r1, [r4, #0x54]
	cmp r1, #0
	beq _080148E0
	ldr r2, [r4, #0x58]
	ldr r3, [r4, #0x5c]
	adds r0, r4, #0
	bl sub_803F5FC
_080148E0
	ldr r1, [r4, #0x60]
	cmp r1, #0
	beq _080148F0
	ldr r2, [r4, #0x64]
	ldr r3, [r4, #0x68]
	adds r0, r4, #0
	bl sub_803F5FC
_080148F0
	movs r7, #0
	str r7, [r4, #0x54]
	movs r0, #0
	lsls r1, r5, #0x1d
	str r7, [r4, #0x64]
	beq _08014906
	lsrs r1, r5, #3
	lsls r1, r1, #3
	adds r1, #8
	lsls r5, r1, #0x10
	asrs r5, r5, #0x10
_08014906
	lsls r1, r6, #0x1d
	beq _08014914
	lsrs r1, r6, #3
	lsls r1, r1, #3
	adds r1, #8
	lsls r6, r1, #0x10
	asrs r6, r6, #0x10
_08014914
	strh r5, [r4, #0x28]
	strh r6, [r4, #0x2a]
	cmp r5, #0
	ble _0801494E
	add r3, sp, #8
_0801491E
	cmp r5, #0x20
	blt _08014928
	movs r1, #2
	strb r1, [r3, r0]
	b _08014934
_08014928
	cmp r5, #8
	ble _08014932
	movs r1, #1
	strb r1, [r3, r0]
	b _08014934
_08014932
	strb r7, [r3, r0]
_08014934
	adds r1, r0, #1
	lsls r1, r1, #0x18
	adds r2, r0, #0
	ldrb r2, [r3, r2]
	lsrs r1, r1, #0x18
	adds r0, r1, #0
	movs r1, #8
	lsls r1, r2
	subs r1, r5, r1
	lsls r5, r1, #0x10
	asrs r5, r5, #0x10
	cmp r5, #0
	bgt _0801491E
_0801494E
	adds r5, r4, #0
	adds r5, #0x60
	strb r0, [r5, #0xe]
	movs r0, #0
	cmp r6, #0
	ble _0801498C
	add r3, sp, #0x28
_0801495C
	cmp r6, #0x20
	blt _08014966
	movs r1, #2
	strb r1, [r3, r0]
	b _08014972
_08014966
	cmp r6, #8
	ble _08014970
	movs r1, #1
	strb r1, [r3, r0]
	b _08014972
_08014970
	strb r7, [r3, r0]
_08014972
	adds r1, r0, #1
	lsls r1, r1, #0x18
	adds r2, r0, #0
	ldrb r2, [r3, r2]
	lsrs r1, r1, #0x18
	adds r0, r1, #0
	movs r1, #8
	lsls r1, r2
	subs r1, r6, r1
	lsls r6, r1, #0x10
	asrs r6, r6, #0x10
	cmp r6, #0
	bgt _0801495C
_0801498C
	strb r0, [r5, #0xf]
	bl sub_8005106
	adds r1, r0, #0
	ldrb r0, [r5, #0xe]
	ldrb r2, [r5, #0xf]
	muls r0, r2
	lsls r0, r0, #2
	adds r3, r7, #0
	movs r2, #0
	bl sub_803DA9C
	str r0, [r4, #0x54]
	bl sub_8005106
	adds r1, r0, #0
	ldrb r0, [r5, #0xe]
	ldrb r2, [r5, #0xf]
	muls r0, r2
	lsls r3, r0, #2
	adds r0, r3, r0
	lsls r0, r0, #2
	adds r3, r7, #0
	movs r2, #0
	bl sub_803DA9C
	str r0, [r4, #0x58]
	bl sub_8005106
	adds r1, r0, #0
	ldrb r0, [r5, #0xe]
	ldrb r2, [r5, #0xf]
	muls r0, r2
	lsls r0, r0, #3
	adds r3, r7, #0
	movs r2, #0
	bl sub_803DA9C
	movs r6, #0
	str r0, [r4, #0x5c]
	str r6, [sp, #0x4c]
	ldrb r0, [r5, #0xe]
	cmp r0, #0
	bls _08014AC8
	adds r1, r4, #0
	adds r1, #0x70
	str r1, [sp, #0x58]
_080149EA
	movs r2, #0
	str r2, [sp, #0x48]
	ldrb r0, [r5, #0xf]
	cmp r0, #0
	bls _08014ACA
_080149F4
	ldr r0, _08014DBC ;@ =gUnknown_03003EB8
	add r1, sp, #0x28
	ldr r0, [r0]
	ldr r2, [sp, #0x48]
	ldrb r3, [r1, r2]
	movs r1, #8
	adds r2, r1, #0
	lsls r2, r3
	mov r3, sp
	ldr r7, [sp, #0x4c]
	adds r3, r3, r1
	ldrb r3, [r3, r7]
	lsls r1, r3
	add r3, sp, #0
	strh r2, [r3, #4]
	strh r1, [r3, #6]
	lsls r2, r6, #2
	adds r2, r2, r6
	lsls r2, r2, #2
	ldr r1, [r4, #0x58]
	str r2, [sp, #0x54]
	adds r2, r1, r2
	ldr r1, [r4, #0x5c]
	lsls r3, r6, #3
	str r3, [sp, #0x50]
	adds r1, r1, r3
	add r3, sp, #4
	bl sub_80015F2
	ldr r0, _08014DBC ;@ =gUnknown_03003EB8
	ldr r0, [r0]
	bl sub_800116A
	ldr r1, [r4, #0x54]
	lsls r7, r6, #2
	str r0, [r1, r7]
	ldr r1, [r4, #0x58]
	ldr r2, [sp, #0x54]
	adds r2, r1, r2
	ldr r1, [r4, #0x5c]
	ldr r3, [sp, #0x50]
	adds r1, r1, r3
	bl sub_803FE80
	movs r0, #0xef
	add r3, sp, #0
	strh r0, [r3, #4]
	movs r0, #0x9f
	strh r0, [r3, #6]
	ldr r0, [r4, #0x54]
	add r1, sp, #4
	ldr r0, [r0, r7]
	bl sub_8040034
	ldr r0, [r4, #0x54]
	ldr r2, _08014DC0 ;@ =gUnknown_030031EE
	ldr r0, [r0, r7]
	ldr r1, [sp, #0x58]
	ldrb r1, [r1, #4]
	ldrb r1, [r2, r1]
	bl sub_803FF64
	ldr r0, [r4, #0x54]
	ldrb r1, [r5, #0xd]
	ldr r0, [r0, r7]
	movs r3, #3
	ldrh r2, [r0, #0x26]
	lsls r3, r3, #0xa
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x14
	bics r2, r3
	orrs r1, r2
	strh r1, [r0, #0x26]
	ldr r1, [r0]
	movs r2, #0x80
	orrs r1, r2
	str r1, [r0]
	ldr r0, [r4, #0x54]
	ldr r1, [r0, r7]
	ldrb r2, [r1, #5]
	ldrb r0, [r5, #0xc]
	cmp r2, r0
	beq _08014AB6
	ldrh r2, [r1, #0x2a]
	bics r2, r3
	lsls r3, r0, #0x18
	lsrs r3, r3, #0x1e
	lsls r3, r3, #0xa
	orrs r2, r3
	strh r2, [r1, #0x2a]
	strb r0, [r1, #5]
	ldr r0, [r1]
	lsls r2, r0, #0x16
	bmi _08014AB6
	movs r2, #0x80
	orrs r0, r2
	str r0, [r1]
_08014AB6
	ldr r0, [r4, #0x54]
	movs r1, #1
	ldr r0, [r0, r7]
	bl sub_80401E4
	adds r6, #1
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	b _08014ACC
_08014AC8
	b _08014AEE
_08014ACA
	b _08014ADC
_08014ACC
	ldr r2, [sp, #0x48]
	adds r2, #1
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	str r2, [sp, #0x48]
	ldrb r0, [r5, #0xf]
	cmp r0, r2
	bhi _080149F4
_08014ADC
	ldr r7, [sp, #0x4c]
	adds r7, #1
	lsls r7, r7, #0x18
	lsrs r7, r7, #0x18
	str r7, [sp, #0x4c]
	ldrb r0, [r5, #0xe]
	cmp r0, r7
	bls _08014AEE
	b _080149EA
_08014AEE
	ldr r0, [r4, #0x70]
	cmp r0, #0
	beq _08014AFA
	adds r0, r4, #0
	bl sub_803EF2C
_08014AFA
	add sp, #0x5c
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_8014B02
sub_8014B02 ;@ 0x08014B02
	push {r3, lr}
	ldr r2, [r0, #0x70]
	cmp r2, r1
	beq _08014B1A
	str r1, [r0, #0x70]
	cmp r1, #0
	beq _08014B20
	ldr r2, [r0, #0x54]
	cmp r2, #0
	beq _08014B20
	bl sub_803EF2C
_08014B1A
	add sp, #4
	pop {r3}
	bx r3
_08014B20
	cmp r1, #0
	bne _08014B1A
	ldr r1, [r0, #0x60]
	cmp r1, #0
	beq _08014B1A
	ldr r2, [r0, #0x64]
	ldr r3, [r0, #0x68]
	bl sub_803F5FC
	b _08014B1A

	thumb_func_start sub_8014B34
sub_8014B34 ;@ 0x08014B34
	push {r4, lr}
	lsls r3, r1, #0x1d
	beq _08014B48
	lsls r3, r1, #0x1d
	lsrs r3, r3, #0x1d
	movs r4, #8
	subs r3, r4, r3
	adds r1, r3, r1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
_08014B48
	ldr r3, [r0]
	ldr r4, [r3, #0x10]
	adds r3, r4, r3
	bl sub_803B8CE
	pop {r4}
	pop {r3}
	bx r3

	thumb_func_start sub_8014B58
sub_8014B58 ;@ 0x08014B58
	adds r1, r0, #0
	ldr r1, [r1, #0x54]
	movs r0, #1
	cmp r1, #0
	bne _08014B64
	movs r0, #0
_08014B64
	bx lr

	non_word_aligned_thumb_func_start sub_8014B66
sub_8014B66 ;@ 0x08014B66
	push {r3, lr}
	str r1, [r0, #0x40]
	ldr r1, [r0]
	ldr r2, [r1, #0x28]
	adds r2, r2, r1
	movs r1, #0x2e
	ldrb r1, [r1, r0]
	bl sub_803B8CC
	add sp, #4
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_8014B7E
sub_8014B7E ;@ 0x08014B7E
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	bl sub_803F55C
	adds r1, r5, #0
	adds r0, r4, #0
	bl sub_8013E64
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_8014B96
sub_8014B96 ;@ 0x08014B96
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	adds r4, r1, #0
	movs r1, #0
	adds r7, r0, #0
	movs r0, #0xff
	str r1, [sp, #0x1c]
	movs r1, #0xff
	movs r6, #0xff
	str r0, [sp, #0x14]
	str r0, [sp, #0x10]
	adds r0, r7, #0
	str r6, [sp, #8]
	str r1, [sp, #0xc]
	bl sub_803F55C
	adds r1, r4, #0
	adds r0, r7, #0
	bl sub_8013F66
	adds r0, r7, #0
	adds r0, #0x20
	str r0, [sp, #0x20]
	ldrb r0, [r0, #0xd]
	lsls r1, r0, #8
	orrs r1, r4
	adds r5, r1, #0
	bl sub_80133A0
	str r0, [sp, #4]
	movs r0, #0
	adds r4, r7, #0
	adds r4, #0x70
_08014BD8
	ldr r2, _08014DC4 ;@ =gUnknown_030031FE
	lsls r1, r0, #3
	ldrh r2, [r2, r1]
	mov ip, r2
	cmp r2, r5
	bne _08014BF0
	ldr r2, [r7, #0x40]
	cmp r2, #0
	bne _08014BF0
	adds r6, r0, #0
	str r2, [sp, #8]
	b _08014C1C
_08014BF0
	ldr r2, _08014DC4 ;@ =gUnknown_030031FE
	adds r2, r1, r2
	ldrh r3, [r2, #2]
	cmp r3, r5
	bne _08014C02
	adds r6, r0, #0
	movs r2, #1
	str r2, [sp, #8]
	b _08014C1C
_08014C02
	ldrh r3, [r2, #4]
	cmp r3, r5
	bne _08014C10
	adds r6, r0, #0
	movs r2, #2
	str r2, [sp, #8]
	b _08014C1C
_08014C10
	ldrh r2, [r2, #6]
	cmp r2, r5
	bne _08014C1C
	adds r6, r0, #0
	movs r2, #3
	str r2, [sp, #8]
_08014C1C
	ldr r3, _08014DC8 ;@ =0x0000FFFF
	cmp ip, r3
	bne _08014C42
	ldr r2, _08014DC4 ;@ =gUnknown_030031FE
	adds r2, r1, r2
	mov lr, r2
	ldrh r2, [r2, #2]
	cmp r2, r3
	bne _08014C42
	mov r2, lr
	ldrh r2, [r2, #4]
	cmp r2, r3
	bne _08014C42
	mov r2, lr
	ldrh r2, [r2, #6]
	cmp r2, r3
	bne _08014C42
	str r0, [sp, #0x14]
	b _08014C84
_08014C42
	cmp r6, #0xff
	bne _08014C84
	cmp ip, r3
	bne _08014C58
	ldr r2, [r7, #0x40]
	cmp r2, #0
	bne _08014C58
	movs r1, #0
	str r1, [sp, #0xc]
	str r0, [sp, #0x10]
	b _08014C84
_08014C58
	ldr r2, _08014DC4 ;@ =gUnknown_030031FE
	adds r1, r1, r2
	ldrh r2, [r1, #2]
	cmp r2, r3
	bne _08014C6A
	movs r1, #1
	str r1, [sp, #0xc]
	str r0, [sp, #0x10]
	b _08014C84
_08014C6A
	ldrh r2, [r1, #4]
	cmp r2, r3
	bne _08014C78
	movs r1, #2
	str r1, [sp, #0xc]
	str r0, [sp, #0x10]
	b _08014C84
_08014C78
	ldrh r1, [r1, #6]
	cmp r1, r3
	bne _08014C84
	movs r1, #3
	str r1, [sp, #0xc]
	str r0, [sp, #0x10]
_08014C84
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x10
	bhs _08014C94
	cmp r6, #0xff
	beq _08014BD8
	b _08014C98
_08014C94
	cmp r6, #0xff
	beq _08014CA0
_08014C98
	strb r6, [r4, #4]
	ldr r2, [sp, #8]
	strb r2, [r4, #5]
	b _08014D66
_08014CA0
	ldr r0, [sp, #0x10]
	ldr r6, _08014DCC ;@ =0x05000200
	cmp r0, #0xff
	beq _08014CE6
	ldr r0, [sp, #0x10]
	ldr r3, _08014DC4 ;@ =gUnknown_030031FE
	strb r0, [r4, #4]
	ldr r1, [sp, #0xc]
	lsls r0, r0, #3
	strb r1, [r4, #5]
	lsls r1, r1, #1
	adds r0, r0, r3
	strh r5, [r0, r1]
	ldr r0, [sp, #0x20]
	ldr r3, _08014DC0 ;@ =gUnknown_030031EE
	ldrb r1, [r0, #0xe]
	ldr r0, [sp, #4]
	ldrb r0, [r0, #0x18]
	ldr r2, [sp, #4]
	ldr r2, [r2, #0x10]
	muls r1, r0
	lsls r1, r1, #1
	adds r1, r1, r2
	ldrb r2, [r4, #5]
	muls r2, r0
	ldrb r0, [r4, #4]
	ldrb r0, [r3, r0]
	lsls r0, r0, #4
	adds r0, r2, r0
	lsls r0, r0, #1
	adds r0, r0, r6
	movs r2, #8
	bl sub_803F3E8
	b _08014D66
_08014CE6
	ldr r0, _08014DD0 ;@ =gUnknown_03003EA0
	movs r1, #1
	ldr r0, [r0]
	bl sub_800BBF4
	ldr r2, _08014DC0 ;@ =gUnknown_030031EE
	ldr r1, [sp, #0x14]
	strb r0, [r2, r1]
	ldr r0, [sp, #0x14]
	strb r0, [r4, #4]
	ldr r1, [r7, #0x40]
	movs r0, #1
	cmp r1, #0
	bne _08014D04
	movs r0, #0
_08014D04
	strb r0, [r4, #5]
	ldr r1, [sp, #4]
	ldrb r1, [r1, #0x18]
	cmp r1, #4
	bls _08014D34
	ldr r1, [sp, #0x14]
	ldr r3, _08014DC4 ;@ =gUnknown_030031FE
	lsls r1, r1, #3
	adds r1, r1, r3
	lsls r0, r0, #1
	strh r5, [r1, r0]
	ldrb r0, [r4, #5]
	lsls r0, r0, #1
	adds r0, r1, r0
	strh r5, [r0, #2]
	ldrb r0, [r4, #5]
	lsls r0, r0, #1
	adds r0, r1, r0
	strh r5, [r0, #4]
	ldrb r0, [r4, #5]
	lsls r0, r0, #1
	adds r0, r1, r0
	strh r5, [r0, #6]
	b _08014D40
_08014D34
	ldr r1, [sp, #0x14]
	ldr r3, _08014DC4 ;@ =gUnknown_030031FE
	lsls r1, r1, #3
	adds r1, r1, r3
	lsls r0, r0, #1
	strh r5, [r1, r0]
_08014D40
	ldr r0, [sp, #0x20]
	ldrb r0, [r0, #0xe]
	ldr r1, [sp, #4]
	ldrb r5, [r4, #4]
	ldrb r3, [r1, #0x18]
	ldr r1, [r1, #0x10]
	muls r0, r3
	lsls r0, r0, #1
	adds r1, r0, r1
	ldrb r0, [r4, #5]
	ldrb r2, [r2, r5]
	muls r0, r3
	lsls r2, r2, #4
	adds r0, r0, r2
	lsls r0, r0, #1
	adds r0, r0, r6
	lsls r2, r3, #1
	bl sub_803F3E8
_08014D66
	movs r1, #0
	adds r5, r7, #0
	adds r5, #0x60
	str r1, [sp, #0x18]
	ldrb r0, [r5, #0xe]
	cmp r0, #0
	bls _08014DB4
_08014D74
	ldrb r0, [r5, #0xf]
	movs r6, #0
	cmp r0, #0
	bls _08014DA4
_08014D7C
	ldr r0, [r7, #0x54]
	ldr r1, [sp, #0x1c]
	ldr r2, _08014DC0 ;@ =gUnknown_030031EE
	lsls r1, r1, #2
	ldr r0, [r0, r1]
	ldrb r1, [r4, #4]
	ldrb r1, [r2, r1]
	bl sub_803FF64
	ldr r1, [sp, #0x1c]
	adds r6, #1
	adds r1, #1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	str r1, [sp, #0x1c]
	ldrb r0, [r5, #0xf]
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	cmp r0, r6
	bhi _08014D7C
_08014DA4
	ldr r1, [sp, #0x18]
	adds r1, #1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	str r1, [sp, #0x18]
	ldrb r0, [r5, #0xe]
	cmp r0, r1
	bhi _08014D74
_08014DB4
	add sp, #0x24
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	ALIGN
_08014DBC DCDU gUnknown_03003EB8
_08014DC0 DCDU gUnknown_030031EE
_08014DC4 DCDU gUnknown_030031FE
_08014DC8 DCDU 0x0000FFFF
_08014DCC DCDU 0x05000200
_08014DD0 DCDU gUnknown_03003EA0
	END