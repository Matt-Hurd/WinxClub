    INCLUDE asm/macros.inc
    AREA text, CODE

	IMPORT gUnknown_03003EC0

	thumb_func_start sub_803B520
sub_803B520 ;@ 0x0803B520
	push {r4, r5, r6, lr}
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	ldr r4, _0803B580 ;@ =0x04000208
	ldrh r3, [r4]
	adds r6, r3, #0
	movs r3, #0
	strh r3, [r4]
	ldr r5, _0803B584 ;@ =0x04000204
	ldrh r4, [r5]
	ldr r3, _0803B588 ;@ =0x0000F8FF
	ands r4, r3
	ldr r3, _0803B58C ;@ =gUnknown_03003EC0
	ldr r3, [r3]
	ldrh r3, [r3, #6]
	orrs r4, r3
	strh r4, [r5]
	ldr r3, _0803B590 ;@ =0x040000D4
	str r0, [r3]
	ldr r0, _0803B594 ;@ =0x040000D8
	str r1, [r0]
	ldr r1, _0803B598 ;@ =0x040000DC
	movs r0, #0x80
	lsls r0, r0, #0x18
	orrs r2, r0
	str r2, [r1]
	adds r1, #2
	movs r2, #0x80
	lsls r2, r2, #8
	adds r0, r2, #0
	ldrh r1, [r1]
	ands r0, r1
	cmp r0, #0
	beq _0803B574
	ldr r2, _0803B59C ;@ =0x040000DE
	movs r0, #0x80
	lsls r0, r0, #8
	adds r1, r0, #0
_0803B56C
	ldrh r0, [r2]
	ands r0, r1
	cmp r0, #0
	bne _0803B56C
_0803B574
	ldr r0, _0803B580 ;@ =0x04000208
	strh r6, [r0]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	ALIGN
_0803B580 DCDU 0x04000208
_0803B584 DCDU 0x04000204
_0803B588 DCDU 0x0000F8FF
_0803B58C DCDU gUnknown_03003EC0
_0803B590 DCDU 0x040000D4
_0803B594 DCDU 0x040000D8
_0803B598 DCDU 0x040000DC
_0803B59C DCDU 0x040000DE
