    INCLUDE asm/macros.inc
    AREA text, CODE

	IMPORT gUnknown_03003E84
	IMPORT gUnknown_03003EB4
	IMPORT sub_800529A
	IMPORT sub_8008008
	IMPORT sub_80081A8
	IMPORT sub_80103C8
	IMPORT sub_8010604
	IMPORT sub_803B15C
	IMPORT sub_803B184
	IMPORT sub_803B1AE
	IMPORT sub_803C2DC
	IMPORT sub_803D468
	IMPORT sub_803D984
	IMPORT sub_803D9A8
	IMPORT sub_803D9C4
	IMPORT sub_803E17C
	IMPORT sub_803E188
	IMPORT sub_803E194
	IMPORT sub_803E1A0
	IMPORT sub_803E1AC
	IMPORT sub_803E1B8
	IMPORT sub_803E1C4
	IMPORT sub_803E1D0
	IMPORT sub_803F3E8

	thumb_func_start sub_800E22C
sub_800E22C ;@ 0x0800E22C
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _0800E4A8 ;@ =gUnknown_03003E84
	adds r4, r1, #0
	movs r3, #0
	movs r2, #0x48
	subs r1, r5, #4
	ldr r0, [r0]
	bl sub_800529A
	ldr r1, [r0, #4]
	lsls r0, r1, #0x16
	lsrs r0, r0, #0x16
	lsls r1, r1, #0xc
	lsrs r1, r1, #0x16
	strh r0, [r4]
	strh r1, [r4, #2]
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	thumb_func_start sub_800E254
sub_800E254 ;@ 0x0800E254
	push {r0, r1, r2, r4, r5, r6, r7, lr}
	ldr r3, _0800E4AC ;@ =0xFFFFE880
	adds r5, r2, #0
	add sp, r3
	add r6, sp, #0x54
	adds r0, r6, #0
	bl sub_803B15C
	add r7, sp, #0x38
	adds r0, r7, #0
	bl sub_80103C8
	movs r1, #3
	lsls r1, r1, #0xb
	movs r3, #0
	movs r2, #0
	movs r0, #1
	bl sub_803D9C4
	adds r4, r0, #0
	str r0, [sp, #0x38]
	lsls r0, r5, #0x1e
	bpl _0800E2A0
	movs r2, #0
	movs r1, #0
	ldr r0, _0800E4B0 ;@ =0x0000146C
	bl sub_803D984
	str r0, [sp, #0x44]
	str r0, [sp, #0x40]
	movs r0, #1
	movs r2, #0
	movs r1, #0
	lsls r0, r0, #0xd
	bl sub_803D984
	str r0, [sp, #0x3c]
	b _0800E2AC
_0800E2A0
	ldr r0, _0800E4B4 ;@ =0x06014C00
	str r0, [sp, #0x44]
	ldr r0, _0800E4B8 ;@ =0x0601606C
	str r0, [sp, #0x40]
	ldr r0, _0800E4BC ;@ =0x06012C00
	str r0, [sp, #0x3c]
_0800E2AC
	adds r1, r7, #0
	adds r0, r6, #0
	bl sub_8010604
	movs r3, #0x2f
	lsls r3, r3, #7
	add r3, sp
	ldr r1, [r3]
	adds r0, r6, #0
	bl sub_803B1AE
	lsls r0, r5, #0x1e
	bpl _0800E2DA
	movs r2, #0
	movs r1, #0
	ldr r0, [sp, #0x44]
	bl sub_803D9A8
	movs r2, #0
	movs r1, #0
	ldr r0, [sp, #0x3c]
	bl sub_803D9A8
_0800E2DA
	movs r2, #0
	movs r1, #0
	adds r0, r4, #0
	bl sub_803D9A8
	movs r1, #0
	adds r0, r6, #0
	bl sub_803B184
	ldr r3, _0800E4C0 ;@ =0x0000178C
	add sp, r3
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_800E2F6
sub_800E2F6 ;@ 0x0800E2F6
	push {r0, r1, r2, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldr r0, _0800E4A8 ;@ =gUnknown_03003E84
	movs r7, #0
	adds r4, r1, #0
	subs r1, r6, #4
	adds r3, r7, #0
	movs r2, #0x50
	adds r5, r1, #0
	sub sp, #0x80
	ldr r0, [r0]
	bl sub_800529A
	ldr r0, [r0, #4]
	lsrs r1, r0, #0x1c
	bne _0800E3E2
	add r0, sp, #0x24
	bl sub_803E17C
	add r0, sp, #0x24
	bl sub_803E188
	adds r2, r0, #0
	ldr r0, _0800E4A8 ;@ =gUnknown_03003E84
	adds r2, #0x48
	movs r3, #0
	adds r1, r5, #0
	ldr r0, [r0]
	bl sub_800529A
	adds r7, r0, #0
	adds r5, r0, #4
	adds r0, r5, #4
	bl sub_803C2DC
	adds r0, #4
	lsrs r0, r0, #2
	lsls r0, r0, #2
	adds r0, #4
	adds r1, r6, r0
	str r1, [sp, #0x20]
	ldr r2, [r7]
	adds r1, r5, r0
	lsls r2, r2, #4
	lsrs r2, r2, #2
	subs r7, r2, r0
	add r0, sp, #0x24
	bl sub_803E194
	adds r5, r0, #0
	adds r1, r7, #0
	cmp r7, r0
	bhi _0800E362
	adds r1, r5, #0
_0800E362
	adds r1, #3
	lsrs r0, r1, #2
	lsls r0, r0, #2
	adds r0, #4
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x88]
	lsls r0, r0, #0x1f
	bpl _0800E382
	movs r3, #0
	movs r2, #0
	movs r0, #1
	ldr r1, [sp, #0x1c]
	bl sub_803D9C4
	adds r6, r0, #0
	b _0800E39C
_0800E382
	cmp r4, #0
	bne _0800E39A
	movs r1, #0
	add r0, sp, #0x24
	ldr r5, [sp, #0x1c]
	bl sub_803E1A0
	adds r0, r5, #0
_0800E392
	add sp, #0x8c
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
_0800E39A
	adds r6, r4, #0
_0800E39C
	ldr r0, [sp, #0x1c]
	adds r0, r6, r0
	subs r3, r0, r7
	ldr r0, _0800E4A8 ;@ =gUnknown_03003E84
	str r3, [sp, #0x18]
	ldr r0, [r0]
	ldr r1, [sp, #0x20]
	adds r2, r7, #0
	bl sub_800529A
	bl sub_80081A8
	ldr r0, [sp, #0x88]
	lsls r0, r0, #0x1e
	bpl _0800E3C8
	movs r2, #0
	movs r1, #0
	ldr r0, _0800E4B0 ;@ =0x0000146C
	bl sub_803D984
	adds r7, r0, #0
	b _0800E3CA
_0800E3C8
	ldr r7, _0800E4B8 ;@ =0x0601606C
_0800E3CA
	ldr r0, _0800E4C4 ;@ =gUnknown_03003EB4
	ldr r0, [r0]
	cmp r0, #0
	beq _0800E3E4
	movs r0, #0
	str r0, [sp, #0x14]
	add r0, sp, #0x14
	adds r1, r7, #0
	ldr r2, _0800E4C8 ;@ =0x0500051B
	bl sub_803D468
	b _0800E40E
_0800E3E2
	b _0800E482
_0800E3E4
	lsls r1, r7, #0x1e
	ldr r0, _0800E4CC ;@ =0x040000D4
	bpl _0800E3FE
	movs r1, #0
	add r3, sp, #0
	strh r1, [r3, #0x14]
	add r1, sp, #0x14
	str r1, [r0]
	str r7, [r0, #4]
	ldr r1, _0800E4D0 ;@ =0x81000A36
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	b _0800E40E
_0800E3FE
	movs r1, #0
	str r1, [sp, #0x14]
	add r1, sp, #0x14
	str r1, [r0]
	str r7, [r0, #4]
	ldr r1, _0800E4D4 ;@ =0x8500051B
	str r1, [r0, #8]
	ldr r0, [r0, #8]
_0800E40E
	ldr r2, _0800E4B0 ;@ =0x0000146C
	adds r1, r7, #0
	add r0, sp, #0x24
	bl sub_803E1AC
	mov r0, sp
	bl sub_8008008
	ldr r3, [sp, #0x18]
	movs r0, #0
	str r3, [sp]
	add r3, sp, #0
	str r0, [sp, #4]
	str r6, [sp, #8]
	movs r1, #2
	strb r1, [r3, #0xc]
	lsls r1, r1, #0x10
	str r1, [sp, #0x10]
	str r0, [sp, #0x14]
	add r0, sp, #0x24
	mov r1, sp
	bl sub_803E1B8
	movs r2, #1
	lsls r2, r2, #0x1e
	adds r1, r5, #0
	add r0, sp, #0x24
	bl sub_803E1C4
	ldr r0, [sp, #0x88]
	lsls r0, r0, #0x1e
	bpl _0800E458
	movs r2, #0
	movs r1, #0
	adds r0, r7, #0
	bl sub_803D9A8
_0800E458
	ldr r0, [sp, #0x88]
	lsls r0, r0, #0x1f
	bpl _0800E476
	cmp r4, #0
	beq _0800E476
	adds r2, r5, #0
	adds r1, r6, #0
	adds r0, r4, #0
	bl sub_803F3E8
	movs r2, #0
	movs r1, #0
	adds r0, r6, #0
	bl sub_803D9A8
_0800E476
	movs r1, #0
	add r0, sp, #0x24
	bl sub_803E1A0
	adds r0, r5, #0
_0800E480
	b _0800E392
_0800E482
	lsrs r0, r0, #0x1c
	cmp r0, #2
	bne _0800E496
	adds r1, r4, #0
	adds r0, r6, #0
	ldr r2, [sp, #0x88]
	bl sub_800E254
	movs r0, #0
	b _0800E392
_0800E496
	cmp r0, #3
	bne _0800E480
	adds r1, r4, #0
	adds r0, r6, #0
	bl sub_803E1D0
	movs r0, #0
	b _0800E392
	ALIGN
_0800E4A8 DCDU gUnknown_03003E84
_0800E4AC DCDU 0xFFFFE880
_0800E4B0 DCDU 0x0000146C
_0800E4B4 DCDU 0x06014C00
_0800E4B8 DCDU 0x0601606C
_0800E4BC DCDU 0x06012C00
_0800E4C0 DCDU 0x0000178C
_0800E4C4 DCDU gUnknown_03003EB4
_0800E4C8 DCDU 0x0500051B
_0800E4CC DCDU 0x040000D4
_0800E4D0 DCDU 0x81000A36
_0800E4D4 DCDU 0x8500051B
	END