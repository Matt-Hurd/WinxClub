	non_word_aligned_thumb_func_start sub_8033EBA
sub_8033EBA
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, [r0, #0x3c]
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	beq %11
	movs r1, #0
	bl sub_80401E4
	b %12
11
	movs r1, #1
	bl sub_80401E4
12
	ldr r0, [r4, #0x40]
	movs r1, #0x9c
	ldr r1, [r1, r0]
	movs r7, #0
	cmp r1, #0xf
	beq %13
	cmp r1, #0x10
	bne %17
13
	ldr r1, [r4, #0x34]
	lsls r2, r1, #0x15
	lsrs r2, r2, #0x1d
	cmp r2, #1
	bne %15
	lsls r1, r1, #6
	lsrs r1, r1, #0x1c
	cmp r1, #1
	bne %14
	ldr r0, [r4, #0x44]
	ldr r1, [r0, #0x74]
	str r1, [r0, #0x70]
	b %15
14
	cmp r1, #2
	bne %15
	ldr r0, [r0, #0x7c]
	ldr r1, _08034064
	lsls r0, r0, #8
	lsrs r0, r0, #0x18
	ldr r1, [r1]
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r1, #0xb
	lsls r1, r1, #7
	adds r0, r0, r1
	ldrh r1, [r0, #0x18]
	movs r2, #2
	bics r1, r2
	strh r1, [r0, #0x18]
	ldr r0, [r4, #0x40]
	movs r1, #0
	bl sub_803F654
15
	ldr r0, _0803405C
	movs r1, #0x29
	ldr r0, [r0]
	lsls r1, r1, #5
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r1, #1
	strb r1, [r0]
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x10]
	adds r1, r2, r1
	bl __call_via_r1
	ldr r0, [r4, #0x48]
	bl sub_803357C
16
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
17
	ldr r2, [r4, #0x34]
	movs r6, #7
	adds r5, r4, #0
	lsls r1, r2, #0x15
	lsrs r1, r1, #0x1d
	adds r5, #0x40
	lsls r6, r6, #8
	cmp r1, #0
	beq %21
	cmp r1, #1
	beq %22
	cmp r1, #2
	bne %20
	ldr r0, [r4, #4]
	bl sub_803F6B4
	ldrh r1, [r5, #0xc]
	movs r3, #0x16
	ldr r6, _08034060
	lsls r2, r1, #0x16
	lsrs r2, r2, #0x1e
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1c
	muls r2, r3
	adds r2, r2, r6
	lsls r1, r1, #1
	ldrh r1, [r2, r1]
	adds r1, #2
	cmp r0, r1
	ldr r0, [r4, #4]
	beq %24
	movs r2, #0
	bl sub_80007A0
	ldr r0, [r4, #4]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne %18
	bl sub_8000914
18
	ldr r0, [r4, #0x3c]
	bl sub_803F6B4
	movs r1, #0x13
	lsls r1, r1, #5
	cmp r0, r1
	beq %19
	ldrh r0, [r5, #0xc]
	movs r3, #0x16
	lsls r1, r0, #0x16
	lsrs r1, r1, #0x1e
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1c
	muls r1, r3
	adds r1, r1, r6
	lsls r0, r0, #1
	ldrh r1, [r1, r0]
	ldr r0, [r4, #0x3c]
	adds r1, #5
	movs r2, #0
	bl sub_80007A0
	ldr r0, [r4, #0x3c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne %19
	bl sub_8000914
19
	ldr r7, _08034058
	ldr r0, [r7]
	ldr r1, [r4, #0x34]
	lsls r1, r1, #6
	lsrs r1, r1, #0x1c
	adds r1, #0x46
	lsls r1, r1, #5
	adds r0, r1, r0
	bl sub_80268AC
20
	b %29
21
	ldrh r1, [r5, #0xc]
	lsls r0, r1, #0x16
	lsrs r2, r0, #0x1e
	cmp r2, #2
	bne %25
	ldrh r0, [r5, #0x12]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	strh r0, [r5, #0x12]
	cmp r0, #0x78
	bls %25
	lsls r0, r1, #0x1a
	lsrs r0, r0, #0x1c
	ldr r6, _08034060
	lsls r0, r0, #1
	adds r0, r0, r6
	ldrh r1, [r0, #0x2c]
	ldr r0, [r4, #4]
	movs r2, #0
	bl sub_80007A0
	ldr r0, [r4, #4]
	bl sub_803FC14
	ldr r0, [r4, #0x3c]
	bl sub_803F6B4
	ldrh r1, [r5, #0xc]
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1c
	lsls r1, r1, #1
	adds r1, r1, r6
	ldrh r1, [r1, #0x2e]
	cmp r0, r1
	beq %23
	movs r2, #0
	ldr r0, [r4, #0x3c]
	bl sub_80007A0
	ldr r0, [r4, #0x3c]
	bl sub_803FC14
	b %23
22
	b %32
23
	strh r7, [r5, #0x12]
	b %29
24
	b %41
	ALIGN
_08034050 DCDU __VTABLE__334dword_803EA68
_08034054 DCDU gUnknown_03003EB8
_08034058 DCDU gUnknown_0300345C
_0803405C DCDU gUnknown_03003458
_08034060 DCDU gUnknown_0300334A
_08034064 DCDU gUnknown_03003454
25
	ldr r0, [r4, #4]
	ldr r3, [r0]
	lsls r3, r3, #0x15
	lsrs r3, r3, #0x1f
	bne %29
	movs r3, #0x16
	ldr r7, _08034338
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1c
	muls r2, r3
	adds r2, r2, r7
	lsls r1, r1, #1
	ldrh r1, [r2, r1]
	adds r1, #1
	movs r2, #0
	bl sub_80007A0
	ldr r0, [r4, #4]
	bl sub_8000914
	ldr r0, [r4, #0x3c]
	bl sub_803F6B4
	movs r1, #0x13
	lsls r1, r1, #5
	cmp r0, r1
	beq %27
	ldrh r0, [r5, #0xc]
	movs r3, #0x16
	lsls r1, r0, #0x16
	lsrs r1, r1, #0x1e
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1c
	muls r1, r3
	adds r1, r1, r7
	lsls r0, r0, #1
	ldrh r1, [r1, r0]
	ldr r0, [r4, #0x3c]
	adds r1, #4
	movs r2, #0
	bl sub_80007A0
	ldr r0, [r4, #0x3c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne %26
	bl sub_8000914
26
	ldr r0, [r4, #0x3c]
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	bne %27
	movs r1, #1
	bl sub_80401E4
27
	ldrh r0, [r5, #0xc]
	lsls r1, r0, #0x16
	lsrs r1, r1, #0x1e
	lsls r7, r1, #3
	ldr r1, _0803433C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x1e
	lsls r2, r0, #1
	adds r1, r7, r1
	ldrh r1, [r1, r2]
	strh r1, [r5, #0x14]
	ldr r2, [r4, #0x34]
	lsls r2, r2, #6
	lsrs r2, r2, #0x1c
	beq %30
	cmp r2, #1
	beq %31
	cmp r2, #2
	bne %28
	ldr r1, _08034340
	ldr r0, [r1]
	ldr r1, [r4, #0x40]
	ldr r1, [r1, #0x7c]
	lsls r1, r1, #8
	lsrs r1, r1, #0x18
	lsls r1, r1, #1
	adds r0, r1, r0
	movs r1, #0xb
	lsls r1, r1, #7
	adds r0, r0, r1
	ldrh r1, [r0, #0x18]
	orrs r1, r2
	strh r1, [r0, #0x18]
	ldr r0, [r4, #0x40]
	movs r1, #1
	bl sub_803F654
28
	ldr r0, [r4, #0x34]
	bics r0, r6
	adds r0, #0xff
	adds r0, #1
	str r0, [r4, #0x34]
29
	b %37
30
	ldr r2, _08034344
	ldrb r0, [r2, r0]
	bl __16__rt_udiv
	ldr r2, _08034344
	strh r0, [r5, #0xe]
	ldrb r0, [r2]
	ldr r1, _0803433C
	strh r0, [r5, #0x10]
	ldrh r1, [r1, r7]
	bl __16__rt_udiv
	strh r0, [r5, #0x10]
	b %28
31
	ldr r0, [r4, #0x44]
	ldr r7, _08034348
	ldr r1, [r0, #0x70]
	asrs r2, r1, #1
	str r1, [r0, #0x74]
	adds r1, r1, r2
	str r1, [r0, #0x70]
	movs r0, #0x45
	ldr r1, [r7]
	lsls r0, r0, #5
	adds r0, r0, r1
	bl sub_80268AC
	movs r0, #0x47
	ldr r1, [r7]
	lsls r0, r0, #5
	adds r0, r0, r1
	bl sub_8028C2E
	b %28
32
	ldrh r1, [r5, #0xc]
	lsls r1, r1, #0x15
	bmi %37
	ldrh r1, [r5, #0x12]
	adds r1, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	strh r1, [r5, #0x12]
	ldrh r3, [r5, #0x14]
	cmp r1, r3
	bhi %37
	lsls r2, r2, #6
	lsrs r2, r2, #0x1c
	beq %34
	cmp r2, #1
	beq %38
	cmp r2, #2
	bne %37
	cmp r1, r3
	beq %33
	movs r1, #0xb6
	ldrsb r1, [r1, r0]
	cmp r1, #0
	bgt %37
33
	ldr r0, [r0, #0x7c]
	ldr r1, _08034340
	lsls r0, r0, #8
	lsrs r0, r0, #0x18
	ldr r1, [r1]
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r1, #0xb
	lsls r1, r1, #7
	adds r0, r0, r1
	ldrh r1, [r0, #0x18]
	movs r2, #2
	bics r1, r2
	strh r1, [r0, #0x18]
	ldr r0, [r4, #0x40]
	movs r1, #0
	bl sub_803F654
	ldr r0, [r4, #0x40]
	movs r3, #0x14
	ldr r1, [r0]
	ldr r2, [r1, #0x34]
	adds r7, r2, r1
	movs r2, #1
	ldr r1, [r4, #0x48]
	bl __call_via_r7
	ldr r0, [r4, #0x34]
	movs r1, #1
	lsls r1, r1, #9
	bics r0, r6
	adds r0, r0, r1
	str r0, [r4, #0x34]
	ldrh r0, [r5, #0xc]
	lsls r1, r1, #1
	orrs r0, r1
	strh r0, [r5, #0xc]
	b %37
34
	ldr r0, _0803434C
	ldr r2, _08034344
	ldr r7, [r0]
	movs r0, #0xac
	ldrb r0, [r0, r7]
	ldrb r2, [r2]
	cmp r0, r2
	bhs %35
	ldrh r0, [r5, #0x10]
	cmp r0, #0
	beq %36
	bl __16__rt_udiv
	cmp r1, #0
	bne %36
	movs r1, #1
	adds r0, r7, #0
	adds r0, #0xac
	bl ModifyPlayerHealth
	b %36
35
	ldrh r0, [r5, #0xe]
	cmp r0, #0
	beq %36
	bl __16__rt_udiv
	cmp r1, #0
	bne %36
	movs r1, #1
	adds r0, r7, #0
	adds r0, #0xac
	bl ModifyPlayerHealth
36
	ldrh r0, [r5, #0x12]
	ldrh r1, [r5, #0x14]
	cmp r0, r1
	beq %39
	ldr r0, _0803434C
	ldr r1, [r0]
	adds r1, #0xa0
	ldrb r0, [r1, #0xc]
	ldrb r1, [r1, #0xf]
	cmp r0, r1
	beq %39
	ldrh r1, [r5, #0xc]
	ldr r2, _08034344
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x1e
	ldrb r1, [r2, r1]
	lsls r3, r1, #1
	adds r1, r3, r1
	lsls r1, r1, #1
	cmp r0, r1
	bne %37
	b %39
37
	b %44
38
	b %40
39
	ldr r0, [r4, #0x34]
	movs r1, #1
	lsls r1, r1, #9
	bics r0, r6
	adds r0, r0, r1
	str r0, [r4, #0x34]
	ldrh r0, [r5, #0xc]
	lsls r1, r1, #1
	orrs r0, r1
	strh r0, [r5, #0xc]
	b %44
40
	cmp r1, r3
	bne %44
	ldr r0, [r4, #0x44]
	ldr r1, [r0, #0x74]
	str r1, [r0, #0x70]
	ldr r0, [r4, #0x34]
	movs r1, #1
	lsls r1, r1, #9
	bics r0, r6
	adds r0, r0, r1
	str r0, [r4, #0x34]
	ldrh r0, [r5, #0xc]
	lsls r1, r1, #1
	orrs r0, r1
	strh r0, [r5, #0xc]
	b %44
41
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne %44
	ldr r6, _08034350
	cmp r0, #0
	beq %42
	adds r1, r4, #4
	ldr r0, [r6]
	bl sub_8000DE6
	str r7, [r4, #4]
42
	ldr r0, [r4, #0x3c]
	cmp r0, #0
	beq %43
	adds r1, r4, #0
	adds r1, #0x3c
	ldr r0, [r6]
	bl sub_8000DE6
	str r7, [r4, #0x3c]
43
	ldr r0, _08034354
	movs r1, #0x29
	ldr r0, [r0]
	lsls r1, r1, #5
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r1, #1
	strb r1, [r0]
44
	ldr r0, [r4, #4]
	cmp r0, #0
	bne %46
45
	b %16
46
	ldrh r1, [r5, #0xc]
	lsls r1, r1, #0x16
	lsrs r1, r1, #0x1e
	cmp r1, #2
	bne %48
	bl sub_803F6B4
	cmp r0, #0x31
	bne %47
	ldr r0, [r4, #0x44]
	ldr r1, [r0, #0x2c]
	adds r5, r1, #0
	b %49
47
	ldr r0, [r4, #0x40]
	ldr r1, [r0, #0x30]
	ldr r5, [r0, #0x2c]
	b %49
48
	ldr r0, [r4, #0x44]
	ldr r1, [r0, #0x30]
	ldr r5, [r0, #0x2c]
49
	adds r1, #0x2c
	adds r6, r1, #0
	ldr r0, [r4, #4]
	bl sub_803FF24
	ldrb r2, [r5, #5]
	ldr r0, [r4, #4]
	ldrb r3, [r0, #5]
	subs r2, #2
	adds r1, r2, #0
	cmp r2, r3
	beq %50
	bl sub_80401C0
50
	adds r1, r6, #0
	ldr r0, [r4, #0x3c]
	bl sub_803FF24
	ldrb r2, [r5, #5]
	ldr r0, [r4, #0x3c]
	ldrb r3, [r0, #5]
	subs r2, #1
	adds r1, r2, #0
	cmp r2, r3
	beq %45
	bl sub_80401C0
	b %16
