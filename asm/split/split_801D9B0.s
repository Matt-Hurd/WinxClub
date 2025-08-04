	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_03003450
	IMPORT gUnknown_03003478
	IMPORT sub_80007A0
	IMPORT sub_8000914
	IMPORT GetEWRAMStart
	IMPORT sub_801D788
	IMPORT __16_ll_mulls
	IMPORT __16_ll_sdiv
	IMPORT sub_803DA80
	IMPORT sub_803F6B4
	IMPORT sub_803FC14
	IMPORT sub_8040594

	thumb_func_start sub_801D9B0
sub_801D9B0
	push {r4, r5, r6}
	adds r0, r1, #0
	movs r2, #0
	movs r4, #1
	ldr r5, _0801DCE0
	b _0801DA1E
_0801D9BC
	movs r1, #0
_0801D9BE
	lsls r3, r1, #1
	ldrsh r2, [r0, r3]
	cmp r2, #0
	blt _0801D9E6
	ldrh r2, [r0, r3]
	adds r3, r4, #0
	lsls r6, r2, #0x1b
	lsrs r6, r6, #0x1b
	lsls r3, r6
	cmp r2, #0
	beq _0801D9DE
	lsrs r2, r2, #5
	lsls r2, r2, #2
	ldr r2, [r5, r2]
	ands r2, r3
	beq _0801D9E2
_0801D9DE
	movs r2, #1
	b _0801DA0A
_0801D9E2
	movs r2, #0
	b _0801DA0A
_0801D9E6
	NEGS r2, r2
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	lsls r6, r2, #0x1b
	lsrs r6, r6, #0x1b
	adds r3, r4, #0
	lsls r3, r6
	cmp r2, #0
	beq _0801DA02
	lsrs r2, r2, #5
	lsls r2, r2, #2
	ldr r2, [r5, r2]
	ands r2, r3
	beq _0801DA06
_0801DA02
	movs r2, #1
	b _0801DA08
_0801DA06
	movs r2, #0
_0801DA08
	subs r2, r4, r2
_0801DA0A
	adds r1, #1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	cmp r1, #4
	bhs _0801DA18
	cmp r2, #0
	bne _0801D9BE
