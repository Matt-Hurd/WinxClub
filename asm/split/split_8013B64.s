	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_03003C40
	IMPORT GetEWRAMStart
	IMPORT sub_80133A0
	IMPORT sub_80139AC
	IMPORT __call_via_r1
	IMPORT __call_via_r2
	IMPORT __call_via_r5
	IMPORT sub_803DA18
	IMPORT __da__FPv
	IMPORT sub_803DA80
	IMPORT sub_80402F8
	IMPORT sub_8041274

	thumb_func_start sub_8013B64
sub_8013B64
	push {r3, lr}
	ldr r2, [r0]
	ldr r3, [r2, #0x4c]
	adds r2, r3, r2
	bl __call_via_r2
	add sp, #4
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_8013B76
sub_8013B76
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r0, #0x4c]
	movs r5, #0
	cmp r0, #0
	beq _08013B88
	bl sub_803DA18
	str r5, [r4, #0x4c]
_08013B88
	movs r0, #0x2c
	strb r5, [r0, r4]
	movs r0, #0
	mvns r0, r0
	strh r0, [r4, #0x3a]
	movs r0, #1
	strh r0, [r4, #0xe]
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	thumb_func_start sub_8013B9C
sub_8013B9C
	push {r0, r1, r2, r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, [r0, #0x4c]
	adds r6, r2, #0
	movs r5, #0
	cmp r0, #0
	sub sp, #4
	beq _08013BB4
	bl sub_803DA18
	movs r0, #0
	str r0, [r4, #0x4c]
_08013BB4
	movs r0, #1
	adds r7, r4, #0
	adds r7, #0x20
	strb r0, [r7, #0xc]
	bl GetEWRAMStart
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0x10
	bl sub_803DA80
	cmp r0, #0
	beq _08013BDC
	movs r1, #0
	movs r2, #0
	movs r3, #0
	stm r0!, {r1, r2, r3}
	stm r0!, {r3}
	subs r0, #0x10
_08013BDC
	str r0, [r4, #0x4c]
	strh r6, [r4, #0x3a]
	ldr r0, [r4, #0x14]
	b _08013BEA
_08013BE4
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
_08013BEA
	lsls r1, r5, #1
	adds r1, r1, r5
	lsls r1, r1, #1
	ldrh r2, [r0, r1]
	cmp r2, r6
	bhi _08013BE4
	adds r1, r0, r1
	ldrh r1, [r1, #2]
	cmp r1, r6
	blo _08013BE4
	ldrb r0, [r7, #0xd]
	bl sub_80133A0
	ldrh r0, [r0, #2]
	muls r0, r5
	lsls r1, r0, #0x10
	ldr r0, [r4]
	asrs r1, r1, #0x10
	ldr r2, [r0, #0x24]
	adds r2, r2, r0
	adds r0, r4, #0
	bl __call_via_r2
	ldr r0, [sp, #0x10]
	ldr r1, [r4, #0x4c]
	movs r3, #0
	strh r0, [r1, #8]
	ldr r0, [r4, #0x4c]
	strh r6, [r0, #6]
	ldr r0, [sp, #8]
	ldr r1, [r4, #0x4c]
	strb r0, [r1, #4]
	ldr r0, [sp, #0x28]
	ldr r1, [r4, #0x4c]
	str r0, [r1, #0xc]
	ldr r0, [r4, #0x4c]
	str r3, [r0]
	ldr r0, [r4, #0x4c]
	strh r5, [r0, #0xa]
	add sp, #0x14
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	thumb_func_start sub_8013C40
sub_8013C40
	push {r0, r1, r2, r3, r4, r5, r6, r7, lr}
	sub sp, #4
	ldr r6, [sp, #0x30]
	adds r4, r0, #0
	ldr r0, [r0, #0x4c]
	cmp r0, #0
	beq _08013C56
	bl sub_803DA18
	movs r0, #0
	str r0, [r4, #0x4c]
_08013C56
	adds r7, r4, #0
	adds r7, #0x20
	ldrb r0, [r7, #0xd]
	bl sub_80133A0
	movs r1, #0x38
	ldrb r1, [r1, r4]
	ldrh r0, [r0, #2]
	muls r0, r1
	lsls r5, r0, #0x10
	lsrs r5, r5, #0x10
	movs r0, #2
	strb r0, [r7, #0xc]
	bl GetEWRAMStart
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0xc
	bl sub_803DA80
	cmp r0, #0
	beq _08013C8E
	movs r1, #0
	movs r2, #0
	movs r3, #0
	stm r0!, {r1, r2, r3}
	subs r0, #0xc
_08013C8E
	str r0, [r4, #0x4c]
	ldr r1, [sp, #8]
	movs r3, #0
	strb r1, [r0, #4]
	str r3, [r0]
	ldrb r1, [r4, #0x1c]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1c
	adds r1, #0x10
	strb r1, [r4, #0x1c]
	ldr r1, [sp, #0xc]
	cmp r1, #5
	bhs _08013CDE
	add r3, pc, #0x4
	ldrb r3, [r3, r1]
	lsls r3, r3, #1
	add pc, r3
_08013CB0
	DCB 0x02
_08013CB1
	DCB 0x05
_08013CB2
	DCB 0x0E
_08013CB3
	DCB 0x11
_08013CB4
	DCB 0x13, 0x00
loc_8013cb6
	movs r3, #0
	strh r3, [r4, #0x22]
	b _08013CDE
loc_8013cbc
	ldrh r1, [r4, #0x1e]
	cmp r1, r5
	bls _08013CC8
	subs r1, r1, r5
	NEGS r1, r1
	b _08013CCA
_08013CC8
	NEGS r1, r1
_08013CCA
	strh r1, [r4, #0x22]
	b _08013CDE
loc_8013cce
	NEGS r1, r5
	strh r1, [r4, #0x22]
	b _08013CDE
loc_8013cd4
	strh r5, [r4, #0x22]
	b _08013CDE
loc_8013cd8
	ldrh r1, [r4, #0x1e]
	NEGS r1, r1
	strh r1, [r4, #0x22]
_08013CDE
	ldr r1, [sp, #0x10]
	cmp r1, #5
	bhs _08013D1A
	add r3, pc, #0x4
	ldrb r3, [r3, r1]
	lsls r3, r3, #1
	add pc, r3
_08013CEC
	DCB 0x02
_08013CED
	DCB 0x05
_08013CEE
	DCB 0x0E
_08013CEF
	DCB 0x11
_08013CF0
	DCB 0x13, 0x00
loc_8013cf2
	movs r3, #0
	strh r3, [r0, #6]
	b _08013D1A
loc_8013cf8
	ldrh r1, [r4, #0x1e]
	cmp r1, r5
	bls _08013D04
	subs r1, r1, r5
	NEGS r1, r1
	b _08013D06
_08013D04
	NEGS r1, r1
_08013D06
	strh r1, [r0, #6]
	b _08013D1A
loc_8013d0a
	NEGS r1, r5
	strh r1, [r0, #6]
	b _08013D1A
loc_8013d10
	strh r5, [r0, #6]
	b _08013D1A
loc_8013d14
	ldrh r1, [r4, #0x1e]
	NEGS r1, r1
	strh r1, [r0, #6]
_08013D1A
	ldrh r1, [r4, #0x22]
	ldr r2, [sp, #0x28]
	movs r3, #0x22
	adds r1, r1, r2
	strh r1, [r4, #0x22]
	strh r1, [r4, #0x3c]
	ldrh r1, [r0, #6]
	ldr r2, [sp, #0x2c]
	adds r1, r1, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	strh r1, [r0, #6]
	ldrsh r2, [r4, r3]
	cmp r2, r1
	bge _08013D42
	strb r6, [r0, #8]
_08013D3A
	add sp, #0x14
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
_08013D42
	cmp r2, r1
	ble _08013D4C
	NEGS r1, r6
	strb r1, [r0, #8]
	b _08013D3A
_08013D4C
	movs r3, #0
	strb r3, [r7, #0xc]
	b _08013D3A

	non_word_aligned_thumb_func_start sub_8013D52
sub_8013D52
	push {r4, r5, r6, r7, lr}
	movs r2, #3
	sub sp, #0x14
	movs r6, #0
	movs r1, #0
	cmp r0, #3
	str r2, [sp, #0x10]
	bhs _08013D6C
	adds r6, r0, #0
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x10]
_08013D6C
	movs r0, #0
	add r7, sp, #4
_08013D70
	adds r2, r1, #1
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	adds r3, r1, #0
	adds r1, r2, #0
	lsls r2, r3, #2
	str r0, [r7, r2]
	cmp r1, #3
	blo _08013D70
	ldr r0, [sp, #0x10]
	cmp r6, r0
	bhs _08013DE2
_08013D88
	ldr r0, _08013FF0
	lsls r5, r6, #2
	ldr r4, [r0, r5]
	cmp r4, #0
	beq _08013DC0
_08013D92
	ldrh r0, [r4, #0xe]
	cmp r0, #0
	beq _08013DBA
	ldr r0, [r7, r5]
	cmp r0, #0
	bne _08013DB2
	ldr r0, _08013FF0
	ldr r0, [r0, r5]
	ldr r1, [r0]
	ldr r2, [r1, #0x44]
	adds r2, r2, r1
	movs r1, #0
	bl __call_via_r2
	movs r0, #1
	str r0, [r7, r5]
_08013DB2
	movs r1, #0
	adds r0, r4, #0
	bl sub_80402F8
_08013DBA
	ldr r4, [r4, #4]
	cmp r4, #0
	bne _08013D92
_08013DC0
	ldr r0, [r7, r5]
	cmp r0, #0
	beq _08013DD6
	ldr r0, _08013FF0
	ldr r0, [r0, r5]
	ldr r1, [r0]
	ldr r2, [r1, #0x48]
	adds r2, r2, r1
	movs r1, #0
	bl __call_via_r2
_08013DD6
	adds r6, #1
	lsls r6, r6, #0x18
	ldr r0, [sp, #0x10]
	lsrs r6, r6, #0x18
	cmp r6, r0
	blo _08013D88
_08013DE2
	add sp, #0x14
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_8013DEA
sub_8013DEA
	push {r3, r4, r5, r6, r7, lr}
	movs r6, #3
	movs r5, #0
	cmp r0, #3
	bhs _08013DFC
	adds r5, r0, #0
	adds r0, #1
	lsls r6, r0, #0x18
	lsrs r6, r6, #0x18
_08013DFC
	cmp r5, r6
	bhs _08013E26
	ldr r7, _08013FF0
_08013E02
	lsls r0, r5, #2
	ldr r4, [r7, r0]
	cmp r4, #0
	beq _08013E1C
_08013E0A
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #4]
	adds r1, r2, r1
	bl __call_via_r1
	ldr r4, [r4, #4]
	cmp r4, #0
	bne _08013E0A
_08013E1C
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, r6
	blo _08013E02
_08013E26
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	thumb_func_start sub_8013E2C
sub_8013E2C
	push {r4}
	ldrb r1, [r0, #0xc]
	ldr r2, _08013FF0
	adds r2, #0xc
	lsls r1, r1, #2
	ldr r3, [r2, r1]
	cmp r3, #0
	beq _08013E3E
	str r0, [r3, #4]
_08013E3E
	ldr r3, _08013FF0
	ldr r4, [r3, r1]
	cmp r4, #0
	bne _08013E48
	str r0, [r3, r1]
_08013E48
	ldr r3, [r2, r1]
	str r3, [r0, #8]
	str r0, [r2, r1]
	movs r1, #0
	str r1, [r0, #4]
	pop {r4}
	bx lr

	non_word_aligned_thumb_func_start sub_8013E56
sub_8013E56
	strh r1, [r0, #0x18]
	strh r2, [r0, #0x1a]
	ldrh r1, [r0, #0xe]
	movs r2, #2
	orrs r1, r2
	strh r1, [r0, #0xe]
	bx lr

	thumb_func_start sub_8013E64
sub_8013E64
	movs r2, #0x2d
	strb r1, [r2, r0]
	ldrh r1, [r0, #0xe]
	movs r2, #1
	orrs r1, r2
	strh r1, [r0, #0xe]
	bx lr

	non_word_aligned_thumb_func_start sub_8013E72
sub_8013E72
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldrb r0, [r0, #0x1c]
	ldr r6, [sp, #0x10]
	lsls r5, r0, #0x1c
	lsrs r5, r5, #0x1c
	cmp r1, #0xff
	beq _08013E86
	lsls r5, r1, #0x1c
	lsrs r5, r5, #0x1c
_08013E86
	lsls r1, r5, #0x18
	lsrs r1, r1, #0x18
	movs r5, #0xf0
	ands r0, r5
	cmp r2, #0xff
	strb r1, [r4, #0x1c]
	beq _08013E98
	ands r2, r5
	adds r0, r2, #0
_08013E98
	orrs r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	strb r0, [r4, #0x1c]
	cmp r3, #0
	beq _08013EAA
	movs r1, #8
	orrs r0, r1
	strb r0, [r4, #0x1c]
_08013EAA
	cmp r6, #0
	beq _08013EB6
	ldrb r0, [r4, #0x1c]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r4, #0x1c]
_08013EB6
	ldr r0, [r4, #0x30]
	cmp r0, #0
	beq _08013EE2
	ldrb r0, [r4, #0x1c]
	lsls r0, r0, #0x1c
	bpl _08013EE2
	ldrh r1, [r4, #0x20]
	adds r0, r4, #0
	subs r1, r5, r1
	lsrs r2, r1, #0x1f
	adds r1, r2, r1
	ldr r2, [r4]
	asrs r1, r1, #1
	ldr r3, [r2, #0x14]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r5, r3, r2
	adds r0, r4, #0
	movs r3, #0x1a
	ldrsh r2, [r4, r3]
	bl __call_via_r5
_08013EE2
	ldr r0, [r4, #0x30]
	cmp r0, #0
	beq _08013F10
	ldrb r0, [r4, #0x1c]
	lsls r0, r0, #0x18
	bpl _08013F10
	ldrh r1, [r4, #0x1e]
	movs r2, #0xa0
	adds r0, r4, #0
	subs r1, r2, r1
	lsrs r2, r1, #0x1f
	adds r1, r2, r1
	asrs r1, r1, #1
	lsls r2, r1, #0x10
	ldr r1, [r4]
	asrs r2, r2, #0x10
	ldr r3, [r1, #0x14]
	adds r5, r3, r1
	adds r0, r4, #0
	movs r3, #0x18
	ldrsh r1, [r4, r3]
	bl __call_via_r5
_08013F10
	ldrh r0, [r4, #0xe]
	movs r1, #1
	orrs r0, r1
	strh r0, [r4, #0xe]
	pop {r4, r5, r6}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_8013F1E
sub_8013F1E
	strh r1, [r0, #0x22]
	ldrh r1, [r0, #0xe]
	movs r2, #8
	orrs r1, r2
	strh r1, [r0, #0xe]
	bx lr

	non_word_aligned_thumb_func_start sub_8013F2A
sub_8013F2A
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	cmp r1, #0
	str r1, [r0, #0x44]
	bne _08013F54
	ldr r1, [r4, #0x48]
	cmp r1, #0
	beq _08013F54
	ldr r0, [r4, #0x50]
	movs r5, #0
	cmp r0, #0
	beq _08013F4C
	adds r3, r5, #0
	movs r2, #0
	bl sub_8041274
	b _08013F52
_08013F4C
	adds r0, r1, #0
	bl __da__FPv
_08013F52
	str r5, [r4, #0x48]
_08013F54
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_8013F5A
sub_8013F5A
	strb r1, [r0, #0x10]
	ldrh r1, [r0, #0xe]
	movs r2, #1
	orrs r1, r2
	strh r1, [r0, #0xe]
	bx lr

	non_word_aligned_thumb_func_start sub_8013F66
sub_8013F66
	adds r0, #0x20
	strb r1, [r0, #0xe]
	bx lr

	thumb_func_start sub_8013F6C
sub_8013F6C
	push {r3, r4, r5, lr}
	ldr r1, [r0, #0x48]
	movs r5, #0
	adds r4, r0, #0
	cmp r1, #0
	beq _08013F90
	ldr r0, [r4, #0x50]
	cmp r0, #0
	beq _08013F88
	adds r3, r5, #0
	movs r2, #0
	bl sub_8041274
	b _08013F8E
_08013F88
	adds r0, r1, #0
	bl __da__FPv
_08013F8E
	str r5, [r4, #0x48]
_08013F90
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _08013F9C
	bl __da__FPv
	str r5, [r4, #0x14]
_08013F9C
	ldr r0, [r4, #0x4c]
	cmp r0, #0
	beq _08013FA8
	bl sub_803DA18
	str r5, [r4, #0x4c]
_08013FA8
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_8013FAE
sub_8013FAE
	push {r3, lr}
	movs r1, #0
	bl sub_80139AC
	add sp, #4
	pop {r3}
	bx r3

	thumb_func_start nullsub_41
nullsub_41
	bx lr

	non_word_aligned_thumb_func_start nullsub_42
nullsub_42
	bx lr

	thumb_func_start nullsub_43
nullsub_43
	bx lr

	non_word_aligned_thumb_func_start nullsub_44
nullsub_44
	bx lr

	thumb_func_start sub_8013FC4
sub_8013FC4
	movs r3, #0
	cmp r1, #0
	push {r4}
	beq _08013FD2
	strh r3, [r0, #0xe]
_08013FCE
	pop {r4}
	bx lr
_08013FD2
	ldrb r1, [r0, #0xc]
	ldr r2, _08013FF0
	lsls r1, r1, #2
	ldr r1, [r2, r1]
	cmp r1, #0
	beq _08013FCE
_08013FDE
	ldrb r2, [r1, #0xc]
	ldrb r4, [r0, #0xc]
	cmp r2, r4
	bne _08013FE8
	strh r3, [r1, #0xe]
_08013FE8
	ldr r1, [r1, #4]
	cmp r1, #0
	bne _08013FDE
	b _08013FCE
	ALIGN
_08013FF0 DCDU gUnknown_03003C40
	END
