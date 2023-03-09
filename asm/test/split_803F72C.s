    INCLUDE asm/macros.inc
    AREA text, CODE

	IMPORT gUnknown_03003EA0
	IMPORT sub_8000D5A
	IMPORT sub_803F8BC

	thumb_func_start sub_803F72C
sub_803F72C ;@ 0x0803F72C
	lsls r3, r2, #1
	adds r3, r3, r0
	push {r4, r5}
	adds r4, r3, #0
	adds r3, #0xff
	adds r3, #1
	adds r4, #0xff
	adds r4, #0x81
	ldrh r5, [r3, #0x18]
	ldrh r4, [r4, #0x18]
	adds r5, r5, r1
	cmp r5, r4
	bls _0803F74A
	movs r4, #0
	strh r4, [r3, #0x18]
_0803F74A
	lsls r2, r2, #2
	adds r0, r2, r0
	ldr r2, [r0, #0x18]
	ldrh r0, [r3, #0x18]
	adds r2, r2, r0
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	strh r0, [r3, #0x18]
	lsls r1, r0, #0x1e
	beq _0803F76C
	lsls r1, r0, #0x1e
	lsrs r1, r1, #0x1e
	movs r4, #4
	subs r1, r4, r1
	adds r0, r0, r1
	strh r0, [r3, #0x18]
_0803F76C
	adds r0, r2, #0
	pop {r4, r5}
	bx lr
	ALIGN

	thumb_func_start sub_803F774
sub_803F774 ;@ 0x0803F774
	push {r4, r5, r6, r7, lr}
	adds r4, r1, #0
	movs r3, #0x1a
	ldrsh r1, [r0, r3]
	sub sp, #0xc
	movs r3, #0x18
	str r1, [sp, #4]
	ldrsh r1, [r0, r3]
	adds r6, r0, #0
	movs r0, #0
	str r1, [sp]
	strb r0, [r4]
	adds r7, r6, #0
	adds r5, r2, #0
	adds r7, #0x60
	strb r0, [r2]
	b _0803F7BA
_0803F796
	ldrb r1, [r7, #0xf]
	muls r0, r1
	ldr r1, [r6, #0x54]
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	add r1, sp, #8
	bl sub_803F8BC
	add r3, sp, #0
	ldrh r0, [r3, #0xa]
	ldr r1, [sp, #4]
	adds r0, r0, r1
	lsls r1, r0, #0x10
	asrs r1, r1, #0x10
	str r1, [sp, #4]
	ldrb r0, [r5]
	adds r0, #1
	strb r0, [r5]
_0803F7BA
	ldrb r0, [r5]
	ldrb r1, [r7, #0xe]
	cmp r0, r1
	bhs _0803F7EA
	ldr r1, [sp, #4]
	cmp r1, #0xa0
	blt _0803F796
	b _0803F7EA
_0803F7CA
	ldr r1, [r6, #0x54]
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	add r1, sp, #8
	bl sub_803F8BC
	add r3, sp, #0
	ldrh r0, [r3, #8]
	ldr r1, [sp]
	adds r0, r0, r1
	lsls r1, r0, #0x10
	asrs r1, r1, #0x10
	str r1, [sp]
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
_0803F7EA
	ldrb r0, [r4]
	ldrb r1, [r7, #0xf]
	cmp r0, r1
	bhs _0803F7F8
	ldr r1, [sp]
	cmp r1, #0xf0
	blt _0803F7CA
_0803F7F8
	ldrb r0, [r4]
	cmp r0, #0
	bne _0803F802
	strb r0, [r5]
	b _0803F808
_0803F802
	ldrb r0, [r5]
	cmp r0, #0
	bne _0803F80C
_0803F808
	movs r0, #0
	strb r0, [r4]
_0803F80C
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	thumb_func_start sub_803F814
sub_803F814 ;@ 0x0803F814
	push {r4, r5, r6}
	movs r4, #0x38
	ldrb r4, [r4, r0]
	ldr r5, [sp, #0xc]
	cmp r4, #1
	bne _0803F86A
	ldrb r4, [r0, #0x1c]
	lsls r6, r4, #0x1d
	bpl _0803F83A
	ldr r6, [r0, #0x14]
	ldrh r4, [r0, #0x20]
	ldrh r6, [r6, #4]
	subs r4, r4, r6
	lsrs r6, r4, #0x1f
	adds r4, r6, r4
	asrs r4, r4, #1
	lsls r4, r4, #0x18
	asrs r4, r4, #0x18
	b _0803F84E
_0803F83A
	lsls r4, r4, #0x1e
	bpl _0803F84C
	ldr r6, [r0, #0x14]
	ldrh r4, [r0, #0x20]
	ldrh r6, [r6, #4]
	subs r4, r4, r6
	lsls r4, r4, #0x18
	asrs r4, r4, #0x18
	b _0803F84E
_0803F84C
	movs r4, #0
_0803F84E
	cmp r1, #0
	beq _0803F858
	ldrh r6, [r0, #0x18]
	adds r6, r6, r4
	strh r6, [r1]
_0803F858
	cmp r2, #0
	beq _0803F87E
	ldr r6, [r0, #0x14]
	ldrh r1, [r0, #0x18]
	ldrh r6, [r6, #4]
	adds r1, r1, r6
	adds r1, r1, r4
	strh r1, [r2]
	b _0803F87E
_0803F86A
	cmp r1, #0
	beq _0803F872
	ldrh r4, [r0, #0x18]
	strh r4, [r1]
_0803F872
	cmp r2, #0
	beq _0803F87E
	ldrh r1, [r0, #0x18]
	ldrh r4, [r0, #0x20]
	adds r1, r1, r4
	strh r1, [r2]
_0803F87E
	cmp r3, #0
	beq _0803F886
	ldrh r1, [r0, #0x1a]
	strh r1, [r3]
_0803F886
	cmp r5, #0
	beq _0803F892
	ldrh r1, [r0, #0x1a]
	ldrh r0, [r0, #0x1e]
	adds r0, r1, r0
	strh r0, [r5]
_0803F892
	pop {r4, r5, r6}
	bx lr
	ALIGN

	thumb_func_start sub_803F898
sub_803F898 ;@ 0x0803F898
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0803F8B8 ;@ =gUnknown_03003EA0
	ldr r0, [r0]
	bl sub_8000D5A
	ldr r0, [r0, #0x20]
	ldr r1, [r4, #0x10]
	pop {r4}
	subs r0, r1, r0
	asrs r0, r0, #3
	lsls r0, r0, #0x10
	pop {r3}
	lsrs r0, r0, #0x10
	bx r3
	ALIGN
_0803F8B8 DCDU gUnknown_03003EA0
