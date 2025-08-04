	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT __VTABLE__324ToggleObjectGroup
	IMPORT GetEWRAMStart
	IMPORT Init_and_add_some_object
	IMPORT GameObj__ctor
	IMPORT sub_801DB90
	IMPORT WinxClubScriptGroup__04
	IMPORT WinxClubScriptGroup__08
	IMPORT __call_via_r2
	IMPORT __nw__FUi
	IMPORT sub_803DA18
	IMPORT sub_803DA80

	thumb_func_start ToggleObject__Create
ToggleObject__Create
	push {r4, lr}
	adds r4, r0, #0
	bne _08035498
	movs r0, #0xac
	bl __nw__FUi
	adds r4, r0, #0
	bne _08035498
	adds r0, r4, #0
_08035492
	pop {r4}
	pop {r3}
	bx r3
_08035498
	adds r0, r4, #0
	bl Init_and_add_some_object
	ldr r0, _08035730
	ldr r2, _08035734
	str r0, [r4]
	adds r0, r4, #0
	adds r0, #0x80
	ldr r1, [r0, #0x20]
	movs r3, #0x7d
	lsrs r1, r1, #0xc
	lsls r1, r1, #0xc
	ands r1, r2
	str r1, [r0, #0x20]
	ldr r1, [r0, #0x24]
	lsrs r2, r2, #0xc
	lsrs r1, r1, #0xc
	lsls r1, r1, #0xc
	bics r1, r2
	lsls r2, r2, #8
	bics r1, r2
	str r1, [r0, #0x24]
	ldr r1, [r0, #0x28]
	movs r2, #3
	lsrs r1, r1, #8
	lsls r1, r1, #8
	lsls r2, r2, #0x10
	bics r1, r2
	add r2, pc, #0x264
	str r2, [r4, #0x4c]
	movs r2, #0x13
	strh r2, [r4, #4]
	movs r2, #0x28
	strb r2, [r3, r4]
	movs r2, #0xff
	lsls r2, r2, #8
	bics r1, r2
	movs r2, #5
	lsls r2, r2, #0xb
	orrs r1, r2
	str r1, [r0, #0x28]
	ldr r1, [r0, #4]
	ldr r2, _0803574C
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
	adds r0, r4, #0
	b _08035492

	non_word_aligned_thumb_func_start Toggle__ctor
Toggle__ctor
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _08035730
	adds r5, r1, #0
	movs r1, #0
	str r0, [r4]
	adds r0, r4, #0
	bl GameObj__ctor
	cmp r5, #0
	beq _0803552A
	adds r0, r4, #0
	bl sub_803DA18
_0803552A
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	thumb_func_start sub_8035530
sub_8035530
	push {r4, lr}
	adds r4, r0, #0
	bl sub_801DB90
	adds r4, #0x80
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	bne _08035544
	movs r0, #0x13
	str r0, [r4, #0x1c]
_08035544
	pop {r4}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_803554A
sub_803554A
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
	bhs _080355EA
	add r3, pc, #0x8
	ldrb r3, [r3, r4]
	lsls r3, r3, #1
	add pc, r3
	ALIGN
_0803556C
	DCB 0x06
_0803556D
	DCB 0x06
_0803556E
	DCB 0x06
_0803556F
	DCB 0x06
_08035570
	DCB 0x13
_08035571
	DCB 0x1C
_08035572
	DCB 0x28
_08035573
	DCB 0x34
_08035574
	DCB 0x40
_08035575
	DCB 0x49
_08035576
	DCB 0x55
_08035577
	DCB 0x61
loc_8035578
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
	b _080355EA
loc_8035592
	movs r3, #0xf
	ldr r1, [r0, #0x7c]
	lsls r3, r3, #0x18
	bics r1, r3
	str r1, [r0, #0x7c]
	movs r1, #3
	adds r0, #0x90
	strb r1, [r0, #8]
	b _080355EA
loc_80355a4
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
	b _080355EA
loc_80355bc
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
	b _080355EA
loc_80355d4
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
_080355EA
	b _08035644
loc_80355ec
	movs r3, #0xf
	ldr r1, [r0, #0x7c]
	lsls r3, r3, #0x18
	bics r1, r3
	str r1, [r0, #0x7c]
	movs r1, #1
	adds r0, #0x90
	strb r1, [r0, #8]
	b _08035644
loc_80355fe
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
	b _08035644
loc_8035616
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
	b _08035644
loc_803562e
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
_08035644
	movs r0, #0x13
	str r0, [r2, #0x1c]
	pop {r4}
	bx lr

	thumb_func_start ToggleObjectGroup__04
ToggleObjectGroup__04
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r1]
	ldrb r0, [r0]
	cmp r0, #0x1c
	beq _08035672
	cmp r0, #0x1f
	beq _0803567A
	cmp r0, #0x22
	bne _0803568E
	ldr r2, [r4]
	adds r0, r4, #0
	ldr r3, [r2, #0x48]
	adds r2, r3, r2
	bl __call_via_r2
_0803566C
	pop {r4}
	pop {r3}
	bx r3
_08035672
	adds r0, r4, #0
	bl sub_803554A
	b _0803566C
_0803567A
	adds r0, r4, #0
	bl sub_801DB90
	adds r4, #0x80
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	bne _0803566C
	movs r0, #0x13
	str r0, [r4, #0x1c]
	b _0803566C
_0803568E
	adds r0, r4, #0
	bl WinxClubScriptGroup__04
	b _0803566C

	non_word_aligned_thumb_func_start ToggleObjectGroup__08
ToggleObjectGroup__08
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r1]
	movs r5, #1
	ldrb r0, [r0]
	cmp r0, #0x1c
	beq _080356CC
	cmp r0, #0x1f
	bne _080356D8
	adds r0, r4, #0
	bl sub_801DB90
	adds r0, r4, #0
	adds r0, #0x80
	ldr r1, [r0, #0x1c]
	cmp r1, #0
	bne _080356BC
	movs r1, #0x13
	str r1, [r0, #0x1c]
_080356BC
	ldr r1, [r4, #0x78]
	adds r0, r5, #0
	cmp r1, #0
	beq _080356C6
	movs r0, #0
_080356C6
	pop {r3, r4, r5}
	pop {r3}
	bx r3
_080356CC
	ldr r1, [r4, #0x78]
	adds r0, r5, #0
	cmp r1, #0
	beq _080356C6
	movs r0, #0
	b _080356C6
_080356D8
	adds r0, r4, #0
	bl WinxClubScriptGroup__08
	b _080356C6

	thumb_func_start ToggleObjectGroup__38
ToggleObjectGroup__38
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
	beq _08035708
	movs r1, #0
	movs r2, #0
	movs r3, #0
	stm r0!, {r1, r2, r3}
	stm r0!, {r1, r2, r3}
	stm r0!, {r3}
	subs r0, #0x1c
_08035708
	movs r1, #7
	strh r1, [r0]
	strh r5, [r0, #2]
	strh r5, [r0, #4]
	strh r5, [r0, #6]
	NEGS r1, r1
	strh r1, [r0, #8]
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
	ALIGN
_08035730 DCDU __VTABLE__324ToggleObjectGroup
_08035734 DCDU 0xFF000FFF
_08035738 DCDU 0x67676F54
_0803573C DCDU 0x4F20656C
_08035740 DCDU 0x63656A62
_08035744 DCDU 0x72472074
_08035748 DCDU 0x0070756F
_0803574C DCDU 0xF000FFFF
	END
