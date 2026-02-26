	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_030031EE
	IMPORT gUnknown_030031FE
	IMPORT gUnknown_03003EA0
	IMPORT sub_800BBF4
	IMPORT sub_80133A0
	IMPORT sub_8013F66
	IMPORT sub_803F3E8
	IMPORT sub_803F55C
	IMPORT sub_803FF64

	non_word_aligned_thumb_func_start sub_8014B96

sub_8014B96
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	adds r4, r1, #0
	movs r1, #0
	adds r7, r0, #0
	movs r0, #0xff
	str r1, [sp, #0x1c]
	movs r1, #0xff
	movs r6, #0xff
	str r0, [sp, #0x14]
	str r0, [sp, #0x10]
	adds r0, r7, #0
	str r6, [sp, #8]
	str r1, [sp, #0xc]
	bl sub_803F55C
	adds r1, r4, #0
	adds r0, r7, #0
	bl sub_8013F66
	adds r0, r7, #0
	adds r0, #0x20
	str r0, [sp, #0x20]
	ldrb r0, [r0, #0xd]
	lsls r1, r0, #8
	orrs r1, r4
	adds r5, r1, #0
	bl sub_80133A0
	str r0, [sp, #4]
	movs r0, #0
	adds r4, r7, #0
	adds r4, #0x70
43
	ldr r2, _08014DC4
	lsls r1, r0, #3
	ldrh r2, [r2, r1]
	mov ip, r2
	cmp r2, r5
	bne %44
	ldr r2, [r7, #0x40]
	cmp r2, #0
	bne %44
	adds r6, r0, #0
	str r2, [sp, #8]
	b %47
44
	ldr r2, _08014DC4
	adds r2, r1, r2
	ldrh r3, [r2, #2]
	cmp r3, r5
	bne %45
	adds r6, r0, #0
	movs r2, #1
	str r2, [sp, #8]
	b %47
45
	ldrh r3, [r2, #4]
	cmp r3, r5
	bne %46
	adds r6, r0, #0
	movs r2, #2
	str r2, [sp, #8]
	b %47
46
	ldrh r2, [r2, #6]
	cmp r2, r5
	bne %47
	adds r6, r0, #0
	movs r2, #3
	str r2, [sp, #8]
47
	ldr r3, _08014DC8
	cmp ip, r3
	bne %48
	ldr r2, _08014DC4
	adds r2, r1, r2
	mov lr, r2
	ldrh r2, [r2, #2]
	cmp r2, r3
	bne %48
	mov r2, lr
	ldrh r2, [r2, #4]
	cmp r2, r3
	bne %48
	mov r2, lr
	ldrh r2, [r2, #6]
	cmp r2, r3
	bne %48
	str r0, [sp, #0x14]
	b %52
48
	cmp r6, #0xff
	bne %52
	cmp ip, r3
	bne %49
	ldr r2, [r7, #0x40]
	cmp r2, #0
	bne %49
	movs r1, #0
	str r1, [sp, #0xc]
	str r0, [sp, #0x10]
	b %52
49
	ldr r2, _08014DC4
	adds r1, r1, r2
	ldrh r2, [r1, #2]
	cmp r2, r3
	bne %50
	movs r1, #1
	str r1, [sp, #0xc]
	str r0, [sp, #0x10]
	b %52
50
	ldrh r2, [r1, #4]
	cmp r2, r3
	bne %51
	movs r1, #2
	str r1, [sp, #0xc]
	str r0, [sp, #0x10]
	b %52
51
	ldrh r1, [r1, #6]
	cmp r1, r3
	bne %52
	movs r1, #3
	str r1, [sp, #0xc]
	str r0, [sp, #0x10]
52
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x10
	bhs %53
	cmp r6, #0xff
	beq %43
	b %54
53
	cmp r6, #0xff
	beq %55
54
	strb r6, [r4, #4]
	ldr r2, [sp, #8]
	strb r2, [r4, #5]
	b %60
55
	ldr r0, [sp, #0x10]
	ldr r6, _08014DCC
	cmp r0, #0xff
	beq %56
	ldr r0, [sp, #0x10]
	ldr r3, _08014DC4
	strb r0, [r4, #4]
	ldr r1, [sp, #0xc]
	lsls r0, r0, #3
	strb r1, [r4, #5]
	lsls r1, r1, #1
	adds r0, r0, r3
	strh r5, [r0, r1]
	ldr r0, [sp, #0x20]
	ldr r3, _08014DC0
	ldrb r1, [r0, #0xe]
	ldr r0, [sp, #4]
	ldrb r0, [r0, #0x18]
	ldr r2, [sp, #4]
	ldr r2, [r2, #0x10]
	muls r1, r0
	lsls r1, r1, #1
	adds r1, r1, r2
	ldrb r2, [r4, #5]
	muls r2, r0
	ldrb r0, [r4, #4]
	ldrb r0, [r3, r0]
	lsls r0, r0, #4
	adds r0, r2, r0
	lsls r0, r0, #1
	adds r0, r0, r6
	movs r2, #8
	bl sub_803F3E8
	b %60
56
	ldr r0, _08014DD0
	movs r1, #1
	ldr r0, [r0]
	bl sub_800BBF4
	ldr r2, _08014DC0
	ldr r1, [sp, #0x14]
	strb r0, [r2, r1]
	ldr r0, [sp, #0x14]
	strb r0, [r4, #4]
	ldr r1, [r7, #0x40]
	movs r0, #1
	cmp r1, #0
	bne %57
	movs r0, #0
57
	strb r0, [r4, #5]
	ldr r1, [sp, #4]
	ldrb r1, [r1, #0x18]
	cmp r1, #4
	bls %58
	ldr r1, [sp, #0x14]
	ldr r3, _08014DC4
	lsls r1, r1, #3
	adds r1, r1, r3
	lsls r0, r0, #1
	strh r5, [r1, r0]
	ldrb r0, [r4, #5]
	lsls r0, r0, #1
	adds r0, r1, r0
	strh r5, [r0, #2]
	ldrb r0, [r4, #5]
	lsls r0, r0, #1
	adds r0, r1, r0
	strh r5, [r0, #4]
	ldrb r0, [r4, #5]
	lsls r0, r0, #1
	adds r0, r1, r0
	strh r5, [r0, #6]
	b %59
58
	ldr r1, [sp, #0x14]
	ldr r3, _08014DC4
	lsls r1, r1, #3
	adds r1, r1, r3
	lsls r0, r0, #1
	strh r5, [r1, r0]
59
	ldr r0, [sp, #0x20]
	ldrb r0, [r0, #0xe]
	ldr r1, [sp, #4]
	ldrb r5, [r4, #4]
	ldrb r3, [r1, #0x18]
	ldr r1, [r1, #0x10]
	muls r0, r3
	lsls r0, r0, #1
	adds r1, r0, r1
	ldrb r0, [r4, #5]
	ldrb r2, [r2, r5]
	muls r0, r3
	lsls r2, r2, #4
	adds r0, r0, r2
	lsls r0, r0, #1
	adds r0, r0, r6
	lsls r2, r3, #1
	bl sub_803F3E8
60
	movs r1, #0
	adds r5, r7, #0
	adds r5, #0x60
	str r1, [sp, #0x18]
	ldrb r0, [r5, #0xe]
	cmp r0, #0
	bls %64
61
	ldrb r0, [r5, #0xf]
	movs r6, #0
	cmp r0, #0
	bls %63
62
	ldr r0, [r7, #0x54]
	ldr r1, [sp, #0x1c]
	ldr r2, _08014DC0
	lsls r1, r1, #2
	ldr r0, [r0, r1]
	ldrb r1, [r4, #4]
	ldrb r1, [r2, r1]
	bl sub_803FF64
	ldr r1, [sp, #0x1c]
	adds r6, #1
	adds r1, #1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	str r1, [sp, #0x1c]
	ldrb r0, [r5, #0xf]
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	cmp r0, r6
	bhi %62
63
	ldr r1, [sp, #0x18]
	adds r1, #1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	str r1, [sp, #0x18]
	ldrb r0, [r5, #0xe]
	cmp r0, r1
	bhi %61
64
	add sp, #0x24
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	ALIGN

	ALIGN
_08014DC0 DCDU gUnknown_030031EE
_08014DC4 DCDU gUnknown_030031FE
_08014DC8 DCDU 0x0000FFFF
_08014DCC DCDU 0x05000200
_08014DD0 DCDU gUnknown_03003EA0

	END
