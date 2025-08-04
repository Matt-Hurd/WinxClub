	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_03003E84
	IMPORT gUnknown_03003E98
	IMPORT sub_8004674
	IMPORT sub_800529A
	IMPORT sub_80103EC
	IMPORT __16__rt_memclr
	IMPORT __16__rt_memcpy
	IMPORT __rt_memcpy_w
	IMPORT __16__rt_memset
	IMPORT strlen
	IMPORT sub_803D9A8
	IMPORT sub_803D9C4

	thumb_func_start sub_80106B0
sub_80106B0
	ldr r0, [r0, #0xc]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x18
	lsls r0, r0, #6
	bx lr

	non_word_aligned_thumb_func_start sub_80106BA
sub_80106BA
	bx lr

	thumb_func_start sub_80106BC
sub_80106BC
	push {r0, r1, r2, r4, r5, r6, r7, lr}
	ldr r6, [r0, #4]
	movs r5, #0
	adds r4, r0, #0
	mvns r0, r5
	str r0, [r4, #0x6c]
	ldr r0, [sp, #4]
	movs r7, #0
	cmp r0, #0
	bls %3
1
	ldr r0, _08010994
	movs r3, #0
	movs r2, #8
	adds r1, r6, #0
	ldr r0, [r0]
	bl sub_800529A
	ldr r1, [r0]
	ldr r0, [r0, #4]
	lsrs r1, r1, #0x10
	lsls r2, r0, #0x13
	adds r5, r1, r5
	adds r1, r6, #0
	adds r1, #8
	lsrs r2, r2, #0x11
	lsrs r0, r0, #0xd
	lsls r0, r0, #2
	adds r1, r2, r1
	adds r6, r0, r1
	ldr r0, [r4, #0x6c]
	ldr r1, [r4, #0x74]
	adds r2, r0, #0
	adds r0, #1
	cmp r0, r1
	bge %2
	lsls r3, r2, #1
	adds r2, r3, r2
	ldr r1, [r4, #0x70]
	lsls r2, r2, #2
	adds r1, r1, r2
	ldr r1, [r1, #0x10]
	lsls r1, r1, #0xe
	lsrs r1, r1, #0xe
	cmp r1, r5
	bhi %2
	str r0, [r4, #0x6c]
2
	ldr r0, [sp, #4]
	adds r7, #1
	cmp r7, r0
	blo %1
3
	ldr r0, [r4, #0x10]
	ldr r1, [sp, #4]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	subs r0, r0, r1
	str r0, [r4, #0x5c]
	str r5, [r4, #0x64]
	str r5, [r4, #0x68]
	ldr r0, [sp, #8]
	cmp r0, #0
	beq %4
	adds r1, r6, #0
	adds r0, r4, #0
	bl sub_80103EC
4
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_8010746
sub_8010746
	push {r0, r1, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, [r0, #0x70]
	sub sp, #0x5c
	cmp r0, #0
	beq %5
	movs r2, #0
	movs r1, #0
	bl sub_803D9A8
5
	ldr r0, [r4, #8]
	movs r5, #0
	lsls r1, r0, #0x18
	lsrs r1, r1, #0x18
	cmp r1, #0
	bne %7
	movs r0, #1
	adds r3, r5, #0
	movs r2, #0
	movs r1, #0xc
	str r0, [r4, #0x74]
	bl sub_803D9C4
	str r0, [r4, #0x70]
	adds r0, #4
	ldr r1, [r0]
	lsrs r1, r1, #0x12
	lsls r1, r1, #0x12
	str r1, [r0]
	ldr r0, [r4, #0x70]
	str r5, [r0, #8]
	ldr r0, [sp, #0x60]
	ldr r1, [r4, #0x70]
	str r0, [r1]
	ldr r0, [r4, #0x70]
	adds r0, #4
	ldr r1, [r0]
	lsls r1, r1, #0xe
	lsrs r1, r1, #0xe
	str r1, [r0]
	ldr r0, [sp, #0x60]
	str r0, [r4, #4]
	movs r0, #1
6
	add sp, #0x64
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
7
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	str r0, [r4, #0x74]
	movs r3, #0
	movs r2, #0
	movs r0, #1
	bl sub_803D9C4
	str r0, [r4, #0x70]
	movs r2, #0
	movs r1, #0
	str r1, [sp, #0x48]
	str r2, [sp, #0x4c]
	ldr r5, [sp, #0x60]
	adds r6, r0, #0
	ldr r0, [r4, #8]
	movs r7, #0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	beq %9
	add r0, sp, #4
	adds r0, #2
	str r0, [sp, #0x58]
8
	ldr r0, _08010994
	movs r3, #0
	movs r2, #0x42
	adds r1, r5, #0
	ldr r0, [r0]
	bl sub_800529A
	adds r1, r0, #0
	add r0, sp, #4
	movs r2, #0x42
	bl __16__rt_memcpy
	ldr r0, [sp, #0x58]
	bl strlen
	adds r0, #4
	lsrs r0, r0, #2
	lsls r0, r0, #2
	adds r0, #2
	adds r5, r0, r5
	ldr r0, [r4, #8]
	adds r7, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, r7
	bhi %8
9
	adds r5, #3
	lsrs r5, r5, #2
	lsls r5, r5, #2
	str r5, [r4, #4]
	ldr r0, [sp, #0x60]
	movs r1, #0
	str r1, [sp, #0x44]
	str r0, [sp, #0x50]
	ldr r0, [r4, #8]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	beq %13
	add r0, sp, #0
	adds r0, #2
	str r0, [sp, #0x54]
10
	ldr r0, _08010994
	movs r3, #0
	ldr r0, [r0]
	ldr r1, [sp, #0x50]
	movs r2, #0x42
	bl sub_800529A
	adds r1, r0, #0
	mov r0, sp
	movs r2, #0x42
	bl __16__rt_memcpy
	add r3, sp, #0
	ldrh r0, [r3]
	ldr r1, [sp, #0x48]
	movs r7, #0
	subs r0, r0, r1
	beq %12
11
	ldr r0, _08010994
	movs r3, #0
	movs r2, #8
	adds r1, r5, #0
	ldr r0, [r0]
	bl sub_800529A
	ldr r1, [r0]
	ldr r0, [r0, #4]
	ldr r2, [sp, #0x4c]
	lsrs r1, r1, #0x10
	adds r2, r1, r2
	str r2, [sp, #0x4c]
	lsls r2, r0, #0x13
	adds r1, r5, #0
	adds r1, #8
	lsrs r2, r2, #0x11
	lsrs r0, r0, #0xd
	lsls r0, r0, #2
	adds r1, r2, r1
	adds r5, r0, r1
	add r3, sp, #0
	ldrh r0, [r3]
	ldr r1, [sp, #0x48]
	adds r7, #1
	subs r0, r0, r1
	cmp r0, r7
	bhi %11
12
	str r5, [r6]
	ldr r0, [r6, #4]
	ldr r2, [sp, #0x4c]
	lsrs r0, r0, #0x12
	lsls r1, r2, #0x10
	lsrs r1, r1, #0x10
	lsls r0, r0, #0x12
	orrs r0, r1
	str r0, [r6, #4]
	add r3, sp, #0
	ldrh r1, [r3]
	lsls r0, r0, #0xe
	lsrs r0, r0, #0xe
	lsls r1, r1, #0x12
	orrs r0, r1
	str r0, [r6, #4]
	ldr r0, [sp, #0x50]
	adds r0, #2
	str r0, [r6, #8]
	ldrh r1, [r3]
	ldr r0, [sp, #0x54]
	str r1, [sp, #0x48]
	bl strlen
	adds r0, #4
	lsrs r0, r0, #2
	lsls r0, r0, #2
	ldr r1, [sp, #0x50]
	adds r0, #2
	adds r1, r0, r1
	str r1, [sp, #0x50]
	ldr r1, [sp, #0x44]
	adds r6, #0xc
	adds r1, #1
	str r1, [sp, #0x44]
	ldr r0, [r4, #8]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, r1
	bhi %10
13
	movs r0, #1
	b %6

	non_word_aligned_thumb_func_start sub_80108DA
sub_80108DA
	push {r3, r4, r5, r6, r7, lr}
	movs r6, #1
	lsls r6, r6, #9
	adds r5, r1, #0
	adds r1, r6, #0
	adds r4, r0, #0
	adds r0, r5, #0
	bl __16__rt_memclr
	adds r0, r5, r6
	lsrs r5, r6, #1
	movs r1, #0
	movs r7, #0xff
14
	adds r2, r1, #0
	muls r2, r4
	lsrs r2, r2, #8
	adds r3, r7, #0
	cmp r2, #0xff
	bhi %15
	lsls r3, r2, #0x18
	lsrs r3, r3, #0x18
15
	strb r3, [r0]
	adds r0, #1
	adds r1, #1
	cmp r1, r5
	blo %14
	movs r1, #0
	mvns r1, r1
	ldrb r1, [r1, r0]
	adds r2, r6, #0
	bl __16__rt_memset
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	thumb_func_start sub_8010920
sub_8010920
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, _08010994
	adds r5, r1, #0
	adds r7, r2, #0
	movs r3, #0
	movs r2, #0x4c
	ldr r0, [r0]
	bl sub_800529A
	adds r1, r0, #0
	adds r0, r4, #0
	adds r0, #8
	movs r2, #0x4c
	adds r6, r0, #0
	bl __rt_memcpy_w
	adds r0, r6, #0
	adds r0, #0xc
	bl strlen
	adds r0, #4
	lsrs r0, r0, #2
	lsls r0, r0, #2
	adds r0, #0xc
	adds r5, r0, r5
	cmp r7, #0
	bne %16
	ldr r0, _08010998
	ldr r0, [r0]
	bl sub_8004674
	adds r1, r4, #0
	adds r1, #0xff
	adds r1, #0x4d
	bl sub_80108DA
	adds r1, r5, #0
	adds r0, r4, #0
	bl sub_8010746
	adds r0, r4, #0
	ldr r1, [r4, #4]
	bl sub_80103EC
	movs r2, #1
	movs r1, #0
	adds r0, r4, #0
	bl sub_80106BC
16
	ldr r1, [r4, #8]
	movs r0, #1
	lsls r1, r1, #0x18
	bne %17
	movs r0, #0
17
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
	ALIGN
_08010994 DCDU gUnknown_03003E84
_08010998 DCDU gUnknown_03003E98
	END
