	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_03003448
	IMPORT gUnknown_03003450
	IMPORT gUnknown_03003468
	IMPORT gUnknown_03003478
	IMPORT gUnknown_03003D35
	IMPORT gUnknown_03003E98
	IMPORT gUnknown_03003EA8
	IMPORT gUnknown_08051438
	IMPORT sub_800065C
	IMPORT sub_800116A
	IMPORT sub_8001A60
	IMPORT sub_80046F8
	IMPORT sub_8004FFC
	IMPORT sub_80050FA
	IMPORT sub_800B08E
	IMPORT sub_800D912
	IMPORT sub_800D9E0
	IMPORT sub_80189BC
	IMPORT sub_8018C48
	IMPORT sub_802EF0A
	IMPORT sub_8040034

	thumb_func_start sub_80197AC

sub_80197AC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	adds r4, r0, #0
	add r0, sp, #0x2c
	bl sub_80046F8
	ldr r0, _080199C4
	ldr r0, [r0]
	bl sub_80050FA
	mov r0, sp
	bl sub_8001A60
	ldr r0, _080199C8
	add r1, pc, #0x200
	ldr r0, [r0]
	bl sub_8004FFC
	movs r6, #0
	adds r3, r6, #0
	movs r2, #0
	movs r1, #7
	bl sub_802EF0A
	ldr r5, _080199DC
	str r0, [sp]
	ldr r0, [r5]
	mov r1, sp
	bl sub_800D9E0
	ldr r0, _080199E0
	ldr r0, [r0]
	bl sub_800B08E
	movs r1, #0
	ldr r0, [r5]
	bl sub_800D912
	movs r0, #0
	bl sub_80050FA
	ldr r0, _080199E4
	adds r5, r4, #0
	adds r5, #0xff
	strb r6, [r0]
	movs r0, #0xff
	adds r5, #0xd1
	adds r0, #0x81
	strb r6, [r0, r4]
	strb r6, [r5, #2]
	adds r1, r5, #0
	subs r1, #0xd0
	strb r6, [r5, #3]
	str r6, [r4]
	str r6, [r4, #4]
	adds r0, r1, #0
	adds r0, #0x7e
	movs r2, #0
	str r2, [sp, #8]
	str r1, [sp, #4]
	subs r1, r0, #4
	subs r2, r0, #6
	str r0, [sp]
	subs r3, r0, #2
	subs r0, #0x86
	bl sub_80189BC
	adds r1, r4, #0
	adds r1, #8
	adds r3, r6, #0
	movs r2, #6
	adds r0, r4, #0
	bl sub_8018C48
	movs r2, #0
	ldr r1, _080199E8
	movs r0, #1
26
	adds r3, r2, #0
	adds r3, #0xc6
	lsls r7, r3, #0x1b
	lsrs r7, r7, #0x1b
	adds r6, r0, #0
	lsls r6, r7
	cmp r3, #0
	beq %27
	lsrs r3, r3, #5
	lsls r3, r3, #2
	ldr r3, [r1, r3]
	ands r3, r6
	beq %28
27
	ldrb r3, [r5, #3]
	adds r6, r2, #0
	adds r6, #0xa0
	adds r7, r3, #1
	lsls r3, r3, #1
	adds r3, r3, r4
	adds r3, #0xff
	adds r3, #0x81
	strb r7, [r5, #3]
	strh r6, [r3, #2]
28
	adds r2, #1
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	cmp r2, #0x1e
	blo %26
	movs r2, #0
	mov ip, r2
	movs r3, #0
29
	ldr r6, _080199EC
	lsls r2, r3, #1
	ldrh r2, [r6, r2]
	mov r0, ip
	lsls r0, r0, #0x18
	add r2, ip
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	movs r1, #0
	lsrs r0, r0, #0x18
	mov ip, r2
	b %43
30
	lsls r2, r0, #2
	adds r1, r2, #0
	adds r1, #0xff
	adds r1, #0x55
	lsls r7, r1, #0x1b
	lsrs r7, r7, #0x1b
	movs r6, #1
	lsls r6, r7
	cmp r1, #0
	beq %31
	lsrs r1, r1, #5
	ldr r7, _080199E8
	lsls r1, r1, #2
	ldr r1, [r7, r1]
	ands r1, r6
	beq %32
31
	movs r6, #1
	b %33
32
	movs r6, #0
33
	adds r1, r2, #0
	adds r1, #0xff
	adds r1, #0x56
	lsls r7, r1, #0x1b
	mov lr, r6
	movs r6, #1
	lsrs r7, r7, #0x1b
	lsls r6, r7
	cmp r1, #0
	beq %34
	lsrs r1, r1, #5
	ldr r7, _080199E8
	lsls r1, r1, #2
	ldr r1, [r7, r1]
	ands r1, r6
	beq %35
34
	movs r1, #1
	b %36
35
	movs r1, #0
36
	mov r6, lr
	orrs r6, r1
	adds r1, r2, #0
	adds r1, #0xff
	adds r1, #0x57
	lsls r7, r1, #0x1b
	mov lr, r6
	movs r6, #1
	lsrs r7, r7, #0x1b
	lsls r6, r7
	cmp r1, #0
	beq %37
	lsrs r1, r1, #5
	ldr r7, _080199E8
	lsls r1, r1, #2
	ldr r1, [r7, r1]
	ands r1, r6
	beq %38
37
	movs r1, #1
	b %39
38
	movs r1, #0
39
	adds r2, #0xff
	adds r2, #0x58
	mov r6, lr
	orrs r1, r6
	lsls r7, r2, #0x1b
	lsrs r7, r7, #0x1b
	movs r6, #1
	lsls r6, r7
	cmp r2, #0
	beq %40
	lsrs r2, r2, #5
	ldr r7, _080199E8
	lsls r2, r2, #2
	ldr r2, [r7, r2]
	ands r2, r6
	beq %41
40
	movs r2, #1
	b %42
41
	movs r2, #0
42
	adds r0, #1
	lsls r0, r0, #0x18
	orrs r1, r2
	lsrs r0, r0, #0x18
43
	cmp r0, ip
	bhs %44
	cmp r1, #0
	beq %30
	b %45
44
	cmp r1, #0
	beq %46
45
	ldrb r0, [r5, #3]
	adds r1, r3, #0
	adds r1, #0xff
	adds r2, r0, #1
	lsls r0, r0, #1
	adds r0, r0, r4
	adds r0, #0xff
	adds r1, #0x86
	adds r0, #0x81
	strb r2, [r5, #3]
	strh r1, [r0, #2]
46
	adds r3, #1
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	cmp r3, #0xa
	blo %29
	ldrb r0, [r5, #3]
	cmp r0, #0
	beq %53
	ldr r0, _080199B8
	ldr r0, [r0]
	bl sub_800116A
	adds r5, r4, #0
	adds r5, #0xff
	adds r5, #0xc1
	str r0, [r5, #0x14]
	ldr r1, _080199F0
	bl sub_800065C
	movs r0, #0xd6
	add r3, sp, #0
	strh r0, [r3, #0x28]
	movs r0, #0x30
	strh r0, [r3, #0x2a]
	ldr r0, [r5, #0x14]
	add r1, sp, #0x28
	bl sub_8040034
	ldr r0, [r5, #0x14]
	movs r7, #3
	ldrh r1, [r0, #0x2a]
	lsls r7, r7, #0xa
	movs r2, #0
	bics r1, r7
	orrs r1, r2
	strh r1, [r0, #0x2a]
	movs r6, #4
	strb r6, [r0, #5]
	ldr r1, [r0]
	lsls r2, r1, #0x16
	bmi %50
	b %49
	ALIGN

	ALIGN
_080199B8 DCDU gUnknown_03003448
_080199C4 DCDU gUnknown_03003468
_080199C8 DCDU gUnknown_03003EA8
_080199DC DCDU gUnknown_03003450
_080199E0 DCDU gUnknown_03003E98
_080199E4 DCDU gUnknown_03003D35
_080199E8 DCDU gUnknown_03003478
_080199EC DCDU gUnknown_08051438
_080199F0 DCDU 0x00000C87

	END
