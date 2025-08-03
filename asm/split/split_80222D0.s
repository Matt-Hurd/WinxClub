	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_03003448
	IMPORT gUnknown_0300345C
	IMPORT gUnknown_080414B8
	IMPORT gUnknown_08050FEC
	IMPORT sub_8000DE6
	IMPORT sub_80047BE
	IMPORT sub_80137F8
	IMPORT sub_80138E2
	IMPORT sub_80139AC
	IMPORT sub_8013C40
	IMPORT sub_8014864
	IMPORT sub_80180BE
	IMPORT sub_8028A7C
	IMPORT __call_via_r3
	IMPORT __16_ll_mulss
	IMPORT __16_ll_sdiv
	IMPORT sub_803D66C
	IMPORT sub_8040594

	thumb_func_start sub_80222D0
sub_80222D0
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	adds r0, #0xff
	movs r1, #0
	adds r0, #0x79
	bl sub_8014864
	ldr r0, _080225C8
	movs r2, #0
	movs r1, #2
	ldr r0, [r0]
	bl sub_8028A7C
	bl sub_80180BE
	ldr r5, _080225CC
	adds r1, r4, #0
	ldr r0, [r5]
	bl sub_8000DE6
	adds r1, r4, #4
	ldr r0, [r5]
	bl sub_8000DE6
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_8022306
sub_8022306
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r4, #0xf0
	adds r5, r0, #0
	ldrb r0, [r4, #8]
	sub sp, #0x14
	cmp r0, #8
	bhs _08022320
	add r3, pc, #0x10
	adds r3, r3, r0
	ldrh r3, [r3, r0]
	lsls r3, r3, #1
	add pc, r3
_08022320
	add sp, #0x14
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
_08022328
	DCB 0x0B, 0x00
_0802232A
	DCB 0x1F, 0x00
_0802232C
	DCB 0x3F, 0x00
_0802232E
	DCB 0x5F, 0x00
_08022330
	DCB 0x9F, 0x00
_08022332
	DCB 0xBC, 0x00
_08022334
	DCB 0xD2, 0x00
_08022336
	DCB 0x20, 0x01
loc_8022338
	movs r1, #0x17
	lsls r1, r1, #5
	adds r1, r5, r1
	movs r0, #0x10
	strb r0, [r1, #6]
	movs r0, #0
	strb r0, [r4, #9]
	ldrb r1, [r4, #0xc]
	adds r0, r5, #0
	adds r0, #0xff
	adds r1, #0xff
	adds r1, #0x56
	movs r3, #0xff
	movs r2, #0
	adds r0, #0x79
	bl sub_80138E2
	movs r0, #1
	strb r0, [r4, #8]
	b _08022320
loc_8022360
	ldrb r0, [r4, #9]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	strb r0, [r4, #9]
	cmp r0, #6
	bne _08022320
	movs r0, #0
	strb r0, [r4, #9]
	movs r0, #0x17
	lsls r0, r0, #5
	adds r0, r5, r0
	adds r5, r0, #0
	ldrb r0, [r0, #6]
	adds r0, #0xff
	lsls r2, r0, #0x18
	lsrs r2, r2, #0x18
	movs r0, #0x10
	subs r1, r0, r2
	adds r0, r5, #0
	strb r2, [r5, #6]
	bl sub_80047BE
	adds r0, r5, #0
	bl sub_803D66C
	ldrb r0, [r5, #6]
	cmp r0, #0
	bne _08022320
	movs r0, #2
	strb r0, [r4, #8]
	b _08022320
loc_80223a0
	adds r6, r5, #0
	adds r6, #0xff
	adds r6, #0xf1
	ldr r0, [r6]
	movs r2, #0x28
	ldr r1, [r0, #0x14]
	adds r3, r1, r0
	movs r1, #0xf0
	adds r0, r6, #0
	bl __call_via_r3
	ldrb r1, [r4, #0xb]
	movs r3, #0xff
	movs r2, #0
	adds r1, #0xff
	adds r1, #0x58
	adds r0, r6, #0
	bl sub_80138E2
	movs r0, #0x4d
	lsls r0, r0, #3
	movs r2, #0
	adds r0, r5, r0
	add r1, pc, #0x200
	bl sub_80137F8
	movs r0, #0
	strb r0, [r4, #9]
	ldrb r0, [r4, #8]
	adds r0, #1
	strb r0, [r4, #8]
	b _08022320
loc_80223e0
	ldrb r6, [r4, #9]
	cmp r6, #0x5a
	bne _080223EC
	movs r0, #4
	strb r0, [r4, #8]
	b _08022320
_080223EC
	adds r0, r6, #0
	bl sub_8040594
	movs r0, #0x2d
	muls r0, r6
	lsrs r2, r6, #1
	adds r0, r0, r2
	adds r0, r1, r0
	add r3, sp, #0
	strh r0, [r3, #0x10]
	lsls r0, r0, #0x12
	ldr r1, _080225D4
	lsrs r0, r0, #0x11
	ldrsh r0, [r1, r0]
	movs r1, #0x2b
	lsls r0, r0, #2
	lsls r1, r1, #0x12
	bl __16_ll_mulss
	add r2, pc, #0x1C4
	ldm r2!, {r2, r3}
	bl __16_ll_sdiv
	adds r6, r5, #0
	adds r6, #0xff
	adds r6, #0xf1
	ldr r1, [r6]
	asrs r0, r0, #0x10
	ldr r2, [r1, #0x14]
	adds r3, r2, r1
	movs r1, #0xf0
	subs r0, r1, r0
	lsls r7, r0, #0x10
	asrs r7, r7, #0x10
	adds r1, r7, #0
	movs r2, #0x28
	adds r0, r6, #0
	bl __call_via_r3
	adds r6, #0x30
	ldrb r1, [r6, #8]
	movs r0, #0x4d
	lsls r0, r0, #3
	lsls r2, r1, #1
	adds r2, r2, r1
	adds r0, r5, r0
	ldr r1, [r0]
	lsls r2, r2, #2
	ldr r3, [r1, #0x14]
	adds r2, #0x28
	adds r3, r3, r1
	adds r1, r7, #0
	bl __call_via_r3
	ldrb r0, [r4, #9]
	adds r0, #2
	strb r0, [r4, #9]
_0802245E
	b _08022320
loc_8022460
	ldrb r1, [r4, #0xb]
	movs r0, #0x4d
	lsls r0, r0, #3
	adds r1, #0xff
	adds r1, #0x6f
	adds r0, r5, r0
	movs r3, #0xff
	movs r2, #0
	adds r5, r0, #0
	bl sub_80138E2
	movs r2, #1
	movs r1, #0
	str r1, [sp, #4]
	str r2, [sp, #8]
	movs r0, #2
	str r0, [sp]
	movs r2, #4
	movs r1, #3
	movs r3, #3
	adds r0, r5, #0
	bl sub_8013C40
	movs r0, #0
	strb r0, [r4, #9]
	ldrb r0, [r4, #8]
	adds r0, #1
	strb r0, [r4, #8]
_08022498
	b _08022320
loc_802249a
	ldrb r1, [r4, #9]
	cmp r1, #0x3c
	bne _080224AA
	movs r0, #0x5a
	strb r0, [r4, #9]
	movs r0, #6
	strb r0, [r4, #8]
	b _08022320
_080224AA
	movs r0, #0x4d
	lsls r0, r0, #3
	adds r0, r5, r0
	movs r2, #0x2c
	ldrb r2, [r2, r0]
	cmp r2, #0
	bne _080224BE
	adds r0, r1, #1
	strb r0, [r4, #9]
_080224BC
	b _08022320
_080224BE
	movs r1, #0
	bl sub_80139AC
	b _08022320
loc_80224c6
	ldrb r6, [r4, #9]
	adds r0, r6, #0
	bl sub_8040594
	movs r0, #0x2d
	muls r0, r6
	lsrs r2, r6, #1
	adds r0, r0, r2
	adds r0, r1, r0
	add r3, sp, #0
	strh r0, [r3, #0x10]
	lsls r0, r0, #0x12
	ldr r1, _080225D4
	lsrs r0, r0, #0x11
	ldrsh r0, [r1, r0]
	movs r1, #0x2b
	lsls r0, r0, #2
	lsls r1, r1, #0x12
	bl __16_ll_mulss
	add r2, pc, #0xE8
	ldm r2!, {r2, r3}
	bl __16_ll_sdiv
	adds r6, r5, #0
	adds r6, #0xff
	adds r6, #0xf1
	ldr r1, [r6]
	asrs r0, r0, #0x10
	ldr r2, [r1, #0x14]
	adds r3, r2, r1
	movs r1, #0xf0
	subs r0, r1, r0
	lsls r7, r0, #0x10
	asrs r7, r7, #0x10
	adds r1, r7, #0
	movs r2, #0x28
	adds r0, r6, #0
	bl __call_via_r3
	adds r6, #0x30
	ldrb r1, [r6, #8]
	movs r0, #0x4d
	lsls r0, r0, #3
	lsls r2, r1, #1
	adds r2, r2, r1
	adds r0, r5, r0
	ldr r1, [r0]
	lsls r2, r2, #2
	ldr r3, [r1, #0x14]
	adds r2, #0x28
	adds r3, r3, r1
	adds r1, r7, #0
	bl __call_via_r3
	ldrb r0, [r4, #9]
	adds r0, #0xfe
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	strb r0, [r4, #9]
	bne _0802245E
	strb r0, [r4, #8]
	ldrb r0, [r4, #0xb]
	ldr r2, _080225E0
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	strb r0, [r4, #0xb]
	ldrb r1, [r4, #0xc]
	ldrb r1, [r2, r1]
	cmp r0, r1
	bne _0802255C
	movs r0, #7
	strb r0, [r4, #8]
	b _08022320
_0802255C
	movs r0, #2
	strb r0, [r4, #8]
	b _08022320
loc_8022562
	ldrb r0, [r4, #9]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	strb r0, [r4, #9]
	cmp r0, #6
	bne _08022498
	movs r0, #0x17
	lsls r0, r0, #5
	adds r0, r5, r0
	movs r7, #0
	strb r7, [r4, #9]
	adds r6, r0, #0
	ldrb r0, [r0, #6]
	adds r0, #1
	lsls r2, r0, #0x18
	lsrs r2, r2, #0x18
	movs r0, #0x10
	subs r1, r0, r2
	adds r0, r6, #0
	strb r2, [r6, #6]
	bl sub_80047BE
	adds r0, r6, #0
	bl sub_803D66C
	adds r0, r5, #0
	adds r0, #0xff
	movs r2, #0
	adds r0, #0x79
	add r1, pc, #0x30
	bl sub_80137F8
	ldrb r0, [r6, #6]
	cmp r0, #0x10
	bne _080224BC
	movs r0, #2
	strb r0, [r4, #8]
	ldrb r0, [r4, #0xc]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	strb r0, [r4, #0xc]
	cmp r0, #2
	bne _080225C2
	movs r0, #3
	strb r0, [r4, #0xa]
	b _08022320
_080225C2
	strb r7, [r4, #8]
	b _08022320
	ALIGN
_080225C8 DCDU gUnknown_0300345C
_080225CC DCDU gUnknown_03003448
_080225D0 DCDU 0x00000020
_080225D4 DCDU gUnknown_080414B8
_080225D8 DCDU 0x00010000
_080225DC DCDU 0x00000000
_080225E0 DCDU gUnknown_08050FEC
	END
