    INCLUDE asm/macros.inc
    AREA text, CODE

	IMPORT gUnknown_03003440
	IMPORT gUnknown_03003468
	IMPORT gUnknown_03003E88
	IMPORT gUnknown_0803E864
	IMPORT gUnknown_0803ECC4
	IMPORT sub_8004FFC
	IMPORT sub_80050FA
	IMPORT sub_8005106
	IMPORT sub_80164A8
	IMPORT sub_801669C
	IMPORT __call_via_r2
	IMPORT sub_803D9F8
	IMPORT sub_803DA18
	IMPORT __da__FPv
	IMPORT sub_803DA80
	IMPORT sub_803DA9C
	IMPORT sub_803F464
	IMPORT sub_803FBBC

	thumb_func_start sub_8017474
sub_8017474 ;@ 0x08017474
	push {r0, r1, r4, r5, r6, r7, lr}
	sub sp, #4
	adds r4, r0, #0
	bne _08017492
	movs r0, #0x67
	lsls r0, r0, #4
	bl sub_803D9F8
	adds r4, r0, #0
	bne _08017492
	adds r0, r4, #0
_0801748A
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
_08017492
	ldr r0, _080177A0 ;@ =_0803ECC4
	movs r2, #0
	str r0, [r4]
	ldr r0, _080177A4 ;@ =gUnknown_03003E88
	movs r1, #0x54
	str r4, [r0]
	ldr r0, _080177A8 ;@ =_0803E864
	str r0, [r4]
	ldr r0, _080177AC ;@ =0x0000061C
	adds r0, r4, r0
	bl sub_803F464
	movs r1, #0xff
	movs r0, #0x53
	lsls r0, r0, #3
	adds r1, #1
	movs r2, #0
	adds r0, r4, r0
	bl sub_803F464
	movs r1, #0xff
	movs r0, #0x73
	lsls r0, r0, #3
	adds r1, #1
	movs r2, #0
	adds r0, r4, r0
	bl sub_803F464
	movs r0, #0xb3
	lsls r0, r0, #3
	movs r2, #0
	movs r1, #0x80
	adds r0, r4, r0
	bl sub_803F464
	adds r0, r4, #0
	adds r0, #0xff
	movs r2, #0
	movs r1, #0x80
	adds r0, #0x19
	bl sub_803F464
	adds r0, r4, #0
	adds r0, #0xff
	movs r2, #0
	movs r1, #0x80
	adds r0, #0x99
	bl sub_803F464
	movs r0, #0x43
	lsls r0, r0, #3
	movs r2, #0
	movs r1, #0x80
	adds r0, r4, r0
	bl sub_803F464
	movs r1, #0x61
	lsls r1, r1, #4
	adds r1, r4, r1
	movs r0, #4
	strb r0, [r1, #8]
	movs r1, #9
	movs r7, #0
	lsls r1, r1, #7
	adds r1, r4, r1
	strb r7, [r4, #0x14]
	add r0, pc, #0x298 ;@ =_080177B0
	str r0, [r1, #0x18]
	bl sub_8005106
	adds r1, r0, #0
	adds r3, r7, #0
	movs r2, #0
	movs r0, #0x18
	bl sub_803DA80
	adds r5, r0, #0
	beq _08017534
	adds r0, r5, #0
	bl sub_801669C
_08017534
	str r5, [r4, #0xc]
	bl sub_8005106
	adds r1, r0, #0
	adds r3, r7, #0
	movs r2, #0
	movs r0, #0x18
	bl sub_803DA80
	adds r5, r0, #0
	beq _08017550
	adds r0, r5, #0
	bl sub_80164A8
_08017550
	ldr r0, _080177C8 ;@ =gUnknown_03003468
	str r5, [r4, #0x10]
	str r7, [r4, #4]
	ldr r0, [r0]
	bl sub_80050FA
	bl sub_8005106
	movs r5, #1
	lsls r5, r5, #0xb
	adds r3, r7, #0
	movs r2, #0
	adds r1, r0, #0
	adds r0, r5, #0
	bl sub_803DA9C
	str r0, [r4, #0x18]
	movs r0, #0xff
	adds r0, #0x99
	strh r5, [r0, r4]
	movs r5, #1
	lsls r6, r5, #9
_0801757C
	bl sub_8005106
	adds r3, r7, #0
	movs r2, #0
	adds r1, r0, #0
	adds r0, r6, #0
	bl sub_803DA9C
	lsls r1, r5, #2
	adds r1, r1, r4
	str r0, [r1, #0x18]
	lsls r0, r5, #1
	adds r0, r0, r4
	adds r0, #0xff
	adds r5, #1
	lsls r5, r5, #0x18
	adds r0, #0x81
	lsrs r5, r5, #0x18
	cmp r5, #4
	strh r6, [r0, #0x18]
	blo _0801757C
	movs r0, #4
_080175A8
	lsls r1, r0, #2
	adds r0, #1
	lsls r0, r0, #0x18
	adds r1, r1, r4
	lsrs r0, r0, #0x18
	cmp r0, #0x40
	str r7, [r1, #0x18]
	blo _080175A8
	movs r0, #0
	bl sub_80050FA
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _080175D0
	ldr r0, _080177CC ;@ =gUnknown_03003440
	ldr r1, [sp, #8]
	ldr r0, [r0]
	bl sub_8004FFC
	str r0, [r4, #8]
_080175D0
	adds r0, r4, #0
	b _0801748A

	thumb_func_start sub_80175D4
sub_80175D4 ;@ 0x080175D4
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r0, _080177A8 ;@ =_0803E864
	adds r6, r1, #0
	str r0, [r5]
	ldr r0, [r5, #0xc]
	cmp r0, #0
	beq _080175F0
	ldr r1, [r0]
	ldr r2, [r1]
	adds r2, r2, r1
	movs r1, #1
	bl __call_via_r2
_080175F0
	movs r4, #0
_080175F2
	lsls r0, r4, #2
	adds r0, r0, r5
	ldr r0, [r0, #0x18]
	bl __da__FPv
	adds r4, #1
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	cmp r4, #0x40
	blo _080175F2
	ldr r0, _080177A0 ;@ =_0803ECC4
	ldr r1, _080177A4 ;@ =gUnknown_03003E88
	str r0, [r5]
	movs r0, #0
	str r0, [r1]
	cmp r6, #0
	beq _0801761A
	adds r0, r5, #0
	bl sub_803DA18
_0801761A
	pop {r4, r5, r6}
	pop {r3}
	bx r3

	thumb_func_start sub_8017620
sub_8017620 ;@ 0x08017620
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	movs r0, #0
	adds r2, r0, #0
	sub sp, #0x1c
	str r0, [sp, #8]
	cmp r1, #0xff
	beq _08017632
	adds r2, r1, #0
_08017632
	lsls r5, r2, #0x18
	lsrs r5, r5, #0x18
	movs r2, #0x40
	cmp r1, #0xff
	beq _0801763E
	adds r2, r1, #1
_0801763E
	lsls r1, r2, #0x18
	lsrs r1, r1, #0x18
	movs r0, #0x61
	lsls r0, r0, #4
	str r1, [sp, #4]
	adds r1, r6, r0
	str r1, [sp, #0x18]
	ldr r7, _080177D0 ;@ =0x0000FFFE
	b _08017786
_08017650
	lsls r0, r5, #2
	adds r1, r0, r6
	movs r3, #5
	lsls r3, r3, #7
	adds r0, r1, r3
	str r0, [sp, #0x10]
	str r1, [sp, #0x14]
	ldr r4, [r0, #0x18]
	cmp r4, #0
	beq _0801772E
	ldr r0, [sp, #8]
	movs r1, #0xb
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #8]
	lsls r0, r5, #1
	adds r0, r0, r6
	lsls r1, r1, #7
	adds r0, r0, r1
	str r0, [sp, #0xc]
	b _0801773C
_0801767C
	ldr r0, _080177A4 ;@ =gUnknown_03003E88
	ldr r1, [r0]
	ldrb r0, [r4, #4]
	lsls r2, r0, #0x1f
	bpl _0801768A
	movs r2, #1
	b _080176B8
_0801768A
	lsls r2, r0, #0x1e
	bpl _080176A6
	ldrh r2, [r4, #0x10]
	movs r3, #5
	lsls r3, r3, #7
	lsls r2, r2, #0x1a
	lsrs r2, r2, #0x18
	adds r2, r2, r1
	adds r2, r2, r3
	ldr r2, [r2, #0x18]
	cmp r2, r4
	bne _080176A6
	movs r2, #1
	b _080176B8
_080176A6
	lsls r2, r0, #0x1e
	bpl _080176B6
	ldr r2, [r4, #0x18]
	ldrb r2, [r2, #4]
	lsls r2, r2, #0x1b
	bpl _080176B6
	movs r2, #1
	b _080176B8
_080176B6
	movs r2, #0
_080176B8
	cmp r2, #0
	beq _0801770C
	movs r2, #3
	lsls r2, r2, #9
	adds r2, r1, r2
	ldr r2, [r2, #0x24]
	ldr r3, [r4, #8]
	cmp r3, #0
	bne _080176F4
	ldrh r3, [r4, #0xc]
	cmp r3, r7
	beq _080176E0
	lsls r2, r3, #2
	adds r1, r2, r1
	movs r2, #3
	lsls r2, r2, #9
	adds r1, r1, r2
	ldr r1, [r1, #0x1c]
	str r1, [r4, #8]
	b _080176F4
_080176E0
	ldrh r1, [r4, #0xe]
	ldr r3, _080177D4 ;@ =0x0000FFFF
	cmp r1, r3
	beq _080176F4
	cmp r2, #0
	beq _080176F4
	ldr r2, [r2, #0x14]
	lsls r1, r1, #2
	ldr r1, [r2, r1]
	str r1, [r4, #8]
_080176F4
	strh r7, [r4, #0xc]
	movs r1, #0xf0
	ands r0, r1
	strh r7, [r4, #0xe]
	strb r0, [r4, #4]
	ldr r0, [r4, #8]
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r2, r2, r1
	adds r1, r4, #0
	bl __call_via_r2
_0801770C
	ldrb r0, [r4, #4]
	lsls r0, r0, #0x1c
	bne _08017730
	ldr r0, [r4, #8]
	ldr r1, [r0]
	ldr r2, [r1, #8]
	adds r2, r2, r1
	adds r1, r4, #0
	bl __call_via_r2
	cmp r0, #0
	beq _08017730
	adds r0, r4, #0
	bl sub_803FBBC
	ldr r4, [r4, #0x14]
	b _08017738
_0801772E
	b _08017744
_08017730
	ldrb r0, [r4, #4]
	lsls r0, r0, #0x1c
	bne _08017744
	ldr r4, [r4, #0x14]
_08017738
	cmp r4, #0
	beq _08017744
_0801773C
	ldr r0, [sp, #0xc]
	ldrh r0, [r0, #0x18]
	lsls r0, r0, #0x1e
	bpl _0801767C
_08017744
	cmp r5, #4
	bls _08017780
	ldr r1, [sp, #0x14]
	ldr r0, [r1, #0x18]
	cmp r0, #0
	beq _08017780
	ldr r1, [sp, #0x10]
	ldr r1, [r1, #0x18]
	cmp r1, #0
	bne _08017780
	lsls r1, r5, #1
	adds r4, r1, r6
	movs r1, #0xb
	lsls r1, r1, #7
	adds r1, r4, r1
	ldrh r1, [r1, #0x18]
	lsls r1, r1, #0x1f
	bmi _08017780
	bl __da__FPv
	ldr r1, [sp, #0x14]
	movs r0, #0
	adds r4, #0xff
	adds r4, #0x81
	str r0, [r1, #0x18]
	strh r0, [r4, #0x18]
	ldr r1, [sp, #0x18]
	ldrb r0, [r1, #8]
	adds r0, #0xff
	strb r0, [r1, #8]
_08017780
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
_08017786
	ldr r0, [sp, #4]
	cmp r5, r0
	bhs _08017798
	ldr r1, [sp, #0x18]
	ldrb r0, [r1, #8]
	ldr r1, [sp, #8]
	cmp r0, r1
	bls _08017798
	b _08017650
_08017798
	add sp, #0x1c
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	ALIGN
_080177A0 DCDU gUnknown_0803ECC4
_080177A4 DCDU gUnknown_03003E88
_080177A8 DCDU gUnknown_0803E864
_080177AC DCDU 0x0000061C
_080177B0 DCDU 0x656E6547
_080177B4 DCDU 0x206C6172
_080177B8 DCDU 0x6D6D6F43
_080177BC DCDU 0x20646E61
_080177C0 DCDU 0x75657551
_080177C4 DCDU 0x00000065
_080177C8 DCDU gUnknown_03003468
_080177CC DCDU gUnknown_03003440
_080177D0 DCDU 0x0000FFFE
_080177D4 DCDU 0x0000FFFF
	END