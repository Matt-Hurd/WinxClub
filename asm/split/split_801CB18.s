    INCLUDE asm/macros.inc
    AREA text, CODE

	IMPORT gUnknown_03003450
	IMPORT gUnknown_03003454
	IMPORT gUnknown_03003E98
	IMPORT sub_8001C22
	IMPORT sub_800202A
	IMPORT sub_801F640
	IMPORT sub_803B8CA

	thumb_func_start sub_801CB18
sub_801CB18 ;@ 0x0801CB18
	adds r3, r0, #0
	adds r3, #0xff
	adds r3, #0x81
	push {r4, r5, r6, r7}
	ldr r0, [r3, #0x30]
	lsls r4, r1, #1
	ldrh r5, [r0, r4]
	adds r4, r1, r2
	adds r6, r4, #0
	subs r4, #1
	cmp r4, r1
	bls _0801CB40
_0801CB30
	ldr r0, [r3, #0x30]
	lsls r2, r1, #1
	adds r7, r0, r2
	ldrh r7, [r7, #2]
	adds r1, #1
	cmp r4, r1
	strh r7, [r0, r2]
	bhi _0801CB30
_0801CB40
	ldr r0, [r3, #0x30]
	lsls r1, r6, #1
	adds r0, r0, r1
	subs r0, #0x20
	strh r5, [r0, #0x1e]
	pop {r4, r5, r6, r7}
	bx lr

	non_word_aligned_thumb_func_start sub_801CB4E
sub_801CB4E ;@ 0x0801CB4E
	push {r3, r4, r5, lr}
	ldr r5, _0801CCE0 ;@ =gUnknown_03003450
	adds r4, r0, #0
	ldr r0, [r5]
	bl sub_8001C22
	ldr r0, [r5]
	bl sub_800202A
	movs r0, #5
	lsls r0, r0, #8
	adds r0, r4, r0
	ldr r0, [r0, #0x1c]
	lsls r0, r0, #0x17
	bpl _0801CBA4
	ldr r0, _0801CCE4 ;@ =gUnknown_03003E98
	ldr r0, [r0]
	ldr r1, [r0, #8]
	movs r0, #0xf
	bics r0, r1
	bne _0801CBA4
	adds r3, r4, #0
	adds r3, #0xff
	adds r3, #0x81
	ldr r0, [r3, #0x30]
	movs r1, #0xff
	adds r1, #0xf9
	ldrh r4, [r0, r1]
	movs r0, #0xfc
_0801CB88
	ldr r1, [r3, #0x30]
	lsls r2, r0, #1
	adds r5, r1, r2
	ldrh r5, [r5, #2]
	adds r0, #1
	cmp r0, #0xff
	strh r5, [r1, r2]
	blo _0801CB88
	movs r1, #1
	ldr r0, [r3, #0x30]
	lsls r1, r1, #9
	adds r0, r0, r1
	subs r0, #0x20
	strh r4, [r0, #0x1e]
_0801CBA4
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_801CBAA
sub_801CBAA ;@ 0x0801CBAA
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	movs r0, #5
	lsls r0, r0, #8
	adds r7, r1, #0
	adds r6, r5, r0
	ldr r0, [r6, #0x1c]
	movs r4, #0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x19
	beq _0801CBD8
_0801CBC0
	lsls r0, r4, #2
	adds r0, r0, r5
	ldr r0, [r0, #0x20]
	adds r1, r7, #0
	bl sub_801F640
	ldr r0, [r6, #0x1c]
	adds r4, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x19
	cmp r0, r4
	bhi _0801CBC0
_0801CBD8
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_801CBDE
sub_801CBDE ;@ 0x0801CBDE
	push {r4, r5, r6, r7}
	movs r3, #5
	lsls r3, r3, #8
	adds r5, r0, r3
	ldr r3, [r5, #0x1c]
	movs r2, #0
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x19
	beq _0801CC38
	ldr r3, _0801CCE8 ;@ =gUnknown_03003454
	movs r7, #2
	ldr r4, [r3]
_0801CBF6
	lsls r3, r2, #2
	adds r3, r3, r0
	ldr r3, [r3, #0x20]
	ldr r3, [r3, #0x7c]
	lsls r3, r3, #8
	lsrs r3, r3, #0x18
	cmp r1, #0
	beq _0801CC18
	lsls r3, r3, #1
	movs r6, #0xb
	lsls r6, r6, #7
	adds r3, r3, r4
	adds r3, r3, r6
	ldrh r6, [r3, #0x18]
	orrs r6, r7
	strh r6, [r3, #0x18]
	b _0801CC28
_0801CC18
	lsls r3, r3, #1
	movs r6, #0xb
	lsls r6, r6, #7
	adds r3, r3, r4
	adds r6, r3, r6
	ldrh r3, [r6, #0x18]
	bics r3, r7
	strh r3, [r6, #0x18]
_0801CC28
	ldr r3, [r5, #0x1c]
	adds r2, #1
	lsls r2, r2, #0x18
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x19
	lsrs r2, r2, #0x18
	cmp r3, r2
	bhi _0801CBF6
_0801CC38
	pop {r4, r5, r6, r7}
	bx lr

	thumb_func_start sub_801CC3C
sub_801CC3C ;@ 0x0801CC3C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r0, #5
	lsls r0, r0, #8
	adds r6, r5, r0
	ldr r0, [r6, #0x1c]
	movs r4, #0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x19
	beq _0801CC6C
_0801CC50
	lsls r0, r4, #2
	adds r0, r0, r5
	ldr r0, [r0, #0x20]
	ldr r1, [r0]
	ldr r2, [r1, #0x18]
	adds r1, r2, r1
	bl sub_803B8CA
	ldr r0, [r6, #0x1c]
	adds r4, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x19
	cmp r0, r4
	bhi _0801CC50
_0801CC6C
	pop {r4, r5, r6}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_801CC72
sub_801CC72 ;@ 0x0801CC72
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r0, #5
	lsls r0, r0, #8
	adds r6, r5, r0
	ldr r0, [r6, #0x1c]
	movs r4, #0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x19
	beq _0801CCA2
_0801CC86
	lsls r0, r4, #2
	adds r0, r0, r5
	ldr r0, [r0, #0x20]
	ldr r1, [r0]
	ldr r2, [r1, #0x1c]
	adds r1, r2, r1
	bl sub_803B8CA
	ldr r0, [r6, #0x1c]
	adds r4, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x19
	cmp r0, r4
	bhi _0801CC86
_0801CCA2
	pop {r4, r5, r6}
	pop {r3}
	bx r3

	thumb_func_start sub_801CCA8
sub_801CCA8 ;@ 0x0801CCA8
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r0, #5
	lsls r0, r0, #8
	adds r6, r5, r0
	ldr r0, [r6, #0x1c]
	movs r4, #0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x19
	beq _0801CCD8
_0801CCBC
	lsls r0, r4, #2
	adds r0, r0, r5
	ldr r0, [r0, #0x20]
	ldr r1, [r0]
	ldr r2, [r1, #0x20]
	adds r1, r2, r1
	bl sub_803B8CA
	ldr r0, [r6, #0x1c]
	adds r4, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x19
	cmp r0, r4
	bhi _0801CCBC
_0801CCD8
	pop {r4, r5, r6}
	pop {r3}
	bx r3
	ALIGN
_0801CCE0 DCDU gUnknown_03003450
_0801CCE4 DCDU gUnknown_03003E98
_0801CCE8 DCDU gUnknown_03003454
	END