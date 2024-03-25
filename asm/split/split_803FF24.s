    INCLUDE asm/macros.inc
    AREA text, CODE

	IMPORT gUnknown_03003EA0
	IMPORT sub_8000D5A
	IMPORT sub_800C0EC
	IMPORT sub_800C164
	IMPORT sub_800CD04

	thumb_func_start sub_803FF24
sub_803FF24 ;@ 0x0803FF24
	push {r4, r5}
	ldr r3, [r1]
	ldr r4, [r0, #0x2c]
	ldr r5, [r0, #0x30]
	subs r4, r3, r4
	ldr r3, [r1, #4]
	adds r2, r0, #0
	subs r3, r3, r5
	ldr r5, [r0, #0x34]
	adds r2, #0x34
	adds r5, r5, r4
	str r5, [r0, #0x34]
	ldr r5, [r0, #0x38]
	adds r5, r5, r3
	str r5, [r2, #4]
	ldr r5, [r2, #8]
	adds r4, r5, r4
	str r4, [r2, #8]
	ldr r4, [r2, #0xc]
	adds r3, r4, r3
	str r3, [r2, #0xc]
	ldr r3, [r1]
	ldr r1, [r1, #4]
	movs r2, #0xff
	str r1, [r0, #0x30]
	str r3, [r0, #0x2c]
	ldr r1, [r0]
	adds r2, #1
	orrs r1, r2
	str r1, [r0]
	pop {r4, r5}
	bx lr

	thumb_func_start sub_803FF64
sub_803FF64 ;@ 0x0803FF64
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r7, r1, #0
	ldr r1, [r0, #0x14]
	ldr r6, _0804002C ;@ =gUnknown_03003EA0
	ldr r0, [r1, #4]
	lsls r0, r0, #0x1f
	bpl _0803FFDC
	ldr r0, [r4, #0x44]
	cmp r0, #0
	beq _0803FF7E
	ldr r5, [r4, #0x48]
	b _0803FF80
_0803FF7E
	ldr r5, [r4, #0x10]
_0803FF80
	ldr r0, _0804002C ;@ =gUnknown_03003EA0
	cmp r5, #0
	ldr r0, [r0]
	beq _0803FFB8
	ldr r1, [r4, #0x18]
	cmp r1, #0
	bne _0803FFA2
	bl sub_8000D5A
	ldr r0, [r0, #0x14]
	ldr r1, [r5]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r3, r1, #2
	adds r1, r3, r1
	lsls r1, r1, #2
	adds r1, r0, r1
_0803FFA2
	ldr r1, [r1, #0xc]
	ldr r0, [r6]
	lsls r2, r1, #0x1c
	ldr r1, [r4, #0x14]
	lsrs r2, r2, #0x1c
	ldr r1, [r1]
	lsls r1, r1, #0x13
	lsrs r1, r1, #0x1b
	bl sub_800C0EC
	b _0803FFC4
_0803FFB8
	ldr r1, [r1]
	lsls r1, r1, #0x13
	lsrs r1, r1, #0x1b
	movs r2, #1
	bl sub_800C0EC
_0803FFC4
	ldr r0, [r4, #0x14]
	movs r2, #0x1f
	ldr r1, [r0]
	lsls r2, r2, #8
	orrs r1, r2
	str r1, [r0]
	ldr r0, [r4, #0x14]
	adds r0, #4
	ldr r1, [r0]
	lsrs r1, r1, #1
	lsls r1, r1, #1
	str r1, [r0]
_0803FFDC
	ldr r0, [r4, #0x44]
	cmp r0, #0
	beq _0803FFE6
	ldr r5, [r4, #0x48]
	b _0803FFE8
_0803FFE6
	ldr r5, [r4, #0x10]
_0803FFE8
	cmp r5, #0
	beq _0804001A
	ldr r0, [r4, #0x18]
	cmp r0, #0
	bne _08040008
	ldr r0, [r6]
	bl sub_8000D5A
	ldr r0, [r0, #0x14]
	ldr r1, [r5]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r3, r1, #2
	adds r1, r3, r1
	lsls r1, r1, #2
	adds r0, r0, r1
_08040008
	ldr r0, [r0, #4]
	ldr r1, _08040030 ;@ =0x00000FFF
	lsrs r0, r0, #0x14
	cmp r0, r1
	beq _0804001A
	ldr r0, [r6]
	ldr r1, [r4, #0x14]
	bl sub_800C164
_0804001A
	ldr r0, [r6]
	ldr r1, [r4, #0x14]
	adds r2, r7, #0
	bl sub_800CD04
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
	ALIGN
_0804002C DCDU gUnknown_03003EA0
_08040030 DCDU 0x00000FFF
	END