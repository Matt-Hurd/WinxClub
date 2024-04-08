    INCLUDE asm/macros.inc
    AREA text, CODE

	IMPORT gPlayerEntity
	IMPORT gUnknown_03003458
	IMPORT gUnknown_0300345C
	IMPORT gUnknown_0300346C
	IMPORT gUnknown_03003D20
	IMPORT gUnknown_03003E98
	IMPORT gUnknown_03003EB8
	IMPORT gUnknown_0803E760
	IMPORT sub_8000DE6
	IMPORT sub_80050FA
	IMPORT sub_8005106
	IMPORT sub_801D564
	IMPORT sub_801D714
	IMPORT sub_8024E54
	IMPORT sub_8024EBC
	IMPORT sub_8028C2E
	IMPORT sub_802BA4C
	IMPORT sub_802BFBC
	IMPORT sub_802C884
	IMPORT sub_802D2E8
	IMPORT sub_802DFF4
	IMPORT sub_802E02A
	IMPORT sub_803B8D4
	IMPORT sub_803B8D6
	IMPORT sub_803D9F8
	IMPORT sub_803DA18
	IMPORT sub_803DA80

	thumb_func_start sub_801F794
sub_801F794 ;@ 0x0801F794
	push {r4, r5, r6, lr}
	movs r5, #0x4b
	lsls r5, r5, #3
	adds r4, r0, #0
	cmp r0, #0
	bne _0801F7B2
	adds r0, r5, #0
	bl sub_803D9F8
	adds r4, r0, #0
	bne _0801F7B2
	adds r0, r4, #0
_0801F7AC
	pop {r4, r5, r6}
	pop {r3}
	bx r3
