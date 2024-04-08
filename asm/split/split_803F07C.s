    INCLUDE asm/macros.inc
    AREA text, CODE

	IMPORT gUnknown_03003454
	IMPORT gUnknown_03003E88

	thumb_func_start sub_803F07C
sub_803F07C ;@ 0x0803F07C
	str r1, [r0, #4]
	cmp r1, #0
	beq _0803F092
	ldr r3, [r1]
	str r3, [r0]
	str r0, [r1]
	ldr r1, [r0]
	cmp r1, #0
	beq _0803F096
	str r0, [r1, #4]
	b _0803F096
_0803F092
	movs r1, #0
	str r1, [r0]
_0803F096
	ldr r1, [r0, #8]
	lsls r2, r2, #8
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	orrs r1, r2
	lsrs r1, r1, #8
	lsls r1, r1, #8
	str r1, [r0, #8]
	bx lr

	thumb_func_start sub_803F0A8
sub_803F0A8 ;@ 0x0803F0A8
	push {r4, r5, r6, r7}
	cmp r0, #0xff
	bne _0803F0B4
	ldr r0, _0803F108 ;@ =gUnknown_03003454
	ldr r0, [r0]
	ldrb r0, [r0, #0x14]
_0803F0B4
	ldr r3, _0803F10C ;@ =gUnknown_03003E88
	movs r7, #6
	ldr r4, [r3]
	lsls r3, r0, #1
	adds r3, r3, r4
	adds r5, r3, #0
	adds r3, #0xff
	adds r3, #1
	adds r5, #0xff
	adds r5, #0x81
	ldrh r6, [r3, #0x18]
	ldrh r5, [r5, #0x18]
	adds r6, r6, r7
	cmp r6, r5
	bls _0803F0D6
	movs r5, #0
	strh r5, [r3, #0x18]
_0803F0D6
	lsls r0, r0, #2
	adds r0, r0, r4
	ldrh r4, [r3, #0x18]
	ldr r0, [r0, #0x18]
	adds r0, r0, r4
	adds r4, #6
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	strh r4, [r3, #0x18]
	lsls r5, r4, #0x1e
	beq _0803F0F8
	lsls r5, r4, #0x1e
	lsrs r5, r5, #0x1e
	movs r6, #4
	subs r5, r6, r5
	adds r4, r4, r5
	strh r4, [r3, #0x18]
_0803F0F8
	movs r3, #0x1c
	strh r3, [r0]
	strh r7, [r0, #2]
	strb r1, [r0, #4]
	strb r2, [r0, #5]
	pop {r4, r5, r6, r7}
	bx lr
	ALIGN
_0803F108 DCDU gUnknown_03003454
_0803F10C DCDU gUnknown_03003E88
	END