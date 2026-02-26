	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_03003E84
	IMPORT sub_8012468
	IMPORT sub_803DAC0

	non_word_aligned_thumb_func_start sub_800F312

sub_800F312
	push {r3, r4, r5, r6, r7, lr}
	ldr r7, [r0, #4]
	adds r4, r0, #0
	ldr r0, [r0, #0x70]
	adds r5, r1, #0
	adds r0, #0x80
	ldr r1, [r0, #0x10]
	movs r6, #0
	cmp r1, r5
	bhs %11
	subs r6, r5, r1
	adds r5, r1, #0
11
	cmp r1, #0
	beq %14
	ldr r0, _0800F4EC
	ldr r0, [r0]
	ldr r1, [r4, #0x74]
	bl sub_803DAC0
	str r0, [sp]
	ldr r1, [r4, #0x70]
	str r0, [r1, #0x2c]
	ldr r0, [r4, #0x70]
	movs r1, #1
	mov ip, r0
	adds r0, #0x80
	ldr r0, [r0, #0xc]
	ldr r3, [r4, #8]
	adds r2, r0, r5
	lsls r1, r3
	cmp r2, r1
	bls %12
	subs r2, r1, r0
	lsrs r0, r0, #1
	lsls r0, r0, #1
	adds r1, r0, r7
	mov r0, ip
	bl sub_8012468
	ldr r0, [r4, #0x70]
	movs r1, #0x8c
	ldr r1, [r1, r0]
	ldr r3, [r4, #8]
	movs r2, #1
	lsls r2, r3
	subs r1, r2, r1
	subs r2, r5, r1
	adds r1, r7, #0
	bl sub_8012468
	ldr r0, [r4, #8]
	movs r1, #1
	lsls r1, r0
	ldr r0, [r4, #0x70]
	adds r0, #0x80
	ldr r2, [r0, #0xc]
	subs r1, r1, r2
	subs r1, r5, r1
	str r1, [r0, #0xc]
	b %13
12
	lsrs r0, r0, #1
	lsls r0, r0, #1
	adds r1, r0, r7
	mov r0, ip
	adds r2, r5, #0
	bl sub_8012468
	ldr r0, [r4, #0x70]
	ldr r2, [r4, #8]
	adds r0, #0x80
	ldr r1, [r0, #0xc]
	movs r3, #1
	lsls r3, r2
	adds r1, r1, r5
	subs r3, #1
	ands r1, r3
	str r1, [r0, #0xc]
13
	ldr r0, [r4, #0x70]
	adds r0, #0x90
	ldr r1, [r0]
	subs r1, r1, r5
	str r1, [r0]
	ldr r1, [r4, #0x70]
	ldr r0, [r4, #0x74]
	ldr r1, [r1, #0x2c]
	ldr r2, [sp]
	subs r1, r1, r2
	adds r0, r0, r1
	str r0, [r4, #0x74]
	b %15
14
	movs r1, #4
	str r1, [r4, #0x5c]
	ldr r2, [r4, #8]
	movs r1, #1
	lsls r1, r2
	str r1, [r0, #0x10]
	movs r5, #0
15
	cmp r6, #0
	ble %17
	movs r0, #0
16
	ldr r1, [r4, #0x70]
	ldr r3, [r4, #8]
	movs r2, #1
	adds r1, #0x80
	ldr r1, [r1, #0xc]
	lsls r2, r3
	subs r2, #1
	ands r1, r2
	lsrs r1, r1, #1
	lsls r1, r1, #1
	strh r0, [r7, r1]
	ldr r1, [r4, #0x70]
	subs r6, #2
	adds r1, #0x8c
	ldr r2, [r1]
	adds r2, #2
	str r2, [r1]
	cmp r6, #0
	bgt %16
17
	adds r0, r5, #0
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	ALIGN
_0800F4EC DCDU gUnknown_03003E84

	END
