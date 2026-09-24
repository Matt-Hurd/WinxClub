	non_word_aligned_thumb_func_start sub_801F906
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
_0801FB98 DCDU __VTABLE__322Anonymous4
_0801FB9C DCDU 0xF000FFFF
_0801FBA0 DCDU 0xFF8003FF
_0801FBA4 DCDU 0x0043A000
_0801FBA8 DCDU gUnknown_03003EB8
_0801FBAC DCDU gPlayerEntity
_0801FBB0 DCDU gUnknown_03003D20
_0801FBB4 DCDU gUnknown_0300346C
30
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0x40
	bl sub_803DA80
	adds r6, r0, #0
	beq %31
	adds r0, r6, #0
	bl sub_802BA4C
31
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r6, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
32
	ldr r0, _0801FE7C
	movs r1, #0x29
	ldr r0, [r0]
	lsls r1, r1, #5
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r1, #1
	strb r1, [r0]
	adds r1, #1
	strb r1, [r0]
	adds r1, #1
	strb r1, [r0]
	adds r1, #1
	strb r1, [r0]
	ldr r7, [sp, #4]
	ldrb r0, [r7, #0xa]
	adds r0, #4
	strb r0, [r7, #0xa]
	b %50
33
	ldr r0, _0801FE80
	cmp r6, #0x3c
	ldr r0, [r0]
	bls %43
	ldrb r3, [r3, #6]
	cmp r3, #0
	beq %44
	cmp r3, #1
	beq %37
	cmp r3, #2
	beq %40
	cmp r3, #3
	bne %36
	cmp r2, #0
	beq %34
	ldrb r1, [r1, #0xd]
	cmp r1, #0x16
	blo %44
34
	bl sub_80050FA
	bl GetEWRAMStart
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0x4c
	bl sub_803DA80
	adds r5, r0, #0
	beq %35
	adds r0, r5, #0
	bl sub_802D2E8
35
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r5, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	movs r5, #0
36
	ldr r0, _0801FE7C
	movs r1, #0x29
	ldr r0, [r0]
	lsls r1, r1, #5
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r1, #1
	strb r1, [r0]
	ldr r7, [sp, #4]
	ldrb r0, [r7, #0xa]
	adds r0, #1
	strb r0, [r7, #0xa]
	b %50
37
	cmp r2, #0
	beq %38
	ldrb r1, [r1, #0xd]
	cmp r1, #0xd
	blo %44
38
	bl sub_80050FA
	bl GetEWRAMStart
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0x4c
	bl sub_803DA80
	adds r5, r0, #0
	beq %39
	adds r0, r5, #0
	bl sub_802D2E8
39
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r5, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	movs r5, #2
	b %36
40
	cmp r2, #0
	beq %41
	ldrb r1, [r1, #0xd]
	cmp r1, #0x12
	blo %44
41
	bl sub_80050FA
	bl GetEWRAMStart
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0x4c
	bl sub_803DA80
	adds r5, r0, #0
	beq %42
	adds r0, r5, #0
	bl sub_802D2E8
42
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r5, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	movs r5, #1
	b %45
43
	b %46
44
	b %57
45
	b %36
46
	ldrb r3, [r3, #5]
	cmp r3, #0
	beq %57
	cmp r3, #1
	beq %51
	cmp r3, #2
	beq %54
	cmp r3, #3
	bne %49
	cmp r2, #0
	beq %47
	ldrb r1, [r1, #0xd]
	cmp r1, #2
	blo %57
47
	bl sub_80050FA
	bl GetEWRAMStart
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0x4c
	bl sub_803DA80
	adds r5, r0, #0
	beq %48
	adds r0, r5, #0
	bl sub_802BFBC
48
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r5, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	movs r5, #0
49
	ldr r0, _0801FE7C
	movs r1, #0x29
	ldr r0, [r0]
	lsls r1, r1, #5
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r1, #1
	strb r1, [r0]
	ldr r7, [sp, #4]
	ldrb r0, [r7, #0xa]
	adds r0, #1
	strb r0, [r7, #0xa]
50
	ldr r2, _0801FE84
	ldrb r0, [r2]
	cmp r0, #0
	beq %59
	movs r0, #0x32
	strh r0, [r4, #0x16]
	movs r0, #0x33
	strh r0, [r4, #0x12]
	movs r0, #0x34
	strh r0, [r4, #0x14]
	strh r0, [r4, #0x10]
	b %60
51
	cmp r2, #0
	beq %52
	ldrb r1, [r1, #0xd]
	cmp r1, #1
	blo %57
52
	bl sub_80050FA
	bl GetEWRAMStart
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0x48
	bl sub_803DA80
	adds r5, r0, #0
	beq %53
	adds r0, r5, #0
	bl sub_802C884
53
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r5, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	movs r5, #0
	b %49
54
	cmp r2, #0
	beq %55
	ldrb r1, [r1, #0xd]
	cmp r1, #2
	blo %57
55
	bl sub_80050FA
	bl GetEWRAMStart
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0x4c
	bl sub_803DA80
	adds r5, r0, #0
	beq %56
	adds r0, r5, #0
	bl sub_802BFBC
56
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	b %58
57
	b %63
58
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r5, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	movs r5, #1
	b %49
59
	movs r0, #0x48
	strh r0, [r4, #0x16]
	movs r0, #0x49
	strh r0, [r4, #0x12]
	movs r0, #0x4a
	strh r0, [r4, #0x14]
	strh r0, [r4, #0x10]
60
	ldr r0, [r4, #0x7c]
	movs r3, #0
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	mvns r3, r3
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r6, r2, r1
	adds r2, r5, #0
	adds r1, r4, #0
	bl __call_via_r6
	ldr r0, _0801FE88
	ldr r0, [r0]
	ldr r0, [r0, #8]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	cmp r0, #2
	bhs %61
	ldr r1, _0801FE8C
	adds r0, #0x4b
	lsls r0, r0, #0x18
	ldr r1, [r1]
	lsrs r0, r0, #0x13
	adds r0, r0, r1
	bl sub_8028C2E
61
	ldr r0, [sp, #8]
	movs r3, #0
	strh r3, [r0, #4]
	ldr r0, [r4, #0x7c]
	movs r3, #1
	movs r1, #7
	adds r2, r0, #0
	lsls r1, r1, #0x1c
	lsls r3, r3, #0x1c
	adds r0, r0, r3
	ands r0, r1
	bics r2, r1
	orrs r0, r2
	lsls r2, r0, #1
	lsrs r2, r2, #0x1d
	cmp r2, #5
	str r0, [r4, #0x7c]
	bne %62
	bics r0, r1
	str r0, [r4, #0x7c]
62
	adds r4, #0x80
	ldr r0, [r4, #0x1c]
	cmp r0, #1
	beq %63
	movs r0, #9
	str r0, [r4, #0x1c]
63
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	thumb_func_end sub_801F906
