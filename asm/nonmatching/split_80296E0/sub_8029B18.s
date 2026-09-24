	thumb_func_start sub_8029B18
	ldr r1, [r4, #0x7c]
	movs r0, #7
	lsls r0, r0, #0x1c
	adds r2, r1, #0
	bics r1, r0
	adds r2, r2, r3
	b %57
	ALIGN
_08029B28 DCDU gUnknown_03003EA0
_08029B2C DCDU gUnknown_03003454
_08029B30 DCDU 0x00000F42
_08029B34 DCDU gUnknown_0300345C
_08029B38 DCDU 0xE00FFFFF
_08029B3C DCDU 0x6D656E45
_08029B40 DCDU 0x65442079
_08029B44 DCDU 0x20687461
_08029B48 DCDU 0x69726353
_08029B4C DCDU 0x47207470
_08029B50 DCDU 0x70756F72
_08029B54 DCDU 0x00000000
_08029B58 DCDU gUnknown_03003468
_08029B5C DCDU 0xFFFF000F
_08029B60 DCDU gUnknown_0300346C
_08029B64 DCDU gUnknown_03003458
57
	ands r2, r0
	orrs r1, r2
	lsls r2, r1, #1
	lsrs r2, r2, #0x1d
	cmp r2, #5
	str r1, [r4, #0x7c]
	bne %32
	bics r1, r0
	str r1, [r4, #0x7c]
	b %30
loc_8029b7c
	ldr r0, _08029F5C
	ldr r0, [r0]
	bl sub_80050FA
	bl GetEWRAMStart
	adds r1, r0, #0
	adds r3, r7, #0
	movs r2, #0
	movs r0, #0x4c
	bl sub_803DA80
	adds r7, r0, #0
	beq %58
	adds r0, r7, #0
	bl sub_802D2E8
58
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r7, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r7, r2, r1
	movs r2, #3
	adds r1, r4, #0
	adds r3, r6, #0
	bl __call_via_r7
	ldr r0, _08029F60
	ldr r0, [r0]
	bl sub_803EF1C
	adds r0, r4, #0
	adds r0, #0x90
	ldrb r1, [r0, #0xa]
	movs r3, #1
	lsls r3, r3, #0x1c
	adds r1, #1
	strb r1, [r0, #0xa]
	ldr r1, [r4, #0x7c]
	movs r0, #7
	adds r2, r1, #0
	lsls r0, r0, #0x1c
	adds r2, r2, r3
	ands r2, r0
	bics r1, r0
	orrs r1, r2
	lsls r2, r1, #1
	lsrs r2, r2, #0x1d
	cmp r2, #5
	str r1, [r4, #0x7c]
	bne %60
	bics r1, r0
	str r1, [r4, #0x7c]
	b %60
loc_8029c02
	ldr r0, _08029F5C
	ldr r0, [r0]
	bl sub_80050FA
	bl GetEWRAMStart
	adds r1, r0, #0
	adds r3, r7, #0
	movs r2, #0
	movs r0, #0x48
	bl sub_803DA80
	adds r7, r0, #0
	beq %59
	adds r0, r7, #0
	bl sub_802C884
59
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r7, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r7, r2, r1
	movs r2, #1
	adds r1, r4, #0
	adds r3, r6, #0
	bl __call_via_r7
	ldr r0, _08029F60
	ldr r0, [r0]
	bl sub_803EF1C
	adds r0, r4, #0
	adds r0, #0x90
	ldrb r1, [r0, #0xa]
	movs r3, #1
	lsls r3, r3, #0x1c
	adds r1, #1
	strb r1, [r0, #0xa]
	ldr r1, [r4, #0x7c]
	movs r0, #7
	adds r2, r1, #0
	lsls r0, r0, #0x1c
	adds r2, r2, r3
	ands r2, r0
	bics r1, r0
	orrs r1, r2
	lsls r2, r1, #1
	lsrs r2, r2, #0x1d
	cmp r2, #5
	str r1, [r4, #0x7c]
	bne %60
	bics r1, r0
	str r1, [r4, #0x7c]
60
	b %63
loc_8029c88
	ldr r0, _08029F5C
	ldr r0, [r0]
	bl sub_80050FA
	bl GetEWRAMStart
	adds r1, r0, #0
	adds r3, r7, #0
	movs r2, #0
	movs r0, #0x54
	bl sub_803DA80
	adds r7, r0, #0
	beq %61
	adds r0, r7, #0
	bl sub_8031D00
61
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r7, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r7, r2, r1
	movs r2, #1
	adds r1, r4, #0
	adds r3, r6, #0
	bl __call_via_r7
	ldr r0, _08029F60
	ldr r0, [r0]
	bl sub_803EF1C
	adds r0, r4, #0
	adds r0, #0x90
	ldrb r1, [r0, #0xa]
	movs r3, #1
	lsls r3, r3, #0x1c
	adds r1, #1
	strb r1, [r0, #0xa]
	ldr r1, [r4, #0x7c]
	movs r0, #7
	adds r2, r1, #0
	lsls r0, r0, #0x1c
	adds r2, r2, r3
	ands r2, r0
	bics r1, r0
	orrs r1, r2
	lsls r2, r1, #1
	lsrs r2, r2, #0x1d
	cmp r2, #5
	str r1, [r4, #0x7c]
	bne %63
	bics r1, r0
	str r1, [r4, #0x7c]
	b %63
loc_8029d0e
	ldr r0, _08029F5C
	ldr r0, [r0]
	bl sub_80050FA
	bl GetEWRAMStart
	adds r1, r0, #0
	adds r3, r7, #0
	movs r2, #0
	movs r0, #0x44
	bl sub_803DA80
	adds r7, r0, #0
	beq %62
	adds r0, r7, #0
	bl sub_803772C
62
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r7, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r7, r2, r1
	movs r2, #0
	adds r1, r4, #0
	adds r3, r6, #0
	bl __call_via_r7
	ldr r0, _08029F60
	ldr r0, [r0]
	bl sub_803EF1C
	adds r0, r4, #0
	adds r0, #0x90
	ldrb r1, [r0, #0xa]
	movs r3, #1
	lsls r3, r3, #0x1c
	adds r1, #1
	strb r1, [r0, #0xa]
	ldr r1, [r4, #0x7c]
	movs r0, #7
	adds r2, r1, #0
	lsls r0, r0, #0x1c
	adds r2, r2, r3
	ands r2, r0
	bics r1, r0
	orrs r1, r2
	lsls r2, r1, #1
	lsrs r2, r2, #0x1d
	cmp r2, #5
	str r1, [r4, #0x7c]
	bne %63
	bics r1, r0
	str r1, [r4, #0x7c]
63
	b %69
loc_8029d94
	lsls r0, r0, #0x1d
	bne %65
	ldr r0, _08029F5C
	ldr r0, [r0]
	bl sub_80050FA
	bl GetEWRAMStart
	adds r1, r0, #0
	adds r3, r7, #0
	movs r2, #0
	movs r0, #0x54
	bl sub_803DA80
	adds r7, r0, #0
	beq %64
	adds r0, r7, #0
	bl sub_8031D00
64
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r7, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r7, r2, r1
	movs r2, #2
	adds r1, r4, #0
	adds r3, r6, #0
	bl __call_via_r7
	ldr r0, _08029F60
	ldr r0, [r0]
	bl sub_803EF1C
	adds r0, r4, #0
	adds r0, #0x90
	ldrb r1, [r0, #0xa]
	movs r3, #1
	lsls r3, r3, #0x1c
	adds r1, #1
	strb r1, [r0, #0xa]
	ldr r1, [r4, #0x7c]
	movs r0, #7
	adds r2, r1, #0
	lsls r0, r0, #0x1c
	adds r2, r2, r3
	ands r2, r0
	bics r1, r0
	orrs r1, r2
	lsls r2, r1, #1
	lsrs r2, r2, #0x1d
	cmp r2, #5
	str r1, [r4, #0x7c]
	bne %69
	bics r1, r0
	str r1, [r4, #0x7c]
	b %69
65
	adds r0, r4, #0
	bl sub_80296E0
	cmp r0, #0
	beq %69
	ldr r0, _08029F5C
	ldr r0, [r0]
	bl sub_80050FA
	bl GetEWRAMStart
	adds r1, r0, #0
	adds r3, r7, #0
	movs r2, #0
	movs r0, #0x54
	bl sub_803DA80
	adds r6, r0, #0
	beq %66
	adds r0, r6, #0
	bl sub_8031D00
66
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r6, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r6, r2, r1
	movs r2, #3
	adds r1, r4, #0
	adds r3, r7, #0
	bl __call_via_r6
	ldr r0, _08029F60
	ldr r0, [r0]
	bl sub_803EF1C
	adds r1, r4, #0
	adds r1, #0x90
	str r1, [sp, #0x18]
	ldrb r0, [r1, #0xa]
	movs r2, #7
	lsls r2, r2, #0x1c
	adds r0, #1
	strb r0, [r1, #0xa]
	ldr r0, [r4, #0x7c]
	adds r1, r0, #0
	bics r0, r2
	movs r2, #1
	lsls r2, r2, #0x1c
	adds r1, r1, r2
	movs r2, #7
	lsls r2, r2, #0x1c
	ands r1, r2
	orrs r0, r1
	lsls r1, r0, #1
	lsrs r1, r1, #0x1d
	cmp r1, #5
	str r0, [r4, #0x7c]
	bne %67
	bics r0, r2
	str r0, [r4, #0x7c]
67
	ldr r0, _08029F5C
	ldr r0, [r0]
	bl sub_80050FA
	bl GetEWRAMStart
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0x54
	bl sub_803DA80
	adds r6, r0, #0
	beq %68
	adds r0, r6, #0
	bl sub_8031D00
68
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r6, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r7, r2, r1
	movs r3, #1
	b %70
69
	b %76
70
	movs r2, #3
	adds r1, r4, #0
	bl __call_via_r7
	ldr r0, _08029F60
	ldr r0, [r0]
	bl sub_803EF1C
	ldr r1, [sp, #0x18]
	movs r2, #7
	ldrb r0, [r1, #0xa]
	movs r3, #1
	lsls r3, r3, #0x1c
	adds r0, #1
	strb r0, [r1, #0xa]
	ldr r0, [r4, #0x7c]
	lsls r2, r2, #0x1c
	adds r1, r0, #0
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	lsls r1, r0, #1
	lsrs r1, r1, #0x1d
	cmp r1, #5
	str r0, [r4, #0x7c]
	bne %71
	bics r0, r2
	str r0, [r4, #0x7c]
71
	ldr r0, _08029F5C
	ldr r0, [r0]
	bl sub_80050FA
	bl GetEWRAMStart
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0x54
	bl sub_803DA80
	adds r6, r0, #0
	beq %72
	adds r0, r6, #0
	bl sub_8031D00
	b %72
	ALIGN
_08029F5C DCDU gUnknown_0300346C
_08029F60 DCDU gUnknown_03003458
72
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r6, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	ldr r0, [r4, #0x7c]
	movs r3, #2
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r7, r2, r1
	movs r2, #3
	adds r1, r4, #0
	bl __call_via_r7
	ldr r0, _0802A370
	ldr r0, [r0]
	bl sub_803EF1C
	ldr r1, [sp, #0x18]
	movs r2, #7
	ldrb r0, [r1, #0xa]
	movs r3, #1
	lsls r3, r3, #0x1c
	adds r0, #1
	strb r0, [r1, #0xa]
	ldr r0, [r4, #0x7c]
	lsls r2, r2, #0x1c
	adds r1, r0, #0
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	lsls r1, r0, #1
	lsrs r1, r1, #0x1d
	cmp r1, #5
	str r0, [r4, #0x7c]
	bne %73
	bics r0, r2
	str r0, [r4, #0x7c]
73
	ldr r0, _0802A374
	ldr r0, [r0]
	bl sub_80050FA
	bl GetEWRAMStart
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0x54
	bl sub_803DA80
	adds r6, r0, #0
	beq %74
	adds r0, r6, #0
	bl sub_8031D00
74
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r6, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	ldr r0, [r4, #0x7c]
	movs r3, #3
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r7, r2, r1
	movs r2, #3
	adds r1, r4, #0
	bl __call_via_r7
	ldr r0, _0802A370
	ldr r0, [r0]
	bl sub_803EF1C
	ldr r1, [sp, #0x18]
	movs r2, #7
	ldrb r0, [r1, #0xa]
	movs r3, #1
	lsls r3, r3, #0x1c
	adds r0, #1
	strb r0, [r1, #0xa]
	ldr r0, [r4, #0x7c]
	lsls r2, r2, #0x1c
	adds r1, r0, #0
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	lsls r1, r0, #1
	lsrs r1, r1, #0x1d
	cmp r1, #5
	str r0, [r4, #0x7c]
	bne %76
	bics r0, r2
	str r0, [r4, #0x7c]
	b %76
loc_802a048
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1d
	beq %77
	cmp r0, #1
	beq %79
	cmp r0, #2
	bne %76
	ldr r0, _0802A374
	ldr r0, [r0]
	bl sub_80050FA
	bl GetEWRAMStart
	adds r1, r0, #0
	adds r3, r7, #0
	movs r2, #0
	movs r0, #0x48
	bl sub_803DA80
	adds r7, r0, #0
	beq %75
	adds r0, r7, #0
	bl sub_802C884
75
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r7, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r7, r2, r1
	movs r2, #3
	adds r1, r4, #0
	adds r3, r6, #0
	bl __call_via_r7
	ldr r0, _0802A370
	ldr r0, [r0]
	bl sub_803EF1C
	adds r0, r4, #0
	adds r0, #0x90
	ldrb r1, [r0, #0xa]
	movs r3, #1
	lsls r3, r3, #0x1c
	adds r1, #1
	strb r1, [r0, #0xa]
	ldr r1, [r4, #0x7c]
	movs r0, #7
	adds r2, r1, #0
	lsls r0, r0, #0x1c
	adds r2, r2, r3
	ands r2, r0
	bics r1, r0
	orrs r1, r2
	lsls r2, r1, #1
	lsrs r2, r2, #0x1d
	cmp r2, #5
	str r1, [r4, #0x7c]
	bne %76
	bics r1, r0
	str r1, [r4, #0x7c]
76
	b %83
77
	ldr r0, _0802A374
	ldr r0, [r0]
	bl sub_80050FA
	bl GetEWRAMStart
	adds r1, r0, #0
	adds r3, r7, #0
	movs r2, #0
	movs r0, #0x54
	bl sub_803DA80
	adds r7, r0, #0
	beq %78
	adds r0, r7, #0
	bl sub_8031D00
78
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r7, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r7, r2, r1
	movs r2, #4
	adds r1, r4, #0
	adds r3, r6, #0
	bl __call_via_r7
	ldr r0, _0802A370
	ldr r0, [r0]
	bl sub_803EF1C
	b %80
79
	b %81
80
	adds r0, r4, #0
	adds r0, #0x90
	ldrb r1, [r0, #0xa]
	movs r3, #1
	lsls r3, r3, #0x1c
	adds r1, #1
	strb r1, [r0, #0xa]
	ldr r1, [r4, #0x7c]
	movs r0, #7
	adds r2, r1, #0
	lsls r0, r0, #0x1c
	adds r2, r2, r3
	ands r2, r0
	bics r1, r0
	orrs r1, r2
	lsls r2, r1, #1
	lsrs r2, r2, #0x1d
	cmp r2, #5
	str r1, [r4, #0x7c]
	bne %83
	bics r1, r0
	str r1, [r4, #0x7c]
	b %83
81
	ldr r0, _0802A374
	ldr r0, [r0]
	bl sub_80050FA
	bl GetEWRAMStart
	adds r1, r0, #0
	adds r3, r7, #0
	movs r2, #0
	movs r0, #0x48
	bl sub_803DA80
	adds r7, r0, #0
	beq %82
	adds r0, r7, #0
	bl sub_802C884
82
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r7, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r7, r2, r1
	movs r2, #2
	adds r1, r4, #0
	adds r3, r6, #0
	bl __call_via_r7
	ldr r0, _0802A370
	ldr r0, [r0]
	bl sub_803EF1C
	adds r0, r4, #0
	adds r0, #0x90
	ldrb r1, [r0, #0xa]
	movs r3, #1
	lsls r3, r3, #0x1c
	adds r1, #1
	strb r1, [r0, #0xa]
	ldr r1, [r4, #0x7c]
	movs r0, #7
	adds r2, r1, #0
	lsls r0, r0, #0x1c
	adds r2, r2, r3
	ands r2, r0
	bics r1, r0
	orrs r1, r2
	lsls r2, r1, #1
	lsrs r2, r2, #0x1d
	cmp r2, #5
	str r1, [r4, #0x7c]
	bne %83
	bics r1, r0
	str r1, [r4, #0x7c]
83
	b %86
loc_802a1ec
	ldr r0, _0802A374
	ldr r0, [r0]
	bl sub_80050FA
	bl GetEWRAMStart
	adds r1, r0, #0
	adds r3, r7, #0
	movs r2, #0
	movs r0, #0x4c
	bl sub_803DA80
	adds r7, r0, #0
	beq %84
	adds r0, r7, #0
	bl sub_802D2E8
84
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r7, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r7, r2, r1
	movs r2, #4
	adds r1, r4, #0
	adds r3, r6, #0
	bl __call_via_r7
	ldr r0, _0802A370
	ldr r0, [r0]
	bl sub_803EF1C
	adds r0, r4, #0
	adds r0, #0x90
	ldrb r1, [r0, #0xa]
	movs r3, #1
	lsls r3, r3, #0x1c
	adds r1, #1
	strb r1, [r0, #0xa]
	ldr r1, [r4, #0x7c]
	movs r0, #7
	adds r2, r1, #0
	lsls r0, r0, #0x1c
	adds r2, r2, r3
	ands r2, r0
	bics r1, r0
	orrs r1, r2
	lsls r2, r1, #1
	lsrs r2, r2, #0x1d
	cmp r2, #5
	str r1, [r4, #0x7c]
	bne %86
	bics r1, r0
	str r1, [r4, #0x7c]
	b %86
loc_802a272
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1d
	beq %87
	cmp r0, #1
	bne %86
	ldr r0, _0802A374
	ldr r0, [r0]
	bl sub_80050FA
	bl GetEWRAMStart
	adds r1, r0, #0
	adds r3, r7, #0
	movs r2, #0
	movs r0, #0x40
	bl sub_803DA80
	adds r7, r0, #0
	beq %85
	adds r0, r7, #0
	bl sub_802DFF4
85
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r7, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r7, r2, r1
	movs r2, #3
	adds r1, r4, #0
	adds r3, r6, #0
	bl __call_via_r7
	ldr r0, _0802A370
	ldr r0, [r0]
	bl sub_803EF1C
	adds r0, r4, #0
	adds r0, #0x90
	ldrb r1, [r0, #0xa]
	movs r3, #1
	lsls r3, r3, #0x1c
	adds r1, #1
	strb r1, [r0, #0xa]
	ldr r1, [r4, #0x7c]
	movs r0, #7
	adds r2, r1, #0
	lsls r0, r0, #0x1c
	adds r2, r2, r3
	ands r2, r0
	bics r1, r0
	orrs r1, r2
	lsls r2, r1, #1
	lsrs r2, r2, #0x1d
	cmp r2, #5
	str r1, [r4, #0x7c]
	bne %86
	bics r1, r0
	str r1, [r4, #0x7c]
86
	b %91
87
	ldr r0, _0802A374
	ldr r0, [r0]
	bl sub_80050FA
	bl GetEWRAMStart
	adds r1, r0, #0
	adds r3, r7, #0
	movs r2, #0
	movs r0, #0x4c
	bl sub_803DA80
	adds r7, r0, #0
	beq %88
	adds r0, r7, #0
	bl sub_802BFBC
88
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r7, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r7, r2, r1
	movs r2, #2
	adds r1, r4, #0
	adds r3, r6, #0
	bl __call_via_r7
	ldr r0, _0802A370
	ldr r0, [r0]
	bl sub_803EF1C
	adds r0, r4, #0
	adds r0, #0x90
	ldrb r1, [r0, #0xa]
	adds r1, #1
	strb r1, [r0, #0xa]
	ldr r1, [r4, #0x7c]
	movs r0, #7
	adds r2, r1, #0
	lsls r0, r0, #0x1c
	bics r1, r0
	b %89
	ALIGN
_0802A370 DCDU gUnknown_03003458
_0802A374 DCDU gUnknown_0300346C
89
	movs r3, #1
	lsls r3, r3, #0x1c
	adds r2, r2, r3
	ands r2, r0
	orrs r1, r2
	lsls r2, r1, #1
	lsrs r2, r2, #0x1d
	cmp r2, #5
	str r1, [r4, #0x7c]
	bne %91
	bics r1, r0
	str r1, [r4, #0x7c]
	b %91
loc_802a392
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1d
	beq %92
	cmp r0, #1
	bne %91
	ldr r0, _0802A758
	ldr r0, [r0]
	bl sub_80050FA
	bl GetEWRAMStart
	adds r1, r0, #0
	adds r3, r7, #0
	movs r2, #0
	movs r0, #0x44
	bl sub_803DA80
	adds r7, r0, #0
	beq %90
	adds r0, r7, #0
	bl sub_803AE68
90
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r7, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r7, r2, r1
	movs r2, #0
	adds r1, r4, #0
	adds r3, r6, #0
	bl __call_via_r7
	ldr r0, _0802A75C
	ldr r0, [r0]
	bl sub_803EF1C
	adds r0, r4, #0
	adds r0, #0x90
	ldrb r1, [r0, #0xa]
	movs r3, #1
	lsls r3, r3, #0x1c
	adds r1, #1
	strb r1, [r0, #0xa]
	ldr r1, [r4, #0x7c]
	movs r0, #7
	adds r2, r1, #0
	lsls r0, r0, #0x1c
	adds r2, r2, r3
	ands r2, r0
	bics r1, r0
	orrs r1, r2
	lsls r2, r1, #1
	lsrs r2, r2, #0x1d
	cmp r2, #5
	str r1, [r4, #0x7c]
	bne %91
	bics r1, r0
	str r1, [r4, #0x7c]
91
	b %95
92
	ldr r0, _0802A758
	ldr r0, [r0]
	bl sub_80050FA
	bl GetEWRAMStart
	adds r1, r0, #0
	adds r3, r7, #0
	movs r2, #0
	movs r0, #0x48
	bl sub_803DA80
	adds r7, r0, #0
	beq %93
	adds r0, r7, #0
	bl sub_802C884
93
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r7, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r7, r2, r1
	movs r2, #5
	adds r1, r4, #0
	adds r3, r6, #0
	bl __call_via_r7
	ldr r0, _0802A75C
	ldr r0, [r0]
	bl sub_803EF1C
	adds r0, r4, #0
	adds r0, #0x90
	ldrb r1, [r0, #0xa]
	movs r3, #1
	lsls r3, r3, #0x1c
	adds r1, #1
	strb r1, [r0, #0xa]
	ldr r1, [r4, #0x7c]
	movs r0, #7
	adds r2, r1, #0
	lsls r0, r0, #0x1c
	adds r2, r2, r3
	ands r2, r0
	bics r1, r0
	orrs r1, r2
	lsls r2, r1, #1
	lsrs r2, r2, #0x1d
	cmp r2, #5
	str r1, [r4, #0x7c]
	bne %95
	bics r1, r0
	str r1, [r4, #0x7c]
	b %95
loc_802a4a8
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1d
	beq %96
	cmp r0, #1
	bne %95
	ldr r0, _0802A758
	ldr r0, [r0]
	bl sub_80050FA
	bl GetEWRAMStart
	adds r1, r0, #0
	adds r3, r7, #0
	movs r2, #0
	movs r0, #0x48
	bl sub_803DA80
	adds r7, r0, #0
	beq %94
	adds r0, r7, #0
	bl sub_802C884
94
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r7, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r7, r2, r1
	movs r2, #6
	adds r1, r4, #0
	adds r3, r6, #0
	bl __call_via_r7
	ldr r0, _0802A75C
	ldr r0, [r0]
	bl sub_803EF1C
	adds r0, r4, #0
	adds r0, #0x90
	ldrb r1, [r0, #0xa]
	movs r3, #1
	lsls r3, r3, #0x1c
	adds r1, #1
	strb r1, [r0, #0xa]
	ldr r1, [r4, #0x7c]
	movs r0, #7
	adds r2, r1, #0
	lsls r0, r0, #0x1c
	adds r2, r2, r3
	ands r2, r0
	bics r1, r0
	orrs r1, r2
	lsls r2, r1, #1
	lsrs r2, r2, #0x1d
	cmp r2, #5
	str r1, [r4, #0x7c]
	bne %95
	bics r1, r0
	str r1, [r4, #0x7c]
95
	b %100
96
	adds r0, r4, #0
	bl sub_80296E0
	cmp r0, #0
	beq %100
	ldr r0, _0802A758
	ldr r0, [r0]
	bl sub_80050FA
	bl GetEWRAMStart
	adds r1, r0, #0
	adds r3, r7, #0
	movs r2, #0
	movs r0, #0x40
	bl sub_803DA80
	adds r6, r0, #0
	beq %97
	adds r0, r6, #0
	bl sub_802BA4C
97
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r6, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r6, r2, r1
	movs r2, #3
	adds r1, r4, #0
	adds r3, r7, #0
	bl __call_via_r6
	ldr r0, _0802A75C
	ldr r0, [r0]
	bl sub_803EF1C
	adds r1, r4, #0
	adds r1, #0x90
	str r1, [sp, #0x14]
	ldrb r0, [r1, #0xa]
	movs r2, #7
	lsls r2, r2, #0x1c
	adds r0, #1
	strb r0, [r1, #0xa]
	ldr r0, [r4, #0x7c]
	adds r1, r0, #0
	bics r0, r2
	movs r2, #1
	lsls r2, r2, #0x1c
	adds r1, r1, r2
	movs r2, #7
	lsls r2, r2, #0x1c
	ands r1, r2
	orrs r0, r1
	lsls r1, r0, #1
	lsrs r1, r1, #0x1d
	cmp r1, #5
	str r0, [r4, #0x7c]
	bne %98
	bics r0, r2
	str r0, [r4, #0x7c]
98
	ldr r0, _0802A758
	ldr r0, [r0]
	bl sub_80050FA
	bl GetEWRAMStart
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0x40
	bl sub_803DA80
	adds r6, r0, #0
	beq %99
	adds r0, r6, #0
	bl sub_802BA4C
99
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r6, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	ldr r0, [r4, #0x7c]
	movs r3, #1
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r7, r2, r1
	movs r2, #3
	adds r1, r4, #0
	bl __call_via_r7
	ldr r0, _0802A75C
	ldr r0, [r0]
	bl sub_803EF1C
	b %101
100
	b %109
101
	ldr r1, [sp, #0x14]
	movs r2, #7
	ldrb r0, [r1, #0xa]
	movs r3, #1
	lsls r3, r3, #0x1c
	adds r0, #1
	strb r0, [r1, #0xa]
	ldr r0, [r4, #0x7c]
	lsls r2, r2, #0x1c
	adds r1, r0, #0
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	lsls r1, r0, #1
	lsrs r1, r1, #0x1d
	cmp r1, #5
	str r0, [r4, #0x7c]
	bne %102
	bics r0, r2
	str r0, [r4, #0x7c]
102
	ldr r0, _0802A758
	ldr r0, [r0]
	bl sub_80050FA
	bl GetEWRAMStart
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0x40
	bl sub_803DA80
	adds r6, r0, #0
	beq %103
	adds r0, r6, #0
	bl sub_802BA4C
103
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r6, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	ldr r0, [r4, #0x7c]
	movs r3, #2
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r7, r2, r1
	movs r2, #3
	adds r1, r4, #0
	bl __call_via_r7
	ldr r0, _0802A75C
	ldr r0, [r0]
	bl sub_803EF1C
	ldr r1, [sp, #0x14]
	movs r2, #7
	ldrb r0, [r1, #0xa]
	movs r3, #1
	lsls r3, r3, #0x1c
	adds r0, #1
	strb r0, [r1, #0xa]
	ldr r0, [r4, #0x7c]
	lsls r2, r2, #0x1c
	adds r1, r0, #0
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	lsls r1, r0, #1
	lsrs r1, r1, #0x1d
	cmp r1, #5
	str r0, [r4, #0x7c]
	bne %104
	bics r0, r2
	str r0, [r4, #0x7c]
104
	ldr r0, _0802A758
	ldr r0, [r0]
	bl sub_80050FA
	bl GetEWRAMStart
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0x40
	bl sub_803DA80
	adds r6, r0, #0
	beq %105
	adds r0, r6, #0
	bl sub_802BA4C
105
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r6, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	ldr r0, [r4, #0x7c]
	movs r3, #3
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r7, r2, r1
	movs r2, #3
	adds r1, r4, #0
	bl __call_via_r7
	ldr r0, _0802A75C
	ldr r0, [r0]
	bl sub_803EF1C
	ldr r1, [sp, #0x14]
	movs r2, #7
	ldrb r0, [r1, #0xa]
	movs r3, #1
	lsls r3, r3, #0x1c
	adds r0, #1
	strb r0, [r1, #0xa]
	ldr r0, [r4, #0x7c]
	lsls r2, r2, #0x1c
	adds r1, r0, #0
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	lsls r1, r0, #1
	lsrs r1, r1, #0x1d
	cmp r1, #5
	str r0, [r4, #0x7c]
	bne %109
	bics r0, r2
	str r0, [r4, #0x7c]
	b %109
	ALIGN
_0802A758 DCDU gUnknown_0300346C
_0802A75C DCDU gUnknown_03003458
loc_802a760
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1d
	beq %110
	cmp r0, #1
	beq %111
	cmp r0, #2
	bne %109
	adds r0, r4, #0
	bl sub_80296E0
	cmp r0, #0
	beq %109
	ldr r0, _0802AB58
	ldr r0, [r0]
	bl sub_80050FA
	bl GetEWRAMStart
	adds r1, r0, #0
	adds r3, r7, #0
	movs r2, #0
	movs r0, #0x40
	bl sub_803DA80
	adds r6, r0, #0
	beq %106
	adds r0, r6, #0
	bl sub_803AB80
106
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r6, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r6, r2, r1
	movs r2, #0
	adds r1, r4, #0
	adds r3, r7, #0
	bl __call_via_r6
	ldr r0, _0802AB5C
	ldr r0, [r0]
	bl sub_803EF1C
	adds r1, r4, #0
	adds r1, #0x90
	str r1, [sp, #0xc]
	ldrb r0, [r1, #0xa]
	movs r2, #7
	lsls r2, r2, #0x1c
	adds r0, #1
	strb r0, [r1, #0xa]
	ldr r0, [r4, #0x7c]
	adds r1, r0, #0
	bics r0, r2
	movs r2, #1
	lsls r2, r2, #0x1c
	adds r1, r1, r2
	movs r2, #7
	lsls r2, r2, #0x1c
	ands r1, r2
	orrs r0, r1
	lsls r1, r0, #1
	lsrs r1, r1, #0x1d
	cmp r1, #5
	str r0, [r4, #0x7c]
	bne %107
	bics r0, r2
	str r0, [r4, #0x7c]
107
	ldr r0, _0802AB58
	ldr r0, [r0]
	bl sub_80050FA
	bl GetEWRAMStart
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0x40
	bl sub_803DA80
	adds r6, r0, #0
	beq %108
	adds r0, r6, #0
	bl sub_803AB80
108
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r6, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	b %112
109
	b %117
110
	b %119
111
	b %121
112
	ldr r0, [r4, #0x7c]
	movs r3, #1
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r7, r2, r1
	movs r2, #1
	adds r1, r4, #0
	bl __call_via_r7
	ldr r0, _0802AB5C
	ldr r0, [r0]
	bl sub_803EF1C
	ldr r1, [sp, #0xc]
	movs r2, #7
	ldrb r0, [r1, #0xa]
	movs r3, #1
	lsls r3, r3, #0x1c
	adds r0, #1
	strb r0, [r1, #0xa]
	ldr r0, [r4, #0x7c]
	lsls r2, r2, #0x1c
	adds r1, r0, #0
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	lsls r1, r0, #1
	lsrs r1, r1, #0x1d
	cmp r1, #5
	str r0, [r4, #0x7c]
	bne %113
	bics r0, r2
	str r0, [r4, #0x7c]
113
	ldr r0, _0802AB58
	ldr r0, [r0]
	bl sub_80050FA
	bl GetEWRAMStart
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0x40
	bl sub_803DA80
	adds r6, r0, #0
	beq %114
	adds r0, r6, #0
	bl sub_803AB80
114
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r6, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	ldr r0, [r4, #0x7c]
	movs r3, #2
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r7, r2, r1
	movs r2, #2
	adds r1, r4, #0
	bl __call_via_r7
	ldr r0, _0802AB5C
	ldr r0, [r0]
	bl sub_803EF1C
	ldr r1, [sp, #0xc]
	movs r2, #7
	ldrb r0, [r1, #0xa]
	movs r3, #1
	lsls r3, r3, #0x1c
	adds r0, #1
	strb r0, [r1, #0xa]
	ldr r0, [r4, #0x7c]
	lsls r2, r2, #0x1c
	adds r1, r0, #0
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	lsls r1, r0, #1
	lsrs r1, r1, #0x1d
	cmp r1, #5
	str r0, [r4, #0x7c]
	bne %115
	bics r0, r2
	str r0, [r4, #0x7c]
115
	ldr r0, _0802AB58
	ldr r0, [r0]
	bl sub_80050FA
	bl GetEWRAMStart
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0x40
	bl sub_803DA80
	adds r6, r0, #0
	beq %116
	adds r0, r6, #0
	bl sub_803AB80
116
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r6, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	ldr r0, [r4, #0x7c]
	movs r3, #3
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r7, r2, r1
	movs r2, #3
	adds r1, r4, #0
	bl __call_via_r7
	ldr r0, _0802AB5C
	ldr r0, [r0]
	bl sub_803EF1C
	ldr r1, [sp, #0xc]
	movs r2, #7
	ldrb r0, [r1, #0xa]
	movs r3, #1
	lsls r3, r3, #0x1c
	adds r0, #1
	strb r0, [r1, #0xa]
	ldr r0, [r4, #0x7c]
	lsls r2, r2, #0x1c
	adds r1, r0, #0
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	lsls r1, r0, #1
	lsrs r1, r1, #0x1d
	cmp r1, #5
	str r0, [r4, #0x7c]
	bne %117
	bics r0, r2
	str r0, [r4, #0x7c]
117
	movs r1, #1
	ldr r0, [r5, #0x2c]
	lsls r1, r1, #0x10
	bics r0, r1
	str r0, [r5, #0x2c]
118
	bl %19
119
	ldr r0, _0802AB58
	ldr r0, [r0]
	bl sub_80050FA
	bl GetEWRAMStart
	adds r1, r0, #0
	adds r3, r7, #0
	movs r2, #0
	movs r0, #0x48
	bl sub_803DA80
	adds r7, r0, #0
	beq %120
	adds r0, r7, #0
	bl sub_802C884
120
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r7, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r7, r2, r1
	movs r2, #7
	adds r1, r4, #0
	adds r3, r6, #0
	bl __call_via_r7
	ldr r0, _0802AB5C
	ldr r0, [r0]
	bl sub_803EF1C
	adds r0, r4, #0
	adds r0, #0x90
	ldrb r1, [r0, #0xa]
	movs r3, #1
	lsls r3, r3, #0x1c
	adds r1, #1
	strb r1, [r0, #0xa]
	ldr r1, [r4, #0x7c]
	movs r0, #7
	adds r2, r1, #0
	lsls r0, r0, #0x1c
	adds r2, r2, r3
	ands r2, r0
	bics r1, r0
	orrs r1, r2
	lsls r2, r1, #1
	lsrs r2, r2, #0x1d
	cmp r2, #5
	str r1, [r4, #0x7c]
	bne %117
	bics r1, r0
	str r1, [r4, #0x7c]
	b %117
121
	adds r0, r4, #0
	bl sub_80296E0
	cmp r0, #0
	beq %117
	ldr r0, _0802AB58
	ldr r0, [r0]
	bl sub_80050FA
	bl GetEWRAMStart
	adds r1, r0, #0
	adds r3, r7, #0
	movs r2, #0
	movs r0, #0x40
	bl sub_803DA80
	adds r6, r0, #0
	beq %122
	adds r0, r6, #0
	bl sub_802BA4C
122
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r6, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r6, r2, r1
	movs r2, #4
	adds r1, r4, #0
	adds r3, r7, #0
	bl __call_via_r6
	ldr r0, _0802AB5C
	ldr r0, [r0]
	bl sub_803EF1C
	adds r1, r4, #0
	adds r1, #0x90
	str r1, [sp, #0x10]
	ldrb r0, [r1, #0xa]
	movs r2, #7
	lsls r2, r2, #0x1c
	adds r0, #1
	strb r0, [r1, #0xa]
	ldr r0, [r4, #0x7c]
	adds r1, r0, #0
	bics r0, r2
	movs r2, #1
	lsls r2, r2, #0x1c
	adds r1, r1, r2
	movs r2, #7
	lsls r2, r2, #0x1c
	ands r1, r2
	orrs r0, r1
	lsls r1, r0, #1
	lsrs r1, r1, #0x1d
	cmp r1, #5
	str r0, [r4, #0x7c]
	bne %123
	bics r0, r2
	str r0, [r4, #0x7c]
123
	ldr r0, _0802AB58
	ldr r0, [r0]
	bl sub_80050FA
	bl GetEWRAMStart
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0x40
	bl sub_803DA80
	adds r6, r0, #0
	beq %124
	adds r0, r6, #0
	bl sub_802BA4C
124
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r6, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	ldr r0, [r4, #0x7c]
	movs r3, #1
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r7, r2, r1
	movs r2, #4
	adds r1, r4, #0
	bl __call_via_r7
	ldr r0, _0802AB5C
	ldr r0, [r0]
	bl sub_803EF1C
	ldr r1, [sp, #0x10]
	movs r2, #7
	ldrb r0, [r1, #0xa]
	movs r3, #1
	lsls r3, r3, #0x1c
	adds r0, #1
	strb r0, [r1, #0xa]
	ldr r0, [r4, #0x7c]
	lsls r2, r2, #0x1c
	adds r1, r0, #0
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	lsls r1, r0, #1
	lsrs r1, r1, #0x1d
	cmp r1, #5
	str r0, [r4, #0x7c]
	bne %125
	bics r0, r2
	str r0, [r4, #0x7c]
125
	ldr r0, _0802AB58
	ldr r0, [r0]
	bl sub_80050FA
	bl GetEWRAMStart
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0x40
	bl sub_803DA80
	adds r6, r0, #0
	b %126
	ALIGN
_0802AB58 DCDU gUnknown_0300346C
_0802AB5C DCDU gUnknown_03003458
126
	beq %127
	adds r0, r6, #0
	bl sub_802BA4C
127
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r6, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	ldr r0, [r4, #0x7c]
	movs r3, #2
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r7, r2, r1
	movs r2, #4
	adds r1, r4, #0
	bl __call_via_r7
	ldr r0, _0802AF70
	ldr r0, [r0]
	bl sub_803EF1C
	ldr r1, [sp, #0x10]
	movs r2, #7
	ldrb r0, [r1, #0xa]
	movs r3, #1
	lsls r3, r3, #0x1c
	adds r0, #1
	strb r0, [r1, #0xa]
	ldr r0, [r4, #0x7c]
	lsls r2, r2, #0x1c
	adds r1, r0, #0
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	lsls r1, r0, #1
	lsrs r1, r1, #0x1d
	cmp r1, #5
	str r0, [r4, #0x7c]
	bne %128
	bics r0, r2
	str r0, [r4, #0x7c]
128
	ldr r0, _0802AF74
	ldr r0, [r0]
	bl sub_80050FA
	bl GetEWRAMStart
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0x40
	bl sub_803DA80
	adds r6, r0, #0
	beq %129
	adds r0, r6, #0
	bl sub_802BA4C
129
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r6, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	ldr r0, [r4, #0x7c]
	movs r3, #3
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r7, r2, r1
	movs r2, #4
	adds r1, r4, #0
	bl __call_via_r7
	ldr r0, _0802AF70
	ldr r0, [r0]
	bl sub_803EF1C
	ldr r1, [sp, #0x10]
	movs r2, #7
	ldrb r0, [r1, #0xa]
	movs r3, #1
	lsls r3, r3, #0x1c
	adds r0, #1
	strb r0, [r1, #0xa]
	ldr r0, [r4, #0x7c]
	lsls r2, r2, #0x1c
	adds r1, r0, #0
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	lsls r1, r0, #1
	lsrs r1, r1, #0x1d
	cmp r1, #5
	str r0, [r4, #0x7c]
	beq %130
	b %117
130
	bics r0, r2
	str r0, [r4, #0x7c]
	b %117
	thumb_func_end sub_8029B18

