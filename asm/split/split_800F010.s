    INCLUDE asm/macros.inc
    AREA text, CODE

	IMPORT gUnknown_030033D0
	IMPORT gUnknown_03003EA0
	IMPORT sub_8000D5A
	IMPORT sub_8014EB8
	IMPORT sub_8004C44

	thumb_func_start sub_800F010
sub_800F010 ;@ 0x0800F010
	push {r3, r4, r5, r6, r7, lr}
	ldr r0, [r1, #0x10]
	adds r4, r1, #0
	ldr r0, [r0]
	ldr r1, [r1, #0x2c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x16
	adds r0, #4
	lsls r5, r0, #0x10
	ldr r0, [r2, #0x10]
	adds r4, #0x2c
	ldr r0, [r0]
	ldr r6, [r4, #4]
	lsls r0, r0, #1
	lsrs r0, r0, #0x16
	adds r0, #4
	adds r2, #0x2c
	str r2, [sp]
	lsls r7, r0, #0x10
	subs r0, r1, r5
	ldr r2, [r2]
	adds r1, r1, r5
	subs r4, r6, r5
	adds r5, r6, r5
	subs r6, r2, r7
	mov lr, r2
	ldr r2, [sp]
	mov ip, r6
	ldr r2, [r2, #4]
	add lr, r7
	subs r6, r2, r7
	adds r7, r2, r7
	ldr r2, [r3]
	cmp r2, #0
	ble _0800F05A
	adds r1, r2, r1
	b _0800F05C
_0800F05A
	adds r0, r2, r0
_0800F05C
	ldr r2, [r3, #4]
	cmp r2, #0
	ble _0800F066
	adds r5, r2, r5
	b _0800F068
_0800F066
	adds r4, r2, r4
_0800F068
	cmp r0, lr
	ble _0800F074
	movs r0, #0
_0800F06E
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
_0800F074
	cmp r1, ip
	bge _0800F07C
	movs r0, #0
	b _0800F06E
_0800F07C
	cmp r4, r7
	ble _0800F084
	movs r0, #0
	b _0800F06E
_0800F084
	cmp r5, r6
	bge _0800F08C
	movs r0, #0
	b _0800F06E
_0800F08C
	movs r0, #1
	b _0800F06E

	thumb_func_start sub_800F090
sub_800F090 ;@ 0x0800F090
	push {r0, r1, r2, r3, r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r3, sp, #0x20
	ldm r3!, {r1, r2, r3}
	adds r4, r0, #0
	bl sub_800F010
	cmp r0, #0
	bne _0800F0AA
_0800F0A2
	add sp, #0x2c
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
_0800F0AA
	ldr r0, [sp, #0x20]
	ldr r0, [r0, #0x10]
	ldr r0, [r0]
	ldr r2, [sp, #0x24]
	lsls r0, r0, #1
	ldr r1, [r2, #0x10]
	lsrs r0, r0, #0x16
	ldr r1, [r1]
	lsls r0, r0, #0x10
	lsls r1, r1, #1
	lsrs r1, r1, #0x16
	lsls r1, r1, #0x10
	adds r1, r0, r1
	adds r2, r1, #0
	adds r0, r4, #0
	bl sub_8014EB8
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x28]
	ldm r0!, {r6, r7}
	adds r2, r6, #0
	adds r1, r6, #0
	adds r0, r4, #0
	bl sub_8014EB8
	adds r5, r0, #0
	adds r2, r7, #0
	adds r1, r7, #0
	adds r0, r4, #0
	bl sub_8014EB8
	adds r0, r5, r0
	bl sub_8004C44
	asrs r0, r0, #8
	movs r5, #0
	cmp r0, #2
	bgt _0800F0FA
	movs r5, #1
	b _0800F110
_0800F0FA
	cmp r0, #4
	bgt _0800F102
	movs r5, #2
	b _0800F110
_0800F102
	cmp r0, #8
	bgt _0800F10A
	movs r5, #3
	b _0800F110
_0800F10A
	cmp r0, #0x10
	bgt _0800F110
	movs r5, #4
_0800F110
	movs r0, #1
	lsls r0, r5
	movs r1, #1
	str r1, [sp, #8]
	cmp r0, #1
	str r0, [sp, #0x18]
	blt _0800F1D6
	ldr r2, [sp, #0x24]
	ldr r0, [sp, #0x20]
	adds r2, #0x2c
	adds r0, #0x2c
	str r0, [sp, #0x10]
	str r2, [sp, #0x14]
_0800F12A
	ldr r0, [sp, #0x10]
	adds r2, r6, #0
	ldr r1, [r0]
	asrs r2, r5
	str r1, [r4, #0x10]
	ldr r0, [sp, #0x10]
	adds r1, r1, r2
	adds r2, r7, #0
	ldr r0, [r0, #4]
	asrs r2, r5
	adds r0, r0, r2
	str r0, [r4, #0x14]
	str r1, [r4, #0x10]
	ldr r2, [sp, #0x14]
	ldr r3, [r2]
	ldr r2, [r2, #4]
	subs r1, r3, r1
	subs r0, r2, r0
	str r0, [sp]
	adds r2, r1, #0
	adds r0, r4, #0
	bl sub_8014EB8
	ldr r2, [sp]
	str r0, [sp, #4]
	adds r1, r2, #0
	adds r0, r4, #0
	bl sub_8014EB8
	ldr r1, [sp, #4]
	adds r0, r1, r0
	ldr r1, [sp, #0xc]
	cmp r0, r1
	bgt _0800F1BE
	ldr r0, [sp, #0x28]
	ldr r2, _0800F1E0 ;@ =gUnknown_030033D0
	ldr r0, [r0]
	ldr r3, [sp, #0x28]
	subs r0, r6, r0
	ldr r1, [r3, #4]
	asrs r0, r5
	subs r1, r7, r1
	asrs r1, r5
	ldr r5, _0800F1E4 ;@ =gUnknown_03003EA0
	stm r2!, {r0, r1}
	ldr r0, [r5]
	bl sub_8000D5A
	ldr r0, [r0, #0x20]
	ldr r1, [sp, #0x20]
	ldr r1, [r1, #0x10]
	subs r0, r1, r0
	asrs r0, r0, #3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r4, #0xc0
	str r0, [r4, #0x28]
	ldr r0, [r5]
	bl sub_8000D5A
	ldr r0, [r0, #0x20]
	ldr r2, [sp, #0x24]
	ldr r1, [r2, #0x10]
	subs r0, r1, r0
	asrs r0, r0, #3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [r4, #0x2c]
	ldr r0, [sp, #0x20]
	str r0, [r4, #0x34]
	ldr r2, [sp, #0x24]
	movs r0, #1
	str r2, [r4, #0x38]
	b _0800F0A2
_0800F1BE
	ldr r0, [sp, #0x28]
	ldr r0, [r0]
	adds r6, r0, r6
	ldr r0, [sp, #0x28]
	ldr r0, [r0, #4]
	ldr r1, [sp, #8]
	adds r7, r0, r7
	ldr r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #8]
	cmp r0, r1
	bge _0800F12A
_0800F1D6
	movs r0, #0
	b _0800F0A2

	non_word_aligned_thumb_func_start sub_800F1DA
sub_800F1DA ;@ 0x0800F1DA
	adds r0, #0xe8
	bx lr
	ALIGN
_0800F1E0 DCDU gUnknown_030033D0
_0800F1E4 DCDU gUnknown_03003EA0
	END