	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_03003E90
	IMPORT gUnknown_0803ECCC
	IMPORT __call_via_r2
	IMPORT __nw__FUi
	IMPORT sub_803DA18

	thumb_func_start sub_80402F8
sub_80402F8
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r0, #0x30]
	adds r5, r1, #0
	cmp r0, #0
	beq _0804033C
	ldrh r0, [r4, #0xe]
	lsls r1, r0, #0x1f
	bmi _08040314
	lsls r0, r0, #0x1c
	bpl _08040322
	ldr r0, [r4, #0x48]
	cmp r0, #0
	bne _08040322
_08040314
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x4c]
	adds r2, r2, r1
	adds r1, r5, #0
	bl __call_via_r2
_08040322
	ldrh r0, [r4, #0xe]
	lsls r0, r0, #0x1c
	bpl _0804033C
	ldr r0, [r4, #0x48]
	cmp r0, #0
	beq _0804033C
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x58]
	adds r2, r2, r1
	adds r1, r5, #0
	bl __call_via_r2
_0804033C
	ldrh r0, [r4, #0xe]
	lsls r0, r0, #0x1e
	bpl _08040350
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x50]
	adds r2, r2, r1
	adds r1, r5, #0
	bl __call_via_r2
_08040350
	ldrh r0, [r4, #0xe]
	lsls r0, r0, #0x1d
	bpl _08040364
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x54]
	adds r2, r2, r1
	adds r1, r5, #0
	bl __call_via_r2
_08040364
	pop {r3, r4, r5}
	pop {r3}
	bx r3
	ALIGN

	thumb_func_start sub_804036C
sub_804036C
	push {r3, lr}
	cmp r0, #0
	bne _08040378
	movs r0, #0x58
	bl __nw__FUi
_08040378
	add sp, #4
	pop {r3}
	bx r3
	ALIGN

	thumb_func_start sub_8040380
sub_8040380
	push {r3, lr}
	ldr r2, _0804039C
	ldr r3, _080403A0
	str r2, [r0]
	movs r2, #0
	str r2, [r3]
	cmp r1, #0
	beq _08040394
	bl sub_803DA18
_08040394
	add sp, #4
	pop {r3}
	bx r3
	ALIGN
_0804039C DCDU gUnknown_0803ECCC
_080403A0 DCDU gUnknown_03003E90
	END
