	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_0300334A
	IMPORT gUnknown_03003450
	IMPORT gUnknown_03003458
	IMPORT gUnknown_0803EA90
	IMPORT sub_8002004
	IMPORT Init_and_add_some_object
	IMPORT sub_801D714
	IMPORT sub_8024E54
	IMPORT sub_8024EBC
	IMPORT __call_via_r1
	IMPORT __nw__FUi
	IMPORT sub_803DA18

	thumb_func_start sub_8033318
sub_8033318
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	bne _08033332
	movs r0, #0xff
	adds r0, #1
	bl __nw__FUi
	adds r4, r0, #0
	bne _08033332
	adds r0, r4, #0
_0803332C
	pop {r4, r5, r6}
	pop {r3}
	bx r3
_08033332
	adds r0, r4, #0
	bl Init_and_add_some_object
	ldr r0, _08033618
	adds r5, r4, #0
	str r0, [r4]
	adds r5, #0x80
	movs r6, #0
	str r6, [r5, #0x20]
	adds r0, r4, #0
	adds r0, #0xa8
	str r6, [r5, #0x24]
	bl sub_8024E54
	adds r0, r4, #0
	adds r0, #0xc0
	ldr r1, [r0, #0x3c]
	movs r2, #8
	lsrs r1, r1, #3
	lsls r1, r1, #3
	bics r1, r2
	movs r2, #0x30
	bics r1, r2
	movs r2, #0x3f
	lsls r2, r2, #6
	bics r1, r2
	str r1, [r0, #0x3c]
	adds r0, #0x30
	strb r6, [r0, #0xe]
	movs r1, #2
	strb r1, [r0, #0xf]
	add r0, pc, #0x2A8
	str r0, [r4, #0x4c]
	movs r0, #9
	strh r0, [r4, #4]
	movs r0, #4
	movs r1, #0x97
	strb r0, [r1, r4]
	ldr r0, [r5, #4]
	ldr r1, _08033634
	ands r0, r1
	movs r1, #1
	lsls r1, r1, #0x19
	adds r0, r0, r1
	str r0, [r5, #4]
	lsrs r0, r1, #0xf
	str r0, [r4, #0x70]
	ldr r0, [r5, #0xc]
	ldr r1, _08033638
	lsrs r0, r0, #0xc
	lsls r0, r0, #0xc
	adds r0, r0, r1
	movs r1, #0xf
	lsls r1, r1, #0xf
	bics r0, r1
	movs r1, #1
	lsls r1, r1, #0x11
	adds r0, r0, r1
	lsrs r1, r1, #5
	bics r0, r1
	str r0, [r5, #0xc]
	adds r0, r4, #0
	b _0803332C

	thumb_func_start sub_80333B0
sub_80333B0
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _08033618
	adds r5, r1, #0
	str r0, [r4]
	adds r0, r4, #0
	movs r1, #0
	adds r0, #0xa8
	bl sub_8024EBC
	movs r1, #0
	adds r0, r4, #0
	bl sub_801D714
	cmp r5, #0
	beq _080333D6
	adds r0, r4, #0
	bl sub_803DA18
_080333D6
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	thumb_func_start sub_80333DC
sub_80333DC
	push {r0, r1, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r5, #0x80
	adds r4, r0, #0
	ldr r0, [r5, #0x14]
	movs r1, #1
	lsls r1, r1, #0xb
	orrs r0, r1
	sub sp, #4
	str r0, [r5, #0x14]
	adds r0, r4, #0
	adds r0, #0xc0
	ldr r1, [r0, #0x3c]
	movs r2, #0x30
	bics r1, r2
	ldr r2, [sp, #8]
	lsls r2, r2, #0x1e
	lsrs r2, r2, #0x1a
	orrs r1, r2
	str r1, [r0, #0x3c]
	ldr r0, _0803363C
	movs r2, #5
	ldr r0, [r0]
	lsls r2, r2, #8
	ldr r1, [r0, #0x20]
	adds r2, r0, r2
	str r1, [r5, #0x20]
	ldr r2, [r2, #0x1c]
	lsls r2, r2, #5
	lsrs r2, r2, #0x19
	lsls r2, r2, #2
	adds r0, r2, r0
	ldr r0, [r0, #0x20]
	str r0, [r5, #0x24]
	ldr r3, [r1, #0x58]
	ldr r0, _08033640
	str r3, [sp]
	ldr r6, [r1, #0x5c]
	ldr r0, [r0]
	bl sub_8002004
	ldr r1, [r0]
	ldr r0, [r0, #4]
	movs r3, #0x19
	subs r2, r6, r0
	movs r6, #0xf
	lsls r6, r6, #0x18
	lsrs r7, r6, #5
	lsls r3, r3, #0x12
	cmp r2, r3
	ble _08033456
	lsls r2, r3, #1
	ldr r3, [r4, #0x7c]
	adds r2, r0, r2
	bics r3, r6
	movs r6, #3
	lsls r6, r6, #0x18
	adds r0, r0, r7
	adds r3, r3, r6
	str r3, [r4, #0x7c]
	b _0803346E
_08033456
	movs r2, #5
	lsls r2, r2, #0x13
	movs r3, #0x23
	lsls r3, r3, #0x11
	subs r2, r0, r2
	adds r0, r0, r3
	ldr r3, [r4, #0x7c]
	bics r3, r6
	movs r6, #1
	lsls r6, r6, #0x18
	adds r3, r3, r6
	str r3, [r4, #0x7c]
_0803346E
	ldr r3, [sp]
	subs r6, r3, r1
	adds r3, r4, #0
	adds r3, #0x90
	cmp r6, r7
	ble _0803348C
	movs r6, #0x23
	lsls r6, r6, #0x13
	movs r7, #0x2d
	lsls r7, r7, #0x12
	adds r6, r1, r6
	adds r1, r1, r7
	movs r7, #2
	strb r7, [r3, #8]
	b _0803349C
_0803348C
	movs r6, #5
	lsls r6, r6, #0x13
	movs r7, #0xf
	lsls r7, r7, #0x12
	subs r6, r1, r6
	adds r1, r1, r7
	movs r7, #0
	strb r7, [r3, #8]
_0803349C
	cmp r6, #0
	bgt _080334A4
	movs r6, #0xf
	lsls r6, r6, #0x11
_080334A4
	cmp r2, #0
	bgt _080334AC
	movs r2, #0xf
	lsls r2, r2, #0x11
_080334AC
	ldr r3, _0803363C
	ldr r7, [r3]
	ldr r3, [r7, #0x14]
	cmp r6, r3
	blt _080334BC
	movs r6, #0xf
	lsls r6, r6, #0x11
	subs r6, r3, r6
_080334BC
	ldr r3, [r7, #0x18]
	cmp r2, r3
	blt _080334C8
	movs r2, #0xf
	lsls r2, r2, #0x11
	subs r2, r3, r2
_080334C8
	str r2, [r5, #0x70]
	str r6, [r5, #0x6c]
	str r2, [r4, #0x5c]
	str r6, [r4, #0x58]
	str r0, [r5, #0x78]
	movs r0, #3
	lsls r0, r0, #0x10
	str r1, [r5, #0x74]
	str r0, [r4, #0x70]
	movs r0, #1
	lsls r0, r0, #0x17
	str r0, [r4, #0x78]
	movs r7, #0
	str r7, [r5, #0x1c]
	ldr r2, [sp, #8]
	movs r1, #0x16
	ldr r3, _08033644
	muls r1, r2
	ldrh r0, [r3, r1]
	strh r0, [r4, #0xe]
	adds r2, r0, #1
	strh r2, [r4, #0xa]
	adds r0, #2
	strh r0, [r4, #0xc]
	strh r0, [r4, #8]
	adds r0, r1, r3
	ldrh r0, [r0, #2]
	strh r0, [r4, #0x1e]
	adds r1, r0, #1
	strh r1, [r4, #0x1a]
	adds r0, #2
	strh r0, [r4, #0x1c]
	strh r0, [r4, #0x18]
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_8033512
sub_8033512
	push {r4, r5, r6, r7}
	ldr r2, [r1]
	ldr r3, [r0, #0x58]
	ldr r1, [r1, #4]
	subs r2, r2, r3
	ldr r3, [r0, #0x5c]
	NEGS r4, r2
	subs r3, r1, r3
	cmp r2, #0
	blt _08033528
	adds r4, r2, #0
_08033528
	NEGS r5, r3
	cmp r3, #0
	blt _08033530
	adds r5, r3, #0
_08033530
	movs r1, #0xf
	lsls r1, r1, #0x18
	ldr r7, [r0, #0x7c]
	mvns r1, r1
	movs r6, #1
	lsls r6, r6, #0x19
	ands r1, r7
	cmp r4, r5
	ble _08033552
	cmp r2, #0
	ble _0803354C
	str r1, [r0, #0x7c]
_08033548
	pop {r4, r5, r6, r7}
	bx lr
_0803354C
	adds r1, r1, r6
	str r1, [r0, #0x7c]
	b _08033548
_08033552
	cmp r5, r4
	ble _0803356E
	cmp r3, #0
	ble _08033564
	movs r2, #1
	lsls r2, r2, #0x18
	adds r1, r1, r2
	str r1, [r0, #0x7c]
	b _08033548
_08033564
	movs r2, #3
	lsls r2, r2, #0x18
	adds r1, r1, r2
	str r1, [r0, #0x7c]
	b _08033548
_0803356E
	cmp r2, #0
	ble _08033576
	str r1, [r0, #0x7c]
	b _08033548
_08033576
	adds r1, r1, r6
	str r1, [r0, #0x7c]
	b _08033548

	thumb_func_start sub_803357C
sub_803357C
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	adds r0, #0xa8
	ldr r1, [r0, #4]
	cmp r1, #0
	beq _080335AA
	ldr r1, [r0]
	adds r5, r0, #0
	ldr r2, [r1, #0x10]
	adds r1, r2, r1
	bl __call_via_r1
	movs r0, #1
	ldr r1, [r5, #0x34]
	lsls r0, r0, #0x13
	bics r1, r0
	str r1, [r5, #0x34]
	ldr r0, [r5, #0x40]
	lsrs r1, r0, #1
	ldr r0, _08033648
	lsls r1, r1, #1
	ands r1, r0
	str r1, [r5, #0x40]
_080335AA
	adds r0, r4, #0
	adds r0, #0x80
	ldr r1, [r0, #0x6c]
	ldr r2, [r0, #0x70]
	str r1, [r0, #0x74]
	movs r1, #3
	lsls r1, r1, #0x10
	str r2, [r0, #0x78]
	str r1, [r4, #0x70]
	movs r1, #1
	lsls r1, r1, #0x17
	str r1, [r4, #0x78]
	movs r1, #0
	adds r5, r4, #0
	adds r5, #0xc0
	str r1, [r0, #0x1c]
	ldr r0, [r5, #0x3c]
	movs r1, #8
	orrs r0, r1
	adds r1, r4, #0
	adds r1, #0xf4
	str r0, [r5, #0x3c]
	adds r0, r4, #0
	bl sub_8033512
	ldr r0, [r4, #0x7c]
	movs r1, #0x98
	lsls r0, r0, #4
	lsrs r0, r0, #0x1c
	strb r0, [r1, r4]
	ldr r0, [r5, #0x3c]
	movs r1, #0x16
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	ldr r3, _08033644
	muls r1, r0
	ldrh r0, [r3, r1]
	strh r0, [r4, #0xe]
	adds r2, r0, #1
	strh r2, [r4, #0xa]
	adds r0, #2
	strh r0, [r4, #0xc]
	strh r0, [r4, #8]
	adds r0, r1, r3
	ldrh r0, [r0, #2]
	strh r0, [r4, #0x1e]
	adds r1, r0, #1
	strh r1, [r4, #0x1a]
	adds r0, #2
	strh r0, [r4, #0x1c]
	strh r0, [r4, #0x18]
	pop {r3, r4, r5}
	pop {r3}
	bx r3
	ALIGN
_08033618 DCDU gUnknown_0803EA90
_0803361C DCDU 0x786E6957
_08033620 DCDU 0x62756C43
_08033624 DCDU 0x72635320
_08033628 DCDU 0x20747069
_0803362C DCDU 0x756F7247
_08033630 DCDU 0x00000070
_08033634 DCDU 0xF000FFFF
_08033638 DCDU 0x00000501
_0803363C DCDU gUnknown_03003458
_08033640 DCDU gUnknown_03003450
_08033644 DCDU gUnknown_0300334A
_08033648 DCDU 0xFFFE0001
	END
