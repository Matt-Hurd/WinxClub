	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_03003458
	IMPORT gUnknown_0300345C
	IMPORT gUnknown_03003E98
	IMPORT NonHostileScriptGroups__TakeDamage
	IMPORT sub_801F450
	IMPORT sub_8028C2E
	IMPORT sub_802B0CA
	IMPORT __call_via_r1

	thumb_func_start Monster__Intersect
Monster__Intersect
	push {r0, r1, r2, r3, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r6, #0x80
	adds r4, r0, #0
	ldr r0, [r6, #0x1c]
	adds r5, r1, #0
	cmp r0, #0xf
	sub sp, #4
	beq _08030F02
	cmp r0, #0x10
	bne _08030F0C
_08030F02
	movs r0, #0
_08030F04
	add sp, #0x14
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
_08030F0C
	ldr r0, [r6, #0xc]
	movs r7, #0
	lsls r0, r0, #1
	lsrs r0, r0, #0x14
	cmp r0, #0
	beq _08030F2C
	adds r0, r4, #0
	bl NonHostileScriptGroups__TakeDamage
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #1
	str r0, [r4, #0x7c]
	str r7, [r4, #0x34]
	movs r0, #0
	b _08030F04
_08030F2C
	ldrh r0, [r5, #4]
	cmp r0, #0xb
	bne _08030F36
	movs r0, #0
	b _08030F04
_08030F36
	ldr r0, [r4, #0x68]
	cmp r0, #0
	bne _08030F4E
	ldr r0, [r4, #0x6c]
	cmp r0, #0
	bne _08030F4E
	movs r2, #3
	lsls r2, r2, #0xf
	adds r1, r5, #0
	adds r0, r4, #0
	bl sub_801F450
_08030F4E
	movs r3, #0x97
	ldrsb r0, [r5, r3]
	ldr r1, [sp, #0xc]
	adds r0, r0, r1
	subs r0, #2
	cmp r0, #6
	bhs _08030FD8
	add r3, pc, #0x4
	ldrb r3, [r3, r0]
	lsls r3, r3, #1
	add pc, r3
_08030F64
	DCB 0x02
_08030F65
	DCB 0x02
_08030F66
	DCB 0x35
_08030F67
	DCB 0x06
_08030F68
	DCB 0x13
_08030F69
	DCB 0x06
loc_8030f6a
	adds r0, r4, #0
	bl NonHostileScriptGroups__TakeDamage
	b _08030FDE
loc_8030f72
	adds r0, r4, #0
	adds r0, #0xb0
	ldrb r1, [r0, #6]
	ldr r2, [sp, #0x10]
	subs r1, r1, r2
	strb r1, [r0, #6]
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x30]
	adds r1, r2, r1
	bl __call_via_r1
	b _08030FDE
loc_8030f8c
	ldr r0, _0803107C
	ldr r0, [r0]
	ldr r0, [r0, #0x20]
	adds r0, #0xa0
	ldr r1, [r0, #4]
	cmp r1, #0
	beq _08030FC8
	ldr r1, [r0, #0x34]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1d
	cmp r1, #1
	bne _08030FC8
	ldr r1, [r0]
	ldr r2, [r1, #0x1c]
	adds r1, r2, r1
	bl __call_via_r1
	adds r1, r0, #0
	adds r0, r4, #0
	adds r0, #0xb0
	ldrb r2, [r0, #6]
	subs r1, r2, r1
	strb r1, [r0, #6]
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x30]
	adds r1, r2, r1
	bl __call_via_r1
	b _08030FDE
_08030FC8
	adds r0, r4, #0
	bl NonHostileScriptGroups__TakeDamage
	b _08030FDE
loc_8030fd0
	adds r0, r4, #0
	bl NonHostileScriptGroups__TakeDamage
	b _08030FDE
_08030FD8
	adds r0, r4, #0
	bl NonHostileScriptGroups__TakeDamage
_08030FDE
	movs r0, #0xb6
	ldrsb r0, [r0, r4]
	cmp r0, #0
	bgt _08031012
	movs r0, #0xa8
	ldrh r0, [r0, r4]
	strh r0, [r4, #0x1e]
	adds r1, r0, #1
	strh r1, [r4, #0x1a]
	adds r0, #2
	strh r0, [r4, #0x1c]
	strh r0, [r4, #0x18]
	ldr r0, _08031080
	ldr r0, [r0]
	ldr r1, [r6, #0x30]
	lsls r1, r1, #5
	lsrs r1, r1, #0x18
	adds r1, #1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x13
	adds r0, r1, r0
	bl sub_8028C2E
	adds r0, r4, #0
	bl sub_802B0CA
_08031012
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #1
	str r0, [r4, #0x7c]
	str r7, [r4, #0x34]
	movs r0, #1
	b _08030F04

	thumb_func_start Monster_TakeDamage
Monster_TakeDamage
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x80
	ldr r1, [r0, #0xc]
	ldr r2, _08031084
	ands r1, r2
	movs r2, #0xf
	lsls r2, r2, #0x15
	adds r1, r1, r2
	str r1, [r0, #0xc]
	ldr r1, _08031080
	ldr r1, [r1]
	ldr r0, [r0, #0x30]
	lsls r0, r0, #5
	lsrs r0, r0, #0x18
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x13
	adds r0, r0, r1
	bl sub_8028C2E
	adds r0, r4, #0
	bl NonHostileScriptGroups__TakeDamage
	pop {r4}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start Monster__50
Monster__50
	ldr r1, _08031088
	push {r3, lr}
	ldr r1, [r1]
	ldr r1, [r1, #8]
	lsls r1, r1, #0x1f
	bpl _08031076
	ldr r1, _08031080
	adds r0, #0x80
	ldr r1, [r1]
	ldr r0, [r0, #0x30]
	lsls r0, r0, #5
	lsrs r0, r0, #0x18
	lsls r0, r0, #5
	adds r0, r0, r1
	bl sub_8028C2E
_08031076
	add sp, #4
	pop {r3}
	bx r3
	ALIGN
_0803107C DCDU gUnknown_03003458
_08031080 DCDU gUnknown_0300345C
_08031084 DCDU 0x8007FFFF
_08031088 DCDU gUnknown_03003E98
	END
