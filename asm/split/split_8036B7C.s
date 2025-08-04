	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_0300345C
	IMPORT gUnknown_03003E98
	IMPORT GetEWRAMStart
	IMPORT FewScriptGroups__20
	IMPORT NonHostileScriptGroups__TakeDamage
	IMPORT sub_8028BE4
	IMPORT sub_8028C2E
	IMPORT __call_via_r1
	IMPORT sub_803DA80

	thumb_func_start sub_8036B7C
sub_8036B7C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, _08036CDC
	adds r5, r1, #0
	movs r1, #0xb0
	ldr r0, [r0]
	ldr r1, [r1, r4]
	adds r6, r2, #0
	lsls r1, r1, #5
	lsrs r1, r1, #0x18
	adds r1, #2
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x13
	adds r0, r1, r0
	bl sub_8028BE4
	cmp r0, #0
	beq _08036BA8
	movs r0, #0
_08036BA2
	pop {r4, r5, r6}
	pop {r3}
	bx r3
_08036BA8
	movs r3, #0x97
	ldrsb r0, [r5, r3]
	adds r0, r0, r6
	subs r0, #2
	cmp r0, #6
	bhs _08036BE6
	add r3, pc, #0x4
	ldrb r3, [r3, r0]
	lsls r3, r3, #1
	add pc, r3
_08036BBC
	DCB 0x02
_08036BBD
	DCB 0x02
_08036BBE
	DCB 0x0D
_08036BBF
	DCB 0x06
_08036BC0
	DCB 0x0D
_08036BC1
	DCB 0x06
loc_8036bc2
	adds r0, r4, #0
	bl NonHostileScriptGroups__TakeDamage
	b _08036BEC
loc_8036bca
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x30]
	adds r1, r2, r1
	bl __call_via_r1
	b _08036BEC
loc_8036bd8
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x30]
	adds r1, r2, r1
	bl __call_via_r1
	b _08036BEC
_08036BE6
	adds r0, r4, #0
	bl NonHostileScriptGroups__TakeDamage
_08036BEC
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #1
	str r0, [r4, #0x7c]
	movs r0, #0
	str r0, [r4, #0x34]
	movs r0, #1
	b _08036BA2

	thumb_func_start sub_8036BFC
sub_8036BFC
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _08036CDC
	movs r1, #0xb0
	ldr r0, [r0]
	ldr r1, [r1, r4]
	lsls r1, r1, #5
	lsrs r1, r1, #0x18
	adds r1, #2
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x13
	adds r0, r1, r0
	bl sub_8028C2E
	adds r0, r4, #0
	bl NonHostileScriptGroups__TakeDamage
	pop {r4}
	pop {r3}
	bx r3

	thumb_func_start sub_8036C24
sub_8036C24
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	bl FewScriptGroups__20
	movs r0, #0xa4
	ldr r0, [r0, r4]
	ldr r1, [r4, #0x2c]
	ldr r2, [r4, #0x5c]
	NEGS r0, r0
	adds r6, r2, r0
	ldr r2, [r1, #0x2c]
	ldr r3, [r4, #0x58]
	ldr r7, [r1, #0x34]
	subs r5, r3, r2
	ldr r2, [r1, #0x30]
	adds r7, r7, r5
	str r7, [r1, #0x34]
	ldr r7, [r1, #0x38]
	subs r2, r6, r2
	adds r7, r7, r2
	adds r0, r1, #0
	adds r0, #0x34
	str r7, [r1, #0x38]
	ldr r7, [r0, #8]
	adds r5, r7, r5
	str r5, [r0, #8]
	ldr r5, [r0, #0xc]
	adds r2, r5, r2
	str r2, [r0, #0xc]
	str r3, [r1, #0x2c]
	str r6, [r1, #0x30]
	ldr r0, [r1]
	movs r2, #0xff
	adds r2, #1
	orrs r0, r2
	str r0, [r1]
	bl GetEWRAMStart
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0x1c
	bl sub_803DA80
	cmp r0, #0
	beq _08036C8E
	movs r1, #0
	movs r2, #0
	movs r3, #0
	stm r0!, {r1, r2, r3}
	stm r0!, {r1, r2, r3}
	stm r0!, {r3}
	subs r0, #0x1c
_08036C8E
	movs r1, #0
	strh r1, [r0]
	strh r1, [r0, #2]
	strh r1, [r0, #4]
	strh r1, [r0, #6]
	strh r1, [r0, #8]
	strh r1, [r0, #0xa]
	strh r1, [r0, #0xc]
	strh r1, [r0, #0xe]
	strh r1, [r0, #0x10]
	strh r1, [r0, #0x12]
	movs r1, #3
	strb r1, [r0, #0x14]
	ldr r1, [r4, #0x28]
	str r1, [r0, #0x18]
	str r0, [r4, #0x28]
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	thumb_func_start sub_8036CB4
sub_8036CB4
	ldr r1, _08036CE0
	push {r3, lr}
	ldr r1, [r1]
	ldr r1, [r1, #8]
	lsls r1, r1, #0x1f
	bpl _08036CD4
	ldr r1, _08036CDC
	adds r0, #0x80
	ldr r1, [r1]
	ldr r0, [r0, #0x30]
	lsls r0, r0, #5
	lsrs r0, r0, #0x18
	lsls r0, r0, #5
	adds r0, r0, r1
	bl sub_8028C2E
_08036CD4
	add sp, #4
	pop {r3}
	bx r3
	ALIGN
_08036CDC DCDU gUnknown_0300345C
_08036CE0 DCDU gUnknown_03003E98
	END
