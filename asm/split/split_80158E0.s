    INCLUDE asm/macros.inc
    AREA text, CODE

	IMPORT gUnknown_03003444
	IMPORT gUnknown_03003454
	IMPORT gUnknown_0300345C
	IMPORT gUnknown_03003D30
	IMPORT gUnknown_080414B8
	IMPORT gUnknown_08050664
	IMPORT sub_80139AC
	IMPORT sub_8013B76
	IMPORT sub_8013B9C
	IMPORT sub_80155D6
	IMPORT sub_801742C
	IMPORT sub_8017884
	IMPORT sub_8028C2E
	IMPORT __call_via_r3
	IMPORT __16_ll_mulss
	IMPORT __16_ll_sdiv
	IMPORT sub_803F814
	IMPORT sub_8040034
	IMPORT sub_80401E4
	IMPORT sub_8040594

	thumb_func_start sub_80158E0
sub_80158E0 ;@ 0x080158E0
	adds r1, r0, #0
	adds r1, #0xf0
	ldrb r1, [r1, #8]
	movs r0, #1
	cmp r1, #0
	bne _080158EE
	movs r0, #0
_080158EE
	bx lr

	thumb_func_start sub_80158F0
sub_80158F0 ;@ 0x080158F0
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	movs r0, #0x1b
	lsls r0, r0, #5
	adds r4, r6, r0
	ldr r0, _08015CE0 ;@ =gUnknown_03003444
	movs r3, #3
	ldr r0, [r0]
	ldrsb r1, [r4, r3]
	ldr r3, [r0, #0x14]
	movs r7, #0
	adds r2, r7, #0
	lsls r3, r3, #0x1c
	sub sp, #0xc
	bmi _08015910
	ldrh r2, [r0, #8]
_08015910
	lsls r5, r2, #0x10
	lsrs r5, r5, #0x10
	lsls r0, r5, #0x1b
	bpl _0801591E
	adds r0, r1, #1
	strb r0, [r4, #3]
	b _0801593E
_0801591E
	lsls r0, r5, #0x1a
	bpl _0801592A
	adds r0, r1, #0
	adds r0, #0xff
	strb r0, [r4, #3]
	b _0801593E
_0801592A
	lsls r0, r5, #0x19
	bpl _08015936
	adds r0, r1, #0
	adds r0, #0xfe
	strb r0, [r4, #3]
	b _0801593E
_08015936
	lsls r0, r5, #0x18
	bpl _0801593E
	adds r0, r1, #2
	strb r0, [r4, #3]
_0801593E
	movs r3, #3
	movs r2, #0x1b
	lsls r2, r2, #5
	ldrsb r0, [r4, r3]
	adds r2, r6, r2
	ldrb r2, [r2, #2]
	cmp r0, #0
	bge _08015956
	adds r0, r2, #0
	adds r0, #0xff
	strb r0, [r4, #3]
	b _0801595C
_08015956
	cmp r0, r2
	blt _0801595C
	strb r7, [r4, #3]
_0801595C
	movs r3, #3
	ldrsb r0, [r4, r3]
	cmp r0, r1
	beq _080159C2
	lsls r3, r0, #4
	subs r0, r3, r0
	lsls r0, r0, #3
	adds r0, r0, r6
	adds r0, #0xff
	movs r2, #0
	adds r0, #0x81
	adds r3, r7, #0
	str r2, [sp]
	add r1, sp, #8
	bl sub_803F814
	add r3, sp, #0
	ldrh r0, [r3, #8]
	subs r0, #0x14
	lsls r1, r0, #0x10
	ldrb r0, [r4, #2]
	asrs r1, r1, #0x10
	cmp r0, #2
	ldrb r0, [r4, #3]
	bhi _0801599C
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1f
	lsls r3, r0, #1
	adds r0, r3, r0
	lsls r0, r0, #2
	adds r0, #0x8b
	b _080159A8
_0801599C
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1f
	lsls r3, r0, #1
	adds r0, r3, r0
	lsls r0, r0, #2
	adds r0, #0x7f
_080159A8
	add r3, sp, #0
	strh r1, [r3, #4]
	subs r0, #5
	strh r0, [r3, #6]
	ldr r0, [r6, #0x3c]
	add r1, sp, #4
	bl sub_8040034
	ldr r0, _08015CE4 ;@ =gUnknown_0300345C
	ldr r0, [r0]
	adds r0, #0x20
	bl sub_8028C2E
_080159C2
	movs r6, #0
	mvns r6, r6
	lsls r1, r5, #0x1f
	cmp r1, #0
	ldr r0, _08015CE8 ;@ =gUnknown_03003454
	bge _080159F2
	movs r2, #0
	str r2, [sp]
	movs r3, #3
	ldrsb r2, [r4, r3]
	ldrh r1, [r4]
	adds r1, r1, r2
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldrb r2, [r4, #5]
	ldr r0, [r0]
	adds r3, r7, #0
	bl sub_8017884
	strb r6, [r4, #3]
_080159EA
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
_080159F2
	lsls r1, r5, #0x1e
	bpl _080159EA
	ldrb r1, [r4, #4]
	cmp r1, #0xff
	beq _080159EA
	movs r2, #0
	str r2, [sp]
	ldrh r2, [r4]
	adds r1, r2, r1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldrb r2, [r4, #5]
	ldr r0, [r0]
	adds r3, r7, #0
	bl sub_8017884
	strb r6, [r4, #3]
	b _080159EA

	non_word_aligned_thumb_func_start sub_8015A16
sub_8015A16 ;@ 0x08015A16
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r0, _08015CE0 ;@ =gUnknown_03003444
	movs r1, #0
	ldr r0, [r0]
	sub sp, #0xc
	ldr r2, [r0, #0x14]
	lsls r2, r2, #0x1c
	bmi _08015A2A
	ldrh r1, [r0, #6]
_08015A2A
	adds r6, r5, #0
	adds r6, #0x80
	movs r0, #0x2c
	ldrb r0, [r0, r6]
	adds r4, r6, #0
	lsls r7, r1, #0x10
	lsrs r7, r7, #0x10
	adds r4, #0xe0
	cmp r0, #0
	bne _08015AF2
	ldr r0, [r5, #0x3c]
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	bne _08015A4C
	movs r1, #1
	bl sub_80401E4
_08015A4C
	lsls r0, r7, #0x1f
	bpl _08015AF0
	movs r0, #0x38
	ldrb r0, [r0, r6]
	add r3, sp, #0
	strb r0, [r3, #8]
	ldrh r0, [r4, #0x1e]
	ldr r1, [r6, #0x14]
	adds r2, r0, #1
	strh r2, [r4, #0x1c]
	adds r0, #3
	strh r0, [r4, #0x1e]
	b _08015A70
_08015A66
	adds r0, #1
	strh r0, [r4, #0x1c]
	ldrh r0, [r4, #0x1e]
	adds r0, #1
	strh r0, [r4, #0x1e]
_08015A70
	ldrh r0, [r4, #0x1c]
	add r3, sp, #0
	ldrb r2, [r3, #8]
	cmp r0, r2
	bhs _08015A88
	lsls r2, r0, #1
	adds r2, r2, r0
	lsls r2, r2, #1
	adds r2, r2, r1
	ldrh r2, [r2, #4]
	cmp r2, #0
	beq _08015A66
_08015A88
	ldrh r2, [r4, #0x1c]
	add r3, sp, #0
	ldrb r3, [r3, #8]
	cmp r2, r3
	blo _08015AA0
	movs r0, #0
	mvns r0, r0
	strh r0, [r4, #0x1e]
_08015A98
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
_08015AA0
	ldrh r2, [r4, #0x1e]
	add r3, sp, #0
	ldrb r3, [r3, #8]
	cmp r2, r3
	blo _08015AB2
	add r3, sp, #0
	ldrb r2, [r3, #8]
	subs r2, #1
	strh r2, [r4, #0x1e]
_08015AB2
	movs r2, #0
	str r2, [sp]
	ldrh r2, [r4, #0x1e]
	lsls r3, r2, #1
	adds r2, r3, r2
	lsls r3, r0, #1
	adds r0, r3, r0
	lsls r0, r0, #1
	lsls r2, r2, #1
	adds r2, r2, r1
	ldrh r0, [r1, r0]
	ldr r1, _08015CEC ;@ =gUnknown_03003D30
	ldrh r2, [r2, #2]
	ldr r1, [r1]
	movs r3, #0xa
	ldrb r1, [r1, #2]
	subs r1, r3, r1
	lsls r1, r1, #0x18
	adds r3, r2, #0
	adds r2, r0, #0
	lsrs r1, r1, #0x18
	adds r0, r6, #0
	bl sub_8013B9C
	ldr r0, [r5, #0x3c]
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	beq _08015AF0
	movs r1, #0
	bl sub_80401E4
_08015AF0
	b _08015B0A
_08015AF2
	lsls r0, r7, #0x1f
	bpl _08015B0A
	adds r0, r6, #0
	bl sub_8013B76
	ldr r0, [r5, #0x3c]
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	bne _08015B0A
	movs r1, #1
	bl sub_80401E4
_08015B0A
	lsls r0, r7, #0x1e
	bpl _08015B14
	movs r0, #0
	mvns r0, r0
	strh r0, [r4, #0x1e]
_08015B14
	movs r1, #0
	adds r0, r6, #0
	bl sub_80139AC
	b _08015A98

	non_word_aligned_thumb_func_start sub_8015B1E
sub_8015B1E ;@ 0x08015B1E
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	movs r0, #0x19
	adds r1, r4, #0
	sub sp, #0x2c
	adds r1, #0xe0
	lsls r0, r0, #0x12
	str r0, [sp, #0xc]
	str r1, [sp, #0x28]
	ldrh r6, [r1, #0x1a]
	movs r5, #0x1d
	lsls r5, r5, #0x13
	adds r0, r6, #0
	bl sub_8040594
	movs r0, #0x2d
	muls r0, r6
	lsrs r2, r6, #1
	adds r0, r0, r2
	adds r0, r1, r0
	add r3, sp, #0
	strh r0, [r3, #8]
	lsls r0, r0, #0x12
	ldr r1, _08015CF0 ;@ =gUnknown_080414B8
	lsrs r0, r0, #0x11
	ldrsh r0, [r1, r0]
	lsls r0, r0, #2
	str r0, [sp, #0x10]
	adds r1, r5, #0
	bl __16_ll_mulss
	add r2, pc, #0x194 ;@ =_08015CF4
	ldm r2!, {r2, r3}
	bl __16_ll_sdiv
	asrs r0, r0, #0x10
	movs r1, #0xf0
	subs r0, r1, r0
	subs r0, #8
	lsls r6, r0, #0x10
	asrs r6, r6, #0x10
	ldr r7, _08015CFC ;@ =gUnknown_08050664
	movs r5, #0
_08015B74
	ldr r7, _08015CFC ;@ =gUnknown_08050664
	lsls r0, r5, #1
	ldrh r0, [r7, r0]
	add r3, sp, #0
	add r1, sp, #4
	adds r0, r0, r6
	adds r0, #8
	strh r0, [r3, #4]
	movs r0, #0x6c
	strh r0, [r3, #6]
	lsls r0, r5, #2
	adds r0, r0, r4
	ldr r0, [r0, #8]
	bl sub_8040034
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #8
	blo _08015B74
	movs r0, #0x1b
	lsls r0, r0, #5
	adds r5, r4, r0
	ldrb r0, [r5, #2]
	movs r7, #0
	cmp r0, #0
	bls _08015BFC
_08015BAA
	lsls r0, r7, #4
	subs r0, r0, r7
	lsls r0, r0, #3
	adds r0, r0, r4
	adds r0, #0xff
	adds r0, #0x81
	ldr r1, [r0]
	ldr r2, [r1, #0x14]
	ldrb r3, [r5, #2]
	mov ip, r2
	add ip, r1
	lsls r1, r7, #0x1e
	lsrs r1, r1, #0x1f
	lsls r2, r1, #1
	adds r2, r2, r1
	lsls r2, r2, #2
	adds r1, r2, #0
	adds r1, #0x8b
	cmp r3, #2
	bls _08015BD4
	subs r1, #0xc
_08015BD4
	lsls r2, r1, #0x10
	lsls r1, r7, #0x1f
	lsrs r1, r1, #0x1f
	lsls r3, r1, #3
	adds r1, r3, r1
	lsls r1, r1, #3
	adds r1, r1, r6
	adds r1, #0x50
	lsls r1, r1, #0x10
	asrs r2, r2, #0x10
	asrs r1, r1, #0x10
	mov r3, ip
	bl __call_via_r3
	adds r7, #1
	ldrb r0, [r5, #2]
	lsls r7, r7, #0x18
	lsrs r7, r7, #0x18
	cmp r0, r7
	bhi _08015BAA
_08015BFC
	ldrb r0, [r5, #2]
	adds r7, r4, #0
	adds r7, #0x80
	cmp r0, #0
	beq _08015C1C
	ldr r0, [r7]
	movs r2, #0x70
	ldr r1, [r0, #0x14]
	adds r3, r1, r0
	adds r0, r6, #0
	adds r0, #0x48
	lsls r1, r0, #0x10
	asrs r1, r1, #0x10
	adds r0, r7, #0
	bl __call_via_r3
_08015C1C
	ldrb r0, [r5, #2]
	cmp r0, #0
	beq _08015C58
	movs r2, #0
	adds r0, r4, #0
	adds r0, #0xff
	movs r3, #0
	adds r0, #0x81
	str r2, [sp]
	add r1, sp, #0x14
	bl sub_803F814
	add r3, sp, #0
	ldrh r0, [r3, #0x14]
	ldrb r2, [r5, #2]
	adds r0, r0, r6
	subs r0, #0x14
	lsls r1, r0, #0x10
	asrs r1, r1, #0x10
	movs r0, #0x86
	cmp r2, #2
	bls _08015C4A
	movs r0, #0x7a
_08015C4A
	add r3, sp, #0
	strh r1, [r3, #4]
	strh r0, [r3, #6]
	ldr r0, [r4, #0x3c]
	add r1, sp, #4
	bl sub_8040034
_08015C58
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0xc]
	bl __16_ll_mulss
	add r2, pc, #0x90 ;@ =_08015CF4
	ldm r2!, {r2, r3}
	bl __16_ll_sdiv
	asrs r0, r0, #0x10
	movs r1, #0x64
	subs r0, r1, r0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r4, #0
	adds r1, #0xff
	str r0, [sp, #0x18]
	ldr r0, [r4, #0x30]
	adds r1, #5
	str r1, [sp, #0x24]
	cmp r0, #0
	beq _08015C9A
	ldr r1, [sp, #0x24]
	ldr r0, [r1]
	ldr r1, [r0, #0x14]
	adds r3, r1, r0
	ldr r0, [sp, #0x18]
	adds r0, #0x94
	lsls r2, r0, #0x10
	asrs r2, r2, #0x10
	movs r1, #4
	ldr r0, [sp, #0x24]
	bl __call_via_r3
_08015C9A
	ldr r0, [sp, #0x18]
	movs r6, #0
	adds r0, #0x94
	lsls r2, r0, #0x10
	asrs r2, r2, #0x10
	str r2, [sp, #0x20]
_08015CA6
	lsls r0, r6, #2
	adds r0, r0, r4
	ldr r1, [r0, #0x30]
	cmp r1, #0
	beq _08015CCA
	ldr r2, _08015CFC ;@ =gUnknown_08050664
	lsls r1, r6, #1
	adds r2, #0x10
	ldrh r1, [r2, r1]
	ldr r2, [sp, #0x20]
	add r3, sp, #0
	adds r1, #4
	strh r1, [r3, #4]
	strh r2, [r3, #6]
	ldr r0, [r0, #0x30]
	add r1, sp, #4
	bl sub_8040034
_08015CCA
	adds r6, #1
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	cmp r6, #3
	blo _08015CA6
	movs r6, #0
_08015CD6
	lsls r0, r6, #2
	adds r1, r0, r4
	ldr r0, [r1, #0x28]
	b _08015D00
	ALIGN
_08015CE0 DCDU gUnknown_03003444
_08015CE4 DCDU gUnknown_0300345C
_08015CE8 DCDU gUnknown_03003454
_08015CEC DCDU gUnknown_03003D30
_08015CF0 DCDU gUnknown_080414B8
_08015CF4 DCDU 0x00010000
_08015CF8 DCDU 0x00000000
_08015CFC DCDU gUnknown_08050664
_08015D00
	cmp r0, #0
	beq _08015D1C
	ldr r2, [sp, #0x18]
	lsls r0, r6, #5
	adds r0, r0, r2
	adds r0, #0x3c
	movs r2, #8
	add r3, sp, #0
	strh r2, [r3, #4]
	strh r0, [r3, #6]
	ldr r0, [r1, #0x28]
	add r1, sp, #4
	bl sub_8040034
_08015D1C
	adds r6, #1
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	cmp r6, #2
	blo _08015CD6
	ldr r1, [sp, #0x28]
	ldrh r0, [r1, #0x1a]
	adds r0, #2
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	strh r0, [r1, #0x1a]
	cmp r0, #0x5a
	blt _08015E1C
	movs r6, #0
_08015D38
	ldr r1, _080160F0 ;@ =gUnknown_08050664
	lsls r0, r6, #1
	ldrh r0, [r1, r0]
	add r3, sp, #0
	add r1, sp, #4
	adds r0, #8
	strh r0, [r3, #4]
	movs r0, #0x6c
	strh r0, [r3, #6]
	lsls r0, r6, #2
	adds r0, r0, r4
	ldr r0, [r0, #8]
	bl sub_8040034
	adds r6, #1
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	cmp r6, #8
	blo _08015D38
	ldrb r0, [r5, #2]
	movs r6, #0
	cmp r0, #0
	bls _08015DB2
_08015D66
	lsls r0, r6, #4
	subs r0, r0, r6
	lsls r0, r0, #3
	adds r0, r0, r4
	adds r0, #0xff
	adds r0, #0x81
	ldr r1, [r0]
	ldr r2, [r1, #0x14]
	ldrb r3, [r5, #2]
	mov ip, r2
	add ip, r1
	lsls r1, r6, #0x1e
	lsrs r1, r1, #0x1f
	lsls r2, r1, #1
	adds r2, r2, r1
	lsls r2, r2, #2
	adds r1, r2, #0
	adds r1, #0x8b
	cmp r3, #2
	bls _08015D90
	subs r1, #0xc
_08015D90
	lsls r2, r1, #0x10
	lsls r1, r6, #0x1f
	lsrs r1, r1, #0x1f
	lsls r3, r1, #3
	adds r1, r3, r1
	lsls r1, r1, #3
	asrs r2, r2, #0x10
	adds r1, #0x50
	mov r3, ip
	bl __call_via_r3
	adds r6, #1
	ldrb r0, [r5, #2]
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	cmp r0, r6
	bhi _08015D66
_08015DB2
	movs r6, #0
_08015DB4
	lsls r0, r6, #2
	adds r1, r0, r4
	ldr r0, [r1, #0x28]
	cmp r0, #0
	beq _08015DD2
	lsls r0, r6, #5
	adds r0, #0x3c
	movs r2, #8
	add r3, sp, #0
	strh r2, [r3, #4]
	strh r0, [r3, #6]
	ldr r0, [r1, #0x28]
	add r1, sp, #4
	bl sub_8040034
_08015DD2
	adds r6, #1
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	cmp r6, #2
	blo _08015DB4
	movs r6, #0
_08015DDE
	lsls r0, r6, #2
	adds r0, r0, r4
	ldr r1, [r0, #0x30]
	cmp r1, #0
	beq _08015E02
	ldr r2, _080160F0 ;@ =gUnknown_08050664
	lsls r1, r6, #1
	adds r2, #0x10
	ldrh r1, [r2, r1]
	add r3, sp, #0
	adds r1, #4
	strh r1, [r3, #4]
	movs r1, #0x94
	strh r1, [r3, #6]
	ldr r0, [r0, #0x30]
	add r1, sp, #4
	bl sub_8040034
_08015E02
	adds r6, #1
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	cmp r6, #3
	blo _08015DDE
	ldr r0, [r4, #0x30]
	cmp r0, #0
	beq _08015E28
	ldr r1, [sp, #0x24]
	ldr r0, [r1]
	ldr r1, [r0, #0x14]
	adds r3, r1, r0
	b _08015E1E
_08015E1C
	b _08015E4C
_08015E1E
	movs r2, #0x94
	movs r1, #4
	ldr r0, [sp, #0x24]
	bl __call_via_r3
_08015E28
	ldrb r0, [r5, #2]
	cmp r0, #0
	beq _08015E3E
	ldr r0, [r7]
	movs r2, #0x70
	ldr r1, [r0, #0x14]
	adds r3, r1, r0
	movs r1, #0x48
	adds r0, r7, #0
	bl __call_via_r3
_08015E3E
	adds r1, r4, #0
	adds r1, #0xf0
	ldrb r0, [r1, #0xc]
	cmp r0, #1
	bne _08015E54
	movs r0, #3
	strb r0, [r1, #8]
_08015E4C
	add sp, #0x2c
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
_08015E54
	movs r0, #2
	strb r0, [r1, #8]
	movs r0, #0x38
	ldrb r0, [r0, r7]
	adds r1, r4, #0
	add r3, sp, #0
	strb r0, [r3, #0x1c]
	adds r1, #0xff
	adds r1, #0x61
	ldrh r2, [r1, #0x1e]
	ldrb r3, [r3, #0x1c]
	ldr r0, [r7, #0x14]
	cmp r2, r3
	blo _08015E78
	add r3, sp, #0
	ldrb r2, [r3, #0x1c]
	subs r2, #1
	strh r2, [r1, #0x1e]
_08015E78
	movs r2, #0
	str r2, [sp]
	ldrh r2, [r1, #0x1e]
	ldrh r1, [r1, #0x1c]
	lsls r3, r2, #1
	adds r2, r3, r2
	lsls r2, r2, #1
	lsls r3, r1, #1
	adds r1, r3, r1
	adds r2, r2, r0
	ldrh r4, [r2, #2]
	lsls r1, r1, #1
	ldrh r2, [r0, r1]
	ldr r0, _080160F4 ;@ =gUnknown_03003D30
	movs r1, #0xa
	ldr r0, [r0]
	adds r3, r4, #0
	ldrb r0, [r0, #2]
	subs r0, r1, r0
	lsls r1, r0, #0x18
	lsrs r1, r1, #0x18
	adds r0, r7, #0
	bl sub_8013B9C
	movs r1, #0
	adds r0, r7, #0
	bl sub_80139AC
	ldr r0, [r7]
	movs r2, #0x70
	ldr r1, [r0, #0x14]
	adds r3, r1, r0
	movs r1, #0x4d
	adds r0, r7, #0
	bl __call_via_r3
	b _08015E4C

	non_word_aligned_thumb_func_start sub_8015EC2
sub_8015EC2 ;@ 0x08015EC2
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	movs r0, #0x11
	lsls r0, r0, #0x13
	sub sp, #0x1c
	str r0, [sp, #0xc]
	adds r0, r4, #0
	adds r0, #0xe0
	str r0, [sp, #0x18]
	ldrh r6, [r0, #0x1a]
	movs r5, #0xf
	lsls r5, r5, #0x14
	adds r0, r6, #0
	bl sub_8040594
	movs r0, #0x2d
	muls r0, r6
	lsrs r2, r6, #1
	adds r0, r0, r2
	adds r0, r1, r0
	add r3, sp, #0
	strh r0, [r3, #8]
	lsls r0, r0, #0x12
	ldr r1, _080160F8 ;@ =gUnknown_080414B8
	lsrs r0, r0, #0x11
	ldrsh r0, [r1, r0]
	lsls r0, r0, #2
	str r0, [sp, #0x10]
	adds r1, r5, #0
	bl __16_ll_mulss
	add r2, pc, #0x1F8 ;@ =_080160FC
	ldm r2!, {r2, r3}
	bl __16_ll_sdiv
	asrs r6, r0, #0x10
	adds r0, r4, #0
	adds r0, #0x80
	str r0, [sp, #0x14]
	ldr r0, [r0]
	movs r2, #0x70
	ldr r1, [r0, #0x14]
	adds r3, r1, r0
	adds r0, r6, #0
	adds r0, #0x4d
	lsls r1, r0, #0x10
	asrs r1, r1, #0x10
	ldr r0, [sp, #0x14]
	bl __call_via_r3
	movs r5, #0
	movs r7, #0x6c
_08015F2A
	ldr r1, _080160F0 ;@ =gUnknown_08050664
	lsls r0, r5, #1
	ldrh r0, [r1, r0]
	add r3, sp, #0
	add r1, sp, #4
	adds r0, r0, r6
	adds r0, #8
	strh r0, [r3, #4]
	lsls r0, r5, #2
	adds r0, r0, r4
	strh r7, [r3, #6]
	ldr r0, [r0, #8]
	bl sub_8040034
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #8
	blo _08015F2A
	movs r0, #0x1b
	lsls r0, r0, #5
	adds r7, r4, r0
	ldrb r0, [r7, #2]
	movs r5, #0
	cmp r0, #0
	bls _08015FB0
_08015F5E
	lsls r0, r5, #4
	subs r0, r0, r5
	lsls r0, r0, #3
	adds r0, r0, r4
	adds r0, #0xff
	adds r0, #0x81
	ldr r1, [r0]
	ldr r2, [r1, #0x14]
	ldrb r3, [r7, #2]
	mov ip, r2
	add ip, r1
	lsls r1, r5, #0x1e
	lsrs r1, r1, #0x1f
	lsls r2, r1, #1
	adds r2, r2, r1
	lsls r2, r2, #2
	adds r1, r2, #0
	adds r1, #0x8b
	cmp r3, #2
	bls _08015F88
	subs r1, #0xc
_08015F88
	lsls r2, r1, #0x10
	lsls r1, r5, #0x1f
	lsrs r1, r1, #0x1f
	lsls r3, r1, #3
	adds r1, r3, r1
	lsls r1, r1, #3
	adds r1, r1, r6
	adds r1, #0x50
	lsls r1, r1, #0x10
	asrs r2, r2, #0x10
	asrs r1, r1, #0x10
	mov r3, ip
	bl __call_via_r3
	adds r5, #1
	ldrb r0, [r7, #2]
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r0, r5
	bhi _08015F5E
_08015FB0
	ldrb r0, [r7, #2]
	cmp r0, #0
	beq _08015FCE
	ldr r0, [sp, #0x14]
	movs r2, #0x70
	ldr r0, [r0]
	ldr r1, [r0, #0x14]
	adds r3, r1, r0
	adds r0, r6, #0
	adds r0, #0x48
	lsls r1, r0, #0x10
	asrs r1, r1, #0x10
	ldr r0, [sp, #0x14]
	bl __call_via_r3
_08015FCE
	ldrb r0, [r7, #2]
	cmp r0, #0
	beq _08016028
	ldrb r0, [r7, #2]
	lsls r1, r0, #0x1f
	bpl _08015FE8
	lsls r1, r0, #0x1f
	lsrs r1, r1, #0x1f
	lsls r3, r1, #3
	adds r1, r3, r1
	lsls r1, r1, #3
	adds r1, #0x86
	b _08015FF4
_08015FE8
	lsls r1, r0, #0x1f
	lsrs r1, r1, #0x1f
	lsls r3, r1, #3
	adds r1, r3, r1
	lsls r1, r1, #3
	adds r1, #0x3a
_08015FF4
	adds r1, r1, r6
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	cmp r0, #2
	bhi _0801600C
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1f
	lsls r3, r0, #1
	adds r0, r3, r0
	lsls r0, r0, #2
	adds r0, #0x8b
	b _08016018
_0801600C
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1f
	lsls r3, r0, #1
	adds r0, r3, r0
	lsls r0, r0, #2
	adds r0, #0x7f
_08016018
	add r3, sp, #0
	strh r1, [r3, #4]
	subs r0, #5
	strh r0, [r3, #6]
	ldr r0, [r4, #0x3c]
	add r1, sp, #4
	bl sub_8040034
_08016028
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0xc]
	bl __16_ll_mulss
	add r2, pc, #0xC8 ;@ =_080160FC
	ldm r2!, {r2, r3}
	bl __16_ll_sdiv
	asrs r6, r0, #0x10
	ldr r0, [r4, #0x30]
	movs r7, #4
	cmp r0, #0
	beq _0801605A
	adds r0, r4, #0
	adds r0, #0xff
	adds r0, #5
	ldr r1, [r0]
	ldr r2, [r1, #0x14]
	adds r3, r2, r1
	subs r1, r7, r6
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #0x94
	bl __call_via_r3
_0801605A
	movs r5, #0
	subs r7, r7, r6
_0801605E
	lsls r0, r5, #2
	adds r0, r0, r4
	ldr r1, [r0, #0x30]
	cmp r1, #0
	beq _08016082
	ldr r2, _080160F0 ;@ =gUnknown_08050664
	lsls r1, r5, #1
	adds r2, #0x10
	ldrh r1, [r2, r1]
	add r3, sp, #0
	adds r1, r7, r1
	strh r1, [r3, #4]
	movs r1, #0x94
	strh r1, [r3, #6]
	ldr r0, [r0, #0x30]
	add r1, sp, #4
	bl sub_8040034
_08016082
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #3
	blo _0801605E
	movs r0, #8
	subs r0, r0, r6
	lsls r6, r0, #0x10
	movs r5, #0
	asrs r6, r6, #0x10
	add r7, sp, #4
_08016098
	lsls r0, r5, #2
	adds r1, r0, r4
	ldr r0, [r1, #0x28]
	cmp r0, #0
	beq _080160B4
	lsls r0, r5, #5
	add r3, sp, #0
	strh r6, [r3, #4]
	adds r0, #0x3c
	strh r0, [r3, #6]
	ldr r0, [r1, #0x28]
	adds r1, r7, #0
	bl sub_8040034
_080160B4
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #2
	blo _08016098
	ldr r0, [sp, #0x18]
	ldrh r0, [r0, #0x1a]
	ldr r1, [sp, #0x18]
	adds r0, #3
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	strh r0, [r1, #0x1a]
	cmp r0, #0x5a
	blt _080160E8
	movs r0, #0
	movs r1, #0xf8
	strb r0, [r1, r4]
	ldr r0, _08016104 ;@ =gUnknown_03003454
	movs r1, #0
	ldr r0, [r0]
	ldr r0, [r0, #0xc]
	bl sub_801742C
	adds r0, r4, #0
	bl sub_80155D6
_080160E8
	add sp, #0x1c
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	ALIGN
_080160F0 DCDU gUnknown_08050664
_080160F4 DCDU gUnknown_03003D30
_080160F8 DCDU gUnknown_080414B8
_080160FC DCDU 0x00010000
_08016100 DCDU 0x00000000
_08016104 DCDU gUnknown_03003454
	END