	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT __call_via_r1
	IMPORT gPlayerEntity
	IMPORT gUnknown_03003EB8
	IMPORT gUnknown_08050FD4
	IMPORT sub_800065C
	IMPORT sub_80007A0
	IMPORT sub_8000914
	IMPORT sub_800116A
	IMPORT sub_803F170
	IMPORT sub_803F2CC
	IMPORT sub_803FAB8
	IMPORT sub_803FF24
	IMPORT sub_80401C0
	IMPORT sub_80401E4

	thumb_func_start sub_801F2F8

sub_801F2F8
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, _0801F620
	ldr r0, [r0]
	bl sub_800116A
	str r0, [r4, #0x2c]
	ldr r1, [r4, #0x7c]
	lsls r1, r1, #4
	lsrs r1, r1, #0x1c
	lsls r1, r1, #1
	adds r1, r1, r4
	ldrh r1, [r1, #0x18]
	movs r2, #0
	bl sub_80007A0
	ldr r0, [r4, #0x2c]
	movs r2, #2
	ldr r1, [r0]
	lsls r7, r2, #7
	orrs r1, r2
	bics r1, r7
	str r1, [r0]
	adds r0, r4, #0
	bl sub_803FAB8
	adds r1, r0, #0
	ldr r0, [r4, #0x2c]
	bl sub_803F2CC
	adds r5, r4, #0
	adds r5, #0x80
	ldr r0, [r5, #0x14]
	lsls r6, r7, #6
	lsls r0, r0, #0xf
	lsrs r0, r0, #0x1e
	cmp r0, #1
	bne %1
	movs r1, #0xbf
	ldr r0, [r4, #0x2c]
	bl sub_80401C0
	ldr r0, [r5, #0xc]
	bics r0, r6
	str r0, [r5, #0xc]
	b %3
1
	cmp r0, #2
	ldr r0, [r4, #0x2c]
	bne %2
	movs r1, #0x7f
	bl sub_80401C0
	ldr r0, [r5, #0xc]
	bics r0, r6
	str r0, [r5, #0xc]
	b %3
2
	movs r1, #0x82
	bl sub_80401C0
3
	adds r1, r4, #0
	adds r1, #0x58
	adds r6, r1, #0
	ldr r0, [r4, #0x2c]
	bl sub_803FF24
	movs r1, #1
	ldr r0, [r4, #0x2c]
	bl sub_80401E4
	ldrh r0, [r4, #4]
	cmp r0, #8
	beq %4
	cmp r0, #4
	beq %4
	ldr r0, [r4, #0x2c]
	bl sub_8000914
4
	ldr r0, _0801F620
	ldr r0, [r0]
	bl sub_800116A
	ldr r1, _0801F624
	str r0, [r4, #0x30]
	ldr r1, [r1]
	adds r1, #0x90
	ldrb r1, [r1]
	cmp r1, #6
	bne %5
	movs r2, #0xf
	ldr r1, [r5, #0xc]
	lsls r2, r2, #0xf
	bics r1, r2
	str r1, [r5, #0xc]
5
	ldr r1, [r5, #0xc]
	lsls r1, r1, #0xd
	lsrs r2, r1, #0x1c
	beq %6
	lsrs r1, r1, #0x1c
	ldr r2, _0801F628
	lsls r1, r1, #1
	adds r1, r1, r2
	subs r1, #0x20
	ldrh r1, [r1, #0x1e]
	bl sub_800065C
	b %7
6
	ldr r1, _0801F62C
	bl sub_800065C
7
	ldr r0, [r4, #0x30]
	movs r2, #2
	ldr r1, [r0]
	orrs r1, r2
	bics r1, r7
	str r1, [r0]
	ldr r0, [r5, #0xc]
	lsls r0, r0, #0x13
	bpl %8
	movs r1, #1
	ldr r0, [r4, #0x30]
	bl sub_803F170
	ldr r0, [r4, #0x30]
	movs r2, #4
	ldr r1, [r0]
	bics r1, r2
	orrs r1, r2
	str r1, [r0]
8
	movs r1, #0xbe
	ldr r0, [r4, #0x30]
	bl sub_80401C0
	adds r1, r6, #0
	ldr r0, [r4, #0x30]
	bl sub_803FF24
	ldr r0, [r4, #0x30]
	movs r2, #3
	ldrh r1, [r0, #0x26]
	lsls r2, r2, #0xa
	bics r1, r2
	movs r2, #1
	lsls r2, r2, #0xa
	orrs r1, r2
	strh r1, [r0, #0x26]
	ldr r1, [r0]
	movs r2, #0x80
	orrs r1, r2
	str r1, [r0]
	ldr r0, [r5, #0xc]
	lsls r0, r0, #0xd
	lsrs r0, r0, #0x1c
	beq %9
	movs r1, #1
	ldr r0, [r4, #0x30]
	bl sub_80401E4
9
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x38]
	adds r1, r2, r1
	bl __call_via_r1
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x3c]
	adds r1, r2, r1
	bl __call_via_r1
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	ALIGN
_0801F620 DCDU gUnknown_03003EB8
_0801F624 DCDU gPlayerEntity
_0801F628 DCDU gUnknown_08050FD4
_0801F62C DCDU 0x000011EF

	END
