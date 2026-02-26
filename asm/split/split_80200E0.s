	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gPlayerEntity
	IMPORT gUnknown_03003458
	IMPORT gUnknown_030034F8
	IMPORT gUnknown_03003D20
	IMPORT gUnknown_03003E80

	thumb_func_start sub_80200E0

sub_80200E0
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, _08020270
	movs r3, #0
	ldr r1, [r0]
	adds r0, r3, #0
	ldr r2, [r1, #0x14]
	sub sp, #0x4c
	lsls r5, r2, #0x1c
	bmi %37
	ldrh r0, [r1, #4]
37
	lsls r6, r0, #0x10
	lsrs r6, r6, #0x10
	movs r0, #0
	lsls r2, r2, #0x1c
	bmi %38
	ldrh r0, [r1, #6]
38
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x10]
	ldr r0, _0802026C
	ldr r0, [r0]
	adds r0, #0xb0
	ldrb r1, [r0, #5]
	str r1, [sp, #0xc]
	ldrb r2, [r0, #8]
	movs r1, #5
	lsls r1, r1, #8
	str r2, [sp, #8]
	ldr r2, _08020274
	ldr r0, [r2]
	adds r2, r4, #0
	adds r0, r0, r1
	ldr r0, [r0, #0x1c]
	adds r1, r4, #0
	adds r1, #0x80
	str r1, [sp, #0x48]
	adds r2, #0xa0
	lsls r0, r0, #0x13
	lsrs r0, r0, #0x1f
	ldr r1, [r1, #0x1c]
	str r2, [sp, #0x44]
	cmp r0, #0
	bne %39
	cmp r1, #0xf
	beq %39
	cmp r1, #0x10
	beq %39
	cmp r1, #0xd
	beq %39
	ldr r2, [sp, #0x44]
	ldr r0, [r2, #4]
	cmp r0, #0
	beq %40
	ldr r2, [sp, #0x44]
	ldr r0, [r2, #0x34]
	lsls r0, r0, #6
	lsrs r0, r0, #0x1c
	cmp r0, #4
	bne %40
39
	movs r6, #0
	str r6, [sp, #0x10]
40
	adds r0, r4, #0
	adds r0, #0x90
	adds r2, r0, #0
	adds r7, r4, #0
	adds r7, #0xe0
	adds r2, #0x70
	adds r5, r0, #0
	adds r5, #0xb0
	cmp r1, #5
	str r2, [sp, #0x3c]
	str r7, [sp, #0x40]
	beq %41
	cmp r1, #0xc
	bne %44
41
	ldr r2, [sp, #0x3c]
	ldr r1, [r2, #0x3c]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1c
	cmp r1, #6
	bne %43
	ldr r1, [sp, #0x10]
	lsls r1, r1, #0x18
	bpl %42
	ldr r1, [r4, #0x30]
	movs r3, #4
	ldr r2, [r1]
	bics r2, r3
	movs r3, #0
	orrs r2, r3
	str r2, [r1]
	ldr r2, [sp, #0x3c]
	movs r3, #1
	ldr r1, [r2, #0x3c]
	lsls r3, r3, #0x18
	lsrs r1, r1, #4
	lsls r1, r1, #4
	adds r1, #8
	str r1, [r2, #0x3c]
	ldr r1, [r4, #0x74]
	movs r2, #0xf
	str r1, [r4, #0x70]
	ldr r1, [r4, #0x7c]
	lsls r2, r2, #0x18
	bics r1, r2
	adds r1, r1, r3
	str r1, [r4, #0x7c]
	lsrs r1, r3, #2
	str r1, [r4, #0x78]
	b %43
42
	ldr r1, [sp, #0x10]
	lsls r1, r1, #0x19
	bpl %43
	ldr r1, [r4, #0x30]
	movs r3, #4
	ldr r2, [r1]
	bics r2, r3
	movs r3, #0
	orrs r2, r3
	str r2, [r1]
	ldr r2, [sp, #0x3c]
	movs r3, #3
	ldr r1, [r2, #0x3c]
	lsls r3, r3, #0x18
	lsrs r1, r1, #4
	lsls r1, r1, #4
	adds r1, #4
	str r1, [r2, #0x3c]
	movs r2, #0xf
	ldr r1, [r4, #0x7c]
	lsls r2, r2, #0x18
	bics r1, r2
	adds r1, r1, r3
	str r1, [r4, #0x7c]
43
	movs r1, #0xff
	strb r1, [r0, #8]
	b %127
44
	ldr r3, _08020278
	lsls r2, r6, #0x18
	ldr r3, [r3]
	lsrs r2, r2, #0x1c
	adds r3, #0xc0
	movs r7, #1
	cmp r2, #0
	mov ip, r3
	beq %53
	ldrh r2, [r5, #6]
	cmp r2, #0
	bne %53
	ldr r3, _0802027C
	lsls r2, r6, #0x16
	ldrb r3, [r3]
	str r3, [sp, #0x38]
	bpl %52
	lsls r2, r6, #0x1a
	bpl %45
	movs r2, #2
	strb r2, [r0, #8]
	b %48
45
	lsls r2, r6, #0x1b
	bpl %46
	movs r2, #0
	strb r2, [r0, #8]
	b %48
46
	lsls r2, r6, #0x19
	bpl %47
	movs r2, #3
	strb r2, [r0, #8]
	b %48
47
	lsls r2, r6, #0x18
	bpl %48
	strb r7, [r0, #8]
48
	lsls r0, r6, #0x1f
	bpl %51
	ldr r0, [sp, #0xc]
	cmp r0, #0
	beq %51
	mov r3, ip
	ldr r0, [r3, #0x14]
	ldr r0, [r0]
	lsls r0, r0, #0x1f
	bne %51
	cmp r1, #0xb
	beq %51
	cmp r1, #0xa
	beq %51
	ldr r3, [sp, #0x38]
	cmp r3, #0
	beq %49
	movs r0, #0x32
	strh r0, [r4, #0x16]
	movs r0, #0x33
	strh r0, [r4, #0x12]
	movs r0, #0x34
	strh r0, [r4, #0x14]
	strh r0, [r4, #0x10]
	b %50
	ALIGN

	ALIGN
_0802026C DCDU gPlayerEntity
_08020270 DCDU gUnknown_03003E80
_08020274 DCDU gUnknown_03003458
_08020278 DCDU gUnknown_030034F8
_0802027C DCDU gUnknown_03003D20

	END
