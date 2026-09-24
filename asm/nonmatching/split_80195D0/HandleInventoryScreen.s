	non_word_aligned_thumb_func_start HandleInventoryScreen
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1fc
	sub sp, #0x1fc
	sub sp, #0x1fc
	sub sp, #0x50
	add r4, sp, #0x10
	ldr r5, _08019DF8
	adds r1, r4, #0
	adds r1, #0xf8
	adds r0, r4, #0
	movs r2, #0x78
	adds r3, r5, #0
	adds r0, #8
	bl __vecmap1c__FPvT1iPFPv_v
	adds r0, r4, #0
	adds r0, #0xff
	adds r0, #1
	movs r3, #3
	lsls r3, r3, #9
	add r3, sp
	str r0, [r3, #0x40]
	bl sub_80143E0
	movs r0, #0xb5
	lsls r0, r0, #3
	adds r1, r4, r0
	movs r3, #3
	lsls r3, r3, #9
	adds r0, r4, #0
	adds r0, #0xff
	add r3, sp
	str r1, [r3, #0x3c]
	adds r0, #0xe9
	movs r2, #0x78
	adds r3, r5, #0
	bl __vecmap1c__FPvT1iPFPv_v
	movs r3, #3
	lsls r3, r3, #9
	add r3, sp
	ldr r0, [r3, #0x3c]
	bl sub_80143E0
	adds r0, r4, #0
	bl sub_80197AC
	movs r3, #3
	lsls r3, r3, #9
	add r3, sp
	add r0, sp, #0x1e0
	str r0, [r3, #0x38]
	add r1, sp, #0xd0
	str r1, [r3, #0x34]
	add r1, sp, #0x170
	str r1, [r3, #0x30]
	add r7, sp, #0x1d0
	add r5, sp, #0x190
64
	ldr r0, _08019DFC
	movs r2, #0
	ldr r0, [r0]
	adds r4, r2, #0
	ldr r1, [r0, #0x14]
	lsls r3, r1, #0x1c
	bmi %65
	ldrh r4, [r0, #8]
65
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r1, r1, #0x1c
	bmi %66
	ldrh r2, [r0, #4]
66
	movs r3, #3
	lsls r3, r3, #9
	add r3, sp
	ldr r1, [r3, #0x30]
	lsls r6, r2, #0x10
	ldrh r0, [r1, #0x1c]
	ldrh r1, [r1, #0x1e]
	lsrs r6, r6, #0x10
	str r1, [sp, #4]
	ldr r1, [r3, #0x34]
	ldr r1, [r1, #0x38]
	str r1, [sp, #8]
	ldr r1, [r3, #0x34]
	ldr r1, [r1, #0x3c]
	str r1, [sp, #0xc]
	lsls r1, r6, #0x16
	lsrs r1, r1, #0x1f
	adds r0, r1, r0
	lsls r1, r0, #0x10
	lsrs r1, r1, #0x10
	ldr r0, _08019E00
	str r1, [sp]
	ldr r0, [r0]
	bl sub_8000D5A
	ldr r0, [r0, #0x20]
	ldr r1, [sp, #8]
	ldr r1, [r1, #0x10]
	subs r0, r1, r0
	asrs r0, r0, #3
	lsls r0, r0, #0x10
	ldr r1, [sp]
	lsrs r0, r0, #0x10
	cmp r0, r1
	beq %67
	ldr r0, [sp, #8]
	ldr r1, [sp]
	bl sub_800065C
67
	lsls r0, r6, #0x17
	ldr r1, [sp, #4]
	lsrs r0, r0, #0x1f
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r0, _08019E00
	ldr r0, [r0]
	bl sub_8000D5A
	ldr r0, [r0, #0x20]
	ldr r1, [sp, #0xc]
	ldr r1, [r1, #0x10]
	subs r0, r1, r0
	asrs r0, r0, #3
	lsls r0, r0, #0x10
	ldr r1, [sp]
	lsrs r0, r0, #0x10
	cmp r0, r1
	beq %68
	ldr r0, [sp, #0xc]
	ldr r1, [sp]
	bl sub_800065C
68
	lsls r0, r4, #0x16
	bpl %69
	movs r0, #2
	strb r0, [r5]
	b %75
69
	lsls r0, r4, #0x17
	bpl %70
	movs r0, #1
	strb r0, [r5]
	b %75
70
	lsls r0, r4, #0x1e
	bpl %71
	movs r0, #3
	strb r0, [r5]
	b %75
71
	lsls r0, r4, #0x1d
	bpl %72
	movs r0, #3
	strb r0, [r5]
	b %75
72
	lsls r0, r4, #0x19
	bpl %73
	movs r1, #0
	mvns r1, r1
	add r0, sp, #0x10
	bl sub_801966A
	b %75
73
	lsls r0, r4, #0x18
	bpl %74
	movs r1, #1
	add r0, sp, #0x10
	bl sub_801966A
	b %75
74
	movs r3, #3
	lsls r3, r3, #9
	add r3, sp
	ldr r1, [r3, #0x38]
	add r0, sp, #0x10
	ldrb r1, [r1, #3]
	cmp r1, #0
	beq %75
	lsls r1, r4, #0x1f
	bpl %75
	adds r1, r0, #0
	ldr r0, [r3, #0x38]
	movs r3, #2
	ldrsb r0, [r0, r3]
	lsls r0, r0, #1
	adds r0, r0, r1
	adds r0, #0xff
	adds r0, #0x81
	ldrh r0, [r0, #2]
	movs r1, #0xff
	adds r1, #0x86
	cmp r0, r1
	blo %75
	adds r0, #0x7b
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bhs %75
	ldr r1, _08019E04
	strb r0, [r1]
	movs r0, #6
	strb r0, [r5]
75
	movs r3, #3
	lsls r3, r3, #9
	add r3, sp
	ldr r0, [r3, #0x38]
	ldrb r0, [r0, #3]
	cmp r0, #0
	beq %77
	lsls r0, r6, #0x19
	ldr r1, _08019E08
	lsrs r0, r0, #0x1f
	adds r4, r0, r1
	ldr r1, [r7, #0x14]
	ldr r0, _08019E00
	str r1, [sp, #0xc]
	ldr r0, [r0]
	bl sub_8000D5A
	ldr r0, [r0, #0x20]
	ldr r1, [sp, #0xc]
	ldr r1, [r1, #0x10]
	subs r0, r1, r0
	asrs r0, r0, #3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r4
	beq %76
	adds r1, r4, #0
	ldr r0, [r7, #0x14]
	bl sub_800065C
76
	lsls r0, r6, #0x18
	ldr r1, _08019DE8
	lsrs r0, r0, #0x1f
	adds r4, r0, r1
	ldr r0, _08019E00
	ldr r6, [r7, #0x18]
	ldr r0, [r0]
	bl sub_8000D5A
	ldr r0, [r0, #0x20]
	ldr r1, [r6, #0x10]
	subs r0, r1, r0
	asrs r0, r0, #3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r4
	beq %77
	adds r1, r4, #0
	ldr r0, [r7, #0x18]
	bl sub_800065C
77
	bl sub_800EF2A
	b %78
	ALIGN
_08019DE4 DCDU gUnknown_03003448
_08019DE8 DCDU 0x00000C81
_08019DEC DCDU 0x00000CA8
_08019DF0 DCDU gPlayerEntity
_08019DF4 DCDU gUnknown_0300345C
_08019DF8 DCDU sub_80143E0
_08019DFC DCDU gUnknown_03003444
_08019E00 DCDU gUnknown_03003EA0
_08019E04 DCDU gUnknown_03003D1C
_08019E08 DCDU 0x00000C87
78
	ldrb r0, [r5]
	cmp r0, #0
	bne %79
	b %64
79
	movs r3, #3
	lsls r3, r3, #9
	add r3, sp
	ldr r1, [r3, #0x30]
	ldrb r0, [r5]
	ldrh r2, [r1, #0x1a]
	ldr r1, _08019ED4
	add r4, sp, #0x10
	ldrb r5, [r1, r2]
	ldr r2, [r3, #0x30]
	ldr r6, _08019ED8
	ldrh r2, [r2, #0x18]
	cmp r0, #1
	ldrb r7, [r1, r2]
	beq %81
	cmp r0, #2
	beq %80
	cmp r0, #3
	beq %82
	cmp r0, #6
	bne %83
	movs r0, #0xb
	bl SetNextGlobalFunction
	b %83
80
	ldr r0, [r6]
	adds r0, #0x40
	bl sub_8028C2E
	lsls r0, r5, #0x18
	lsrs r0, r0, #0x18
	bl SetNextGlobalFunction
	b %84
81
	ldr r0, [r6]
	adds r0, #0x40
	bl sub_8028C2E
	lsls r0, r7, #0x18
	lsrs r0, r0, #0x18
	bl SetNextGlobalFunction
	b %84
82
	movs r0, #0x11
	bl SetNextGlobalFunction
83
	movs r2, #0xff
	movs r1, #4
	ldr r0, [r6]
	bl sub_8028A7C
84
	adds r0, r4, #0
	bl sub_80195D0
	movs r1, #0
	movs r3, #3
	lsls r3, r3, #9
	add r3, sp
	ldr r0, [r3, #0x3c]
	bl sub_8014436
	ldr r5, _08019EDC
	adds r1, r4, #0
	adds r1, #0xff
	movs r2, #0x77
	movs r0, #0x53
	lsls r0, r0, #4
	mvns r2, r2
	adds r1, #0x71
	adds r3, r5, #0
	adds r0, r4, r0
	bl __vecmap1ci__FPvT1iPFPvi_v
	movs r1, #0
	movs r3, #3
	lsls r3, r3, #9
	add r3, sp
	ldr r0, [r3, #0x40]
	bl sub_8014436
	movs r2, #0x77
	adds r1, r4, #0
	subs r1, #0x70
	mvns r2, r2
	adds r3, r5, #0
	adds r0, r4, #0
	adds r0, #0x80
	bl __vecmap1ci__FPvT1iPFPvi_v
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0x50
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	thumb_func_end HandleInventoryScreen
