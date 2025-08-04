	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_03003EB0
	IMPORT sub_800DEF8
	IMPORT __call_via_r6
	IMPORT sub_8040504

	thumb_func_start sub_800212C
sub_800212C
	push {r0, r1, r2, r3, r4, r5, r6, r7, lr}
	adds r6, r1, #0
	ldr r2, [r6]
	mov ip, r0
	adds r0, r3, #0
	ldr r1, [r3, #0x30]
	lsls r3, r2, #0xc
	lsrs r4, r3, #0x1a
	lsls r3, r4, #1
	adds r3, r3, r4
	lsls r3, r3, #3
	adds r1, r1, r3
	ldr r3, [r6]
	ldrh r1, [r1, #4]
	lsls r5, r3, #0x12
	lsls r3, r3, #0xc
	lsrs r7, r3, #0x1a
	lsls r3, r7, #1
	adds r3, r3, r7
	ldr r7, [r0, #0x30]
	lsls r3, r3, #3
	adds r3, r7, r3
	ldrh r3, [r3, #4]
	lsrs r5, r5, #0x12
	lsls r2, r2, #0x12
	adds r5, r3, r5
	lsls r3, r5, #1
	adds r3, r3, r5
	lsrs r2, r2, #0x12
	adds r1, r1, r2
	movs r5, #0x27
	lsls r5, r5, #6
	movs r2, #0x27
	lsls r2, r2, #6
	add r5, ip
	mov r4, ip
	adds r4, r4, r2
	ldr r5, [r5, #0x14]
	ldr r2, [r4, #0x3c]
	lsls r3, r3, #2
	adds r3, r5, r3
	adds r3, #4
	ldr r5, [r3]
	ldr r7, _080023E8
	lsls r2, r2, #0x14
	mov lr, r2
	lsrs r2, r2, #0x15
	ands r5, r7
	cmp r2, #0
	sub sp, #4
	bne %1
	str r5, [r3]
	b %2
1
	mov r2, lr
	lsrs r2, r2, #0x15
	lsls r2, r2, #0xd
	orrs r2, r5
	str r2, [r3]
	ldr r3, [r4, #0x3c]
	ldr r2, [r4, #0x14]
	lsls r3, r3, #0x14
	lsrs r5, r3, #0x15
	lsls r3, r5, #1
	adds r3, r3, r5
	lsls r3, r3, #2
	adds r2, r2, r3
	adds r2, #8
	ldr r3, [r2]
	lsls r5, r1, #0x15
	lsrs r3, r3, #0xb
	lsls r3, r3, #0xb
	lsrs r5, r5, #0x15
	orrs r3, r5
	str r3, [r2]
2
	ldr r3, _080023EC
	ldr r2, [r4, #0x3c]
	lsls r5, r1, #1
	ands r2, r3
	lsls r3, r1, #0x15
	lsrs r3, r3, #0x14
	orrs r2, r3
	str r2, [r4, #0x3c]
	ldr r2, [r4, #0x14]
	adds r5, r5, r1
	lsls r5, r5, #2
	adds r1, r2, r5
	adds r1, #8
	ldr r2, [r1]
	lsrs r2, r2, #0xb
	lsls r2, r2, #0xb
	str r2, [r1]
	ldr r1, [r4, #0x14]
	movs r2, #0x21
	adds r7, r1, r5
	mov r1, ip
	lsls r2, r2, #6
	adds r1, r1, r2
	adds r7, #4
	subs r0, r0, r1
	bl sub_8040504
	lsls r0, r1, #0x1e
	ldr r1, [r7]
	lsrs r0, r0, #0x1e
	lsrs r1, r1, #2
	lsls r1, r1, #2
	orrs r0, r1
	str r0, [r7]
	ldr r0, [r4, #0x14]
	ldr r2, _080023F0
	str r6, [r0, r5]
	ldr r0, [r4, #0x14]
	adds r0, r0, r5
	adds r0, #4
	ldr r1, [r0]
	ands r1, r2
	ldr r2, [sp, #0xc]
	lsls r2, r2, #0x16
	lsrs r2, r2, #0x13
	orrs r1, r2
	str r1, [r0]
	ldr r0, [r4, #0x14]
	movs r2, #4
	adds r0, r0, r5
	orrs r1, r2
	str r1, [r0, #4]
	add sp, #0x14
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	thumb_func_start sub_8002230
sub_8002230
	push {r4, r5}
	ldr r1, [r1]
	ldr r2, [r2, #0x30]
	lsls r3, r1, #0xc
	lsrs r4, r3, #0x1a
	lsls r3, r4, #1
	adds r3, r3, r4
	lsls r3, r3, #3
	adds r2, r2, r3
	ldrh r2, [r2, #4]
	lsls r1, r1, #0x12
	lsrs r1, r1, #0x12
	adds r1, r2, r1
	movs r2, #0x27
	lsls r2, r2, #6
	adds r2, r0, r2
	ldr r4, [r2, #0x3c]
	movs r5, #0x27
	lsls r5, r5, #6
	adds r0, r0, r5
	lsls r3, r4, #0x14
	lsrs r3, r3, #0x15
	cmp r3, r1
	ldr r0, [r0, #0x14]
	bne %3
	lsls r3, r1, #1
	adds r3, r3, r1
	lsls r3, r3, #2
	adds r3, r0, r3
	ldr r3, [r3, #4]
	ldr r5, _080023EC
	lsls r3, r3, #8
	lsrs r3, r3, #0x15
	lsls r3, r3, #1
	ands r4, r5
	orrs r3, r4
	str r3, [r2, #0x3c]
3
	lsls r3, r1, #1
	adds r1, r3, r1
	lsls r1, r1, #2
	adds r4, r0, r1
	ldr r3, [r4, #4]
	lsls r3, r3, #8
	lsrs r5, r3, #0x15
	beq %4
	lsrs r5, r3, #0x15
	lsls r3, r5, #1
	adds r3, r3, r5
	lsls r3, r3, #2
	adds r0, r3, r0
	adds r0, #8
	ldr r4, [r4, #8]
	ldr r3, [r0]
	lsls r4, r4, #0x15
	lsrs r4, r4, #0x15
	lsrs r3, r3, #0xb
	lsls r3, r3, #0xb
	orrs r3, r4
	str r3, [r0]
4
	ldr r4, [r2, #0x14]
	adds r0, r4, r1
	ldr r3, [r0, #8]
	lsls r5, r3, #0x15
	beq %5
	lsls r5, r3, #0x15
	lsrs r5, r5, #0x15
	lsls r3, r5, #1
	adds r3, r3, r5
	lsls r3, r3, #2
	adds r3, r3, r4
	ldr r0, [r0, #4]
	adds r3, #4
	ldr r4, [r3]
	ldr r5, _080023E8
	lsls r0, r0, #8
	lsrs r0, r0, #0x15
	lsls r0, r0, #0xd
	ands r4, r5
	orrs r0, r4
	str r0, [r3]
5
	ldr r0, [r2, #0x14]
	movs r2, #4
	adds r0, r0, r1
	adds r0, #4
	ldr r1, [r0]
	bics r1, r2
	str r1, [r0]
	pop {r4, r5}
	bx lr

	non_word_aligned_thumb_func_start sub_80022E2
sub_80022E2
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r0, _080023F4
	movs r2, #1
	ldr r1, [r0]
	lsls r2, r2, #0xb
	adds r1, r1, r2
	ldr r1, [r1, #0x28]
	lsls r2, r1, #0x1f
	bmi %12
	lsls r1, r1, #0x1e
	bmi %12
	movs r1, #0x27
	lsls r1, r1, #6
	adds r1, r5, r1
	str r1, [sp]
	ldr r1, [r1, #0x3c]
	lsls r2, r1, #0x14
	lsrs r1, r2, #0x15
	beq %12
	ldr r1, [sp]
	lsrs r2, r2, #0x15
	lsls r3, r2, #1
	adds r2, r3, r2
	ldr r1, [r1, #0x14]
	lsls r2, r2, #2
	adds r4, r1, r2
6
	ldr r6, [r4, #4]
	movs r3, #0x58
	lsls r0, r6, #0x1e
	lsrs r0, r0, #0x1e
	muls r0, r3
	ldr r2, [r4]
	movs r1, #0x21
	ldr r3, [r2]
	lsls r1, r1, #6
	adds r0, r0, r5
	lsls r3, r3, #0xc
	lsrs r7, r3, #0x1a
	adds r1, r0, r1
	lsls r3, r7, #1
	adds r3, r3, r7
	ldr r0, [r1, #0x30]
	lsls r3, r3, #3
	ldr r0, [r0, r3]
	lsls r0, r0, #0x19
	bpl %7
	ldr r0, _080023F4
	lsls r3, r6, #0x13
	ldr r0, [r0]
	ldr r6, [r1, #0x2c]
	lsrs r3, r3, #0x16
	bl __call_via_r6
7
	ldr r0, [sp]
	ldr r0, [r0, #0x14]
	ldr r1, [r4, #4]
	lsls r1, r1, #8
	lsrs r1, r1, #0x15
	lsls r3, r1, #1
	adds r1, r3, r1
	lsls r1, r1, #2
	adds r4, r0, r1
	cmp r0, r4
	bne %6
	ldr r1, [r5, #8]
	movs r0, #0
	cmp r1, #0
	beq %8
	ldrb r0, [r1]
8
	subs r0, #1
	bmi %12
	movs r7, #0x40
9
	movs r2, #0x58
	muls r2, r0
	adds r3, r2, r5
	movs r2, #0x11
	lsls r2, r2, #7
	adds r2, r3, r2
	ldr r4, [r2, #0x10]
	movs r1, #0
	ldr r4, [r4]
	lsls r4, r4, #6
	lsrs r4, r4, #0x1a
	beq %11
	movs r4, #0x21
	lsls r4, r4, #6
	adds r4, r3, r4
10
	lsls r3, r1, #1
	adds r3, r3, r1
	ldr r6, [r4, #0x30]
	lsls r3, r3, #3
	adds r3, r6, r3
	ldr r6, [r3]
	adds r1, #1
	bics r6, r7
	str r6, [r3]
	ldr r3, [r2, #0x10]
	ldr r3, [r3]
	lsls r3, r3, #6
	lsrs r3, r3, #0x1a
	cmp r3, r1
	bhi %10
11
	subs r0, #1
	bpl %9
12
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_80023BA
sub_80023BA
	push {r4, lr}
	movs r2, #0x13
	lsls r2, r2, #7
	adds r2, r0, r2
	ldr r2, [r2, #0x20]
	ldr r3, [r1]
	adds r2, #0x38
	ldr r4, [r2]
	ldr r1, [r1, #4]
	ldr r2, [r2, #4]
	subs r3, r3, r4
	subs r1, r1, r2
	sub sp, #8
	str r1, [sp, #4]
	mov r1, sp
	str r3, [sp]
	movs r2, #0
	bl sub_800DEF8
	add sp, #8
	pop {r4}
	pop {r3}
	bx r3
	ALIGN
_080023E8 DCDU 0xFF001FFF
_080023EC DCDU 0xFFFFF001
_080023F0 DCDU 0xFFFFE007
_080023F4 DCDU gUnknown_03003EB0
_080023F8 DCDU 0x43592358
_080023FC DCDU 0x495D1808
_08002400 DCDU 0x47701840
_08002404 DCDU 0x43592358
_08002408 DCDU 0x23011808
_0800240C DCDU 0x18C302DB
_08002410 DCDU 0x6F9CB410
_08002414 DCDU 0x01C92111
_08002418 DCDU 0x18416FDB
_0800241C DCDU 0x600C604B
_08002420 DCDU 0x18404954
_08002424 DCDU 0xC006CA06
_08002428 DCDU 0x4770BC10
	END
