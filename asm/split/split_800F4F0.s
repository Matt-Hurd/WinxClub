    INCLUDE asm/macros.inc
    AREA text, CODE

	IMPORT gUnknown_030030B8
	IMPORT gUnknown_03003E84
	IMPORT sub_800529A
	IMPORT sub_800F220
	IMPORT sub_800F312
	IMPORT sub_800FC76
	IMPORT __16_ll_mulls
	IMPORT __16_ll_ushift_r
	IMPORT sub_803DABC
	IMPORT sub_80405F8

	thumb_func_start sub_800F4F0
sub_800F4F0 ;@ 0x0800F4F0
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r0, #0x70]
	movs r5, #0
	adds r0, #0x80
	str r5, [r0, #0xc]
	ldr r0, [r4, #0x70]
	adds r0, #0x80
	ldr r1, [r0, #0x14]
	str r1, [r0, #0x10]
	ldr r0, [r4, #0x70]
	bl sub_800F220
	ldr r0, [r4, #0x70]
	adds r0, #0x1c
	str r5, [r0, #0x14]
	str r5, [r0]
	str r5, [r0, #8]
	str r5, [r0, #0x10]
	str r5, [r0, #4]
	str r5, [r0, #0xc]
	ldr r0, [r4, #0x70]
	adds r0, #0x80
	ldr r0, [r0, #8]
	str r0, [r4, #0x74]
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	thumb_func_start sub_800F528
sub_800F528 ;@ 0x0800F528
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	movs r2, #0
	sub sp, #0xc
	str r2, [sp, #8]
	bl sub_800F4F0
	cmp r5, #0
	beq _0800F624
	adds r0, r5, #0
	movs r1, #0
	ldr r2, [r4, #0x60]
	bl __16_ll_mulls
	movs r2, #8
	bl __16_ll_ushift_r
	lsrs r6, r0, #1
	lsls r6, r6, #1
	adds r0, r6, #0
	bl sub_80405F8
	str r0, [sp, #4]
	ldr r0, [r4, #0x70]
	adds r5, r1, #0
	adds r0, #0x80
	ldr r1, [r0, #0x14]
	cmp r1, r6
	bhi _0800F570
	movs r5, #0
	str r5, [r0, #0x10]
_0800F568
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
_0800F570
	ldr r2, [sp, #4]
	subs r1, r1, r6
	adds r1, r1, r2
	str r1, [r0, #0x10]
	movs r0, #0x6e
	ldrh r0, [r0, r4]
	lsls r0, r0, #1
	adds r0, #3
	lsrs r6, r0, #2
	ldr r0, [r4, #0x70]
	lsls r6, r6, #2
	adds r0, #0x80
	ldr r7, [r0, #4]
_0800F58A
	ldr r0, _0800F718 ;@ =gUnknown_03003E84
	movs r3, #0
	adds r2, r6, #0
	adds r1, r7, #0
	ldr r0, [r0]
	bl sub_800529A
	str r0, [sp]
	ldr r0, _0800F718 ;@ =gUnknown_03003E84
	adds r2, r6, #0
	adds r1, r7, #0
	ldr r0, [r0]
	bl sub_803DABC
	b _0800F5BE
_0800F5A8
	ldr r2, [sp]
	subs r0, #2
	ldrh r1, [r2]
	adds r2, #2
	str r2, [sp]
	ldr r2, [sp, #8]
	subs r5, #1
	adds r2, r1, r2
	subs r6, #2
	adds r7, #2
	str r2, [sp, #8]
_0800F5BE
	cmp r0, #0
	beq _0800F5C8
	cmp r5, #0
	bne _0800F5A8
	b _0800F5D0
_0800F5C8
	cmp r5, #0
	beq _0800F5D0
	cmp r6, #0
	bne _0800F58A
_0800F5D0
	ldr r0, [r4, #0x70]
	movs r1, #0x88
	ldr r1, [r1, r0]
	ldr r2, [sp, #8]
	adds r0, #0x1c
	lsls r2, r2, #2
	adds r1, r1, r2
	str r1, [r4, #0x74]
	movs r7, #0
	str r7, [r0, #0x14]
	str r7, [r0]
	str r7, [r0, #8]
	str r7, [r0, #0x10]
	str r7, [r0, #4]
	str r7, [r0, #0xc]
	ldr r0, [r4, #0x70]
	movs r1, #0x88
	ldr r1, [r1, r0]
	str r1, [r0, #0x30]
	ldr r0, [r4, #0x70]
	str r7, [r0, #0x34]
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _0800F624
	ldr r1, _0800F71C ;@ =gUnknown_030030B8
	ldr r0, _0800F720 ;@ =0xE1A09009
	ldr r5, [r1]
	str r0, [r1]
	movs r6, #1
_0800F60A
	ldr r1, [r4, #0x70]
	ldr r0, _0800F718 ;@ =gUnknown_03003E84
	adds r1, #0x80
	ldr r2, [r1, #0x10]
	ldr r0, [r0]
	ldr r1, [r4, #0x74]
	adds r3, r7, #0
	bl sub_800529A
	ldr r0, [r4, #8]
	adds r1, r6, #0
	lsls r1, r0
	b _0800F626
_0800F624
	b _0800F64C
_0800F626
	ldr r0, [sp, #4]
	cmp r1, r0
	bhs _0800F640
	adds r0, r4, #0
	bl sub_800F312
	ldr r1, [r4, #8]
	adds r0, r6, #0
	lsls r0, r1
	ldr r1, [sp, #4]
	subs r0, r1, r0
	str r0, [sp, #4]
	b _0800F60A
_0800F640
	adds r0, r4, #0
	ldr r1, [sp, #4]
	bl sub_800F312
	ldr r1, _0800F71C ;@ =gUnknown_030030B8
	str r5, [r1]
_0800F64C
	ldr r0, [r4, #0x70]
	movs r5, #0
	adds r0, #0x80
	str r5, [r0, #0xc]
	ldr r1, [r4, #0x70]
	ldr r0, _0800F718 ;@ =gUnknown_03003E84
	adds r1, #0x80
	ldr r2, [r1, #0x10]
	ldr r0, [r0]
	ldr r1, [r4, #0x74]
	adds r3, r5, #0
	bl sub_800529A
	movs r6, #1
	ldr r0, [r4, #8]
	adds r1, r6, #0
	lsls r1, r0
	adds r0, r4, #0
	bl sub_800F312
	str r5, [r4, #0x10]
	str r6, [r4, #0x5c]
	b _0800F568

	non_word_aligned_thumb_func_start sub_800F67A
sub_800F67A ;@ 0x0800F67A
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	movs r3, #4
	bl sub_800FC76
	cmp r0, #0
	bne _0800F690
_0800F68A
	pop {r3, r4, r5}
	pop {r3}
	bx r3
_0800F690
	ldrh r2, [r0, #0xc]
	adds r1, r4, #0
	adds r1, #0x6c
	strh r2, [r1]
	ldrh r2, [r0, #0xe]
	adds r0, r4, #0
	adds r0, #0x60
	strh r2, [r1, #2]
	ldrh r2, [r0, #0xe]
	lsls r1, r2, #1
	lsls r3, r2, #1
	adds r2, r3, r2
	ldrh r3, [r0, #0xc]
	lsls r2, r2, #2
	adds r1, #3
	adds r2, r2, r3
	ldr r3, [r4, #0x70]
	subs r2, #0xc
	adds r3, #0x80
	str r2, [r3]
	adds r2, r5, #0
	ldr r3, [r4, #0x70]
	adds r2, #0x10
	adds r3, #0x80
	str r2, [r3, #4]
	lsrs r1, r1, #2
	lsls r1, r1, #2
	ldr r3, [r4, #0x70]
	adds r1, r2, r1
	adds r3, #0x80
	str r1, [r3, #8]
	ldrh r1, [r0, #0xe]
	ldrh r0, [r0, #0xc]
	ldr r2, _0800F728 ;@ =0x0000055B
	ldr r3, _0800F724 ;@ =0x0000404A
	muls r2, r0
	muls r1, r3
	adds r1, r1, r2
	lsrs r0, r0, #1
	adds r0, r1, r0
	NEGS r1, r3
	adds r0, r0, r1
	ldr r1, [r4, #0x70]
	adds r1, #0x80
	str r0, [r1, #0x14]
	ldr r0, [r4, #0x70]
	adds r0, #0x94
	ldr r1, [r0]
	lsrs r1, r1, #1
	lsls r1, r1, #1
	str r1, [r0]
	adds r0, r4, #0
	bl sub_800F4F0
	movs r0, #1
	b _0800F68A

	thumb_func_start sub_800F700
sub_800F700 ;@ 0x0800F700
	ldr r0, [r0, #0x18]
	lsls r1, r0, #6
	lsrs r1, r1, #0x10
	beq _0800F712
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x1c
	beq _0800F712
	movs r0, #1
	bx lr
_0800F712
	movs r0, #0
	bx lr
	ALIGN
_0800F718 DCDU gUnknown_03003E84
_0800F71C DCDU gUnknown_030030B8
_0800F720 DCDU 0xE1A09009
_0800F724 DCDU 0x0000404A
_0800F728 DCDU 0x0000055B
	END