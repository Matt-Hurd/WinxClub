	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_03003EA0
	IMPORT gUnknown_03003EB8
	IMPORT sub_80007A0
	IMPORT sub_8000914
	IMPORT sub_8000D5A
	IMPORT sub_800116A
	IMPORT sub_802E5D2
	IMPORT sub_803FF24
	IMPORT sub_80401C0
	IMPORT sub_80401E4

	thumb_func_start sub_803442C

sub_803442C
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	bl sub_802E5D2
	ldr r0, [r4, #0x30]
	lsls r0, r0, #2
	bpl %6
	ldr r0, _080344DC
	ldr r0, [r0]
	bl sub_800116A
	str r0, [r4, #0x3c]
	ldr r1, [r4, #0x30]
	lsls r1, r1, #0x13
	lsrs r1, r1, #0x13
	movs r2, #0
	bl sub_80007A0
	ldr r0, [r4, #0x30]
	ldr r5, [r4, #0x3c]
	lsls r1, r0, #0xe
	lsrs r7, r1, #0x1b
	lsls r0, r0, #8
	lsrs r6, r0, #0x1a
	ldr r0, _080344D8
	ldr r0, [r0]
	bl sub_8000D5A
	ldr r1, [r5, #0x44]
	ldr r0, [r0, #0x28]
	ldr r1, [r1, #4]
	movs r2, #2
	lsls r1, r1, #0x10
	lsrs r1, r1, #0xe
	adds r0, r0, r1
	lsls r1, r7, #2
	adds r0, r0, r1
	str r0, [r5, #0x48]
	ldr r0, _080344E0
	strb r6, [r5, #3]
	muls r0, r6
	str r0, [r5, #8]
	ldr r1, [r4, #0x30]
	ldr r0, [r4, #0x3c]
	lsls r1, r1, #3
	lsrs r3, r1, #0x1f
	movs r1, #0xff
	adds r1, #1
	cmp r3, #0
	ldr r3, [r0]
	beq %3
	orrs r2, r3
	bics r2, r1
	str r2, [r0]
	b %4
3
	bics r3, r2
	bics r3, r1
	str r3, [r0]
4
	adds r1, r4, #0
	adds r1, #0x1c
	ldr r0, [r4, #0x3c]
	bl sub_803FF24
	ldr r0, [r4, #0x34]
	lsls r0, r0, #0xd
	lsrs r1, r0, #0x18
	ldr r0, [r4, #0x3c]
	bl sub_80401C0
	ldr r0, [r4, #0x30]
	lsls r0, r0, #7
	bpl %5
	ldr r0, [r4, #0x3c]
	bl sub_8000914
5
	ldr r0, [r4, #0x30]
	lsls r0, r0, #6
	bpl %6
	movs r1, #1
	ldr r0, [r4, #0x3c]
	bl sub_80401E4
6
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
	ALIGN

	ALIGN
_080344D8 DCDU gUnknown_03003EA0
_080344DC DCDU gUnknown_03003EB8
_080344E0 DCDU 0x0010BE20

	END
