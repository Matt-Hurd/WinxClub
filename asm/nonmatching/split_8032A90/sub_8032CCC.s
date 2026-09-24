	thumb_func_start sub_8032CCC
sub_8032CCC
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, [r0, #0x3c]
	sub sp, #0x24
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	beq %13
	movs r1, #0
	bl sub_80401E4
	b %14
13
	movs r1, #1
	bl sub_80401E4
14
	ldr r0, [r4, #0x44]
	movs r5, #0x29
	adds r0, #0x80
	ldr r0, [r0, #0x1c]
	lsls r5, r5, #5
	cmp r0, #0xf
	ldr r6, _08032E94
	beq %15
	cmp r0, #0x10
	bne %17
15
	ldr r0, [r6]
	adds r0, r0, r5
	ldrb r1, [r0]
	adds r1, #1
	strb r1, [r0]
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x10]
	adds r1, r2, r1
	bl __call_via_r1
	ldr r0, [r4, #0x4c]
	bl sub_803357C
16
	add sp, #0x24
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
17
	ldr r0, [r4, #0x34]
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x1d
	beq %21
	cmp r0, #1
	beq %22
	cmp r0, #2
	bne %16
	ldr r0, _08032EA4
	ldr r7, [r4, #4]
	ldr r0, [r0]
	ldr r2, [r7, #0x44]
	movs r1, #0
	mvns r1, r1
	cmp r2, #0
	beq %18
	bl sub_8000D5A
	ldr r0, [r0, #0x24]
	ldr r1, [r7, #0x44]
	subs r0, r1, r0
	asrs r1, r0, #3
18
	lsls r0, r1, #0x10
	ldr r1, [r4, #0x38]
	lsrs r0, r0, #0x10
	adds r1, #2
	cmp r0, r1
	ldr r0, [r4, #4]
	beq %26
	movs r2, #0
	bl sub_80007A0
	ldr r0, [r4, #4]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne %19
	bl sub_8000914
19
	ldr r1, [r4, #0x38]
	ldr r0, [r4, #0x3c]
	adds r1, #5
	movs r2, #0
	bl sub_80007A0
	ldr r0, [r4, #0x3c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne %20
	bl sub_8000914
20
	ldr r1, [r4]
	ldr r5, [r4, #0x44]
	ldr r2, [r1, #0x1c]
	adds r0, r4, #0
	adds r1, r2, r1
	bl __call_via_r1
	adds r3, r0, #0
	ldr r0, [r5]
	movs r2, #1
	ldr r1, [r0, #0x34]
	adds r6, r1, r0
	ldr r1, [r4, #0x4c]
	adds r0, r5, #0
	bl __call_via_r6
	ldr r4, _08032EA0
	movs r5, #0x49
	ldr r0, [r4]
	lsls r5, r5, #5
	adds r0, r5, r0
	bl sub_8028BE4
	cmp r0, #0
	beq %16
	ldr r0, [r4]
	adds r0, r5, r0
	bl sub_80268AC
	b %16
21
	ldr r0, [r4, #4]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne %16
	ldr r1, [r4, #0x38]
	adds r1, #1
	movs r2, #0
	bl sub_80007A0
	ldr r0, [r4, #4]
	bl sub_8000914
	ldr r1, [r4, #0x38]
	ldr r0, [r4, #0x3c]
	adds r1, #4
	movs r2, #0
	bl sub_80007A0
	ldr r0, [r4, #0x3c]
	bl sub_8000914
	movs r2, #7
	ldr r0, [r4, #0x34]
	lsls r2, r2, #8
	bics r0, r2
	adds r0, #0xff
	adds r0, #1
	str r0, [r4, #0x34]
	b %16
22
	b %23
23
	adds r7, r4, #0
	adds r7, #0x50
	ldrb r0, [r7, #4]
	cmp r0, #0
	bne %24
	ldr r0, [r4, #0x48]
	ldr r0, [r0, #0x2c]
	adds r0, #0x2c
	ldr r1, [r0]
	ldr r0, [r0, #4]
	str r1, [sp, #0xc]
	str r0, [sp, #0x10]
	b %25
24
	ldr r0, [r4, #0x44]
	ldr r0, [r0, #0x2c]
	adds r0, #0x2c
	ldr r1, [r0]
	ldr r0, [r0, #4]
	str r1, [sp, #0xc]
	str r0, [sp, #0x10]
25
	ldr r0, [sp, #0xc]
	ldr r1, [r4, #0x1c]
	subs r0, r0, r1
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x10]
	ldr r1, [r4, #0x20]
	subs r0, r0, r1
	adds r1, r4, #0
	adds r1, #0x1c
	str r0, [sp, #0x14]
	b %27
26
	b %35
27
	adds r6, r1, #0
	add r0, sp, #0xc
	bl sub_80187A0
	lsls r0, r0, #0x10
	asrs r1, r0, #0x1f
	movs r2, #0x10
	bl __16_ll_shift_l
	add r2, pc, #0x50
	ldm r2!, {r2, r3}
	bl __16_ll_sdiv
	adds r5, r0, #0
	beq %29
	ldr r0, [sp, #0x18]
	asrs r1, r0, #0x1f
	movs r2, #0x10
	bl __16_ll_shift_l
	str r0, [sp, #4]
	adds r0, r5, #0
	str r1, [sp, #8]
	asrs r1, r5, #0x1f
	str r1, [sp, #0x1c]
	str r5, [sp, #0x20]
	add r3, sp, #4
	ldm r3!, {r2, r3}
	bl __16_ll_srdv
	str r0, [r4, #0x24]
	ldr r0, [sp, #0x14]
	asrs r1, r0, #0x1f
	movs r2, #0x10
	bl __16_ll_shift_l
	b %28
	ALIGN
_08032E8C DCDU __VTABLE__345dword_803EC44
_08032E90 DCDU gUnknown_03003EB8
_08032E94 DCDU gUnknown_03003458
_08032E98 DCDU gUnknown_0300334A
_08032E9C DCDU gPlayerEntity
_08032EA0 DCDU gUnknown_0300345C
_08032EA4 DCDU gUnknown_03003EA0
_08032EA8 DCDU 0x00020000
_08032EAC DCDU 0x00000000
28
	adds r2, r0, #0
	adds r3, r1, #0
	ldr r1, [sp, #0x1c]
	ldr r0, [sp, #0x20]
	bl __16_ll_srdv
	str r0, [r4, #0x28]
	b %30
29
	movs r0, #0
	str r0, [r4, #0x24]
	str r0, [r4, #0x28]
30
	ldr r0, [r6]
	ldr r1, [r4, #0x24]
	adds r0, r0, r1
	str r0, [r6]
	ldr r0, [r6, #4]
	ldr r1, [r4, #0x28]
	adds r0, r0, r1
	str r0, [r6, #4]
	movs r0, #1
	lsls r0, r0, #0x11
	cmp r5, r0
	bgt %32
	ldrb r0, [r7, #4]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	strb r0, [r7, #4]
	cmp r0, #2
	bne %31
	movs r2, #7
	ldr r1, [r4, #0x34]
	lsls r2, r2, #8
	bics r1, r2
	lsls r2, r0, #8
	adds r1, r1, r2
	str r1, [r4, #0x34]
31
	cmp r0, #1
	bne %32
	ldr r0, [r4, #0x48]
	ldr r0, [r0, #0x2c]
	adds r1, r0, #0
	adds r1, #0x2c
	ldr r0, [r4, #0x40]
	bl sub_803FF24
	ldr r0, [r4, #0x40]
	bl sub_8000914
	movs r1, #1
	ldr r0, [r4, #0x40]
	bl sub_80401E4
32
	adds r1, r6, #0
	ldr r0, [r4, #4]
	bl sub_803FF24
	adds r1, r6, #0
	ldr r0, [r4, #0x3c]
	bl sub_803FF24
	ldr r0, [r4, #0x48]
	ldr r0, [r0, #0x2c]
	adds r1, r0, #0
	adds r1, #0x2c
	ldr r0, [r4, #0x40]
	bl sub_803FF24
	ldr r0, [r4, #0x40]
	cmp r0, #0
	bne %34
33
	b %16
34
	ldr r1, [r4, #0x48]
	ldr r1, [r1, #0x2c]
	ldrb r1, [r1, #5]
	ldrb r3, [r0, #5]
	subs r1, #1
	adds r2, r1, #0
	cmp r1, r3
	beq %33
	adds r1, r2, #0
	bl sub_80401C0
	b %16
35
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne %33
	ldr r7, _080332F8
	cmp r0, #0
	beq %36
	adds r1, r4, #4
	ldr r0, [r7]
	bl sub_8000DE6
	movs r0, #0
	str r0, [r4, #4]
36
	ldr r0, [r4, #0x3c]
	cmp r0, #0
	beq %37
	adds r1, r4, #0
	adds r1, #0x3c
	ldr r0, [r7]
	bl sub_8000DE6
	movs r0, #0
	str r0, [r4, #0x3c]
37
	ldr r0, [r6]
	adds r0, r0, r5
	ldrb r1, [r0]
	adds r1, #1
	strb r1, [r0]
	b %16

