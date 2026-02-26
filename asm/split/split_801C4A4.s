	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT __call_via_r1
	IMPORT __call_via_r4
	IMPORT __call_via_r6
	IMPORT __call_via_r7

	thumb_func_start sub_801C4A4

sub_801C4A4
	push {r4, r5, r6, r7, lr}
	mov lr, r1
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r4, [r1, #0x20]
	sub sp, #0x14
	ldr r1, [r4, #0x7c]
	movs r2, #5
	lsls r2, r2, #8
	movs r5, #0
	str r1, [sp, #0x10]
	lsrs r1, r1, #0x1f
	mvns r5, r5
	adds r6, r0, r2
	cmp r1, #0
	beq %13
	ldr r2, [r6, #0x1c]
	movs r1, #0
	lsls r2, r2, #0x18
	str r2, [sp, #0xc]
	lsrs r2, r2, #0x19
	beq %14
1
	lsls r2, r1, #2
	adds r2, r2, r0
	ldr r5, [r2, #0x20]
	ldr r3, [r5, #0x2c]
	ldr r2, [r3]
	mov ip, r3
	lsls r2, r2, #0x16
	lsrs r2, r2, #0x1f
	bne %15
	movs r2, #0x8c
	ldr r2, [r2, r5]
	lsls r2, r2, #0x13
	lsrs r2, r2, #0x1f
	beq %15
	cmp lr, r1
	beq %15
	ldr r2, [r4, #0x34]
	movs r6, #0
2
	lsls r3, r6, #2
	adds r3, r3, r5
	ldr r3, [r3, #0x38]
	cmp r3, #0
	beq %3
	ldr r3, [r3, #4]
	cmp r3, r2
	beq %4
3
	adds r6, #1
	cmp r6, #5
	blo %2
	movs r6, #0
	mvns r6, r6
4
	adds r3, r6, #1
	beq %18
	lsls r3, r6, #2
	adds r3, r3, r5
	ldr r3, [r3, #0x38]
	ldr r3, [r3, #4]
	cmp r2, r3
	bne %15
	movs r0, #0x97
	ldrb r0, [r0, r4]
	cmp r0, #4
	beq %5
	cmp r0, #6
	bne %6
5
	movs r1, #1
	b %7
6
	movs r1, #0
7
	movs r0, #0x97
	ldrb r0, [r0, r5]
	cmp r0, #4
	beq %8
	cmp r0, #6
	bne %9
8
	movs r0, #1
	b %10
9
	movs r0, #0
10
	adds r0, r1, r0
	cmp r0, #1
	beq %12
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x34]
	movs r7, #0
	adds r4, r2, r1
	movs r2, #1
	adds r1, r5, #0
	adds r3, r7, #0
	bl __call_via_r4
	lsls r0, r6, #2
	adds r0, r0, r5
	ldr r0, [r0, #0x38]
	movs r2, #1
	ldr r1, [r0, #0x34]
	lsls r2, r2, #0x14
	bics r1, r2
	str r1, [r0, #0x34]
	str r7, [r0, #0xc]
11
	add sp, #0x14
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
12
	lsls r0, r6, #2
	adds r6, r0, r5
	ldr r0, [r6, #0x38]
	ldr r1, [r0]
	ldr r2, [r1, #0x1c]
	adds r1, r2, r1
	bl __call_via_r1
	adds r3, r0, #0
	ldr r0, [r4]
	movs r2, #1
	ldr r1, [r0, #0x34]
	adds r7, r1, r0
	adds r1, r5, #0
	adds r0, r4, #0
	bl __call_via_r7
	cmp r0, #0
	ldr r0, [r6, #0x38]
	beq %17
	ldr r1, [r0]
	ldr r2, [r1, #0x20]
	adds r1, r2, r1
	bl __call_via_r1
	b %16
13
	b %29
14
	b %28
15
	b %27
16
	b %11
17
	movs r2, #1
	ldr r1, [r0, #0x34]
	lsls r2, r2, #0x14
	bics r1, r2
	str r1, [r0, #0x34]
	movs r6, #0
	str r6, [r0, #0xc]
	b %11
18
	ldr r3, [r5, #0x30]
	cmp r2, r3
	beq %19
	cmp r2, ip
	bne %27
19
	movs r0, #0x97
	ldrb r0, [r0, r4]
	cmp r0, #4
	beq %20
	cmp r0, #6
	bne %21
20
	movs r1, #1
	b %22
21
	movs r1, #0
22
	movs r0, #0x97
	ldrb r0, [r0, r5]
	cmp r0, #4
	beq %23
	cmp r0, #6
	bne %24
23
	movs r0, #1
	b %25
24
	movs r0, #0
25
	adds r0, r1, r0
	cmp r0, #1
	beq %26
	ldr r1, [r4]
	movs r6, #0
	ldr r2, [r1, #0x34]
	adds r3, r6, #0
	adds r7, r2, r1
	movs r2, #0
	adds r0, r4, #0
	adds r1, r5, #0
	bl __call_via_r7
	ldr r1, [r5]
	adds r0, r5, #0
	ldr r2, [r1, #0x34]
	adds r3, r6, #0
	adds r7, r2, r1
	movs r2, #0
	adds r1, r4, #0
	bl __call_via_r7
	b %11
26
	ldr r1, [r4]
	movs r6, #1
	ldr r2, [r1, #0x34]
	adds r3, r6, #0
	adds r7, r2, r1
	movs r2, #0
	adds r0, r4, #0
	adds r1, r5, #0
	bl __call_via_r7
	ldr r1, [r5]
	adds r0, r5, #0
	ldr r2, [r1, #0x34]
	adds r3, r6, #0
	adds r7, r2, r1
	movs r2, #0
	adds r1, r4, #0
	bl __call_via_r7
	b %11
27
	ldr r2, [sp, #0xc]
	adds r1, #1
	lsrs r2, r2, #0x19
	cmp r2, r1
	bls %28
	b %1
28
	ldr r1, [sp, #0x10]
	lsls r0, r1, #1
	lsrs r0, r0, #1
	str r0, [r4, #0x7c]
	movs r6, #0
	str r6, [r4, #0x34]
	b %11
29
	movs r1, #0
30
	lsls r2, r1, #2
	adds r2, r2, r4
	ldr r2, [r2, #0x38]
	cmp r2, #0
	beq %31
	ldr r2, [r2, #0x34]
	lsls r2, r2, #0xb
	lsrs r2, r2, #0x1f
	bne %32
31
	adds r1, #1
	cmp r1, #5
	blo %30
	adds r1, r5, #0
32
	adds r3, r1, #1
	beq %16
	lsls r1, r1, #2
	adds r7, r1, r4
	ldr r1, [r7, #0x38]
	ldr r2, [r1, #0xc]
	ldr r3, [r6, #0x1c]
	mov ip, r1
	lsls r3, r3, #0x18
	str r3, [sp, #8]
	movs r1, #0
	lsrs r3, r3, #0x19
	beq %45
33
	lsls r3, r1, #2
	adds r3, r3, r0
	ldr r5, [r3, #0x20]
	ldr r3, [r5, #0x2c]
	str r3, [sp, #4]
	ldr r3, [r3]
	lsls r3, r3, #0x16
	lsrs r3, r3, #0x1f
	bne %47
	movs r3, #0x8c
	ldr r3, [r3, r5]
	lsls r3, r3, #0x13
	lsrs r3, r3, #0x1f
	beq %47
	cmp lr, r1
	beq %47
	movs r6, #0
34
	lsls r3, r6, #2
	adds r3, r3, r5
	ldr r3, [r3, #0x38]
	cmp r3, #0
	beq %35
	ldr r3, [r3, #4]
	cmp r3, r2
	beq %36
35
	adds r6, #1
	cmp r6, #5
	blo %34
	movs r6, #0
	mvns r6, r6
36
	adds r3, r6, #1
	beq %37
	lsls r3, r6, #2
	adds r3, r3, r5
	ldr r3, [r3, #0x38]
	ldr r3, [r3, #4]
	cmp r3, r2
	bne %47
	mov r0, ip
	ldr r0, [r0]
	ldr r1, [r0, #0x20]
	adds r1, r1, r0
	mov r0, ip
	bl __call_via_r1
	lsls r0, r6, #2
	adds r0, r0, r5
	ldr r0, [r0, #0x38]
	ldr r1, [r0]
	ldr r2, [r1, #0x20]
	adds r1, r2, r1
	bl __call_via_r1
	b %11
37
	ldr r3, [r5, #0x30]
	cmp r3, r2
	beq %38
	ldr r3, [sp, #4]
	cmp r3, r2
	bne %47
38
	movs r0, #0x97
	ldrb r0, [r0, r4]
	cmp r0, #4
	beq %39
	cmp r0, #6
	bne %40
39
	movs r1, #1
	b %41
40
	movs r1, #0
41
	movs r0, #0x97
	ldrb r0, [r0, r5]
	cmp r0, #4
	beq %42
	cmp r0, #6
	bne %43
42
	movs r0, #1
	b %44
43
	movs r0, #0
44
	adds r0, r1, r0
	cmp r0, #1
	beq %48
	ldr r1, [r5]
	adds r0, r5, #0
	ldr r2, [r1, #0x34]
	movs r6, #0
	adds r3, r2, r1
	adds r1, r4, #0
	adds r4, r3, #0
	movs r2, #1
	adds r3, r6, #0
	bl __call_via_r4
	cmp r0, #0
	ldr r0, [r7, #0x38]
	beq %46
	ldr r1, [r0]
	ldr r2, [r1, #0x20]
	adds r1, r2, r1
	bl __call_via_r1
	b %11
45
	b %51
46
	movs r2, #1
	ldr r1, [r0, #0x34]
	lsls r2, r2, #0x14
	bics r1, r2
	str r1, [r0, #0x34]
	str r6, [r0, #0xc]
	b %11
47
	b %50
48
	mov r0, ip
	ldr r0, [r0]
	ldr r1, [r0, #0x1c]
	adds r1, r1, r0
	mov r0, ip
	bl __call_via_r1
	adds r3, r0, #0
	ldr r0, [r5]
	movs r2, #1
	ldr r1, [r0, #0x34]
	adds r6, r1, r0
	adds r1, r4, #0
	adds r0, r5, #0
	bl __call_via_r6
	cmp r0, #0
	ldr r0, [r7, #0x38]
	beq %49
	ldr r1, [r0]
	ldr r2, [r1, #0x20]
	adds r1, r2, r1
	bl __call_via_r1
	b %11
49
	movs r2, #1
	ldr r1, [r0, #0x34]
	lsls r2, r2, #0x14
	bics r1, r2
	str r1, [r0, #0x34]
	movs r6, #0
	str r6, [r0, #0xc]
	b %11
50
	ldr r3, [sp, #8]
	adds r1, #1
	lsrs r3, r3, #0x19
	cmp r3, r1
	bls %51
	b %33
51
	mov r0, ip
	ldr r1, [r0, #0x34]
	movs r2, #1
	lsls r2, r2, #0x14
	bics r1, r2
	str r1, [r0, #0x34]
	movs r6, #0
	str r6, [r0, #0xc]
	b %11

	END