_0801DA18
	cmp r2, #0
	bne _0801DA1E
	ldr r0, [r0, #0x18]
_0801DA1E
	cmp r0, #0
	beq _0801DA26
	cmp r2, #0
	beq _0801D9BC
_0801DA26
	pop {r4, r5, r6}
	bx lr

	non_word_aligned_thumb_func_start sub_801DA2A
sub_801DA2A
	push {r4, lr}
	ldr r1, [r0, #0x28]
	adds r4, r0, #0
	bl sub_801D9B0
	cmp r0, #0
	beq _0801DA40
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_801D788
_0801DA40
	pop {r4}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_801DA46
sub_801DA46
	push {r4, r5, r6, lr}
	ldr r4, [r1]
	adds r5, r0, #0
	bl GetEWRAMStart
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0x1c
	bl sub_803DA80
	cmp r0, #0
	beq _0801DA6E
	movs r1, #0
	movs r2, #0
	movs r3, #0
	stm r0!, {r1, r2, r3}
	stm r0!, {r1, r2, r3}
	stm r0!, {r3}
	subs r0, #0x1c
_0801DA6E
	movs r1, #0
_0801DA70
	lsls r2, r1, #1
	adds r3, r2, r4
	ldrh r6, [r3, #4]
	adds r1, #1
	lsls r1, r1, #0x18
	strh r6, [r0, r2]
	ldrh r3, [r3, #0xc]
	adds r2, r2, r0
	lsrs r1, r1, #0x18
	cmp r1, #4
	strh r3, [r2, #8]
	blo _0801DA70
	ldrh r1, [r4, #0x14]
	strh r1, [r0, #0x10]
	ldrh r1, [r4, #0x16]
	strh r1, [r0, #0x12]
	ldrh r1, [r4, #0x18]
	strb r1, [r0, #0x14]
	ldr r1, [r5, #0x28]
	str r1, [r0, #0x18]
	str r0, [r5, #0x28]
	pop {r4, r5, r6}
	pop {r3}
	bx r3

	thumb_func_start sub_801DAA0
sub_801DAA0
	push {r4, r5}
	ldr r3, [r1]
	ldrh r1, [r3, #4]
	cmp r1, #0
	beq _0801DAB2
	cmp r1, #1
	bne _0801DAD2
	movs r1, #0
	b _0801DAD6
_0801DAB2
	movs r1, #0
_0801DAB4
	lsls r2, r1, #1
	adds r4, r2, r3
	ldrh r5, [r4, #6]
	adds r2, r2, r0
	strh r5, [r2, #8]
	ldrh r5, [r2, #0x18]
	cmp r5, #0
	bne _0801DAC8
	ldrh r4, [r4, #6]
	strh r4, [r2, #0x18]
_0801DAC8
	adds r1, #1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	cmp r1, #4
	blo _0801DAB4
_0801DAD2
	pop {r4, r5}
	bx lr
_0801DAD6
	lsls r2, r1, #1
	adds r4, r2, r3
	ldrh r4, [r4, #6]
	adds r1, #1
	lsls r1, r1, #0x18
	adds r2, r2, r0
	lsrs r1, r1, #0x18
	cmp r1, #4
	strh r4, [r2, #0x18]
	blo _0801DAD6
	b _0801DAD2

	thumb_func_start sub_801DAEC
sub_801DAEC
	push {r3, r4, r5, lr}
	ldr r5, [r1]
	adds r4, r0, #0
	ldrh r1, [r5, #6]
	ldr r0, [r0, #0x2c]
	cmp r1, #0
	beq _0801DB02
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne _0801DB38
_0801DB02
	ldrh r1, [r5, #4]
	strh r1, [r4, #0x18]
	ldrh r1, [r5, #4]
	strh r1, [r4, #0x1a]
	ldrh r1, [r5, #4]
	strh r1, [r4, #0x1c]
	ldrh r1, [r5, #4]
	strh r1, [r4, #0x1e]
	bl sub_803F6B4
	ldrh r1, [r5, #4]
	cmp r0, r1
	beq _0801DB24
	movs r2, #0
	ldr r0, [r4, #0x2c]
	bl sub_80007A0
_0801DB24
	ldr r0, [r4, #0x2c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne _0801DB38
	bl sub_803FC14
	ldr r0, [r4, #0x2c]
	bl sub_8000914
_0801DB38
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_801DB3E
sub_801DB3E
	push {r4, lr}
	ldr r1, [r1]
	adds r4, r0, #0
	ldrh r2, [r1, #4]
	adds r4, #0x80
	ldr r0, [r4, #0x10]
	ldr r3, _0801DCE4
	lsls r2, r2, #0x17
	lsrs r2, r2, #3
	ands r0, r3
	orrs r0, r2
	str r0, [r4, #0x10]
	ldrh r2, [r1, #6]
	asrs r3, r3, #9
	ands r0, r3
	lsls r2, r2, #0x17
	lsrs r2, r2, #0xc
	orrs r0, r2
	str r0, [r4, #0x10]
	ldrh r0, [r1, #8]
	lsls r0, r0, #7
	bl sub_8040594
	ldr r0, [r4, #0x14]
	lsls r1, r1, #0x15
	lsrs r0, r0, #0xb
	lsls r0, r0, #0xb
	lsrs r1, r1, #0x15
	orrs r0, r1
	str r0, [r4, #0x14]
	pop {r4}
	pop {r3}
	bx r3

	thumb_func_start sub_801DB80
sub_801DB80
	ldr r1, _0801DCE8
	movs r2, #0x27
	ldr r1, [r1]
	lsls r2, r2, #6
	ldr r0, [r0, #0x2c]
	adds r1, r1, r2
	str r0, [r1, #0xc]
	bx lr

	thumb_func_start sub_801DB90
sub_801DB90
	push {r3, r4, r5, r6, r7, lr}
	ldr r5, [r1]
	adds r4, r0, #0
	ldrh r0, [r5, #4]
	ldr r3, [r4, #0x58]
	movs r6, #0
	mvns r6, r6
	asrs r1, r3, #0x10
	cmp r0, r1
	beq _0801DBA8
	lsls r1, r0, #0x10
	b _0801DBAA
_0801DBA8
	movs r1, #0
_0801DBAA
	ldrh r0, [r5, #6]
	ldr r2, [r4, #0x5c]
	asrs r7, r2, #0x10
	cmp r0, r7
	beq _0801DBB8
	lsls r0, r0, #0x10
	b _0801DBBA
_0801DBB8
	movs r0, #0
_0801DBBA
	ldrh r5, [r5, #8]
	movs r7, #0
	cmp r5, #2
	bne _0801DC0E
	cmp r1, #0
	beq _0801DC0E
	cmp r0, #0
	beq _0801DC0E
	adds r5, r7, #0
	cmp r3, r1
	blt _0801DBD2
	movs r5, #2
_0801DBD2
	lsls r5, r5, #0x18
	asrs r5, r5, #0x18
	movs r6, #1
	cmp r2, r0
	blt _0801DBDE
	movs r6, #3
_0801DBDE
	lsls r6, r6, #0x18
	asrs r6, r6, #0x18
	cmp r1, r0
	ble _0801DBF2
	cmp r2, r0
	bge _0801DBEE
	subs r2, r0, r2
	b _0801DBFC
_0801DBEE
	subs r2, r2, r0
	b _0801DBFC
_0801DBF2
	cmp r3, r1
	bge _0801DBFA
	subs r2, r1, r3
	b _0801DBFC
_0801DBFA
	subs r2, r3, r1
_0801DBFC
	add r0, pc, #0xEC
	ldm r0!, {r0, r1}
	bl __16_ll_mulls
	add r2, pc, #0xEC
	ldm r2!, {r2, r3}
	bl __16_ll_sdiv
	b _0801DCB8
_0801DC0E
	cmp r5, #3
	bne _0801DC5E
	cmp r1, #0
	beq _0801DC5E
	cmp r0, #0
	beq _0801DC5E
	movs r6, #1
	cmp r2, r0
	blt _0801DC22
	movs r6, #3
_0801DC22
	lsls r5, r6, #0x18
	asrs r5, r5, #0x18
	adds r6, r7, #0
	cmp r3, r1
	blt _0801DC2E
	movs r6, #2
_0801DC2E
	lsls r6, r6, #0x18
	asrs r6, r6, #0x18
	cmp r1, r0
	ble _0801DC42
	cmp r2, r0
	bge _0801DC3E
	subs r2, r0, r2
	b _0801DC4C
_0801DC3E
	subs r2, r2, r0
	b _0801DC4C
_0801DC42
	cmp r3, r1
	bge _0801DC4A
	subs r2, r1, r3
	b _0801DC4C
_0801DC4A
	subs r2, r3, r1
_0801DC4C
	add r0, pc, #0x9C
	ldm r0!, {r0, r1}
	bl __16_ll_mulls
	add r2, pc, #0x9C
	ldm r2!, {r2, r3}
	bl __16_ll_sdiv
	b _0801DCB8
_0801DC5E
	cmp r1, #0
	beq _0801DC82
	cmp r5, #1
	bne _0801DC82
	cmp r0, #0
	beq _0801DC82
	movs r1, #1
	cmp r2, r0
	blt _0801DC72
	movs r1, #3
_0801DC72
	lsls r5, r1, #0x18
	asrs r5, r5, #0x18
	cmp r2, r0
	bge _0801DC7E
	subs r0, r0, r2
	b _0801DCB8
_0801DC7E
	subs r0, r2, r0
	b _0801DCB8
_0801DC82
	cmp r1, #0
	beq _0801DC9E
	adds r0, r7, #0
	cmp r3, r1
	blt _0801DC8E
	movs r0, #2
_0801DC8E
	lsls r5, r0, #0x18
	asrs r5, r5, #0x18
	cmp r3, r1
	bge _0801DC9A
	subs r0, r1, r3
	b _0801DCB8
_0801DC9A
	subs r0, r3, r1
	b _0801DCB8
_0801DC9E
	cmp r0, #0
	beq _0801DCDC
	movs r1, #1
	cmp r2, r0
	blt _0801DCAA
	movs r1, #3
_0801DCAA
	lsls r5, r1, #0x18
	asrs r5, r5, #0x18
	cmp r2, r0
	bge _0801DCB6
	subs r0, r0, r2
	b _0801DCB8
_0801DCB6
	subs r0, r2, r0
_0801DCB8
	cmp r0, #0
	ble _0801DCDC
	movs r2, #0xf
	ldr r1, [r4, #0x7c]
	lsls r2, r2, #0x18
	bics r1, r2
	lsls r2, r5, #0x1c
	lsrs r2, r2, #4
	orrs r1, r2
	str r1, [r4, #0x7c]
	movs r1, #0x98
	strb r6, [r1, r4]
	str r0, [r4, #0x78]
	adds r4, #0x80
	str r7, [r4, #0x1c]
_0801DCD6
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
_0801DCDC
	str r7, [r4, #0x78]
	b _0801DCD6
	ALIGN
_0801DCE0 DCDU gUnknown_03003478
_0801DCE4 DCDU 0xE00FFFFF
_0801DCE8 DCDU gUnknown_03003450
_0801DCEC DCDU 0x0000B504
_0801DCF0 DCDU 0x00000000
_0801DCF4 DCDU 0x00010000
_0801DCF8 DCDU 0x00000000
	END
