	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_030033E8
	IMPORT __16__rt_memclr
	IMPORT sub_803F07C

	thumb_func_start sub_8005044
sub_8005044
	push {r4, lr}
	adds r4, r0, #0
	adds r1, #3
	lsrs r0, r1, #2
	lsrs r1, r2, #2
	lsls r1, r1, #2
	lsls r0, r0, #2
	stm r4!, {r0, r1}
	subs r4, #8
	movs r2, #0
	str r2, [r4, #0xc]
	subs r1, r1, r0
	bl __16__rt_memclr
	movs r2, #0
	movs r1, #0
	ldr r0, [r4]
	bl sub_803F07C
	ldr r0, [r4, #4]
	ldr r1, [r4]
	subs r0, #0xc
	movs r2, #0
	bl sub_803F07C
	ldr r0, [r4]
	str r4, [r0, #4]
	ldr r0, [r4]
	adds r0, #8
	ldr r1, [r0]
	lsrs r1, r1, #8
	lsls r1, r1, #8
	adds r1, #5
	str r1, [r0]
	ldr r0, [r4, #4]
	subs r0, #4
	ldr r1, [r0]
	lsrs r1, r1, #8
	lsls r1, r1, #8
	adds r1, #6
	str r1, [r0]
	movs r0, #0x18
	str r0, [r4, #0xc]
	ldr r0, [r4, #8]
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x1f
	adds r0, #4
	str r0, [r4, #8]
	pop {r4}
	pop {r3}
	movs r0, #1
	bx r3

	thumb_func_start sub_80050AC
sub_80050AC
	movs r1, #0
	str r1, [r0, #4]
	str r1, [r0]
	ldr r2, [r0, #8]
	movs r3, #1
	orrs r2, r3
	ands r2, r3
	str r1, [r0, #0xc]
	str r2, [r0, #8]
	bx lr

	thumb_func_start SomehowInitEWRAMLinkedList
SomehowInitEWRAMLinkedList
	push {r3, r4, r5, lr}
	cmp r1, #0
	bne %1
	subs r1, #4
	ldr r1, [r1, r0]
	lsrs r1, r1, #8
1
	movs r2, #0
	str r2, [r0, #4]
	str r2, [r0]
	ldr r3, [r0, #8]
	str r2, [r0, #0xc]
	movs r5, #1
	orrs r3, r5
	adds r2, r0, r1
	adds r4, r0, #0
	adds r1, r4, #0
	ands r3, r5
	str r3, [r0, #8]
	adds r1, #0x10
	adds r0, r4, #0
	bl sub_8005044
	adds r0, r4, #0
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	thumb_func_start sub_80050F4
sub_80050F4
	ldr r0, _08005258
	ldr r0, [r0, #4]
	bx lr

	non_word_aligned_thumb_func_start sub_80050FA
sub_80050FA
	ldr r1, _08005258
	cmp r0, #0
	bne %2
	ldr r0, [r1, #4]
2
	str r0, [r1, #8]
	bx lr

	non_word_aligned_thumb_func_start GetEWRAMStart
GetEWRAMStart
	ldr r0, _08005258
	ldr r0, [r0, #8]
	bx lr

	thumb_func_start sub_800510C
sub_800510C
	ldr r2, [r0]
	cmp r2, r1
	bhi %3
	ldr r0, [r0, #4]
	cmp r0, r1
	bls %3
	movs r0, #1
	bx lr
3
	movs r0, #0
	bx lr

	thumb_func_start sub_8005120
sub_8005120
	subs r0, #0xc
	ldr r1, [r0, #8]
	lsrs r1, r1, #8
	beq %5
4
	ldr r0, [r0, #4]
	ldr r1, [r0, #8]
	lsrs r1, r1, #8
	bne %4
5
	ldr r0, [r0, #4]
	bx lr

	thumb_func_start sub_8005134
sub_8005134
	ldr r2, [r0, #8]
	lsls r3, r2, #0x1f
	lsrs r3, r3, #0x1f
	cmp r3, r1
	beq %6
	lsrs r2, r2, #1
	lsls r2, r2, #1
	orrs r2, r1
	str r2, [r0, #8]
	cmp r1, #0
	bne %6
	str r1, [r0]
	lsls r2, r2, #0x1f
	lsrs r2, r2, #0x1f
	str r1, [r0, #4]
	str r2, [r0, #8]
	str r1, [r0, #0xc]
6
	bx lr

	thumb_func_start sub_8005158
sub_8005158
	ldr r0, [r0, #8]
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x1f
	bx lr

	thumb_func_start sub_8005160
sub_8005160
	ldr r0, [r0, #0xc]
	bx lr

	thumb_func_start sub_8005164
sub_8005164
	ldr r1, [r0, #4]
	ldr r2, [r0]
	ldr r0, [r0, #0xc]
	subs r1, r1, r2
	subs r0, r1, r0
	bx lr

	thumb_func_start sub_8005170
sub_8005170
	push {r3, r4, r5, lr}
	ldr r0, [r0]
	adds r2, r1, #7
	lsrs r2, r2, #3
	ldr r4, [r0]
	lsls r2, r2, #3
	movs r3, #0
	cmp r4, #0
	beq %9
	adds r5, r2, #0
	adds r5, #0xc
7
	ldr r2, [r0, #8]
	ldr r4, [r0]
	lsrs r2, r2, #8
	adds r2, #7
	lsrs r2, r2, #3
	lsls r2, r2, #3
	adds r2, r2, r0
	adds r2, #0xc
	subs r2, r4, r2
	cmp r3, r2
	bge %8
	adds r3, r2, #0
8
	cmp r2, r5
	blt %11
	ldr r2, [r0, #8]
	lsrs r2, r2, #8
	adds r2, #7
	lsrs r2, r2, #3
	lsls r2, r2, #3
	adds r4, r2, r0
	adds r2, r1, #0
	adds r1, r0, #0
	adds r4, #0xc
	adds r0, r4, #0
	bl sub_803F07C
	ldr r0, [r4]
	cmp r0, #0
	bne %12
9
	movs r0, #0
10
	pop {r3, r4, r5}
	pop {r3}
	bx r3
11
	ldr r2, [r4]
	adds r0, r4, #0
	cmp r2, #0
	beq %9
	b %7
12
	adds r0, r4, #0
	b %10

	non_word_aligned_thumb_func_start sub_80051D6
sub_80051D6
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r0, #8]
	adds r5, r2, #0
	lsls r0, r0, #0x1f
	bmi %14
	movs r0, #0
13
	pop {r3, r4, r5}
	pop {r3}
	bx r3
14
	adds r0, r4, #0
	bl sub_8005170
	ldr r1, [r0, #8]
	ldr r2, [r4, #0xc]
	lsrs r1, r1, #8
	adds r1, #7
	lsrs r1, r1, #3
	lsls r1, r1, #3
	adds r1, #0xc
	adds r1, r1, r2
	str r1, [r4, #0xc]
	ldr r1, [r4, #8]
	lsls r2, r1, #0x1f
	adds r1, #2
	lsrs r1, r1, #1
	lsls r1, r1, #1
	lsrs r2, r2, #0x1f
	orrs r1, r2
	str r1, [r4, #8]
	ldr r1, [r0, #8]
	lsrs r1, r1, #8
	lsls r1, r1, #8
	orrs r1, r5
	str r1, [r0, #8]
	adds r0, #0xc
	b %13

	thumb_func_start sub_8005220
sub_8005220
	ldr r2, [r0, #8]
	lsls r2, r2, #0x1f
	bpl %15
	subs r1, #0xc
	ldr r2, [r1, #8]
	ldr r3, [r0, #0xc]
	lsrs r2, r2, #8
	adds r2, #7
	lsrs r2, r2, #3
	lsls r2, r2, #3
	adds r2, #0xc
	subs r2, r3, r2
	str r2, [r0, #0xc]
	ldm r1!, {r2, r3}
	subs r1, #8
	str r2, [r3]
	ldm r1!, {r1, r2}
	str r2, [r1, #4]
	ldr r1, [r0, #8]
	lsls r2, r1, #0x1f
	subs r1, #2
	lsrs r1, r1, #1
	lsrs r2, r2, #0x1f
	lsls r1, r1, #1
	orrs r1, r2
	str r1, [r0, #8]
15
	bx lr
	ALIGN
_08005258 DCDU gUnknown_030033E8
	END
