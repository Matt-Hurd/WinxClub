	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT __16_ll_sdiv
	IMPORT __16_ll_shift_l
	IMPORT __16_ll_srdv
	IMPORT __call_via_r1
	IMPORT __call_via_r6
	IMPORT gUnknown_03003458
	IMPORT gUnknown_0300345C
	IMPORT gUnknown_03003EA0
	IMPORT sub_80007A0
	IMPORT sub_8000914
	IMPORT sub_8000D5A
	IMPORT sub_80187A0
	IMPORT sub_80268AC
	IMPORT sub_8028BE4
	IMPORT sub_803357C
	IMPORT sub_80401E4

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

	ALIGN
_08032E94 DCDU gUnknown_03003458
_08032EA0 DCDU gUnknown_0300345C
_08032EA4 DCDU gUnknown_03003EA0

	END
