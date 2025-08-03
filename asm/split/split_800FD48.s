	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_03003E7C
	IMPORT gUnknown_03003EAC
	IMPORT sub_800B12C
	IMPORT __16__rt_udiv

	thumb_func_start sub_800FD48
sub_800FD48
	ldr r1, _0800FE6C
	push {r3, lr}
	ldrh r2, [r1, #0xa]
	movs r3, #0x1d
	lsls r3, r3, #9
	bics r2, r3
	strh r2, [r1, #0xa]
	ldrh r2, [r1, #0xa]
	lsrs r3, r1, #0xb
	bics r2, r3
	strh r2, [r1, #0xa]
	ldrh r1, [r1, #0xa]
	ldr r2, _0800FE70
	movs r1, #0
	str r1, [r2, #4]
	str r1, [r2]
	ldr r1, _0800FE74
	ldrh r2, [r1]
	movs r3, #3
	lsls r3, r3, #8
	bics r2, r3
	strh r2, [r1]
	ldrh r2, [r1]
	movs r3, #4
	ands r2, r3
	strh r2, [r1]
	ldrh r2, [r1]
	movs r3, #3
	lsls r3, r3, #0xc
	bics r2, r3
	strh r2, [r1]
	ldrh r2, [r1]
	movs r3, #8
	bics r2, r3
	strh r2, [r1]
	str r3, [r0, #0x5c]
	ldr r0, _0800FE78
	movs r3, #1
	movs r2, #0
	movs r1, #4
	ldr r0, [r0]
	bl sub_800B12C
	add sp, #4
	pop {r3}
	bx r3

	thumb_func_start sub_800FDA4
sub_800FDA4
	ldr r0, _0800FE6C
	ldrh r1, [r0, #0xa]
	movs r2, #0x1d
	lsls r2, r2, #9
	bics r1, r2
	strh r1, [r0, #0xa]
	ldrh r1, [r0, #0xa]
	lsrs r2, r0, #0xb
	bics r1, r2
	strh r1, [r0, #0xa]
	ldrh r1, [r0, #0xa]
	ldr r1, _0800FE7C
	ldr r1, [r1]
	ldr r1, [r1, #4]
	str r1, [r0]
	ldr r1, _0800FE80
	str r1, [r0, #4]
	ldr r1, _0800FE84
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	bx lr

	non_word_aligned_thumb_func_start sub_800FDCE
sub_800FDCE
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, _0800FE78
	adds r6, r1, #0
	movs r5, #1
	adds r3, r5, #0
	movs r1, #4
	ldr r2, _0800FE88
	ldr r0, [r0]
	bl sub_800B12C
	ldr r0, _0800FE6C
	ldr r1, [r4, #4]
	str r1, [r0]
	ldr r1, _0800FE80
	str r1, [r0, #4]
	ldr r1, _0800FE84
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	ldr r0, [r4, #8]
	movs r2, #0x31
	lsls r5, r0
	lsls r0, r1, #0xe
	subs r1, r0, r5
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x12
	orrs r2, r1
	ldr r1, _0800FE70
	str r2, [r1, #4]
	subs r0, r0, r6
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r2, r1, #0xf
	orrs r0, r2
	str r0, [r1]
	ldr r1, _0800FE8C
	movs r0, #0x80
	strh r0, [r1, #4]
	adds r0, r1, #2
	ldrh r1, [r0]
	movs r2, #0xb
	lsls r2, r2, #8
	orrs r1, r2
	strh r1, [r0]
	ldrh r1, [r0]
	movs r2, #4
	orrs r1, r2
	strh r1, [r0]
	movs r0, #0
	str r0, [r4, #0x64]
	pop {r4, r5, r6}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_800FE3A
sub_800FE3A
	push {r4, lr}
	adds r4, r0, #0
	adds r0, r1, #0
	movs r1, #1
	lsls r1, r1, #0x18
	bl __16__rt_udiv
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_800FDCE
	pop {r4}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_800FE56
sub_800FE56
	ldr r1, _0800FE70
	ldrh r1, [r1, #4]
	ldr r2, [r0, #8]
	movs r0, #1
	lsls r0, r2
	movs r2, #1
	lsls r2, r2, #0x10
	subs r0, r2, r0
	subs r0, r1, r0
	bx lr

	non_word_aligned_thumb_func_start nullsub_6
nullsub_6
	bx lr
	ALIGN
_0800FE6C DCDU REG_DMA1
_0800FE70 DCDU REG_TM0CNT
_0800FE74 DCDU REG_SOUNDCNT_H
_0800FE78 DCDU gUnknown_03003EAC
_0800FE7C DCDU gUnknown_03003E7C
_0800FE80 DCDU REG_FIFO
_0800FE84 DCDU 0xB6400004
_0800FE88 DCDU sub_800FDA4
_0800FE8C DCDU REG_SOUNDCNT
	END
