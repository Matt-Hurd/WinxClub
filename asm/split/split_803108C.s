	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_03003454
	IMPORT gUnknown_0300345C
	IMPORT gUnknown_03003EA0
	IMPORT gUnknown_03003EA4
	IMPORT __VTABLE__329Critter
	IMPORT sub_80003F4
	IMPORT sub_80007A0
	IMPORT sub_8000914
	IMPORT sub_8000D5A
	IMPORT sub_8002004
	IMPORT GetEWRAMStart
	IMPORT sub_800BE0E
	IMPORT sub_800C1CA
	IMPORT Init_and_add_some_object
	IMPORT GameObj__ctor
	IMPORT WinxClubScriptGroup__04
	IMPORT WinxClubScriptGroup__08
	IMPORT sub_8028C2E
	IMPORT rand
	IMPORT __nw__FUi
	IMPORT sub_803DA18
	IMPORT sub_803DA80

	thumb_func_start Critter__Create
Critter__Create
	push {r4, lr}
	adds r4, r0, #0
	bne _080310A4
	movs r0, #0xb4
	bl __nw__FUi
	adds r4, r0, #0
	bne _080310A4
	adds r0, r4, #0
_0803109E
	pop {r4}
	pop {r3}
	bx r3
_080310A4
	adds r0, r4, #0
	bl Init_and_add_some_object
	ldr r0, _080313D4
	ldr r2, _080313D8
	str r0, [r4]
	movs r0, #7
	strh r0, [r4, #4]
	adds r0, r4, #0
	adds r0, #0x80
	ldr r1, [r0, #4]
	movs r3, #0x1e
	ands r1, r2
	movs r2, #1
	lsls r2, r2, #0x19
	adds r1, r1, r2
	str r1, [r0, #4]
	add r1, pc, #0x314
	str r1, [r4, #0x4c]
	movs r2, #0
	str r2, [r0, #0x28]
	adds r1, r4, #0
	adds r1, #0x70
	str r2, [r0, #0x2c]
	strb r3, [r1, #0xd]
	strb r2, [r1, #0xc]
	movs r2, #1
	ldr r1, [r0, #0xc]
	lsls r2, r2, #0xc
	bics r1, r2
	str r1, [r0, #0xc]
	adds r0, r4, #0
	b _0803109E

	non_word_aligned_thumb_func_start Critter__ctor
Critter__ctor
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _080313D4
	adds r5, r1, #0
	movs r1, #0
	str r0, [r4]
	adds r0, r4, #0
	bl GameObj__ctor
	cmp r5, #0
	beq _08031102
	adds r0, r4, #0
	bl sub_803DA18
_08031102
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	thumb_func_start Critter__04
Critter__04
	push {r3, lr}
	bl WinxClubScriptGroup__04
	add sp, #4
	pop {r3}
	bx r3

	thumb_func_start Critter__08
Critter__08
	push {r3, lr}
	bl WinxClubScriptGroup__08
	add sp, #4
	pop {r3}
	bx r3

	thumb_func_start Critter__38
Critter__38
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	bl GetEWRAMStart
	adds r1, r0, #0
	movs r5, #0
	adds r3, r5, #0
	movs r2, #0
	movs r0, #0x1c
	bl sub_803DA80
	cmp r0, #0
	beq _08031148
	movs r1, #0
	movs r2, #0
	movs r3, #0
	stm r0!, {r1, r2, r3}
	stm r0!, {r1, r2, r3}
	stm r0!, {r3}
	subs r0, #0x1c
_08031148
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

	thumb_func_start Critter__40
Critter__40
	cmp r1, #0x26
	bne _0803118A
	movs r1, #0xf1
	strh r1, [r0, #0xe]
	strh r1, [r0, #0xa]
	strh r1, [r0, #0xc]
	strh r1, [r0, #8]
	movs r1, #0xf0
	strh r1, [r0, #0x1e]
	strh r1, [r0, #0x1a]
	strh r1, [r0, #0x1c]
	strh r1, [r0, #0x18]
	movs r1, #1
	lsls r1, r1, #0xf
	str r1, [r0, #0x70]
_0803118A
	bx lr

	thumb_func_start Critter__44
Critter__44
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r6, #0x80
	adds r5, r0, #0
	ldr r0, [r6, #0x28]
	cmp r0, #0
	bne _0803127E
	ldr r0, [r5, #0x7c]
	ldr r7, _080313F4
	lsls r1, r0, #8
	lsrs r0, r1, #0x18
	beq _080311C8
	lsrs r1, r1, #0x18
	lsls r2, r1, #1
	ldr r0, [r7]
	lsls r1, r1, #2
	adds r3, r2, r0
	movs r2, #0xb
	lsls r2, r2, #7
	adds r2, r3, r2
	ldrh r3, [r2, #0x18]
	adds r0, r1, r0
	movs r1, #9
	lsrs r3, r3, #1
	lsls r3, r3, #1
	strh r3, [r2, #0x18]
	movs r2, #0
	lsls r1, r1, #7
	adds r0, r0, r1
	str r2, [r0, #0x18]
_080311C8
	ldr r1, _080313D8
	ldr r0, [r6, #4]
	movs r3, #1
	ands r0, r1
	str r0, [r6, #4]
	ldr r0, [r6, #0xc]
	lsls r3, r3, #0xc
	bics r0, r3
	lsls r1, r3, #2
	bics r0, r1
	str r0, [r6, #0xc]
	lsrs r0, r1, #3
	str r0, [r6, #0x28]
	str r0, [r6, #0x2c]
	ldr r4, [r5, #0x2c]
	ldr r0, [r4]
	lsls r0, r0, #0x1e
	bpl _08031218
	ldr r0, _080313F8
	ldr r0, [r0]
	bl sub_8002004
	ldr r1, [r4, #0x2c]
	ldr r2, [r0]
	add r3, sp, #0
	subs r1, r1, r2
	asrs r2, r1, #0x1f
	lsrs r2, r2, #0x10
	adds r1, r2, r1
	asrs r1, r1, #0x10
	strh r1, [r3]
	ldr r1, [r4, #0x30]
	ldr r0, [r0, #4]
	subs r0, r1, r0
	asrs r1, r0, #0x1f
	lsrs r1, r1, #0x10
	adds r0, r1, r0
	asrs r0, r0, #0x10
	strh r0, [r3, #2]
	b _08031232
_08031218
	ldr r0, [r4, #0x2c]
	add r3, sp, #0
	asrs r1, r0, #0x1f
	lsrs r1, r1, #0x10
	adds r0, r1, r0
	ldr r1, [r4, #0x30]
	asrs r0, r0, #0x10
	asrs r2, r1, #0x1f
	lsrs r2, r2, #0x10
	adds r1, r2, r1
	asrs r1, r1, #0x10
	strh r0, [r3]
	strh r1, [r3, #2]
_08031232
	ldr r0, [r5, #0x2c]
	adds r4, r5, #0
	adds r0, #0x2c
	ldr r1, [r0]
	ldr r0, [r0, #4]
	adds r4, #0xa0
	str r0, [r4, #4]
	str r1, [r4]
	ldr r0, [r7]
	movs r1, #3
	lsls r1, r1, #9
	adds r0, #0x10
	adds r0, r0, r1
	ldr r0, [r0, #0x1c]
	ldr r0, [r0, #0x58]
	ldr r1, [r6, #0x20]
	cmp r0, r1
	ble _08031260
	add r3, sp, #0
	ldrh r0, [r3]
	NEGS r0, r0
	strh r0, [r4, #0x12]
	b _0803126A
_08031260
	add r3, sp, #0
	ldrh r0, [r3]
	movs r1, #0xf0
	subs r0, r1, r0
	strh r0, [r4, #0x12]
_0803126A
	add r3, sp, #0
	ldrh r0, [r3, #2]
	movs r1, #0xa
	subs r0, r1, r0
	strh r0, [r4, #0x10]
	bl rand
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	b _08031280
_0803127E
	b _080313CC
_08031280
	ldrh r1, [r4, #0x10]
	movs r3, #0x12
	adds r0, r0, r1
	strh r0, [r4, #0x10]
	ldrsh r0, [r4, r3]
	cmp r0, #0
	ble _0803129E
	bl rand
	ldrh r1, [r4, #0x12]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	adds r0, r0, r1
	strh r0, [r4, #0x12]
	b _080312AC
_0803129E
	bl rand
	ldrh r1, [r4, #0x12]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	subs r0, r1, r0
	strh r0, [r4, #0x12]
_080312AC
	ldr r7, _080313FC
	ldr r6, [r5, #0x2c]
	ldr r0, [r7]
	ldr r2, [r6, #0x44]
	movs r1, #0
	mvns r1, r1
	cmp r2, #0
	beq _080312C8
	bl sub_8000D5A
	ldr r0, [r0, #0x24]
	ldr r1, [r6, #0x44]
	subs r0, r1, r0
	asrs r1, r0, #3
_080312C8
	lsls r0, r1, #0x10
	ldrh r1, [r5, #8]
	lsrs r0, r0, #0x10
	cmp r0, r1
	beq _080312DA
	movs r2, #0
	ldr r0, [r5, #0x2c]
	bl sub_80007A0
_080312DA
	movs r3, #0x12
	ldrsh r0, [r4, r3]
	ldr r6, [r5, #0x2c]
	movs r3, #1
	ldrh r2, [r6, #0x28]
	lsls r3, r3, #0xc
	lsrs r1, r0, #0x1f
	lsls r1, r1, #0xc
	bics r2, r3
	orrs r1, r2
	strh r1, [r6, #0x28]
	adds r0, r6, #0
	bl sub_80003F4
	ldr r0, [r6]
	movs r4, #0x80
	lsls r1, r0, #0x1e
	cmp r1, #0
	blt _0803138E
	ldr r1, [r6, #0x3c]
	cmp r1, #0
	blt _08031320
	movs r2, #0xf
	ldr r1, [r6, #0x34]
	lsls r2, r2, #0x14
	cmp r1, r2
	bge _08031320
	ldr r1, [r6, #0x40]
	cmp r1, #0
	blt _08031320
	movs r2, #5
	ldr r1, [r6, #0x38]
	lsls r2, r2, #0x15
	cmp r1, r2
	blt _0803133A
_08031320
	lsls r0, r0, #0x16
	bmi _0803138E
	adds r1, r6, #0
	ldr r0, [r7]
	bl sub_800C1CA
	movs r1, #1
	ldr r0, [r6]
	lsls r1, r1, #9
	orrs r0, r1
	orrs r0, r4
	str r0, [r6]
	b _0803138E
_0803133A
	lsls r0, r0, #0x16
	bpl _08031358
	adds r1, r6, #0
	ldr r0, [r7]
	bl sub_800BE0E
	movs r1, #1
	ldr r0, [r6]
	lsls r1, r1, #9
	bics r0, r1
	movs r1, #0x20
	orrs r0, r1
	movs r1, #0x40
	orrs r0, r1
	str r0, [r6]
_08031358
	ldr r0, [r6, #0x2c]
	asrs r1, r0, #0x1f
	lsrs r1, r1, #0x10
	adds r0, r1, r0
	ldrh r1, [r6, #0x28]
	asrs r0, r0, #0x10
	lsls r0, r0, #0x17
	lsrs r1, r1, #9
	lsls r1, r1, #9
	lsrs r0, r0, #0x17
	orrs r0, r1
	strh r0, [r6, #0x28]
	ldr r0, [r6, #0x30]
	asrs r1, r0, #0x1f
	lsrs r1, r1, #0x10
	adds r0, r1, r0
	ldrh r1, [r6, #0x26]
	asrs r0, r0, #0x10
	lsls r0, r0, #0x18
	lsrs r1, r1, #8
	lsls r1, r1, #8
	lsrs r0, r0, #0x18
	orrs r0, r1
	strh r0, [r6, #0x26]
	ldr r0, [r6]
	orrs r0, r4
	str r0, [r6]
_0803138E
	ldr r0, [r6]
	orrs r0, r4
	str r0, [r6]
	ldr r0, [r5, #0x2c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne _080313A2
	bl sub_8000914
_080313A2
	ldr r1, [r5, #0x2c]
	ldr r2, [r1]
	lsls r0, r2, #0x14
	lsrs r3, r0, #0x1f
	beq _080313BE
	asrs r0, r0, #0x1f
	movs r3, #1
	lsls r3, r3, #0xb
	adds r0, #1
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x14
	bics r2, r3
	orrs r0, r2
	str r0, [r1]
_080313BE
	ldr r0, _08031400
	ldr r1, [r0]
	movs r0, #0x4b
	lsls r0, r0, #6
	adds r0, r0, r1
	bl sub_8028C2E
_080313CC
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
	ALIGN
_080313D4 DCDU __VTABLE__329Critter
_080313D8 DCDU 0xF000FFFF
_080313DC DCDU 0x74697243
_080313E0 DCDU 0x20726574
_080313E4 DCDU 0x69726353
_080313E8 DCDU 0x47207470
_080313EC DCDU 0x70756F72
_080313F0 DCDU 0x00000000
_080313F4 DCDU gUnknown_03003454
_080313F8 DCDU gUnknown_03003EA4
_080313FC DCDU gUnknown_03003EA0
_08031400 DCDU gUnknown_0300345C
	END
