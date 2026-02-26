	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT GetEWRAMStart
	IMPORT __call_via_r7
	IMPORT gPlayerEntity
	IMPORT gUnknown_0300346C
	IMPORT gUnknown_03003D20
	IMPORT sub_80050FA
	IMPORT sub_802BA4C
	IMPORT sub_803DA80

	non_word_aligned_thumb_func_start sub_801F906

sub_801F906
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, [r0, #0x7c]
	sub sp, #0xc
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	cmp r0, #0
	bne %12
	adds r0, r4, #0
	adds r0, #0xff
	adds r0, #0x41
	str r0, [sp, #8]
	ldrh r0, [r0, #4]
	cmp r0, #0x1e
	bls %12
	ldr r0, [sp, #8]
	ldr r2, _0801FBB0
	ldrh r6, [r0, #6]
	ldr r0, _0801FBAC
	adds r7, r4, #0
	ldr r0, [r0]
	adds r7, #0x90
	adds r1, r0, #0
	adds r3, r0, #0
	adds r3, #0xb0
	adds r1, #0xa0
	ldrb r2, [r2]
	str r7, [sp, #4]
	cmp r6, #0xb4
	ldr r0, _0801FBB4
	bls %15
	ldrb r3, [r3, #7]
	cmp r3, #0
	beq %12
	cmp r3, #1
	beq %7
	cmp r3, #2
	beq %16
	cmp r3, #3
	bne %17
	cmp r2, #0
	beq %6
	ldrb r1, [r1, #0xd]
	cmp r1, #0x16
	blo %12
6
	movs r5, #2
	movs r6, #0
	b %25
7
	cmp r2, #0
	beq %8
	ldrb r1, [r1, #0xd]
	cmp r1, #0xd
	blo %12
8
	movs r5, #0
	movs r6, #0
9
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #4
	lsrs r0, r0, #0x1c
	cmp r0, r6
	beq %11
	ldr r0, _0801FBB4
	ldr r0, [r0]
	bl sub_80050FA
	bl GetEWRAMStart
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0x40
	bl sub_803DA80
	adds r7, r0, #0
	beq %10
	adds r0, r7, #0
	bl sub_802BA4C
10
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r7, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	ldr r0, [r4, #0x7c]
	adds r3, r6, #0
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r7, r2, r1
	adds r2, r5, #0
	adds r1, r4, #0
	bl __call_via_r7
	ldr r0, [r4, #0x7c]
	movs r2, #7
	movs r3, #1
	adds r1, r0, #0
	lsls r3, r3, #0x1c
	lsls r2, r2, #0x1c
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	lsls r1, r0, #1
	lsrs r1, r1, #0x1d
	cmp r1, #5
	str r0, [r4, #0x7c]
	bne %11
	bics r0, r2
	str r0, [r4, #0x7c]
11
	adds r6, #1
	cmp r6, #4
	blo %9
	ldr r0, _0801FBB4
	b %13
12
	b %26
13
	ldr r0, [r0]
	bl sub_80050FA
	bl GetEWRAMStart
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0x40
	bl sub_803DA80
	adds r6, r0, #0
	beq %14
	adds r0, r6, #0
	bl sub_802BA4C
14
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	b %18
15
	b %33
16
	b %19
17
	b %32
18
	str r6, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	b %32
19
	cmp r2, #0
	beq %20
	ldrb r1, [r1, #0xd]
	cmp r1, #0x12
	blo %26
20
	movs r5, #1
	movs r6, #0
21
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #4
	lsrs r0, r0, #0x1c
	cmp r0, r6
	beq %23
	ldr r0, _0801FBB4
	ldr r0, [r0]
	bl sub_80050FA
	bl GetEWRAMStart
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0x40
	bl sub_803DA80
	adds r7, r0, #0
	beq %22
	adds r0, r7, #0
	bl sub_802BA4C
22
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r7, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	ldr r0, [r4, #0x7c]
	adds r3, r6, #0
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r7, r2, r1
	adds r2, r5, #0
	adds r1, r4, #0
	bl __call_via_r7
	ldr r0, [r4, #0x7c]
	movs r2, #7
	movs r3, #1
	adds r1, r0, #0
	lsls r3, r3, #0x1c
	lsls r2, r2, #0x1c
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	lsls r1, r0, #1
	lsrs r1, r1, #0x1d
	cmp r1, #5
	str r0, [r4, #0x7c]
	bne %23
	bics r0, r2
	str r0, [r4, #0x7c]
23
	adds r6, #1
	cmp r6, #4
	blo %21
	ldr r0, _0801FBB4
	ldr r0, [r0]
	bl sub_80050FA
	bl GetEWRAMStart
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0x40
	bl sub_803DA80
	adds r6, r0, #0
	beq %24
	adds r0, r6, #0
	bl sub_802BA4C
24
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r6, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	b %32
25
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #4
	lsrs r0, r0, #0x1c
	cmp r0, r6
	beq %29
	ldr r0, _0801FBB4
	ldr r0, [r0]
	bl sub_80050FA
	bl GetEWRAMStart
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0x40
	bl sub_803DA80
	adds r7, r0, #0
	beq %28
	b %27
26
	b %44
27
	adds r0, r7, #0
	bl sub_802BA4C
28
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r7, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	ldr r0, [r4, #0x7c]
	adds r3, r6, #0
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r7, r2, r1
	adds r2, r5, #0
	adds r1, r4, #0
	bl __call_via_r7
	ldr r0, [r4, #0x7c]
	movs r2, #7
	movs r3, #1
	adds r1, r0, #0
	lsls r3, r3, #0x1c
	lsls r2, r2, #0x1c
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	lsls r1, r0, #1
	lsrs r1, r1, #0x1d
	cmp r1, #5
	str r0, [r4, #0x7c]
	bne %29
	bics r0, r2
	str r0, [r4, #0x7c]
29
	adds r6, #1
	cmp r6, #4
	blo %25
	ldr r0, _0801FBB4
	ldr r0, [r0]
	bl sub_80050FA
	bl GetEWRAMStart
	b %30
	ALIGN

	ALIGN
_0801FBAC DCDU gPlayerEntity
_0801FBB0 DCDU gUnknown_03003D20
_0801FBB4 DCDU gUnknown_0300346C

	END
