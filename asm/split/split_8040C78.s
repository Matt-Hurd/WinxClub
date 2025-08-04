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
sub_8040C78
	ldr r2, _08041010
	push {r4, r5, r6, r7, lr}
	ldrb r0, [r2, #5]
	sub sp, #0xc
	cmp r0, #0
	beq %2
	adds r0, #0xff
	strb r0, [r2, #5]
1
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
2
	ldr r2, _08041010
	ldr r6, _08041010
	ldrh r0, [r2, #0xc]
	adds r6, #0x30
	ldr r4, _08041018
	adds r1, r0, #1
	strh r1, [r2, #0xc]
	ldr r1, [r2, #0x28]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0, #4]
	ldr r1, _08041014
	cmp r0, #0
	str r1, [sp, #8]
	beq %19
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
	bls %20
3
	ldrb r2, [r5]
	ldr r3, [sp, #4]
	movs r1, #0
	adds r0, r1, #0
	ands r2, r3
	beq %4
	ldrb r0, [r7]
	adds r7, #1
4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	strb r0, [r6]
	mov lr, r0
	ldr r0, [sp, #4]
	cmp r0, #1
	bls %5
	ldr r0, [sp, #4]
	lsrs r0, r0, #1
	b %6
5
	movs r0, #0x80
	adds r5, #1
6
	ldrb r3, [r5]
	adds r2, r1, #0
	ands r3, r0
	beq %7
	ldrb r2, [r7]
	adds r7, #1
7
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	strb r2, [r6, #1]
	mov ip, r2
	cmp r0, #1
	bls %8
	lsrs r0, r0, #1
	b %9
8
	movs r0, #0x80
	adds r5, #1
9
	ldrb r3, [r5]
	adds r2, r1, #0
	ands r3, r0
	beq %10
	ldrb r2, [r7]
	adds r7, #1
10
	strh r2, [r6, #2]
	cmp r0, #1
	bls %11
	lsrs r0, r0, #1
	b %12
11
	movs r0, #0x80
	adds r5, #1
12
	ldrb r3, [r5]
	adds r2, r1, #0
	ands r3, r0
	beq %13
	ldrb r2, [r7]
	adds r7, #1
13
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	adds r3, r2, #0
	cmp r0, #1
	strh r2, [r6, #4]
	bls %14
	lsrs r0, r0, #1
	b %15
14
	movs r0, #0x80
	adds r5, #1
15
	ldrb r2, [r5]
	movs r1, #0
	ands r2, r0
	beq %16
	ldrb r1, [r7]
	adds r7, #1
16
	strh r1, [r6, #6]
	cmp r0, #1
	bls %17
	lsrs r0, r0, #1
	str r0, [sp, #4]
	b %18
17
	movs r0, #0x80
	str r0, [sp, #4]
	adds r5, #1
18
	ldr r0, [sp, #8]
	ldrb r0, [r0, #0xf]
	ldr r1, [sp]
	cmp r0, r1
	bls %27
	mov r0, ip
	cmp r0, #0
	mov ip, r3
	mov r1, lr
	beq %25
	ldr r2, _08041010
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
	b %21
19
	b %49
20
	b %51
21
	adds r2, #0xc0
	strb r2, [r4, #0x10]
	ldrh r2, [r4, #4]
	movs r3, #0x10
	orrs r2, r3
	strh r2, [r4, #4]
	ldrb r2, [r0, #0xf]
	cmp r1, #0
	strb r2, [r4, #0xe]
	beq %24
	mov r2, ip
	cmp r2, #3
	beq %26
	mov r2, ip
	cmp r2, #5
	beq %26
	ldr r2, [r0, #8]
	adds r1, r0, #0
	adds r1, #0x7c
	cmp r2, #0
	str r2, [r4, #0x30]
	beq %22
	adds r3, r0, #4
	ldm r3!, {r2, r3}
	adds r2, r2, r3
	adds r2, r2, r1
	b %23
22
	ldr r2, [r0]
	adds r2, r2, r1
23
	movs r3, #0xe
	ldrsb r0, [r0, r3]
	strh r0, [r4, #0x12]
	str r1, [r4, #0x48]
	movs r1, #0
	str r1, [r4, #0x40]
	str r2, [r4, #0x3c]
	b %26
24
	ldr r0, _0804101C
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
	b %26
25
	cmp r1, #0
	beq %26
	cmp r1, #0x61
	beq %26
	mov r2, ip
	cmp r2, #0
	bne %26
	ldr r0, [r4, #8]
	cmp r0, #0
	beq %26
	adds r0, #0x7c
	str r0, [r4, #0x48]
	movs r1, #0
	str r1, [r4, #0x40]
26
	ldrb r0, [r6]
	cmp r0, #0
	beq %31
	ldrh r1, [r6, #4]
	cmp r0, #0x61
	bne %29
	ldr r0, [r4, #8]
	cmp r0, #0
	beq %28
	ldrb r0, [r0, #0x14]
	cmp r0, #0
	beq %28
	ldrh r0, [r4, #4]
	movs r1, #4
	orrs r0, r1
	strh r0, [r4, #4]
	b %31
27
	b %47
28
	movs r0, #1
	strh r0, [r4, #4]
	b %31
29
	cmp r1, #3
	beq %30
	cmp r1, #5
	beq %30
	strb r0, [r4, #0xc]
	strb r0, [r4, #0xd]
	movs r1, #0
	strh r1, [r4, #0x14]
	ldr r0, _0804101C
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
	b %31
30
	strb r0, [r4, #0x11]
31
	ldrh r0, [r6, #2]
	cmp r0, #0
	beq %38
	adds r1, r0, #0
	subs r1, #0x10
	cmp r1, #0x40
	bhi %32
	strb r1, [r4, #0xf]
	ldrh r0, [r4, #4]
	movs r3, #0x10
	orrs r0, r3
	strh r0, [r4, #4]
	b %38
32
	adds r1, r0, #0
	subs r1, #0x61
	cmp r1, #0xe
	bhi %34
	ldrb r1, [r4, #0xf]
	adds r0, #0x20
	lsls r0, r0, #2
	subs r0, r1, r0
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	strb r0, [r4, #0xf]
	bpl %33
	movs r1, #0
	strb r1, [r4, #0xf]
33
	ldrh r0, [r4, #4]
	movs r3, #0x10
	orrs r0, r3
	strh r0, [r4, #4]
	b %38
34
	adds r1, r0, #0
	subs r1, #0x71
	cmp r1, #0xe
	bhi %36
	ldrb r1, [r4, #0xf]
	adds r0, #0x10
	lsls r0, r0, #2
	adds r0, r1, r0
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	strb r0, [r4, #0xf]
	cmp r0, #0x40
	ble %35
	movs r0, #0x40
	strb r0, [r4, #0xf]
35
	ldrh r0, [r4, #4]
	movs r3, #0x10
	orrs r0, r3
	strh r0, [r4, #4]
	b %38
36
	adds r1, r0, #0
	subs r1, #0x81
	cmp r1, #0xe
	bhi %39
	ldrb r1, [r4, #0xf]
	adds r0, #0x80
	subs r0, r1, r0
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	strb r0, [r4, #0xf]
	bpl %37
	movs r1, #0
	strb r1, [r4, #0xf]
37
	ldrh r0, [r4, #4]
	movs r3, #0x10
	orrs r0, r3
	strh r0, [r4, #4]
38
	b %46
39
	adds r1, r0, #0
	subs r1, #0x91
	cmp r1, #0xe
	bhi %41
	ldrb r1, [r4, #0xf]
	adds r0, r1, r0
	adds r0, #0x70
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	strb r0, [r4, #0xf]
	cmp r0, #0x40
	ble %40
	movs r0, #0x40
	strb r0, [r4, #0xf]
40
	ldrh r0, [r4, #4]
	movs r3, #0x10
	orrs r0, r3
	strh r0, [r4, #4]
	b %46
41
	adds r1, r0, #0
	subs r1, #0xc0
	cmp r1, #0xf
	bhi %42
	lsls r0, r1, #3
	adds r0, #0xc0
	strb r0, [r4, #0x10]
	ldrh r0, [r4, #4]
	movs r3, #0x10
	orrs r0, r3
	strh r0, [r4, #4]
	b %46
42
	adds r1, r0, #0
	subs r1, #0xd1
	cmp r1, #0xe
	bhi %44
	ldrb r1, [r4, #0x10]
	adds r0, #0x30
	subs r0, r1, r0
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r1, #0x3f
	mvns r1, r1
	cmp r0, r1
	strb r0, [r4, #0x10]
	bge %43
	strb r1, [r4, #0x10]
43
	ldrh r0, [r4, #4]
	movs r3, #0x10
	orrs r0, r3
	strh r0, [r4, #4]
	b %46
44
	adds r1, r0, #0
	subs r1, #0xe1
	cmp r1, #0xe
	bhi %46
	ldrb r1, [r4, #0x10]
	adds r0, r1, r0
	adds r0, #0x20
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	strb r0, [r4, #0x10]
	cmp r0, #0x40
	ble %45
	movs r0, #0x40
	strb r0, [r4, #0x10]
45
	ldrh r0, [r4, #4]
	movs r3, #0x10
	orrs r0, r3
	strh r0, [r4, #4]
46
	adds r1, r6, #0
	adds r0, r4, #0
	bl sub_8040708
	adds r0, r4, #0
	bl sub_8040978
47
	ldr r1, [sp]
	ldr r2, _08041010
	adds r1, #1
	str r1, [sp]
	ldrb r0, [r2, #2]
	adds r6, #8
	adds r4, #0x4c
	cmp r0, r1
	bls %48
	b %3
48
	b %51
49
	movs r0, #0
	str r0, [sp]
	ldr r0, _08041010
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
	bls %51
	adds r5, r4, #0
50
	adds r0, r4, #0
	bl sub_8040978
	ldr r0, [sp, #8]
	movs r3, #0x4c
	ldrb r0, [r0, #0xf]
	adds r4, #0x4c
	muls r0, r3
	adds r0, r0, r5
	cmp r0, r4
	bhi %50
51
	ldr r2, _08041010
	ldr r1, [r2, #0x28]
	ldrh r0, [r2, #0xc]
	ldr r1, [r1]
	cmp r0, r1
	bhs %52
	b %1
52
	movs r0, #0
	bl sub_8040C38
	b %1
	ALIGN
_08041010 DCDU gUnknown_03003BC8
_08041014 DCDU gUnknown_03003530
_08041018 DCDU gUnknown_030037A0
_0804101C DCDU 0x0000FFFF
	END
