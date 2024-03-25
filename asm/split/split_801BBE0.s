    INCLUDE asm/macros.inc
    AREA text, CODE

	IMPORT gPlayerEntity
	IMPORT gUnknown_03003454
	IMPORT gUnknown_03003468
	IMPORT gUnknown_03003D20
	IMPORT gUnknown_03003E88
	IMPORT gUnknown_080507F4
	IMPORT gUnknown_08050A24
	IMPORT sub_80050FA
	IMPORT sub_8005106
	IMPORT sub_8017620
	IMPORT sub_8017862
	IMPORT sub_8017884
	IMPORT sub_8017A0A
	IMPORT sub_8017A56
	IMPORT sub_801F2F8
	IMPORT sub_803DA4C
	IMPORT sub_803DA9C
	IMPORT sub_803F72C
	IMPORT sub_803FC68

	thumb_func_start sub_801BBE0
sub_801BBE0 ;@ 0x0801BBE0
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	movs r0, #5
	lsls r0, r0, #8
	adds r4, r6, r0
	ldr r0, [r4, #0x1c]
	movs r1, #0xfe
	bics r0, r1
	sub sp, #0x14
	ldr r7, _0801BE64 ;@ =gUnknown_03003454
	str r0, [r4, #0x1c]
	ldr r1, [r7]
	movs r2, #3
	lsls r2, r2, #9
	adds r1, #4
	adds r1, r1, r2
	ldr r1, [r1, #0x1c]
	movs r3, #0
	adds r1, #0x10
	strh r3, [r1]
	strh r3, [r1, #2]
	strh r3, [r1, #4]
	movs r0, #1
	movs r5, #0
	strh r3, [r1, #6]
_0801BC12
	ldr r0, [r7]
	lsls r1, r5, #2
	movs r2, #5
	lsls r2, r2, #7
	adds r1, r1, r0
	adds r1, r1, r2
	ldr r1, [r1, #0x18]
	cmp r1, #0
	beq _0801BC2A
	adds r1, r5, #0
	bl sub_8017862
_0801BC2A
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #0x40
	blo _0801BC12
	movs r1, #0xff
	ldr r0, [r7]
	bl sub_8017620
	ldr r0, _0801BE68 ;@ =gUnknown_03003468
	ldr r0, [r0]
	bl sub_80050FA
	bl sub_8005106
	adds r1, r0, #0
	movs r0, #1
	movs r3, #0
	movs r2, #0
	lsls r0, r0, #0xa
	bl sub_803DA9C
	str r0, [sp, #8]
	movs r0, #0
	bl sub_80050FA
	ldr r0, _0801BE64 ;@ =gUnknown_03003454
	ldr r3, _0801BE6C ;@ =0x00002EE0
	movs r2, #1
	add r1, pc, #0x208 ;@ =_0801BE70
	ldr r0, [r0]
	bl sub_803FC68
	adds r5, r0, #0
	ldr r0, _0801BE68 ;@ =gUnknown_03003468
	ldr r0, [r0]
	bl sub_80050FA
	ldr r0, [sp, #8]
	bl sub_803DA4C
	movs r0, #0
	bl sub_80050FA
	movs r2, #0
	ldr r0, _0801BE88 ;@ =gPlayerEntity
	str r2, [sp]
	ldr r0, [r0]
	ldr r1, _0801BE8C ;@ =gUnknown_080507F4
	adds r0, #0x90
	ldrb r0, [r0]
	lsls r3, r0, #2
	adds r0, r3, r0
	lsls r0, r0, #2
	ldrh r1, [r1, r0]
	ldr r0, _0801BE64 ;@ =gUnknown_03003454
	movs r3, #1
	adds r2, r5, #0
	ldr r0, [r0]
	bl sub_8017884
	ldr r0, _0801BE88 ;@ =gPlayerEntity
	movs r1, #0x90
	ldr r0, [r0]
	ldr r2, _0801BE8C ;@ =gUnknown_080507F4
	ldrb r1, [r1, r0]
	adds r0, #0x80
	ldrb r0, [r0, #4]
	lsls r3, r1, #2
	adds r1, r3, r1
	lsls r1, r1, #2
	adds r1, r1, r2
	lsls r0, r0, #1
	ldrh r1, [r1, r0]
	cmp r1, #0
	beq _0801BCD2
	movs r2, #0
	str r2, [sp]
	movs r3, #1
	adds r2, r5, #0
	ldr r0, [r7]
	bl sub_8017884
	b _0801BCFC
_0801BCD2
	adds r2, r5, #0
	cmp r5, #0xff
	bne _0801BCDC
	ldr r0, [r7]
	ldrb r2, [r0, #0x14]
_0801BCDC
	ldr r0, _0801BE90 ;@ =gUnknown_03003E88
	movs r1, #4
	ldr r0, [r0]
	bl sub_803F72C
	movs r1, #0x16
	strh r1, [r0]
	movs r1, #4
	strh r1, [r0, #2]
	adds r2, r0, #0
	str r5, [sp]
	movs r3, #1
	movs r1, #2
	ldr r0, [r7]
	bl sub_8017A0A
_0801BCFC
	movs r2, #0
	ldr r0, _0801BE88 ;@ =gPlayerEntity
	str r2, [sp]
	ldr r0, [r0]
	ldr r1, _0801BE94 ;@ =gUnknown_08050A24
	adds r0, #0x90
	ldrb r0, [r0]
	lsls r3, r0, #2
	adds r0, r3, r0
	lsls r0, r0, #2
	ldrh r1, [r1, r0]
	movs r3, #1
	adds r2, r5, #0
	ldr r0, [r7]
	bl sub_8017884
	ldr r0, _0801BE88 ;@ =gPlayerEntity
	movs r1, #0x90
	ldr r0, [r0]
	ldr r2, _0801BE94 ;@ =gUnknown_08050A24
	ldrb r1, [r1, r0]
	adds r0, #0x80
	ldrb r0, [r0, #4]
	lsls r3, r1, #2
	adds r1, r3, r1
	lsls r1, r1, #2
	adds r1, r1, r2
	lsls r0, r0, #1
	ldrh r1, [r1, r0]
	cmp r1, #0
	beq _0801BD48
	movs r2, #0
	str r2, [sp]
	movs r3, #1
	adds r2, r5, #0
	ldr r0, [r7]
	bl sub_8017884
_0801BD48
	ldr r0, _0801BE88 ;@ =gPlayerEntity
	ldr r2, _0801BE98 ;@ =0x0000FFFF
	ldr r0, [r0]
	adds r0, #0x80
	ldr r1, [r0, #0x14]
	cmp r1, r2
	beq _0801BD9A
	asrs r1, r1, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp]
	ldr r0, [r0, #0x18]
	adds r2, r5, #0
	asrs r0, r0, #0x10
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #4]
	cmp r5, #0xff
	bne _0801BD72
	ldr r0, [r7]
	ldrb r2, [r0, #0x14]
_0801BD72
	ldr r0, _0801BE90 ;@ =gUnknown_03003E88
	movs r1, #8
	ldr r0, [r0]
	bl sub_803F72C
	movs r1, #0x20
	strh r1, [r0]
	movs r1, #8
	strh r1, [r0, #2]
	ldr r1, [sp]
	adds r2, r0, #0
	strh r1, [r0, #4]
	ldr r1, [sp, #4]
	movs r3, #1
	strh r1, [r0, #6]
	str r5, [sp]
	ldr r0, [r7]
	movs r1, #0
	bl sub_8017A56
_0801BD9A
	ldr r7, _0801BE64 ;@ =gUnknown_03003454
	lsls r1, r5, #2
	ldr r0, [r7]
	str r1, [sp, #0x10]
	adds r0, r1, r0
	movs r1, #5
	lsls r1, r1, #7
	adds r0, r0, r1
	ldr r0, [r0, #0x18]
	cmp r0, #0
	beq _0801BDCA
_0801BDB0
	movs r1, #0xff
	ldr r0, [r7]
	bl sub_8017620
	ldr r0, [r7]
	ldr r1, [sp, #0x10]
	adds r0, r1, r0
	movs r1, #5
	lsls r1, r1, #7
	adds r0, r0, r1
	ldr r0, [r0, #0x18]
	cmp r0, #0
	bne _0801BDB0
_0801BDCA
	ldr r0, [r4, #0x1c]
	movs r7, #0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x19
	beq _0801BE24
_0801BDD4
	lsls r0, r7, #2
	adds r0, r0, r6
	str r0, [sp, #0xc]
	ldr r0, [r0, #0x20]
	bl sub_801F2F8
	ldr r0, [sp, #0xc]
	ldr r0, [r0, #0x20]
	ldrh r1, [r0, #4]
	cmp r1, #9
	bne _0801BDFC
	movs r1, #0x7f
	ldr r0, [r4, #0x1c]
	lsls r1, r1, #0xd
	bics r0, r1
	lsls r1, r7, #0x19
	lsrs r1, r1, #0xc
	orrs r0, r1
	str r0, [r4, #0x1c]
	b _0801BE14
_0801BDFC
	movs r3, #0x97
	ldrsb r0, [r0, r3]
	cmp r0, #0
	bne _0801BE14
	movs r1, #0x7f
	ldr r0, [r4, #0x1c]
	lsls r1, r1, #0x14
	bics r0, r1
	lsls r1, r7, #0x19
	lsrs r1, r1, #5
	orrs r0, r1
	str r0, [r4, #0x1c]
_0801BE14
	ldr r0, [r4, #0x1c]
	adds r7, #1
	lsls r7, r7, #0x18
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x19
	lsrs r7, r7, #0x18
	cmp r0, r7
	bhi _0801BDD4
_0801BE24
	ldr r7, _0801BE64 ;@ =gUnknown_03003454
	lsls r1, r5, #1
	ldr r0, [r7]
	adds r2, r1, r0
	movs r1, #0xb
	lsls r1, r1, #7
	adds r1, r2, r1
	ldrh r2, [r1, #0x18]
	lsrs r2, r2, #1
	lsls r2, r2, #1
	strh r2, [r1, #0x18]
	ldr r2, [sp, #0x10]
	movs r1, #0
	adds r0, r2, r0
	movs r2, #9
	lsls r2, r2, #7
	adds r0, r0, r2
	str r1, [r0, #0x18]
	ldr r0, [r6, #0x20]
	ldr r1, _0801BE9C ;@ =gUnknown_03003D20
	ldr r0, [r0, #0x30]
	ldr r0, [r0, #0x10]
	ldr r0, [r0]
	lsls r0, r0, #1
	lsrs r0, r0, #0x16
	lsls r0, r0, #0x10
	str r0, [r1, #4]
	add sp, #0x14
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	ALIGN
_0801BE64 DCDU gUnknown_03003454
_0801BE68 DCDU gUnknown_03003468
_0801BE6C DCDU 0x00002EE0
_0801BE70 DCDU 0x6576654C
_0801BE74 DCDU 0x6E49206C
_0801BE78 DCDU 0x61697469
_0801BE7C DCDU 0x6173696C
_0801BE80 DCDU 0x6E6F6974
_0801BE84 DCDU 0x00000000
_0801BE88 DCDU gPlayerEntity
_0801BE8C DCDU gUnknown_080507F4
_0801BE90 DCDU gUnknown_03003E88
_0801BE94 DCDU gUnknown_08050A24
_0801BE98 DCDU 0x0000FFFF
_0801BE9C DCDU gUnknown_03003D20
	END