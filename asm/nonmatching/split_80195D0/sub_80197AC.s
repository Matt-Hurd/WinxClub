	thumb_func_start sub_80197AC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	adds r4, r0, #0
	add r0, sp, #0x2c
	bl sub_80046F8
	ldr r0, _080199C4
	ldr r0, [r0]
	bl sub_80050FA
	mov r0, sp
	bl sub_8001A60
	ldr r0, _080199C8
	add r1, pc, #0x200
	ldr r0, [r0]
	bl sub_8004FFC
	movs r6, #0
	adds r3, r6, #0
	movs r2, #0
	movs r1, #7
	bl sub_802EF0A
	ldr r5, _080199DC
	str r0, [sp]
	ldr r0, [r5]
	mov r1, sp
	bl sub_800D9E0
	ldr r0, _080199E0
	ldr r0, [r0]
	bl sub_800B08E
	movs r1, #0
	ldr r0, [r5]
	bl sub_800D912
	movs r0, #0
	bl sub_80050FA
	ldr r0, _080199E4
	adds r5, r4, #0
	adds r5, #0xff
	strb r6, [r0]
	movs r0, #0xff
	adds r5, #0xd1
	adds r0, #0x81
	strb r6, [r0, r4]
	strb r6, [r5, #2]
	adds r1, r5, #0
	subs r1, #0xd0
	strb r6, [r5, #3]
	str r6, [r4]
	str r6, [r4, #4]
	adds r0, r1, #0
	adds r0, #0x7e
	movs r2, #0
	str r2, [sp, #8]
	str r1, [sp, #4]
	subs r1, r0, #4
	subs r2, r0, #6
	str r0, [sp]
	subs r3, r0, #2
	subs r0, #0x86
	bl sub_80189BC
	adds r1, r4, #0
	adds r1, #8
	adds r3, r6, #0
	movs r2, #6
	adds r0, r4, #0
	bl sub_8018C48
	movs r2, #0
	ldr r1, _080199E8
	movs r0, #1
26
	adds r3, r2, #0
	adds r3, #0xc6
	lsls r7, r3, #0x1b
	lsrs r7, r7, #0x1b
	adds r6, r0, #0
	lsls r6, r7
	cmp r3, #0
	beq %27
	lsrs r3, r3, #5
	lsls r3, r3, #2
	ldr r3, [r1, r3]
	ands r3, r6
	beq %28
27
	ldrb r3, [r5, #3]
	adds r6, r2, #0
	adds r6, #0xa0
	adds r7, r3, #1
	lsls r3, r3, #1
	adds r3, r3, r4
	adds r3, #0xff
	adds r3, #0x81
	strb r7, [r5, #3]
	strh r6, [r3, #2]
28
	adds r2, #1
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	cmp r2, #0x1e
	blo %26
	movs r2, #0
	mov ip, r2
	movs r3, #0
29
	ldr r6, _080199EC
	lsls r2, r3, #1
	ldrh r2, [r6, r2]
	mov r0, ip
	lsls r0, r0, #0x18
	add r2, ip
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	movs r1, #0
	lsrs r0, r0, #0x18
	mov ip, r2
	b %43
30
	lsls r2, r0, #2
	adds r1, r2, #0
	adds r1, #0xff
	adds r1, #0x55
	lsls r7, r1, #0x1b
	lsrs r7, r7, #0x1b
	movs r6, #1
	lsls r6, r7
	cmp r1, #0
	beq %31
	lsrs r1, r1, #5
	ldr r7, _080199E8
	lsls r1, r1, #2
	ldr r1, [r7, r1]
	ands r1, r6
	beq %32
31
	movs r6, #1
	b %33
32
	movs r6, #0
33
	adds r1, r2, #0
	adds r1, #0xff
	adds r1, #0x56
	lsls r7, r1, #0x1b
	mov lr, r6
	movs r6, #1
	lsrs r7, r7, #0x1b
	lsls r6, r7
	cmp r1, #0
	beq %34
	lsrs r1, r1, #5
	ldr r7, _080199E8
	lsls r1, r1, #2
	ldr r1, [r7, r1]
	ands r1, r6
	beq %35
34
	movs r1, #1
	b %36
35
	movs r1, #0
36
	mov r6, lr
	orrs r6, r1
	adds r1, r2, #0
	adds r1, #0xff
	adds r1, #0x57
	lsls r7, r1, #0x1b
	mov lr, r6
	movs r6, #1
	lsrs r7, r7, #0x1b
	lsls r6, r7
	cmp r1, #0
	beq %37
	lsrs r1, r1, #5
	ldr r7, _080199E8
	lsls r1, r1, #2
	ldr r1, [r7, r1]
	ands r1, r6
	beq %38
37
	movs r1, #1
	b %39
38
	movs r1, #0
39
	adds r2, #0xff
	adds r2, #0x58
	mov r6, lr
	orrs r1, r6
	lsls r7, r2, #0x1b
	lsrs r7, r7, #0x1b
	movs r6, #1
	lsls r6, r7
	cmp r2, #0
	beq %40
	lsrs r2, r2, #5
	ldr r7, _080199E8
	lsls r2, r2, #2
	ldr r2, [r7, r2]
	ands r2, r6
	beq %41
40
	movs r2, #1
	b %42
41
	movs r2, #0
42
	adds r0, #1
	lsls r0, r0, #0x18
	orrs r1, r2
	lsrs r0, r0, #0x18
43
	cmp r0, ip
	bhs %44
	cmp r1, #0
	beq %30
	b %45
44
	cmp r1, #0
	beq %46
45
	ldrb r0, [r5, #3]
	adds r1, r3, #0
	adds r1, #0xff
	adds r2, r0, #1
	lsls r0, r0, #1
	adds r0, r0, r4
	adds r0, #0xff
	adds r1, #0x86
	adds r0, #0x81
	strb r2, [r5, #3]
	strh r1, [r0, #2]
46
	adds r3, #1
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	cmp r3, #0xa
	blo %29
	ldrb r0, [r5, #3]
	cmp r0, #0
	beq %53
	ldr r0, _080199B8
	ldr r0, [r0]
	bl sub_800116A
	adds r5, r4, #0
	adds r5, #0xff
	adds r5, #0xc1
	str r0, [r5, #0x14]
	ldr r1, _080199F0
	bl sub_800065C
	movs r0, #0xd6
	add r3, sp, #0
	strh r0, [r3, #0x28]
	movs r0, #0x30
	strh r0, [r3, #0x2a]
	ldr r0, [r5, #0x14]
	add r1, sp, #0x28
	bl sub_8040034
	ldr r0, [r5, #0x14]
	movs r7, #3
	ldrh r1, [r0, #0x2a]
	lsls r7, r7, #0xa
	movs r2, #0
	bics r1, r7
	orrs r1, r2
	strh r1, [r0, #0x2a]
	movs r6, #4
	strb r6, [r0, #5]
	ldr r1, [r0]
	lsls r2, r1, #0x16
	bmi %50
	b %49
	ALIGN
_080199B8 DCDU gUnknown_03003448
47
	DCB 0x20, 0x00, 0x00, 0x00
_080199C0 DCDU gUnknown_0300345C
_080199C4 DCDU gUnknown_03003468
_080199C8 DCDU gUnknown_03003EA8
48
	DCB 0x42, 0x67, 0x4D, 0x65
	DCB 0x6E, 0x75, 0x49, 0x6E, 0x76, 0x65, 0x6E, 0x74, 0x00, 0x00, 0x00, 0x00
_080199DC DCDU gUnknown_03003450
_080199E0 DCDU gUnknown_03003E98
_080199E4 DCDU gUnknown_03003D35
_080199E8 DCDU gUnknown_03003478
_080199EC DCDU gUnknown_08051438
_080199F0 DCDU 0x00000C87
49
	movs r2, #0x80
	orrs r1, r2
	str r1, [r0]
50
	movs r1, #1
	ldr r0, [r5, #0x14]
	bl sub_80401E4
	ldr r0, _08019DE4
	ldr r0, [r0]
	bl sub_800116A
	ldr r1, _08019DE8
	str r0, [r5, #0x18]
	bl sub_800065C
	movs r0, #0xd6
	add r3, sp, #0
	strh r0, [r3, #0x28]
	movs r0, #0x86
	strh r0, [r3, #0x2a]
	ldr r0, [r5, #0x18]
	add r1, sp, #0x28
	bl sub_8040034
	ldr r0, [r5, #0x18]
	movs r2, #3
	ldrh r1, [r0, #0x2a]
	lsls r2, r2, #0xa
	movs r7, #0
	bics r1, r2
	movs r2, #0
	orrs r1, r2
	strh r1, [r0, #0x2a]
	strb r6, [r0, #5]
	ldr r1, [r0]
	lsls r2, r1, #0x16
	bmi %51
	movs r2, #0x80
	orrs r1, r2
	str r1, [r0]
51
	movs r1, #1
	ldr r0, [r5, #0x18]
	bl sub_80401E4
	movs r5, #0
52
	movs r2, #0xff
	movs r1, #0x10
	movs r0, #0x50
	str r0, [sp, #4]
	b %54
53
	b %58
54
	str r2, [sp, #0xc]
	lsls r2, r5, #1
	lsls r0, r5, #4
	subs r0, r0, r5
	adds r2, r2, r5
	lsls r2, r2, #2
	lsls r0, r0, #3
	adds r6, r0, r4
	adds r2, #0x2e
	str r2, [sp]
	adds r6, #0xff
	str r1, [sp, #8]
	movs r1, #0
	adds r6, #0xe9
	movs r2, #0
	movs r3, #0x82
	adds r0, r6, #0
	bl sub_803F9C4
	movs r1, #4
	adds r0, r6, #0
	bl sub_80147FA
	movs r1, #1
	adds r0, r6, #0
	bl sub_8014B02
	add r1, pc, #0x0
	subs r1, #0xd8
	movs r2, #0
	adds r0, r6, #0
	bl sub_80137F8
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #8
	blo %52
	movs r5, #0
55
	ldr r0, _08019DE4
	ldr r0, [r0]
	bl sub_800116A
	lsls r1, r5, #2
	adds r6, r1, r4
	adds r6, #0xff
	adds r6, #0xc1
	str r0, [r6, #0x1c]
	ldr r1, _08019DEC
	bl sub_800065C
	lsls r1, r5, #5
	adds r1, #0x82
	movs r0, #0xd
	cmp r5, #2
	beq %56
	movs r0, #1
56
	subs r0, r1, r0
	add r3, sp, #0
	strh r0, [r3, #0x28]
	movs r0, #0x30
	strh r0, [r3, #0x2a]
	ldr r0, [r6, #0x1c]
	add r1, sp, #0x28
	bl sub_8040034
	ldr r0, [r6, #0x1c]
	movs r2, #3
	ldrh r1, [r0, #0x26]
	lsls r2, r2, #0xa
	movs r3, #1
	lsls r3, r3, #0xa
	bics r1, r2
	orrs r1, r3
	strh r1, [r0, #0x26]
	ldr r1, [r0]
	movs r3, #0x80
	orrs r1, r3
	str r1, [r0]
	ldr r0, [r6, #0x1c]
	ldrh r1, [r0, #0x2a]
	bics r1, r2
	orrs r1, r7
	strh r1, [r0, #0x2a]
	movs r2, #5
	strb r2, [r0, #5]
	ldr r1, [r0]
	lsls r2, r1, #0x16
	bmi %57
	orrs r1, r3
	str r1, [r0]
57
	movs r1, #1
	ldr r0, [r6, #0x1c]
	bl sub_80401E4
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #3
	blo %55
	b %61
58
	movs r0, #0
	movs r1, #0
59
	lsls r2, r0, #2
	adds r2, r2, r4
	adds r2, #0xff
	adds r0, #1
	lsls r0, r0, #0x18
	adds r2, #0xc1
	lsrs r0, r0, #0x18
	cmp r0, #2
	str r1, [r2, #0x14]
	blo %59
	movs r0, #0
60
	lsls r2, r0, #2
	adds r2, r2, r4
	adds r2, #0xff
	adds r0, #1
	lsls r0, r0, #0x18
	adds r2, #0xc1
	lsrs r0, r0, #0x18
	cmp r0, #3
	str r1, [r2, #0x1c]
	blo %60
61
	movs r2, #4
	movs r0, #0x68
	str r0, [sp, #4]
	str r2, [sp, #0xc]
	movs r2, #0x88
	movs r0, #0xb5
	movs r1, #0xc
	str r1, [sp, #8]
	lsls r0, r0, #3
	str r2, [sp]
	movs r2, #0
	adds r0, r4, r0
	movs r1, #0
	movs r3, #0x10
	adds r5, r0, #0
	bl sub_803F9C4
	movs r1, #4
	adds r0, r5, #0
	bl sub_80147FA
	ldr r0, _08019DF0
	movs r3, #0xff
	ldr r0, [r0]
	movs r2, #0
	adds r0, #0xb0
	ldrb r1, [r0, #9]
	adds r1, #0x95
	adds r0, r5, #0
	bl sub_80138E2
	movs r1, #0
	adds r0, r4, #0
	bl sub_801966A
	ldr r0, _08019DF4
	movs r1, #0x13
	ldr r0, [r0]
	lsls r1, r1, #8
	adds r1, r0, r1
	ldrb r2, [r1, #4]
	cmp r2, #0
	bne %62
	ldrb r1, [r1, #5]
	cmp r1, #2
	beq %62
	cmp r1, #4
	bne %63
62
	movs r2, #0
	movs r1, #3
	bl sub_8028A7C
63
	bl FadeToImage
	movs r2, #0x3f
	movs r1, #8
	add r4, sp, #0x2c
	adds r0, r4, #0
	bl sub_8004784
	movs r2, #8
	movs r1, #8
	adds r0, r4, #0
	bl sub_80047BE
	adds r0, r4, #0
	bl sub_803D66C
	add sp, #0x34
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	thumb_func_end sub_80197AC

