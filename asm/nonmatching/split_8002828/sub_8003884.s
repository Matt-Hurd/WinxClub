	thumb_func_start sub_8003884
	push {r0, r1, r2, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	movs r0, #1
	lsls r0, r0, #0xb
	adds r4, r6, r0
	ldr r0, [r4, #0x28]
	adds r5, r1, #0
	movs r1, #1
	orrs r0, r1
	sub sp, #0x60
	str r0, [r4, #0x28]
	ldr r0, _08003A70
	movs r1, #0x21
	ldr r0, [r0]
	lsls r1, r1, #6
	adds r0, r0, r1
	subs r0, r5, r0
	bl sub_8040504
	ldr r0, [r5, #0x48]
	movs r3, #6
	lsls r2, r0, #0x15
	bmi %96
	movs r3, #5
96
	lsls r0, r0, #0x15
	lsls r0, r1, #2
	adds r0, r0, r6
	str r3, [sp, #0x20]
	ldr r7, [r0, #0xc]
	ldr r0, [sp, #0x68]
	movs r1, #0x14
	ldr r0, [r0, #4]
	cmp r0, #0
	bgt %97
	movs r1, #0
97
	ldr r0, [r5, #0x38]
	movs r2, #0x1f
	lsls r3, r0, #0xd
	lsrs r3, r3, #0x1d
	bne %98
	movs r2, #0x1e
98
	str r2, [sp, #0x1c]
	lsls r2, r0, #8
	lsrs r2, r2, #0x1b
	str r2, [sp, #0x18]
	ldr r2, [r5, #0x3c]
	asrs r2, r2, #0x13
	adds r1, r2, r1
	str r1, [sp, #0x5c]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1b
	str r1, [sp, #0x14]
	asrs r1, r0, #0x13
	ldr r0, [r5, #0x50]
	str r0, [sp, #0x58]
	str r0, [sp, #0x54]
	ldrh r0, [r0, #0xc]
	str r0, [sp, #0x50]
	bl __16__rt_sdiv
	ldr r0, [sp, #0x54]
	str r1, [sp, #0x10]
	ldrh r0, [r0, #0xe]
	ldr r1, [sp, #0x5c]
	str r0, [sp, #0x4c]
	bl __16__rt_sdiv
	ldr r2, [sp, #0x10]
	cmp r2, #0
	bge %99
	ldr r0, [sp, #0x50]
	ldr r2, [sp, #0x10]
	adds r2, r0, r2
	str r2, [sp, #0x10]
99
	cmp r1, #0
	bge %100
	ldr r0, [sp, #0x4c]
	adds r1, r0, r1
100
	ldr r0, [sp, #0x58]
	ldr r0, [r0, #0x18]
	ldr r2, [sp, #0x10]
	lsls r2, r2, #1
	adds r0, r0, r2
	ldr r2, [sp, #0x50]
	muls r2, r1
	lsls r1, r2, #1
	adds r0, r0, r1
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x50]
	ldr r1, [sp, #0x10]
	subs r0, r0, r1
	str r0, [sp, #0x10]
	movs r0, #0
	ldr r1, [sp, #0x1c]
	str r0, [sp, #0xc]
	cmp r1, #0
	ble %106
	ldr r0, [sp, #0x14]
	ldr r3, [sp, #0x20]
	lsls r1, r0, #6
	str r1, [sp, #0x48]
	movs r1, #1
	adds r0, r6, #4
	cmp r3, #5
	bne %101
	movs r1, #0
101
	lsls r1, r1, #0x1f
	lsrs r3, r1, #0xa
	str r3, [sp, #0x44]
	ldr r3, [sp, #0x20]
	adds r1, r6, #0
	adds r1, #8
	cmp r3, #5
	beq %102
	adds r0, r1, #0
102
	str r0, [sp, #0x40]
	ldr r3, [sp, #0x20]
	lsls r0, r3, #0x1d
	lsrs r2, r0, #0x12
	adds r0, r5, #0
	adds r0, #0x40
	str r0, [sp, #0x38]
	str r2, [sp, #0x3c]
103
	ldr r0, [r5]
	ldr r1, [sp, #0x18]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1a
	adds r0, r0, r1
	ldr r1, [sp, #0x48]
	adds r1, r0, r1
	ldr r0, [sp, #0x28]
	ldrh r0, [r0]
	lsrs r2, r0, #0xf
	lsls r2, r2, #0x1f
	ldr r2, [r5, #0x54]
	ldr r2, [r2, #0x10]
	beq %108
	lsls r0, r0, #0x11
	lsrs r0, r0, #0xf
	mov ip, r2
	add ip, r0
	mov lr, r2
	mov r2, ip
	ldr r0, [r5, #0x30]
	ldr r2, [r2]
	str r2, [sp, #0x34]
	lsls r2, r2, #0xc
	lsrs r2, r2, #0x1a
	lsls r3, r2, #1
	adds r2, r3, r2
	lsls r2, r2, #3
	adds r0, r0, r2
	ldr r0, [r0, #0xc]
	ldr r2, [sp, #0x34]
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
	beq %104
	lsls r2, r0, #0x15
	lsrs r2, r2, #0x15
	str r2, [sp, #0x24]
	b %110
104
	ldr r3, [sp, #0x20]
	adds r0, r2, r7
	ldr r2, [r0]
	movs r3, #1
	lsls r3, r3, #0x15
	bics r2, r3
	ldr r3, [sp, #0x44]
	orrs r2, r3
	str r2, [r0]
	ldr r2, [sp, #0x40]
	ldr r3, [sp, #0x20]
	str r2, [sp, #8]
	cmp r3, #5
	bne %105
	ldr r0, [r6, #4]
	cmp r0, #0
	bne %105
	ldr r0, [r6, #8]
	str r0, [r6, #4]
	ldr r2, [r0]
	str r2, [r6, #8]
	adds r2, r0, #4
	str r2, [r0]
	ldr r2, [r6, #4]
	movs r0, #0
	str r0, [r2, #4]
105
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
	lsls r3, r3, #0xa
	b %107
106
	b %118
107
	lsrs r3, r3, #0x1f
	asrs r2, r3
	adds r0, r0, r7
	ldr r3, [r0]
	lsls r2, r2, #0x15
	lsrs r3, r3, #0xb
	lsls r3, r3, #0xb
	lsrs r2, r2, #0x15
	orrs r2, r3
	str r2, [r0]
	lsls r2, r2, #0x15
	lsrs r2, r2, #0x15
	str r2, [sp, #0x24]
	ldr r2, [sp, #8]
	ldr r0, [r2]
	ldr r0, [r0]
	str r0, [sp, #4]
	ldr r3, [r4, #0x1c]
	ldr r0, [r3]
	ldr r2, [sp, #0x24]
	lsrs r0, r0, #0xb
	lsls r0, r0, #0xb
	orrs r0, r2
	str r0, [r3]
	movs r2, #7
	lsls r2, r2, #0xb
	bics r0, r2
	ldr r3, [r4, #0x1c]
	b %109
108
	b %111
	ALIGN
_08003A68 DCDU 0xFFE007FF
_08003A6C DCDU 0x001FF800
_08003A70 DCDU gUnknown_03003EA4
109
	ldr r2, [sp, #0x3c]
	orrs r0, r2
	str r0, [r3]
	ldr r0, [r5, #0x54]
	ldr r2, [r0, #0xc]
	mov r0, lr
	ldr r0, [r0]
	ldr r3, [sp, #0x20]
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
110
	mov r0, lr
	ldr r0, [r0]
	ldr r3, _08003E8C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xe
	adds r2, r0, r7
	str r2, [sp, #0x30]
	ldr r0, [r2]
	adds r2, r0, #0
	ands r0, r3
	movs r3, #1
	lsls r3, r3, #0xb
	adds r2, r2, r3
	ldr r3, _08003E90
	ands r2, r3
	orrs r0, r2
	ldr r2, [sp, #0x30]
	movs r3, #1
	str r0, [r2]
	ldr r0, [sp, #0x38]
	lsls r3, r3, #0xa
	ldrh r0, [r0, #0xa]
	ldr r2, [sp, #0x24]
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
	ldr r0, _08003E94
	ldr r0, [r0]
	ldr r2, [r5]
	subs r1, r1, r2
	asrs r2, r1, #1
	mov r1, ip
	adds r3, r5, #0
	bl sub_800212C
	b %115
111
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
	beq %112
	lsls r2, r0, #0x15
	lsrs r2, r2, #0x15
	mov lr, r2
	b %114
112
	ldr r3, [sp, #0x20]
	adds r0, r2, r7
	ldr r2, [r0]
	movs r3, #1
	lsls r3, r3, #0x15
	bics r2, r3
	ldr r3, [sp, #0x44]
	orrs r2, r3
	str r2, [r0]
	ldr r2, [sp, #0x40]
	ldr r3, [sp, #0x20]
	str r2, [sp, #8]
	cmp r3, #5
	bne %113
	ldr r0, [r6, #4]
	cmp r0, #0
	bne %113
	ldr r0, [r6, #8]
	str r0, [r6, #4]
	ldr r2, [r0]
	str r2, [r6, #8]
	adds r2, r0, #4
	str r2, [r0]
	ldr r2, [r6, #4]
	movs r0, #0
	str r0, [r2, #4]
113
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
	ldr r2, [sp, #0x3c]
	orrs r0, r2
	str r0, [r3]
	ldr r0, [r5, #0x54]
	ldr r2, [r0, #0xc]
	mov r0, ip
	ldr r0, [r0]
	ldr r3, [sp, #0x20]
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
114
	mov r0, ip
	ldr r0, [r0]
	ldr r3, _08003E8C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xe
	adds r2, r0, r7
	str r2, [sp, #0x2c]
	ldr r0, [r2]
	adds r2, r0, #0
	ands r0, r3
	movs r3, #1
	lsls r3, r3, #0xb
	adds r2, r2, r3
	ldr r3, _08003E90
	ands r2, r3
	orrs r0, r2
	ldr r2, [sp, #0x2c]
	movs r3, #1
	str r0, [r2]
	ldr r0, [sp, #0x38]
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
115
	ldr r0, [sp, #0x10]
	subs r0, #1
	str r0, [sp, #0x10]
	bne %116
	ldr r0, [r5, #0x50]
	ldrh r0, [r0, #0xc]
	ldr r1, [sp, #0x28]
	str r0, [sp, #0x10]
	lsls r0, r0, #1
	subs r0, #2
	subs r0, r1, r0
	str r0, [sp, #0x28]
	b %117
116
	ldr r0, [sp, #0x28]
	adds r0, #2
	str r0, [sp, #0x28]
117
	ldr r1, [sp, #0x18]
	ldr r0, [sp, #0xc]
	adds r1, #1
	str r1, [sp, #0x18]
	ldr r1, [sp, #0x1c]
	adds r0, #1
	str r0, [sp, #0xc]
	cmp r0, r1
	bge %118
	b %103
118
	ldr r0, [r4, #0x28]
	lsrs r0, r0, #1
	lsls r0, r0, #1
	str r0, [r4, #0x28]
	add sp, #0x6c
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	thumb_func_end sub_8003884

