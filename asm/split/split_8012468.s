	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_080503D6
	IMPORT sub_80301E8
	IMPORT gUnknown_03002F48

	thumb_func_start sub_8012468
sub_8012468
	push {r4, r5, r6, lr}
	adds r4, r2, #0
	ldr r2, [r0, #0x34]
	adds r6, r0, #0
	adds r5, r1, #0
	cmp r2, r4
	blo %2
	adds r2, r4, #0
	adds r1, r5, #0
	adds r0, r6, #0
	bl gUnknown_03002F48
1
	pop {r4, r5, r6}
	pop {r3}
	bx r3
2
	cmp r2, #0
	beq %3
	lsrs r0, r2, #1
	lsls r0, r0, #1
	adds r1, r5, #0
	adds r5, r0, r5
	subs r4, r4, r2
	adds r0, r6, #0
	bl gUnknown_03002F48
3
	adds r0, r6, #0
	bl sub_80124C8
	ldr r2, [r6, #0x34]
	cmp r2, r4
	blo %4
	adds r2, r4, #0
	adds r1, r5, #0
	adds r0, r6, #0
	bl gUnknown_03002F48
	b %1
4
	lsrs r0, r2, #1
	lsls r0, r0, #1
	adds r1, r5, #0
	adds r5, r0, r5
	subs r4, r4, r2
	adds r0, r6, #0
	bl gUnknown_03002F48
	cmp r4, #0
	bne %3
	b %1

	thumb_func_start sub_80124C8
sub_80124C8
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r5, r0, #0
	ldr r0, [r0, #0x20]
	adds r4, #0x1c
	movs r7, #1
	cmp r0, #1
	bhs %5
	adds r0, r4, #0
	bl sub_80301E8
5
	ldr r0, [r4]
	lsrs r0, r0, #0x1f
	bne %11
	ldr r0, [r4, #4]
	ldr r1, [r4, #0xc]
	adds r1, r0, r1
	lsls r6, r1, #0x1b
	lsrs r6, r6, #0x1b
	cmp r0, r6
	bhs %6
	adds r0, r4, #0
	bl sub_80301E8
6
	ldr r0, [r4, #4]
	subs r0, r0, r6
	str r0, [r4, #4]
	ldr r0, [r4]
	lsls r0, r6
	str r0, [r4]
	ldr r0, [r4, #4]
	cmp r0, #1
	bhs %7
	adds r0, r4, #0
	bl sub_80301E8
7
	ldr r0, [r4, #4]
	subs r0, #1
	str r0, [r4, #4]
	ldr r0, [r4]
	lsls r0, r0, #1
	str r0, [r4]
	ldr r0, [r4, #4]
	cmp r0, #0x18
	bhs %8
	adds r0, r4, #0
	bl sub_80301E8
8
	ldr r1, [r4, #4]
	ldr r0, [r4]
	subs r1, #0x18
	str r1, [r4, #4]
	ldr r1, [r4]
	asrs r0, r0, #8
	lsls r1, r1, #0x18
	str r1, [r4]
	str r0, [r5]
	movs r0, #0
	movs r2, #0
9
	lsls r1, r0, #2
	adds r1, r1, r5
	str r2, [r1, #0x18]
	adds r0, #1
	cmp r0, #1
	str r7, [r1, #4]
	blo %9
	movs r0, #0
10
	lsls r1, r0, #2
	adds r1, r1, r5
	str r2, [r1, #0x10]
	str r7, [r1, #8]
	adds r1, r5, r0
	adds r1, #0x70
	adds r0, #1
	cmp r0, #2
	strb r2, [r1, #0xc]
	blo %10
	b %13
11
	ldr r0, [r4, #4]
	cmp r0, #1
	bhs %12
	adds r0, r4, #0
	bl sub_80301E8
12
	ldr r0, [r4, #4]
	subs r0, #1
	str r0, [r4, #4]
	ldr r0, [r4]
	lsls r0, r0, #1
	str r0, [r4]
13
	ldr r3, _0801266C
	movs r6, #0
	str r3, [sp]
14
	ldr r0, [r4, #4]
	cmp r0, #4
	bhs %15
	adds r0, r4, #0
	bl sub_80301E8
15
	ldr r0, [r4]
	lsrs r0, r0, #0x1c
	cmp r0, #0xb
	bhi %17
	ldr r2, _0801266C
	lsls r0, r0, #1
	adds r2, #7
	ldrb r1, [r2, r0]
	ldr r3, [sp]
	adds r0, r0, r2
	ldrb r1, [r3, r1]
	adds r3, r5, r6
	adds r3, #0x30
	strb r1, [r3, #0xc]
	ldrb r7, [r0, #1]
	ldr r0, [r4, #4]
	cmp r0, r7
	bhs %16
	adds r0, r4, #0
	bl sub_80301E8
16
	ldr r0, [r4, #4]
	subs r0, r0, r7
	str r0, [r4, #4]
	ldr r0, [r4]
	lsls r0, r7
	str r0, [r4]
	b %22
17
	ldr r0, [r4, #4]
	cmp r0, #2
	bhs %18
	adds r0, r4, #0
	bl sub_80301E8
18
	ldr r0, [r4, #4]
	subs r0, #2
	str r0, [r4, #4]
	ldr r1, [r4]
	lsls r1, r1, #2
	str r1, [r4]
	cmp r0, #5
	bhs %19
	adds r0, r4, #0
	bl sub_80301E8
19
	ldr r0, [r4]
	ldr r3, [r4, #4]
	lsrs r1, r0, #0x1e
	lsls r0, r0, #2
	subs r3, #4
	mov lr, r3
	lsls r3, r0, #2
	lsrs r2, r0, #0x1e
	movs r7, #1
	adds r0, r7, #0
	lsls r0, r1
	lsls r7, r2
	orrs r0, r7
	lsrs r7, r3, #0x1f
	mov ip, r7
	mov r7, lr
	subs r7, #1
	lsls r3, r3, #1
	stm r4!, {r3, r7}
	subs r4, #8
	mov r7, ip
	cmp r7, #0
	beq %20
	ldr r7, _0801266C
	lsls r3, r0, #0x1e
	lsrs r3, r3, #0x1e
	subs r7, #4
	ldrb r3, [r7, r3]
	lsrs r0, r0, #2
	lsls r7, r3, #0x1e
	ldr r3, _0801266C
	lsrs r7, r7, #0x1e
	subs r3, #4
	ldrb r0, [r3, r0]
	lsrs r3, r0, #2
	b %21
20
	ldr r7, _0801266C
	lsls r3, r0, #0x1e
	lsrs r3, r3, #0x1e
	subs r7, #4
	ldrb r3, [r7, r3]
	lsrs r0, r0, #2
	ldrb r0, [r7, r0]
	lsls r3, r3, #0x1e
	lsrs r3, r3, #0x1e
	lsrs r7, r0, #2
21
	lsls r0, r2, #2
	orrs r0, r1
	lsls r1, r3, #4
	orrs r0, r1
	lsls r1, r7, #6
	orrs r0, r1
	adds r1, r5, r6
	adds r1, #0x30
	strb r0, [r1, #0xc]
22
	adds r6, #1
	cmp r6, #0x40
	blo %14
	ldr r0, _08012670
	movs r2, #0
	adds r5, #0x34
	stm r5!, {r0, r2}
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
	ALIGN
_0801266C DCDU gUnknown_080503D6
_08012670 DCDU 0x0000404A
	END
