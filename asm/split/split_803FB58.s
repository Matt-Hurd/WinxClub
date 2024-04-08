    INCLUDE asm/macros.inc
    AREA text, CODE

	IMPORT gUnknown_03003E88

	thumb_func_start sub_803FB58
sub_803FB58 ;@ 0x0803FB58
	push {r4, r5}
	ldr r2, _0803FBB8 ;@ =gUnknown_03003E88
	movs r4, #0x53
	ldr r3, [r2]
	ldrh r2, [r0, #0x10]
	lsls r4, r4, #3
	movs r5, #0x73
	lsls r2, r2, #0x1a
	lsrs r2, r2, #0x18
	adds r2, r2, r3
	adds r4, r2, r4
	lsls r5, r5, #3
	adds r2, r2, r5
	cmp r1, #0
	bne _0803FB78
	ldr r1, [r4]
_0803FB78
	cmp r1, #0
	bne _0803FB86
	str r1, [r0, #0x14]
	str r1, [r0, #0x18]
	str r0, [r4]
	str r0, [r2]
	b _0803FB9E
_0803FB86
	str r1, [r0, #0x18]
	ldr r4, [r1, #0x14]
	str r4, [r0, #0x14]
	str r0, [r1, #0x14]
	ldr r4, [r0, #0x14]
	cmp r4, #0
	beq _0803FB96
	str r0, [r4, #0x18]
_0803FB96
	ldr r4, [r2]
	cmp r4, r1
	bne _0803FB9E
	str r0, [r2]
_0803FB9E
	ldrh r0, [r0, #0x10]
	movs r2, #0x43
	lsls r2, r2, #3
	lsls r1, r0, #0x1a
	lsrs r1, r1, #0x19
	adds r1, r1, r3
	adds r1, r1, r2
	ldrh r2, [r1]
	lsrs r0, r0, #6
	adds r0, r2, r0
	strh r0, [r1]
	pop {r4, r5}
	bx lr
	ALIGN
_0803FBB8 DCDU gUnknown_03003E88
	END