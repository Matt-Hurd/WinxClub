    INCLUDE asm/macros.inc
    AREA text, CODE

	IMPORT gUnknown_03003EA4
	IMPORT gUnknown_08050410
	IMPORT sub_8001B80
	IMPORT sub_803C04C

	thumb_func_start sub_8014EB8
sub_8014EB8 ;@ 0x08014EB8
	movs r3, #0
	NEGS r0, r2
	cmp r1, #0
	push {r4, r5}
	bge _08014ED0
	NEGS r1, r1
	cmp r2, #0
	ble _08014ECC
	movs r3, #1
	b _08014EDC
_08014ECC
	adds r2, r0, #0
	b _08014EDC
_08014ED0
	cmp r2, #0
	bge _08014EDC
	adds r2, r0, #0
	cmp r1, #0
	ble _08014EDC
	movs r3, #1
_08014EDC
	asrs r0, r1, #0x10
	asrs r4, r2, #0x10
	adds r5, r0, #0
	lsls r2, r2, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsrs r2, r2, #0x10
	muls r5, r4
	muls r4, r1
	muls r1, r2
	muls r0, r2
	lsls r2, r5, #0x10
	adds r0, r2, r0
	adds r0, r0, r4
	asrs r1, r1, #0x10
	adds r0, r0, r1
	cmp r3, #0
	beq _08014F02
	NEGS r0, r0
_08014F02
	pop {r4, r5}
	bx lr
