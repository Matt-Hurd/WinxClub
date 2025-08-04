	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_03003454
	IMPORT gUnknown_0300345C
	IMPORT gUnknown_03003468
	IMPORT gUnknown_03003478
	IMPORT gUnknown_03003EA0
	IMPORT gUnknown_03003EB8
	IMPORT gUnknown_0803E4D8
	IMPORT sub_80007A0
	IMPORT sub_8000914
	IMPORT sub_8000D5A
	IMPORT sub_8001432
	IMPORT sub_80050FA
	IMPORT GetEWRAMStart
	IMPORT Init_and_add_some_object
	IMPORT GameObj__ctor
	IMPORT sub_801DA2A
	IMPORT WinxClubScriptGroup__04
	IMPORT WinxClubScriptGroup__08
	IMPORT FewScriptGroups__20
	IMPORT sub_801EBCA
	IMPORT sub_8028C2E
	IMPORT sub_802F926
	IMPORT sub_802FA92
	IMPORT __nw__FUi
	IMPORT sub_803DA18
	IMPORT sub_803DA80
	IMPORT sub_803DA9C

	thumb_func_start Object__Create
Object__Create
	push {r4, lr}
	adds r4, r0, #0
	bne _0802E918
	movs r0, #0xac
	bl __nw__FUi
	adds r4, r0, #0
	bne _0802E918
	adds r0, r4, #0
_0802E912
	pop {r4}
	pop {r3}
	bx r3
