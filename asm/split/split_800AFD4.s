	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_03003E98
	IMPORT gUnknown_0803EB34
	IMPORT gUnknown_0803ECD4
	IMPORT VBlankIntrWait
	IMPORT __nw__FUi
	IMPORT sub_803DA18

	thumb_func_start sub_800AFD4
sub_800AFD4
	push {r3, lr}
	cmp r0, #0
	bne _0800AFE4
	movs r0, #0xc
	bl __nw__FUi
	cmp r0, #0
	beq _0800B014
_0800AFE4
	ldr r1, _0800B0C8
	str r1, [r0]
	ldr r1, _0800B0CC
	str r0, [r1]
	ldr r1, _0800B0D0
	str r1, [r0]
	movs r1, #1
	lsls r1, r1, #0x1a
	ldrh r2, [r1]
	movs r3, #0x40
	orrs r2, r3
	strh r2, [r1]
	ldrh r2, [r1]
	movs r3, #0x80
	bics r2, r3
	strh r2, [r1]
	ldr r1, _0800B0D4
	movs r2, #5
	lsls r2, r2, #0x18
	strh r1, [r2]
	lsls r1, r3, #1
	str r1, [r0, #4]
	movs r1, #0
	str r1, [r0, #8]
_0800B014
	add sp, #4
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_800B01A
sub_800B01A
	push {r3, lr}
	ldr r2, _0800B0C8
	ldr r3, _0800B0CC
	str r2, [r0]
	movs r2, #0
	str r2, [r3]
	cmp r1, #0
	beq _0800B02E
	bl sub_803DA18
_0800B02E
	add sp, #4
	pop {r3}
	bx r3

	thumb_func_start sub_800B034
sub_800B034
	movs r0, #1
	lsls r0, r0, #0xc
	lsls r2, r0, #0xe
	cmp r1, #0
	ldrh r1, [r2]
	beq _0800B046
	orrs r0, r1
	strh r0, [r2]
	bx lr
_0800B046
	bics r1, r0
	strh r1, [r2]
	bx lr

	thumb_func_start sub_800B04C
sub_800B04C
	movs r0, #1
	lsls r0, r0, #0x1a
	ldrh r0, [r0]
	lsls r0, r0, #0x13
	lsrs r0, r0, #0x1f
	bx lr

	thumb_func_start sub_800B058
sub_800B058
	movs r0, #1
	lsls r0, r0, #0x1a
	ldrh r2, [r0]
	lsrs r2, r2, #3
	lsls r2, r2, #3
	strh r2, [r0]
	ldrh r2, [r0]
	orrs r2, r1
	strh r2, [r0]
	cmp r1, #2
	bls _0800B080
	ldrh r1, [r0]
	movs r2, #0xf
	lsls r2, r2, #8
	bics r1, r2
	strh r1, [r0]
	ldrh r1, [r0]
	lsrs r2, r0, #0x10
	orrs r1, r2
	strh r1, [r0]
_0800B080
	bx lr

	non_word_aligned_thumb_func_start sub_800B082
sub_800B082
	movs r0, #1
	lsls r0, r0, #0x1a
	ldrh r0, [r0]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1d
	bx lr

	non_word_aligned_thumb_func_start sub_800B08E
sub_800B08E
	push {r3, lr}
	bl VBlankIntrWait
	add sp, #4
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_800B09A
sub_800B09A
	movs r0, #3
	lsls r0, r0, #0x19
	bx lr

	thumb_func_start sub_800B0A0
sub_800B0A0
	lsls r3, r2, #0x10
	lsls r0, r2, #8
	lsls r2, r2, #0x18
	lsrs r3, r3, #0x1b
	lsls r3, r3, #5
	lsrs r2, r2, #0x1b
	lsrs r0, r0, #0x1b
	orrs r0, r3
	lsls r2, r2, #0xa
	orrs r0, r2
	movs r2, #5
	lsls r2, r2, #0x18
	lsls r1, r1, #1
	adds r1, r1, r2
	strh r0, [r1]
	bx lr

	thumb_func_start sub_800B0C0
sub_800B0C0
	movs r0, #1
	lsls r0, r0, #0x1a
	ldrh r0, [r0, #6]
	bx lr
	ALIGN
_0800B0C8 DCDU gUnknown_0803ECD4
_0800B0CC DCDU gUnknown_03003E98
_0800B0D0 DCDU gUnknown_0803EB34
_0800B0D4 DCDU 0x00007FFF
	END
