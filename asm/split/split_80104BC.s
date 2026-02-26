	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT sub_80103EC
	IMPORT sub_801047C
	IMPORT sub_803D9C4

	thumb_func_start sub_80104BC

sub_80104BC
	push {r3, r4, r5, r6, r7, lr}
	movs r6, #0
	str r6, [r0, #0x74]
	str r6, [r0, #0x70]
	str r6, [r0, #4]
	str r6, [r0, #0x5c]
	str r6, [r0, #0x60]
	str r6, [r0, #0x68]
	str r6, [r0, #0x64]
	adds r7, r1, #0
	adds r4, r0, #0
	movs r0, #0xb
	movs r1, #0x54
	strb r0, [r1, r4]
	str r6, [r4, #0x6c]
	cmp r7, #0
	beq %11
	adds r3, r6, #0
	movs r1, #1
	lsls r1, r1, #0x11
	movs r2, #0
	movs r0, #1
	bl sub_803D9C4
	str r0, [r4, #0x78]
	b %12
11
	str r6, [r4, #0x78]
12
	adds r5, r4, #0
	adds r5, #0x80
	str r6, [r4, #0x7c]
	str r6, [r5, #4]
	ldr r0, _0801069C
	str r6, [r4, #0x58]
	str r0, [r5]
	movs r0, #0x71
	lsls r0, r0, #4
	adds r0, r4, r0
	bl sub_801047C
	str r6, [r5, #8]
	str r6, [r5, #0xc]
	movs r0, #0x1b
	lsls r0, r0, #6
	str r6, [r5, #0x10]
	adds r5, r4, r0
	cmp r7, #0
	beq %13
	adds r3, r6, #0
	movs r1, #0x21
	lsls r1, r1, #0xb
	movs r2, #0
	movs r0, #1
	bl sub_803D9C4
	str r0, [r5, #0x24]
	b %14
13
	str r6, [r5, #0x24]
14
	movs r1, #0
	adds r0, r4, #0
	bl sub_80103EC
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	ALIGN
_0801069C DCDU 0x0001FFFF

	END
