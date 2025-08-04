	INCLUDE asm/macros.inc
	INCLUDE asm/gba_constants.inc
	AREA text, CODE

	IMPORT gUnknown_03002BEC
	IMPORT gUnknown_030033FC
	IMPORT gUnknown_03003EAC
	IMPORT gUnknown_03007FC0
	IMPORT gUnknown_0803EC70
	IMPORT gUnknown_0803ECE8
	IMPORT sub_80002E2
	IMPORT SoftReset
	IMPORT __nw__FUi
	IMPORT sub_803DA18

	thumb_func_start sub_800B154
sub_800B154
	movs r0, #1
	lsls r0, r1
	ldr r1, _0800B2B4
	push {r4}
	ldrh r3, [r1, #8]
	movs r4, #0
	strh r4, [r1, #8]
	ldrh r4, [r1]
	cmp r2, #0
	beq _0800B16E
	orrs r4, r0
	strh r4, [r1]
	b _0800B172
_0800B16E
	bics r4, r0
	strh r4, [r1]
_0800B172
	strh r3, [r1, #8]
	cmp r0, #4
	bgt _0800B18C
	ldr r3, _0800B2B8
	ldrh r1, [r3]
	lsls r0, r0, #3
	bics r1, r0
	strh r1, [r3]
	cmp r2, #0
	beq _0800B18C
	ldrh r1, [r3]
	orrs r0, r1
	strh r0, [r3]
_0800B18C
	pop {r4}
	bx lr

	thumb_func_start sub_800B190
sub_800B190
	ldr r2, _0800B2B4
	push {r4}
	movs r1, #1
	adds r3, r2, #0
	subs r3, #0xe0
	lsls r1, r1, #0xc
	movs r4, #0
	cmp r0, #0
	beq _0800B1B2
	strh r4, [r3, #0x10]
	ldrh r0, [r2]
	orrs r0, r1
	strh r0, [r2]
	ldr r0, _0800B2BC
	strh r0, [r3, #0x12]
_0800B1AE
	pop {r4}
	bx lr
_0800B1B2
	ldrh r0, [r2]
	bics r0, r1
	strh r0, [r2]
	strh r4, [r3, #0x12]
	b _0800B1AE

	thumb_func_start sub_800B1BC
sub_800B1BC
	ldr r1, _0800B2B4
	push {r3, lr}
	movs r0, #0
	strh r0, [r1, #8]
	movs r0, #0x1f
	bl sub_80002E2

	non_word_aligned_thumb_func_start sub_800B1CA
sub_800B1CA
	add sp, #4
	pop {r3}
	bx r3

	thumb_func_start sub_800B1D0
sub_800B1D0
	push {r3, lr}
	movs r0, #0xfb
	bl SoftReset
	add sp, #4
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start nullsub_9
nullsub_9
	bx lr

	thumb_func_start nullsub_10
nullsub_10
	bx lr

	non_word_aligned_thumb_func_start nullsub_11
nullsub_11
	bx lr

	thumb_func_start nullsub_12
nullsub_12
	bx lr

	non_word_aligned_thumb_func_start nullsub_13
nullsub_13
	bx lr

	thumb_func_start nullsub_14
nullsub_14
	bx lr

	non_word_aligned_thumb_func_start nullsub_15
nullsub_15
	bx lr

	thumb_func_start nullsub_16
nullsub_16
	bx lr

	non_word_aligned_thumb_func_start nullsub_17
nullsub_17
	bx lr

	thumb_func_start nullsub_18
nullsub_18
	bx lr

	non_word_aligned_thumb_func_start nullsub_19
nullsub_19
	bx lr

	thumb_func_start nullsub_4
nullsub_4
	bx lr

	non_word_aligned_thumb_func_start sub_800B1F6
sub_800B1F6
	push {r4, lr}
	adds r4, r0, #0
	bne _0800B20E
	movs r0, #4
	bl __nw__FUi
	adds r4, r0, #0
	bne _0800B20E
	adds r0, r4, #0
_0800B208
	pop {r4}
	pop {r3}
	bx r3
_0800B20E
	ldr r0, _0800B2C0
	ldr r3, _0800B2B4
	str r0, [r4]
	ldr r0, _0800B2C4
	movs r2, #0
	str r4, [r0]
	ldr r0, _0800B2C8
	str r0, [r4]
	strh r2, [r3, #8]
	movs r0, #0
	strh r0, [r3]
	lsls r1, r3, #0x11
	strh r0, [r1, #4]
	ldr r0, _0800B2CC
	ldr r1, _0800B2D0
	str r0, [r1, #0x3c]
	ldr r1, _0800B2D4
	ldr r0, _0800B2D8
	str r1, [r0]
	ldr r1, _0800B2DC
	str r1, [r0, #4]
	ldr r1, _0800B2E0
	str r1, [r0, #8]
	ldr r1, _0800B2E4
	str r1, [r0, #0xc]
	ldr r1, _0800B2E8
	str r1, [r0, #0x10]
	ldr r1, _0800B2EC
	str r1, [r0, #0x14]
	ldr r1, _0800B2F0
	str r1, [r0, #0x18]
	ldr r1, _0800B2F4
	str r1, [r0, #0x1c]
	ldr r1, _0800B2F8
	str r1, [r0, #0x20]
	ldr r1, _0800B2FC
	str r1, [r0, #0x24]
	ldr r1, _0800B300
	str r1, [r0, #0x28]
	ldr r1, _0800B304
	str r1, [r0, #0x2c]
	ldr r1, _0800B308
	str r1, [r0, #0x30]
	ldr r1, _0800B30C
	str r1, [r0, #0x34]
	ldr r0, _0800B310
	strh r2, [r0, #0x10]
	ldrh r1, [r3]
	lsrs r2, r0, #0xe
	orrs r1, r2
	strh r1, [r3]
	ldr r1, _0800B2BC
	strh r1, [r0, #0x12]
	movs r2, #1
	movs r1, #0xd
	adds r0, r4, #0
	bl sub_800B154
	adds r0, r4, #0
	b _0800B208

	non_word_aligned_thumb_func_start sub_800B286
sub_800B286
	push {r3, lr}
	ldr r2, _0800B2C0
	ldr r3, _0800B2C4
	str r2, [r0]
	movs r2, #0
	str r2, [r3]
	cmp r1, #0
	beq _0800B29A
	bl sub_803DA18
_0800B29A
	add sp, #4
	pop {r3}
	bx r3

	thumb_func_start nullsub_30
nullsub_30
	bx lr

	non_word_aligned_thumb_func_start nullsub_31
nullsub_31
	bx lr

	thumb_func_start sub_800B2A4
sub_800B2A4
	ldr r0, _0800B2B4
	ldrh r0, [r0]
	lsls r0, r0, #0x13
	lsrs r0, r0, #0x1f
	bx lr

	non_word_aligned_thumb_func_start sub_800B2AE
sub_800B2AE
	movs r0, #0
	bx lr
	ALIGN
_0800B2B4 DCDU REG_IE
_0800B2B8 DCDU REG_DISPSTAT
_0800B2BC DCDU 0x0000C00F
_0800B2C0 DCDU gUnknown_0803ECE8
_0800B2C4 DCDU gUnknown_03003EAC
_0800B2C8 DCDU gUnknown_0803EC70
_0800B2CC DCDU gUnknown_03002BEC
_0800B2D0 DCDU gUnknown_03007FC0
_0800B2D4 DCDU nullsub_4
_0800B2D8 DCDU gUnknown_030033FC
_0800B2DC DCDU nullsub_19
_0800B2E0 DCDU nullsub_18
_0800B2E4 DCDU nullsub_17
_0800B2E8 DCDU nullsub_16
_0800B2EC DCDU nullsub_15
_0800B2F0 DCDU nullsub_14
_0800B2F4 DCDU nullsub_13
_0800B2F8 DCDU nullsub_12
_0800B2FC DCDU nullsub_11
_0800B300 DCDU nullsub_10
_0800B304 DCDU nullsub_9
_0800B308 DCDU sub_800B1D0
_0800B30C DCDU sub_800B1BC
_0800B310 DCDU 0x$REG_SIOMULTI0
	END