_0801F7B2
	adds r0, r4, #0
	bl sub_801D564
	ldr r0, _0801FB98 ;@ =_0803E760
	str r0, [r4]
	adds r0, r4, #0
	adds r0, #0xa0
	bl sub_802DFF4
	adds r0, r4, #0
	adds r0, #0xe0
	bl sub_8024E54
	adds r1, r4, #0
	adds r1, #0xff
	adds r1, #1
	movs r0, #0
	str r0, [r1, #0x24]
	str r0, [r1, #0x28]
	ldr r2, [r1, #0x3c]
	movs r3, #1
	lsrs r2, r2, #4
	lsls r2, r2, #4
	lsls r3, r3, #9
	bics r2, r3
	movs r3, #3
	lsls r3, r3, #0xa
	bics r2, r3
	movs r3, #0xf
	lsls r3, r3, #0xc
	bics r2, r3
	movs r3, #1
	lsls r3, r3, #0xe
	adds r2, r2, r3
	lsls r3, r3, #2
	orrs r2, r3
	movs r3, #7
	lsls r3, r3, #0x11
	bics r2, r3
	movs r3, #1
	lsls r3, r3, #0x15
	bics r2, r3
	str r2, [r1, #0x3c]
	adds r1, #0x40
	strh r5, [r1]
	strh r0, [r1, #2]
	strh r0, [r1, #4]
	strh r0, [r1, #6]
	strh r0, [r1, #8]
	strh r0, [r1, #0xa]
	strh r0, [r1, #0xc]
	strh r0, [r1, #0xe]
	movs r1, #0x25
	lsls r1, r1, #4
	adds r1, r4, r1
	strb r0, [r1, #4]
	movs r2, #2
	strb r2, [r1, #5]
	movs r1, #4
	strh r1, [r4, #4]
	movs r1, #6
	movs r2, #0x97
	strb r1, [r2, r4]
	adds r1, r4, #0
	adds r1, #0x80
	ldr r2, [r1, #0xc]
	movs r3, #0xf
	lsls r3, r3, #0xf
	bics r2, r3
	movs r3, #1
	lsls r3, r3, #0x11
	adds r5, r2, r3
	ldr r2, [r1, #0x14]
	lsrs r3, r3, #6
	orrs r2, r3
	str r2, [r1, #0x14]
	ldr r2, [r1, #4]
	ldr r3, _0801FB9C ;@ =0xF000FFFF
	movs r6, #0xff
	ands r2, r3
	movs r3, #1
	lsls r3, r3, #0x1a
	adds r2, r2, r3
	lsls r3, r2, #0x18
	lsls r6, r6, #8
	bics r2, r6
	lsrs r3, r3, #0x10
	orrs r2, r3
	str r2, [r1, #4]
	ldr r2, [r1, #8]
	ldr r3, _0801FBA0 ;@ =0xFF8003FF
	ands r2, r3
	ldr r3, _0801FBA4 ;@ =0x0043A000
	adds r2, r2, r3
	str r2, [r1, #8]
	lsrs r2, r5, #0xc
	movs r3, #5
	lsls r3, r3, #8
	lsls r2, r2, #0xc
	adds r2, r2, r3
	str r2, [r1, #0xc]
	movs r1, #0x6e
	strh r1, [r4, #0xe]
	movs r1, #0x6f
	strh r1, [r4, #0xa]
	movs r1, #0x70
	strh r1, [r4, #0xc]
	strh r1, [r4, #8]
	movs r1, #0x5c
	strh r1, [r4, #0x1e]
	movs r1, #0x5d
	strh r1, [r4, #0x1a]
	movs r1, #0x5e
	strh r1, [r4, #0x1c]
	strh r1, [r4, #0x18]
	str r0, [r4, #0x74]
	movs r1, #0
_0801F89C
	lsls r2, r0, #2
	adds r2, r2, r4
	adds r2, #0xff
	adds r0, #1
	lsls r0, r0, #0x18
	adds r2, #0x41
	lsrs r0, r0, #0x18
	cmp r0, #0x41
	str r1, [r2, #0x10]
	blo _0801F89C
	adds r0, r4, #0
	b _0801F7AC

	thumb_func_start sub_801F8B4
sub_801F8B4 ;@ 0x0801F8B4
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	ldr r0, _0801FB98 ;@ =_0803E760
	adds r5, #0xff
	adds r5, #1
	str r0, [r4]
	ldr r0, [r5, #0x24]
	adds r6, r1, #0
	cmp r0, #0
	beq _0801F8DA
	ldr r0, _0801FBA8 ;@ =gUnknown_03003EB8
	adds r1, r5, #0
	adds r1, #0x24
	ldr r0, [r0]
	bl sub_8000DE6
	movs r0, #0
	str r0, [r5, #0x24]
_0801F8DA
	movs r1, #0
	adds r0, r4, #0
	adds r0, #0xe0
	bl sub_8024EBC
	movs r1, #0
	adds r0, r4, #0
	adds r0, #0xa0
	bl sub_802E02A
	movs r1, #0
	adds r0, r4, #0
	bl sub_801D714
	cmp r6, #0
	beq _0801F900
	adds r0, r4, #0
	bl sub_803DA18
_0801F900
	pop {r4, r5, r6}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_801F906
sub_801F906 ;@ 0x0801F906
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, [r0, #0x7c]
	sub sp, #0xc
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	cmp r0, #0
	bne _0801FA00
	adds r0, r4, #0
	adds r0, #0xff
	adds r0, #0x41
	str r0, [sp, #8]
	ldrh r0, [r0, #4]
	cmp r0, #0x1e
	bls _0801FA00
	ldr r0, [sp, #8]
	ldr r2, _0801FBB0 ;@ =gUnknown_03003D20
	ldrh r6, [r0, #6]
	ldr r0, _0801FBAC ;@ =gPlayerEntity
	adds r7, r4, #0
	ldr r0, [r0]
	adds r7, #0x90
	adds r1, r0, #0
	adds r3, r0, #0
	adds r3, #0xb0
	adds r1, #0xa0
	ldrb r2, [r2]
	str r7, [sp, #4]
	cmp r6, #0xb4
	ldr r0, _0801FBB4 ;@ =gUnknown_0300346C
	bls _0801FA2E
	ldrb r3, [r3, #7]
	cmp r3, #0
	beq _0801FA00
	cmp r3, #1
	beq _0801F96C
	cmp r3, #2
	beq _0801FA30
	cmp r3, #3
	bne _0801FA32
	cmp r2, #0
	beq _0801F966
	ldrb r1, [r1, #0xd]
	cmp r1, #0x16
	blo _0801FA00
_0801F966
	movs r5, #2
	movs r6, #0
	b _0801FB04
_0801F96C
	cmp r2, #0
	beq _0801F976
	ldrb r1, [r1, #0xd]
	cmp r1, #0xd
	blo _0801FA00
_0801F976
	movs r5, #0
	movs r6, #0
_0801F97A
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #4
	lsrs r0, r0, #0x1c
	cmp r0, r6
	beq _0801F9F6
	ldr r0, _0801FBB4 ;@ =gUnknown_0300346C
	ldr r0, [r0]
	bl sub_80050FA
	bl sub_8005106
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0x40
	bl sub_803DA80
	adds r7, r0, #0
	beq _0801F9A6
	adds r0, r7, #0
	bl sub_802BA4C
_0801F9A6
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r7, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	ldr r0, [r4, #0x7c]
	adds r3, r6, #0
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r7, r2, r1
	adds r2, r5, #0
	adds r1, r4, #0
	bl sub_803B8D6
	ldr r0, [r4, #0x7c]
	movs r2, #7
	movs r3, #1
	adds r1, r0, #0
	lsls r3, r3, #0x1c
	lsls r2, r2, #0x1c
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	lsls r1, r0, #1
	lsrs r1, r1, #0x1d
	cmp r1, #5
	str r0, [r4, #0x7c]
	bne _0801F9F6
	bics r0, r2
	str r0, [r4, #0x7c]
_0801F9F6
	adds r6, #1
	cmp r6, #4
	blo _0801F97A
	ldr r0, _0801FBB4 ;@ =gUnknown_0300346C
	b _0801FA02
_0801FA00
	b _0801FB2C
_0801FA02
	ldr r0, [r0]
	bl sub_80050FA
	bl sub_8005106
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0x40
	bl sub_803DA80
	adds r6, r0, #0
	beq _0801FA22
	adds r0, r6, #0
	bl sub_802BA4C
_0801FA22
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	b _0801FA34
_0801FA2E
	b _0801FC06
_0801FA30
	b _0801FA3E
_0801FA32
	b _0801FBE0
_0801FA34
	str r6, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	b _0801FBE0
_0801FA3E
	cmp r2, #0
	beq _0801FA48
	ldrb r1, [r1, #0xd]
	cmp r1, #0x12
	blo _0801FB2C
_0801FA48
	movs r5, #1
	movs r6, #0
_0801FA4C
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #4
	lsrs r0, r0, #0x1c
	cmp r0, r6
	beq _0801FAC8
	ldr r0, _0801FBB4 ;@ =gUnknown_0300346C
	ldr r0, [r0]
	bl sub_80050FA
	bl sub_8005106
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0x40
	bl sub_803DA80
	adds r7, r0, #0
	beq _0801FA78
	adds r0, r7, #0
	bl sub_802BA4C
_0801FA78
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r7, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	ldr r0, [r4, #0x7c]
	adds r3, r6, #0
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r7, r2, r1
	adds r2, r5, #0
	adds r1, r4, #0
	bl sub_803B8D6
	ldr r0, [r4, #0x7c]
	movs r2, #7
	movs r3, #1
	adds r1, r0, #0
	lsls r3, r3, #0x1c
	lsls r2, r2, #0x1c
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	lsls r1, r0, #1
	lsrs r1, r1, #0x1d
	cmp r1, #5
	str r0, [r4, #0x7c]
	bne _0801FAC8
	bics r0, r2
	str r0, [r4, #0x7c]
_0801FAC8
	adds r6, #1
	cmp r6, #4
	blo _0801FA4C
	ldr r0, _0801FBB4 ;@ =gUnknown_0300346C
	ldr r0, [r0]
	bl sub_80050FA
	bl sub_8005106
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0x40
	bl sub_803DA80
	adds r6, r0, #0
	beq _0801FAF0
	adds r0, r6, #0
	bl sub_802BA4C
_0801FAF0
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r6, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	b _0801FBE0
_0801FB04
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #4
	lsrs r0, r0, #0x1c
	cmp r0, r6
	beq _0801FB84
	ldr r0, _0801FBB4 ;@ =gUnknown_0300346C
	ldr r0, [r0]
	bl sub_80050FA
	bl sub_8005106
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0x40
	bl sub_803DA80
	adds r7, r0, #0
	beq _0801FB34
	b _0801FB2E
_0801FB2C
	b _0801FCF4
_0801FB2E
	adds r0, r7, #0
	bl sub_802BA4C
_0801FB34
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r7, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	ldr r0, [r4, #0x7c]
	adds r3, r6, #0
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r7, r2, r1
	adds r2, r5, #0
	adds r1, r4, #0
	bl sub_803B8D6
	ldr r0, [r4, #0x7c]
	movs r2, #7
	movs r3, #1
	adds r1, r0, #0
	lsls r3, r3, #0x1c
	lsls r2, r2, #0x1c
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	lsls r1, r0, #1
	lsrs r1, r1, #0x1d
	cmp r1, #5
	str r0, [r4, #0x7c]
	bne _0801FB84
	bics r0, r2
	str r0, [r4, #0x7c]
_0801FB84
	adds r6, #1
	cmp r6, #4
	blo _0801FB04
	ldr r0, _0801FBB4 ;@ =gUnknown_0300346C
	ldr r0, [r0]
	bl sub_80050FA
	bl sub_8005106
	b _0801FBB8
	ALIGN
_0801FB98 DCDU gUnknown_0803E760
_0801FB9C DCDU 0xF000FFFF
_0801FBA0 DCDU 0xFF8003FF
_0801FBA4 DCDU 0x0043A000
_0801FBA8 DCDU gUnknown_03003EB8
_0801FBAC DCDU gPlayerEntity
_0801FBB0 DCDU gUnknown_03003D20
_0801FBB4 DCDU gUnknown_0300346C
_0801FBB8
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0x40
	bl sub_803DA80
	adds r6, r0, #0
	beq _0801FBCE
	adds r0, r6, #0
	bl sub_802BA4C
_0801FBCE
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r6, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
_0801FBE0
	ldr r0, _0801FE7C ;@ =gUnknown_03003458
	movs r1, #0x29
	ldr r0, [r0]
	lsls r1, r1, #5
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r1, #1
	strb r1, [r0]
	adds r1, #1
	strb r1, [r0]
	adds r1, #1
	strb r1, [r0]
	adds r1, #1
	strb r1, [r0]
	ldr r7, [sp, #4]
	ldrb r0, [r7, #0xa]
	adds r0, #4
	strb r0, [r7, #0xa]
	b _0801FD5E
_0801FC06
	ldr r0, _0801FE80 ;@ =gUnknown_0300346C
	cmp r6, #0x3c
	ldr r0, [r0]
	bls _0801FCF2
	ldrb r3, [r3, #6]
	cmp r3, #0
	beq _0801FCF4
	cmp r3, #1
	beq _0801FC76
	cmp r3, #2
	beq _0801FCB4
	cmp r3, #3
	bne _0801FC5C
	cmp r2, #0
	beq _0801FC2A
	ldrb r1, [r1, #0xd]
	cmp r1, #0x16
	blo _0801FCF4
_0801FC2A
	bl sub_80050FA
	bl sub_8005106
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0x4c
	bl sub_803DA80
	adds r5, r0, #0
	beq _0801FC48
	adds r0, r5, #0
	bl sub_802D2E8
_0801FC48
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r5, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	movs r5, #0
_0801FC5C
	ldr r0, _0801FE7C ;@ =gUnknown_03003458
	movs r1, #0x29
	ldr r0, [r0]
	lsls r1, r1, #5
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r1, #1
	strb r1, [r0]
	ldr r7, [sp, #4]
	ldrb r0, [r7, #0xa]
	adds r0, #1
	strb r0, [r7, #0xa]
	b _0801FD5E
_0801FC76
	cmp r2, #0
	beq _0801FC80
	ldrb r1, [r1, #0xd]
	cmp r1, #0xd
	blo _0801FCF4
_0801FC80
	bl sub_80050FA
	bl sub_8005106
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0x4c
	bl sub_803DA80
	adds r5, r0, #0
	beq _0801FC9E
	adds r0, r5, #0
	bl sub_802D2E8
_0801FC9E
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r5, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	movs r5, #2
	b _0801FC5C
_0801FCB4
	cmp r2, #0
	beq _0801FCBE
	ldrb r1, [r1, #0xd]
	cmp r1, #0x12
	blo _0801FCF4
_0801FCBE
	bl sub_80050FA
	bl sub_8005106
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0x4c
	bl sub_803DA80
	adds r5, r0, #0
	beq _0801FCDC
	adds r0, r5, #0
	bl sub_802D2E8
_0801FCDC
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r5, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	movs r5, #1
	b _0801FCF6
_0801FCF2
	b _0801FCF8
_0801FCF4
	b _0801FDE2
_0801FCF6
	b _0801FC5C
_0801FCF8
	ldrb r3, [r3, #5]
	cmp r3, #0
	beq _0801FDE2
	cmp r3, #1
	beq _0801FD76
	cmp r3, #2
	beq _0801FDB4
	cmp r3, #3
	bne _0801FD46
	cmp r2, #0
	beq _0801FD14
	ldrb r1, [r1, #0xd]
	cmp r1, #2
	blo _0801FDE2
_0801FD14
	bl sub_80050FA
	bl sub_8005106
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0x4c
	bl sub_803DA80
	adds r5, r0, #0
	beq _0801FD32
	adds r0, r5, #0
	bl sub_802BFBC
_0801FD32
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r5, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	movs r5, #0
_0801FD46
	ldr r0, _0801FE7C ;@ =gUnknown_03003458
	movs r1, #0x29
	ldr r0, [r0]
	lsls r1, r1, #5
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r1, #1
	strb r1, [r0]
	ldr r7, [sp, #4]
	ldrb r0, [r7, #0xa]
	adds r0, #1
	strb r0, [r7, #0xa]
_0801FD5E
	ldr r2, _0801FE84 ;@ =gUnknown_03003D20
	ldrb r0, [r2]
	cmp r0, #0
	beq _0801FDF6
	movs r0, #0x32
	strh r0, [r4, #0x16]
	movs r0, #0x33
	strh r0, [r4, #0x12]
	movs r0, #0x34
	strh r0, [r4, #0x14]
	strh r0, [r4, #0x10]
	b _0801FE04
_0801FD76
	cmp r2, #0
	beq _0801FD80
	ldrb r1, [r1, #0xd]
	cmp r1, #1
	blo _0801FDE2
_0801FD80
	bl sub_80050FA
	bl sub_8005106
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0x48
	bl sub_803DA80
	adds r5, r0, #0
	beq _0801FD9E
	adds r0, r5, #0
	bl sub_802C884
_0801FD9E
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r5, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	movs r5, #0
	b _0801FD46
_0801FDB4
	cmp r2, #0
	beq _0801FDBE
	ldrb r1, [r1, #0xd]
	cmp r1, #2
	blo _0801FDE2
_0801FDBE
	bl sub_80050FA
	bl sub_8005106
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0x4c
	bl sub_803DA80
	adds r5, r0, #0
	beq _0801FDDC
	adds r0, r5, #0
	bl sub_802BFBC
_0801FDDC
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	b _0801FDE4
_0801FDE2
	b _0801FE74
_0801FDE4
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r5, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	movs r5, #1
	b _0801FD46
_0801FDF6
	movs r0, #0x48
	strh r0, [r4, #0x16]
	movs r0, #0x49
	strh r0, [r4, #0x12]
	movs r0, #0x4a
	strh r0, [r4, #0x14]
	strh r0, [r4, #0x10]
_0801FE04
	ldr r0, [r4, #0x7c]
	movs r3, #0
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	mvns r3, r3
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r6, r2, r1
	adds r2, r5, #0
	adds r1, r4, #0
	bl sub_803B8D4
	ldr r0, _0801FE88 ;@ =gUnknown_03003E98
	ldr r0, [r0]
	ldr r0, [r0, #8]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	cmp r0, #2
	bhs _0801FE40
	ldr r1, _0801FE8C ;@ =gUnknown_0300345C
	adds r0, #0x4b
	lsls r0, r0, #0x18
	ldr r1, [r1]
	lsrs r0, r0, #0x13
	adds r0, r0, r1
	bl sub_8028C2E
_0801FE40
	ldr r0, [sp, #8]
	movs r3, #0
	strh r3, [r0, #4]
	ldr r0, [r4, #0x7c]
	movs r3, #1
	movs r1, #7
	adds r2, r0, #0
	lsls r1, r1, #0x1c
	lsls r3, r3, #0x1c
	adds r0, r0, r3
	ands r0, r1
	bics r2, r1
	orrs r0, r2
	lsls r2, r0, #1
	lsrs r2, r2, #0x1d
	cmp r2, #5
	str r0, [r4, #0x7c]
	bne _0801FE68
	bics r0, r1
	str r0, [r4, #0x7c]
_0801FE68
	adds r4, #0x80
	ldr r0, [r4, #0x1c]
	cmp r0, #1
	beq _0801FE74
	movs r0, #9
	str r0, [r4, #0x1c]
_0801FE74
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	ALIGN
_0801FE7C DCDU gUnknown_03003458
_0801FE80 DCDU gUnknown_0300346C
_0801FE84 DCDU gUnknown_03003D20
_0801FE88 DCDU gUnknown_03003E98
_0801FE8C DCDU gUnknown_0300345C
	END