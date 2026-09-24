	non_word_aligned_thumb_func_start CollectPickup
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r0, [r0, #0x2c]
	sub sp, #0xc
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	beq %14
	movs r1, #0
	bl sub_80401E4
14
	ldr r0, [r5, #0x30]
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	beq %15
	movs r1, #0
	bl sub_80401E4
15
	movs r4, #0
	str r4, [r5, #0x58]
	str r4, [r5, #0x5c]
	str r4, [sp, #4]
	str r4, [sp, #8]
	ldr r0, [r5, #0x2c]
	add r1, sp, #4
	bl sub_803FF24
	str r4, [sp, #4]
	str r4, [sp, #8]
	ldr r0, [r5, #0x30]
	add r1, sp, #4
	bl sub_803FF24
	adds r6, r4, #0
	adds r2, r4, #0
	adds r4, r5, #0
	adds r4, #0xa0
	strh r2, [r4, #2]
	ldrh r0, [r4]
	ldr r1, _0802F52C
	cmp r0, r1
	bne %17
	ldr r0, _0802F540
	ldr r0, [r0]
	adds r0, #0xff
	adds r0, #0x41
	bl sub_8028C2E
	ldr r0, _0802F544
	movs r1, #4
	ldr r0, [r0]
	adds r0, #0xac
	bl ModifyPlayerHealth
16
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
17
	ldr r1, _0802F534
	cmp r0, r1
	bne %19
	ldr r0, _0802F540
	movs r1, #5
	ldr r0, [r0]
	lsls r1, r1, #8
	adds r0, r1, r0
	bl sub_8028C2E
	movs r0, #0xb8
	ldrsb r1, [r0, r5]
	ldr r0, _0802F544
	ldr r0, [r0]
	adds r0, #0xac
	bl sub_8023A70
	adds r1, r5, #0
	adds r1, #0x80
	ldr r0, [r1, #0x14]
	movs r2, #1
	lsls r2, r2, #0xb
	bics r0, r2
	str r0, [r1, #0x14]
18
	b %16
19
	ldr r1, _0802F538
	ldr r5, _0802F548
	cmp r0, r1
	blo %20
	ldr r1, _0802F53C
	cmp r0, r1
	bhs %20
	ldr r0, _0802F540
	movs r1, #5
	ldr r0, [r0]
	lsls r1, r1, #8
	adds r0, r1, r0
	bl sub_8028C2E
	ldr r7, _0802F54C
	movs r2, #0
	movs r1, #4
	ldr r0, [r7]
	bl sub_803F72C
	movs r1, #0x14
	strh r1, [r0]
	movs r1, #4
	strh r1, [r0, #2]
	movs r2, #0
	str r2, [sp]
	adds r2, r0, #0
	ldr r0, _0802F550
	movs r3, #2
	movs r1, #1
	ldr r0, [r0]
	bl sub_8017A0A
	adds r0, r7, #0
	movs r2, #0
	movs r1, #0x10
	ldr r0, [r0]
	bl sub_803F72C
	movs r1, #3
	strh r1, [r0]
	movs r2, #0x10
	strh r2, [r0, #2]
	str r1, [r0, #4]
	str r6, [r0, #8]
	movs r2, #0
	str r2, [sp]
	adds r2, r0, #0
	ldr r7, _0802F550
	movs r3, #2
	movs r1, #1
	ldr r0, [r7]
	bl sub_8017A0A
	ldr r0, _0802F54C
	movs r2, #0
	movs r1, #0x10
	ldr r0, [r0]
	bl sub_803F72C
	movs r1, #0x19
	strh r1, [r0]
	movs r2, #0x10
	strh r2, [r0, #2]
	ldr r1, _0802F554
	str r6, [r0, #4]
	strh r1, [r0, #8]
	strh r6, [r0, #0xa]
	strh r6, [r0, #0xc]
	movs r6, #2
	movs r2, #0
	str r2, [sp]
	adds r3, r6, #0
	adds r2, r0, #0
	ldr r0, [r7]
	movs r1, #3
	bl sub_8017A0A
	ldr r0, _0802F54C
	movs r2, #0
	movs r1, #4
	ldr r0, [r0]
	bl sub_803F72C
	movs r1, #0x1b
	strh r1, [r0]
	movs r1, #4
	strh r1, [r0, #2]
	movs r2, #0
	str r2, [sp]
	adds r3, r6, #0
	adds r2, r0, #0
	ldr r0, [r7]
	movs r1, #3
	bl sub_8017A0A
	ldr r0, _0802F544
	movs r1, #1
	ldr r0, [r0]
	adds r0, #0xac
	bl CollectFirefly
	ldrh r0, [r4]
	cmp r0, #0
	beq %18
	lsls r2, r0, #0x1b
	lsrs r2, r2, #0x1b
	movs r1, #1
	lsls r1, r2
	lsrs r0, r0, #5
	lsls r0, r0, #2
	ldr r2, [r5, r0]
	orrs r1, r2
	str r1, [r5, r0]
	b %16
20
	b %21
21
	bl GetEWRAMStart
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0x64
	bl sub_803DA9C
	ldrh r1, [r4]
	adds r6, r0, #0
	cmp r1, #0
	beq %22
	lsls r2, r1, #0x1b
	lsrs r2, r2, #0x1b
	movs r0, #1
	lsls r0, r2
	lsrs r1, r1, #5
	lsls r1, r1, #2
	ldr r2, [r5, r1]
	orrs r0, r2
	str r0, [r5, r1]
22
	ldrh r1, [r4]
	cmp r1, #0xc6
	blo %23
	cmp r1, #0xe4
	bhs %23
	ldr r0, _0802F558
	subs r1, #0x26
	ldr r0, [r0]
	movs r3, #0xff
	ldr r2, [r0, #4]
	ldrb r4, [r0, #9]
	ldrh r7, [r2, #4]
	ldr r5, [r2, #8]
	lsls r4, r4, #2
	lsls r1, r7
	adds r1, r5, r1
	ldr r1, [r1, r4]
	ldr r2, [r2, #0xc]
	str r6, [sp]
	adds r2, r2, r1
	str r2, [sp, #4]
	movs r2, #0
	ldr r1, _0802F55C
	bl sub_803F528
	ldr r0, _0802F540
	movs r1, #5
	ldr r0, [r0]
	lsls r1, r1, #8
	adds r0, r1, r0
	bl sub_8028C2E
	b %31
23
	movs r0, #0xff
	adds r0, #0x54
	cmp r1, r0
	blo %31
	movs r0, #0x87
	lsls r0, r0, #2
	cmp r1, r0
	bhs %31
	adds r0, r1, #0
	subs r0, #0xff
	subs r0, #0x55
	asrs r1, r0, #0x1f
	lsrs r1, r1, #0x1e
	adds r0, r1, r0
	asrs r0, r0, #2
	lsls r3, r0, #0x10
	lsrs r3, r3, #0x10
	lsls r2, r3, #2
	adds r1, r2, #0
	adds r1, #0xff
	adds r1, #0x55
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r7, r1, #0x1b
	lsrs r7, r7, #0x1b
	movs r4, #1
	lsls r4, r7
	movs r0, #0
	cmp r1, #0
	beq %24
	lsrs r1, r1, #5
	lsls r1, r1, #2
	ldr r1, [r5, r1]
	ands r1, r4
	beq %25
24
	movs r0, #1
25
	adds r1, r2, #0
	adds r1, #0xff
	adds r1, #0x56
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r7, r1, #0x1b
	lsrs r7, r7, #0x1b
	movs r4, #1
	b %26
	ALIGN
_0802F518 DCDU __VTABLE__344Anonymous18
_0802F51C DCDU 0xF000FFFF
_0802F520 DCDU gUnknown_080414B8
_0802F524 DCDU 0x00010000
_0802F528 DCDU 0x00000000
_0802F52C DCDU 0x00002710
_0802F530 DCDU 0x00000253
_0802F534 DCDU 0x00002712
_0802F538 DCDU 0x0000021D
_0802F53C DCDU 0x00000245
_0802F540 DCDU gUnknown_0300345C
_0802F544 DCDU gPlayerEntity
_0802F548 DCDU gUnknown_03003478
_0802F54C DCDU gUnknown_03003E88
_0802F550 DCDU gUnknown_03003454
_0802F554 DCDU 0x000004EC
_0802F558 DCDU gUnknown_0300344C
_0802F55C DCDU 0x000004E6
26
	lsls r4, r7
	cmp r1, #0
	beq %27
	lsrs r1, r1, #5
	lsls r1, r1, #2
	ldr r1, [r5, r1]
	ands r1, r4
	beq %28
27
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
28
	adds r1, r2, #0
	adds r1, #0xff
	adds r1, #0x57
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r7, r1, #0x1b
	lsrs r7, r7, #0x1b
	movs r4, #1
	lsls r4, r7
	cmp r1, #0
	beq %29
	lsrs r1, r1, #5
	lsls r1, r1, #2
	ldr r1, [r5, r1]
	ands r1, r4
	beq %30
29
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
30
	adds r2, #0xff
	adds r2, #0x58
	lsls r1, r2, #0x10
	lsrs r1, r1, #0x10
	lsls r4, r1, #0x1b
	lsrs r4, r4, #0x1b
	b %32
31
	b %37
32
	movs r2, #1
	lsls r2, r4
	cmp r1, #0
	beq %33
	lsrs r1, r1, #5
	lsls r1, r1, #2
	ldr r1, [r5, r1]
	ands r1, r2
	beq %34
33
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
34
	ldr r1, _0802F864
	ldr r4, [r1]
	lsls r1, r3, #1
	ldr r2, [r4, #4]
	adds r1, #0xcd
	ldrh r7, [r2, #4]
	ldrb r3, [r4, #9]
	ldr r5, [r2, #8]
	lsls r1, r7
	adds r1, r5, r1
	lsls r3, r3, #2
	ldr r1, [r1, r3]
	ldr r2, [r2, #0xc]
	adds r1, r2, r1
	cmp r0, #4
	bhs %35
	movs r2, #4
	subs r2, r2, r0
	str r2, [sp, #8]
	movs r2, #0
	str r1, [sp, #4]
	movs r3, #0xff
	adds r0, r4, #0
	ldr r1, _0802F868
	str r6, [sp]
	bl sub_803F528
	b %36
35
	str r1, [sp, #4]
	movs r1, #0x9d
	lsls r1, r1, #3
	movs r3, #0xff
	movs r2, #0
	adds r0, r4, #0
	str r6, [sp]
	bl sub_803F528
36
	ldr r0, _0802F86C
	movs r1, #5
	ldr r0, [r0]
	lsls r1, r1, #8
	adds r0, r1, r0
	bl sub_8028C2E
37
	ldr r7, _0802F870
	movs r2, #0
	movs r1, #4
	ldr r0, [r7]
	bl sub_803F72C
	movs r1, #0x14
	strh r1, [r0]
	movs r1, #4
	strh r1, [r0, #2]
	movs r2, #0
	movs r4, #2
	adds r3, r4, #0
	str r2, [sp]
	adds r2, r0, #0
	ldr r5, _0802F874
	movs r1, #1
	ldr r0, [r5]
	bl sub_8017A0A
	movs r2, #0
	movs r1, #0x10
	ldr r0, [r7]
	bl sub_803F72C
	movs r1, #3
	strh r1, [r0]
	movs r2, #0x10
	strh r2, [r0, #2]
	str r1, [r0, #4]
	movs r3, #0
	str r3, [r0, #8]
	movs r2, #0
	str r2, [sp]
	adds r3, r4, #0
	adds r2, r0, #0
	ldr r0, [r5]
	movs r1, #1
	bl sub_8017A0A
	movs r2, #0
	movs r1, #0x10
	ldr r0, [r7]
	bl sub_803F72C
	movs r1, #0x19
	strh r1, [r0]
	movs r2, #0x10
	strh r2, [r0, #2]
	str r6, [r0, #4]
	movs r1, #0
	strh r1, [r0, #0xa]
	strh r1, [r0, #0xc]
	movs r2, #0
	str r2, [sp]
	adds r3, r4, #0
	adds r2, r0, #0
	ldr r0, [r5]
	movs r1, #3
	bl sub_8017A0A
	movs r2, #0
	movs r1, #4
	ldr r0, [r7]
	bl sub_803F72C
	movs r1, #0x1b
	strh r1, [r0]
	movs r1, #4
	strh r1, [r0, #2]
	movs r2, #0
	str r2, [sp]
	adds r3, r4, #0
	adds r2, r0, #0
	ldr r0, [r5]
	movs r1, #3
	bl sub_8017A0A
	b %16
	thumb_func_end CollectPickup

