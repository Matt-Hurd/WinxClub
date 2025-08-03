	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_030033D0
	IMPORT gUnknown_03003EA0
	IMPORT gUnknown_03003EB8
	IMPORT sub_8001232
	IMPORT sub_80013D8
	IMPORT sub_8001432
	IMPORT sub_800CD28
	IMPORT sub_800F090
	IMPORT sub_801537C
	IMPORT __call_via_r2
	IMPORT __16_ll_sdiv
	IMPORT __16_ll_shift_l

	thumb_func_start sub_8000914
sub_8000914
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r0]
	lsls r0, r0, #0x15
	bmi _08000942
	ldr r0, _08000B8C
	adds r1, r4, #0
	ldr r0, [r0]
	bl sub_80013D8
	movs r1, #1
	ldr r0, [r4]
	lsls r1, r1, #0xa
	orrs r0, r1
	lsls r1, r1, #1
	bics r0, r1
	movs r1, #0x20
	orrs r0, r1
	movs r1, #0x40
	orrs r0, r1
	movs r1, #0x80
	orrs r0, r1
	str r0, [r4]
_08000942
	pop {r4}
	pop {r3}
	bx r3

	thumb_func_start sub_8000948
sub_8000948
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r0]
	lsls r0, r0, #0x14
	bmi _080009B8
	ldrb r0, [r4, #3]
	ldr r2, _08000B90
	adds r0, #0xff
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	strb r0, [r4, #3]
	ldr r1, [r4, #8]
	adds r1, r1, r2
	str r1, [r4, #8]
	cmp r0, #0
	bne _080009B8
	ldr r0, [r4, #0x48]
	ldr r0, [r0]
	lsls r0, r0, #8
	lsrs r0, r0, #0x1c
	cmp r0, #0xa
	bhs _080009B8
	add r3, pc, #0x4
	ldrb r3, [r3, r0]
	lsls r3, r3, #1
	add pc, r3
_0800097C
	DCB 0x04
_0800097D
	DCB 0x20
_0800097E
	DCB 0x1D
_0800097F
	DCB 0x1D
_08000980
	DCB 0x1D
_08000981
	DCB 0x1D
_08000982
	DCB 0x1D
_08000983
	DCB 0x45
_08000984
	DCB 0x50
_08000985
	DCB 0x71
loc_8000986
	ldr r0, [r4, #0x48]
	adds r0, #4
	str r0, [r4, #0x48]
	ldr r0, [r4, #8]
	ldr r1, [r4, #0xc]
	adds r0, r0, r1
	asrs r1, r0, #0x1f
	movs r2, #0x10
	str r0, [r4, #8]
	bl __16_ll_shift_l
	mov r2, pc
	subs r2, #0x94
	ldm r2!, {r2, r3}
	bl __16_ll_sdiv
	asrs r1, r0, #0x1f
	lsrs r1, r1, #0x10
	adds r0, r1, r0
	asrs r0, r0, #0x10
	strb r0, [r4, #3]
	ldr r0, [r4]
	movs r1, #0x20
	orrs r0, r1
	str r0, [r4]
_080009B8
	pop {r3, r4, r5}
	pop {r3}
	bx r3
loc_80009be
	ldr r0, _08000B94
	ldr r1, [r4, #0x44]
	ldr r0, [r0]
	ldr r1, [r1, #4]
	ldr r0, [r0, #0x2c]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0xe
	adds r0, r0, r1
	ldr r1, [r4, #0x48]
	ldr r1, [r1]
	lsrs r1, r1, #0x18
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r4, #0x48]
	ldr r0, [r4, #8]
	ldr r1, [r4, #0xc]
	adds r0, r0, r1
	asrs r1, r0, #0x1f
	movs r2, #0x10
	str r0, [r4, #8]
	bl __16_ll_shift_l
	mov r2, pc
	subs r2, #0xe2
	ldm r2!, {r2, r3}
	bl __16_ll_sdiv
	asrs r1, r0, #0x1f
	lsrs r1, r1, #0x10
	adds r0, r1, r0
	asrs r0, r0, #0x10
	strb r0, [r4, #3]
	ldr r0, [r4]
	movs r1, #0x20
	orrs r0, r1
	str r0, [r4]
	b _080009B8
loc_8000a08
	ldr r0, _08000B8C
	adds r1, r4, #0
	ldr r0, [r0]
	bl sub_8001432
	movs r1, #1
	ldr r0, [r4]
	lsls r1, r1, #0xa
	bics r0, r1
	str r0, [r4]
	b _080009B8
loc_8000a1e
	ldr r5, _08000B8C
	adds r1, r4, #0
	ldr r0, [r5]
	bl sub_8001432
	movs r1, #1
	ldr r0, [r4]
	lsls r1, r1, #0xa
	bics r0, r1
	str r0, [r4]
	lsls r1, r0, #0x1f
	beq _080009B8
	lsls r0, r0, #0x1f
	bpl _080009B8
	adds r1, r4, #0
	ldr r0, [r5]
	bl sub_8001232
	ldr r0, [r4]
	lsrs r0, r0, #1
	lsls r0, r0, #1
	str r0, [r4]
	lsls r0, r0, #0x16
	bmi _080009B8
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _080009B8
	ldr r0, _08000B94
	adds r1, r4, #0
	ldr r0, [r0]
	bl sub_800CD28
	b _080009B8
loc_8000a60
	ldr r0, [r4, #0x48]
	ldr r0, [r0]
	ldr r2, [r4, #0x4c]
	lsrs r1, r0, #0x18
	adds r0, r4, #0
	bl __call_via_r2
	cmp r0, #0
	beq _08000A92
	cmp r0, #7
	bne _080009B8
	ldr r0, [r4, #0x48]
	adds r0, #4
	str r0, [r4, #0x48]
	ldr r0, _08000B8C
	adds r1, r4, #0
	ldr r0, [r0]
	bl sub_8001432
	movs r1, #1
	ldr r0, [r4]
	lsls r1, r1, #0xa
	bics r0, r1
	str r0, [r4]
	b _080009B8
_08000A92
	ldr r0, [r4, #0x48]
	adds r0, #4
	str r0, [r4, #0x48]
	ldr r0, [r4, #8]
	ldr r1, [r4, #0xc]
	adds r0, r0, r1
	asrs r1, r0, #0x1f
	movs r2, #0x10
	str r0, [r4, #8]
	bl __16_ll_shift_l
	add r2, pc, #0xEC
	ldm r2!, {r2, r3}
	bl __16_ll_sdiv
	asrs r1, r0, #0x1f
	lsrs r1, r1, #0x10
	adds r0, r1, r0
	asrs r0, r0, #0x10
	strb r0, [r4, #3]
	ldr r0, [r4]
	movs r1, #0x20
	orrs r0, r1
	str r0, [r4]
	b _080009B8

	thumb_func_start sub_8000AC4
sub_8000AC4
	push {r0, r1, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r1, r5, #0
	adds r1, #0x50
	sub sp, #4
	str r1, [sp]
	movs r0, #0
	strb r0, [r1]
	ldr r3, [sp, #8]
	ldr r0, [r3]
	cmp r0, #0
	bne _08000AEC
	ldr r3, [sp, #8]
	ldr r0, [r3, #4]
	cmp r0, #0
	bne _08000AEC
_08000AE4
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
_08000AEC
	ldr r0, _08000B8C
	movs r1, #0x67
	ldr r0, [r0]
	lsls r1, r1, #6
	adds r0, r0, r1
	ldrh r4, [r0, #8]
	ldr r2, [r0]
	ldrh r6, [r0, #0xa]
	lsls r3, r4, #1
	adds r3, r3, r4
	lsls r3, r3, #5
	adds r4, r2, r3
	movs r7, #0
	cmp r6, #0
	ble _08000B4A
_08000B0A
	cmp r4, r5
	beq _08000B2C
	ldr r0, _08000B8C
	ldr r1, _08000BA0
	ldr r0, [r0]
	adds r2, r4, #0
	adds r0, r0, r1
	adds r1, r5, #0
	ldr r3, [sp, #8]
	bl sub_800F090
	cmp r0, #0
	beq _08000B2C
	movs r7, #1
	ldr r1, [sp]
	movs r0, #1
	strb r0, [r1]
_08000B2C
	ldr r0, _08000B8C
	movs r1, #0x67
	ldr r0, [r0]
	lsls r1, r1, #6
	adds r0, r0, r1
	ldr r0, [r0]
	adds r4, #0x40
	ldrh r1, [r4, #0x1a]
	subs r6, #1
	lsls r3, r1, #1
	adds r1, r3, r1
	lsls r1, r1, #5
	adds r4, r0, r1
	cmp r6, #0
	bgt _08000B0A
_08000B4A
	ldr r0, [r5]
	lsls r0, r0, #0x1d
	bpl _08000B88
	ldr r0, _08000BA4
	cmp r7, #0
	beq _08000B70
	ldr r1, _08000B8C
	ldr r2, _08000BA8
	ldr r1, [r1]
	adds r0, r1, r0
	adds r1, r5, #0
	bl sub_801537C
	cmp r0, #0
	beq _08000B88
	ldr r1, [sp]
	movs r0, #3
	strb r0, [r1]
	b _08000B88
_08000B70
	ldr r1, _08000B8C
	ldr r1, [r1]
	ldr r2, [sp, #8]
	adds r0, r1, r0
	adds r1, r5, #0
	bl sub_801537C
	adds r7, r0, #0
	beq _08000B88
	ldr r1, [sp]
	movs r0, #2
	strb r0, [r1]
_08000B88
	adds r0, r7, #0
	b _08000AE4
	ALIGN
_08000B8C DCDU gUnknown_03003EB8
_08000B90 DCDU 0xFFEF41E0
_08000B94 DCDU gUnknown_03003EA0
_08000B98 DCDU 0x0010BE20
_08000B9C DCDU 0x00000000
_08000BA0 DCDU 0x00001AD4
_08000BA4 DCDU 0x000019EC
_08000BA8 DCDU gUnknown_030033D0
	END
