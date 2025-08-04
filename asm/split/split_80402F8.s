	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_03003E90
	IMPORT __VTABLE__359dword_803ECCC
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
	beq %3
	ldrh r0, [r4, #0xe]
	lsls r1, r0, #0x1f
	bmi %1
	lsls r0, r0, #0x1c
	bpl %2
	ldr r0, [r4, #0x48]
	cmp r0, #0
	bne %2
1
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x4c]
	adds r2, r2, r1
	adds r1, r5, #0
	bl __call_via_r2
2
	ldrh r0, [r4, #0xe]
	lsls r0, r0, #0x1c
	bpl %3
	ldr r0, [r4, #0x48]
	cmp r0, #0
	beq %3
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x58]
	adds r2, r2, r1
	adds r1, r5, #0
	bl __call_via_r2
3
	ldrh r0, [r4, #0xe]
	lsls r0, r0, #0x1e
	bpl %4
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x50]
	adds r2, r2, r1
	adds r1, r5, #0
	bl __call_via_r2
4
	ldrh r0, [r4, #0xe]
	lsls r0, r0, #0x1d
	bpl %5
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x54]
	adds r2, r2, r1
	adds r1, r5, #0
	bl __call_via_r2
5
	pop {r3, r4, r5}
	pop {r3}
	bx r3
	ALIGN

	thumb_func_start sub_804036C
sub_804036C
	push {r3, lr}
	cmp r0, #0
	bne %6
	movs r0, #0x58
	bl __nw__FUi
6
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
	beq %7
	bl sub_803DA18
7
	add sp, #4
	pop {r3}
	bx r3
	ALIGN
_0804039C DCDU __VTABLE__359dword_803ECCC
_080403A0 DCDU gUnknown_03003E90
	END
