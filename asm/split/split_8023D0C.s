	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gPlayerEntity
	IMPORT gUnknown_03003448
	IMPORT gUnknown_0300345C
	IMPORT gUnknown_03003EA0
	IMPORT sub_800065C
	IMPORT sub_8000D5A
	IMPORT sub_8000DE6
	IMPORT sub_80143E0
	IMPORT sub_8014436
	IMPORT sub_80268AC
	IMPORT __call_via_r1
	IMPORT __16__rt_sdiv
	IMPORT __nw__FUi
	IMPORT sub_803DA18

	thumb_func_start sub_8023D0C
sub_8023D0C
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	bne %2
	movs r0, #0xff
	adds r0, #0x95
	bl __nw__FUi
	adds r4, r0, #0
	bne %2
	adds r0, r4, #0
1
	pop {r3, r4, r5}
	pop {r3}
	bx r3
2
	movs r5, #0
	strb r5, [r4, #0xc]
	adds r0, r4, #0
	adds r0, #0xc0
	strb r5, [r4, #0xd]
	str r5, [r0, #8]
	str r5, [r0, #0xc]
	str r5, [r0, #0x10]
	adds r0, #0x5c
	bl sub_80143E0
	movs r0, #0
	adds r1, r5, #0
3
	lsls r2, r0, #2
	adds r2, r2, r4
	adds r0, #1
	lsls r0, r0, #0x18
	adds r2, #0xc0
	lsrs r0, r0, #0x18
	cmp r0, #0x10
	str r1, [r2, #0x1c]
	blo %3
	movs r0, #0
4
	lsls r2, r0, #2
	adds r2, r2, r4
	adds r0, #1
	lsls r0, r0, #0x18
	adds r2, #0xc0
	lsrs r0, r0, #0x18
	cmp r0, #2
	str r1, [r2, #0x14]
	blo %4
	movs r0, #0
5
	lsls r2, r0, #2
	adds r0, #1
	lsls r0, r0, #0x18
	adds r2, r2, r4
	lsrs r0, r0, #0x18
	cmp r0, #6
	str r1, [r2, #0x10]
	blo %5
	movs r0, #0
6
	lsls r3, r0, #2
	adds r0, #1
	lsls r0, r0, #0x18
	adds r3, r3, r4
	lsrs r0, r0, #0x18
	adds r2, r1, #0
	cmp r0, #8
	str r1, [r3, #0x28]
	blo %6
	movs r0, #0
7
	lsls r1, r0, #2
	adds r1, r1, r4
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r2, [r1, #0x48]
	str r2, [r1, #0x60]
	cmp r0, #6
	blo %7
	movs r0, #0
8
	lsls r1, r0, #2
	adds r1, r1, r4
	str r2, [r1, #0x78]
	adds r0, #1
	lsls r0, r0, #0x18
	adds r1, #0x80
	lsrs r0, r0, #0x18
	cmp r0, #4
	str r2, [r1, #8]
	blo %8
	movs r0, #0
9
	lsls r1, r0, #2
	adds r1, r1, r4
	adds r1, #0x80
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r2, [r1, #0x18]
	str r2, [r1, #0x30]
	cmp r0, #6
	blo %9
	adds r0, r4, #0
	b %1

	thumb_func_start sub_8023DD0
sub_8023DD0
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r0, #0xff
	adds r0, #0x1d
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r1, r2, r1
	bl __call_via_r1
	movs r5, #0
	movs r7, #0
10
	lsls r0, r5, #2
	adds r6, r0, r4
	ldr r0, [r6, #0x10]
	cmp r0, #0
	beq %11
	ldr r0, _0802406C
	adds r1, r6, #0
	adds r1, #0x10
	ldr r0, [r0]
	bl sub_8000DE6
	str r7, [r6, #0x10]
11
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #6
	blo %10
	movs r5, #0
12
	lsls r0, r5, #2
	adds r6, r0, r4
	ldr r0, [r6, #0x28]
	cmp r0, #0
	beq %13
	ldr r0, _0802406C
	adds r1, r6, #0
	adds r1, #0x28
	ldr r0, [r0]
	bl sub_8000DE6
	str r7, [r6, #0x28]
13
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #8
	blo %12
	movs r5, #0
14
	lsls r0, r5, #2
	adds r6, r0, r4
	ldr r0, [r6, #0x48]
	cmp r0, #0
	beq %15
	ldr r0, _0802406C
	adds r1, r6, #0
	adds r1, #0x48
	ldr r0, [r0]
	bl sub_8000DE6
	str r7, [r6, #0x48]
15
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #6
	blo %14
	movs r5, #0
16
	lsls r0, r5, #2
	adds r0, r0, r4
	adds r6, r0, #0
	adds r6, #0x80
	ldr r1, [r6, #0x18]
	cmp r1, #0
	beq %17
	adds r1, r0, #0
	ldr r0, _0802406C
	adds r1, #0x98
	ldr r0, [r0]
	bl sub_8000DE6
	str r7, [r6, #0x18]
17
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #6
	blo %16
	movs r5, #0
18
	lsls r0, r5, #2
	adds r6, r0, r4
	ldr r0, [r6, #0x78]
	cmp r0, #0
	beq %19
	ldr r0, _0802406C
	adds r1, r6, #0
	adds r1, #0x78
	ldr r0, [r0]
	bl sub_8000DE6
	str r7, [r6, #0x78]
19
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #4
	blo %18
	movs r5, #0
20
	lsls r0, r5, #2
	adds r0, r0, r4
	adds r6, r0, #0
	adds r6, #0x80
	ldr r1, [r6, #0x30]
	cmp r1, #0
	beq %21
	adds r1, r0, #0
	ldr r0, _0802406C
	adds r1, #0xb0
	ldr r0, [r0]
	bl sub_8000DE6
	str r7, [r6, #0x30]
21
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #6
	blo %20
	movs r5, #0
22
	lsls r0, r5, #2
	adds r6, r0, r4
	ldr r0, [r6, #0x60]
	cmp r0, #0
	beq %23
	ldr r0, _0802406C
	adds r1, r6, #0
	adds r1, #0x60
	ldr r0, [r0]
	bl sub_8000DE6
	str r7, [r6, #0x60]
23
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #6
	blo %22
	movs r5, #0
24
	lsls r0, r5, #2
	adds r0, r0, r4
	adds r6, r0, #0
	adds r6, #0x80
	ldr r1, [r6, #8]
	cmp r1, #0
	beq %25
	adds r1, r0, #0
	ldr r0, _0802406C
	adds r1, #0x88
	ldr r0, [r0]
	bl sub_8000DE6
	str r7, [r6, #8]
25
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #4
	blo %24
	movs r5, #0
26
	lsls r0, r5, #2
	adds r0, r0, r4
	adds r6, r0, #0
	adds r6, #0xc0
	ldr r1, [r6, #0x14]
	cmp r1, #0
	beq %27
	adds r1, r0, #0
	ldr r0, _0802406C
	adds r1, #0xd4
	ldr r0, [r0]
	bl sub_8000DE6
	str r7, [r6, #0x14]
27
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #2
	blo %26
	adds r5, r4, #0
	adds r5, #0xc0
	ldr r0, [r5, #0x10]
	cmp r0, #0
	beq %28
	ldr r0, _0802406C
	adds r1, r4, #0
	adds r1, #0xd0
	ldr r0, [r0]
	bl sub_8000DE6
	str r7, [r5, #0x10]
28
	ldr r0, [r5, #8]
	cmp r0, #0
	beq %29
	ldr r0, _0802406C
	adds r1, r4, #0
	adds r1, #0xc8
	ldr r0, [r0]
	bl sub_8000DE6
	str r7, [r5, #8]
29
	ldr r0, [r5, #0xc]
	cmp r0, #0
	beq %30
	ldr r0, _0802406C
	adds r1, r4, #0
	adds r1, #0xcc
	ldr r0, [r0]
	bl sub_8000DE6
	str r7, [r5, #0xc]
30
	ldr r0, _08024070
	ldr r0, [r0]
	adds r0, #0xc0
	bl sub_80268AC
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	thumb_func_start sub_8023F88
sub_8023F88
	push {r0, r1, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r0, [r0, #0x28]
	sub sp, #4
	cmp r0, #0
	beq %31
	adds r0, r5, #0
	bl sub_8023DD0
31
	movs r4, #0
	movs r7, #0
32
	lsls r0, r4, #2
	adds r0, r0, r5
	adds r6, r0, #0
	adds r6, #0xc0
	ldr r1, [r6, #0x1c]
	cmp r1, #0
	beq %33
	adds r1, r0, #0
	ldr r0, _0802406C
	adds r1, #0xdc
	ldr r0, [r0]
	bl sub_8000DE6
	str r7, [r6, #0x1c]
33
	adds r4, #1
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	cmp r4, #0x10
	blo %32
	adds r0, r5, #0
	adds r0, #0xff
	movs r1, #0
	adds r0, #0x1d
	bl sub_8014436
	ldr r0, [sp, #8]
	cmp r0, #0
	beq %34
	adds r0, r5, #0
	bl sub_803DA18
34
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	thumb_func_start sub_8023FE4
sub_8023FE4
	push {r0, r4, r5, r6, r7, lr}
	ldr r0, _08024074
	movs r3, #8
	ldr r0, [r0]
	sub sp, #8
	adds r0, #0xa0
	ldrsb r1, [r0, r3]
	lsls r1, r1, #6
	movs r3, #9
	ldrsb r0, [r0, r3]
	bl __16__rt_sdiv
	lsls r6, r0, #0x10
	lsrs r6, r6, #0x10
	movs r4, #2
35
	lsls r0, r4, #4
	subs r0, #0x20
	cmp r0, r6
	bge %36
	subs r0, r6, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	b %37
36
	movs r0, #0
37
	ldr r2, _08024078
	adds r1, r2, #0
	cmp r0, #0x10
	bhs %38
	ldr r1, _0802407C
	adds r1, r0, r1
38
	subs r0, r2, r1
	ldr r1, _0802407C
	adds r0, r0, r1
	lsls r5, r0, #0x10
	ldr r1, [sp, #8]
	lsls r0, r4, #2
	adds r7, r0, r1
	lsrs r5, r5, #0x10
	adds r7, #0x80
	ldr r1, [r7, #0x30]
	ldr r0, _08024080
	str r1, [sp, #4]
	ldr r0, [r0]
	bl sub_8000D5A
	ldr r0, [r0, #0x20]
	ldr r1, [sp, #4]
	ldr r1, [r1, #0x10]
	subs r0, r1, r0
	asrs r0, r0, #3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r5
	beq %39
	adds r1, r5, #0
	ldr r0, [r7, #0x30]
	bl sub_800065C
39
	adds r4, #1
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	cmp r4, #6
	blo %35
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	ALIGN
_0802406C DCDU gUnknown_03003448
_08024070 DCDU gUnknown_0300345C
_08024074 DCDU gPlayerEntity
_08024078 DCDU 0x0000087D
_0802407C DCDU 0x0000086D
_08024080 DCDU gUnknown_03003EA0
	END
