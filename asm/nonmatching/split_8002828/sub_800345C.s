	thumb_func_start sub_800345C
	push {r0, r1, r2, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	movs r0, #1
	lsls r0, r0, #0xb
	adds r4, r6, r0
	ldr r0, [r4, #0x28]
	adds r5, r1, #0
	movs r1, #1
	orrs r0, r1
	sub sp, #0x68
	str r0, [r4, #0x28]
	ldr r0, _0800364C
	movs r1, #0x21
	ldr r0, [r0]
	lsls r1, r1, #6
	adds r0, r0, r1
	subs r0, r5, r0
	bl sub_8040504
	ldr r0, [r5, #0x48]
	movs r3, #6
	lsls r2, r0, #0x15
	bmi %73
	movs r3, #5
73
	lsls r0, r0, #0x15
	lsls r0, r1, #2
	adds r0, r0, r6
	str r3, [sp, #0x28]
	ldr r7, [r0, #0xc]
	ldr r1, [sp, #0x70]
	movs r0, #0x1e
	ldr r1, [r1]
	cmp r1, #0
	bgt %74
	movs r0, #0
74
	ldr r2, [r5, #0x3c]
	movs r1, #0x15
	str r2, [sp, #0x64]
	lsls r2, r2, #0xd
	lsrs r2, r2, #0x1d
	bne %75
	movs r1, #0x14
75
	str r1, [sp, #0x24]
	ldr r1, [r5, #0x38]
	asrs r1, r1, #0x13
	adds r1, r1, r0
	lsls r2, r1, #0x1b
	ldr r0, [sp, #0x64]
	lsrs r2, r2, #0x1b
	lsls r0, r0, #8
	lsrs r0, r0, #0x1b
	str r0, [sp, #0x1c]
	str r2, [sp, #0x20]
	ldr r0, [r5, #0x50]
	str r0, [sp, #0x60]
	str r0, [sp, #0x5c]
	ldrh r0, [r0, #0xc]
	str r0, [sp, #0x58]
	bl __16__rt_sdiv
	ldr r0, [sp, #0x64]
	str r1, [sp, #0x18]
	asrs r1, r0, #0x13
	ldr r0, [sp, #0x5c]
	ldrh r0, [r0, #0xe]
	str r0, [sp, #0x54]
	bl __16__rt_sdiv
	ldr r2, [sp, #0x18]
	cmp r2, #0
	bge %76
	ldr r0, [sp, #0x58]
	ldr r2, [sp, #0x18]
	adds r2, r0, r2
	str r2, [sp, #0x18]
76
	cmp r1, #0
	bge %77
	ldr r0, [sp, #0x54]
	adds r1, r0, r1
77
	ldr r0, [sp, #0x1c]
	ldr r2, [sp, #0x20]
	lsls r0, r0, #5
	adds r0, r0, r2
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x60]
	ldr r0, [r0, #0x18]
	ldr r2, [sp, #0x18]
	lsls r2, r2, #1
	str r2, [sp, #0x50]
	adds r0, r0, r2
	ldr r2, [sp, #0x58]
	muls r2, r1
	lsls r2, r2, #1
	adds r0, r0, r2
	str r0, [sp, #0x30]
	ldr r0, [sp, #0x54]
	subs r0, r0, r1
	str r0, [sp, #0x14]
	movs r0, #0
	ldr r1, [sp, #0x24]
	str r0, [sp, #0xc]
	cmp r1, #0
	ble %83
	ldr r3, [sp, #0x28]
	movs r1, #1
	adds r0, r6, #4
	cmp r3, #5
	bne %78
	movs r1, #0
78
	lsls r1, r1, #0x1f
	lsrs r3, r1, #0xa
	str r3, [sp, #0x4c]
	ldr r3, [sp, #0x28]
	adds r1, r6, #0
	adds r1, #8
	cmp r3, #5
	beq %79
	adds r0, r1, #0
79
	str r0, [sp, #0x48]
	ldr r3, [sp, #0x28]
	lsls r0, r3, #0x1d
	lsrs r2, r0, #0x12
	adds r0, r5, #0
	adds r0, #0x40
	str r0, [sp, #0x40]
	str r2, [sp, #0x44]
80
	ldr r0, [r5]
	ldr r1, [sp, #0x10]
	lsls r1, r1, #0x16
	lsrs r1, r1, #0x15
	adds r1, r0, r1
	ldr r0, [sp, #0x30]
	ldrh r0, [r0]
	lsrs r2, r0, #0xf
	lsls r2, r2, #0x1f
	ldr r2, [r5, #0x54]
	ldr r2, [r2, #0x10]
	beq %85
	lsls r0, r0, #0x11
	lsrs r0, r0, #0xf
	mov ip, r2
	add ip, r0
	mov lr, r2
	mov r2, ip
	ldr r0, [r5, #0x30]
	ldr r2, [r2]
	str r2, [sp, #0x3c]
	lsls r2, r2, #0xc
	lsrs r2, r2, #0x1a
	lsls r3, r2, #1
	adds r2, r3, r2
	lsls r2, r2, #3
	adds r0, r0, r2
	ldr r0, [r0, #0xc]
	ldr r2, [sp, #0x3c]
	lsls r2, r2, #0x12
	lsrs r2, r2, #0x11
	adds r0, r0, r2
	ldrh r0, [r0]
	lsls r0, r0, #0x11
	lsrs r0, r0, #0xf
	add lr, r0
	mov r0, lr
	ldr r0, [r0]
	lsls r0, r0, #0x10
	lsrs r2, r0, #0xe
	ldr r0, [r7, r2]
	lsls r3, r0, #0xb
	lsrs r3, r3, #0x16
	beq %81
	lsls r2, r0, #0x15
	lsrs r2, r2, #0x15
	str r2, [sp, #0x2c]
	b %87
81
	ldr r3, [sp, #0x28]
	adds r0, r2, r7
	ldr r2, [r0]
	movs r3, #1
	lsls r3, r3, #0x15
	bics r2, r3
	ldr r3, [sp, #0x4c]
	orrs r2, r3
	str r2, [r0]
	ldr r2, [sp, #0x48]
	ldr r3, [sp, #0x28]
	str r2, [sp, #8]
	cmp r3, #5
	bne %82
	ldr r0, [r6, #4]
	cmp r0, #0
	bne %82
	ldr r0, [r6, #8]
	str r0, [r6, #4]
	ldr r2, [r0]
	str r2, [r6, #8]
	adds r2, r0, #4
	str r2, [r0]
	ldr r2, [r6, #4]
	movs r0, #0
	str r0, [r2, #4]
82
	ldr r2, [sp, #8]
	ldr r0, [r2]
	ldr r2, [r4, #0x20]
	subs r0, r0, r2
	asrs r2, r0, #2
	mov r0, lr
	ldr r0, [r0]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xe
	ldr r3, [r7, r0]
	adds r0, r0, r7
	lsls r3, r3, #0xa
	lsrs r3, r3, #0x1f
	asrs r2, r3
	ldr r3, [r0]
	lsrs r3, r3, #0xb
	lsls r3, r3, #0xb
	b %84
83
	b %95
84
	lsls r2, r2, #0x15
	lsrs r2, r2, #0x15
	orrs r2, r3
	str r2, [r0]
	lsls r2, r2, #0x15
	lsrs r2, r2, #0x15
	str r2, [sp, #0x2c]
	ldr r2, [sp, #8]
	ldr r0, [r2]
	ldr r0, [r0]
	str r0, [sp, #4]
	ldr r3, [r4, #0x1c]
	ldr r0, [r3]
	ldr r2, [sp, #0x2c]
	lsrs r0, r0, #0xb
	lsls r0, r0, #0xb
	orrs r0, r2
	str r0, [r3]
	movs r2, #7
	lsls r2, r2, #0xb
	bics r0, r2
	ldr r3, [r4, #0x1c]
	b %86
85
	b %88
	ALIGN
_08003644 DCDU 0xFFE007FF
_08003648 DCDU 0x001FF800
_0800364C DCDU gUnknown_03003EA4
86
	ldr r2, [sp, #0x44]
	orrs r0, r2
	str r0, [r3]
	ldr r0, [r5, #0x54]
	ldr r2, [r0, #0xc]
	mov r0, lr
	ldr r0, [r0]
	ldr r3, [sp, #0x28]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r3
	adds r0, r2, r0
	ldr r2, [r4, #0x1c]
	str r0, [r2, #4]
	ldr r0, [r4, #0x1c]
	add r2, sp, #4
	adds r0, #8
	str r0, [r4, #0x1c]
	ldm r2!, {r0, r2}
	str r0, [r2]
87
	mov r0, lr
	ldr r0, [r0]
	ldr r3, _08003A68
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xe
	adds r2, r0, r7
	str r2, [sp, #0x38]
	ldr r0, [r2]
	adds r2, r0, #0
	ands r0, r3
	movs r3, #1
	lsls r3, r3, #0xb
	adds r2, r2, r3
	ldr r3, _08003A6C
	ands r2, r3
	orrs r0, r2
	ldr r2, [sp, #0x38]
	movs r3, #1
	str r0, [r2]
	ldr r0, [sp, #0x40]
	lsls r3, r3, #0xa
	ldrh r0, [r0, #0xa]
	ldr r2, [sp, #0x2c]
	subs r0, r2, r0
	ldrh r2, [r1]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x16
	lsrs r2, r2, #0xa
	lsls r2, r2, #0xa
	orrs r2, r0
	strh r2, [r1]
	mov r0, lr
	ldr r0, [r0]
	bics r2, r3
	lsls r0, r0, #0xf
	lsrs r0, r0, #0x1f
	lsls r0, r0, #0xa
	orrs r2, r0
	strh r2, [r1]
	mov r0, lr
	ldr r0, [r0]
	lsls r3, r3, #1
	bics r2, r3
	lsls r0, r0, #0xe
	lsrs r0, r0, #0x1f
	lsls r0, r0, #0xb
	orrs r0, r2
	strh r0, [r1]
	mov r2, lr
	ldr r2, [r2]
	movs r3, #0xf
	lsls r2, r2, #6
	lsrs r2, r2, #0x18
	lsls r3, r3, #0xc
	bics r0, r3
	lsls r2, r2, #0xc
	orrs r0, r2
	strh r0, [r1]
	ldr r0, _08003A70
	ldr r0, [r0]
	ldr r2, [r5]
	subs r1, r1, r2
	asrs r2, r1, #1
	mov r1, ip
	adds r3, r5, #0
	bl sub_800212C
	b %92
88
	lsls r0, r0, #0x11
	lsrs r0, r0, #0xf
	mov ip, r2
	add ip, r0
	mov r0, ip
	ldr r0, [r0]
	lsls r0, r0, #0x10
	lsrs r2, r0, #0xe
	ldr r0, [r7, r2]
	lsls r3, r0, #0xb
	lsrs r3, r3, #0x16
	beq %89
	lsls r2, r0, #0x15
	lsrs r2, r2, #0x15
	mov lr, r2
	b %91
89
	ldr r3, [sp, #0x28]
	adds r0, r2, r7
	ldr r2, [r0]
	movs r3, #1
	lsls r3, r3, #0x15
	bics r2, r3
	ldr r3, [sp, #0x4c]
	orrs r2, r3
	str r2, [r0]
	ldr r2, [sp, #0x48]
	ldr r3, [sp, #0x28]
	str r2, [sp, #8]
	cmp r3, #5
	bne %90
	ldr r0, [r6, #4]
	cmp r0, #0
	bne %90
	ldr r0, [r6, #8]
	str r0, [r6, #4]
	ldr r2, [r0]
	str r2, [r6, #8]
	adds r2, r0, #4
	str r2, [r0]
	ldr r2, [r6, #4]
	movs r0, #0
	str r0, [r2, #4]
90
	ldr r2, [sp, #8]
	ldr r0, [r2]
	ldr r2, [r4, #0x20]
	subs r0, r0, r2
	asrs r2, r0, #2
	mov r0, ip
	ldr r0, [r0]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xe
	ldr r3, [r7, r0]
	adds r0, r0, r7
	lsls r3, r3, #0xa
	lsrs r3, r3, #0x1f
	asrs r2, r3
	ldr r3, [r0]
	lsls r2, r2, #0x15
	lsrs r3, r3, #0xb
	lsls r3, r3, #0xb
	lsrs r2, r2, #0x15
	orrs r2, r3
	str r2, [r0]
	lsls r2, r2, #0x15
	lsrs r2, r2, #0x15
	mov lr, r2
	ldr r2, [sp, #8]
	ldr r0, [r2]
	mov r2, lr
	ldr r0, [r0]
	str r0, [sp, #4]
	ldr r3, [r4, #0x1c]
	ldr r0, [r3]
	lsrs r0, r0, #0xb
	lsls r0, r0, #0xb
	orrs r0, r2
	str r0, [r3]
	movs r2, #7
	lsls r2, r2, #0xb
	bics r0, r2
	ldr r3, [r4, #0x1c]
	ldr r2, [sp, #0x44]
	orrs r0, r2
	str r0, [r3]
	ldr r0, [r5, #0x54]
	ldr r2, [r0, #0xc]
	mov r0, ip
	ldr r0, [r0]
	ldr r3, [sp, #0x28]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r3
	adds r0, r2, r0
	ldr r2, [r4, #0x1c]
	str r0, [r2, #4]
	ldr r0, [r4, #0x1c]
	add r2, sp, #4
	adds r0, #8
	str r0, [r4, #0x1c]
	ldm r2!, {r0, r2}
	str r0, [r2]
91
	mov r0, ip
	ldr r0, [r0]
	ldr r3, _08003A68
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xe
	adds r2, r0, r7
	str r2, [sp, #0x34]
	ldr r0, [r2]
	adds r2, r0, #0
	ands r0, r3
	movs r3, #1
	lsls r3, r3, #0xb
	adds r2, r2, r3
	ldr r3, _08003A6C
	ands r2, r3
	orrs r0, r2
	ldr r2, [sp, #0x34]
	movs r3, #1
	str r0, [r2]
	ldr r0, [sp, #0x40]
	mov r2, lr
	ldrh r0, [r0, #0xa]
	lsls r3, r3, #0xa
	subs r0, r2, r0
	ldrh r2, [r1]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x16
	lsrs r2, r2, #0xa
	lsls r2, r2, #0xa
	orrs r2, r0
	strh r2, [r1]
	mov r0, ip
	ldr r0, [r0]
	bics r2, r3
	lsls r0, r0, #0xf
	lsrs r0, r0, #0x1f
	lsls r0, r0, #0xa
	orrs r2, r0
	strh r2, [r1]
	mov r0, ip
	ldr r0, [r0]
	lsls r3, r3, #1
	bics r2, r3
	lsls r0, r0, #0xe
	lsrs r0, r0, #0x1f
	lsls r0, r0, #0xb
	orrs r0, r2
	strh r0, [r1]
	mov r2, ip
	ldr r2, [r2]
	movs r3, #0xf
	lsls r3, r3, #0xc
	lsls r2, r2, #6
	lsrs r2, r2, #0x18
	lsls r2, r2, #0xc
	bics r0, r3
	orrs r0, r2
	strh r0, [r1]
92
	ldr r0, [sp, #0x14]
	subs r0, #1
	str r0, [sp, #0x14]
	ldr r0, [r5, #0x50]
	bne %93
	ldrh r1, [r0, #0xe]
	str r1, [sp, #0x14]
	ldr r0, [r0, #0x18]
	ldr r1, [sp, #0x50]
	adds r0, r0, r1
	str r0, [sp, #0x30]
	b %94
93
	ldrh r0, [r0, #0xc]
	ldr r1, [sp, #0x30]
	lsls r0, r0, #1
	adds r0, r0, r1
	str r0, [sp, #0x30]
94
	ldr r1, [sp, #0x10]
	ldr r0, [sp, #0xc]
	adds r1, #0x20
	str r1, [sp, #0x10]
	ldr r1, [sp, #0x24]
	adds r0, #1
	str r0, [sp, #0xc]
	cmp r0, r1
	bge %95
	b %80
95
	ldr r0, [r4, #0x28]
	lsrs r0, r0, #1
	lsls r0, r0, #1
	str r0, [r4, #0x28]
	add sp, #0x74
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	thumb_func_end sub_800345C


