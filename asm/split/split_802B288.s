	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_03003458
	IMPORT gUnknown_0300345C
	IMPORT gUnknown_030034F8
	IMPORT gUnknown_03003EB8
	IMPORT gUnknown_0805108A
	IMPORT sub_80003F4
	IMPORT sub_800065C
	IMPORT sub_80007A0
	IMPORT sub_8000914
	IMPORT sub_8000DE6
	IMPORT sub_800116A
	IMPORT sub_80133A0
	IMPORT sub_80138E2
	IMPORT sub_80143E0
	IMPORT sub_8014436
	IMPORT sub_80147FA
	IMPORT sub_8020AB6
	IMPORT sub_802459E
	IMPORT sub_8028C2E
	IMPORT __call_via_r1
	IMPORT __vecmap1c__FPvT1iPFPv_v
	IMPORT __vecmap1ci__FPvT1iPFPvi_v
	IMPORT __nw__FUi
	IMPORT sub_803DA18
	IMPORT sub_803F9C4
	IMPORT sub_8040034
	IMPORT sub_80401E4
	IMPORT sub_804025C

	thumb_func_start sub_802B288
sub_802B288
	push {r4, lr}
	adds r4, r0, #0
	bne %2
	movs r0, #0xff
	adds r0, #0xfd
	bl __nw__FUi
	adds r4, r0, #0
	bne %2
	adds r0, r4, #0
1
	pop {r4}
	pop {r3}
	bx r3
