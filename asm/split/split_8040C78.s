    INCLUDE asm/macros.inc
    AREA text, CODE

	IMPORT gUnknown_03003530
	IMPORT gUnknown_030037A0
	IMPORT gUnknown_03003BC8
	IMPORT CpuSet
	IMPORT sub_8040708
	IMPORT sub_8040978
	IMPORT sub_8040C38

	thumb_func_start sub_8040C78
sub_8040C78 ;@ 0x08040C78
	ldr r2, _08041010 ;@ =gUnknown_03003BC8
	push {r4, r5, r6, r7, lr}
	ldrb r0, [r2, #5]
	sub sp, #0xc
	cmp r0, #0
	beq _08040C90
	adds r0, #0xff
	strb r0, [r2, #5]
_08040C88
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
_08040C90
	ldr r2, _08041010 ;@ =gUnknown_03003BC8
	ldr r6, _08041010 ;@ =gUnknown_03003BC8
	ldrh r0, [r2, #0xc]
	adds r6, #0x30
	ldr r4, _08041018 ;@ =gUnknown_030037A0
	adds r1, r0, #1
	strh r1, [r2, #0xc]
	ldr r1, [r2, #0x28]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0, #4]
	ldr r1, _08041014 ;@ =gUnknown_03003530
	cmp r0, #0
	str r1, [sp, #8]
	beq _08040D92
	ldrb r3, [r2, #6]
	ldr r1, [r2, #0x1c]
	adds r3, r3, r0
	adds r5, r1, r0
	adds r7, r1, r3
	movs r1, #0
	movs r0, #0x80
	str r0, [sp, #4]
	str r1, [sp]
	ldrb r0, [r2, #2]
	cmp r0, #0
	bls _08040D94
_08040CC6
	ldrb r2, [r5]
	ldr r3, [sp, #4]
	movs r1, #0
	adds r0, r1, #0
	ands r2, r3
	beq _08040CD6
	ldrb r0, [r7]
	adds r7, #1
_08040CD6
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	strb r0, [r6]
	mov lr, r0
	ldr r0, [sp, #4]
	cmp r0, #1
	bls _08040CEA
	ldr r0, [sp, #4]
	lsrs r0, r0, #1
	b _08040CEE
_08040CEA
	movs r0, #0x80
	adds r5, #1
_08040CEE
	ldrb r3, [r5]
	adds r2, r1, #0
	ands r3, r0
	beq _08040CFA
	ldrb r2, [r7]
	adds r7, #1
_08040CFA
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	strb r2, [r6, #1]
	mov ip, r2
	cmp r0, #1
	bls _08040D0A
	lsrs r0, r0, #1
	b _08040D0E
_08040D0A
	movs r0, #0x80
	adds r5, #1
_08040D0E
	ldrb r3, [r5]
	adds r2, r1, #0
	ands r3, r0
	beq _08040D1A
	ldrb r2, [r7]
	adds r7, #1
_08040D1A
	strh r2, [r6, #2]
	cmp r0, #1
	bls _08040D24
	lsrs r0, r0, #1
	b _08040D28
_08040D24
	movs r0, #0x80
	adds r5, #1
_08040D28
	ldrb r3, [r5]
	adds r2, r1, #0
	ands r3, r0
	beq _08040D34
	ldrb r2, [r7]
	adds r7, #1
_08040D34
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	adds r3, r2, #0
	cmp r0, #1
	strh r2, [r6, #4]
	bls _08040D44
	lsrs r0, r0, #1
	b _08040D48
_08040D44
	movs r0, #0x80
	adds r5, #1
_08040D48
	ldrb r2, [r5]
	movs r1, #0
	ands r2, r0
	beq _08040D54
	ldrb r1, [r7]
	adds r7, #1
_08040D54
	strh r1, [r6, #6]
	cmp r0, #1
	bls _08040D60
	lsrs r0, r0, #1
	str r0, [sp, #4]
	b _08040D66
_08040D60
	movs r0, #0x80
	str r0, [sp, #4]
	adds r5, #1
_08040D66
	ldr r0, [sp, #8]
	ldrb r0, [r0, #0xf]
	ldr r1, [sp]
	cmp r0, r1
	bls _08040E3A
	mov r0, ip
	cmp r0, #0
	mov ip, r3
	mov r1, lr
	beq _08040DFC
	ldr r2, _08041010 ;@ =gUnknown_03003BC8
	lsls r0, r0, #2
	ldr r2, [r2, #0x20]
	adds r0, r2, r0
	subs r0, #0x40
	ldr r0, [r0, #0x3c]
	str r0, [r4, #8]
	ldrb r2, [r0, #0xc]
	strb r2, [r4, #0xf]
	ldrb r2, [r0, #0xd]
	lsrs r2, r2, #1
	b _08040D96
_08040D92
	b _08040FB6
_08040D94
	b _08040FF8
_08040D96
	adds r2, #0xc0
	strb r2, [r4, #0x10]
	ldrh r2, [r4, #4]
	movs r3, #0x10
	orrs r2, r3
	strh r2, [r4, #4]
	ldrb r2, [r0, #0xf]
	cmp r1, #0
	strb r2, [r4, #0xe]
	beq _08040DE0
	mov r2, ip
	cmp r2, #3
	beq _08040E18
	mov r2, ip
	cmp r2, #5
	beq _08040E18
	ldr r2, [r0, #8]
	adds r1, r0, #0
	adds r1, #0x7c
	cmp r2, #0
	str r2, [r4, #0x30]
	beq _08040DCC
	adds r3, r0, #4
	ldm r3!, {r2, r3}
	adds r2, r2, r3
	adds r2, r2, r1
	b _08040DD0
_08040DCC
	ldr r2, [r0]
	adds r2, r2, r1
_08040DD0
	movs r3, #0xe
	ldrsb r0, [r0, r3]
	strh r0, [r4, #0x12]
	str r1, [r4, #0x48]
	movs r1, #0
	str r1, [r4, #0x40]
	str r2, [r4, #0x3c]
	b _08040E18
_08040DE0
	ldr r0, _0804101C ;@ =0x0000FFFF
	movs r1, #0
	str r0, [r4, #0x1c]
	strh r1, [r4, #0x20]
	movs r0, #0x40
	strh r0, [r4, #0x22]
	strh r1, [r4, #0x24]
	strh r1, [r4, #0x26]
	strh r1, [r4, #0x28]
	movs r0, #0x20
	strh r0, [r4, #0x2a]
	strh r1, [r4, #0x2c]
	strh r1, [r4, #0x2e]
	b _08040E18
_08040DFC
	cmp r1, #0
	beq _08040E18
	cmp r1, #0x61
	beq _08040E18
	mov r2, ip
	cmp r2, #0
	bne _08040E18
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _08040E18
	adds r0, #0x7c
	str r0, [r4, #0x48]
	movs r1, #0
	str r1, [r4, #0x40]
_08040E18
	ldrb r0, [r6]
	cmp r0, #0
	beq _08040E7C
	ldrh r1, [r6, #4]
	cmp r0, #0x61
	bne _08040E42
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _08040E3C
	ldrb r0, [r0, #0x14]
	cmp r0, #0
	beq _08040E3C
	ldrh r0, [r4, #4]
	movs r1, #4
	orrs r0, r1
	strh r0, [r4, #4]
	b _08040E7C
_08040E3A
	b _08040FA0
_08040E3C
	movs r0, #1
	strh r0, [r4, #4]
	b _08040E7C
_08040E42
	cmp r1, #3
	beq _08040E7A
	cmp r1, #5
	beq _08040E7A
	strb r0, [r4, #0xc]
	strb r0, [r4, #0xd]
	movs r1, #0
	strh r1, [r4, #0x14]
	ldr r0, _0804101C ;@ =0x0000FFFF
	strb r1, [r4, #0x1b]
	str r0, [r4, #0x1c]
	strh r1, [r4, #0x20]
	movs r0, #0x40
	strh r0, [r4, #0x22]
	strh r1, [r4, #0x24]
	strh r1, [r4, #0x26]
	strh r1, [r4, #0x28]
	movs r0, #0x20
	strh r0, [r4, #0x2a]
	strh r1, [r4, #0x2c]
	strh r1, [r4, #0x2e]
	ldrh r0, [r4, #4]
	movs r1, #5
	bics r0, r1
	movs r1, #0x18
	orrs r0, r1
	strh r0, [r4, #4]
	b _08040E7C
_08040E7A
	strb r0, [r4, #0x11]
_08040E7C
	ldrh r0, [r6, #2]
	cmp r0, #0
	beq _08040F06
	adds r1, r0, #0
	subs r1, #0x10
	cmp r1, #0x40
	bhi _08040E96
	strb r1, [r4, #0xf]
	ldrh r0, [r4, #4]
	movs r3, #0x10
	orrs r0, r3
	strh r0, [r4, #4]
	b _08040F06
_08040E96
	adds r1, r0, #0
	subs r1, #0x61
	cmp r1, #0xe
	bhi _08040EBC
	ldrb r1, [r4, #0xf]
	adds r0, #0x20
	lsls r0, r0, #2
	subs r0, r1, r0
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	strb r0, [r4, #0xf]
	bpl _08040EB2
	movs r1, #0
	strb r1, [r4, #0xf]
_08040EB2
	ldrh r0, [r4, #4]
	movs r3, #0x10
	orrs r0, r3
	strh r0, [r4, #4]
	b _08040F06
_08040EBC
	adds r1, r0, #0
	subs r1, #0x71
	cmp r1, #0xe
	bhi _08040EE4
	ldrb r1, [r4, #0xf]
	adds r0, #0x10
	lsls r0, r0, #2
	adds r0, r1, r0
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	strb r0, [r4, #0xf]
	cmp r0, #0x40
	ble _08040EDA
	movs r0, #0x40
	strb r0, [r4, #0xf]
_08040EDA
	ldrh r0, [r4, #4]
	movs r3, #0x10
	orrs r0, r3
	strh r0, [r4, #4]
	b _08040F06
_08040EE4
	adds r1, r0, #0
	subs r1, #0x81
	cmp r1, #0xe
	bhi _08040F08
	ldrb r1, [r4, #0xf]
	adds r0, #0x80
	subs r0, r1, r0
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	strb r0, [r4, #0xf]
	bpl _08040EFE
	movs r1, #0
	strb r1, [r4, #0xf]
_08040EFE
	ldrh r0, [r4, #4]
	movs r3, #0x10
	orrs r0, r3
	strh r0, [r4, #4]
_08040F06
	b _08040F92
_08040F08
	adds r1, r0, #0
	subs r1, #0x91
	cmp r1, #0xe
	bhi _08040F2E
	ldrb r1, [r4, #0xf]
	adds r0, r1, r0
	adds r0, #0x70
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	strb r0, [r4, #0xf]
	cmp r0, #0x40
	ble _08040F24
	movs r0, #0x40
	strb r0, [r4, #0xf]
_08040F24
	ldrh r0, [r4, #4]
	movs r3, #0x10
	orrs r0, r3
	strh r0, [r4, #4]
	b _08040F92
_08040F2E
	adds r1, r0, #0
	subs r1, #0xc0
	cmp r1, #0xf
	bhi _08040F46
	lsls r0, r1, #3
	adds r0, #0xc0
	strb r0, [r4, #0x10]
	ldrh r0, [r4, #4]
	movs r3, #0x10
	orrs r0, r3
	strh r0, [r4, #4]
	b _08040F92
_08040F46
	adds r1, r0, #0
	subs r1, #0xd1
	cmp r1, #0xe
	bhi _08040F6E
	ldrb r1, [r4, #0x10]
	adds r0, #0x30
	subs r0, r1, r0
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r1, #0x3f
	mvns r1, r1
	cmp r0, r1
	strb r0, [r4, #0x10]
	bge _08040F64
	strb r1, [r4, #0x10]
_08040F64
	ldrh r0, [r4, #4]
	movs r3, #0x10
	orrs r0, r3
	strh r0, [r4, #4]
	b _08040F92
_08040F6E
	adds r1, r0, #0
	subs r1, #0xe1
	cmp r1, #0xe
	bhi _08040F92
	ldrb r1, [r4, #0x10]
	adds r0, r1, r0
	adds r0, #0x20
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	strb r0, [r4, #0x10]
	cmp r0, #0x40
	ble _08040F8A
	movs r0, #0x40
	strb r0, [r4, #0x10]
_08040F8A
	ldrh r0, [r4, #4]
	movs r3, #0x10
	orrs r0, r3
	strh r0, [r4, #4]
_08040F92
	adds r1, r6, #0
	adds r0, r4, #0
	bl sub_8040708
	adds r0, r4, #0
	bl sub_8040978
_08040FA0
	ldr r1, [sp]
	ldr r2, _08041010 ;@ =gUnknown_03003BC8
	adds r1, #1
	str r1, [sp]
	ldrb r0, [r2, #2]
	adds r6, #8
	adds r4, #0x4c
	cmp r0, r1
	bls _08040FB4
	b _08040CC6
_08040FB4
	b _08040FF8
_08040FB6
	movs r0, #0
	str r0, [sp]
	ldr r0, _08041010 ;@ =gUnknown_03003BC8
	movs r1, #5
	ldrb r0, [r0, #2]
	lsls r1, r1, #0x18
	lsls r0, r0, #3
	lsrs r0, r0, #2
	orrs r0, r1
	adds r2, r0, #0
	mov r0, sp
	adds r1, r6, #0
	bl CpuSet
	ldr r0, [sp, #8]
	movs r3, #0x4c
	ldrb r0, [r0, #0xf]
	muls r0, r3
	adds r0, r0, r4
	cmp r0, r4
	bls _08040FF8
	adds r5, r4, #0
_08040FE2
	adds r0, r4, #0
	bl sub_8040978
	ldr r0, [sp, #8]
	movs r3, #0x4c
	ldrb r0, [r0, #0xf]
	adds r4, #0x4c
	muls r0, r3
	adds r0, r0, r5
	cmp r0, r4
	bhi _08040FE2
_08040FF8
	ldr r2, _08041010 ;@ =gUnknown_03003BC8
	ldr r1, [r2, #0x28]
	ldrh r0, [r2, #0xc]
	ldr r1, [r1]
	cmp r0, r1
	bhs _08041006
	b _08040C88
_08041006
	movs r0, #0
	bl sub_8040C38
	b _08040C88
	ALIGN
_08041010 DCDU gUnknown_03003BC8
_08041014 DCDU gUnknown_03003530
_08041018 DCDU gUnknown_030037A0
_0804101C DCDU 0x0000FFFF
	END