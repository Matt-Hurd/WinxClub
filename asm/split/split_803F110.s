    INCLUDE asm/macros.inc
    AREA text, CODE

	IMPORT gUnknown_03003454
	IMPORT gUnknown_03003E88

	thumb_func_start sub_803F110
sub_803F110 ;@ 0x0803F110
	push {r4, r5}
	cmp r0, #0xff
	bne _0803F11C
	ldr r0, _0803F168 ;@ =gUnknown_03003454
	ldr r0, [r0]
	ldrb r0, [r0, #0x14]
_0803F11C
	ldr r1, _0803F16C ;@ =gUnknown_03003E88
	movs r5, #4
	ldr r2, [r1]
	lsls r1, r0, #1
	adds r1, r1, r2
	adds r3, r1, #0
	adds r1, #0xff
	adds r1, #1
	adds r3, #0xff
	adds r3, #0x81
	ldrh r4, [r1, #0x18]
	ldrh r3, [r3, #0x18]
	adds r4, r4, r5
	cmp r4, r3
	bls _0803F13E
	movs r3, #0
	strh r3, [r1, #0x18]
_0803F13E
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrh r2, [r1, #0x18]
	ldr r0, [r0, #0x18]
	adds r0, r0, r2
	adds r2, #4
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	strh r2, [r1, #0x18]
	lsls r3, r2, #0x1e
	beq _0803F15E
	lsls r3, r2, #0x1e
	lsrs r3, r3, #0x1e
	subs r3, r5, r3
	adds r2, r2, r3
	strh r2, [r1, #0x18]
_0803F15E
	movs r1, #0x2c
	strh r1, [r0]
	strh r5, [r0, #2]
	pop {r4, r5}
	bx lr
	ALIGN
_0803F168 DCDU gUnknown_03003454
_0803F16C DCDU gUnknown_03003E88
	END