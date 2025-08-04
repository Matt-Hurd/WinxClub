	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_03003460
	IMPORT gUnknown_03003460
	IMPORT gUnknown_03003E94
	IMPORT sub_800B698
	IMPORT sub_800B6AC
	IMPORT sub_800B6EC
	IMPORT sub_800B714
	IMPORT sub_800B72A
	IMPORT sub_800B764
	IMPORT sub_801228C
	IMPORT sub_8012334
	IMPORT __vecmap1c__FPvT1iPFPv_v
	IMPORT __vecmap1ci__FPvT1iPFPvi_v
	IMPORT __nw__FUi
	IMPORT sub_803DA18
	IMPORT sub_80403A4


	thumb_func_start sub_80268AC
sub_80268AC
	push {r3, lr}
	adds r0, #4
	bl sub_8012334
	add sp, #4
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_80268BA
sub_80268BA
	push {r3, lr}
	adds r0, #4
	bl sub_801228C
	add sp, #4
	pop {r3}
	bx r3

	thumb_func_start sub_80268C8
sub_80268C8
	push {r3, r4, r5, lr}
	cmp r0, #0
	bne %1
	movs r0, #0x20
	bl __nw__FUi
	cmp r0, #0
	beq %2
1
	movs r4, #0
	str r4, [r0]
	adds r5, r0, #4
	movs r1, #0
	movs r2, #0
	movs r3, #0
	stm r5!, {r1, r2, r3}
	stm r5!, {r1, r2, r3}
	stm r5!, {r3}
	movs r1, #0x98
	str r1, [r0, #8]
	mvns r1, r2
	str r1, [r0, #0x10]
	movs r1, #0xff
	adds r1, #1
	str r1, [r0, #0x14]
	movs r1, #5
	str r1, [r0, #0xc]
	ldr r1, _08026CDC
	str r4, [r0, #0x18]
	str r1, [r0, #0x1c]
2
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	thumb_func_start sub_8026908
sub_8026908
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	bne %4
	ldr r0, _08026CE0
	bl __nw__FUi
	adds r4, r0, #0
	bne %4
	adds r0, r4, #0
3
	pop {r3, r4, r5}
	pop {r3}
	bx r3
4
	movs r0, #0x13
	lsls r0, r0, #8
	adds r1, r4, r0
	adds r5, r1, #0
	movs r2, #0x20
	adds r0, r4, #0
	ldr r3, _08026CE4
	bl __vecmap1c__FPvT1iPFPv_v
	movs r0, #0
	strb r0, [r5, #5]
	adds r0, r4, #0
	b %3

	non_word_aligned_thumb_func_start sub_802693A
sub_802693A
	push {r3, r4, r5, lr}
	movs r2, #0x1f
	mvns r2, r2
	adds r5, r1, #0
	adds r1, r0, r2
	adds r4, r0, #0
	movs r0, #0x97
	lsls r0, r0, #5
	adds r0, r4, r0
	ldr r3, _08026CE8
	bl __vecmap1ci__FPvT1iPFPvi_v
	cmp r5, #0
	beq %5
	adds r0, r4, #0
	bl sub_803DA18
5
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_8026962
sub_8026962
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, _08026CEC
	sub sp, #0x164
	ldr r0, [r0]
	cmp r0, #0
	beq %6
	movs r0, #0
	str r0, [r4, #8]
	ldr r5, _08026CDC
	adds r0, r4, #4
	adds r7, r0, #0
	str r5, [r4, #0x1c]
	bl sub_801228C
	movs r6, #0x80
	str r6, [r4, #0x14]
	adds r0, r7, #0
	bl sub_801228C
	movs r1, #0
	mvns r1, r1
	str r1, [r4, #0x10]
	adds r0, r7, #0
	bl sub_801228C
	movs r1, #0x10
	str r1, [r4, #0xc]
	adds r0, r7, #0
	bl sub_801228C
	movs r0, #1
	str r0, [r4, #0x28]
	adds r0, r4, #0
	adds r0, #0x20
	str r0, [sp, #0x160]
	adds r0, #4
	adds r7, r0, #0
	str r5, [r4, #0x3c]
	bl sub_801228C
	ldr r0, [sp, #0x160]
	str r6, [r0, #0x14]
	adds r0, r7, #0
	bl sub_801228C
	movs r1, #0
	ldr r0, [sp, #0x160]
	mvns r1, r1
	str r1, [r0, #0x10]
	adds r0, r7, #0
	bl sub_801228C
	ldr r0, [sp, #0x160]
	movs r1, #0x10
	str r1, [r0, #0xc]
	adds r0, r7, #0
	bl sub_801228C
	movs r0, #2
	str r0, [r4, #0x48]
	adds r0, r4, #0
	adds r0, #0x40
	str r0, [sp, #0x15c]
	adds r0, #4
	adds r7, r0, #0
	str r5, [r4, #0x5c]
	bl sub_801228C
	ldr r0, [sp, #0x15c]
	str r6, [r0, #0x14]
	adds r0, r7, #0
	bl sub_801228C
	movs r1, #0
	ldr r0, [sp, #0x15c]
	mvns r1, r1
	str r1, [r0, #0x10]
	adds r0, r7, #0
	bl sub_801228C
	ldr r0, [sp, #0x15c]
	movs r1, #0x10
	str r1, [r0, #0xc]
	adds r0, r7, #0
	bl sub_801228C
	movs r0, #3
	str r0, [r4, #0x68]
	adds r0, r4, #0
	adds r0, #0x60
	str r0, [sp, #0x158]
	adds r0, #4
	adds r7, r0, #0
	str r5, [r4, #0x7c]
	bl sub_801228C
	ldr r0, [sp, #0x158]
	str r6, [r0, #0x14]
	adds r0, r7, #0
	bl sub_801228C
	movs r1, #0
	ldr r0, [sp, #0x158]
	mvns r1, r1
	str r1, [r0, #0x10]
	adds r0, r7, #0
	bl sub_801228C
	ldr r0, [sp, #0x158]
	movs r1, #0x10
	str r1, [r0, #0xc]
	adds r0, r7, #0
	bl sub_801228C
	adds r7, r4, r6
	movs r0, #4
	str r0, [r7, #8]
	str r5, [r7, #0x1c]
	adds r0, r7, r0
	b %7
6
	b %10
7
	str r0, [sp, #0x154]
	bl sub_801228C
	str r6, [r7, #0x14]
	ldr r0, [sp, #0x154]
	bl sub_801228C
	movs r1, #0
	mvns r1, r1
	str r1, [r7, #0x10]
	ldr r0, [sp, #0x154]
	bl sub_801228C
	movs r1, #0x10
	str r1, [r7, #0xc]
	ldr r0, [sp, #0x154]
	bl sub_801228C
	adds r7, r4, #0
	adds r7, #0xa0
	movs r0, #5
	str r0, [r7, #8]
	str r5, [r7, #0x1c]
	adds r0, r7, #4
	str r0, [sp, #0x150]
	bl sub_801228C
	str r6, [r7, #0x14]
	ldr r0, [sp, #0x150]
	bl sub_801228C
	movs r1, #0
	mvns r1, r1
	str r1, [r7, #0x10]
	ldr r0, [sp, #0x150]
	bl sub_801228C
	movs r1, #0x10
	str r1, [r7, #0xc]
	ldr r0, [sp, #0x150]
	bl sub_801228C
	adds r7, #0x40
	movs r0, #7
	str r0, [r7, #8]
	str r5, [r7, #0x1c]
	adds r0, r7, #4
	str r0, [sp, #0x14c]
	bl sub_801228C
	str r6, [r7, #0x14]
	ldr r0, [sp, #0x14c]
	bl sub_801228C
	movs r1, #0
	mvns r1, r1
	str r1, [r7, #0x10]
	ldr r0, [sp, #0x14c]
	bl sub_801228C
	movs r1, #0x10
	str r1, [r7, #0xc]
	ldr r0, [sp, #0x14c]
	bl sub_801228C
	adds r7, #0x20
	movs r0, #8
	str r0, [r7, #8]
	str r5, [r7, #0x1c]
	adds r0, r7, #4
	str r0, [sp, #0x148]
	bl sub_801228C
	str r6, [r7, #0x14]
	ldr r0, [sp, #0x148]
	bl sub_801228C
	movs r1, #0
	mvns r1, r1
	str r1, [r7, #0x10]
	ldr r0, [sp, #0x148]
	bl sub_801228C
	movs r1, #0x10
	str r1, [r7, #0xc]
	ldr r0, [sp, #0x148]
	bl sub_801228C
	adds r7, #0x20
	movs r0, #9
	str r0, [r7, #8]
	str r5, [r7, #0x1c]
	adds r0, r7, #4
	adds r5, r0, #0
	bl sub_801228C
	adds r0, r5, #0
	str r6, [r7, #0x14]
	bl sub_801228C
	movs r0, #0
	mvns r0, r0
	str r0, [r7, #0x10]
	adds r0, r5, #0
	bl sub_801228C
	movs r6, #0x10
	str r6, [r7, #0xc]
	adds r0, r5, #0
	bl sub_801228C
	adds r0, r4, #0
	adds r0, #0xc0
	str r0, [sp, #0x144]
	adds r1, r0, #0
	movs r0, #6
	str r0, [r1, #8]
	ldr r0, [sp, #0x144]
	ldr r1, _08026CDC
	str r1, [r0, #0x1c]
	adds r0, #4
	str r0, [sp, #0x140]
	bl sub_801228C
	ldr r0, [sp, #0x144]
	movs r1, #0x80
	str r1, [r0, #0x14]
	ldr r0, [sp, #0x140]
	bl sub_801228C
	movs r1, #0
	ldr r0, [sp, #0x144]
	mvns r1, r1
	str r1, [r0, #0x10]
	ldr r0, [sp, #0x140]
	bl sub_801228C
	ldr r0, [sp, #0x144]
	str r6, [r0, #0xc]
	ldr r0, [sp, #0x140]
	bl sub_801228C
	adds r5, #0x1c
	movs r0, #0xa
	str r0, [r5, #8]
	ldr r0, _08026CDC
	str r0, [r5, #0x1c]
	adds r0, r5, #4
	adds r7, r0, #0
	bl sub_801228C
	movs r0, #0x80
	str r0, [r5, #0x14]
	adds r0, r7, #0
	bl sub_801228C
	movs r0, #0
	mvns r0, r0
	str r0, [r5, #0x10]
	adds r0, r7, #0
	bl sub_801228C
	adds r0, r7, #0
	str r6, [r5, #0xc]
	bl sub_801228C
	adds r5, #0x20
	movs r0, #0xb
	str r0, [r5, #8]
	ldr r0, _08026CDC
	str r0, [r5, #0x1c]
	adds r0, r5, #4
	adds r7, r0, #0
	bl sub_801228C
	movs r0, #0x80
	str r0, [r5, #0x14]
	adds r0, r7, #0
	bl sub_801228C
	movs r0, #0
	mvns r0, r0
	str r0, [r5, #0x10]
	adds r0, r7, #0
	bl sub_801228C
	adds r0, r7, #0
	str r6, [r5, #0xc]
	bl sub_801228C
	adds r5, #0x20
	movs r0, #0xc
	str r0, [r5, #8]
	ldr r0, _08026CDC
	str r0, [r5, #0x1c]
	adds r0, r5, #4
	adds r7, r0, #0
	bl sub_801228C
	movs r0, #0x80
	str r0, [r5, #0x14]
	adds r0, r7, #0
	bl sub_801228C
	movs r0, #0
	mvns r0, r0
	str r0, [r5, #0x10]
	adds r0, r7, #0
	bl sub_801228C
	adds r0, r7, #0
	str r6, [r5, #0xc]
	bl sub_801228C
	adds r5, #0x20
	movs r0, #0xd
	str r0, [r5, #8]
	ldr r0, _08026CDC
	str r0, [r5, #0x1c]
	adds r0, r5, #4
	adds r7, r0, #0
	bl sub_801228C
	movs r0, #0x80
	str r0, [r5, #0x14]
	adds r0, r7, #0
	bl sub_801228C
	movs r0, #0
	mvns r0, r0
	str r0, [r5, #0x10]
	adds r0, r7, #0
	bl sub_801228C
	adds r0, r7, #0
	str r6, [r5, #0xc]
	bl sub_801228C
	adds r5, #0x20
	movs r0, #0xe
	str r0, [r5, #8]
	ldr r0, _08026CDC
	str r0, [r5, #0x1c]
	adds r0, r5, #4
	adds r7, r0, #0
	bl sub_801228C
	movs r0, #0x80
	str r0, [r5, #0x14]
	adds r0, r7, #0
	bl sub_801228C
	movs r0, #0
	mvns r0, r0
	str r0, [r5, #0x10]
	adds r0, r7, #0
	bl sub_801228C
	adds r0, r7, #0
	str r6, [r5, #0xc]
	bl sub_801228C
	adds r5, #0x20
	movs r0, #0xf
	str r0, [r5, #8]
	ldr r0, _08026CDC
	str r0, [r5, #0x1c]
	adds r0, r5, #4
	adds r7, r0, #0
	bl sub_801228C
	movs r0, #0x80
	str r0, [r5, #0x14]
	adds r0, r7, #0
	bl sub_801228C
	movs r0, #0
	mvns r0, r0
	str r0, [r5, #0x10]
	adds r0, r7, #0
	bl sub_801228C
	adds r0, r7, #0
	str r6, [r5, #0xc]
	bl sub_801228C
	lsls r0, r6, #5
	adds r5, r4, r0
	ldr r0, _08026CDC
	str r0, [r5, #0x1c]
	str r6, [r5, #8]
	adds r0, r5, #4
	adds r6, r0, #0
	bl sub_801228C
	movs r0, #0x80
	str r0, [r5, #0x14]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0
	mvns r0, r0
	str r0, [r5, #0x10]
	adds r0, r6, #0
	bl sub_801228C
	movs r7, #0x10
	str r7, [r5, #0xc]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0x11
	lsls r0, r0, #5
	adds r5, r4, r0
	movs r0, #0x11
	str r0, [r5, #8]
	ldr r0, _08026CDC
	str r0, [r5, #0x1c]
	adds r0, r5, #4
	adds r6, r0, #0
	bl sub_801228C
	b %8
	ALIGN
_08026CDC DCDU 0x00002B11
_08026CE0 DCDU 0x00001308
_08026CE4 DCDU sub_80268C8
_08026CE8 DCDU sub_80403A4
_08026CEC DCDU gUnknown_03003460
8
	movs r0, #0x80
	str r0, [r5, #0x14]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0
	mvns r0, r0
	str r0, [r5, #0x10]
	adds r0, r6, #0
	bl sub_801228C
	adds r0, r6, #0
	str r7, [r5, #0xc]
	bl sub_801228C
	movs r0, #9
	lsls r0, r0, #6
	adds r5, r4, r0
	movs r0, #0x12
	str r0, [r5, #8]
	ldr r0, _080270F8
	str r0, [r5, #0x1c]
	adds r0, r5, #4
	adds r6, r0, #0
	bl sub_801228C
	movs r0, #0x80
	str r0, [r5, #0x14]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0
	mvns r0, r0
	str r0, [r5, #0x10]
	adds r0, r6, #0
	bl sub_801228C
	adds r0, r6, #0
	str r7, [r5, #0xc]
	bl sub_801228C
	movs r0, #0x13
	lsls r0, r0, #5
	adds r5, r4, r0
	movs r0, #0x13
	str r0, [r5, #8]
	ldr r0, _080270F8
	str r0, [r5, #0x1c]
	adds r0, r5, #4
	adds r6, r0, #0
	bl sub_801228C
	movs r0, #0x80
	str r0, [r5, #0x14]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0
	mvns r0, r0
	str r0, [r5, #0x10]
	adds r0, r6, #0
	bl sub_801228C
	adds r0, r6, #0
	str r7, [r5, #0xc]
	bl sub_801228C
	movs r0, #5
	lsls r0, r0, #7
	adds r5, r4, r0
	movs r0, #0x14
	str r0, [r5, #8]
	ldr r0, _080270F8
	str r0, [r5, #0x1c]
	adds r0, r5, #4
	adds r6, r0, #0
	bl sub_801228C
	movs r0, #0x80
	str r0, [r5, #0x14]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0
	mvns r0, r0
	str r0, [r5, #0x10]
	adds r0, r6, #0
	bl sub_801228C
	adds r0, r6, #0
	str r7, [r5, #0xc]
	bl sub_801228C
	movs r0, #0x15
	lsls r0, r0, #5
	adds r5, r4, r0
	movs r0, #0x15
	str r0, [r5, #8]
	ldr r0, _080270F8
	str r0, [r5, #0x1c]
	adds r0, r5, #4
	adds r6, r0, #0
	bl sub_801228C
	movs r0, #0x80
	str r0, [r5, #0x14]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0
	mvns r0, r0
	str r0, [r5, #0x10]
	adds r0, r6, #0
	bl sub_801228C
	adds r0, r6, #0
	str r7, [r5, #0xc]
	bl sub_801228C
	movs r0, #0xb
	lsls r0, r0, #6
	adds r5, r4, r0
	movs r0, #0x16
	str r0, [r5, #8]
	ldr r0, _080270F8
	str r0, [r5, #0x1c]
	adds r0, r5, #4
	adds r6, r0, #0
	bl sub_801228C
	movs r0, #0x80
	str r0, [r5, #0x14]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0
	mvns r0, r0
	str r0, [r5, #0x10]
	adds r0, r6, #0
	bl sub_801228C
	adds r0, r6, #0
	str r7, [r5, #0xc]
	bl sub_801228C
	movs r0, #0x17
	lsls r0, r0, #5
	adds r5, r4, r0
	movs r0, #0x17
	str r0, [r5, #8]
	ldr r0, _080270F8
	str r0, [r5, #0x1c]
	adds r0, r5, #4
	adds r6, r0, #0
	bl sub_801228C
	movs r0, #0x80
	str r0, [r5, #0x14]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0
	mvns r0, r0
	str r0, [r5, #0x10]
	adds r0, r6, #0
	bl sub_801228C
	adds r0, r6, #0
	str r7, [r5, #0xc]
	bl sub_801228C
	movs r0, #3
	lsls r0, r0, #8
	adds r6, r4, r0
	movs r0, #0x18
	str r0, [r6, #8]
	ldr r0, _080270F8
	str r0, [r6, #0x1c]
	adds r0, r6, #4
	adds r5, r0, #0
	bl sub_801228C
	movs r7, #0x80
	str r7, [r6, #0x14]
	adds r0, r5, #0
	bl sub_801228C
	movs r0, #0
	mvns r0, r0
	str r0, [r6, #0x10]
	adds r0, r5, #0
	bl sub_801228C
	movs r0, #0x10
	str r0, [r6, #0xc]
	adds r0, r5, #0
	bl sub_801228C
	movs r0, #0x19
	lsls r0, r0, #5
	adds r5, r4, r0
	movs r0, #0x19
	str r0, [r5, #8]
	ldr r0, _080270F8
	str r0, [r5, #0x1c]
	adds r0, r5, #4
	adds r6, r0, #0
	bl sub_801228C
	adds r0, r6, #0
	str r7, [r5, #0x14]
	bl sub_801228C
	movs r0, #0
	mvns r0, r0
	str r0, [r5, #0x10]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0x10
	str r0, [r5, #0xc]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0xd
	lsls r0, r0, #6
	adds r5, r4, r0
	movs r0, #0x1a
	str r0, [r5, #8]
	ldr r0, _080270F8
	str r0, [r5, #0x1c]
	adds r0, r5, #4
	adds r6, r0, #0
	bl sub_801228C
	adds r0, r6, #0
	str r7, [r5, #0x14]
	bl sub_801228C
	movs r0, #0
	mvns r0, r0
	str r0, [r5, #0x10]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0x10
	str r0, [r5, #0xc]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0x1b
	lsls r0, r0, #5
	adds r5, r4, r0
	movs r0, #0x1b
	str r0, [r5, #8]
	ldr r0, _080270F8
	str r0, [r5, #0x1c]
	adds r0, r5, #4
	adds r6, r0, #0
	bl sub_801228C
	adds r0, r6, #0
	str r7, [r5, #0x14]
	bl sub_801228C
	movs r0, #0
	mvns r0, r0
	str r0, [r5, #0x10]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0x10
	str r0, [r5, #0xc]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #7
	lsls r0, r0, #7
	adds r5, r4, r0
	movs r0, #0x1c
	str r0, [r5, #8]
	ldr r0, _080270F8
	str r0, [r5, #0x1c]
	adds r0, r5, #4
	adds r6, r0, #0
	bl sub_801228C
	adds r0, r6, #0
	str r7, [r5, #0x14]
	bl sub_801228C
	movs r0, #0
	mvns r0, r0
	str r0, [r5, #0x10]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0x10
	str r0, [r5, #0xc]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0x1d
	lsls r0, r0, #5
	adds r5, r4, r0
	movs r0, #0x1d
	str r0, [r5, #8]
	ldr r0, _080270F8
	str r0, [r5, #0x1c]
	adds r0, r5, #4
	adds r6, r0, #0
	bl sub_801228C
	adds r0, r6, #0
	str r7, [r5, #0x14]
	bl sub_801228C
	movs r0, #0
	mvns r0, r0
	str r0, [r5, #0x10]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0x10
	str r0, [r5, #0xc]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0xf
	lsls r0, r0, #6
	adds r5, r4, r0
	movs r0, #0x1e
	str r0, [r5, #8]
	ldr r0, _080270F8
	str r0, [r5, #0x1c]
	adds r0, r5, #4
	adds r6, r0, #0
	bl sub_801228C
	adds r0, r6, #0
	str r7, [r5, #0x14]
	bl sub_801228C
	movs r0, #0
	mvns r0, r0
	str r0, [r5, #0x10]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0x10
	str r0, [r5, #0xc]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0x1f
	lsls r0, r0, #5
	adds r5, r4, r0
	movs r0, #0x1f
	str r0, [r5, #8]
	ldr r0, _080270F8
	str r0, [r5, #0x1c]
	adds r0, r5, #4
	adds r6, r0, #0
	bl sub_801228C
	adds r0, r6, #0
	str r7, [r5, #0x14]
	bl sub_801228C
	movs r7, #0
	mvns r7, r7
	str r7, [r5, #0x10]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0x10
	str r0, [r5, #0xc]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #1
	lsls r0, r0, #0xa
	adds r5, r4, r0
	movs r0, #0x20
	str r0, [r5, #8]
	ldr r0, _080270F8
	str r0, [r5, #0x1c]
	adds r0, r5, #4
	adds r6, r0, #0
	bl sub_801228C
	movs r0, #0x80
	str r0, [r5, #0x14]
	adds r0, r6, #0
	bl sub_801228C
	adds r0, r6, #0
	str r7, [r5, #0x10]
	bl sub_801228C
	movs r0, #0x10
	str r0, [r5, #0xc]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0x21
	lsls r0, r0, #5
	adds r5, r4, r0
	movs r0, #0x21
	str r0, [r5, #8]
	ldr r0, _080270F8
	str r0, [r5, #0x1c]
	adds r0, r5, #4
	adds r6, r0, #0
	bl sub_801228C
	movs r0, #0x80
	str r0, [r5, #0x14]
	adds r0, r6, #0
	bl sub_801228C
	adds r0, r6, #0
	str r7, [r5, #0x10]
	bl sub_801228C
	movs r0, #0x10
	str r0, [r5, #0xc]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0x11
	lsls r0, r0, #6
	adds r5, r4, r0
	movs r0, #0x22
	str r0, [r5, #8]
	ldr r0, _080270F8
	str r0, [r5, #0x1c]
	adds r0, r5, #4
	adds r6, r0, #0
	bl sub_801228C
	movs r0, #0x80
	str r0, [r5, #0x14]
	adds r0, r6, #0
	bl sub_801228C
	adds r0, r6, #0
	str r7, [r5, #0x10]
	bl sub_801228C
	movs r0, #0x10
	str r0, [r5, #0xc]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0x23
	lsls r0, r0, #5
	adds r5, r4, r0
	movs r0, #0x23
	str r0, [r5, #8]
	ldr r0, _080270F8
	str r0, [r5, #0x1c]
	adds r0, r5, #4
	adds r6, r0, #0
	bl sub_801228C
	movs r0, #0x80
	str r0, [r5, #0x14]
	adds r0, r6, #0
	bl sub_801228C
	adds r0, r6, #0
	str r7, [r5, #0x10]
	bl sub_801228C
	movs r0, #0x10
	str r0, [r5, #0xc]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #9
	lsls r0, r0, #7
	adds r5, r4, r0
	movs r0, #0x24
	str r0, [r5, #8]
	ldr r0, _080270F8
	str r0, [r5, #0x1c]
	adds r0, r5, #4
	adds r6, r0, #0
	bl sub_801228C
	movs r0, #0x80
	str r0, [r5, #0x14]
	adds r0, r6, #0
	bl sub_801228C
	adds r0, r6, #0
	str r7, [r5, #0x10]
	bl sub_801228C
	movs r0, #0x10
	str r0, [r5, #0xc]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0x13
	lsls r0, r0, #6
	adds r5, r4, r0
	movs r0, #0x26
	str r0, [r5, #8]
	ldr r0, _080270F8
	str r0, [r5, #0x1c]
	adds r0, r5, #4
	adds r6, r0, #0
	b %9
	ALIGN
_080270F8 DCDU 0x00002B11
9
	bl sub_801228C
	movs r0, #0x80
	str r0, [r5, #0x14]
	adds r0, r6, #0
	bl sub_801228C
	adds r0, r6, #0
	str r7, [r5, #0x10]
	bl sub_801228C
	movs r0, #0x10
	str r0, [r5, #0xc]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0x25
	lsls r0, r0, #5
	adds r5, r4, r0
	movs r0, #0x25
	str r0, [r5, #8]
	movs r0, #0x7d
	lsls r0, r0, #7
	str r0, [r5, #0x1c]
	adds r0, r5, #4
	adds r6, r0, #0
	bl sub_801228C
	movs r0, #0x80
	str r0, [r5, #0x14]
	adds r0, r6, #0
	bl sub_801228C
	adds r0, r6, #0
	str r7, [r5, #0x10]
	bl sub_801228C
	movs r0, #0x10
	str r0, [r5, #0xc]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0x27
	lsls r0, r0, #5
	adds r6, r4, r0
	movs r0, #0x27
	str r0, [r6, #8]
	ldr r0, _08027538
	str r0, [r6, #0x1c]
	adds r0, r6, #4
	adds r5, r0, #0
	bl sub_801228C
	movs r0, #0x80
	str r0, [r6, #0x14]
	adds r0, r5, #0
	bl sub_801228C
	adds r0, r7, #0
	str r0, [r6, #0x10]
	adds r0, r5, #0
	bl sub_801228C
	movs r7, #0x10
	str r7, [r6, #0xc]
	adds r0, r5, #0
	bl sub_801228C
	movs r0, #5
	lsls r0, r0, #8
	adds r5, r4, r0
	movs r0, #0x28
	str r0, [r5, #8]
	ldr r0, _08027538
	str r0, [r5, #0x1c]
	adds r0, r5, #4
	adds r6, r0, #0
	bl sub_801228C
	movs r0, #0x80
	str r0, [r5, #0x14]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0
	mvns r0, r0
	str r0, [r5, #0x10]
	adds r0, r6, #0
	bl sub_801228C
	adds r0, r6, #0
	str r7, [r5, #0xc]
	bl sub_801228C
	movs r0, #0x29
	lsls r0, r0, #5
	adds r5, r4, r0
	movs r0, #0x29
	str r0, [r5, #8]
	ldr r0, _08027538
	str r0, [r5, #0x1c]
	adds r0, r5, #4
	adds r6, r0, #0
	bl sub_801228C
	movs r0, #0x80
	str r0, [r5, #0x14]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0
	mvns r0, r0
	str r0, [r5, #0x10]
	adds r0, r6, #0
	bl sub_801228C
	adds r0, r6, #0
	str r7, [r5, #0xc]
	bl sub_801228C
	movs r0, #0x15
	lsls r0, r0, #6
	adds r5, r4, r0
	movs r0, #0x2a
	str r0, [r5, #8]
	ldr r0, _08027538
	str r0, [r5, #0x1c]
	adds r0, r5, #4
	adds r6, r0, #0
	bl sub_801228C
	movs r0, #0x80
	str r0, [r5, #0x14]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0
	mvns r0, r0
	str r0, [r5, #0x10]
	adds r0, r6, #0
	bl sub_801228C
	adds r0, r6, #0
	str r7, [r5, #0xc]
	bl sub_801228C
	movs r0, #0x2b
	lsls r0, r0, #5
	adds r5, r4, r0
	movs r0, #0x2b
	str r0, [r5, #8]
	ldr r0, _08027538
	str r0, [r5, #0x1c]
	adds r0, r5, #4
	adds r6, r0, #0
	bl sub_801228C
	movs r0, #0x80
	b %11
10
	b %13
11
	str r0, [r5, #0x14]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0
	mvns r0, r0
	str r0, [r5, #0x10]
	adds r0, r6, #0
	bl sub_801228C
	adds r0, r6, #0
	str r7, [r5, #0xc]
	bl sub_801228C
	movs r0, #0xb
	lsls r0, r0, #7
	adds r5, r4, r0
	movs r0, #0x2c
	str r0, [r5, #8]
	ldr r0, _08027538
	str r0, [r5, #0x1c]
	adds r0, r5, #4
	adds r6, r0, #0
	bl sub_801228C
	movs r0, #0x80
	str r0, [r5, #0x14]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0
	mvns r0, r0
	str r0, [r5, #0x10]
	adds r0, r6, #0
	bl sub_801228C
	adds r0, r6, #0
	str r7, [r5, #0xc]
	bl sub_801228C
	movs r0, #0x2d
	lsls r0, r0, #5
	adds r5, r4, r0
	movs r0, #0x2d
	str r0, [r5, #8]
	movs r0, #0x7d
	lsls r0, r0, #7
	str r0, [r5, #0x1c]
	adds r0, r5, #4
	adds r6, r0, #0
	bl sub_801228C
	movs r0, #0x33
	str r0, [r5, #0x14]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0
	mvns r0, r0
	str r0, [r5, #0x10]
	adds r0, r6, #0
	bl sub_801228C
	adds r0, r6, #0
	str r7, [r5, #0xc]
	bl sub_801228C
	movs r0, #0x17
	lsls r0, r0, #6
	adds r0, r4, r0
	str r0, [sp, #0x13c]
	adds r1, r0, #0
	movs r0, #0x2e
	str r0, [r1, #8]
	ldr r0, [sp, #0x13c]
	ldr r1, _08027538
	str r1, [r0, #0x1c]
	adds r0, #4
	str r0, [sp, #0x138]
	bl sub_801228C
	ldr r0, [sp, #0x13c]
	movs r1, #0x33
	str r1, [r0, #0x14]
	ldr r0, [sp, #0x138]
	bl sub_801228C
	movs r1, #0
	ldr r0, [sp, #0x13c]
	mvns r1, r1
	str r1, [r0, #0x10]
	ldr r0, [sp, #0x138]
	bl sub_801228C
	ldr r0, [sp, #0x13c]
	str r7, [r0, #0xc]
	ldr r0, [sp, #0x138]
	bl sub_801228C
	movs r0, #0x2f
	lsls r0, r0, #5
	adds r5, r4, r0
	movs r0, #0x2f
	str r0, [r5, #8]
	ldr r0, _08027538
	str r0, [r5, #0x1c]
	adds r0, r5, #4
	adds r6, r0, #0
	bl sub_801228C
	movs r0, #0x33
	str r0, [r5, #0x14]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0
	mvns r0, r0
	str r0, [r5, #0x10]
	adds r0, r6, #0
	bl sub_801228C
	adds r0, r6, #0
	str r7, [r5, #0xc]
	bl sub_801228C
	movs r0, #3
	lsls r0, r0, #9
	adds r5, r4, r0
	movs r0, #0x30
	str r0, [r5, #8]
	ldr r0, _08027538
	str r0, [r5, #0x1c]
	adds r0, r5, #4
	adds r6, r0, #0
	bl sub_801228C
	movs r0, #0x80
	str r0, [r5, #0x14]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0
	mvns r0, r0
	str r0, [r5, #0x10]
	adds r0, r6, #0
	bl sub_801228C
	adds r0, r6, #0
	str r7, [r5, #0xc]
	bl sub_801228C
	movs r0, #0x31
	lsls r0, r0, #5
	adds r5, r4, r0
	movs r0, #0x31
	str r0, [r5, #8]
	ldr r0, _08027538
	str r0, [r5, #0x1c]
	adds r0, r5, #4
	adds r6, r0, #0
	bl sub_801228C
	movs r0, #0x80
	str r0, [r5, #0x14]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0
	mvns r0, r0
	str r0, [r5, #0x10]
	adds r0, r6, #0
	bl sub_801228C
	adds r0, r6, #0
	str r7, [r5, #0xc]
	bl sub_801228C
	movs r0, #0x19
	lsls r0, r0, #6
	adds r0, r4, r0
	str r0, [sp, #0x134]
	adds r1, r0, #0
	movs r0, #0x32
	str r0, [r1, #8]
	ldr r0, [sp, #0x134]
	ldr r1, _08027538
	str r1, [r0, #0x1c]
	adds r0, #4
	str r0, [sp, #0x130]
	bl sub_801228C
	ldr r0, [sp, #0x134]
	movs r1, #0x80
	str r1, [r0, #0x14]
	ldr r0, [sp, #0x130]
	bl sub_801228C
	movs r1, #0
	ldr r0, [sp, #0x134]
	mvns r1, r1
	str r1, [r0, #0x10]
	ldr r0, [sp, #0x130]
	bl sub_801228C
	ldr r0, [sp, #0x134]
	str r7, [r0, #0xc]
	ldr r0, [sp, #0x130]
	bl sub_801228C
	movs r0, #0x33
	lsls r0, r0, #5
	adds r5, r4, r0
	movs r0, #0x33
	str r0, [r5, #8]
	ldr r0, _08027538
	str r0, [r5, #0x1c]
	adds r0, r5, #4
	adds r6, r0, #0
	bl sub_801228C
	movs r0, #0x80
	str r0, [r5, #0x14]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0
	mvns r0, r0
	str r0, [r5, #0x10]
	adds r0, r6, #0
	bl sub_801228C
	adds r0, r6, #0
	str r7, [r5, #0xc]
	bl sub_801228C
	movs r0, #0xd
	lsls r0, r0, #7
	adds r5, r4, r0
	movs r0, #0x34
	str r0, [r5, #8]
	ldr r0, _08027538
	str r0, [r5, #0x1c]
	adds r0, r5, #4
	adds r6, r0, #0
	bl sub_801228C
	movs r0, #0x80
	str r0, [r5, #0x14]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0
	mvns r0, r0
	str r0, [r5, #0x10]
	adds r0, r6, #0
	bl sub_801228C
	adds r0, r6, #0
	str r7, [r5, #0xc]
	bl sub_801228C
	movs r0, #0x35
	lsls r0, r0, #5
	adds r5, r4, r0
	movs r0, #0x35
	str r0, [r5, #8]
	ldr r0, _08027538
	str r0, [r5, #0x1c]
	adds r0, r5, #4
	adds r6, r0, #0
	bl sub_801228C
	movs r0, #0x80
	str r0, [r5, #0x14]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0
	mvns r0, r0
	str r0, [r5, #0x10]
	adds r0, r6, #0
	bl sub_801228C
	adds r0, r6, #0
	str r7, [r5, #0xc]
	bl sub_801228C
	movs r0, #0x1b
	lsls r0, r0, #6
	adds r7, r4, r0
	movs r0, #0x36
	str r0, [r7, #8]
	ldr r0, _08027538
	str r0, [r7, #0x1c]
	adds r0, r7, #4
	adds r6, r0, #0
	bl sub_801228C
	movs r5, #0x80
	str r5, [r7, #0x14]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0
	mvns r0, r0
	str r0, [r7, #0x10]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0x10
	str r0, [r7, #0xc]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0x37
	lsls r0, r0, #5
	adds r6, r4, r0
	movs r0, #0x37
	str r0, [r6, #8]
	ldr r0, _08027538
	str r0, [r6, #0x1c]
	adds r0, r6, #4
	adds r7, r0, #0
	bl sub_801228C
	adds r0, r7, #0
	str r5, [r6, #0x14]
	bl sub_801228C
	movs r0, #0
	mvns r0, r0
	str r0, [r6, #0x10]
	adds r0, r7, #0
	bl sub_801228C
	movs r0, #0x10
	str r0, [r6, #0xc]
	adds r0, r7, #0
	bl sub_801228C
	movs r0, #7
	lsls r0, r0, #8
	adds r6, r4, r0
	movs r0, #0x38
	str r0, [r6, #8]
	ldr r0, _08027538
	str r0, [r6, #0x1c]
	adds r0, r6, #4
	adds r7, r0, #0
	bl sub_801228C
	adds r0, r7, #0
	str r5, [r6, #0x14]
	bl sub_801228C
	movs r0, #0
	mvns r0, r0
	str r0, [r6, #0x10]
	adds r0, r7, #0
	bl sub_801228C
	movs r0, #0x10
	str r0, [r6, #0xc]
	adds r0, r7, #0
	bl sub_801228C
	movs r0, #0x39
	lsls r0, r0, #5
	adds r6, r4, r0
	movs r0, #0x39
	str r0, [r6, #8]
	ldr r0, _08027538
	str r0, [r6, #0x1c]
	adds r0, r6, #4
	adds r7, r0, #0
	bl sub_801228C
	adds r0, r7, #0
	str r5, [r6, #0x14]
	bl sub_801228C
	b %12
	ALIGN
_08027538 DCDU 0x00002B11
12
	movs r0, #0
	mvns r0, r0
	str r0, [r6, #0x10]
	adds r0, r7, #0
	bl sub_801228C
	movs r0, #0x10
	str r0, [r6, #0xc]
	adds r0, r7, #0
	bl sub_801228C
	movs r0, #0x1d
	lsls r0, r0, #6
	adds r6, r4, r0
	movs r0, #0x3a
	str r0, [r6, #8]
	ldr r0, _0802793C
	str r0, [r6, #0x1c]
	adds r0, r6, #4
	adds r7, r0, #0
	bl sub_801228C
	adds r0, r7, #0
	str r5, [r6, #0x14]
	bl sub_801228C
	movs r0, #0
	mvns r0, r0
	str r0, [r6, #0x10]
	adds r0, r7, #0
	bl sub_801228C
	movs r0, #0x10
	str r0, [r6, #0xc]
	adds r0, r7, #0
	bl sub_801228C
	movs r0, #0x3b
	lsls r0, r0, #5
	adds r6, r4, r0
	movs r0, #0x3b
	str r0, [r6, #8]
	ldr r0, _0802793C
	str r0, [r6, #0x1c]
	adds r0, r6, #4
	adds r7, r0, #0
	bl sub_801228C
	adds r0, r7, #0
	str r5, [r6, #0x14]
	bl sub_801228C
	movs r0, #0
	mvns r0, r0
	str r0, [r6, #0x10]
	adds r0, r7, #0
	bl sub_801228C
	movs r0, #0x10
	str r0, [r6, #0xc]
	adds r0, r7, #0
	bl sub_801228C
	movs r0, #0xf
	lsls r0, r0, #7
	adds r6, r4, r0
	movs r0, #0x3c
	str r0, [r6, #8]
	ldr r0, _0802793C
	str r0, [r6, #0x1c]
	adds r0, r6, #4
	adds r7, r0, #0
	bl sub_801228C
	adds r0, r7, #0
	str r5, [r6, #0x14]
	bl sub_801228C
	movs r0, #0
	mvns r0, r0
	str r0, [r6, #0x10]
	adds r0, r7, #0
	bl sub_801228C
	movs r0, #0x10
	str r0, [r6, #0xc]
	adds r0, r7, #0
	bl sub_801228C
	movs r0, #0x3d
	lsls r0, r0, #5
	adds r0, r4, r0
	str r0, [sp, #0x12c]
	adds r1, r0, #0
	movs r0, #0x3d
	str r0, [r1, #8]
	ldr r0, [sp, #0x12c]
	ldr r1, _0802793C
	str r1, [r0, #0x1c]
	adds r0, #4
	str r0, [sp, #0x128]
	bl sub_801228C
	ldr r0, [sp, #0x12c]
	str r5, [r0, #0x14]
	ldr r0, [sp, #0x128]
	bl sub_801228C
	movs r7, #0
	ldr r0, [sp, #0x12c]
	mvns r7, r7
	str r7, [r0, #0x10]
	ldr r0, [sp, #0x128]
	bl sub_801228C
	ldr r1, [sp, #0x12c]
	movs r0, #0x10
	str r0, [r1, #0xc]
	ldr r0, [sp, #0x128]
	bl sub_801228C
	movs r0, #0x1f
	lsls r0, r0, #6
	adds r0, r4, r0
	str r0, [sp, #0x124]
	adds r1, r0, #0
	movs r0, #0x3e
	str r0, [r1, #8]
	ldr r0, [sp, #0x124]
	ldr r1, _0802793C
	str r1, [r0, #0x1c]
	adds r0, #4
	str r0, [sp, #0x120]
	bl sub_801228C
	ldr r0, [sp, #0x124]
	movs r1, #0x80
	str r1, [r0, #0x14]
	ldr r0, [sp, #0x120]
	bl sub_801228C
	ldr r0, [sp, #0x124]
	str r7, [r0, #0x10]
	ldr r0, [sp, #0x120]
	bl sub_801228C
	ldr r1, [sp, #0x124]
	movs r0, #0x10
	str r0, [r1, #0xc]
	ldr r0, [sp, #0x120]
	bl sub_801228C
	movs r0, #0x3f
	lsls r0, r0, #5
	adds r0, r4, r0
	str r0, [sp, #0x11c]
	adds r1, r0, #0
	movs r0, #0x3f
	str r0, [r1, #8]
	ldr r1, [sp, #0x11c]
	ldr r0, _0802793C
	str r0, [r1, #0x1c]
	adds r0, r1, #4
	str r0, [sp, #0x118]
	bl sub_801228C
	ldr r0, [sp, #0x11c]
	movs r1, #0x80
	str r1, [r0, #0x14]
	ldr r0, [sp, #0x118]
	bl sub_801228C
	ldr r0, [sp, #0x11c]
	str r7, [r0, #0x10]
	ldr r0, [sp, #0x118]
	bl sub_801228C
	ldr r1, [sp, #0x11c]
	movs r0, #0x10
	str r0, [r1, #0xc]
	ldr r0, [sp, #0x118]
	bl sub_801228C
	lsls r0, r5, #4
	adds r1, r4, r0
	str r1, [sp, #0x114]
	movs r0, #0x40
	str r0, [r1, #8]
	ldr r1, [sp, #0x114]
	ldr r0, _0802793C
	str r0, [r1, #0x1c]
	adds r0, r1, #4
	str r0, [sp, #0x110]
	bl sub_801228C
	ldr r1, [sp, #0x114]
	movs r0, #0x80
	str r0, [r1, #0x14]
	ldr r0, [sp, #0x110]
	bl sub_801228C
	ldr r1, [sp, #0x114]
	str r7, [r1, #0x10]
	ldr r0, [sp, #0x110]
	bl sub_801228C
	ldr r1, [sp, #0x114]
	movs r0, #0x10
	str r0, [r1, #0xc]
	ldr r0, [sp, #0x110]
	bl sub_801228C
	movs r0, #0x41
	lsls r0, r0, #5
	adds r1, r4, r0
	str r1, [sp, #0x10c]
	movs r0, #0x41
	str r0, [r1, #8]
	ldr r1, [sp, #0x10c]
	ldr r0, _0802793C
	str r0, [r1, #0x1c]
	adds r0, r1, #4
	str r0, [sp, #0x108]
	bl sub_801228C
	ldr r1, [sp, #0x10c]
	movs r0, #0x80
	str r0, [r1, #0x14]
	ldr r0, [sp, #0x108]
	bl sub_801228C
	ldr r1, [sp, #0x10c]
	str r7, [r1, #0x10]
	ldr r0, [sp, #0x108]
	bl sub_801228C
	ldr r1, [sp, #0x10c]
	movs r0, #0x10
	str r0, [r1, #0xc]
	ldr r0, [sp, #0x108]
	bl sub_801228C
	movs r0, #0x21
	lsls r0, r0, #6
	adds r5, r4, r0
	movs r0, #0x42
	str r0, [r5, #8]
	ldr r0, _0802793C
	str r0, [r5, #0x1c]
	adds r0, r5, #4
	adds r6, r0, #0
	bl sub_801228C
	movs r0, #0x80
	str r0, [r5, #0x14]
	adds r0, r6, #0
	bl sub_801228C
	adds r0, r6, #0
	str r7, [r5, #0x10]
	bl sub_801228C
	movs r0, #0x10
	str r0, [r5, #0xc]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0x43
	lsls r0, r0, #5
	adds r5, r4, r0
	movs r0, #0x43
	str r0, [r5, #8]
	ldr r0, _0802793C
	str r0, [r5, #0x1c]
	adds r0, r5, #4
	adds r6, r0, #0
	bl sub_801228C
	movs r0, #0x80
	str r0, [r5, #0x14]
	adds r0, r6, #0
	bl sub_801228C
	adds r0, r6, #0
	str r7, [r5, #0x10]
	bl sub_801228C
	movs r0, #0x10
	str r0, [r5, #0xc]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0x11
	lsls r0, r0, #7
	adds r5, r4, r0
	movs r0, #0x44
	str r0, [r5, #8]
	ldr r0, _0802793C
	str r0, [r5, #0x1c]
	adds r0, r5, #4
	adds r6, r0, #0
	bl sub_801228C
	movs r0, #0x80
	str r0, [r5, #0x14]
	adds r0, r6, #0
	bl sub_801228C
	adds r0, r6, #0
	str r7, [r5, #0x10]
	bl sub_801228C
	movs r0, #0x10
	str r0, [r5, #0xc]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0x45
	lsls r0, r0, #5
	adds r6, r4, r0
	movs r0, #0x45
	str r0, [r6, #8]
	ldr r0, _0802793C
	str r0, [r6, #0x1c]
	adds r0, r6, #4
	adds r5, r0, #0
	bl sub_801228C
	movs r0, #0x80
	str r0, [r6, #0x14]
	adds r0, r5, #0
	bl sub_801228C
	adds r0, r7, #0
	str r0, [r6, #0x10]
	adds r0, r5, #0
	bl sub_801228C
	movs r7, #0x10
	str r7, [r6, #0xc]
	adds r0, r5, #0
	bl sub_801228C
	movs r0, #0x23
	lsls r0, r0, #6
	adds r0, r4, r0
	str r0, [sp, #0x104]
	adds r1, r0, #0
	movs r0, #0x46
	str r0, [r1, #8]
	ldr r0, [sp, #0x104]
	ldr r1, _0802793C
	str r1, [r0, #0x1c]
	adds r0, #4
	str r0, [sp, #0x100]
	bl sub_801228C
	ldr r0, [sp, #0x104]
	movs r1, #0x80
	str r1, [r0, #0x14]
	ldr r0, [sp, #0x100]
	bl sub_801228C
	movs r1, #0
	ldr r0, [sp, #0x104]
	mvns r1, r1
	str r1, [r0, #0x10]
	ldr r0, [sp, #0x100]
	bl sub_801228C
	ldr r0, [sp, #0x104]
	str r7, [r0, #0xc]
	ldr r0, [sp, #0x100]
	bl sub_801228C
	movs r0, #0x47
	lsls r0, r0, #5
	adds r0, r4, r0
	str r0, [sp, #0xfc]
	adds r1, r0, #0
	movs r0, #0x47
	str r0, [r1, #8]
	ldr r0, [sp, #0xfc]
	ldr r1, _0802793C
	str r1, [r0, #0x1c]
	adds r0, #4
	str r0, [sp, #0xf8]
	bl sub_801228C
	ldr r0, [sp, #0xfc]
	movs r1, #0x80
	str r1, [r0, #0x14]
	ldr r0, [sp, #0xf8]
	bl sub_801228C
	movs r1, #0
	ldr r0, [sp, #0xfc]
	mvns r1, r1
	str r1, [r0, #0x10]
	ldr r0, [sp, #0xf8]
	bl sub_801228C
	ldr r0, [sp, #0xfc]
	str r7, [r0, #0xc]
	ldr r0, [sp, #0xf8]
	bl sub_801228C
	movs r0, #9
	lsls r0, r0, #8
	adds r0, r4, r0
	str r0, [sp, #0xf4]
	adds r1, r0, #0
	movs r0, #0x48
	str r0, [r1, #8]
	ldr r0, [sp, #0xf4]
	ldr r1, _0802793C
	str r1, [r0, #0x1c]
	adds r0, #4
	str r0, [sp, #0xf0]
	bl sub_801228C
	ldr r0, [sp, #0xf4]
	movs r1, #0x80
	str r1, [r0, #0x14]
	ldr r0, [sp, #0xf0]
	bl sub_801228C
	movs r1, #0
	ldr r0, [sp, #0xf4]
	mvns r1, r1
	str r1, [r0, #0x10]
	ldr r0, [sp, #0xf0]
	bl sub_801228C
	ldr r0, [sp, #0xf4]
	str r7, [r0, #0xc]
	ldr r0, [sp, #0xf0]
	bl sub_801228C
	movs r0, #0x49
	lsls r0, r0, #5
	adds r0, r4, r0
	str r0, [sp, #0xec]
	adds r1, r0, #0
	movs r0, #0x49
	str r0, [r1, #8]
	ldr r0, [sp, #0xec]
	ldr r1, _0802793C
	str r1, [r0, #0x1c]
	adds r0, #4
	str r0, [sp, #0xe8]
	bl sub_801228C
	ldr r0, [sp, #0xec]
	movs r1, #0x80
	str r1, [r0, #0x14]
	ldr r0, [sp, #0xe8]
	bl sub_801228C
	movs r1, #0
	ldr r0, [sp, #0xec]
	mvns r1, r1
	str r1, [r0, #0x10]
	ldr r0, [sp, #0xe8]
	bl sub_801228C
	ldr r0, [sp, #0xec]
	str r7, [r0, #0xc]
	ldr r0, [sp, #0xe8]
	bl sub_801228C
	movs r0, #0x25
	lsls r0, r0, #6
	adds r5, r4, r0
	movs r0, #0x4a
	str r0, [r5, #8]
	ldr r0, _08027940
	str r0, [r5, #0x1c]
	adds r0, r5, #4
	adds r6, r0, #0
	bl sub_801228C
	movs r0, #0x80
	str r0, [r5, #0x14]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0
	mvns r0, r0
	str r0, [r5, #0x10]
	adds r0, r6, #0
	bl sub_801228C
	adds r0, r6, #0
	str r7, [r5, #0xc]
	bl sub_801228C
	movs r0, #0x4b
	lsls r0, r0, #5
	adds r5, r4, r0
	movs r0, #0x4b
	str r0, [r5, #8]
	ldr r0, _0802793C
	str r0, [r5, #0x1c]
	adds r0, r5, #4
	adds r6, r0, #0
	bl sub_801228C
	movs r0, #0x80
	b %14
13
	b %16
	ALIGN
_0802793C DCDU 0x00002B11
_08027940 DCDU 0x00002B12
14
	str r0, [r5, #0x14]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0
	mvns r0, r0
	str r0, [r5, #0x10]
	adds r0, r6, #0
	bl sub_801228C
	adds r0, r6, #0
	str r7, [r5, #0xc]
	bl sub_801228C
	movs r0, #0x13
	lsls r0, r0, #7
	adds r6, r4, r0
	movs r0, #0x4c
	str r0, [r6, #8]
	ldr r0, _08027D4C
	str r0, [r6, #0x1c]
	adds r0, r6, #4
	adds r5, r0, #0
	bl sub_801228C
	movs r0, #0x80
	str r0, [r6, #0x14]
	adds r0, r5, #0
	bl sub_801228C
	movs r0, #0
	mvns r0, r0
	str r0, [r6, #0x10]
	adds r0, r5, #0
	bl sub_801228C
	movs r0, #0x10
	str r0, [r6, #0xc]
	adds r0, r5, #0
	bl sub_801228C
	movs r0, #0x4d
	lsls r0, r0, #5
	adds r5, r4, r0
	movs r0, #0x4d
	str r0, [r5, #8]
	ldr r0, _08027D4C
	str r0, [r5, #0x1c]
	adds r0, r5, #4
	adds r6, r0, #0
	bl sub_801228C
	movs r0, #0x80
	str r0, [r5, #0x14]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0
	mvns r0, r0
	str r0, [r5, #0x10]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0x10
	str r0, [r5, #0xc]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0x27
	lsls r0, r0, #6
	adds r5, r4, r0
	movs r0, #0x4e
	str r0, [r5, #8]
	ldr r0, _08027D4C
	str r0, [r5, #0x1c]
	adds r0, r5, #4
	adds r6, r0, #0
	bl sub_801228C
	movs r0, #0x80
	str r0, [r5, #0x14]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0
	mvns r0, r0
	str r0, [r5, #0x10]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0x10
	str r0, [r5, #0xc]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0x4f
	lsls r0, r0, #5
	adds r5, r4, r0
	movs r0, #0x4f
	str r0, [r5, #8]
	movs r7, #0x7d
	lsls r7, r7, #7
	adds r0, r5, #4
	adds r6, r0, #0
	str r7, [r5, #0x1c]
	bl sub_801228C
	movs r0, #0x80
	str r0, [r5, #0x14]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0
	mvns r0, r0
	str r0, [r5, #0x10]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0x10
	str r0, [r5, #0xc]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #5
	lsls r0, r0, #9
	adds r5, r4, r0
	movs r0, #0x50
	str r0, [r5, #8]
	ldr r0, _08027D4C
	str r0, [r5, #0x1c]
	adds r0, r5, #4
	adds r6, r0, #0
	bl sub_801228C
	movs r0, #0x80
	str r0, [r5, #0x14]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0
	mvns r0, r0
	str r0, [r5, #0x10]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0x10
	str r0, [r5, #0xc]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0x51
	lsls r0, r0, #5
	adds r5, r4, r0
	movs r0, #0x51
	str r0, [r5, #8]
	ldr r0, _08027D4C
	str r0, [r5, #0x1c]
	adds r0, r5, #4
	adds r6, r0, #0
	bl sub_801228C
	movs r0, #0x80
	str r0, [r5, #0x14]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0
	mvns r0, r0
	str r0, [r5, #0x10]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0x10
	str r0, [r5, #0xc]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0x29
	lsls r0, r0, #6
	adds r5, r4, r0
	movs r0, #0x52
	str r0, [r5, #8]
	ldr r0, _08027D4C
	str r0, [r5, #0x1c]
	adds r0, r5, #4
	adds r6, r0, #0
	bl sub_801228C
	movs r0, #0x80
	str r0, [r5, #0x14]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0
	mvns r0, r0
	str r0, [r5, #0x10]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0x10
	str r0, [r5, #0xc]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0x53
	lsls r0, r0, #5
	adds r5, r4, r0
	movs r0, #0x53
	str r0, [r5, #8]
	ldr r0, _08027D4C
	str r0, [r5, #0x1c]
	adds r0, r5, #4
	str r0, [sp, #0xe4]
	bl sub_801228C
	movs r0, #0x80
	str r0, [r5, #0x14]
	ldr r0, [sp, #0xe4]
	bl sub_801228C
	movs r0, #0
	mvns r0, r0
	str r0, [r5, #0x10]
	ldr r0, [sp, #0xe4]
	bl sub_801228C
	movs r0, #0x10
	str r0, [r5, #0xc]
	ldr r0, [sp, #0xe4]
	bl sub_801228C
	movs r0, #0x15
	lsls r0, r0, #7
	adds r6, r4, r0
	movs r0, #0x54
	str r0, [r6, #8]
	str r7, [r6, #0x1c]
	adds r0, r6, #4
	adds r7, r0, #0
	bl sub_801228C
	movs r1, #0x80
	str r1, [r6, #0x14]
	adds r0, r7, #0
	bl sub_801228C
	movs r1, #0
	mvns r1, r1
	str r1, [r6, #0x10]
	adds r0, r7, #0
	bl sub_801228C
	movs r1, #0x10
	str r1, [r6, #0xc]
	adds r0, r7, #0
	bl sub_801228C
	movs r0, #0x55
	lsls r0, r0, #5
	adds r0, r4, r0
	adds r6, r0, #0
	adds r1, r0, #0
	movs r0, #0x55
	str r0, [r1, #8]
	ldr r1, _08027D4C
	adds r0, r6, #4
	adds r7, r0, #0
	str r1, [r6, #0x1c]
	bl sub_801228C
	movs r1, #0x80
	str r1, [r6, #0x14]
	adds r0, r7, #0
	bl sub_801228C
	movs r1, #0
	mvns r1, r1
	str r1, [r6, #0x10]
	adds r0, r7, #0
	bl sub_801228C
	movs r1, #0x10
	str r1, [r6, #0xc]
	adds r0, r7, #0
	bl sub_801228C
	movs r0, #0x2b
	lsls r0, r0, #6
	adds r0, r4, r0
	adds r6, r0, #0
	adds r1, r0, #0
	movs r0, #0x56
	str r0, [r1, #8]
	ldr r1, _08027D4C
	adds r0, r6, #4
	adds r7, r0, #0
	str r1, [r6, #0x1c]
	bl sub_801228C
	movs r1, #0x80
	str r1, [r6, #0x14]
	adds r0, r7, #0
	bl sub_801228C
	movs r1, #0
	mvns r1, r1
	str r1, [r6, #0x10]
	adds r0, r7, #0
	bl sub_801228C
	movs r1, #0x10
	str r1, [r6, #0xc]
	adds r0, r7, #0
	bl sub_801228C
	movs r0, #0x57
	lsls r0, r0, #5
	adds r0, r4, r0
	adds r6, r0, #0
	adds r1, r0, #0
	movs r0, #0x57
	str r0, [r1, #8]
	ldr r1, _08027D4C
	adds r0, r6, #4
	adds r7, r0, #0
	str r1, [r6, #0x1c]
	bl sub_801228C
	movs r1, #0x80
	str r1, [r6, #0x14]
	adds r0, r7, #0
	bl sub_801228C
	movs r1, #0
	mvns r1, r1
	str r1, [r6, #0x10]
	adds r0, r7, #0
	bl sub_801228C
	movs r1, #0x10
	str r1, [r6, #0xc]
	adds r0, r7, #0
	bl sub_801228C
	movs r0, #0xb
	lsls r0, r0, #8
	adds r0, r4, r0
	adds r6, r0, #0
	adds r1, r0, #0
	movs r0, #0x58
	str r0, [r1, #8]
	ldr r1, _08027D4C
	adds r0, r6, #4
	adds r7, r0, #0
	str r1, [r6, #0x1c]
	bl sub_801228C
	movs r1, #0x80
	str r1, [r6, #0x14]
	adds r0, r7, #0
	bl sub_801228C
	movs r1, #0
	mvns r1, r1
	str r1, [r6, #0x10]
	adds r0, r7, #0
	bl sub_801228C
	movs r1, #0x10
	str r1, [r6, #0xc]
	adds r0, r7, #0
	bl sub_801228C
	movs r0, #0x59
	lsls r0, r0, #5
	adds r0, r4, r0
	adds r6, r0, #0
	adds r1, r0, #0
	movs r0, #0x59
	str r0, [r1, #8]
	ldr r1, _08027D4C
	adds r0, r6, #4
	adds r7, r0, #0
	str r1, [r6, #0x1c]
	bl sub_801228C
	movs r1, #0x80
	str r1, [r6, #0x14]
	adds r0, r7, #0
	bl sub_801228C
	movs r1, #0
	mvns r1, r1
	str r1, [r6, #0x10]
	adds r0, r7, #0
	bl sub_801228C
	movs r1, #0x10
	str r1, [r6, #0xc]
	adds r0, r7, #0
	bl sub_801228C
	movs r0, #0x2d
	lsls r0, r0, #6
	adds r0, r4, r0
	adds r6, r0, #0
	adds r1, r0, #0
	movs r0, #0x5a
	str r0, [r1, #8]
	ldr r1, _08027D4C
	adds r0, r6, #4
	adds r7, r0, #0
	str r1, [r6, #0x1c]
	bl sub_801228C
	movs r1, #0x80
	str r1, [r6, #0x14]
	adds r0, r7, #0
	bl sub_801228C
	movs r1, #0
	mvns r1, r1
	str r1, [r6, #0x10]
	adds r0, r7, #0
	bl sub_801228C
	movs r1, #0x10
	str r1, [r6, #0xc]
	adds r0, r7, #0
	bl sub_801228C
	movs r0, #0x5b
	lsls r0, r0, #5
	adds r6, r4, r0
	movs r0, #0x5b
	str r0, [r6, #8]
	ldr r1, _08027D4C
	adds r0, r6, #4
	str r1, [r6, #0x1c]
	str r0, [sp, #0xe0]
	bl sub_801228C
	movs r1, #0x80
	str r1, [r6, #0x14]
	ldr r0, [sp, #0xe0]
	bl sub_801228C
	movs r7, #0
	mvns r7, r7
	str r7, [r6, #0x10]
	ldr r0, [sp, #0xe0]
	bl sub_801228C
	movs r1, #0x10
	str r1, [r6, #0xc]
	ldr r0, [sp, #0xe0]
	bl sub_801228C
	movs r0, #0x17
	lsls r0, r0, #7
	adds r0, r4, r0
	adds r6, r0, #0
	adds r1, r0, #0
	movs r0, #0x5c
	str r0, [r1, #8]
	ldr r1, _08027D4C
	adds r0, r6, #4
	str r1, [r6, #0x1c]
	str r0, [sp, #0xdc]
	bl sub_801228C
	movs r1, #0x80
	str r1, [r6, #0x14]
	ldr r0, [sp, #0xdc]
	bl sub_801228C
	str r7, [r6, #0x10]
	ldr r0, [sp, #0xdc]
	bl sub_801228C
	movs r1, #0x10
	str r1, [r6, #0xc]
	ldr r0, [sp, #0xdc]
	bl sub_801228C
	movs r0, #0x5d
	lsls r0, r0, #5
	adds r0, r4, r0
	adds r6, r0, #0
	adds r1, r0, #0
	movs r0, #0x5d
	str r0, [r1, #8]
	ldr r1, _08027D4C
	adds r0, r6, #4
	str r1, [r6, #0x1c]
	str r0, [sp, #0xd8]
	bl sub_801228C
	movs r1, #0x80
	str r1, [r6, #0x14]
	ldr r0, [sp, #0xd8]
	bl sub_801228C
	str r7, [r6, #0x10]
	ldr r0, [sp, #0xd8]
	bl sub_801228C
	movs r1, #0x10
	str r1, [r6, #0xc]
	ldr r0, [sp, #0xd8]
	bl sub_801228C
	movs r0, #0x2f
	lsls r0, r0, #6
	b %15
	ALIGN
_08027D4C DCDU 0x00002B11
15
	adds r0, r4, r0
	adds r6, r0, #0
	adds r1, r0, #0
	movs r0, #0x5e
	str r0, [r1, #8]
	ldr r1, _08028138
	adds r0, r6, #4
	str r1, [r6, #0x1c]
	str r0, [sp, #0xd4]
	bl sub_801228C
	movs r1, #0x80
	str r1, [r6, #0x14]
	ldr r0, [sp, #0xd4]
	bl sub_801228C
	str r7, [r6, #0x10]
	ldr r0, [sp, #0xd4]
	bl sub_801228C
	movs r1, #0x10
	str r1, [r6, #0xc]
	ldr r0, [sp, #0xd4]
	bl sub_801228C
	movs r0, #0x5f
	lsls r0, r0, #5
	adds r0, r4, r0
	adds r6, r0, #0
	adds r1, r0, #0
	movs r0, #0x5f
	str r0, [r1, #8]
	ldr r1, _08028138
	adds r0, r6, #4
	str r1, [r6, #0x1c]
	str r0, [sp, #0xd0]
	bl sub_801228C
	movs r1, #0x80
	str r1, [r6, #0x14]
	ldr r0, [sp, #0xd0]
	bl sub_801228C
	str r7, [r6, #0x10]
	ldr r0, [sp, #0xd0]
	bl sub_801228C
	movs r1, #0x10
	str r1, [r6, #0xc]
	ldr r0, [sp, #0xd0]
	bl sub_801228C
	movs r0, #3
	lsls r0, r0, #0xa
	adds r0, r4, r0
	adds r6, r0, #0
	adds r1, r0, #0
	movs r0, #0x60
	str r0, [r1, #8]
	ldr r1, _08028138
	adds r0, r6, #4
	str r1, [r6, #0x1c]
	str r0, [sp, #0xcc]
	bl sub_801228C
	movs r1, #0x80
	str r1, [r6, #0x14]
	ldr r0, [sp, #0xcc]
	bl sub_801228C
	str r7, [r6, #0x10]
	ldr r0, [sp, #0xcc]
	bl sub_801228C
	movs r1, #0x10
	str r1, [r6, #0xc]
	ldr r0, [sp, #0xcc]
	bl sub_801228C
	movs r0, #0x61
	lsls r0, r0, #5
	adds r0, r4, r0
	adds r6, r0, #0
	adds r1, r0, #0
	movs r0, #0x61
	str r0, [r1, #8]
	ldr r1, _08028138
	adds r0, r6, #4
	str r1, [r6, #0x1c]
	str r0, [sp, #0xc8]
	bl sub_801228C
	movs r1, #0x80
	str r1, [r6, #0x14]
	ldr r0, [sp, #0xc8]
	bl sub_801228C
	str r7, [r6, #0x10]
	ldr r0, [sp, #0xc8]
	bl sub_801228C
	movs r1, #0x10
	str r1, [r6, #0xc]
	ldr r0, [sp, #0xc8]
	bl sub_801228C
	movs r0, #0x31
	lsls r0, r0, #6
	adds r6, r4, r0
	movs r0, #0x62
	str r0, [r6, #8]
	ldr r1, _08028138
	adds r0, r6, #4
	str r1, [r6, #0x1c]
	str r0, [sp, #0xc4]
	bl sub_801228C
	movs r1, #0x80
	str r1, [r6, #0x14]
	ldr r0, [sp, #0xc4]
	bl sub_801228C
	str r7, [r6, #0x10]
	ldr r0, [sp, #0xc4]
	bl sub_801228C
	movs r1, #0x10
	str r1, [r6, #0xc]
	ldr r0, [sp, #0xc4]
	bl sub_801228C
	movs r0, #0x63
	lsls r0, r0, #5
	adds r0, r4, r0
	adds r6, r0, #0
	adds r1, r0, #0
	movs r0, #0x63
	str r0, [r1, #8]
	ldr r1, _08028138
	adds r0, r6, #4
	adds r7, r0, #0
	str r1, [r6, #0x1c]
	bl sub_801228C
	movs r1, #0x80
	str r1, [r6, #0x14]
	adds r0, r7, #0
	bl sub_801228C
	movs r1, #0
	mvns r1, r1
	str r1, [r6, #0x10]
	adds r0, r7, #0
	bl sub_801228C
	adds r0, r6, #0
	movs r6, #0x10
	str r6, [r0, #0xc]
	adds r0, r7, #0
	bl sub_801228C
	movs r0, #0x19
	lsls r0, r0, #7
	adds r0, r4, r0
	adds r7, r0, #0
	adds r1, r0, #0
	movs r0, #0x64
	str r0, [r1, #8]
	ldr r1, _08028138
	adds r0, r7, #4
	str r1, [r7, #0x1c]
	str r0, [sp, #0xc0]
	bl sub_801228C
	movs r1, #0x80
	str r1, [r7, #0x14]
	ldr r0, [sp, #0xc0]
	bl sub_801228C
	movs r1, #0
	mvns r1, r1
	str r1, [r7, #0x10]
	ldr r0, [sp, #0xc0]
	bl sub_801228C
	str r6, [r7, #0xc]
	ldr r0, [sp, #0xc0]
	bl sub_801228C
	movs r0, #0x65
	lsls r0, r0, #5
	adds r0, r4, r0
	adds r7, r0, #0
	adds r1, r0, #0
	movs r0, #0x65
	str r0, [r1, #8]
	ldr r1, _08028138
	adds r0, r7, #4
	str r1, [r7, #0x1c]
	str r0, [sp, #0xbc]
	bl sub_801228C
	movs r1, #0x80
	str r1, [r7, #0x14]
	ldr r0, [sp, #0xbc]
	bl sub_801228C
	movs r1, #0
	mvns r1, r1
	str r1, [r7, #0x10]
	ldr r0, [sp, #0xbc]
	bl sub_801228C
	str r6, [r7, #0xc]
	ldr r0, [sp, #0xbc]
	bl sub_801228C
	movs r0, #0x33
	lsls r0, r0, #6
	adds r0, r4, r0
	adds r7, r0, #0
	adds r1, r0, #0
	movs r0, #0x66
	str r0, [r1, #8]
	ldr r1, _08028138
	adds r0, r7, #4
	str r1, [r7, #0x1c]
	str r0, [sp, #0xb8]
	bl sub_801228C
	movs r1, #0x80
	str r1, [r7, #0x14]
	ldr r0, [sp, #0xb8]
	bl sub_801228C
	movs r1, #0
	mvns r1, r1
	str r1, [r7, #0x10]
	ldr r0, [sp, #0xb8]
	bl sub_801228C
	str r6, [r7, #0xc]
	ldr r0, [sp, #0xb8]
	bl sub_801228C
	movs r0, #0x67
	lsls r0, r0, #5
	adds r0, r4, r0
	adds r7, r0, #0
	adds r1, r0, #0
	movs r0, #0x67
	str r0, [r1, #8]
	ldr r1, _08028138
	adds r0, r7, #4
	str r1, [r7, #0x1c]
	str r0, [sp, #0xb4]
	bl sub_801228C
	movs r1, #0x80
	str r1, [r7, #0x14]
	ldr r0, [sp, #0xb4]
	bl sub_801228C
	movs r1, #0
	mvns r1, r1
	str r1, [r7, #0x10]
	ldr r0, [sp, #0xb4]
	bl sub_801228C
	str r6, [r7, #0xc]
	ldr r0, [sp, #0xb4]
	bl sub_801228C
	movs r0, #0xd
	lsls r0, r0, #8
	adds r0, r4, r0
	adds r7, r0, #0
	adds r1, r0, #0
	movs r0, #0x68
	str r0, [r1, #8]
	ldr r1, _08028138
	adds r0, r7, #4
	str r1, [r7, #0x1c]
	str r0, [sp, #0xb0]
	bl sub_801228C
	movs r1, #0x80
	str r1, [r7, #0x14]
	ldr r0, [sp, #0xb0]
	bl sub_801228C
	movs r1, #0
	mvns r1, r1
	str r1, [r7, #0x10]
	ldr r0, [sp, #0xb0]
	bl sub_801228C
	str r6, [r7, #0xc]
	ldr r0, [sp, #0xb0]
	bl sub_801228C
	movs r0, #0x69
	lsls r0, r0, #5
	adds r0, r4, r0
	adds r7, r0, #0
	adds r1, r0, #0
	movs r0, #0x69
	str r0, [r1, #8]
	ldr r1, _08028138
	adds r0, r7, #4
	str r1, [r7, #0x1c]
	str r0, [sp, #0xac]
	bl sub_801228C
	movs r1, #0x80
	str r1, [r7, #0x14]
	ldr r0, [sp, #0xac]
	bl sub_801228C
	movs r1, #0
	mvns r1, r1
	str r1, [r7, #0x10]
	ldr r0, [sp, #0xac]
	bl sub_801228C
	str r6, [r7, #0xc]
	ldr r0, [sp, #0xac]
	bl sub_801228C
	movs r0, #0x35
	lsls r0, r0, #6
	adds r6, r4, r0
	movs r0, #0x6a
	str r0, [r6, #8]
	ldr r1, _08028138
	adds r0, r6, #4
	str r1, [r6, #0x1c]
	str r0, [sp, #0xa8]
	bl sub_801228C
	movs r1, #0x80
	str r1, [r6, #0x14]
	ldr r0, [sp, #0xa8]
	bl sub_801228C
	movs r7, #0
	mvns r7, r7
	str r7, [r6, #0x10]
	ldr r0, [sp, #0xa8]
	bl sub_801228C
	movs r1, #0x10
	str r1, [r6, #0xc]
	ldr r0, [sp, #0xa8]
	bl sub_801228C
	movs r0, #0x6b
	lsls r0, r0, #5
	adds r0, r4, r0
	adds r6, r0, #0
	adds r1, r0, #0
	movs r0, #0x6b
	str r0, [r1, #8]
	ldr r1, _08028138
	adds r0, r6, #4
	str r1, [r6, #0x1c]
	str r0, [sp, #0xa4]
	bl sub_801228C
	movs r1, #0x80
	str r1, [r6, #0x14]
	ldr r0, [sp, #0xa4]
	bl sub_801228C
	str r7, [r6, #0x10]
	ldr r0, [sp, #0xa4]
	bl sub_801228C
	movs r1, #0x10
	str r1, [r6, #0xc]
	ldr r0, [sp, #0xa4]
	bl sub_801228C
	movs r0, #0x1b
	lsls r0, r0, #7
	adds r0, r4, r0
	adds r6, r0, #0
	adds r1, r0, #0
	movs r0, #0x6c
	str r0, [r1, #8]
	ldr r1, _08028138
	adds r0, r6, #4
	str r1, [r6, #0x1c]
	str r0, [sp, #0xa0]
	bl sub_801228C
	movs r1, #0x80
	str r1, [r6, #0x14]
	ldr r0, [sp, #0xa0]
	bl sub_801228C
	str r7, [r6, #0x10]
	ldr r0, [sp, #0xa0]
	bl sub_801228C
	movs r1, #0x10
	str r1, [r6, #0xc]
	ldr r0, [sp, #0xa0]
	bl sub_801228C
	movs r0, #0x6d
	lsls r0, r0, #5
	adds r0, r4, r0
	adds r6, r0, #0
	adds r1, r0, #0
	movs r0, #0x6d
	str r0, [r1, #8]
	ldr r1, _08028138
	adds r0, r6, #4
	str r1, [r6, #0x1c]
	str r0, [sp, #0x9c]
	bl sub_801228C
	movs r1, #0x80
	str r1, [r6, #0x14]
	ldr r0, [sp, #0x9c]
	bl sub_801228C
	str r7, [r6, #0x10]
	ldr r0, [sp, #0x9c]
	bl sub_801228C
	movs r1, #0x10
	str r1, [r6, #0xc]
	ldr r0, [sp, #0x9c]
	bl sub_801228C
	movs r0, #0x37
	lsls r0, r0, #6
	adds r0, r4, r0
	adds r6, r0, #0
	adds r1, r0, #0
	movs r0, #0x6e
	str r0, [r1, #8]
	ldr r1, _08028138
	adds r0, r6, #4
	str r1, [r6, #0x1c]
	str r0, [sp, #0x98]
	bl sub_801228C
	movs r1, #0x80
	str r1, [r6, #0x14]
	ldr r0, [sp, #0x98]
	bl sub_801228C
	str r7, [r6, #0x10]
	ldr r0, [sp, #0x98]
	bl sub_801228C
	movs r1, #0x10
	str r1, [r6, #0xc]
	ldr r0, [sp, #0x98]
	bl sub_801228C
	movs r0, #0x6f
	lsls r0, r0, #5
	adds r0, r4, r0
	adds r6, r0, #0
	adds r1, r0, #0
	movs r0, #0x6f
	str r0, [r1, #8]
	ldr r1, _08028138
	adds r0, r6, #4
	str r1, [r6, #0x1c]
	str r0, [sp, #0x94]
	bl sub_801228C
	movs r1, #0x80
	str r1, [r6, #0x14]
	ldr r0, [sp, #0x94]
	bl sub_801228C
	str r7, [r6, #0x10]
	ldr r0, [sp, #0x94]
	bl sub_801228C
	b %17
16
	b %20
17
	movs r1, #0x10
	str r1, [r6, #0xc]
	ldr r0, [sp, #0x94]
	bl sub_801228C
	movs r0, #7
	lsls r0, r0, #9
	adds r0, r4, r0
	adds r6, r0, #0
	adds r1, r0, #0
	movs r0, #0x70
	b %18
	ALIGN
_08028138 DCDU 0x00002B11
18
	str r0, [r1, #8]
	ldr r1, _08028520
	adds r0, r6, #4
	str r1, [r6, #0x1c]
	str r0, [sp, #0x90]
	bl sub_801228C
	movs r1, #0x80
	str r1, [r6, #0x14]
	ldr r0, [sp, #0x90]
	bl sub_801228C
	str r7, [r6, #0x10]
	ldr r0, [sp, #0x90]
	bl sub_801228C
	movs r1, #0x10
	str r1, [r6, #0xc]
	ldr r0, [sp, #0x90]
	bl sub_801228C
	movs r0, #0x71
	lsls r0, r0, #5
	adds r6, r4, r0
	movs r0, #0x71
	str r0, [r6, #8]
	ldr r1, _08028520
	adds r0, r6, #4
	str r1, [r6, #0x1c]
	str r0, [sp, #0x8c]
	bl sub_801228C
	movs r1, #0x80
	str r1, [r6, #0x14]
	ldr r0, [sp, #0x8c]
	bl sub_801228C
	str r7, [r6, #0x10]
	ldr r0, [sp, #0x8c]
	bl sub_801228C
	movs r1, #0x10
	str r1, [r6, #0xc]
	ldr r0, [sp, #0x8c]
	bl sub_801228C
	movs r0, #0x39
	lsls r0, r0, #6
	adds r0, r4, r0
	adds r6, r0, #0
	adds r1, r0, #0
	movs r0, #0x72
	str r0, [r1, #8]
	ldr r1, _08028520
	adds r0, r6, #4
	adds r7, r0, #0
	str r1, [r6, #0x1c]
	bl sub_801228C
	movs r1, #0x80
	str r1, [r6, #0x14]
	adds r0, r7, #0
	bl sub_801228C
	movs r1, #0
	mvns r1, r1
	str r1, [r6, #0x10]
	adds r0, r7, #0
	bl sub_801228C
	adds r0, r6, #0
	movs r6, #0x10
	str r6, [r0, #0xc]
	adds r0, r7, #0
	bl sub_801228C
	movs r0, #0x73
	lsls r0, r0, #5
	adds r0, r4, r0
	adds r7, r0, #0
	adds r1, r0, #0
	movs r0, #0x73
	str r0, [r1, #8]
	ldr r1, _08028520
	adds r0, r7, #4
	str r1, [r7, #0x1c]
	str r0, [sp, #0x88]
	bl sub_801228C
	movs r1, #0x80
	str r1, [r7, #0x14]
	ldr r0, [sp, #0x88]
	bl sub_801228C
	movs r1, #0
	mvns r1, r1
	str r1, [r7, #0x10]
	ldr r0, [sp, #0x88]
	bl sub_801228C
	str r6, [r7, #0xc]
	ldr r0, [sp, #0x88]
	bl sub_801228C
	movs r0, #0x1d
	lsls r0, r0, #7
	adds r0, r4, r0
	adds r7, r0, #0
	adds r1, r0, #0
	movs r0, #0x74
	str r0, [r1, #8]
	ldr r1, _08028520
	adds r0, r7, #4
	str r1, [r7, #0x1c]
	str r0, [sp, #0x84]
	bl sub_801228C
	movs r1, #0x80
	str r1, [r7, #0x14]
	ldr r0, [sp, #0x84]
	bl sub_801228C
	movs r1, #0
	mvns r1, r1
	str r1, [r7, #0x10]
	ldr r0, [sp, #0x84]
	bl sub_801228C
	str r6, [r7, #0xc]
	ldr r0, [sp, #0x84]
	bl sub_801228C
	movs r0, #0x75
	lsls r0, r0, #5
	adds r0, r4, r0
	adds r7, r0, #0
	adds r1, r0, #0
	movs r0, #0x75
	str r0, [r1, #8]
	ldr r1, _08028520
	adds r0, r7, #4
	str r1, [r7, #0x1c]
	str r0, [sp, #0x80]
	bl sub_801228C
	movs r1, #0x80
	str r1, [r7, #0x14]
	ldr r0, [sp, #0x80]
	bl sub_801228C
	movs r1, #0
	mvns r1, r1
	str r1, [r7, #0x10]
	ldr r0, [sp, #0x80]
	bl sub_801228C
	str r6, [r7, #0xc]
	ldr r0, [sp, #0x80]
	bl sub_801228C
	movs r0, #0x3b
	lsls r0, r0, #6
	adds r0, r4, r0
	adds r7, r0, #0
	adds r1, r0, #0
	movs r0, #0x76
	str r0, [r1, #8]
	ldr r1, _08028520
	adds r0, r7, #4
	str r1, [r7, #0x1c]
	str r0, [sp, #0x7c]
	bl sub_801228C
	movs r1, #0x80
	str r1, [r7, #0x14]
	ldr r0, [sp, #0x7c]
	bl sub_801228C
	movs r1, #0
	mvns r1, r1
	str r1, [r7, #0x10]
	ldr r0, [sp, #0x7c]
	bl sub_801228C
	str r6, [r7, #0xc]
	ldr r0, [sp, #0x7c]
	bl sub_801228C
	movs r0, #0x77
	lsls r0, r0, #5
	adds r0, r4, r0
	adds r7, r0, #0
	adds r1, r0, #0
	movs r0, #0x77
	str r0, [r1, #8]
	ldr r1, _08028520
	adds r0, r7, #4
	str r1, [r7, #0x1c]
	str r0, [sp, #0x78]
	bl sub_801228C
	movs r1, #0x80
	str r1, [r7, #0x14]
	ldr r0, [sp, #0x78]
	bl sub_801228C
	movs r1, #0
	mvns r1, r1
	str r1, [r7, #0x10]
	ldr r0, [sp, #0x78]
	bl sub_801228C
	str r6, [r7, #0xc]
	ldr r0, [sp, #0x78]
	bl sub_801228C
	movs r0, #0xf
	lsls r0, r0, #8
	adds r0, r4, r0
	adds r7, r0, #0
	adds r1, r0, #0
	movs r0, #0x78
	str r0, [r1, #8]
	ldr r1, _08028520
	adds r0, r7, #4
	str r1, [r7, #0x1c]
	str r0, [sp, #0x74]
	bl sub_801228C
	movs r1, #0x80
	str r1, [r7, #0x14]
	ldr r0, [sp, #0x74]
	bl sub_801228C
	movs r1, #0
	mvns r1, r1
	str r1, [r7, #0x10]
	ldr r0, [sp, #0x74]
	bl sub_801228C
	str r6, [r7, #0xc]
	ldr r0, [sp, #0x74]
	bl sub_801228C
	movs r0, #0x79
	lsls r0, r0, #5
	adds r6, r4, r0
	movs r0, #0x79
	str r0, [r6, #8]
	ldr r1, _08028520
	adds r0, r6, #4
	str r1, [r6, #0x1c]
	str r0, [sp, #0x70]
	bl sub_801228C
	movs r1, #0x80
	str r1, [r6, #0x14]
	ldr r0, [sp, #0x70]
	bl sub_801228C
	movs r7, #0
	mvns r7, r7
	str r7, [r6, #0x10]
	ldr r0, [sp, #0x70]
	bl sub_801228C
	movs r1, #0x10
	str r1, [r6, #0xc]
	ldr r0, [sp, #0x70]
	bl sub_801228C
	movs r0, #0x3d
	lsls r0, r0, #6
	adds r0, r4, r0
	adds r6, r0, #0
	adds r1, r0, #0
	movs r0, #0x7a
	str r0, [r1, #8]
	ldr r1, _08028520
	adds r0, r6, #4
	str r1, [r6, #0x1c]
	str r0, [sp, #0x6c]
	bl sub_801228C
	movs r1, #0x80
	str r1, [r6, #0x14]
	ldr r0, [sp, #0x6c]
	bl sub_801228C
	str r7, [r6, #0x10]
	ldr r0, [sp, #0x6c]
	bl sub_801228C
	movs r1, #0x10
	str r1, [r6, #0xc]
	ldr r0, [sp, #0x6c]
	bl sub_801228C
	movs r0, #0x7b
	lsls r0, r0, #5
	adds r0, r4, r0
	adds r6, r0, #0
	adds r1, r0, #0
	movs r0, #0x7b
	str r0, [r1, #8]
	ldr r1, _08028520
	adds r0, r6, #4
	str r1, [r6, #0x1c]
	str r0, [sp, #0x68]
	bl sub_801228C
	movs r1, #0x80
	str r1, [r6, #0x14]
	ldr r0, [sp, #0x68]
	bl sub_801228C
	str r7, [r6, #0x10]
	ldr r0, [sp, #0x68]
	bl sub_801228C
	movs r1, #0x10
	str r1, [r6, #0xc]
	ldr r0, [sp, #0x68]
	bl sub_801228C
	movs r0, #0x1f
	lsls r0, r0, #7
	adds r0, r4, r0
	adds r6, r0, #0
	adds r1, r0, #0
	movs r0, #0x7c
	str r0, [r1, #8]
	ldr r1, _08028520
	adds r0, r6, #4
	str r1, [r6, #0x1c]
	str r0, [sp, #0x64]
	bl sub_801228C
	movs r1, #0x80
	str r1, [r6, #0x14]
	ldr r0, [sp, #0x64]
	bl sub_801228C
	str r7, [r6, #0x10]
	ldr r0, [sp, #0x64]
	bl sub_801228C
	movs r1, #0x10
	str r1, [r6, #0xc]
	ldr r0, [sp, #0x64]
	bl sub_801228C
	movs r0, #0x7d
	lsls r0, r0, #5
	adds r0, r4, r0
	adds r6, r0, #0
	adds r1, r0, #0
	movs r0, #0x7d
	str r0, [r1, #8]
	ldr r1, _08028520
	adds r0, r6, #4
	str r1, [r6, #0x1c]
	str r0, [sp, #0x60]
	bl sub_801228C
	movs r1, #0x80
	str r1, [r6, #0x14]
	ldr r0, [sp, #0x60]
	bl sub_801228C
	str r7, [r6, #0x10]
	ldr r0, [sp, #0x60]
	bl sub_801228C
	movs r1, #0x10
	str r1, [r6, #0xc]
	ldr r0, [sp, #0x60]
	bl sub_801228C
	movs r0, #0x3f
	lsls r0, r0, #6
	adds r0, r4, r0
	adds r6, r0, #0
	adds r1, r0, #0
	movs r0, #0x7e
	str r0, [r1, #8]
	ldr r1, _08028520
	adds r0, r6, #4
	str r1, [r6, #0x1c]
	str r0, [sp, #0x5c]
	bl sub_801228C
	movs r1, #0x80
	str r1, [r6, #0x14]
	ldr r0, [sp, #0x5c]
	bl sub_801228C
	str r7, [r6, #0x10]
	ldr r0, [sp, #0x5c]
	bl sub_801228C
	movs r1, #0x10
	str r1, [r6, #0xc]
	ldr r0, [sp, #0x5c]
	bl sub_801228C
	movs r0, #0x7f
	lsls r0, r0, #5
	adds r0, r4, r0
	adds r6, r0, #0
	adds r1, r0, #0
	movs r0, #0x7f
	str r0, [r1, #8]
	ldr r1, _08028520
	adds r0, r6, #4
	str r1, [r6, #0x1c]
	str r0, [sp, #0x58]
	bl sub_801228C
	movs r1, #0x80
	str r1, [r6, #0x14]
	ldr r0, [sp, #0x58]
	bl sub_801228C
	str r7, [r6, #0x10]
	ldr r0, [sp, #0x58]
	bl sub_801228C
	movs r1, #0x10
	str r1, [r6, #0xc]
	ldr r0, [sp, #0x58]
	bl sub_801228C
	movs r0, #1
	lsls r0, r0, #0xc
	adds r6, r4, r0
	movs r1, #0x80
	str r1, [r6, #8]
	ldr r1, _08028520
	adds r0, r6, #4
	str r1, [r6, #0x1c]
	str r0, [sp, #0x54]
	bl sub_801228C
	movs r1, #0x80
	str r1, [r6, #0x14]
	ldr r0, [sp, #0x54]
	bl sub_801228C
	str r7, [r6, #0x10]
	ldr r0, [sp, #0x54]
	bl sub_801228C
	movs r1, #0x10
	str r1, [r6, #0xc]
	ldr r0, [sp, #0x54]
	bl sub_801228C
	movs r0, #0x81
	lsls r0, r0, #5
	adds r0, r4, r0
	adds r6, r0, #0
	adds r1, r0, #0
	movs r0, #0x81
	str r0, [r1, #8]
	ldr r1, _08028520
	adds r0, r6, #4
	adds r7, r0, #0
	str r1, [r6, #0x1c]
	bl sub_801228C
	movs r1, #0x80
	str r1, [r6, #0x14]
	adds r0, r7, #0
	bl sub_801228C
	movs r1, #0
	mvns r1, r1
	str r1, [r6, #0x10]
	adds r0, r7, #0
	bl sub_801228C
	adds r0, r6, #0
	movs r6, #0x10
	str r6, [r0, #0xc]
	adds r0, r7, #0
	bl sub_801228C
	movs r0, #0x41
	lsls r0, r0, #6
	adds r0, r4, r0
	adds r7, r0, #0
	adds r1, r0, #0
	movs r0, #0x82
	str r0, [r1, #8]
	ldr r1, _08028520
	b %19
	ALIGN
_08028520 DCDU 0x00002B11
19
	adds r0, r7, #4
	str r1, [r7, #0x1c]
	str r0, [sp, #0x50]
	bl sub_801228C
	movs r1, #0x80
	str r1, [r7, #0x14]
	ldr r0, [sp, #0x50]
	bl sub_801228C
	movs r1, #0
	mvns r1, r1
	str r1, [r7, #0x10]
	ldr r0, [sp, #0x50]
	bl sub_801228C
	str r6, [r7, #0xc]
	ldr r0, [sp, #0x50]
	bl sub_801228C
	movs r0, #0x83
	lsls r0, r0, #5
	adds r0, r4, r0
	adds r7, r0, #0
	adds r1, r0, #0
	movs r0, #0x83
	str r0, [r1, #8]
	ldr r1, _08028938
	adds r0, r7, #4
	str r1, [r7, #0x1c]
	str r0, [sp, #0x4c]
	bl sub_801228C
	movs r1, #0x80
	str r1, [r7, #0x14]
	ldr r0, [sp, #0x4c]
	bl sub_801228C
	movs r1, #0
	mvns r1, r1
	str r1, [r7, #0x10]
	ldr r0, [sp, #0x4c]
	bl sub_801228C
	str r6, [r7, #0xc]
	ldr r0, [sp, #0x4c]
	bl sub_801228C
	movs r0, #0x21
	lsls r0, r0, #7
	adds r0, r4, r0
	adds r7, r0, #0
	adds r1, r0, #0
	movs r0, #0x84
	str r0, [r1, #8]
	ldr r1, _08028938
	adds r0, r7, #4
	str r1, [r7, #0x1c]
	str r0, [sp, #0x48]
	bl sub_801228C
	movs r1, #0x80
	str r1, [r7, #0x14]
	ldr r0, [sp, #0x48]
	bl sub_801228C
	movs r1, #0
	mvns r1, r1
	str r1, [r7, #0x10]
	ldr r0, [sp, #0x48]
	bl sub_801228C
	str r6, [r7, #0xc]
	ldr r0, [sp, #0x48]
	bl sub_801228C
	movs r0, #0x85
	lsls r0, r0, #5
	adds r0, r4, r0
	adds r7, r0, #0
	adds r1, r0, #0
	movs r0, #0x85
	str r0, [r1, #8]
	ldr r1, _08028938
	adds r0, r7, #4
	str r1, [r7, #0x1c]
	str r0, [sp, #0x44]
	bl sub_801228C
	movs r1, #0x80
	str r1, [r7, #0x14]
	ldr r0, [sp, #0x44]
	bl sub_801228C
	movs r1, #0
	mvns r1, r1
	str r1, [r7, #0x10]
	ldr r0, [sp, #0x44]
	bl sub_801228C
	str r6, [r7, #0xc]
	ldr r0, [sp, #0x44]
	bl sub_801228C
	movs r0, #0x43
	lsls r0, r0, #6
	adds r0, r4, r0
	adds r7, r0, #0
	adds r1, r0, #0
	movs r0, #0x86
	str r0, [r1, #8]
	ldr r1, _08028938
	adds r0, r7, #4
	str r1, [r7, #0x1c]
	str r0, [sp, #0x40]
	bl sub_801228C
	movs r1, #0x80
	str r1, [r7, #0x14]
	ldr r0, [sp, #0x40]
	bl sub_801228C
	movs r1, #0
	mvns r1, r1
	str r1, [r7, #0x10]
	ldr r0, [sp, #0x40]
	bl sub_801228C
	str r6, [r7, #0xc]
	ldr r0, [sp, #0x40]
	bl sub_801228C
	movs r0, #0x87
	lsls r0, r0, #5
	adds r0, r4, r0
	adds r7, r0, #0
	adds r1, r0, #0
	movs r0, #0x87
	str r0, [r1, #8]
	ldr r1, _08028938
	adds r0, r7, #4
	str r1, [r7, #0x1c]
	str r0, [sp, #0x3c]
	bl sub_801228C
	movs r1, #0x80
	str r1, [r7, #0x14]
	ldr r0, [sp, #0x3c]
	bl sub_801228C
	movs r1, #0
	mvns r1, r1
	str r1, [r7, #0x10]
	ldr r0, [sp, #0x3c]
	bl sub_801228C
	str r6, [r7, #0xc]
	ldr r0, [sp, #0x3c]
	bl sub_801228C
	movs r0, #0x11
	lsls r0, r0, #8
	adds r6, r4, r0
	movs r0, #0x88
	str r0, [r6, #8]
	ldr r1, _08028938
	adds r0, r6, #4
	str r1, [r6, #0x1c]
	str r0, [sp, #0x38]
	bl sub_801228C
	movs r1, #0x80
	str r1, [r6, #0x14]
	ldr r0, [sp, #0x38]
	bl sub_801228C
	movs r7, #0
	mvns r7, r7
	str r7, [r6, #0x10]
	ldr r0, [sp, #0x38]
	bl sub_801228C
	movs r1, #0x10
	str r1, [r6, #0xc]
	ldr r0, [sp, #0x38]
	bl sub_801228C
	movs r0, #0x89
	lsls r0, r0, #5
	adds r0, r4, r0
	adds r6, r0, #0
	adds r1, r0, #0
	movs r0, #0x89
	str r0, [r1, #8]
	ldr r1, _08028938
	adds r0, r6, #4
	str r1, [r6, #0x1c]
	str r0, [sp, #0x34]
	bl sub_801228C
	movs r1, #0x80
	str r1, [r6, #0x14]
	ldr r0, [sp, #0x34]
	bl sub_801228C
	str r7, [r6, #0x10]
	ldr r0, [sp, #0x34]
	bl sub_801228C
	movs r1, #0x10
	str r1, [r6, #0xc]
	ldr r0, [sp, #0x34]
	bl sub_801228C
	movs r0, #0x45
	lsls r0, r0, #6
	adds r0, r4, r0
	adds r6, r0, #0
	adds r1, r0, #0
	movs r0, #0x8a
	str r0, [r1, #8]
	ldr r1, _08028938
	adds r0, r6, #4
	str r1, [r6, #0x1c]
	str r0, [sp, #0x30]
	bl sub_801228C
	movs r1, #0x80
	str r1, [r6, #0x14]
	ldr r0, [sp, #0x30]
	bl sub_801228C
	str r7, [r6, #0x10]
	ldr r0, [sp, #0x30]
	bl sub_801228C
	movs r1, #0x10
	str r1, [r6, #0xc]
	ldr r0, [sp, #0x30]
	bl sub_801228C
	movs r0, #0x8b
	lsls r0, r0, #5
	adds r0, r4, r0
	adds r6, r0, #0
	adds r1, r0, #0
	movs r0, #0x8b
	str r0, [r1, #8]
	ldr r1, _08028938
	adds r0, r6, #4
	str r1, [r6, #0x1c]
	str r0, [sp, #0x2c]
	bl sub_801228C
	movs r1, #0x80
	str r1, [r6, #0x14]
	ldr r0, [sp, #0x2c]
	bl sub_801228C
	str r7, [r6, #0x10]
	ldr r0, [sp, #0x2c]
	bl sub_801228C
	movs r1, #0x10
	str r1, [r6, #0xc]
	ldr r0, [sp, #0x2c]
	bl sub_801228C
	movs r0, #0x23
	lsls r0, r0, #7
	adds r0, r4, r0
	adds r6, r0, #0
	adds r1, r0, #0
	movs r0, #0x8c
	str r0, [r1, #8]
	ldr r1, _08028938
	adds r0, r6, #4
	str r1, [r6, #0x1c]
	str r0, [sp, #0x28]
	bl sub_801228C
	movs r1, #0x80
	str r1, [r6, #0x14]
	ldr r0, [sp, #0x28]
	bl sub_801228C
	str r7, [r6, #0x10]
	ldr r0, [sp, #0x28]
	bl sub_801228C
	movs r1, #0x10
	str r1, [r6, #0xc]
	ldr r0, [sp, #0x28]
	bl sub_801228C
	movs r0, #0x8d
	lsls r0, r0, #5
	adds r0, r4, r0
	adds r6, r0, #0
	adds r1, r0, #0
	movs r0, #0x8d
	str r0, [r1, #8]
	ldr r1, _08028938
	adds r0, r6, #4
	str r1, [r6, #0x1c]
	str r0, [sp, #0x24]
	bl sub_801228C
	movs r1, #0x80
	str r1, [r6, #0x14]
	ldr r0, [sp, #0x24]
	bl sub_801228C
	str r7, [r6, #0x10]
	ldr r0, [sp, #0x24]
	bl sub_801228C
	movs r1, #0x10
	str r1, [r6, #0xc]
	ldr r0, [sp, #0x24]
	bl sub_801228C
	movs r0, #0x47
	lsls r0, r0, #6
	adds r0, r4, r0
	adds r6, r0, #0
	adds r1, r0, #0
	movs r0, #0x8e
	str r0, [r1, #8]
	ldr r1, _08028938
	adds r0, r6, #4
	str r1, [r6, #0x1c]
	str r0, [sp, #0x20]
	bl sub_801228C
	movs r1, #0x80
	str r1, [r6, #0x14]
	ldr r0, [sp, #0x20]
	bl sub_801228C
	str r7, [r6, #0x10]
	ldr r0, [sp, #0x20]
	bl sub_801228C
	movs r1, #0x10
	str r1, [r6, #0xc]
	ldr r0, [sp, #0x20]
	bl sub_801228C
	movs r0, #0x8f
	lsls r0, r0, #5
	adds r6, r4, r0
	movs r0, #0x8f
	str r0, [r6, #8]
	ldr r1, _08028938
	adds r0, r6, #4
	str r1, [r6, #0x1c]
	str r0, [sp, #0x1c]
	bl sub_801228C
	movs r1, #0x80
	str r1, [r6, #0x14]
	ldr r0, [sp, #0x1c]
	bl sub_801228C
	str r7, [r6, #0x10]
	ldr r0, [sp, #0x1c]
	bl sub_801228C
	movs r1, #0x10
	str r1, [r6, #0xc]
	ldr r0, [sp, #0x1c]
	bl sub_801228C
	movs r0, #9
	lsls r0, r0, #9
	adds r0, r4, r0
	adds r6, r0, #0
	adds r1, r0, #0
	movs r0, #0x90
	str r0, [r1, #8]
	ldr r1, _08028938
	adds r0, r6, #4
	adds r7, r0, #0
	str r1, [r6, #0x1c]
	bl sub_801228C
	movs r1, #0x80
	str r1, [r6, #0x14]
	adds r0, r7, #0
	bl sub_801228C
	movs r1, #0
	mvns r1, r1
	str r1, [r6, #0x10]
	adds r0, r7, #0
	bl sub_801228C
	movs r1, #0x10
	str r1, [r6, #0xc]
	adds r0, r7, #0
	bl sub_801228C
	movs r0, #0x91
	lsls r0, r0, #5
	adds r6, r4, r0
	movs r0, #0x91
	str r0, [r6, #8]
	ldr r1, _08028938
	adds r0, r6, #4
	adds r7, r0, #0
	str r1, [r6, #0x1c]
	bl sub_801228C
	movs r0, #0x80
	str r0, [r6, #0x14]
	adds r0, r7, #0
	bl sub_801228C
	movs r1, #0
	mvns r1, r1
	str r1, [r6, #0x10]
	adds r0, r7, #0
	bl sub_801228C
	movs r1, #0x10
	str r1, [r6, #0xc]
	adds r0, r7, #0
	bl sub_801228C
	movs r0, #0x49
	lsls r0, r0, #6
	adds r6, r4, r0
	movs r0, #0x92
	str r0, [r6, #8]
	ldr r1, _08028938
	adds r0, r6, #4
	str r1, [r6, #0x1c]
	str r0, [sp, #0x18]
	bl sub_801228C
	movs r0, #0x80
	str r0, [r6, #0x14]
	ldr r0, [sp, #0x18]
	bl sub_801228C
	movs r1, #0
	mvns r1, r1
	str r1, [r6, #0x10]
	ldr r0, [sp, #0x18]
	bl sub_801228C
	movs r1, #0x10
	str r1, [r6, #0xc]
	ldr r0, [sp, #0x18]
	bl sub_801228C
	movs r0, #0x93
	lsls r0, r0, #5
	adds r0, r4, r0
	adds r7, r0, #0
	adds r1, r0, #0
	movs r0, #0x93
	str r0, [r1, #8]
	ldr r1, _08028938
	adds r0, r7, #4
	str r1, [r7, #0x1c]
	str r0, [sp, #0x14]
	bl sub_801228C
	movs r0, #0x80
	str r0, [r7, #0x14]
	ldr r0, [sp, #0x14]
	bl sub_801228C
	movs r1, #0
	mvns r1, r1
	str r1, [r7, #0x10]
	ldr r0, [sp, #0x14]
	bl sub_801228C
	movs r1, #0x10
	str r1, [r7, #0xc]
	ldr r0, [sp, #0x14]
	bl sub_801228C
	movs r0, #0x25
	lsls r0, r0, #7
	adds r0, r4, r0
	adds r7, r0, #0
	adds r1, r0, #0
	movs r0, #0x94
	str r0, [r1, #8]
	ldr r1, _08028938
	adds r0, r7, #4
	str r1, [r7, #0x1c]
	b %21
20
	b %23
21
	str r0, [sp, #0x10]
	bl sub_801228C
	movs r0, #0x80
	str r0, [r7, #0x14]
	ldr r0, [sp, #0x10]
	bl sub_801228C
	movs r1, #0
	mvns r1, r1
	str r1, [r7, #0x10]
	ldr r0, [sp, #0x10]
	bl sub_801228C
	movs r1, #0x10
	str r1, [r7, #0xc]
	ldr r0, [sp, #0x10]
	bl sub_801228C
	movs r0, #0x95
	lsls r0, r0, #5
	adds r0, r4, r0
	adds r7, r0, #0
	b %22
	ALIGN
_08028938 DCDU 0x00002B11
22
	adds r1, r0, #0
	movs r0, #0x95
	str r0, [r1, #8]
	ldr r1, _08028BD8
	adds r0, r7, #4
	str r1, [r7, #0x1c]
	str r0, [sp, #0xc]
	bl sub_801228C
	movs r0, #0x80
	str r0, [r7, #0x14]
	ldr r0, [sp, #0xc]
	bl sub_801228C
	movs r1, #0
	mvns r1, r1
	str r1, [r7, #0x10]
	ldr r0, [sp, #0xc]
	bl sub_801228C
	movs r1, #0x10
	str r1, [r7, #0xc]
	ldr r0, [sp, #0xc]
	bl sub_801228C
	movs r0, #0x4b
	lsls r0, r0, #6
	adds r0, r4, r0
	adds r7, r0, #0
	adds r1, r0, #0
	movs r0, #0x96
	str r0, [r1, #8]
	ldr r1, _08028BD8
	adds r0, r7, #4
	str r1, [r7, #0x1c]
	str r0, [sp, #8]
	bl sub_801228C
	movs r0, #0x80
	str r0, [r7, #0x14]
	ldr r0, [sp, #8]
	bl sub_801228C
	movs r1, #0
	mvns r1, r1
	str r1, [r7, #0x10]
	ldr r0, [sp, #8]
	bl sub_801228C
	movs r1, #0x10
	str r1, [r7, #0xc]
	ldr r0, [sp, #8]
	bl sub_801228C
	movs r0, #0x97
	lsls r0, r0, #5
	adds r0, r4, r0
	adds r7, r0, #0
	adds r1, r0, #0
	movs r0, #0x97
	str r0, [r1, #8]
	ldr r1, _08028BD8
	adds r0, r7, #4
	str r1, [r7, #0x1c]
	str r0, [sp, #4]
	bl sub_801228C
	movs r1, #0x80
	str r1, [r7, #0x14]
	ldr r0, [sp, #4]
	bl sub_801228C
	movs r0, #0
	mvns r0, r0
	str r0, [r7, #0x10]
	ldr r0, [sp, #4]
	bl sub_801228C
	movs r1, #0x10
	str r1, [r7, #0xc]
	ldr r0, [sp, #4]
	bl sub_801228C
	ldr r0, [sp, #0x144]
	movs r7, #0
	str r7, [r0, #0x10]
	ldr r0, [sp, #0x140]
	bl sub_801228C
	ldr r0, [sp, #0x13c]
	str r7, [r0, #0x10]
	ldr r0, [sp, #0x138]
	bl sub_801228C
	ldr r0, [sp, #0x12c]
	str r7, [r0, #0x10]
	ldr r0, [sp, #0x128]
	bl sub_801228C
	ldr r0, [sp, #0x124]
	str r7, [r0, #0x10]
	ldr r0, [sp, #0x120]
	bl sub_801228C
	ldr r0, [sp, #0x11c]
	str r7, [r0, #0x10]
	ldr r0, [sp, #0x118]
	bl sub_801228C
	ldr r1, [sp, #0x114]
	str r7, [r1, #0x10]
	ldr r0, [sp, #0x110]
	bl sub_801228C
	ldr r0, [sp, #0x10c]
	str r7, [r0, #0x10]
	ldr r0, [sp, #0x108]
	bl sub_801228C
	str r7, [r5, #0x10]
	ldr r0, [sp, #0xe4]
	bl sub_801228C
	ldr r0, [sp, #0x104]
	str r7, [r0, #0x10]
	ldr r0, [sp, #0x100]
	bl sub_801228C
	ldr r0, [sp, #0xfc]
	str r7, [r0, #0x10]
	ldr r0, [sp, #0xf8]
	bl sub_801228C
	ldr r0, [sp, #0xf4]
	str r7, [r0, #0x10]
	ldr r0, [sp, #0xf0]
	bl sub_801228C
	ldr r0, [sp, #0xec]
	str r7, [r0, #0x10]
	ldr r0, [sp, #0xe8]
	bl sub_801228C
	str r7, [r6, #0x10]
	ldr r0, [sp, #0x18]
	bl sub_801228C
	ldr r0, [sp, #0x134]
	str r7, [r0, #0x10]
	ldr r0, [sp, #0x130]
	bl sub_801228C
	movs r0, #0x13
	lsls r0, r0, #8
	adds r0, r4, r0
	strb r7, [r0, #4]
23
	add sp, #0x164
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	thumb_func_start sub_8028A7C
sub_8028A7C
	push {r3, r4, r5, r6, r7, lr}
24
	adds r6, r0, #0
	ldr r0, _08028BDC
	adds r4, r2, #0
	ldr r0, [r0]
	cmp r0, #0
	beq %33
	movs r2, #0x13
	lsls r2, r2, #8
	adds r5, r6, r2
	strb r1, [r5, #5]
	cmp r1, #7
	bhs %33
	add r3, pc, #0x8
	ldrb r3, [r3, r1]
	lsls r3, r3, #1
	add pc, r3
	ALIGN
25
	DCB 0x12
26
	DCB 0x04
27
	DCB 0x15
28
	DCB 0x1A
29
	DCB 0x2A
30
	DCB 0x3F
31
	DCB 0x2F, 0x00
loc_8028aa8
	cmp r4, #0xff
	beq %32
	ldr r5, _08028BDC
	bl sub_800B6AC
	adds r1, r4, #0
	ldr r0, [r5]
	bl sub_800B698
32
	ldr r0, _08028BDC
	movs r1, #0x40
	ldr r0, [r0]
	bl sub_800B6EC
33
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
loc_8028aca
	movs r1, #0xff
	mvns r1, r1
	bl sub_800B6EC
	b %33
loc_8028ad4
	cmp r4, #0xff
	beq %34
	ldr r5, _08028BDC
	bl sub_800B6AC
	adds r1, r4, #0
	ldr r0, [r5]
	bl sub_800B698
34
	ldr r0, _08028BDC
	movs r1, #0xff
	adds r1, #1
	ldr r0, [r0]
	bl sub_800B6EC
	b %33
loc_8028af4
	movs r1, #0xff
	mvns r1, r1
	bl sub_800B6EC
	b %33
loc_8028afe
	ldr r7, _08028BDC
	bl sub_800B72A
	cmp r0, #0
	beq %35
	movs r1, #0xff
	mvns r1, r1
	ldr r0, [r7]
	bl sub_800B6EC
	strb r4, [r5]
	b %33
35
	adds r2, r4, #0
	movs r1, #3
	adds r0, r6, #0
	b %24
loc_8028b1e
	ldr r0, _08028BE0
	ldr r0, [r0]
	bl sub_800B764
	strb r0, [r5, #6]
	strb r4, [r5]
	b %33

	thumb_func_start sub_8028B2C
sub_8028B2C
	ldr r1, _08028BDC
	push {r3, r4, r5, lr}
	ldr r1, [r1]
	cmp r1, #0
	beq %43
	movs r2, #0x13
	lsls r2, r2, #8
	adds r4, r0, r2
	ldrb r0, [r4, #5]
	cmp r0, #7
	bhs %43
	add r3, pc, #0x8
	ldrb r3, [r3, r0]
	lsls r3, r3, #1
	add pc, r3
	ALIGN
36
	DCB 0x0B
37
	DCB 0x04
38
	DCB 0x0E
39
	DCB 0x04
40
	DCB 0x0E
41
	DCB 0x32
42
	DCB 0x1C, 0x00
loc_8028b54
	adds r0, r1, #0
	bl sub_800B714
	cmp r0, #0
	bne %43
	strb r0, [r4, #4]
	strb r0, [r4, #5]
43
	pop {r3, r4, r5}
	pop {r3}
	bx r3
loc_8028b68
	ldr r5, _08028BDC
	adds r0, r1, #0
	bl sub_800B714
	cmp r0, #0
	bne %43
	movs r0, #1
	strb r0, [r4, #4]
	movs r0, #0
	strb r0, [r4, #5]
	ldr r0, [r5]
	bl sub_800B6AC
	b %43
loc_8028b84
	ldr r5, _08028BDC
	adds r0, r1, #0
	bl sub_800B714
	cmp r0, #0
	bne %43
	ldr r0, [r5]
	bl sub_800B6AC
	movs r1, #0xff
	adds r1, #1
	ldr r0, [r5]
	bl sub_800B6EC
	ldrb r1, [r4]
	ldr r0, [r5]
	bl sub_800B698
	movs r0, #0
	strb r0, [r4, #4]
	strb r0, [r4, #5]
	b %43
loc_8028bb0
	ldr r0, _08028BE0
	ldr r0, [r0]
	bl sub_800B764
	ldrb r1, [r4, #6]
	cmp r0, r1
	beq %43
	ldr r5, _08028BDC
	ldr r0, [r5]
	bl sub_800B6AC
	ldrb r1, [r4]
	ldr r0, [r5]
	bl sub_800B698
	movs r0, #0
	strb r0, [r4, #4]
	strb r0, [r4]
	strb r0, [r4, #5]
	b %43
	ALIGN
_08028BD8 DCDU 0x00002B11
_08028BDC DCDU gUnknown_03003460
_08028BE0 DCDU gUnknown_03003E94
	END