_08014F06
	push {r4, r5, r6, r7, lr}
	ldr r1, [r0, #0x28]
	adds r4, r0, #0
	ldr r0, [r0, #0x20]
	ldr r3, [r4, #0x24]
	subs r2, r1, r0
	ldr r1, [r4, #0x2c]
	adds r6, r2, #0
	subs r7, r1, r3
	ldr r1, [r4, #0x30]
	sub sp, #0xc
	subs r1, r1, r0
	adds r0, r4, #0
	bl sub_8014EB8
	adds r5, r0, #0
	ldr r0, [r4, #0x24]
	ldr r1, [r4, #0x2c]
	subs r2, r1, r0
	ldr r1, [r4, #0x34]
	subs r1, r1, r0
	adds r0, r4, #0
	bl sub_8014EB8
	adds r5, r5, r0
	adds r2, r6, #0
	adds r1, r6, #0
	adds r0, r4, #0
	bl sub_8014EB8
	str r0, [sp, #4]
	adds r2, r7, #0
	adds r1, r7, #0
	adds r0, r4, #0
	bl sub_8014EB8
	ldr r1, [sp, #4]
	adds r0, r1, r0
	adds r1, r4, #0
	adds r1, #0xc0
	str r1, [sp, #8]
	cmp r5, #0
	ble _08014FB2
	cmp r5, r0
	bge _08014FB2
	lsls r1, r5, #4
	asrs r0, r0, #6
	bl sub_803C04C
	adds r2, r0, #0
	muls r2, r6
	ldr r1, [r4, #0x20]
	asrs r2, r2, #0xa
	adds r1, r1, r2
	ldr r2, [r4, #0x24]
	muls r0, r7
	asrs r0, r0, #0xa
	adds r0, r2, r0
	ldr r2, [r4, #0x30]
	subs r1, r1, r2
	ldr r2, [r4, #0x34]
	subs r5, r0, r2
	adds r2, r1, #0
	adds r0, r4, #0
	bl sub_8014EB8
	adds r6, r0, #0
	adds r2, r5, #0
	adds r1, r5, #0
	adds r0, r4, #0
	bl sub_8014EB8
	ldr r1, [sp, #8]
	adds r5, r6, r0
	ldr r1, [r1, #0x20]
	adds r2, r1, #0
	adds r0, r4, #0
	bl sub_8014EB8
	cmp r5, r0
	bgt _08015010
	movs r0, #1
_08014FAA
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
_08014FB2
	ldr r0, [r4, #0x28]
	ldr r1, [r4, #0x30]
	subs r1, r0, r1
	ldr r0, [r4, #0x2c]
	ldr r2, [r4, #0x34]
	subs r5, r0, r2
	adds r2, r1, #0
	adds r0, r4, #0
	bl sub_8014EB8
	adds r6, r0, #0
	adds r2, r5, #0
	adds r1, r5, #0
	adds r0, r4, #0
	bl sub_8014EB8
	adds r5, r6, r0
	ldr r0, [r4, #0x20]
	ldr r1, [r4, #0x30]
	subs r1, r0, r1
	ldr r0, [r4, #0x24]
	ldr r2, [r4, #0x34]
	subs r6, r0, r2
	adds r2, r1, #0
	adds r0, r4, #0
	bl sub_8014EB8
	adds r7, r0, #0
	adds r2, r6, #0
	adds r1, r6, #0
	adds r0, r4, #0
	bl sub_8014EB8
	adds r0, r7, r0
	cmp r0, r5
	bge _08014FFC
	adds r5, r0, #0
_08014FFC
	ldr r1, [sp, #8]
	ldr r1, [r1, #0x20]
	adds r2, r1, #0
	adds r0, r4, #0
	bl sub_8014EB8
	cmp r5, r0
	bge _08015010
	movs r0, #1
	b _08014FAA
_08015010
	movs r0, #0
	b _08014FAA

	thumb_func_start sub_8015014
sub_8015014 ;@ 0x08015014
	lsls r3, r1, #2
	adds r1, r3, r1
	ldr r2, _08015374 ;@ =gUnknown_08050410
	lsls r1, r1, #2
	push {r4, r5, r6, r7}
	ldr r3, [r2, r1]
	adds r1, r1, r2
	adds r6, r1, #4
	ldrb r7, [r1, #0x10]
	adds r2, r0, #0
	adds r2, #0x30
	ldm r6!, {r4, r5, r6}
	strb r7, [r2, #8]
	ldrb r1, [r1, #0x11]
	strb r1, [r2, #9]
	ldr r1, [r0, #0x18]
	ldr r2, [r0, #0x1c]
	adds r3, r1, r3
	adds r1, r1, r5
	adds r4, r2, r4
	lsls r1, r1, #0x10
	lsls r4, r4, #0x10
	adds r2, r2, r6
	lsls r3, r3, #0x10
	lsls r2, r2, #0x10
	str r1, [r0, #0x28]
	str r2, [r0, #0x2c]
	str r3, [r0, #0x20]
	str r4, [r0, #0x24]
	ldr r1, [r0, #0x10]
	str r1, [r0, #0x30]
	ldr r1, [r0, #0x14]
	str r1, [r0, #0x34]
	pop {r4, r5, r6, r7}
	b _08014F06

	non_word_aligned_thumb_func_start sub_801505A
sub_801505A ;@ 0x0801505A
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0xc0
	ldr r2, [r5, #0x20]
	movs r3, #1
	lsls r3, r3, #0x12
	ldr r0, [r0, #0x10]
	adds r1, r2, r3
	subs r7, r0, r1
	ldr r6, [r4, #0x14]
	adds r0, r0, r2
	adds r2, r6, r2
	subs r1, r6, r1
	lsrs r6, r7, #0x10
	ldr r7, [r4, #8]
	adds r0, r0, r3
	lsrs r0, r0, #0x10
	adds r2, r2, r3
	lsrs r3, r2, #0x10
	asrs r0, r7
	adds r2, r0, #0
	ldr r0, [r4, #0xc]
	lsrs r6, r7
	lsrs r1, r1, #0x10
	lsrs r1, r0
	adds r7, r1, #0
	sub sp, #0x2c
	asrs r3, r0
	subs r0, r3, r7
	subs r2, r2, r6
	adds r2, #1
	adds r0, #1
	str r0, [sp, #0x10]
	str r2, [sp, #0x14]
	str r6, [sp, #0x1c]
	str r7, [sp, #0x18]
	ldr r1, [r4]
	str r1, [sp, #0x28]
	cmp r1, r6
	bgt _080150BC
	adds r1, r6, #0
	ldr r0, [sp, #0x28]
	bl sub_803C04C
	ldr r1, [sp, #0x28]
	muls r1, r0
	subs r6, r6, r1
	b _080150D0
_080150BC
	cmp r6, #0
	bge _080150D0
	adds r1, r6, #0
	ldr r0, [sp, #0x28]
	bl sub_803C04C
	ldr r1, [sp, #0x28]
	muls r0, r1
	subs r0, r6, r0
	adds r6, r1, r0
_080150D0
	ldr r1, [r4, #4]
	str r1, [sp, #0x24]
	cmp r1, r7
	bgt _080150E8
	adds r1, r7, #0
	ldr r0, [sp, #0x24]
	bl sub_803C04C
	ldr r1, [sp, #0x24]
	muls r1, r0
	subs r7, r7, r1
	b _080150FC
_080150E8
	cmp r7, #0
	bge _080150FC
	adds r1, r7, #0
	ldr r0, [sp, #0x24]
	bl sub_803C04C
	ldr r1, [sp, #0x24]
	muls r0, r1
	subs r0, r7, r0
	adds r7, r1, r0
_080150FC
	ldr r0, _08015378 ;@ =gUnknown_03003EA4
	movs r1, #0x13
	ldr r0, [r0]
	lsls r1, r1, #7
	adds r0, r0, r1
	ldr r0, [r0, #0x20]
	movs r2, #1
	movs r1, #0
	ldr r0, [r0, #0x50]
	bl sub_8001B80
	ldr r0, [r0, #0x10]
	ldr r1, [r4]
	adds r3, r0, r6
	adds r2, r1, #0
	muls r2, r7
	adds r6, r2, r3
	adds r3, r1, r0
	adds r2, r2, r3
	str r2, [sp, #8]
	str r6, [sp, #0xc]
	ldr r2, [r4, #4]
	muls r1, r2
	adds r2, r1, r0
	str r2, [sp, #4]
	ldr r0, [r4, #8]
	ldr r1, [sp, #0x1c]
	lsls r1, r0
	str r1, [sp, #0x1c]
	ldr r0, [r4, #0xc]
	ldr r1, [sp, #0x18]
	lsls r1, r0
	str r1, [r4, #0x1c]
	ldr r0, [sp, #0x10]
	str r0, [sp]
	cmp r0, #0
	ble _0801522A
	adds r0, r4, #0
	adds r0, #0x30
	str r0, [sp, #0x20]
_0801514C
	ldr r0, [sp, #0x1c]
	ldr r6, [sp, #0xc]
	str r0, [r4, #0x18]
	ldr r7, [sp, #0x14]
	cmp r7, #0
	ble _080151EC
_08015158
	ldrb r1, [r6]
	cmp r1, #0
	beq _080151CE
	cmp r1, #0x1a
	bhs _080151CE
	adds r0, r4, #0
	bl sub_8015014
	cmp r0, #0
	beq _080151CE
	ldr r1, [r5, #0x1c]
	ldr r0, [r4, #0x20]
	lsls r3, r1, #2
	adds r1, r3, r1
	lsls r1, r1, #2
	adds r1, r1, r4
	str r0, [r1, #0x3c]
	ldr r1, [r5, #0x1c]
	ldr r0, [r4, #0x24]
	lsls r3, r1, #2
	adds r1, r3, r1
	lsls r1, r1, #2
	adds r1, r1, r4
	str r0, [r1, #0x40]
	ldr r1, [r5, #0x1c]
	ldr r0, [r4, #0x28]
	lsls r3, r1, #2
	adds r1, r3, r1
	lsls r1, r1, #2
	adds r1, r1, r4
	str r0, [r1, #0x44]
	ldr r1, [r5, #0x1c]
	ldr r0, [r4, #0x2c]
	lsls r3, r1, #2
	adds r1, r3, r1
	lsls r1, r1, #2
	adds r1, r1, r4
	str r0, [r1, #0x48]
	ldr r0, [sp, #0x20]
	ldr r1, [r5, #0x1c]
	ldrb r0, [r0, #8]
	lsls r3, r1, #2
	adds r1, r3, r1
	lsls r1, r1, #2
	adds r1, r1, r4
	adds r1, #0x40
	strb r0, [r1, #0xc]
	ldr r0, [sp, #0x20]
	ldr r1, [r5, #0x1c]
	ldrb r0, [r0, #9]
	lsls r3, r1, #2
	adds r1, r3, r1
	lsls r1, r1, #2
	adds r1, r1, r4
	adds r1, #0x40
	strb r0, [r1, #0xd]
	ldr r0, [r5, #0x1c]
	adds r0, #1
	str r0, [r5, #0x1c]
_080151CE
	ldr r2, [r4, #8]
	movs r1, #1
	ldr r0, [r4, #0x18]
	lsls r1, r2
	adds r0, r0, r1
	str r0, [r4, #0x18]
	ldr r0, [sp, #8]
	adds r6, #1
	cmp r6, r0
	blo _080151E6
	ldr r0, [r4]
	subs r6, r6, r0
_080151E6
	subs r7, #1
	cmp r7, #0
	bgt _08015158
_080151EC
	ldr r0, [r4]
	ldr r1, [sp, #0xc]
	movs r2, #1
	adds r1, r0, r1
	str r1, [sp, #0xc]
	ldr r1, [sp, #8]
	adds r1, r0, r1
	str r1, [sp, #8]
	ldr r3, [r4, #8]
	ldr r1, [r4, #0x1c]
	lsls r2, r3
	adds r1, r1, r2
	str r1, [r4, #0x1c]
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #4]
	cmp r1, r2
	blo _0801521E
	ldr r1, [r4, #4]
	muls r0, r1
	ldr r1, [sp, #0xc]
	subs r1, r1, r0
	str r1, [sp, #0xc]
	ldr r1, [sp, #8]
	subs r0, r1, r0
	str r0, [sp, #8]
_0801521E
	ldr r0, [sp]
	subs r0, #1
	str r0, [sp]
	cmp r0, #0
	bgt _0801514C
	b _0801522C
_0801522A
	b _0801522C
_0801522C
	ldr r0, [r5, #0x1c]
	cmp r0, #0
	beq _0801523C
	movs r0, #1
_08015234
	add sp, #0x2c
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
_0801523C
	movs r0, #0
	b _08015234

	thumb_func_start sub_8015240
sub_8015240 ;@ 0x08015240
	push {r4, r5, r6, r7, lr}
	ldr r2, [r0, #0x10]
	adds r6, r0, #0
	adds r0, #0xc0
	ldr r4, [r0, #0x20]
	movs r5, #1
	lsls r5, r5, #0x12
	adds r3, r4, r5
	subs r0, r2, r3
	adds r2, r2, r4
	ldr r7, [r6, #0x14]
	adds r2, r2, r5
	adds r4, r7, r4
	adds r4, r4, r5
	ldr r5, [r1]
	subs r3, r7, r3
	cmp r5, #0
	sub sp, #0xc
	ble _0801526A
	adds r2, r5, r2
	b _0801526C
_0801526A
	adds r0, r5, r0
_0801526C
	ldr r1, [r1, #4]
	cmp r1, #0
	ble _08015276
	adds r4, r1, r4
	b _08015278
_08015276
	adds r3, r1, r3
_08015278
	ldr r5, [r6, #8]
	lsrs r2, r2, #0x10
	asrs r2, r5
	lsrs r1, r3, #0x10
	adds r3, r2, #0
	ldr r2, [r6, #0xc]
	lsrs r0, r0, #0x10
	lsrs r4, r4, #0x10
	asrs r4, r2
	lsrs r0, r5
	adds r7, r4, #0
	lsrs r1, r2
	adds r5, r1, #0
	adds r4, r0, #0
	subs r0, r3, r4
	subs r1, r7, r5
	adds r1, #1
	adds r0, #1
	str r0, [sp, #8]
	str r1, [sp, #4]
	ldr r7, [r6]
	cmp r7, r4
	bgt _080152B4
	adds r1, r4, #0
	adds r0, r7, #0
	bl sub_803C04C
	muls r7, r0
	subs r4, r4, r7
	b _080152CC
_080152B4
	cmp r4, #0
	bge _080152CC
	adds r1, r4, #0
	adds r0, r7, #0
	bl sub_803C04C
	muls r0, r7
	subs r0, r4, r0
	adds r4, r7, r0
	cmp r7, r4
	bne _080152CC
	movs r4, #0
_080152CC
	ldr r7, [r6, #4]
	cmp r7, r5
	bgt _080152E0
	adds r1, r5, #0
	adds r0, r7, #0
	bl sub_803C04C
	muls r7, r0
	subs r5, r5, r7
	b _080152F8
_080152E0
	cmp r4, #0
	bge _080152F8
	adds r1, r5, #0
	adds r0, r7, #0
	bl sub_803C04C
	muls r0, r7
	subs r0, r5, r0
	adds r5, r7, r0
	cmp r7, r5
	bne _080152F8
	movs r5, #0
_080152F8
	ldr r0, _08015378 ;@ =gUnknown_03003EA4
	movs r1, #0x13
	ldr r0, [r0]
	lsls r1, r1, #7
	adds r0, r0, r1
	ldr r0, [r0, #0x20]
	movs r2, #1
	movs r1, #0
	ldr r0, [r0, #0x50]
	bl sub_8001B80
	ldr r3, [r0, #0x10]
	ldr r0, [r6]
	adds r1, r3, r4
	adds r2, r0, #0
	muls r2, r5
	adds r1, r2, r1
	adds r4, r0, r3
	adds r2, r2, r4
	adds r4, r3, #0
	ldr r5, [r6, #4]
	adds r3, r0, #0
	muls r3, r5
	ldr r5, [sp, #4]
	adds r4, r3, r4
	cmp r5, #0
	mov ip, r5
	ble _08015370
_08015330
	ldr r6, [sp, #8]
	adds r5, r1, #0
	cmp r6, #0
	ble _0801535A
_08015338
	ldrb r7, [r5]
	cmp r7, #0
	beq _0801534C
	cmp r7, #0x1a
	bhs _0801534C
	movs r0, #1
_08015344
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
_0801534C
	adds r5, #1
	cmp r5, r2
	blo _08015354
	subs r5, r5, r0
_08015354
	subs r6, #1
	cmp r6, #0
	bgt _08015338
_0801535A
	adds r1, r0, r1
	adds r2, r0, r2
	cmp r1, r4
	blo _08015366
	subs r1, r1, r3
	subs r2, r2, r3
_08015366
	mov r5, ip
	subs r5, #1
	mov ip, r5
	cmp r5, #0
	bgt _08015330
_08015370
	movs r0, #0
	b _08015344
	ALIGN
_08015374 DCDU gUnknown_08050410
_08015378 DCDU gUnknown_03003EA4
