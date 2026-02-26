	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT strlen

	thumb_func_start sub_802ED1C

sub_802ED1C
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r4, r0, #0
	bl strlen
	cmp r0, #0
	beq %16
	movs r7, #0x47
	movs r6, #0x48
1
	ldrb r1, [r5]
	cmp r1, #0x20
	bne %2
	movs r1, #0xff
	strb r1, [r4]
	adds r4, #1
	b %39
2
	cmp r1, #0xa
	bne %3
	movs r1, #0xfe
	strb r1, [r4]
	adds r4, #1
	b %39
3
	movs r3, #0
	ldrsb r2, [r5, r3]
	adds r3, r2, #0
	subs r3, #0x30
	cmp r3, #9
	bhi %4
	adds r1, r2, #0
	adds r1, #0xd1
	strb r1, [r4]
	adds r4, #1
	b %39
4
	adds r3, r2, #0
	subs r3, #0x41
	cmp r3, #0x19
	bhi %5
	adds r1, r2, #0
	adds r1, #0xe4
	strb r1, [r4]
	adds r4, #1
	b %39
5
	adds r3, r2, #0
	subs r3, #0x61
	cmp r3, #0x19
	bhi %6
	adds r1, r2, #0
	adds r1, #0xaa
	strb r1, [r4]
	adds r4, #1
	b %39
6
	cmp r1, #0x2e
	bne %7
	movs r1, #0x3f
	strb r1, [r4]
	adds r4, #1
	b %39
7
	cmp r1, #0x2c
	bne %8
	movs r1, #0x40
	strb r1, [r4]
	adds r4, #1
	b %39
8
	cmp r1, #0x3a
	bne %9
	movs r1, #0x41
	strb r1, [r4]
	adds r4, #1
	b %39
9
	cmp r1, #0x3b
	bne %10
	movs r1, #0x42
	strb r1, [r4]
	adds r4, #1
	b %39
10
	cmp r1, #0x21
	bne %11
	movs r1, #0x43
	strb r1, [r4]
	adds r4, #1
	b %39
11
	cmp r1, #0x3f
	bne %12
	movs r1, #0x44
	strb r1, [r4]
	adds r4, #1
	b %39
12
	cmp r1, #0x26
	bne %13
	movs r1, #0x45
	strb r1, [r4]
	adds r4, #1
	b %39
13
	cmp r1, #0x28
	bne %14
	movs r1, #0x46
	strb r1, [r4]
	adds r4, #1
	b %39
14
	cmp r1, #0x29
	bne %15
	strb r7, [r4]
	adds r4, #1
	b %39
15
	cmp r1, #0x27
	bne %17
	strb r6, [r4]
	adds r4, #1
	b %39
16
	b %40
17
	cmp r1, #0x60
	bne %18
	strb r6, [r4]
	adds r4, #1
	b %39
18
	cmp r1, #0x2d
	bne %19
	movs r1, #0x49
	strb r1, [r4]
	adds r4, #1
	b %39
19
	cmp r1, #0x2f
	bne %20
	movs r1, #0x4a
	strb r1, [r4]
	adds r4, #1
	b %39
20
	cmp r1, #0x2b
	bne %21
	movs r1, #0x4b
	strb r1, [r4]
	adds r4, #1
	b %39
21
	cmp r1, #0xa9
	bne %22
	movs r1, #0x4c
	strb r1, [r4]
	adds r4, #1
	b %39
22
	cmp r1, #0x99
	bne %23
	movs r1, #0x4d
	strb r1, [r4]
	adds r4, #1
	b %39
23
	cmp r1, #0x5f
	bne %24
	movs r1, #0x4e
	strb r1, [r4]
	adds r4, #1
	b %39
24
	cmp r1, #0x24
	bne %25
	movs r1, #0x4f
	strb r1, [r4]
	adds r4, #1
	b %39
25
	cmp r1, #0x22
	beq %26
	cmp r1, #0x93
	beq %26
	cmp r1, #0x94
	bne %27
26
	movs r1, #0x50
	strb r1, [r4]
	adds r4, #1
	b %39
27
	cmp r1, #0x3c
	bne %28
	movs r1, #0x51
	strb r1, [r4]
	adds r4, #1
	b %39
28
	cmp r1, #0x3e
	bne %29
	movs r1, #0x52
	strb r1, [r4]
	adds r4, #1
	b %39
29
	cmp r1, #0x2a
	bne %30
	movs r1, #0x53
	strb r1, [r4]
	adds r4, #1
	b %39
30
	cmp r1, #0x3d
	bne %31
	movs r1, #0x54
	strb r1, [r4]
	adds r4, #1
	b %39
31
	cmp r1, #0xae
	bne %32
	movs r1, #0x55
	strb r1, [r4]
	adds r4, #1
	b %39
32
	cmp r1, #0x23
	bne %33
	movs r1, #0x56
	strb r1, [r4]
	adds r4, #1
	b %39
33
	cmp r1, #0x40
	bne %34
	movs r1, #0x57
	strb r1, [r4]
	adds r4, #1
	b %39
34
	cmp r1, #0x25
	bne %35
	movs r1, #0x58
	strb r1, [r4]
	adds r4, #1
	b %39
35
	cmp r1, #0x5c
	bne %36
	movs r1, #0x59
	strb r1, [r4]
	adds r4, #1
	b %39
36
	cmp r1, #0x7e
	bne %37
	movs r1, #0x5a
	strb r1, [r4]
	adds r4, #1
	b %39
37
	cmp r1, #0x5b
	bne %38
	strb r1, [r4]
	adds r4, #1
	b %39
38
	cmp r1, #0x5d
	bne %39
	movs r1, #0x5c
	strb r1, [r4]
	adds r4, #1
39
	subs r0, #1
	adds r5, #1
	cmp r0, #0
	beq %40
	b %1
40
	movs r0, #0
	strb r0, [r4]
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	END
