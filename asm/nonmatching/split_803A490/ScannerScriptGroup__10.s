	thumb_func_start ScannerScriptGroup__10
ScannerScriptGroup__10
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r4, r0, #0
	adds r5, #0x80
	ldr r0, [r5, #0x2c]
	adds r6, r4, #0
	lsls r0, r0, #5
	lsrs r0, r0, #0x17
	adds r6, #0xc0
	cmp r0, #0x39
	bne %22
	movs r1, #0
	ldr r0, _0803A904
	ldr r2, [r5, #0x1c]
	mvns r1, r1
	cmp r2, #0
	ldr r0, [r0]
	bne %20
	ldr r7, [r4, #0x2c]
	ldr r2, [r7, #0x44]
	cmp r2, #0
	beq %12
	bl sub_8000D5A
	ldr r0, [r0, #0x24]
	ldr r1, [r7, #0x44]
	subs r0, r1, r0
	asrs r1, r0, #3
12
	lsls r0, r1, #0x10
	ldr r1, [r6, #0x30]
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x1d
	lsrs r1, r1, #0x1c
	adds r1, r1, r4
	ldrh r1, [r1, #8]
	cmp r0, r1
	beq %13
	movs r2, #0
	ldr r0, [r4, #0x2c]
	bl sub_80007A0
	ldr r0, [r4, #0x2c]
	bl sub_803FC14
	ldr r0, [r4, #0x2c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne %13
	bl sub_8000914
13
	ldr r0, [r4, #0x2c]
	ldrh r1, [r0, #0x28]
	lsls r1, r1, #0x13
	lsrs r2, r1, #0x1f
	ldr r1, [r6, #0x30]
	lsls r1, r1, #0x1d
	lsrs r1, r1, #0x1d
	cmp r1, #2
	bne %14
	ldr r3, [r5]
	lsls r3, r3, #0x1d
	bpl %14
	movs r3, #1
	b %15
14
	movs r3, #0
15
	cmp r2, r3
	beq %18
	cmp r1, #2
	bne %16
	ldr r1, [r5]
	lsls r1, r1, #0x1d
	bpl %16
	movs r1, #1
	b %17
16
	movs r1, #0
17
	bl sub_803F2CC
18
	ldr r0, [r4, #0x78]
	cmp r0, #0
	beq %19
	ldr r0, [r4, #0x2c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne %30
	bl sub_803FC14
	ldr r0, [r4, #0x2c]
	bl sub_8000914
	b %30
19
	movs r0, #4
	str r0, [r5, #0x1c]
	b %30
20
	cmp r2, #9
	bne %31
	ldr r7, [r4, #0x2c]
	ldr r2, [r7, #0x44]
	cmp r2, #0
	beq %21
	bl sub_8000D5A
	ldr r0, [r0, #0x24]
	ldr r1, [r7, #0x44]
	subs r0, r1, r0
	asrs r1, r0, #3
21
	lsls r0, r1, #0x10
	ldr r1, [r6, #0x30]
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x1d
	lsrs r1, r1, #0x1c
	adds r1, r1, r4
	ldrh r1, [r1, #0x10]
	cmp r0, r1
	beq %24
	movs r2, #0
	ldr r0, [r4, #0x2c]
	bl sub_80007A0
	ldr r0, [r4, #0x2c]
	bl sub_803FC14
	ldr r0, [r4, #0x2c]
	ldr r1, [r0]
	b %23
22
	b %43
23
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne %24
	bl sub_803FC14
	ldr r0, [r4, #0x2c]
	bl sub_8000914
24
	ldr r0, [r4, #0x2c]
	ldrh r1, [r0, #0x28]
	lsls r1, r1, #0x13
	lsrs r2, r1, #0x1f
	ldr r1, [r6, #0x30]
	lsls r1, r1, #0x1d
	lsrs r1, r1, #0x1d
	cmp r1, #2
	bne %25
	ldr r3, [r5]
	lsls r3, r3, #0x1d
	bpl %25
	movs r3, #1
	b %26
25
	movs r3, #0
26
	cmp r2, r3
	beq %29
	cmp r1, #2
	bne %27
	ldr r1, [r5]
	lsls r1, r1, #0x1d
	bpl %27
	movs r1, #1
	b %28
27
	movs r1, #0
28
	bl sub_803F2CC
	ldr r0, [r4, #0x2c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne %29
	bl sub_803FC14
	ldr r0, [r4, #0x2c]
	bl sub_8000914
29
	ldr r0, [r4, #0x2c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne %30
	ldr r1, [r5, #0x14]
	lsls r1, r1, #0x11
	lsrs r1, r1, #0x1d
	beq %32
	bl sub_803FC14
	ldr r0, [r4, #0x2c]
	bl sub_8000914
	ldr r0, [r5, #0x14]
	movs r1, #7
	lsls r1, r1, #0xc
	movs r3, #1
	adds r2, r0, #0
	lsls r3, r3, #0xc
	subs r0, r0, r3
	ands r0, r1
	bics r2, r1
	orrs r0, r2
	str r0, [r5, #0x14]
30
	b %42
31
	b %33
32
	movs r0, #4
	str r0, [r5, #0x1c]
	b %42
33
	cmp r2, #4
	bne %42
	ldr r7, [r4, #0x2c]
	ldr r2, [r7, #0x44]
	cmp r2, #0
	beq %34
	bl sub_8000D5A
	ldr r0, [r0, #0x24]
	ldr r1, [r7, #0x44]
	subs r0, r1, r0
	asrs r1, r0, #3
34
	lsls r0, r1, #0x10
	ldr r1, [r6, #0x30]
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x1d
	lsrs r1, r1, #0x1c
	adds r1, r1, r4
	ldrh r1, [r1, #0x18]
	cmp r0, r1
	beq %36
	movs r2, #0
	ldr r0, [r4, #0x2c]
	bl sub_80007A0
	ldr r0, [r4, #0x2c]
	bl sub_803FC14
	ldr r1, [r4, #0x2c]
	ldr r0, [r1]
	lsls r2, r0, #0x15
	lsrs r2, r2, #0x1f
	beq %35
	movs r2, #1
	lsls r2, r2, #0xa
	bics r0, r2
	lsls r2, r2, #1
	bics r0, r2
	str r0, [r1]
	ldr r0, _0803A908
	ldr r0, [r0]
	bl sub_8001432
35
	movs r0, #0
	str r0, [r4, #0x78]
36
	ldr r0, [r4, #0x2c]
	ldrh r1, [r0, #0x28]
	lsls r1, r1, #0x13
	lsrs r2, r1, #0x1f
	ldr r1, [r6, #0x30]
	lsls r1, r1, #0x1d
	lsrs r1, r1, #0x1d
	cmp r1, #2
	bne %37
	ldr r3, [r5]
	lsls r3, r3, #0x1d
	bpl %37
	movs r3, #1
	b %38
37
	movs r3, #0
38
	cmp r2, r3
	beq %41
	cmp r1, #2
	bne %39
	ldr r1, [r5]
	lsls r1, r1, #0x1d
	bpl %39
	movs r1, #1
	b %40
39
	movs r1, #0
40
	bl sub_803F2CC
41
	ldr r0, [r5]
	lsls r0, r0, #0x1e
	bpl %42
	ldr r0, [r4, #0x2c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne %42
	bl sub_803FC14
42
	b %44
43
	adds r0, r4, #0
	bl m10__7DefaultFv
44
	ldr r1, _0803A90C
	movs r0, #4
	ldr r1, [r1]
	ands r1, r0
	bne %45
	ldr r0, [r5, #0x34]
	lsls r0, r0, #0x11
	bpl %45
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x60]
	adds r1, r2, r1
	bl __call_via_r1
45
	ldr r0, [r5, #0x1c]
	cmp r0, #9
	bne %50
	ldr r0, [r5, #0x2c]
	lsls r1, r0, #0xf
	bpl %50
	ldr r1, [r4, #0x7c]
	lsls r1, r1, #1
	lsrs r1, r1, #0x1d
	lsls r1, r1, #2
	adds r1, r1, r4
	ldr r1, [r1, #0x38]
	cmp r1, #0
	bne %51
	lsls r0, r0, #5
	adds r7, r4, #0
	adds r7, #0x90
	lsrs r0, r0, #0x17
	cmp r0, #0x37
	ldr r1, _0803A910
	beq %48
	cmp r0, #0x38
	beq %54
	cmp r0, #0x39
	bne %51
	ldr r0, [r6, #0x30]
	lsls r2, r0, #0x1c
	bpl %46
	lsls r2, r0, #0x10
	asrs r2, r2, #0x1f
	movs r3, #1
	lsls r3, r3, #0xf
	adds r2, #1
	lsls r2, r2, #0x1f
	lsrs r2, r2, #0x10
	bics r0, r3
	orrs r0, r2
	str r0, [r6, #0x30]
46
	ldr r0, [r1]
	bl sub_80050FA
	bl GetEWRAMStart
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0x48
	bl sub_803DA80
	str r0, [sp]
	cmp r0, #0
	beq %47
	ldr r0, [sp]
	bl sub_8037E48
47
	ldr r0, [sp]
	ldr r1, [r4, #0x7c]
	lsls r1, r1, #1
	lsrs r1, r1, #0x1d
	lsls r1, r1, #2
	adds r1, r1, r4
	str r0, [r1, #0x38]
	movs r0, #0
	bl sub_80050FA
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	ldr r1, [r6, #0x30]
	lsls r2, r1, #0x1d
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x1f
	lsls r1, r1, #1
	lsrs r2, r2, #0x1d
	adds r3, r2, r1
	bpl %58
	adds r3, #4
	b %61
	ALIGN
_0803A8FC DCDU gUnknown_03003454
_0803A900 DCDU 0xFFFF803F
_0803A904 DCDU gUnknown_03003EA0
_0803A908 DCDU gUnknown_03003EB8
_0803A90C DCDU gUnknown_03003478
_0803A910 DCDU gUnknown_0300346C
48
	ldr r0, [r6, #0x30]
	lsls r2, r0, #0x1c
	bpl %49
	lsls r2, r0, #0x10
	asrs r2, r2, #0x1f
	movs r3, #1
	lsls r3, r3, #0xf
	adds r2, #1
	lsls r2, r2, #0x1f
	lsrs r2, r2, #0x10
	bics r0, r3
	orrs r0, r2
	str r0, [r6, #0x30]
49
	ldr r0, [r1]
	bl sub_80050FA
	bl GetEWRAMStart
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0x48
	b %52
50
	b %65
51
	b %64
52
	bl sub_803DA80
	str r0, [sp]
	cmp r0, #0
	beq %53
	ldr r0, [sp]
	bl sub_8037E48
53
	ldr r0, [sp]
	ldr r1, [r4, #0x7c]
	lsls r1, r1, #1
	lsrs r1, r1, #0x1d
	lsls r1, r1, #2
	adds r1, r1, r4
	str r0, [r1, #0x38]
	movs r0, #0
	bl sub_80050FA
	b %55
54
	b %62
55
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	ldr r1, [r6, #0x30]
	lsls r2, r1, #0x1d
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x1f
	lsls r1, r1, #1
	lsrs r2, r2, #0x1d
	adds r3, r2, r1
	bpl %56
	adds r3, #4
	b %57
56
	cmp r3, #4
	blt %57
	subs r3, #4
57
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r6, r2, r1
	movs r2, #0
	adds r1, r4, #0
	bl __call_via_r6
	ldr r0, _0803AB78
	movs r1, #0x29
	ldr r0, [r0]
	lsls r1, r1, #5
	adds r0, r0, r1
	ldrb r1, [r0, #1]
	movs r3, #1
	lsls r3, r3, #0x1c
	adds r1, #1
	strb r1, [r0, #1]
	ldrb r0, [r7, #0xa]
	movs r1, #7
	lsls r1, r1, #0x1c
	adds r0, #1
	strb r0, [r7, #0xa]
	ldr r0, [r4, #0x7c]
	adds r2, r0, #0
	adds r0, r0, r3
	ands r0, r1
	bics r2, r1
	orrs r0, r2
	lsls r2, r0, #1
	lsrs r2, r2, #0x1d
	cmp r2, #5
	str r0, [r4, #0x7c]
	bne %64
	bics r0, r1
	b %59
58
	b %60
59
	str r0, [r4, #0x7c]
	b %64
60
	cmp r3, #4
	blt %61
	subs r3, #4
61
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r6, r2, r1
	movs r2, #2
	adds r1, r4, #0
	bl __call_via_r6
	ldr r0, _0803AB78
	movs r1, #0x29
	ldr r0, [r0]
	lsls r1, r1, #5
	adds r0, r0, r1
	ldrb r1, [r0, #1]
	movs r3, #1
	lsls r3, r3, #0x1c
	adds r1, #1
	strb r1, [r0, #1]
	ldrb r0, [r7, #0xa]
	movs r1, #7
	lsls r1, r1, #0x1c
	adds r0, #1
	strb r0, [r7, #0xa]
	ldr r0, [r4, #0x7c]
	adds r2, r0, #0
	adds r0, r0, r3
	ands r0, r1
	bics r2, r1
	orrs r0, r2
	lsls r2, r0, #1
	lsrs r2, r2, #0x1d
	cmp r2, #5
	str r0, [r4, #0x7c]
	bne %64
	bics r0, r1
	str r0, [r4, #0x7c]
	b %64
62
	ldr r0, [r1]
	bl sub_80050FA
	bl GetEWRAMStart
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0x48
	bl sub_803DA80
	adds r6, r0, #0
	beq %63
	adds r0, r6, #0
	bl sub_8037E48
63
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r6, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	ldr r1, [r4, #0x7c]
	lsls r0, r1, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	lsls r1, r1, #4
	ldr r2, [r0]
	ldr r3, [r2, #4]
	adds r6, r3, r2
	lsrs r3, r1, #0x1c
	movs r2, #1
	adds r1, r4, #0
	bl __call_via_r6
	ldr r0, _0803AB78
	movs r1, #0x29
	ldr r0, [r0]
	lsls r1, r1, #5
	adds r0, r0, r1
	ldrb r1, [r0, #1]
	movs r3, #1
	lsls r3, r3, #0x1c
	adds r1, #1
	strb r1, [r0, #1]
	ldrb r0, [r7, #0xa]
	movs r1, #7
	lsls r1, r1, #0x1c
	adds r0, #1
	strb r0, [r7, #0xa]
	ldr r0, [r4, #0x7c]
	adds r2, r0, #0
	adds r0, r0, r3
	ands r0, r1
	bics r2, r1
	orrs r0, r2
	lsls r2, r0, #1
	lsrs r2, r2, #0x1d
	cmp r2, #5
	str r0, [r4, #0x7c]
	bne %64
	bics r0, r1
	str r0, [r4, #0x7c]
64
	movs r1, #1
	ldr r0, [r5, #0x2c]
	lsls r1, r1, #0x10
	bics r0, r1
	str r0, [r5, #0x2c]
65
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