2
	adds r0, r4, #4
	bl sub_80143E0
	adds r0, r4, #0
	adds r0, #0x7c
	bl sub_80143E0
	adds r1, r4, #0
	adds r1, #0xff
	adds r1, #0xe5
	movs r2, #0x78
	adds r0, r4, #0
	adds r0, #0xf4
	ldr r3, _0802B640
	bl __vecmap1c__FPvT1iPFPv_v
	movs r1, #0
	strb r1, [r4]
	strb r1, [r4, #2]
	movs r0, #0
3
	lsls r2, r0, #2
	adds r2, r2, r4
	adds r2, #0xff
	adds r0, #1
	lsls r0, r0, #0x18
	adds r2, #0xc1
	lsrs r0, r0, #0x18
	cmp r0, #3
	str r1, [r2, #0x24]
	blo %3
	movs r0, #0
4
	lsls r2, r0, #2
	adds r2, r2, r4
	adds r2, #0xff
	adds r0, #1
	lsls r0, r0, #0x18
	adds r2, #0xc1
	lsrs r0, r0, #0x18
	cmp r0, #2
	str r1, [r2, #0x30]
	blo %4
	adds r0, r4, #0
	b %1

	thumb_func_start sub_802B2F8
sub_802B2F8
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	movs r4, #0
	movs r7, #0
5
	lsls r0, r4, #2
	adds r1, r0, r5
	adds r6, r1, #0
	adds r6, #0xff
	adds r6, #0xc1
	ldr r0, [r6, #0x24]
	cmp r0, #0
	beq %6
	ldr r0, _0802B644
	adds r1, #0xff
	adds r1, #0xe5
	ldr r0, [r0]
	bl sub_8000DE6
	str r7, [r6, #0x24]
6
	adds r4, #1
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	cmp r4, #3
	blo %5
	movs r4, #0
7
	lsls r0, r4, #2
	adds r1, r0, r5
	adds r6, r1, #0
	adds r6, #0xff
	adds r6, #0xc1
	ldr r0, [r6, #0x30]
	cmp r0, #0
	beq %8
	ldr r0, _0802B644
	adds r1, #0xff
	adds r1, #0xf1
	ldr r0, [r0]
	bl sub_8000DE6
	str r7, [r6, #0x30]
8
	adds r4, #1
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	cmp r4, #2
	blo %7
	ldr r1, [r5, #4]
	adds r0, r5, #4
	ldr r2, [r1, #4]
	adds r1, r2, r1
	bl __call_via_r1
	adds r0, r5, #0
	adds r0, #0xf4
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r1, r2, r1
	bl __call_via_r1
	adds r0, r5, #0
	adds r0, #0xff
	adds r0, #0x6d
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r1, r2, r1
	bl __call_via_r1
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_802B382
sub_802B382
	adds r1, r0, #0
	ldrb r1, [r1, #2]
	movs r0, #1
	cmp r1, #0
	bne %9
	movs r0, #0
9
	bx lr

	thumb_func_start sub_802B390
sub_802B390
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldrb r0, [r0, #2]
	adds r6, r1, #0
	cmp r0, #0
	beq %10
	adds r0, r4, #0
	bl sub_802B2F8
10
	adds r1, r4, #0
	adds r1, #0x7c
	movs r2, #0x77
	mvns r2, r2
	adds r5, r1, #0
	adds r0, r1, #0
	adds r0, #0xf0
	ldr r3, _0802B648
	bl __vecmap1ci__FPvT1iPFPvi_v
	movs r1, #0
	adds r0, r5, #0
	bl sub_8014436
	movs r1, #0
	adds r0, r4, #4
	bl sub_8014436
	cmp r6, #0
	beq %11
	adds r0, r4, #0
	bl sub_803DA18
11
	pop {r4, r5, r6}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_802B3D6
sub_802B3D6
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	movs r0, #1
	sub sp, #0x14
	strb r0, [r6, #2]
	movs r0, #0
	adds r1, r6, #0
	adds r1, #0xff
	movs r5, #0
	adds r1, #0xc9
	strb r0, [r6, #1]
	str r1, [sp, #0x10]
12
	ldr r0, _0802B644
	ldr r0, [r0]
	bl sub_800116A
	lsls r1, r5, #2
	adds r7, r1, r6
	adds r7, #0xff
	adds r7, #0xc1
	ldr r2, _0802B64C
	str r0, [r7, #0x24]
	lsls r1, r5, #1
	ldrh r1, [r2, r1]
	bl sub_800065C
	movs r0, #0xf0
	add r3, sp, #0
	strh r0, [r3, #0xc]
	movs r0, #0xa0
	strh r0, [r3, #0xe]
	ldr r0, [r7, #0x24]
	add r1, sp, #0xc
	bl sub_8040034
	ldr r0, [r7, #0x24]
	movs r1, #3
	ldrh r2, [r0, #0x2a]
	lsls r1, r1, #0xa
	movs r3, #0
	bics r2, r1
	orrs r2, r3
	strh r2, [r0, #0x2a]
	movs r1, #0x14
	strb r1, [r0, #5]
	ldr r1, [r0]
	lsls r2, r1, #0x16
	bmi %13
	movs r2, #0x80
	orrs r1, r2
	str r1, [r0]
13
	cmp r5, #2
	bne %15
	ldr r0, [sp, #0x10]
	lsls r2, r5, #0xb
	ldr r4, [r0, #0x24]
	ldrh r1, [r4, #0x28]
	bics r1, r2
	orrs r1, r2
	strh r1, [r4, #0x28]
	adds r0, r4, #0
	bl sub_80003F4
	ldr r0, [r4]
	lsls r0, r0, #0x1e
	bmi %14
	adds r0, r4, #0
	bl sub_804025C
14
	ldr r0, [r4]
	movs r2, #0x80
	orrs r0, r2
	str r0, [r4]
15
	movs r1, #1
	ldr r0, [r7, #0x24]
	bl sub_80401E4
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #3
	blo %12
	movs r4, #0
	movs r7, #0xf0
16
	ldr r0, _0802B644
	ldr r0, [r0]
	bl sub_800116A
	lsls r1, r4, #2
	adds r5, r1, r6
	adds r5, #0xff
	adds r5, #0xc1
	ldr r1, _0802B650
	str r0, [r5, #0x30]
	adds r1, r4, r1
	bl sub_800065C
	add r3, sp, #0
	strh r7, [r3, #0xc]
	movs r0, #0xa0
	strh r0, [r3, #0xe]
	ldr r0, [r5, #0x30]
	add r1, sp, #0xc
	bl sub_8040034
	ldr r0, [r5, #0x30]
	movs r2, #3
	ldrh r1, [r0, #0x2a]
	lsls r2, r2, #0xa
	movs r3, #0
	bics r1, r2
	orrs r1, r3
	strh r1, [r0, #0x2a]
	movs r2, #0x13
	strb r2, [r0, #5]
	ldr r1, [r0]
	lsls r2, r1, #0x16
	bmi %17
	movs r2, #0x80
	orrs r1, r2
	str r1, [r0]
17
	movs r1, #1
	ldr r0, [r5, #0x30]
	bl sub_80401E4
	adds r4, #1
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	cmp r4, #2
	blo %16
	ldr r0, _0802B644
	ldr r0, [r0]
	bl sub_800116A
	adds r4, r6, #0
	adds r4, #0xff
	adds r4, #0xc1
	movs r2, #0
	movs r1, #0xa4
	str r0, [r4, #0x38]
	bl sub_80007A0
	add r3, sp, #0
	strh r7, [r3, #0xc]
	movs r0, #0xa0
	strh r0, [r3, #0xe]
	ldr r0, [r4, #0x38]
	add r1, sp, #0xc
	bl sub_8040034
	ldr r0, [r4, #0x38]
	movs r2, #3
	ldrh r1, [r0, #0x2a]
	lsls r2, r2, #0xa
	movs r3, #0
	bics r1, r2
	orrs r1, r3
	strh r1, [r0, #0x2a]
	movs r2, #5
	strb r2, [r0, #5]
	ldr r1, [r0]
	lsls r2, r1, #0x16
	bmi %18
	movs r2, #0x80
	orrs r1, r2
	str r1, [r0]
18
	ldr r0, [r4, #0x38]
	bl sub_8000914
	movs r1, #1
	ldr r0, [r4, #0x38]
	bl sub_80401E4
	movs r0, #1
	bl sub_80133A0
	ldrh r1, [r0, #2]
	movs r2, #4
	str r2, [sp, #0xc]
	movs r2, #0xa0
	movs r0, #0x60
	str r0, [sp, #4]
	str r2, [sp]
	str r1, [sp, #8]
	movs r1, #1
	movs r2, #0
	adds r0, r6, #4
	adds r3, r7, #0
	adds r4, r0, #0
	bl sub_803F9C4
	movs r1, #4
	adds r0, r4, #0
	bl sub_80147FA
	movs r5, #0xff
	adds r3, r5, #0
	movs r2, #0
	adds r0, r4, #0
	ldr r1, _0802B654
	bl sub_80138E2
	movs r0, #0
	bl sub_80133A0
	ldrh r1, [r0, #2]
	movs r2, #4
	str r2, [sp, #0xc]
	movs r0, #0x60
	str r0, [sp, #4]
	movs r2, #0xa0
	str r2, [sp]
	adds r0, r6, #0
	str r1, [sp, #8]
	movs r1, #0
	adds r0, #0x7c
	movs r2, #0
	adds r3, r7, #0
	adds r4, r0, #0
	bl sub_803F9C4
	movs r1, #4
	adds r0, r4, #0
	bl sub_80147FA
	adds r3, r5, #0
	movs r2, #0
	adds r0, r4, #0
	ldr r1, _0802B658
	bl sub_80138E2
	movs r0, #0
	bl sub_80133A0
	ldrh r1, [r0, #2]
	ldr r0, _0802B65C
	movs r2, #0xff
	str r2, [sp, #0xc]
	movs r2, #0xa0
	str r0, [sp, #4]
	adds r0, r6, #0
	str r2, [sp]
	str r1, [sp, #8]
	movs r1, #0
	movs r2, #0
	adds r0, #0xf4
	adds r3, r7, #0
	adds r4, r0, #0
	bl sub_803F9C4
	movs r1, #4
	adds r0, r4, #0
	bl sub_80147FA
	movs r1, #0x9b
	lsls r1, r1, #3
	adds r3, r5, #0
	movs r2, #0
	adds r0, r4, #0
	bl sub_80138E2
	movs r0, #0
	bl sub_80133A0
	ldrh r1, [r0, #2]
	ldr r0, _0802B65C
	movs r2, #0xff
	str r2, [sp, #0xc]
	movs r2, #0xa0
	str r0, [sp, #4]
	adds r0, r4, #0
	str r2, [sp]
	str r1, [sp, #8]
	movs r1, #0
	movs r2, #0
	adds r0, #0x78
	adds r3, r7, #0
	adds r4, r0, #0
	bl sub_803F9C4
	movs r1, #4
	adds r0, r4, #0
	bl sub_80147FA
	adds r3, r5, #0
	movs r2, #0
	adds r0, r4, #0
	ldr r1, _0802B660
	bl sub_80138E2
	ldr r0, _0802B664
	movs r1, #1
	ldr r0, [r0]
	bl sub_802459E
	ldr r0, _0802B668
	ldr r0, [r0]
	adds r0, #0xe0
	bl sub_8028C2E
	ldr r0, _0802B66C
	ldr r0, [r0]
	ldr r0, [r0, #0x20]
	bl sub_8020AB6
	add sp, #0x14
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	ALIGN
_0802B640 DCDU sub_80143E0
_0802B644 DCDU gUnknown_03003EB8
_0802B648 DCDU sub_8014436
_0802B64C DCDU gUnknown_0805108A
_0802B650 DCDU 0x00000CAE
_0802B654 DCDU 0x000004DA
_0802B658 DCDU 0x000004DB
_0802B65C DCDU 0x0000FFFF
_0802B660 DCDU 0x000004D9
_0802B664 DCDU gUnknown_030034F8
_0802B668 DCDU gUnknown_0300345C
_0802B66C DCDU gUnknown_03003458
	END
