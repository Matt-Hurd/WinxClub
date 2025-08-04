	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT __VTABLE__333__vftable_GenericObject
	IMPORT sub_80007A0
	IMPORT SetNextGlobalFunction
	IMPORT Init_and_add_some_object
	IMPORT GameObj__ctor
	IMPORT sub_801DB90
	IMPORT DefaultScriptGroups__04
	IMPORT DefaultScriptGroups__08
	IMPORT __nw__FUi
	IMPORT sub_803DA18

	thumb_func_start MaybeHandleTransitionToArea
MaybeHandleTransitionToArea
	push {r3, lr}
	movs r0, #0x10
	bl SetNextGlobalFunction
	add sp, #4
	pop {r3}
	bx r3
	ALIGN

	thumb_func_start GenericObject__Create
GenericObject__Create
	push {r4, lr}
	adds r4, r0, #0
	bne _0802603C
	movs r0, #0xa4
	bl __nw__FUi
	adds r4, r0, #0
	bne _0802603C
	adds r0, r4, #0
_08026036
	pop {r4}
	pop {r3}
	bx r3
_0802603C
	adds r0, r4, #0
	bl Init_and_add_some_object
	ldr r0, _080262AC
	movs r1, #0x3c
	str r0, [r4]
	add r0, pc, #0x264
	str r0, [r4, #0x4c]
	movs r0, #0x10
	strh r0, [r4, #4]
	adds r0, r4, #0
	adds r0, #0x70
	strb r1, [r0, #0xd]
	movs r1, #0x14
	strb r1, [r0, #0xc]
	adds r0, #0x10
	ldr r1, [r0, #4]
	ldr r2, _080262C8
	ands r1, r2
	str r1, [r0, #4]
	ldr r1, [r4, #0x7c]
	movs r2, #0xf
	lsls r2, r2, #0x18
	bics r1, r2
	str r1, [r4, #0x7c]
	movs r1, #0x11
	str r1, [r0, #0x1c]
	ldr r1, [r0, #0xc]
	movs r2, #1
	lsls r2, r2, #0xc
	bics r1, r2
	str r1, [r0, #0xc]
	movs r0, #8
	movs r1, #0x97
	strb r0, [r1, r4]
	movs r0, #0xcf
	movs r1, #0xa0
	strh r0, [r1, r4]
	adds r0, r4, #0
	b _08026036

	thumb_func_start GenericObject__ctor
GenericObject__ctor
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _080262AC
	adds r5, r1, #0
	movs r1, #0
	str r0, [r4]
	adds r0, r4, #0
	bl GameObj__ctor
	cmp r5, #0
	beq _080260A8
	adds r0, r4, #0
	bl sub_803DA18
_080260A8
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_80260AE
sub_80260AE
	push {r4, lr}
	adds r4, r0, #0
	bl sub_801DB90
	adds r4, #0x80
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	bne _080260C2
	movs r0, #0x13
	str r0, [r4, #0x1c]
_080260C2
	pop {r4}
	pop {r3}
	bx r3

	thumb_func_start sub_80260C8
sub_80260C8
	push {r4}
	ldr r1, [r1]
	movs r3, #0
	ldrb r2, [r1, #5]
	lsls r2, r2, #0x10
	str r2, [r0, #0x78]
	adds r2, r0, #0
	adds r2, #0x80
	str r3, [r2, #0x1c]
	ldrb r4, [r1, #4]
	cmp r4, #0xc
	bhs _08026166
	add r3, pc, #0x4
	ldrb r3, [r3, r4]
	lsls r3, r3, #1
	add pc, r3
_080260E8
	DCB 0x05
_080260E9
	DCB 0x05
_080260EA
	DCB 0x05
_080260EB
	DCB 0x05
_080260EC
	DCB 0x12
_080260ED
	DCB 0x1B
_080260EE
	DCB 0x27
_080260EF
	DCB 0x33
_080260F0
	DCB 0x3F
_080260F1
	DCB 0x48
_080260F2
	DCB 0x54
_080260F3
	DCB 0x60
loc_80260f4
	ldrb r1, [r1, #4]
	movs r4, #0xf
	ldr r3, [r0, #0x7c]
	lsls r4, r4, #0x18
	lsls r1, r1, #0x1c
	lsrs r1, r1, #4
	bics r3, r4
	orrs r1, r3
	str r1, [r0, #0x7c]
	movs r1, #0xff
	adds r0, #0x90
	strb r1, [r0, #8]
	b _08026166
loc_802610e
	movs r3, #0xf
	ldr r1, [r0, #0x7c]
	lsls r3, r3, #0x18
	bics r1, r3
	str r1, [r0, #0x7c]
	movs r1, #3
	adds r0, #0x90
	strb r1, [r0, #8]
	b _08026166
loc_8026120
	movs r3, #0xf
	ldr r1, [r0, #0x7c]
	lsls r3, r3, #0x18
	bics r1, r3
	movs r3, #1
	lsls r3, r3, #0x18
	adds r1, r1, r3
	str r1, [r0, #0x7c]
	movs r1, #2
	adds r0, #0x90
	strb r1, [r0, #8]
	b _08026166
loc_8026138
	movs r3, #0xf
	ldr r1, [r0, #0x7c]
	lsls r3, r3, #0x18
	bics r1, r3
	movs r3, #1
	lsls r3, r3, #0x19
	adds r1, r1, r3
	str r1, [r0, #0x7c]
	movs r1, #3
	adds r0, #0x90
	strb r1, [r0, #8]
	b _08026166
loc_8026150
	movs r3, #0xf
	ldr r1, [r0, #0x7c]
	lsls r3, r3, #0x18
	bics r1, r3
	movs r3, #3
	lsls r3, r3, #0x18
	adds r1, r1, r3
	str r1, [r0, #0x7c]
	movs r1, #0
	adds r0, #0x90
	strb r1, [r0, #8]
_08026166
	b _080261C0
loc_8026168
	movs r3, #0xf
	ldr r1, [r0, #0x7c]
	lsls r3, r3, #0x18
	bics r1, r3
	str r1, [r0, #0x7c]
	movs r1, #1
	adds r0, #0x90
	strb r1, [r0, #8]
	b _080261C0
loc_802617a
	movs r3, #0xf
	ldr r1, [r0, #0x7c]
	lsls r3, r3, #0x18
	bics r1, r3
	movs r3, #1
	lsls r3, r3, #0x18
	adds r1, r1, r3
	str r1, [r0, #0x7c]
	movs r1, #0
	adds r0, #0x90
	strb r1, [r0, #8]
	b _080261C0
loc_8026192
	movs r3, #0xf
	ldr r1, [r0, #0x7c]
	lsls r3, r3, #0x18
	bics r1, r3
	movs r3, #1
	lsls r3, r3, #0x19
	adds r1, r1, r3
	str r1, [r0, #0x7c]
	movs r1, #1
	adds r0, #0x90
	strb r1, [r0, #8]
	b _080261C0
loc_80261aa
	movs r3, #0xf
	ldr r1, [r0, #0x7c]
	lsls r3, r3, #0x18
	bics r1, r3
	movs r3, #3
	lsls r3, r3, #0x18
	adds r1, r1, r3
	str r1, [r0, #0x7c]
	movs r1, #2
	adds r0, #0x90
	strb r1, [r0, #8]
_080261C0
	movs r0, #0x13
	str r0, [r2, #0x1c]
	pop {r4}
	bx lr

	thumb_func_start sub_80261C8
sub_80261C8
	push {r3, lr}
	ldr r1, [r1]
	movs r3, #0xf
	ldrh r1, [r1, #4]
	ldr r2, [r0, #0x7c]
	lsls r3, r3, #0x18
	lsls r1, r1, #0x1c
	lsrs r1, r1, #4
	bics r2, r3
	orrs r1, r2
	str r1, [r0, #0x7c]
	lsls r1, r1, #4
	lsrs r1, r1, #0x1c
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r1, [r1, #8]
	ldr r0, [r0, #0x2c]
	movs r2, #0
	bl sub_80007A0
	add sp, #4
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start GenericObject__04
GenericObject__04
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r1]
	ldrb r2, [r0]
	cmp r2, #0x1c
	beq _08026234
	cmp r2, #0x1f
	beq _0802623C
	cmp r2, #0x26
	bne _08026250
	ldrh r0, [r0, #4]
	movs r2, #0xf
	ldr r1, [r4, #0x7c]
	lsls r2, r2, #0x18
	lsls r0, r0, #0x1c
	lsrs r0, r0, #4
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x7c]
	lsls r0, r0, #4
	lsrs r0, r0, #0x1c
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r1, [r0, #8]
	ldr r0, [r4, #0x2c]
	movs r2, #0
	bl sub_80007A0
_0802622E
	pop {r4}
	pop {r3}
	bx r3
_08026234
	adds r0, r4, #0
	bl sub_80260C8
	b _0802622E
_0802623C
	adds r0, r4, #0
	bl sub_801DB90
	adds r4, #0x80
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	bne _0802622E
	movs r0, #0x13
	str r0, [r4, #0x1c]
	b _0802622E
_08026250
	adds r0, r4, #0
	bl DefaultScriptGroups__04
	b _0802622E

	thumb_func_start GenericObject__08
GenericObject__08
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r1]
	movs r5, #1
	ldrb r0, [r0]
	cmp r0, #0x1c
	beq _08026276
	cmp r0, #0x1f
	beq _08026282
	cmp r0, #0x26
	bne _080262A2
	movs r0, #1
_08026270
	pop {r3, r4, r5}
	pop {r3}
	bx r3
_08026276
	ldr r1, [r4, #0x78]
	adds r0, r5, #0
	cmp r1, #0
	beq _08026270
	movs r0, #0
	b _08026270
_08026282
	adds r0, r4, #0
	bl sub_801DB90
	adds r0, r4, #0
	adds r0, #0x80
	ldr r1, [r0, #0x1c]
	cmp r1, #0
	bne _08026296
	movs r1, #0x13
	str r1, [r0, #0x1c]
_08026296
	ldr r1, [r4, #0x78]
	adds r0, r5, #0
	cmp r1, #0
	beq _08026270
	movs r0, #0
	b _08026270
_080262A2
	adds r0, r4, #0
	bl DefaultScriptGroups__08
	b _08026270
	ALIGN
_080262AC DCDU __VTABLE__333__vftable_GenericObject
_080262B0 DCDU 0x656E6547
_080262B4 DCDU 0x20636972
_080262B8 DCDU 0x656A624F
_080262BC DCDU 0x47207463
_080262C0 DCDU 0x70756F72
_080262C4 DCDU 0x00000000
_080262C8 DCDU 0xF000FFFF
	END
