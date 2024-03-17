    INCLUDE asm/macros.inc
    AREA text, CODE

	IMPORT gUnknown_03003E88

	thumb_func_start sub_803FBBC
sub_803FBBC ;@ 0x0803FBBC
	push {r4, r5}
	ldrh r2, [r0, #0x10]
	ldr r1, _0803FC10 ;@ =gUnknown_03003E88
	movs r4, #0x73
	ldr r1, [r1]
	lsls r2, r2, #0x1a
	lsrs r2, r2, #0x18
	adds r2, r2, r1
	movs r3, #0x53
	lsls r3, r3, #3
	lsls r4, r4, #3
	adds r4, r2, r4
	adds r3, r2, r3
	ldr r2, [r0, #0x18]
	ldr r5, [r0, #0x14]
	cmp r2, #0
	beq _0803FBE2
	str r5, [r2, #0x14]
	b _0803FBE4
_0803FBE2
	str r5, [r3]
_0803FBE4
	ldr r2, [r0, #0x14]
	cmp r2, #0
	beq _0803FBF0
	ldr r3, [r0, #0x18]
	str r3, [r2, #0x18]
	b _0803FBF4
_0803FBF0
	ldr r2, [r0, #0x18]
	str r2, [r4]
_0803FBF4
	ldrh r0, [r0, #0x10]
	lsls r2, r0, #0x1a
	lsrs r2, r2, #0x19
	adds r1, r2, r1
	movs r2, #0x43
	lsls r2, r2, #3
	adds r1, r1, r2
	ldrh r2, [r1]
	lsrs r0, r0, #6
	subs r0, r2, r0
	strh r0, [r1]
	pop {r4, r5}
	bx lr
	ALIGN
_0803FC10 DCDU gUnknown_03003E88
	END