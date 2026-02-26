	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT CpuSet
	IMPORT __16__rt_memcpy
	IMPORT sub_800CD98
	IMPORT sub_803D5A4
	IMPORT sub_803D9A8
	IMPORT sub_803D9C4
	IMPORT sub_8040490

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

	ALIGN
_0800D878 DCDU 0x00007C1F
_0800D87C DCDU REG_BG0CNT
_0800D880 DCDU REG_DMA3
_0800D884 DCDU 0x84000008

	END