_0802E918
	adds r0, r4, #0
	bl Init_and_add_some_object
	ldr r0, _0802EC08
	movs r1, #0x11
	str r0, [r4]
	strh r1, [r4, #4]
	ldr r0, [r4, #0x7c]
	movs r2, #0xf
	lsls r2, r2, #0x18
	bics r0, r2
	str r0, [r4, #0x7c]
	adds r0, r4, #0
	adds r0, #0x80
	str r1, [r0, #0x1c]
	ldr r1, [r0]
	ldr r2, _0802EC0C
	ands r1, r2
	ldr r2, _0802EC10
	adds r1, r1, r2
	str r1, [r0]
	adds r1, r4, #0
	adds r1, #0x70
	movs r2, #0x3c
	strb r2, [r1, #0xd]
	movs r2, #0x14
	strb r2, [r1, #0xc]
	movs r2, #0xa6
	movs r1, #0
	strh r1, [r2, r4]
	movs r2, #1
	ldr r1, [r0, #0xc]
	lsls r2, r2, #0xc
	bics r1, r2
	str r1, [r0, #0xc]
	adds r0, r4, #0
	b _0802E912

	non_word_aligned_thumb_func_start Object__ctor
Object__ctor
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _0802EC08
	adds r5, r1, #0
	movs r1, #0
	str r0, [r4]
	adds r0, r4, #0
	bl GameObj__ctor
	cmp r5, #0
	beq _0802E97E
	adds r0, r4, #0
	bl sub_803DA18
_0802E97E
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	thumb_func_start ObjectScriptGroup__38
ObjectScriptGroup__38
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r0, _0802EC14
	movs r7, #0x80
	ldr r6, [r0]
	add r0, pc, #0x288
	str r0, [sp]
	movs r4, #4
	b _0802E9A0
_0802E996
	adds r4, #1
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	cmp r4, #0x40
	bhs _0802E9AA
_0802E9A0
	lsls r0, r4, #2
	adds r0, r0, r6
	ldr r0, [r0, #0x18]
	cmp r0, #0
	bne _0802E996
_0802E9AA
	ldr r0, _0802EC2C
	ldr r0, [r0]
	bl sub_80050FA
	bl GetEWRAMStart
	adds r1, r0, #0
	movs r0, #0x80
	movs r3, #0
	movs r2, #0
	bl sub_803DA9C
	lsls r1, r4, #2
	adds r7, r1, r6
	str r0, [r7, #0x18]
	movs r0, #0
	bl sub_80050FA
	lsls r0, r4, #1
	movs r2, #0xff
	adds r2, #0x99
	adds r0, r0, r6
	movs r1, #0x80
	strh r1, [r2, r0]
	movs r2, #0xff
	adds r2, #0x19
	movs r1, #0
	strh r1, [r2, r0]
	movs r2, #1
	lsls r2, r2, #9
	adds r2, r0, r2
	strh r1, [r2, #0x18]
	movs r2, #0xb
	lsls r2, r2, #7
	adds r0, r0, r2
	movs r1, #1
	strh r1, [r0, #0x18]
	adds r1, r2, #0
	subs r1, #0xff
	subs r1, #1
	ldr r0, [sp]
	adds r1, r7, r1
	str r0, [r1, #0x18]
	adds r0, r2, #0
	adds r0, #0x90
	adds r0, r6, r0
	ldrb r1, [r0, #8]
	adds r1, #1
	strb r1, [r0, #8]
	movs r1, #0xff
	ldr r0, [r5, #0x7c]
	lsls r1, r1, #0x10
	bics r0, r1
	lsls r1, r4, #0x10
	orrs r0, r1
	str r0, [r5, #0x7c]
	bl GetEWRAMStart
	adds r1, r0, #0
	movs r4, #0
	adds r3, r4, #0
	movs r2, #0
	movs r0, #0x1c
	bl sub_803DA80
	cmp r0, #0
	beq _0802EA3E
	movs r1, #0
	movs r2, #0
	movs r3, #0
	stm r0!, {r1, r2, r3}
	stm r0!, {r1, r2, r3}
	stm r0!, {r3}
	subs r0, #0x1c
_0802EA3E
	strh r4, [r0]
	strh r4, [r0, #2]
	strh r4, [r0, #4]
	strh r4, [r0, #6]
	strh r4, [r0, #8]
	strh r4, [r0, #0xa]
	strh r4, [r0, #0xc]
	strh r4, [r0, #0xe]
	strh r4, [r0, #0x10]
	strh r4, [r0, #0x12]
	movs r1, #3
	strb r1, [r0, #0x14]
	ldr r1, [r5, #0x28]
	movs r2, #1
	str r1, [r0, #0x18]
	str r0, [r5, #0x28]
	ldr r1, [r5, #0x2c]
	lsls r2, r2, #0xa
	ldr r0, [r1]
	bics r0, r2
	lsls r2, r2, #1
	bics r0, r2
	str r0, [r1]
	ldr r0, _0802EC30
	ldr r0, [r0]
	bl sub_8001432
	adds r0, r5, #0
	bl sub_801EBCA
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	thumb_func_start sub_802EA80
sub_802EA80
	push {r4}
	ldr r1, [r1]
	adds r0, #0xa0
	ldrh r2, [r1, #6]
	strh r2, [r0, #8]
	ldrh r3, [r1, #8]
	lsls r4, r2, #0x1b
	lsrs r4, r4, #0x1b
	strh r3, [r0, #2]
	ldrh r3, [r1, #0xa]
	strh r3, [r0, #4]
	movs r3, #1
	lsls r3, r4
	cmp r2, #0
	beq _0802EAB2
	lsrs r2, r2, #5
	ldr r4, _0802EC34
	lsls r2, r2, #2
	ldr r2, [r4, r2]
	ands r2, r3
	bne _0802EAB2
	ldrh r1, [r1, #4]
	strh r1, [r0, #6]
_0802EAAE
	pop {r4}
	bx lr
_0802EAB2
	movs r1, #0
	strh r1, [r0, #6]
	b _0802EAAE

	thumb_func_start ObjectScriptGroup__04
ObjectScriptGroup__04
	push {r3, lr}
	ldr r2, [r1]
	ldrb r2, [r2]
	cmp r2, #0x28
	beq _0802EAD0
	cmp r2, #0x2c
	bne _0802EAD6
	bl sub_801DA2A
_0802EACA
	add sp, #4
	pop {r3}
	bx r3
_0802EAD0
	bl sub_802EA80
	b _0802EACA
_0802EAD6
	bl WinxClubScriptGroup__04
	b _0802EACA

	thumb_func_start ObjectScriptGroup__08
ObjectScriptGroup__08
	push {r3, lr}
	ldr r2, [r1]
	ldrb r2, [r2]
	cmp r2, #0x28
	beq _0802EAF2
	cmp r2, #0x2c
	bne _0802EAF6
	movs r0, #1
_0802EAEC
	add sp, #4
	pop {r3}
	bx r3
_0802EAF2
	movs r0, #1
	b _0802EAEC
_0802EAF6
	bl WinxClubScriptGroup__08
	b _0802EAEC

	thumb_func_start ObjectScriptGroup__44
ObjectScriptGroup__44
	push {r4, r5, r6, r7, lr}
	ldr r5, [r0, #0x2c]
	adds r4, r0, #0
	ldr r0, _0802EC38
	movs r1, #0
	ldr r0, [r0]
	ldr r2, [r5, #0x44]
	mvns r1, r1
	cmp r2, #0
	sub sp, #0x1c
	beq _0802EB1E
	bl sub_8000D5A
	ldr r0, [r0, #0x24]
	ldr r1, [r5, #0x44]
	subs r0, r1, r0
	asrs r1, r0, #3
_0802EB1E
	lsls r0, r1, #0x10
	ldrh r1, [r4, #0x1a]
	lsrs r0, r0, #0x10
	cmp r0, r1
	beq _0802EC00
	adds r5, r4, #0
	adds r5, #0xa0
	ldrh r0, [r5, #6]
	cmp r0, #0
	beq _0802EBDA
	ldr r0, [r4, #0x58]
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x5c]
	str r0, [sp, #0x10]
	ldr r0, [r4, #0x58]
	str r0, [sp, #4]
	ldr r0, [r4, #0x5c]
	str r0, [sp, #8]
	ldr r0, _0802EC14
	ldrh r1, [r5, #6]
	ldr r0, [r0]
	ldr r6, [r4, #0x2c]
	ldr r0, [r0, #0x10]
	lsls r1, r1, #2
	ldr r0, [r0, #0x14]
	ldr r7, [r0, r1]
	ldr r0, [r6, #0x18]
	cmp r0, #0
	bne _0802EB72
	ldr r0, _0802EC38
	ldr r0, [r0]
	bl sub_8000D5A
	ldr r1, [r6, #0x10]
	ldr r0, [r0, #0x14]
	ldr r1, [r1]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r3, r1, #2
	adds r1, r3, r1
	lsls r1, r1, #2
	adds r0, r0, r1
_0802EB72
	ldr r0, [r0, #4]
	add r3, sp, #0
	lsls r1, r0, #0x14
	lsrs r1, r1, #0x18
	lsls r0, r0, #0xc
	lsrs r0, r0, #0x18
	lsls r1, r1, #2
	adds r1, #4
	lsls r0, r0, #2
	adds r0, #4
	strh r1, [r3, #0x18]
	strh r0, [r3, #0x1a]
	ldr r6, [r4, #0x2c]
	ldr r0, [r6, #0x18]
	cmp r0, #0
	bne _0802EBAC
	ldr r0, _0802EC38
	ldr r0, [r0]
	bl sub_8000D5A
	ldr r1, [r6, #0x10]
	ldr r0, [r0, #0x14]
	ldr r1, [r1]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r3, r1, #2
	adds r1, r3, r1
	lsls r1, r1, #2
	adds r0, r0, r1
_0802EBAC
	ldrh r1, [r0, #0x10]
	ldrh r0, [r0, #0x12]
	add r3, sp, #0
	strh r1, [r3, #0x14]
	strh r0, [r3, #0x16]
	ldrh r0, [r5, #2]
	movs r3, #0
	mvns r3, r3
	lsls r0, r0, #0x10
	str r0, [sp, #4]
	ldrh r0, [r5, #4]
	add r1, sp, #0xc
	add r2, sp, #4
	lsls r0, r0, #0x10
	str r0, [sp, #8]
	adds r0, r7, #0
	bl sub_802FA92
	adds r0, r7, #0
	bl sub_802F926
	movs r0, #0
	strh r0, [r5, #6]
_0802EBDA
	ldr r0, _0802EC3C
	ldr r0, [r0]
	ldrb r1, [r5]
	lsls r1, r1, #5
	adds r0, r1, r0
	bl sub_8028C2E
	ldrh r1, [r4, #0x1a]
	ldr r0, [r4, #0x2c]
	movs r2, #0
	bl sub_80007A0
	ldr r0, [r4, #0x2c]
	bl sub_8000914
	movs r0, #0
	adds r4, #0x70
	strb r0, [r4, #0xc]
	strb r0, [r4, #0xd]
_0802EC00
	add sp, #0x1c
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	ALIGN
_0802EC08 DCDU gUnknown_0803E4D8
_0802EC0C DCDU 0xFF8007FF
_0802EC10 DCDU 0x0027E000
_0802EC14 DCDU gUnknown_03003454
_0802EC18 DCDU 0x656A624F
_0802EC1C DCDU 0x53207463
_0802EC20 DCDU 0x70697263
_0802EC24 DCDU 0x72472074
_0802EC28 DCDU 0x0070756F
_0802EC2C DCDU gUnknown_03003468
_0802EC30 DCDU gUnknown_03003EB8
_0802EC34 DCDU gUnknown_03003478
_0802EC38 DCDU gUnknown_03003EA0
_0802EC3C DCDU gUnknown_0300345C

	thumb_func_start ObjectScriptGroup__20
ObjectScriptGroup__20
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	bl FewScriptGroups__20
	bl GetEWRAMStart
	adds r1, r0, #0
	movs r5, #0
	adds r3, r5, #0
	movs r2, #0
	movs r0, #0x1c
	bl sub_803DA80
	cmp r0, #0
	beq _0802EC6C
	movs r1, #0
	movs r2, #0
	movs r3, #0
	stm r0!, {r1, r2, r3}
	stm r0!, {r1, r2, r3}
	stm r0!, {r3}
	subs r0, #0x1c
_0802EC6C
	strh r5, [r0]
	strh r5, [r0, #2]
	strh r5, [r0, #4]
	strh r5, [r0, #6]
	strh r5, [r0, #8]
	strh r5, [r0, #0xa]
	strh r5, [r0, #0xc]
	strh r5, [r0, #0xe]
	strh r5, [r0, #0x10]
	strh r5, [r0, #0x12]
	movs r1, #3
	strb r1, [r0, #0x14]
	ldr r1, [r4, #0x28]
	str r1, [r0, #0x18]
	str r0, [r4, #0x28]
	pop {r3, r4, r5}
	pop {r3}
	bx r3
	END
