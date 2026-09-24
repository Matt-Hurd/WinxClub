	thumb_func_start sub_802D920
	push {r4, r5, r6, lr}
	ldr r1, [r0]
	adds r4, r0, #0
	ldr r2, [r1, #0x18]
	sub sp, #8
	adds r1, r2, r1
	bl __call_via_r1
	ldr r0, [r4, #0x48]
	lsls r0, r0, #0x16
	bpl %40
	ldr r0, [r4, #0x44]
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	beq %39
	movs r1, #0
	bl sub_80401E4
	b %40
39
	movs r1, #1
	bl sub_80401E4
40
	ldr r1, [r4, #0x48]
	lsls r0, r1, #0x1f
	bmi %50
	movs r0, #0xff
	adds r2, r1, #0
	adds r0, #0xe1
	adds r1, #0x20
	ands r1, r0
	bics r2, r0
	orrs r1, r2
	lsls r2, r1, #0x17
	lsrs r2, r2, #0x1c
	movs r5, #0
	cmp r2, #8
	str r1, [r4, #0x48]
	bls %41
	bics r1, r0
	adds r0, r1, #0
	adds r0, #0x20
	adds r1, r0, #0
	movs r2, #0x1e
	adds r0, #2
	ands r0, r2
	bics r1, r2
	orrs r1, r0
	lsls r0, r1, #0x1b
	str r1, [r4, #0x48]
	lsls r1, r1, #0xd
	lsrs r1, r1, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, r1
	bhs %48
	ldr r1, [r4, #0x38]
	adds r1, r1, r0
	ldr r0, [r4, #4]
	bl sub_800065C
	ldr r0, [r4, #0x48]
	lsls r1, r0, #0x16
	bpl %41
	lsls r2, r0, #0xd
	ldr r1, [r4, #0x38]
	lsrs r2, r2, #0x1c
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1c
	adds r1, r1, r2
	adds r1, r1, r0
	ldr r0, [r4, #0x44]
	bl sub_800065C
41
	ldr r0, [r4, #4]
	cmp r0, #0
	beq %50
	ldr r0, [r4, #0x34]
	lsls r0, r0, #6
	lsrs r0, r0, #0x1c
	cmp r0, #5
	bhs %42
	add r3, pc, #0x8
	adds r3, r3, r0
	ldrh r3, [r3, r0]
	lsls r3, r3, #1
	add pc, r3
42
	b %53
43
	DCB 0x1B, 0x00
44
	DCB 0x1B, 0x00
45
	DCB 0x1B, 0x00
46
	DCB 0x95, 0x00
47
	DCB 0x05, 0x01
48
	ldr r6, _0802DAB8
	adds r1, r4, #4
	ldr r0, [r6]
	bl sub_8000DE6
	ldr r0, [r4, #0x48]
	lsls r0, r0, #0x16
	bpl %49
	adds r1, r4, #0
	adds r1, #0x44
	ldr r0, [r6]
	bl sub_8000DE6
49
	str r5, [r4, #4]
	ldr r0, [r4, #0x48]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #0x48]
50
	add sp, #8
	pop {r4, r5, r6}
	pop {r3}
	bx r3
loc_802da02
	ldr r0, [r4, #0x34]
	lsls r1, r0, #0x18
	lsrs r1, r1, #0x18
	beq %54
	cmp r1, #1
	beq %51
	cmp r1, #2
	beq %52
	cmp r1, #3
	bne %53
	movs r2, #0xff
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	lsls r2, r2, #0xb
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r3, r0, #2
	adds r0, r3, r0
	ldr r1, _0802DABC
	lsls r0, r0, #1
	adds r0, r0, r1
	ldr r1, [r4, #0x48]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1c
	ldrsb r0, [r0, r1]
	movs r1, #1
	lsls r0, r0, #0x10
	str r0, [r4, #0x40]
	lsls r1, r1, #0x10
	str r1, [r4, #0x3c]
	b %53
51
	movs r2, #0xff
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	lsls r2, r2, #0xb
	subs r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r3, r0, #2
	adds r0, r3, r0
	ldr r1, _0802DABC
	lsls r0, r0, #1
	adds r0, r0, r1
	ldr r1, [r4, #0x48]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1c
	ldrsb r0, [r0, r1]
	lsls r0, r0, #0x10
	str r0, [r4, #0x40]
	str r5, [r4, #0x3c]
	b %53
52
	movs r2, #0xff
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	lsls r2, r2, #0xb
	subs r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r3, r0, #2
	adds r0, r3, r0
	ldr r1, _0802DABC
	lsls r0, r0, #1
	adds r0, r0, r1
	ldr r1, [r4, #0x48]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1c
	ldrsb r0, [r0, r1]
	lsls r0, r0, #0x10
	str r0, [r4, #0x3c]
	movs r0, #5
	lsls r0, r0, #0x11
	str r0, [r4, #0x40]
53
	b %57
	ALIGN
_0802DAB4 DCDU gUnknown_03003304
_0802DAB8 DCDU gUnknown_03003EB8
_0802DABC DCDU gUnknown_030032C0
54
	movs r2, #0xff
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	lsls r2, r2, #0xb
	subs r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r3, r0, #2
	adds r0, r3, r0
	ldr r1, _0802DDCC
	lsls r0, r0, #1
	adds r0, r0, r1
	ldr r1, [r4, #0x48]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1c
	ldrsb r0, [r0, r1]
	lsls r0, r0, #0x10
	str r0, [r4, #0x3c]
	movs r0, #9
	lsls r0, r0, #0x10
	str r0, [r4, #0x40]
	b %57
loc_802daf6
	ldr r0, [r4, #0x34]
	lsls r1, r0, #0x18
	lsrs r1, r1, #0x18
	beq %58
	cmp r1, #1
	beq %55
	cmp r1, #2
	beq %56
	cmp r1, #3
	bne %57
	movs r2, #0xff
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	lsls r2, r2, #0xb
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r3, r0, #3
	ldr r1, _0802DDD0
	subs r0, r3, r0
	adds r0, r0, r1
	ldr r1, [r4, #0x48]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1c
	ldrsb r0, [r0, r1]
	lsls r0, r0, #0x10
	str r0, [r4, #0x40]
	str r5, [r4, #0x3c]
	b %57
55
	movs r2, #0xff
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	lsls r2, r2, #0xb
	subs r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r3, r0, #3
	ldr r1, _0802DDD0
	subs r0, r3, r0
	adds r0, r0, r1
	ldr r1, [r4, #0x48]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1c
	ldrsb r0, [r0, r1]
	movs r1, #1
	lsls r0, r0, #0x10
	str r0, [r4, #0x40]
	lsls r1, r1, #0x11
	str r1, [r4, #0x3c]
	b %57
56
	movs r2, #0xff
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	lsls r2, r2, #0xb
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r3, r0, #3
	ldr r1, _0802DDD0
	subs r0, r3, r0
	adds r0, r0, r1
	ldr r1, [r4, #0x48]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1c
	ldrsb r0, [r0, r1]
	lsls r0, r0, #0x10
	str r0, [r4, #0x3c]
	movs r0, #7
	lsls r0, r0, #0x10
	str r0, [r4, #0x40]
57
	b %61
58
	movs r2, #0xff
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	lsls r2, r2, #0xb
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r3, r0, #3
	ldr r1, _0802DDD0
	subs r0, r3, r0
	adds r0, r0, r1
	ldr r1, [r4, #0x48]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1c
	ldrsb r0, [r0, r1]
	lsls r0, r0, #0x10
	str r0, [r4, #0x3c]
	movs r0, #5
	lsls r0, r0, #0x10
	str r0, [r4, #0x40]
	b %61
loc_802dbd6
	ldr r0, [r4, #0x34]
	lsls r1, r0, #0x18
	lsrs r1, r1, #0x18
	beq %62
	cmp r1, #1
	beq %59
	cmp r1, #2
	beq %60
	cmp r1, #3
	bne %61
	movs r2, #0xff
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	lsls r2, r2, #0xb
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r3, r0, #3
	ldr r1, _0802DDD4
	adds r0, r3, r0
	adds r0, r0, r1
	ldr r1, [r4, #0x48]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1c
	ldrsb r0, [r0, r1]
	lsls r0, r0, #0x10
	str r0, [r4, #0x40]
	str r5, [r4, #0x3c]
	b %61
59
	movs r2, #0xff
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	lsls r2, r2, #0xb
	subs r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r3, r0, #3
	ldr r1, _0802DDD4
	adds r0, r3, r0
	adds r0, r0, r1
	ldr r1, [r4, #0x48]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1c
	ldrsb r0, [r0, r1]
	movs r1, #1
	lsls r0, r0, #0x10
	str r0, [r4, #0x40]
	lsls r1, r1, #0x10
	str r1, [r4, #0x3c]
	b %61
60
	movs r2, #0xff
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	lsls r2, r2, #0xb
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r3, r0, #3
	ldr r1, _0802DDD4
	adds r0, r3, r0
	adds r0, r0, r1
	ldr r1, [r4, #0x48]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1c
	ldrsb r0, [r0, r1]
	lsls r0, r0, #0x10
	str r0, [r4, #0x3c]
	movs r0, #5
	lsls r0, r0, #0x10
	str r0, [r4, #0x40]
61
	b %63
62
	movs r2, #0xff
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	lsls r2, r2, #0xb
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r3, r0, #3
	ldr r1, _0802DDD4
	adds r0, r3, r0
	adds r0, r0, r1
	ldr r1, [r4, #0x48]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1c
	ldrsb r0, [r0, r1]
	lsls r0, r0, #0x10
	str r0, [r4, #0x3c]
	movs r0, #5
	lsls r0, r0, #0x10
	str r0, [r4, #0x40]
63
	ldr r1, [r4, #0x14]
	adds r1, #0x2c
	ldr r2, [r1]
	ldr r1, [r1, #4]
	str r1, [r4, #0x20]
	str r2, [r4, #0x1c]
	ldr r1, [r4, #0x3c]
	adds r0, r2, r1
	ldr r1, [r4, #0x20]
	ldr r2, [r4, #0x40]
	adds r1, r1, r2
	ldr r2, [r4, #0x24]
	adds r0, r0, r2
	ldr r2, [r4, #0x28]
	str r0, [sp]
	adds r1, r1, r2
	str r1, [sp, #4]
	ldr r0, [r4, #4]
	mov r1, sp
	bl sub_803FF24
	ldr r0, [r4, #0x48]
	lsls r0, r0, #0x16
	bmi %64
	b %50
64
	ldr r0, [r4, #0x1c]
	ldr r1, [r4, #0x3c]
	ldr r2, [r4, #0x40]
	adds r0, r0, r1
	ldr r1, [r4, #0x20]
	adds r1, r1, r2
	ldr r2, [r4, #0x24]
	adds r0, r0, r2
	ldr r2, [r4, #0x28]
	str r0, [sp]
	adds r1, r1, r2
	str r1, [sp, #4]
	ldr r0, [r4, #0x44]
	mov r1, sp
	bl sub_803FF24
	b %50
	thumb_func_end sub_802D920

