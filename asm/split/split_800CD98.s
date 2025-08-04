	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_03003EB0
	IMPORT gUnknown_08041448
	IMPORT gUnknown_08041468
	IMPORT gUnknown_08041488
	IMPORT gUnknown_080414A8
	IMPORT sub_8001BB4
	IMPORT sub_80025D6
	IMPORT sub_800263E
	IMPORT sub_8002698
	IMPORT sub_800288A
	IMPORT __call_via_r3
	IMPORT __16__rt_memclr_w
	IMPORT __16__rt_memcpy
	IMPORT __16__rt_memset
	IMPORT CpuSet
	IMPORT sub_803D5A4
	IMPORT sub_803D984
	IMPORT sub_803D9A8
	IMPORT sub_803D9C4
	IMPORT sub_8040490
	
	thumb_func_start sub_800CD98
sub_800CD98
	push {r3, r4, r5, r6, r7, lr}
	ldrb r0, [r1, #0x10]
	adds r6, r3, #0
	adds r5, r2, #0
	adds r4, r1, #0
	cmp r0, #0
	beq %5
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq %5
	movs r7, #0xff
	adds r7, #1
	movs r2, #0
	movs r1, #0
	adds r0, r7, #0
	bl sub_803D984
	adds r2, r7, #0
	movs r1, #0xff
	str r0, [r5]
	bl __16__rt_memset
	ldrb r1, [r4, #0x10]
	movs r0, #0
	cmp r1, #0
	bls %2
	movs r3, #0
1
	ldr r2, [r4, #0x14]
	ldr r1, [r5]
	ldrb r2, [r2, r0]
	adds r0, #1
	strb r3, [r1, r2]
	ldrb r1, [r4, #0x10]
	cmp r1, r0
	bhi %1
2
	movs r1, #0
	movs r0, #0
3
	ldr r2, [r5]
	ldrb r3, [r2, r0]
	cmp r3, #0xff
	beq %4
	adds r3, r1, #1
	lsls r3, r3, #0x18
	adds r7, r1, #0
	lsrs r3, r3, #0x18
	adds r1, r3, #0
	strb r7, [r2, r0]
4
	movs r2, #0xff
	adds r2, #1
	adds r0, #1
	cmp r0, r2
	blo %3
5
	ldrb r0, [r4, #0x18]
	cmp r0, #0
	beq %6
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	bne %7
6
	ldr r0, [r4, #0x24]
	cmp r0, #0
	beq %12
7
	movs r7, #0xff
	adds r7, #1
	movs r2, #0
	movs r1, #0
	adds r0, r7, #0
	bl sub_803D984
	adds r2, r7, #0
	movs r1, #0xff
	str r0, [r6]
	bl __16__rt_memset
	ldr r0, [r4, #0x24]
	cmp r0, #0
	bne %12
	ldrb r1, [r4, #0x18]
	cmp r1, #0
	bls %9
	movs r1, #0
8
	ldr r3, [r4, #0x1c]
	ldr r2, [r6]
	ldrb r3, [r3, r0]
	adds r0, #1
	strb r1, [r2, r3]
	ldrb r2, [r4, #0x18]
	cmp r2, r0
	bhi %8
9
	movs r1, #0
	movs r0, #0
10
	ldr r2, [r6]
	ldrb r3, [r2, r0]
	cmp r3, #0xff
	beq %11
	adds r3, r1, #1
	lsls r3, r3, #0x18
	adds r4, r1, #0
	lsrs r3, r3, #0x18
	adds r1, r3, #0
	strb r4, [r2, r0]
11
	adds r0, #1
	cmp r0, r7
	blo %10
12
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	thumb_func_start sub_800CE6C
sub_800CE6C
	push {r0, r1, r2, r3, r4, r5, r6, r7, lr}
	adds r5, r1, #0
	ldrb r1, [r2, #3]
	adds r7, r3, #0
	movs r6, #0
	adds r4, r2, #0
	cmp r1, #0
	sub sp, #0x6c
	beq %13
	adds r3, r6, #0
	movs r2, #0
	movs r0, #1
	bl sub_803D9C4
	ldr r2, [sp, #0x6c]
	str r0, [r2, #0xc]
13
	movs r6, #0
	adds r3, r6, #0
	movs r1, #0xff
	adds r1, #1
	movs r2, #0
	movs r0, #1
	bl sub_803D9C4
	adds r3, r6, #0
	movs r1, #0xff
	adds r1, #1
	str r0, [sp, #0x50]
	movs r2, #0
	movs r0, #1
	bl sub_803D9C4
	str r0, [sp, #0x4c]
	movs r0, #0
	str r0, [sp, #0x48]
	str r0, [sp, #0x44]
	ldr r0, [sp, #0x6c]
	adds r1, r5, #0
	add r3, sp, #0x44
	add r2, sp, #0x48
	bl sub_800CD98
	ldr r2, [sp, #0x6c]
	ldr r0, [r2, #8]
	adds r1, r0, #0
	adds r1, #0x14
	str r1, [sp, #0x3c]
	str r0, [sp, #0x40]
	ldrb r1, [r7]
	lsls r3, r1, #3
	adds r1, r3, r1
	lsls r1, r1, #2
	adds r0, r0, r1
	ldrb r1, [r7, #3]
	lsls r3, r1, #2
	adds r1, r3, r1
	lsls r1, r1, #2
	adds r0, r0, r1
	ldrb r1, [r7, #1]
	lsls r3, r1, #2
	adds r1, r3, r1
	lsls r1, r1, #2
	adds r6, r0, r1
	ldm r7!, {r1, r2, r3}
	ldr r0, [sp, #0x40]
	adds r6, #0x14
	stm r0!, {r1, r2, r3}
	ldm r7!, {r2, r3}
	stm r0!, {r2, r3}
	add r1, sp, #0x3c
	ldm r1!, {r0, r1}
	subs r7, #0x14
	str r0, [r1, #4]
	ldrb r0, [r7]
	ldr r1, [sp, #0x3c]
	lsls r3, r0, #3
	adds r0, r3, r0
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [sp, #0x40]
	str r0, [r1, #0x10]
	ldrb r0, [r7]
	ldr r1, [sp, #0x3c]
	lsls r3, r0, #3
	adds r0, r3, r0
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r1, [r7, #3]
	lsls r3, r1, #2
	adds r1, r3, r1
	lsls r1, r1, #2
	adds r0, r0, r1
	ldr r1, [sp, #0x40]
	str r0, [r1, #8]
	ldr r0, [r4, #0xc]
	ldr r1, [sp, #0x40]
	str r0, [r1, #0xc]
	movs r1, #0
	str r1, [sp, #0x38]
	ldrb r0, [r4]
	cmp r0, #0
	bls %18
	add r7, sp, #0x24
	str r7, [sp, #0x68]
14
	ldr r0, [sp, #0x48]
	cmp r0, #0
	beq %15
	ldr r1, [sp, #0x38]
	ldrb r0, [r0, r1]
	cmp r0, #0xff
	beq %19
15
	ldr r0, [sp, #0x3c]
	add r7, sp, #0x10
	str r0, [sp, #0x34]
	adds r0, #0x24
	str r0, [sp, #0x3c]
	ldr r0, [r4, #4]
	ldr r1, [sp, #0x38]
	lsls r3, r1, #3
	adds r1, r3, r1
	lsls r1, r1, #2
	adds r0, r0, r1
	ldm r0!, {r1, r2, r3}
	stm r7!, {r1, r2, r3}
	subs r0, #0xc
	ldrh r2, [r0, #0xc]
	add r3, sp, #0
	strh r2, [r3, #0x1c]
	ldrh r1, [r0, #0xe]
	strh r1, [r3, #0x1e]
	ldrh r2, [r0, #0x10]
	strh r2, [r3, #0x20]
	ldrh r1, [r0, #0x12]
	adds r0, #0x14
	strh r1, [r3, #0x22]
	ldm r0!, {r0, r1, r2, r3}
	ldr r7, [sp, #0x68]
	stm r7!, {r0, r1, r2, r3}
	ldr r0, [sp, #0x28]
	ldr r1, [r5]
	add r7, sp, #0x10
	adds r0, r0, r1
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x2c]
	ldr r1, [r5]
	adds r0, r0, r1
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x30]
	ldr r1, [r5]
	adds r0, r0, r1
	str r0, [sp, #0x30]
	ldm r7!, {r1, r2, r3}
	ldr r0, [sp, #0x34]
	stm r0!, {r1, r2, r3}
	ldm r7!, {r1, r2, r3}
	stm r0!, {r1, r2, r3}
	ldm r7!, {r1, r2, r3}
	stm r0!, {r1, r2, r3}
	ldr r0, [sp, #0x34]
	ldrh r0, [r0, #0xc]
	ldr r1, [sp, #0x34]
	ldrh r1, [r1, #0xe]
	muls r0, r1
	lsls r0, r0, #1
	adds r0, #3
	ldr r1, [sp, #0x10]
	lsrs r0, r0, #2
	lsls r0, r0, #2
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x1c
	beq %16
	ldr r1, [sp, #0x34]
	adds r2, r6, #0
	str r6, [r1, #0x18]
	adds r6, r6, r0
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x28]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x1c
	bl sub_803D5A4
16
	ldr r0, [sp, #0x34]
	str r6, [r0, #0x1c]
	ldr r0, [sp, #0x34]
	ldr r0, [r0]
	lsls r0, r0, #6
	lsrs r0, r0, #0x1a
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r7, r1, r6
	movs r1, #0
	str r1, [sp, #0xc]
	cmp r0, #0
	bls %23
17
	ldr r0, [sp, #0x34]
	ldr r0, [r0, #0x1c]
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x2c]
	lsls r3, r1, #2
	adds r1, r3, r1
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r6, r2, r1
	ldm r6!, {r1, r2, r3}
	stm r0!, {r1, r2, r3}
	ldm r6!, {r2, r3}
	stm r0!, {r2, r3}
	subs r0, #0x14
	ldr r2, [r0, #8]
	subs r6, #0x14
	lsls r3, r2, #0x15
	lsrs r1, r3, #0x1c
	mov ip, r2
	beq %21
	b %20
18
	b %27
19
	b %26
20
	ldrh r1, [r0, #4]
	ldrh r2, [r0, #6]
	str r7, [r0, #0x10]
	ldr r0, [r6, #0x10]
	muls r1, r2
	mov r2, ip
	lsls r2, r2, #0x19
	lsrs r2, r2, #0x19
	lsls r1, r1, #1
	muls r1, r2
	adds r2, r7, #0
	adds r7, r7, r1
	ldr r1, [r5]
	adds r1, r0, r1
	lsrs r0, r3, #0x1c
	bl sub_803D5A4
	b %22
21
	ldr r1, [r0, #0x10]
	ldr r2, [r5]
	adds r1, r1, r2
	str r1, [r0, #0x10]
22
	ldr r1, [sp, #0xc]
	ldr r0, [sp, #0x34]
	adds r1, #1
	str r1, [sp, #0xc]
	ldr r0, [r0]
	lsls r0, r0, #6
	lsrs r0, r0, #0x1a
	cmp r0, r1
	bhi %17
23
	ldr r0, [r5, #0x24]
	cmp r0, #0
	beq %25
	movs r1, #0
	ldr r0, [sp, #0x18]
	str r1, [sp, #0xc]
	cmp r0, #0
	bls %25
	movs r6, #0
24
	ldr r1, [sp, #0xc]
	ldr r0, [sp, #0x30]
	lsls r1, r1, #2
	ldr r0, [r0, r1]
	ldr r1, [r5]
	adds r0, r0, r1
	ldr r1, [r4, #0x10]
	subs r0, r0, r1
	bl sub_8040490
	ldr r0, [sp, #0x44]
	strb r6, [r0, r1]
	ldr r1, [sp, #0xc]
	ldr r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0xc]
	cmp r0, r1
	bhi %24
25
	ldr r1, [sp, #0x34]
	str r7, [r1, #0x20]
	ldr r0, [sp, #0x34]
	movs r1, #1
	ldr r0, [r0, #8]
	lsls r0, r0, #2
	adds r6, r0, r7
	ldr r0, [sp, #0x34]
	ldr r0, [r0]
	ldr r2, [sp, #0x50]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x18
	strb r1, [r2, r0]
26
	ldr r1, [sp, #0x38]
	adds r1, #1
	str r1, [sp, #0x38]
	ldrb r0, [r4]
	cmp r0, r1
	bls %27
	b %14
27
	ldr r0, [r5, #0x24]
	cmp r0, #0
	beq %30
	movs r1, #0
	movs r0, #0
	movs r2, #0xff
	adds r2, #1
28
	ldr r2, [sp, #0x44]
	ldrb r3, [r2, r0]
	cmp r3, #0xff
	beq %29
	adds r3, r1, #1
	lsls r3, r3, #0x18
	adds r7, r1, #0
	lsrs r3, r3, #0x18
	adds r1, r3, #0
	strb r7, [r2, r0]
29
	movs r2, #0xff
	adds r2, #1
	adds r0, #1
	cmp r0, r2
	blo %28
30
	movs r1, #0
	str r1, [sp, #0x38]
	ldrb r0, [r4, #3]
	cmp r0, #0
	bls %35
31
	ldr r0, [sp, #0x44]
	cmp r0, #0
	beq %32
	ldr r1, [sp, #0x38]
	ldrb r0, [r0, r1]
	cmp r0, #0xff
	beq %34
32
	ldr r0, [r4, #0x10]
	ldr r1, [sp, #0x38]
	add r7, sp, #0x24
	lsls r3, r1, #2
	adds r1, r3, r1
	lsls r1, r1, #2
	adds r0, r0, r1
	ldr r1, [r0, #4]
	ldr r2, [r0]
	str r1, [sp, #0x28]
	str r2, [sp, #0x24]
	ldrh r2, [r0, #8]
	add r3, sp, #0
	strh r2, [r3, #0x2c]
	ldrh r1, [r0, #0xa]
	strh r1, [r3, #0x2e]
	ldr r1, [r0, #0xc]
	ldr r0, [r0, #0x10]
	str r1, [sp, #0x30]
	str r0, [sp, #0x34]
	ldr r0, [sp, #0x3c]
	adds r1, r0, #0
	adds r1, #0x14
	str r1, [sp, #0x3c]
	ldr r1, [sp, #0x34]
	ldr r2, [r5]
	adds r1, r1, r2
	str r1, [sp, #0x34]
	ldm r7!, {r1, r2, r3}
	stm r0!, {r1, r2, r3}
	ldm r7!, {r2, r3}
	stm r0!, {r2, r3}
	subs r0, #0x14
	ldr r1, [r0]
	movs r2, #0
	mov ip, r1
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1c
	cmp r1, #1
	beq %36
	cmp r1, #2
	bne %33
	ldr r1, [r0, #4]
	lsls r2, r1, #1
	adds r2, r2, r1
	lsls r2, r2, #1
33
	adds r2, #3
	lsrs r1, r2, #2
	mov r3, ip
	lsls r3, r3, #0x18
	lsls r1, r1, #2
	lsrs r2, r3, #0x1c
	beq %34
	adds r2, r6, #0
	str r6, [r0, #0x10]
	adds r6, r6, r1
	ldr r1, [sp, #0x34]
	lsrs r0, r3, #0x1c
	bl sub_803D5A4
34
	ldr r1, [sp, #0x38]
	adds r1, #1
	str r1, [sp, #0x38]
	ldrb r0, [r4, #3]
	cmp r0, r1
	bhi %31
35
	ldr r0, [sp, #0x40]
	movs r1, #0
	ldr r0, [r0, #4]
	str r1, [sp, #0x34]
	str r0, [sp, #0x38]
	ldrb r0, [r4]
	cmp r0, #0
	bls %45
	add r7, sp, #0x24
	str r7, [sp, #0x64]
	b %38
36
	ldrh r2, [r0, #8]
	ldrh r1, [r0, #0xa]
	mov r3, ip
	lsls r3, r3, #8
	muls r2, r1
	movs r1, #1
	lsls r7, r1, #8
	lsrs r3, r3, #0x10
	cmp r3, r7
	bls %37
	movs r1, #2
37
	muls r2, r1
	b %33
38
	ldr r0, [sp, #0x48]
	cmp r0, #0
	beq %39
	ldr r1, [sp, #0x34]
	ldrb r0, [r0, r1]
	cmp r0, #0xff
	beq %48
39
	ldr r0, [r4, #4]
	ldr r1, [sp, #0x34]
	add r7, sp, #0x10
	lsls r3, r1, #3
	adds r1, r3, r1
	lsls r1, r1, #2
	adds r0, r0, r1
	ldm r0!, {r1, r2, r3}
	stm r7!, {r1, r2, r3}
	subs r0, #0xc
	ldrh r2, [r0, #0xc]
	add r3, sp, #0
	strh r2, [r3, #0x1c]
	ldrh r1, [r0, #0xe]
	strh r1, [r3, #0x1e]
	ldrh r2, [r0, #0x10]
	strh r2, [r3, #0x20]
	ldrh r1, [r0, #0x12]
	adds r0, #0x14
	strh r1, [r3, #0x22]
	ldm r0!, {r0, r1, r2, r3}
	ldr r7, [sp, #0x64]
	stm r7!, {r0, r1, r2, r3}
	ldr r0, [sp, #0x30]
	ldr r1, [r5]
	adds r0, r0, r1
	str r0, [sp, #0x30]
	ldr r0, [sp, #0x38]
	ldr r0, [r0, #8]
	cmp r0, #0
	beq %47
	movs r1, #0
	str r1, [sp, #0xc]
	ldr r1, [sp, #0x38]
	movs r7, #0
	ldr r1, [r1, #0x20]
	cmp r0, #0
	str r1, [sp, #8]
	bls %46
40
	ldr r0, [sp, #0x30]
	lsls r1, r7, #2
	ldr r0, [r0, r1]
	ldr r1, [r5]
	adds r1, r0, r1
	str r1, [sp, #4]
	ldr r0, [sp, #0x44]
	str r0, [sp, #0x60]
	cmp r0, #0
	beq %41
	ldr r0, [r4, #0x10]
	ldr r1, [sp, #4]
	subs r0, r1, r0
	bl sub_8040490
	ldr r0, [sp, #0x60]
	ldrb r0, [r0, r1]
	cmp r0, #0xff
	beq %44
41
	ldr r0, [sp, #0x60]
	cmp r0, #0
	ldr r0, [r4, #0x10]
	beq %42
	ldr r1, [sp, #4]
	subs r0, r1, r0
	bl sub_8040490
	ldr r0, [sp, #0x60]
	ldrb r1, [r0, r1]
	b %43
42
	ldr r1, [sp, #4]
	subs r0, r1, r0
	bl sub_8040490
43
	lsls r0, r1, #2
	adds r0, r0, r1
	ldr r1, [sp, #0x40]
	lsls r0, r0, #2
	ldr r1, [r1, #0x10]
	adds r0, r0, r1
	ldr r1, [sp, #8]
	stm r1!, {r0}
	ldr r0, [sp, #0xc]
	str r1, [sp, #8]
	adds r0, #1
	str r0, [sp, #0xc]
44
	ldr r0, [sp, #0x38]
	adds r7, #1
	ldr r0, [r0, #8]
	cmp r0, r7
	bhi %40
	b %46
45
	b %49
46
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x38]
	cmp r0, #0
	str r0, [r1, #8]
	bne %47
	ldr r1, [sp, #0x38]
	str r0, [r1, #0x20]
47
	ldr r0, [sp, #0x38]
	adds r0, #0x24
	str r0, [sp, #0x38]
48
	ldr r1, [sp, #0x34]
	adds r1, #1
	str r1, [sp, #0x34]
	ldrb r0, [r4]
	cmp r0, r1
	bhi %38
49
	movs r0, #0
	str r0, [sp, #0x38]
	ldrb r0, [r4, #1]
	cmp r0, #0
	bls %58
50
	ldr r0, [sp, #0x38]
	ldr r2, [sp, #0x50]
	ldrb r0, [r2, r0]
	cmp r0, #0
	bne %51
	ldr r1, [sp, #0x38]
	ldr r2, [sp, #0x50]
	movs r0, #0xff
	strb r0, [r2, r1]
	b %62
51
	ldr r0, [r4, #8]
	ldr r1, [sp, #0x38]
	add r7, sp, #0x24
	lsls r3, r1, #2
	adds r1, r3, r1
	lsls r1, r1, #2
	adds r0, r0, r1
	ldm r0!, {r1, r2, r3}
	stm r7!, {r1, r2, r3}
	ldm r0!, {r2, r3}
	stm r7!, {r2, r3}
	ldr r7, [sp, #0x3c]
	adds r0, r7, #0
	adds r0, #0x14
	str r0, [sp, #0x3c]
	ldr r0, [sp, #0x34]
	ldr r1, [r5]
	adds r0, r0, r1
	str r0, [sp, #0x34]
	ldr r0, [sp, #0x30]
	ldr r1, [r5]
	adds r0, r0, r1
	str r0, [sp, #0x30]
	add r0, sp, #0x24
	ldm r0!, {r1, r2, r3}
	stm r7!, {r1, r2, r3}
	ldm r0!, {r2, r3}
	stm r7!, {r2, r3}
	subs r7, #0x14
	ldr r0, [r7, #4]
	lsls r1, r0, #5
	lsrs r2, r1, #0x1d
	movs r1, #1
	lsls r1, r2
	lsls r2, r0, #2
	lsrs r3, r2, #0x1d
	movs r2, #1
	lsls r2, r3
	muls r1, r2
	lsls r2, r0, #8
	lsrs r2, r2, #0x1c
	cmp r2, #8
	bne %52
	lsrs r1, r1, #1
52
	ldrh r2, [r7]
	lsls r0, r0, #0xc
	muls r1, r2
	ldrh r2, [r7, #2]
	lsls r2, r2, #2
	str r2, [sp, #0x20]
	lsrs r2, r0, #0x1c
	beq %53
	adds r2, r6, #0
	str r6, [r7, #0xc]
	adds r6, r6, r1
	ldr r1, [sp, #0x30]
	lsrs r0, r0, #0x1c
	bl sub_803D5A4
53
	str r6, [r7, #0x10]
	ldr r2, [sp, #0x20]
	ldr r1, [r7, #4]
	adds r0, r6, #0
	adds r6, r6, r2
	lsls r2, r1, #0xc
	lsrs r1, r2, #0x1c
	beq %54
	lsrs r3, r2, #0x1c
	adds r2, r0, #0
	adds r0, r3, #0
	ldr r1, [sp, #0x34]
	bl sub_803D5A4
	b %55
54
	ldr r1, [sp, #0x34]
	ldr r2, [sp, #0x20]
	bl __16__rt_memcpy
55
	ldr r0, [r7, #4]
	movs r1, #0x10
	lsls r0, r0, #8
	lsrs r0, r0, #0x1c
	cmp r0, #9
	beq %56
	movs r1, #1
56
	mov lr, r1
	ldrh r0, [r7, #2]
	movs r1, #0
	mov ip, r1
	cmp r0, #0
	bls %61
	movs r2, #1
57
	mov r1, ip
	lsls r3, r1, #2
	ldr r0, [r7, #0x10]
	str r3, [sp, #0x5c]
	ldr r0, [r0, r3]
	cmp r0, #0
	blt %60
	movs r0, #0
	mov r1, lr
	cmp r1, #0
	bls %60
	b %59
58
	b %63
59
	ldr r1, [r7, #0x10]
	ldr r3, [sp, #0x5c]
	ldr r1, [r1, r3]
	ldr r3, [sp, #0x4c]
	lsls r1, r1, #6
	lsrs r1, r1, #0x18
	adds r1, r1, r0
	adds r0, #1
	cmp r0, lr
	strb r2, [r3, r1]
	blo %59
60
	mov r1, ip
	ldrh r0, [r7, #2]
	adds r1, #1
	mov ip, r1
	cmp r0, r1
	bhi %57
61
	ldr r1, [sp, #0x40]
	ldr r0, [r1, #8]
	subs r0, r7, r0
	bl sub_8040490
	ldr r0, [sp, #0x38]
	ldr r2, [sp, #0x50]
	strb r1, [r2, r0]
62
	ldr r0, [sp, #0x38]
	adds r0, #1
	str r0, [sp, #0x38]
	ldrb r0, [r4, #1]
	ldr r1, [sp, #0x38]
	cmp r0, r1
	bls %63
	b %50
63
	ldrb r2, [r4, #2]
	movs r1, #0
	movs r0, #0
	cmp r2, #0
	bls %67
	movs r7, #0xff
64
	ldr r2, [sp, #0x4c]
	ldrb r2, [r2, r0]
	cmp r2, #0
	beq %65
	adds r2, r1, #1
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	adds r3, r1, #0
	adds r1, r2, #0
	ldr r2, [sp, #0x4c]
	strb r3, [r2, r0]
	b %66
65
	ldr r2, [sp, #0x4c]
	strb r7, [r2, r0]
66
	ldrb r2, [r4, #2]
	adds r0, #1
	cmp r2, r0
	bhi %64
67
	ldr r0, [sp, #0x40]
	movs r1, #0
	ldr r0, [r0, #4]
	ldrb r2, [r4]
	cmp r2, #0
	bls %71
68
	ldr r2, [sp, #0x48]
	cmp r2, #0
	beq %69
	ldrb r2, [r2, r1]
	cmp r2, #0xff
	beq %70
69
	ldr r3, [r0]
	ldr r7, [sp, #0x50]
	lsls r2, r3, #0x10
	lsrs r2, r2, #0x18
	ldrb r2, [r7, r2]
	movs r7, #0xff
	lsls r7, r7, #8
	bics r3, r7
	lsls r2, r2, #8
	orrs r2, r3
	str r2, [r0]
	adds r0, #0x24
70
	ldrb r2, [r4]
	adds r1, #1
	cmp r2, r1
	bhi %68
71
	ldr r0, [sp, #0x40]
	ldr r1, [r0, #8]
	movs r0, #0
	mov ip, r0
	ldrb r0, [r4, #1]
	cmp r0, #0
	bls %76
72
	ldr r2, [sp, #0x50]
	mov r0, ip
	ldrb r0, [r2, r0]
	cmp r0, #0xff
	beq %75
	ldrh r2, [r1, #2]
	movs r0, #0
	cmp r2, #0
	bls %74
73
	ldr r2, [r1, #0x10]
	lsls r3, r0, #2
	adds r2, r2, r3
	ldr r3, [r2]
	ldr r7, [sp, #0x4c]
	str r3, [sp, #0x58]
	lsls r3, r3, #6
	lsrs r3, r3, #0x18
	ldrb r3, [r7, r3]
	movs r7, #0xff
	lsls r7, r7, #0x12
	mov lr, r3
	ldr r3, [sp, #0x58]
	adds r0, #1
	bics r3, r7
	mov r7, lr
	lsls r7, r7, #0x12
	orrs r3, r7
	str r3, [r2]
	ldrh r2, [r1, #2]
	cmp r2, r0
	bhi %73
74
	adds r1, #0x14
75
	mov r0, ip
	adds r0, #1
	mov ip, r0
	ldrb r0, [r4, #1]
	cmp r0, ip
	bhi %72
76
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne %83
	movs r0, #5
	lsls r0, r0, #0x18
	str r0, [sp, #0x38]
	ldr r0, _0800D878
	movs r7, #0
	str r0, [sp, #0x34]
	ldrb r1, [r4, #2]
	cmp r1, #0
	bls %82
	movs r1, #0x27
	ldr r2, [sp, #0x6c]
	lsls r1, r1, #6
	adds r1, r2, r1
	str r1, [sp, #0x54]
77
	ldr r3, [sp, #0x4c]
	ldrb r0, [r3, r7]
	cmp r0, #0xff
	beq %81
	ldr r0, [sp, #0x54]
	ldr r0, [r0, #0x3c]
	lsls r0, r0, #5
	bpl %78
	ldr r0, [r4, #0xc]
	lsls r1, r7, #5
	adds r0, r0, r1
	ldr r1, [sp, #0x38]
	ldr r2, _0800D87C
	bl CpuSet
	b %79
78
	ldr r0, [r4, #0xc]
	ldr r1, _0800D880
	lsls r2, r7, #5
	adds r0, r0, r2
	str r0, [r1]
	ldr r0, [sp, #0x38]
	str r0, [r1, #4]
	ldr r0, _0800D884
	str r0, [r1, #8]
	ldr r0, [r1, #8]
79
	ldr r0, [r4, #0xc]
	lsls r1, r7, #5
	ldrh r0, [r0, r1]
	ldr r1, _0800D878
	cmp r0, r1
	beq %80
	str r0, [sp, #0x34]
80
	ldr r0, [sp, #0x38]
	adds r0, #0x20
	str r0, [sp, #0x38]
81
	ldrb r0, [r4, #2]
	adds r7, #1
	cmp r0, r7
	bhi %77
82
	movs r1, #5
	ldr r0, [sp, #0x34]
	lsls r1, r1, #0x18
	strh r0, [r1]
83
	ldrb r1, [r4, #3]
	cmp r1, #0
	beq %87
	movs r0, #0
	cmp r1, #0
	bls %87
84
	ldr r1, [sp, #0x44]
	cmp r1, #0
	beq %85
	ldrb r1, [r1, r0]
	ldr r2, [sp, #0x6c]
	ldr r2, [r2, #0xc]
	strb r1, [r2, r0]
	b %86
85
	ldr r2, [sp, #0x6c]
	ldr r1, [r2, #0xc]
	strb r0, [r1, r0]
86
	ldrb r1, [r4, #3]
	adds r0, #1
	cmp r1, r0
	bhi %84
87
	adds r0, r5, #0
	adds r0, #0x20
	ldrb r1, [r0]
	cmp r1, #0
	beq %90
	ldr r2, [sp, #0x6c]
	movs r1, #0
	str r6, [r2, #0x10]
	ldrb r2, [r0]
	subs r2, #1
	cmp r2, #0
	ble %89
88
	ldr r2, [sp, #0x6c]
	lsls r3, r1, #2
	ldr r2, [r2, #0x10]
	adds r1, #1
	adds r4, r2, r3
	adds r4, #4
	str r4, [r2, r3]
	ldrb r2, [r0]
	subs r2, #1
	cmp r2, r1
	bgt %88
89
	ldr r2, [sp, #0x6c]
	ldrb r0, [r0]
	ldr r1, [r2, #0x10]
	movs r6, #0
	lsls r0, r0, #2
	adds r0, r1, r0
	subs r0, #0x40
	str r6, [r0, #0x3c]
90
	ldr r0, [sp, #0x48]
	cmp r0, #0
	beq %91
	movs r2, #0
	movs r1, #0
	bl sub_803D9A8
91
	ldr r0, [sp, #0x44]
	cmp r0, #0
	beq %92
	movs r2, #0
	movs r1, #0
	bl sub_803D9A8
92
	movs r2, #0
	movs r1, #0
	ldr r0, [sp, #0x50]
	bl sub_803D9A8
	movs r2, #0
	movs r1, #0
	ldr r0, [sp, #0x4c]
	bl sub_803D9A8
	add sp, #0x7c
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	thumb_func_start sub_800D5A8
sub_800D5A8
	push {r0, r1, r2, r3, r4, r5, r6, r7, lr}
	movs r7, #0
	adds r5, r1, #0
	adds r4, r2, #0
	movs r1, #0xff
	adds r3, r7, #0
	adds r1, #1
	movs r2, #0
	movs r6, #0x14
	movs r0, #1
	sub sp, #0x44
	bl sub_803D9C4
	adds r3, r7, #0
	movs r1, #0xff
	adds r1, #1
	str r0, [sp, #0x38]
	movs r2, #0
	movs r0, #1
	bl sub_803D9C4
	str r0, [sp, #0x34]
	movs r0, #0
	str r0, [sp, #0x30]
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x44]
	adds r1, r5, #0
	add r3, sp, #0x2c
	add r2, sp, #0x30
	bl sub_800CD98
	movs r1, #0
	str r1, [sp, #0x28]
	ldrb r0, [r4]
	cmp r0, #0
	bls %99
	add r7, sp, #0x18
	str r7, [sp, #0x40]
93
	ldr r0, [sp, #0x30]
	cmp r0, #0
	beq %94
	ldr r1, [sp, #0x28]
	ldrb r0, [r0, r1]
	cmp r0, #0xff
	beq %100
94
	ldr r1, [sp, #0x50]
	add r7, sp, #4
	ldrb r0, [r1]
	adds r6, #0x24
	adds r0, #1
	strb r0, [r1]
	ldr r0, [r4, #4]
	ldr r1, [sp, #0x28]
	lsls r3, r1, #3
	adds r1, r3, r1
	lsls r1, r1, #2
	adds r0, r0, r1
	ldm r0!, {r1, r2, r3}
	stm r7!, {r1, r2, r3}
	subs r0, #0xc
	ldrh r2, [r0, #0xc]
	add r3, sp, #0
	strh r2, [r3, #0x10]
	ldrh r1, [r0, #0xe]
	strh r1, [r3, #0x12]
	ldrh r2, [r0, #0x10]
	strh r2, [r3, #0x14]
	ldrh r1, [r0, #0x12]
	adds r0, #0x14
	strh r1, [r3, #0x16]
	ldm r0!, {r0, r1, r2, r3}
	ldr r7, [sp, #0x40]
	stm r7!, {r0, r1, r2, r3}
	ldr r0, [sp, #0x1c]
	ldr r1, [r5]
	adds r0, r0, r1
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x20]
	ldr r1, [r5]
	adds r0, r0, r1
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x24]
	ldr r1, [r5]
	adds r0, r0, r1
	str r0, [sp, #0x24]
	ldr r0, [sp, #4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x1c
	beq %95
	add r3, sp, #0
	ldrh r0, [r3, #0x10]
	ldrh r1, [r3, #0x12]
	muls r0, r1
	lsls r0, r0, #1
	adds r0, #3
	lsrs r0, r0, #2
	lsls r0, r0, #2
	adds r6, r6, r0
95
	ldr r0, [sp, #0xc]
	lsls r0, r0, #2
	adds r7, r0, r6
	ldr r0, [r5, #0x24]
	cmp r0, #0
	beq %97
	ldr r0, [sp, #0xc]
	movs r6, #0
	cmp r0, #0
	bls %97
96
	ldr r0, [sp, #0x24]
	lsls r1, r6, #2
	ldr r0, [r0, r1]
	ldr r1, [r5]
	adds r0, r0, r1
	ldr r1, [r4, #0x10]
	subs r0, r0, r1
	bl sub_8040490
	ldr r0, [sp, #0x2c]
	movs r2, #0
	strb r2, [r0, r1]
	ldr r0, [sp, #0xc]
	adds r6, #1
	cmp r0, r6
	bhi %96
97
	ldr r0, [sp, #4]
	lsls r0, r0, #6
	lsrs r1, r0, #0x1a
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r6, r0, r7
	movs r0, #0
	cmp r1, #0
	mov ip, r1
	bls %103
98
	lsls r2, r0, #2
	adds r2, r2, r0
	ldr r1, [sp, #0x20]
	lsls r2, r2, #2
	adds r1, r1, r2
	ldr r2, [r1, #8]
	lsls r3, r2, #0x15
	lsrs r3, r3, #0x1c
	beq %102
	ldrh r3, [r1, #4]
	ldrh r1, [r1, #6]
	lsls r2, r2, #0x19
	muls r3, r1
	lsls r1, r3, #1
	lsrs r2, r2, #0x19
	b %101
99
	b %105
100
	b %104
101
	muls r1, r2
	adds r6, r1, r6
102
	adds r0, #1
	cmp ip, r0
	bhi %98
103
	ldr r0, [sp, #4]
	movs r1, #1
	ldr r2, [sp, #0x38]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x18
	strb r1, [r2, r0]
104
	ldr r1, [sp, #0x28]
	adds r1, #1
	str r1, [sp, #0x28]
	ldrb r0, [r4]
	cmp r0, r1
	bls %105
	b %93
105
	ldr r0, [r5, #0x24]
	cmp r0, #0
	beq %108
	movs r1, #0
	movs r0, #0
	movs r2, #0xff
	adds r2, #1
106
	ldr r2, [sp, #0x2c]
	ldrb r3, [r2, r0]
	cmp r3, #0xff
	beq %107
	adds r3, r1, #1
	lsls r3, r3, #0x18
	adds r7, r1, #0
	lsrs r3, r3, #0x18
	adds r1, r3, #0
	strb r7, [r2, r0]
107
	movs r2, #0xff
	adds r2, #1
	adds r0, #1
	cmp r0, r2
	blo %106
108
	ldrb r1, [r4, #3]
	movs r0, #0
	cmp r1, #0
	bls %113
109
	ldr r1, [sp, #0x2c]
	cmp r1, #0
	beq %110
	ldrb r1, [r1, r0]
	cmp r1, #0xff
	beq %112
110
	ldr r1, [sp, #0x50]
	adds r6, #0x14
	ldrb r1, [r1, #3]
	ldr r2, [sp, #0x50]
	adds r1, #1
	strb r1, [r2, #3]
	lsls r2, r0, #2
	adds r2, r2, r0
	ldr r1, [r4, #0x10]
	lsls r2, r2, #2
	adds r1, r1, r2
	ldr r2, [r1, #4]
	ldr r3, [r1]
	str r2, [sp, #0x1c]
	str r3, [sp, #0x18]
	ldrh r7, [r1, #8]
	add r3, sp, #0
	strh r7, [r3, #0x20]
	ldrh r2, [r1, #0xa]
	strh r2, [r3, #0x22]
	ldr r2, [r1, #0xc]
	ldr r1, [r1, #0x10]
	str r2, [sp, #0x24]
	str r1, [sp, #0x28]
	ldr r2, [r5]
	adds r1, r1, r2
	str r1, [sp, #0x28]
	ldr r1, [sp, #0x18]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x1c
	beq %112
	ldr r1, [sp, #0x18]
	movs r2, #0
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1c
	cmp r1, #1
	beq %114
	cmp r1, #2
	bne %111
	ldr r1, [sp, #0x1c]
	lsls r2, r1, #1
	adds r2, r2, r1
	lsls r2, r2, #1
111
	adds r2, #3
	lsrs r1, r2, #2
	lsls r1, r1, #2
	adds r6, r6, r1
112
	ldrb r1, [r4, #3]
	adds r0, #1
	cmp r1, r0
	bhi %109
113
	movs r0, #0
	mov ip, r0
	ldrb r0, [r4, #1]
	cmp r0, #0
	bls %122
	b %116
114
	add r3, sp, #0
	ldrh r2, [r3, #0x20]
	ldrh r1, [r3, #0x22]
	ldr r3, [sp, #0x18]
	muls r2, r1
	movs r1, #1
	lsls r3, r3, #8
	lsrs r3, r3, #0x10
	lsls r7, r1, #8
	cmp r3, r7
	bls %115
	movs r1, #2
115
	muls r2, r1
	b %111
116
	ldr r2, [sp, #0x38]
	mov r0, ip
	ldrb r0, [r2, r0]
	cmp r0, #0
	beq %125
	ldr r1, [sp, #0x50]
	adds r0, r6, #0
	ldrb r1, [r1, #1]
	ldr r2, [sp, #0x50]
	add r7, sp, #0x18
	adds r1, #1
	strb r1, [r2, #1]
	mov r2, ip
	lsls r3, r2, #2
	adds r2, r3, r2
	ldr r1, [r4, #8]
	lsls r2, r2, #2
	adds r6, r1, r2
	ldm r6!, {r1, r2, r3}
	stm r7!, {r1, r2, r3}
	ldm r6!, {r2, r3}
	stm r7!, {r2, r3}
	ldr r2, [sp, #0x28]
	ldr r1, [r5]
	adds r0, #0x14
	adds r2, r2, r1
	str r2, [sp, #0x28]
	ldr r2, [sp, #0x24]
	adds r1, r2, r1
	str r1, [sp, #0x24]
	ldr r1, [sp, #0x1c]
	lsls r1, r1, #5
	lsrs r2, r1, #0x1d
	movs r1, #1
	adds r6, r1, #0
	lsls r6, r2
	ldr r2, [sp, #0x1c]
	lsls r2, r2, #2
	lsrs r3, r2, #0x1d
	adds r2, r1, #0
	lsls r2, r3
	muls r6, r2
	ldr r2, [sp, #0x1c]
	lsls r2, r2, #8
	lsrs r2, r2, #0x1c
	cmp r2, #8
	bne %117
	lsrs r6, r6, #1
117
	ldr r3, [sp, #0x1c]
	lsls r3, r3, #0xc
	lsrs r3, r3, #0x1c
	beq %118
	add r3, sp, #0
	ldrh r3, [r3, #0x18]
	muls r3, r6
	adds r0, r3, r0
118
	add r3, sp, #0
	ldrh r3, [r3, #0x1a]
	lsls r3, r3, #2
	adds r6, r3, r0
	movs r0, #0x10
	cmp r2, #9
	beq %119
	movs r0, #1
119
	add r3, sp, #0
	ldrh r2, [r3, #0x1a]
	mov lr, r0
	movs r0, #0
	cmp r2, #0
	bls %125
120
	lsls r7, r0, #2
	ldr r1, [sp, #0x28]
	str r7, [sp, #0x3c]
	ldr r1, [r1, r7]
	cmp r1, #0
	blt %124
	movs r1, #0
	mov r2, lr
	cmp r2, #0
	bls %124
	movs r3, #1
121
	ldr r2, [sp, #0x28]
	ldr r7, [sp, #0x3c]
	ldr r2, [r2, r7]
	b %123
122
	b %126
	ALIGN
_0800D878 DCDU 0x00007C1F
_0800D87C DCDU REG_BG0CNT
_0800D880 DCDU REG_DMA3
_0800D884 DCDU 0x84000008
123
	lsls r2, r2, #6
	lsrs r2, r2, #0x18
	adds r2, r2, r1
	ldr r7, [sp, #0x34]
	adds r1, #1
	cmp r1, lr
	strb r3, [r7, r2]
	blo %121
124
	add r3, sp, #0
	ldrh r1, [r3, #0x1a]
	adds r0, #1
	cmp r1, r0
	bhi %120
125
	mov r0, ip
	adds r0, #1
	mov ip, r0
	ldrb r0, [r4, #1]
	cmp r0, ip
	bhi %116
126
	ldrb r1, [r4, #2]
	movs r0, #0
	cmp r1, #0
	bls %129
127
	ldr r7, [sp, #0x34]
	ldrb r1, [r7, r0]
	cmp r1, #0
	beq %128
	ldr r1, [sp, #0x50]
	ldrb r1, [r1, #2]
	ldr r2, [sp, #0x50]
	adds r1, #1
	strb r1, [r2, #2]
128
	ldrb r1, [r4, #2]
	adds r0, #1
	cmp r1, r0
	bhi %127
129
	adds r5, #0x20
	ldrb r0, [r5]
	lsls r0, r0, #2
	adds r4, r0, r6
	ldr r0, [sp, #0x30]
	cmp r0, #0
	beq %130
	movs r2, #0
	movs r1, #0
	bl sub_803D9A8
130
	ldr r0, [sp, #0x2c]
	cmp r0, #0
	beq %131
	movs r2, #0
	movs r1, #0
	bl sub_803D9A8
131
	movs r2, #0
	movs r1, #0
	ldr r0, [sp, #0x38]
	bl sub_803D9A8
	movs r2, #0
	movs r1, #0
	ldr r0, [sp, #0x34]
	bl sub_803D9A8
	adds r0, r4, #0
	add sp, #0x54
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_800D912
sub_800D912
	push {r0, r1, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	movs r0, #0x27
	lsls r0, r0, #6
	adds r6, r4, r0
	ldr r0, [r6, #0x3c]
	movs r1, #1
	lsls r1, r1, #0x18
	orrs r0, r1
	sub sp, #4
	str r0, [r6, #0x3c]
	movs r0, #0x21
	lsls r0, r0, #6
	adds r5, r4, r0
	str r5, [sp]
	ldr r1, [r4, #8]
	movs r0, #0
	movs r7, #0
	cmp r1, #0
	beq %132
	ldrb r0, [r1]
132
	cmp r0, #0
	bls %136
133
	ldr r0, [r5, #0x30]
	cmp r0, #0
	beq %134
	movs r2, #0
	movs r1, #0
	bl sub_803D9A8
	movs r0, #0
	str r0, [r5, #0x30]
134
	ldr r1, [r4, #8]
	adds r7, #1
	adds r5, #0x58
	movs r0, #0
	cmp r1, #0
	beq %135
	ldrb r0, [r1]
135
	cmp r0, r7
	bhi %133
136
	ldr r0, [r6, #0x14]
	cmp r0, #0
	beq %137
	movs r2, #0
	movs r1, #0
	bl sub_803D9A8
	movs r5, #0
	str r5, [r6, #0x14]
137
	ldr r0, [sp, #8]
	cmp r0, #0
	beq %138
	ldr r0, [r6, #0x3c]
	lsls r0, r0, #5
	lsrs r0, r0, #0x1f
	bl sub_800263E
138
	ldr r0, _0800DD64
	ldr r0, [r0]
	cmp r0, #0
	beq %139
	bl sub_80025D6
139
	ldr r0, [r4, #8]
	cmp r0, #0
	beq %140
	movs r2, #0
	movs r1, #0
	bl sub_803D9A8
	movs r5, #0
	str r5, [r4, #8]
140
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq %141
	movs r2, #0
	movs r1, #0
	bl sub_803D9A8
	movs r5, #0
	str r5, [r4, #0xc]
141
	movs r5, #0
	str r5, [r4, #4]
	movs r1, #0xff
	adds r1, #0x61
	ldr r0, [sp]
	bl __16__rt_memclr_w
	movs r0, #0x13
	lsls r0, r0, #7
	adds r0, r4, r0
	str r5, [r0, #0x20]
	str r5, [r0, #0x24]
	ldr r0, [r6, #0x3c]
	movs r1, #1
	lsls r1, r1, #0x18
	bics r0, r1
	str r0, [r6, #0x3c]
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	thumb_func_start sub_800D9E0
sub_800D9E0
	push {r0, r1, r4, r5, r6, r7, lr}
	sub sp, #0x44
	ldr r1, [sp, #0x48]
	ldr r0, [r1, #0x28]
	movs r1, #0x27
	ldr r2, [sp, #0x44]
	lsls r1, r1, #6
	adds r1, r2, r1
	str r1, [sp, #0x40]
	movs r2, #1
	lsls r2, r2, #0x1a
	ldr r1, [r1, #0x3c]
	lsls r0, r0, #0x1f
	lsrs r0, r0, #5
	bics r1, r2
	orrs r0, r1
	ldr r1, [sp, #0x40]
	str r0, [r1, #0x3c]
	ldr r0, [sp, #0x44]
	movs r1, #1
	bl sub_800D912
	ldr r1, [sp, #0x48]
	movs r4, #0
	ldr r0, [r1]
	ldr r2, [sp, #0x44]
	str r0, [r2, #4]
	ldr r1, [sp, #0x40]
	ldr r0, [r1, #0x3c]
	movs r1, #1
	lsls r1, r1, #0x18
	orrs r0, r1
	ldr r1, [sp, #0x40]
	str r0, [r1, #0x3c]
	movs r0, #0x13
	ldr r2, [sp, #0x44]
	lsls r0, r0, #7
	adds r0, r2, r0
	str r0, [sp, #0x3c]
	str r4, [r0, #0x20]
	ldr r1, [sp, #0x40]
	movs r0, #0
	str r0, [r1, #0x18]
	ldr r1, [sp, #0x48]
	ldr r0, [r1, #0xc]
	cmp r0, #0
	bne %142
	movs r3, #1
	lsls r3, r3, #0x1a
	ldrh r0, [r3]
	movs r1, #0xf
	lsls r1, r1, #8
	bics r0, r1
	strh r0, [r3]
142
	ldr r1, [sp, #0x48]
	add r6, sp, #0x18
	ldr r0, [r1]
	add r5, sp, #4
	ldm r0!, {r1, r2, r3}
	stm r6!, {r1, r2, r3}
	ldm r0!, {r2, r3}
	stm r6!, {r2, r3}
	ldr r1, [sp, #0x48]
	ldr r0, [sp, #0x1c]
	ldr r1, [r1]
	movs r3, #0
	adds r0, r0, r1
	str r0, [sp, #0x1c]
	ldr r1, [sp, #0x48]
	ldr r0, [sp, #0x20]
	ldr r1, [r1]
	movs r2, #0
	adds r0, r0, r1
	str r0, [sp, #0x20]
	ldr r1, [sp, #0x48]
	ldr r0, [sp, #0x24]
	ldr r1, [r1]
	subs r6, #0x14
	adds r0, r0, r1
	str r0, [sp, #0x24]
	ldr r1, [sp, #0x48]
	ldr r0, [sp, #0x28]
	ldr r1, [r1]
	adds r0, r0, r1
	str r0, [sp, #0x28]
	movs r0, #0
	movs r1, #0
	stm r5!, {r0, r1, r2, r3}
	stm r5!, {r3}
	subs r5, #0x14
	add r1, sp, #0x44
	adds r3, r5, #0
	adds r2, r6, #0
	ldm r1!, {r0, r1}
	bl sub_800D5A8
	adds r1, r0, #0
	adds r3, r4, #0
	movs r2, #0
	movs r0, #1
	bl sub_803D9C4
	ldr r2, [sp, #0x44]
	add r1, sp, #0x44
	str r0, [r2, #8]
	adds r3, r5, #0
	adds r2, r6, #0
	ldm r1!, {r0, r1}
	bl sub_800CE6C
	ldr r2, [sp, #0x44]
	ldr r6, [r2, #8]
	ldr r1, [sp, #0x48]
	ldr r0, [r1, #0xc]
	cmp r0, #0
	bne %143
	ldr r0, [sp, #0x40]
	ldr r0, [r0, #0x3c]
	lsls r0, r0, #5
	lsrs r0, r0, #0x1f
	bl sub_800263E
143
	movs r2, #1
	lsls r2, r2, #0x1a
	ldr r0, [sp, #0x40]
	str r2, [sp, #0x28]
	ldr r1, [r0, #0x3c]
	ldr r0, _0800DD68
	ands r1, r0
	asrs r2, r0, #0xb
	ands r1, r2
	ldr r2, [sp, #0x40]
	str r1, [r2, #0x3c]
	ldr r1, [sp, #0x48]
	ldr r1, [r1, #0xc]
	cmp r1, #0
	bne %144
	ldr r2, [sp, #0x28]
	movs r3, #0x80
	ldrh r1, [r2]
	movs r2, #1
	lsls r2, r2, #0xd
	bics r1, r2
	lsls r2, r2, #1
	bics r1, r2
	lsls r2, r2, #1
	bics r1, r2
	ldr r2, [sp, #0x28]
	bics r1, r3
	strh r1, [r2]
144
	movs r3, #0
	str r3, [sp, #0x24]
	add r4, sp, #0x14
	movs r1, #0
	movs r2, #0
	stm r4!, {r1, r2, r3}
	stm r4!, {r3}
	ldrb r2, [r6]
	subs r4, #0x10
	cmp r2, #0
	bls %146
145
	lsls r3, r1, #3
	adds r3, r3, r1
	ldr r2, [r6, #4]
	lsls r3, r3, #2
	adds r2, r2, r3
	ldr r2, [r2]
	adds r1, #1
	lsls r2, r2, #0xc
	lsrs r2, r2, #0x1c
	adds r2, r2, r4
	ldrb r3, [r2]
	adds r3, #1
	strb r3, [r2]
	ldrb r2, [r6]
	cmp r2, r1
	bhi %145
146
	ldrb r1, [r6]
	adds r1, #0xff
	lsls r3, r1, #0x18
	lsrs r3, r3, #0x18
	movs r1, #0
	adds r2, r4, #0
147
	ldrb r5, [r2, r1]
	strb r3, [r2, r1]
	adds r1, #1
	subs r3, r3, r5
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	cmp r1, #0x10
	blo %147
	ldrb r3, [r6]
	movs r1, #0
	cmp r3, #0
	bls %149
	add r7, sp, #0x24
148
	lsls r3, r1, #3
	adds r3, r3, r1
	ldr r4, [r6, #4]
	lsls r3, r3, #2
	adds r3, r4, r3
	ldr r3, [r3]
	lsls r3, r3, #0xc
	lsrs r3, r3, #0x1c
	adds r3, r3, r2
	ldrb r4, [r3]
	adds r5, r4, #1
	strb r5, [r3]
	strb r1, [r7, r4]
	ldrb r3, [r6]
	adds r1, #1
	cmp r3, r1
	bhi %148
149
	movs r2, #0
	str r2, [sp, #0x1c]
	ldr r2, [sp, #0x44]
	movs r1, #0x21
	lsls r1, r1, #6
	adds r4, r2, r1
	ldr r1, _0800DD6C
	str r4, [sp, #0x38]
	movs r2, #0x20
	movs r7, #0
	movs r3, #0
	str r3, [sp, #0x10]
	str r7, [sp, #0x20]
	str r2, [sp, #0x18]
	str r1, [sp, #0x14]
	ldrb r1, [r6]
	cmp r1, #0
	bls %154
150
	ldr r0, [r6, #4]
	ldr r3, [sp, #0x10]
	add r1, sp, #0x24
	ldrb r1, [r1, r3]
	lsls r3, r1, #3
	adds r1, r3, r1
	lsls r1, r1, #2
	adds r5, r0, r1
	ldr r0, [r6, #8]
	ldr r1, [r5]
	ldr r2, [sp, #0x18]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x18
	lsls r3, r1, #2
	adds r1, r3, r1
	lsls r1, r1, #2
	adds r0, r0, r1
	ldr r1, [sp, #0x48]
	subs r2, #1
	str r2, [sp, #0x18]
	ldr r1, [r1, #0xc]
	cmp r1, #0
	bne %152
	ldr r1, [sp, #0x14]
	movs r2, #0xc
	ldrh r1, [r1]
	ldr r3, [sp, #0x10]
	bics r1, r2
	movs r2, #3
	subs r2, r2, r3
	lsls r2, r2, #0x1e
	lsrs r1, r1, #2
	lsls r1, r1, #2
	lsrs r2, r2, #0x1e
	orrs r1, r2
	movs r2, #0x1f
	lsls r2, r2, #8
	bics r1, r2
	ldr r2, [sp, #0x18]
	lsls r2, r2, #0x1b
	lsrs r2, r2, #0x13
	orrs r1, r2
	movs r2, #3
	lsls r2, r2, #0xe
	bics r1, r2
	movs r2, #0
	orrs r2, r1
	ldr r1, [sp, #0x14]
	strh r2, [r1]
	ldr r3, [r0, #4]
	movs r1, #1
	lsls r3, r3, #8
	lsrs r3, r3, #0x1c
	cmp r3, #9
	beq %151
	movs r1, #0
151
	movs r3, #0x80
	lsls r1, r1, #0x1f
	lsrs r1, r1, #0x18
	bics r2, r3
	orrs r1, r2
	movs r2, #0x40
	bics r1, r2
	ldr r2, [sp, #0x14]
	lsls r3, r3, #0x13
	strh r1, [r2]
	ldr r1, [sp, #0x14]
	str r1, [r4, #8]
	ldrh r1, [r3]
	ldr r7, [sp, #0x20]
	lsrs r2, r3, #0x12
	lsls r2, r7
	orrs r1, r2
	strh r1, [r3]
152
	ldr r1, [sp, #0x14]
	ldr r7, [sp, #0x20]
	adds r1, #2
	str r1, [sp, #0x14]
	movs r1, #3
	adds r7, #1
	str r7, [sp, #0x20]
	lsls r1, r1, #0x19
	str r1, [r4, #4]
	ldr r2, [sp, #0x18]
	movs r3, #0
	lsls r2, r2, #0xb
	adds r1, r2, r1
	str r1, [r4]
	ldr r1, [r4, #0x48]
	ldr r2, [sp, #0x18]
	lsrs r1, r1, #0xa
	lsls r2, r2, #0x1c
	lsrs r2, r2, #0x16
	lsls r1, r1, #0xa
	orrs r1, r2
	str r1, [r4, #0x48]
	str r3, [r4, #0x38]
	str r3, [r4, #0x3c]
	ldr r2, [r0, #4]
	movs r1, #1
	lsls r2, r2, #8
	lsrs r2, r2, #0x1c
	cmp r2, #9
	beq %153
	movs r1, #0
153
	movs r7, #1
	lsls r7, r7, #0xa
	ldr r2, [r4, #0x48]
	lsls r1, r1, #0x1f
	lsrs r1, r1, #0x15
	bics r2, r7
	orrs r1, r2
	str r1, [r4, #0x48]
	movs r3, #0
	b %155
154
	b %164
155
	adds r2, r4, #0
	adds r2, #0x40
	strh r3, [r2, #0xa]
	ldr r3, [r0, #4]
	lsls r7, r7, #1
	lsls r3, r3, #8
	lsrs r3, r3, #0x1c
	adds r1, r7, #0
	cmp r3, #9
	beq %156
	lsrs r1, r1, #1
156
	strh r1, [r2, #0xc]
	ldr r1, [r4, #0x48]
	bics r1, r7
	str r1, [r4, #0x48]
	ldr r1, [r5, #0x1c]
	str r0, [r4, #0x54]
	str r1, [r4, #0x34]
	str r5, [r4, #0x50]
	ldr r0, [r5]
	lsls r0, r0, #6
	lsrs r1, r0, #0x1a
	beq %159
	lsrs r0, r0, #0x1a
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #3
	movs r3, #0
	movs r2, #0
	movs r0, #1
	bl sub_803D9C4
	str r0, [r4, #0x30]
	ldr r1, [r4, #0x50]
	movs r0, #0
	ldr r1, [r1]
	lsls r1, r1, #6
	lsrs r1, r1, #0x1a
	beq %161
157
	lsls r7, r0, #2
	adds r7, r7, r0
	lsls r7, r7, #2
	ldr r1, [r5, #0x1c]
	mov lr, r7
	adds r1, r1, r7
	ldr r3, [r1, #0x10]
	ldr r1, [r1, #8]
	ldr r2, [r4, #0x30]
	lsls r1, r1, #0xf
	lsrs r7, r1, #0x1a
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #3
	adds r2, r2, r1
	str r2, [sp, #0x34]
	mov ip, r3
	movs r3, #0xff
	ldr r2, [r2]
	lsls r3, r3, #7
	bics r2, r3
	lsls r3, r7, #7
	orrs r2, r3
	ldr r3, [sp, #0x34]
	str r2, [r3]
	str r2, [sp, #0x30]
	ldr r2, [r5, #0x1c]
	add r2, lr
	ldr r2, [r2, #8]
	lsls r2, r2, #0xf
	lsrs r3, r2, #0x1a
	ldr r2, [r4, #0x30]
	adds r7, r2, r1
	ldr r2, [sp, #0x30]
	lsrs r2, r2, #6
	lsls r2, r2, #6
	orrs r2, r3
	str r2, [r7]
	ldr r3, [r4, #0x30]
	movs r7, #0x40
	bics r2, r7
	adds r3, r3, r1
	str r2, [r3]
	ldr r2, [r5, #0x1c]
	add r2, lr
	ldrh r3, [r2, #4]
	ldrh r7, [r2, #6]
	muls r3, r7
	adds r2, r3, #0
	ldr r3, [r4, #0x30]
	adds r3, r3, r1
	strh r2, [r3, #2]
	ldr r2, [r4, #0x30]
	mov r3, ip
	adds r2, r2, r1
	str r3, [r2, #0xc]
	ldr r2, [r4, #0x30]
	adds r2, r2, r1
	str r2, [sp, #0x2c]
	ldr r3, [r5, #0x1c]
	ldrh r2, [r2, #2]
	add r3, lr
	ldr r3, [r3, #8]
	b %158
	ALIGN
_0800DD64 DCDU gUnknown_03003EB0
_0800DD68 DCDU 0xFF800FFF
_0800DD6C DCDU REG_BG0CNT
158
	lsls r3, r3, #0x19
	lsrs r3, r3, #0x19
	subs r3, #1
	muls r2, r3
	lsls r2, r2, #1
	adds r3, r2, #0
	ldr r2, [sp, #0x2c]
	add r3, ip
	str r3, [r2, #0x10]
	ldr r2, [r4, #0x30]
	mov r3, ip
	adds r2, r2, r1
	str r3, [r2, #0x14]
	ldr r2, [sp, #0x1c]
	ldr r3, [r4, #0x30]
	adds r2, #1
	adds r3, r3, r1
	strh r2, [r3, #4]
	ldr r2, [r4, #0x30]
	adds r1, r2, r1
	ldrh r1, [r1, #2]
	ldr r2, [sp, #0x1c]
	adds r2, r1, r2
	str r2, [sp, #0x1c]
	ldr r1, [r4, #0x50]
	adds r0, #1
	ldr r1, [r1]
	b %160
159
	b %162
160
	lsls r1, r1, #6
	lsrs r1, r1, #0x1a
	cmp r1, r0
	bhi %157
161
	ldrh r1, [r5, #4]
	ldr r0, [sp, #0x40]
	ldr r2, _0800E15C
	ldr r0, [r0, #0x3c]
	lsls r1, r1, #0xc
	adds r1, r0, r1
	ands r1, r2
	mvns r2, r2
	ands r0, r2
	orrs r0, r1
	ldr r1, [sp, #0x40]
	str r0, [r1, #0x3c]
162
	ldr r0, [r4, #0x50]
	ldr r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1e
	cmp r0, #1
	bne %163
	ldr r0, [sp, #0x3c]
	str r4, [r0, #0x20]
163
	movs r7, #0
	ldr r1, _0800E160
	str r7, [r4, #0xc]
	ldr r0, [r1, #4]
	ldr r2, _0800E164
	str r0, [r4, #0x10]
	ldr r0, [r2, #4]
	ldr r3, _0800E168
	str r0, [r4, #0x14]
	ldr r0, [r3, #4]
	str r0, [r4, #0x18]
	str r7, [r4, #0x1c]
	ldr r0, [r1, #0x14]
	adds r1, r5, #0
	str r0, [r4, #0x20]
	ldr r0, [r2, #0x14]
	add r2, sp, #0x44
	str r0, [r4, #0x24]
	ldr r0, [r3, #0x14]
	str r0, [r4, #0x28]
	ldr r0, _0800E16C
	ldr r0, [r0, #4]
	str r0, [r4, #0x2c]
	ldr r0, [r4, #0x50]
	ldr r3, [r0, #0x18]
	ldm r2!, {r0, r2}
	bl sub_8001BB4
	ldr r3, [sp, #0x10]
	adds r4, #0x58
	adds r3, #1
	str r3, [sp, #0x10]
	ldrb r0, [r6]
	cmp r0, r3
	bls %164
	b %150
164
	ldr r0, [sp, #0x40]
	ldr r0, [r0, #0x3c]
	lsls r0, r0, #9
	lsrs r1, r0, #0x15
	beq %165
	lsrs r0, r0, #0x15
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, #0xc
	movs r3, #0
	movs r2, #0
	movs r0, #1
	bl sub_803D9C4
	ldr r1, [sp, #0x40]
	str r0, [r1, #0x14]
	b %166
165
	ldr r0, [sp, #0x40]
	movs r3, #0
	str r3, [r0, #0x14]
166
	ldr r0, [sp, #0x40]
	ldr r2, _0800E170
	ldr r0, [r0, #0x3c]
	ldr r1, [sp, #0x40]
	ands r0, r2
	str r0, [r1, #0x3c]
	ldr r1, [sp, #0x48]
	ldr r0, [r1, #0xc]
	cmp r0, #0
	bne %169
	ldr r4, _0800E174
	ldr r0, [r4]
	bl sub_8002698
	ldrb r0, [r6]
	movs r5, #0
	ldr r7, [sp, #0x38]
	cmp r0, #0
	bls %168
167
	movs r2, #1
	adds r1, r7, #0
	ldr r0, [r4]
	bl sub_800288A
	ldrb r0, [r6]
	adds r5, #1
	adds r7, #0x58
	cmp r0, r5
	bhi %167
168
	ldr r2, [sp, #0x28]
	ldrh r0, [r2]
	lsrs r0, r0, #3
	lsls r0, r0, #3
	strh r0, [r2]
169
	ldr r0, [sp, #0x3c]
	movs r5, #1
	ldr r1, [r0, #0x20]
	adds r6, r5, #0
	ldr r0, [r1, #0x50]
	ldr r1, [r1, #0x54]
	ldrh r2, [r0, #0xc]
	ldr r1, [r1, #4]
	ldrh r0, [r0, #0xe]
	lsls r4, r1, #5
	lsls r1, r1, #2
	lsrs r1, r1, #0x1d
	lsls r5, r1
	lsrs r4, r4, #0x1d
	lsls r6, r4
	ldr r1, [sp, #0x3c]
	movs r3, #0
	str r3, [r1, #0x28]
	muls r2, r6
	lsls r2, r2, #0x10
	ldr r1, [sp, #0x3c]
	asrs r2, r2, #0x10
	subs r2, #0xf0
	str r3, [r1, #0x2c]
	lsls r1, r2, #0x10
	ldr r2, [sp, #0x3c]
	muls r0, r5
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r1, [r2, #0x30]
	ldr r1, [sp, #0x3c]
	subs r0, #0xa0
	lsls r0, r0, #0x10
	str r0, [r1, #0x34]
	movs r0, #1
	ldr r1, [sp, #0x3c]
	lsls r0, r0, #0x13
	str r0, [r1, #0x38]
	ldr r0, [sp, #0x40]
	movs r1, #1
	ldr r0, [r0, #0x3c]
	lsls r1, r1, #0x18
	bics r0, r1
	lsrs r1, r1, #1
	bics r0, r1
	ldr r1, [sp, #0x40]
	str r0, [r1, #0x3c]
	add sp, #0x4c
	pop {r4, r5, r6, r7}
	pop {r3}
	movs r0, #1
	bx r3


	thumb_func_start sub_800DEF8
sub_800DEF8
	push {r0, r1, r2, r4, r5, r6, r7, lr}
	movs r2, #0x27
	lsls r2, r2, #6
	adds r1, r0, r2
	sub sp, #0x10
	str r1, [sp, #0xc]
	adds r7, r0, #0
	ldr r0, [r1, #0x3c]
	movs r1, #1
	lsls r1, r1, #0x18
	orrs r0, r1
	ldr r1, [sp, #0xc]
	movs r6, #0
	str r0, [r1, #0x3c]
	adds r0, r2, #0
	subs r0, #0xff
	subs r0, #0x81
	adds r4, r7, r0
	ldr r1, [r7, #8]
	movs r0, #0
	cmp r1, #0
	beq %170
	ldrb r0, [r1]
170
	cmp r0, #0
	bls %177
171
	ldr r0, [r4, #0x38]
	ldr r1, [r4, #0x3c]
	str r0, [r4, #0x40]
	str r1, [r4, #0x44]
	mov ip, r0
	ldr r0, [sp, #0x18]
	cmp r0, #0
	bne %173
	ldr r0, [r4, #0x50]
	ldr r2, [r0]
	lsls r2, r2, #0x1c
	lsrs r2, r2, #0x1e
	cmp r2, #1
	beq %172
	cmp r2, #2
	bne %173
172
	ldr r2, [sp, #0x14]
	ldr r2, [r2]
	asrs r3, r2, #0x1f
	lsrs r3, r3, #0x18
	adds r2, r3, r2
	movs r3, #0x10
	ldrsh r5, [r0, r3]
	asrs r2, r2, #8
	muls r2, r5
	add r2, ip
	str r2, [r4, #0x38]
	ldr r2, [sp, #0x14]
	ldr r2, [r2, #4]
	asrs r3, r2, #0x1f
	lsrs r3, r3, #0x18
	adds r2, r3, r2
	movs r3, #0x12
	ldrsh r0, [r0, r3]
	asrs r2, r2, #8
	muls r2, r0
	adds r0, r2, r1
	str r0, [r4, #0x3c]
	b %174
173
	ldr r0, [r4, #0x50]
	ldr r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1e
	cmp r0, #3
	bne %185
	lsls r0, r6, #2
	movs r1, #0x27
	lsls r1, r1, #6
	adds r0, r0, r7
	adds r0, r0, r1
	ldr r3, [r0, #0x1c]
	cmp r3, #0
	beq %174
	adds r1, r4, #0
	adds r1, #0x38
	ldr r2, [r0, #0x2c]
	adds r0, r6, #0
	bl __call_via_r3
174
	ldr r0, [r4, #0x38]
	ldr r1, [r4, #0x40]
	asrs r0, r0, #0x10
	asrs r1, r1, #0x10
	subs r0, r0, r1
	str r0, [sp, #4]
	ldr r0, [r4, #0x3c]
	ldr r1, [r4, #0x44]
	asrs r0, r0, #0x10
	asrs r1, r1, #0x10
	subs r0, r0, r1
	str r0, [sp, #8]
	ldr r0, [r4, #0x50]
	ldr r1, [r0]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1e
	cmp r1, #3
	bne %179
	ldr r1, [sp, #4]
	cmp r1, #7
	ble %175
	ldrh r0, [r0, #0xc]
	ldr r1, [sp, #4]
	lsls r0, r0, #3
	subs r0, r0, r1
	str r0, [sp, #4]
	b %176
175
	ldr r1, [sp, #4]
	adds r3, r1, #7
	bge %176
	ldrh r0, [r0, #0xc]
	ldr r1, [sp, #4]
	lsls r0, r0, #3
	adds r0, r0, r1
	str r0, [sp, #4]
176
	ldr r0, [sp, #8]
	cmp r0, #7
	ble %178
	ldr r0, [r4, #0x50]
	ldrh r0, [r0, #0xe]
	ldr r1, [sp, #8]
	lsls r0, r0, #3
	subs r0, r0, r1
	str r0, [sp, #8]
	b %179
177
	b %199
178
	ldr r0, [sp, #8]
	adds r3, r0, #7
	bge %179
	ldr r0, [r4, #0x50]
	ldrh r0, [r0, #0xe]
	ldr r1, [sp, #8]
	lsls r0, r0, #3
	adds r0, r0, r1
	str r0, [sp, #8]
179
	ldr r1, [sp, #4]
	movs r5, #0
	movs r0, #0
	cmp r1, #0
	beq %184
	ldr r1, [r4, #0x40]
	lsls r2, r1, #0xd
	mov ip, r2
	lsrs r2, r2, #0x1d
	ldr r2, [r4, #0x38]
	bne %180
	lsls r2, r2, #0xd
	lsrs r2, r2, #0x1d
	beq %181
	movs r5, #1
	b %181
180
	lsls r2, r2, #0xd
	lsrs r2, r2, #0x1d
	bne %181
	movs r0, #1
181
	asrs r2, r1, #0x13
	ldr r1, [r4, #0x38]
	asrs r3, r1, #0x13
	cmp r2, r3
	beq %183
	mov r2, ip
	lsrs r2, r2, #0x1d
	beq %182
	movs r0, #1
182
	lsls r1, r1, #0xd
	lsrs r1, r1, #0x1d
	beq %183
	movs r5, #1
183
	movs r2, #1
	ldr r1, [r4, #0x48]
	lsls r2, r2, #0xb
	orrs r1, r2
	str r1, [r4, #0x48]
184
	ldr r1, [sp, #8]
	cmp r1, #0
	beq %191
	ldr r1, [r4, #0x44]
	lsls r2, r1, #0xd
	mov ip, r2
	b %186
185
	b %197
186
	lsrs r2, r2, #0x1d
	ldr r2, [r4, #0x3c]
	bne %187
	lsls r2, r2, #0xd
	lsrs r2, r2, #0x1d
	beq %188
	movs r2, #2
	orrs r5, r2
	b %188
187
	lsls r2, r2, #0xd
	lsrs r2, r2, #0x1d
	bne %188
	movs r2, #2
	orrs r0, r2
188
	asrs r2, r1, #0x13
	ldr r1, [r4, #0x3c]
	asrs r3, r1, #0x13
	cmp r2, r3
	beq %190
	mov r2, ip
	lsrs r2, r2, #0x1d
	beq %189
	movs r2, #2
	orrs r0, r2
189
	lsls r1, r1, #0xd
	lsrs r1, r1, #0x1d
	beq %190
	movs r2, #2
	orrs r5, r2
190
	movs r2, #1
	ldr r1, [r4, #0x48]
	lsls r2, r2, #0xb
	orrs r1, r2
	str r1, [r4, #0x48]
191
	cmp r0, #0
	beq %192
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r3, [r0, #0x1c]
	cmp r3, #0
	beq %192
	ldr r0, _0800E174
	add r2, sp, #4
	adds r1, r4, #0
	ldr r0, [r0]
	bl __call_via_r3
192
	cmp r5, #0
	beq %193
	lsls r0, r5, #2
	adds r0, r0, r4
	ldr r3, [r0, #0xc]
	cmp r3, #0
	beq %193
	ldr r0, _0800E174
	add r2, sp, #4
	adds r1, r4, #0
	ldr r0, [r0]
	bl __call_via_r3
193
	ldr r1, [r4, #0x50]
	ldrh r0, [r1, #0xc]
	ldrh r1, [r1, #0xe]
	ldr r2, [r4, #0x38]
	lsls r0, r0, #0x13
	lsls r1, r1, #0x13
	cmp r2, r0
	ble %194
	subs r2, r2, r0
	str r2, [r4, #0x38]
	ldr r2, [r4, #0x40]
	subs r0, r2, r0
	str r0, [r4, #0x40]
	b %195
194
	NEGS r3, r0
	cmp r2, r3
	bge %195
	adds r2, r2, r0
	str r2, [r4, #0x38]
	ldr r2, [r4, #0x40]
	adds r0, r2, r0
	str r0, [r4, #0x40]
195
	ldr r0, [r4, #0x3c]
	cmp r0, r1
	ble %196
	subs r0, r0, r1
	str r0, [r4, #0x3c]
	ldr r0, [r4, #0x44]
	subs r0, r0, r1
	str r0, [r4, #0x44]
	b %197
196
	NEGS r2, r1
	cmp r0, r2
	bge %197
	adds r0, r0, r1
	str r0, [r4, #0x3c]
	ldr r0, [r4, #0x44]
	adds r0, r0, r1
	str r0, [r4, #0x44]
197
	ldr r1, [r7, #8]
	adds r6, #1
	adds r4, #0x58
	movs r0, #0
	cmp r1, #0
	beq %198
	ldrb r0, [r1]
198
	cmp r0, r6
	bls %199
	b %171
199
	ldr r1, [sp, #0xc]
	ldr r0, [r1, #0x3c]
	movs r1, #1
	lsls r1, r1, #0x18
	bics r0, r1
	ldr r1, [sp, #0xc]
	str r0, [r1, #0x3c]
	add sp, #0x1c
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	ALIGN
_0800E15C DCDU 0x007FF000
_0800E160 DCDU gUnknown_08041448
_0800E164 DCDU gUnknown_08041468
_0800E168 DCDU gUnknown_08041488
_0800E16C DCDU gUnknown_080414A8
_0800E170 DCDU 0xFFFFF001
_0800E174 DCDU gUnknown_03003EB0
	END
