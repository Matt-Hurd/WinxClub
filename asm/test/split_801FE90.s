    INCLUDE asm/macros.inc
    AREA text, CODE

	IMPORT gPlayerEntity
	IMPORT gUnknown_03003458
	IMPORT gUnknown_0300345C
	IMPORT gUnknown_030034F8
	IMPORT gUnknown_03003D20
	IMPORT gUnknown_03003E80
	IMPORT gUnknown_03003E98
	IMPORT gUnknown_03003EB8
	IMPORT gUnknown_08051072
	IMPORT gUnknown_08051076
	IMPORT gUnknown_0805107A
	IMPORT gUnknown_0805107E
	IMPORT gUnknown_08051082
	IMPORT gUnknown_08051086
	IMPORT ModifyPlayerHealth
	IMPORT sub_800065C
	IMPORT sub_80007A0
	IMPORT sub_8000914
	IMPORT sub_8001432
	IMPORT sub_8005106
	IMPORT sub_801DD40
	IMPORT sub_801DF50
	IMPORT sub_801E7A6
	IMPORT sub_801EBCA
	IMPORT sub_801F906
	IMPORT sub_8023A70
	IMPORT sub_8023AA2
	IMPORT sub_8023AE0
	IMPORT sub_8023B22
	IMPORT sub_8028C2E
	IMPORT sub_802E3C6
	IMPORT sub_80333DC
	IMPORT sub_803B8CA
	IMPORT sub_803B8D4
	IMPORT sub_803B8D6
	IMPORT sub_803DA80
	IMPORT sub_803F2CC
	IMPORT sub_803F6B4
	IMPORT sub_803F6E0
	IMPORT sub_803F898
	IMPORT sub_803FAB8
	IMPORT sub_803FC14
	IMPORT sub_803FF24
	IMPORT sub_80401C0
	IMPORT sub_80401E4
	IMPORT sub_80406C4


	thumb_func_start sub_801FE90
sub_801FE90 ;@ 0x0801FE90
	push {r3, lr}
	ldr r0, [r1]
	ldrb r1, [r0, #4]
	cmp r1, #5
	bhs _0801FEB8
	add r3, pc, #0x8 ;@ =_0801FEA4
	ldrb r3, [r3, r1]
	lsls r3, r3, #1
	add pc, r3
	ALIGN
_0801FEA4
	DCB 0x03
_0801FEA5
	DCB 0x0D
_0801FEA6
	DCB 0x15
_0801FEA7
	DCB 0x1D
_0801FEA8
	DCB 0x25, 0x00
loc_801feaa
	movs r3, #5
	ldrsb r1, [r0, r3]
	ldr r0, _0802026C ;@ =gPlayerEntity
	ldr r0, [r0]
	adds r0, #0xac
	bl ModifyPlayerHealth
_0801FEB8
	add sp, #4
	pop {r3}
	bx r3
loc_801febe
	movs r3, #5
	ldrsb r1, [r0, r3]
	ldr r0, _0802026C ;@ =gPlayerEntity
	ldr r0, [r0]
	adds r0, #0xac
	bl sub_8023A70
	b _0801FEB8
loc_801fece
	movs r3, #5
	ldrsb r1, [r0, r3]
	ldr r0, _0802026C ;@ =gPlayerEntity
	ldr r0, [r0]
	adds r0, #0xac
	bl sub_8023AA2
	b _0801FEB8
loc_801fede
	movs r3, #5
	ldrsb r1, [r0, r3]
	ldr r0, _0802026C ;@ =gPlayerEntity
	ldr r0, [r0]
	adds r0, #0xac
	bl sub_8023B22
	b _0801FEB8
loc_801feee
	movs r3, #5
	ldrsb r1, [r0, r3]
	ldr r0, _0802026C ;@ =gPlayerEntity
	ldr r0, [r0]
	adds r0, #0xac
	bl sub_8023AE0
	b _0801FEB8

	non_word_aligned_thumb_func_start sub_801FEFE
sub_801FEFE ;@ 0x0801FEFE
	push {r4, r5, r6, lr}
	ldr r4, [r1]
	adds r5, r0, #0
	bl sub_8005106
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0x1c
	bl sub_803DA80
	cmp r0, #0
	beq _0801FF26
	movs r1, #0
	movs r2, #0
	movs r3, #0
	stm r0!, {r1, r2, r3}
	stm r0!, {r1, r2, r3}
	stm r0!, {r3}
	subs r0, #0x1c
_0801FF26
	movs r1, #0
_0801FF28
	lsls r2, r1, #1
	adds r3, r2, r4
	ldrh r6, [r3, #6]
	adds r1, #1
	lsls r1, r1, #0x18
	strh r6, [r0, r2]
	ldrh r3, [r3, #0xe]
	adds r2, r2, r0
	lsrs r1, r1, #0x18
	cmp r1, #4
	strh r3, [r2, #8]
	blo _0801FF28
	ldrh r1, [r4, #0x16]
	strh r1, [r0, #0x10]
	movs r1, #2
	strb r1, [r0, #0x14]
	ldrh r1, [r4, #4]
	lsls r1, r1, #2
	adds r1, r1, r5
	adds r1, #0xff
	adds r1, #0x41
	ldr r1, [r1, #0x10]
	str r1, [r0, #0x18]
	ldrh r1, [r4, #4]
	lsls r1, r1, #2
	adds r1, r1, r5
	adds r1, #0xff
	adds r1, #0x41
	str r0, [r1, #0x10]
	pop {r4, r5, r6}
	pop {r3}
	bx r3

	thumb_func_start sub_801FF68
sub_801FF68 ;@ 0x0801FF68
	push {r4, lr}
	ldr r2, [r1]
	ldrb r3, [r2]
	cmp r3, #0x1c
	beq _0801FF88
	cmp r3, #0x21
	beq _0802004E
	cmp r3, #0x25
	beq _08020050
	cmp r3, #0x2d
	bne _08020052
	bl sub_801FEFE
_0801FF82
	pop {r4}
	pop {r3}
	bx r3
_0801FF88
	ldrb r3, [r2, #5]
	movs r4, #0x9c
	lsls r3, r3, #0x10
	str r3, [r0, #0x78]
	movs r3, #0
	str r3, [r4, r0]
	ldrb r4, [r2, #4]
	cmp r4, #0xc
	bhs _08020022
	add r3, pc, #0x8 ;@ =_0801FFA4
	ldrb r3, [r3, r4]
	lsls r3, r3, #1
	add pc, r3
	ALIGN
_0801FFA4
	DCB 0x06
_0801FFA5
	DCB 0x06
_0801FFA6
	DCB 0x06
_0801FFA7
	DCB 0x06
_0801FFA8
	DCB 0x13
_0801FFA9
	DCB 0x1C
_0801FFAA
	DCB 0x28
_0801FFAB
	DCB 0x34
_0801FFAC
	DCB 0x40
_0801FFAD
	DCB 0x49
_0801FFAE
	DCB 0x58
_0801FFAF
	DCB 0x64
loc_801ffb0
	ldrb r2, [r2, #4]
	movs r4, #0xf
	lsls r4, r4, #0x18
	ldr r3, [r0, #0x7c]
	lsls r2, r2, #0x1c
	lsrs r2, r2, #4
	bics r3, r4
	orrs r2, r3
	str r2, [r0, #0x7c]
	movs r2, #0xff
	movs r3, #0x98
	strb r2, [r3, r0]
	b _08020022
loc_801ffca
	movs r3, #0xf
	ldr r2, [r0, #0x7c]
	lsls r3, r3, #0x18
	bics r2, r3
	str r2, [r0, #0x7c]
	movs r2, #3
	movs r3, #0x98
	strb r2, [r3, r0]
	b _08020022
loc_801ffdc
	movs r3, #0xf
	ldr r2, [r0, #0x7c]
	lsls r3, r3, #0x18
	bics r2, r3
	movs r3, #1
	lsls r3, r3, #0x18
	adds r2, r2, r3
	str r2, [r0, #0x7c]
	movs r2, #2
	movs r3, #0x98
	strb r2, [r3, r0]
	b _08020022
loc_801fff4
	movs r3, #0xf
	ldr r2, [r0, #0x7c]
	lsls r3, r3, #0x18
	bics r2, r3
	movs r3, #1
	lsls r3, r3, #0x19
	adds r2, r2, r3
	str r2, [r0, #0x7c]
	movs r2, #3
	movs r3, #0x98
	strb r2, [r3, r0]
	b _08020022
loc_802000c
	movs r3, #0xf
	ldr r2, [r0, #0x7c]
	lsls r3, r3, #0x18
	bics r2, r3
	movs r3, #3
	lsls r3, r3, #0x18
	adds r2, r2, r3
	str r2, [r0, #0x7c]
	movs r2, #0
	movs r3, #0x98
	strb r2, [r3, r0]
_08020022
	b _08020082
loc_8020024
	movs r3, #0xf
	ldr r2, [r0, #0x7c]
	lsls r3, r3, #0x18
	bics r2, r3
	str r2, [r0, #0x7c]
	movs r2, #1
	movs r3, #0x98
	strb r2, [r3, r0]
	b _08020082
loc_8020036
	movs r3, #0xf
	ldr r2, [r0, #0x7c]
	lsls r3, r3, #0x18
	bics r2, r3
	movs r3, #1
	lsls r3, r3, #0x18
	adds r2, r2, r3
	str r2, [r0, #0x7c]
	movs r2, #0
	movs r3, #0x98
	strb r2, [r3, r0]
	b _08020082
_0802004E
	b _08020090
_08020050
	b _0802008A
_08020052
	b _0802009E
loc_8020054
	movs r3, #0xf
	ldr r2, [r0, #0x7c]
	lsls r3, r3, #0x18
	bics r2, r3
	movs r3, #1
	lsls r3, r3, #0x19
	adds r2, r2, r3
	str r2, [r0, #0x7c]
	movs r2, #1
	movs r3, #0x98
	strb r2, [r3, r0]
	b _08020082
loc_802006c
	movs r3, #0xf
	ldr r2, [r0, #0x7c]
	lsls r3, r3, #0x18
	bics r2, r3
	movs r3, #3
	lsls r3, r3, #0x18
	adds r2, r2, r3
	str r2, [r0, #0x7c]
	movs r2, #2
	movs r3, #0x98
	strb r2, [r3, r0]
_08020082
	adds r0, #0xff
	adds r0, #1
	str r1, [r0, #0x28]
	b _0801FF82
_0802008A
	bl sub_801FE90
	b _0801FF82
_08020090
	movs r1, #0x1f
	movs r2, #0xff
	adds r2, #0x45
	strh r1, [r2, r0]
	bl sub_801F906
	b _0801FF82
_0802009E
	bl sub_801DD40
	b _0801FF82

	thumb_func_start sub_80200A4
sub_80200A4 ;@ 0x080200A4
	push {r3, lr}
	ldr r2, [r1]
	ldrb r2, [r2]
	cmp r2, #0x1c
	beq _080200C2
	cmp r2, #0x21
	beq _080200BA
	cmp r2, #0x25
	beq _080200BA
	cmp r2, #0x2d
	bne _080200DA
_080200BA
	movs r0, #1
_080200BC
	add sp, #4
	pop {r3}
	bx r3
_080200C2
	ldr r2, [r0, #0x78]
	cmp r2, #0
	beq _080200D2
	adds r0, #0xff
	adds r0, #1
	ldr r0, [r0, #0x28]
	cmp r0, r1
	beq _080200D6
_080200D2
	movs r0, #1
	b _080200BC
_080200D6
	movs r0, #0
	b _080200BC
_080200DA
	bl sub_801DF50
	b _080200BC

	thumb_func_start sub_80200E0
sub_80200E0 ;@ 0x080200E0
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, _08020270 ;@ =gUnknown_03003E80
	movs r3, #0
	ldr r1, [r0]
	adds r0, r3, #0
	ldr r2, [r1, #0x14]
	sub sp, #0x4c
	lsls r5, r2, #0x1c
	bmi _080200F6
	ldrh r0, [r1, #4]
_080200F6
	lsls r6, r0, #0x10
	lsrs r6, r6, #0x10
	movs r0, #0
	lsls r2, r2, #0x1c
	bmi _08020102
	ldrh r0, [r1, #6]
_08020102
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x10]
	ldr r0, _0802026C ;@ =gPlayerEntity
	ldr r0, [r0]
	adds r0, #0xb0
	ldrb r1, [r0, #5]
	str r1, [sp, #0xc]
	ldrb r2, [r0, #8]
	movs r1, #5
	lsls r1, r1, #8
	str r2, [sp, #8]
	ldr r2, _08020274 ;@ =gUnknown_03003458
	ldr r0, [r2]
	adds r2, r4, #0
	adds r0, r0, r1
	ldr r0, [r0, #0x1c]
	adds r1, r4, #0
	adds r1, #0x80
	str r1, [sp, #0x48]
	adds r2, #0xa0
	lsls r0, r0, #0x13
	lsrs r0, r0, #0x1f
	ldr r1, [r1, #0x1c]
	str r2, [sp, #0x44]
	cmp r0, #0
	bne _08020158
	cmp r1, #0xf
	beq _08020158
	cmp r1, #0x10
	beq _08020158
	cmp r1, #0xd
	beq _08020158
	ldr r2, [sp, #0x44]
	ldr r0, [r2, #4]
	cmp r0, #0
	beq _0802015C
	ldr r2, [sp, #0x44]
	ldr r0, [r2, #0x34]
	lsls r0, r0, #6
	lsrs r0, r0, #0x1c
	cmp r0, #4
	bne _0802015C
_08020158
	movs r6, #0
	str r6, [sp, #0x10]
_0802015C
	adds r0, r4, #0
	adds r0, #0x90
	adds r2, r0, #0
	adds r7, r4, #0
	adds r7, #0xe0
	adds r2, #0x70
	adds r5, r0, #0
	adds r5, #0xb0
	cmp r1, #5
	str r2, [sp, #0x3c]
	str r7, [sp, #0x40]
	beq _08020178
	cmp r1, #0xc
	bne _080201F4
_08020178
	ldr r2, [sp, #0x3c]
	ldr r1, [r2, #0x3c]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1c
	cmp r1, #6
	bne _080201EE
	ldr r1, [sp, #0x10]
	lsls r1, r1, #0x18
	bpl _080201BE
	ldr r1, [r4, #0x30]
	movs r3, #4
	ldr r2, [r1]
	bics r2, r3
	movs r3, #0
	orrs r2, r3
	str r2, [r1]
	ldr r2, [sp, #0x3c]
	movs r3, #1
	ldr r1, [r2, #0x3c]
	lsls r3, r3, #0x18
	lsrs r1, r1, #4
	lsls r1, r1, #4
	adds r1, #8
	str r1, [r2, #0x3c]
	ldr r1, [r4, #0x74]
	movs r2, #0xf
	str r1, [r4, #0x70]
	ldr r1, [r4, #0x7c]
	lsls r2, r2, #0x18
	bics r1, r2
	adds r1, r1, r3
	str r1, [r4, #0x7c]
	lsrs r1, r3, #2
	str r1, [r4, #0x78]
	b _080201EE
_080201BE
	ldr r1, [sp, #0x10]
	lsls r1, r1, #0x19
	bpl _080201EE
	ldr r1, [r4, #0x30]
	movs r3, #4
	ldr r2, [r1]
	bics r2, r3
	movs r3, #0
	orrs r2, r3
	str r2, [r1]
	ldr r2, [sp, #0x3c]
	movs r3, #3
	ldr r1, [r2, #0x3c]
	lsls r3, r3, #0x18
	lsrs r1, r1, #4
	lsls r1, r1, #4
	adds r1, #4
	str r1, [r2, #0x3c]
	movs r2, #0xf
	ldr r1, [r4, #0x7c]
	lsls r2, r2, #0x18
	bics r1, r2
	adds r1, r1, r3
	str r1, [r4, #0x7c]
_080201EE
	movs r1, #0xff
	strb r1, [r0, #8]
	b _0802098E
_080201F4
	ldr r3, _08020278 ;@ =gUnknown_030034F8
	lsls r2, r6, #0x18
	ldr r3, [r3]
	lsrs r2, r2, #0x1c
	adds r3, #0xc0
	movs r7, #1
	cmp r2, #0
	mov ip, r3
	beq _080202EA
	ldrh r2, [r5, #6]
	cmp r2, #0
	bne _080202EA
	ldr r3, _0802027C ;@ =gUnknown_03003D20
	lsls r2, r6, #0x16
	ldrb r3, [r3]
	str r3, [sp, #0x38]
	bpl _080202B2
	lsls r2, r6, #0x1a
	bpl _08020220
	movs r2, #2
	strb r2, [r0, #8]
	b _0802023A
_08020220
	lsls r2, r6, #0x1b
	bpl _0802022A
	movs r2, #0
	strb r2, [r0, #8]
	b _0802023A
_0802022A
	lsls r2, r6, #0x19
	bpl _08020234
	movs r2, #3
	strb r2, [r0, #8]
	b _0802023A
_08020234
	lsls r2, r6, #0x18
	bpl _0802023A
	strb r7, [r0, #8]
_0802023A
	lsls r0, r6, #0x1f
	bpl _0802029C
	ldr r0, [sp, #0xc]
	cmp r0, #0
	beq _0802029C
	mov r3, ip
	ldr r0, [r3, #0x14]
	ldr r0, [r0]
	lsls r0, r0, #0x1f
	bne _0802029C
	cmp r1, #0xb
	beq _0802029C
	cmp r1, #0xa
	beq _0802029C
	ldr r3, [sp, #0x38]
	cmp r3, #0
	beq _08020280
	movs r0, #0x32
	strh r0, [r4, #0x16]
	movs r0, #0x33
	strh r0, [r4, #0x12]
	movs r0, #0x34
	strh r0, [r4, #0x14]
	strh r0, [r4, #0x10]
	b _0802028E
	ALIGN
_0802026C DCDU gPlayerEntity
_08020270 DCDU gUnknown_03003E80
_08020274 DCDU gUnknown_03003458
_08020278 DCDU gUnknown_030034F8
_0802027C DCDU gUnknown_03003D20
_08020280
	movs r0, #0x4b
	strh r0, [r4, #0x16]
	movs r0, #0x4c
	strh r0, [r4, #0x12]
	movs r0, #0x4d
	strh r0, [r4, #0x14]
	strh r0, [r4, #0x10]
_0802028E
	movs r0, #1
	lsls r0, r0, #0x14
	str r0, [r4, #0x78]
	ldr r0, [sp, #0x48]
	movs r2, #3
	str r2, [r0, #0x1c]
	b _0802038A
_0802029C
	movs r0, #1
	lsls r0, r0, #0x12
	str r0, [r4, #0x78]
	cmp r1, #0xb
	beq _0802038A
	cmp r1, #0xa
	beq _0802038A
	ldr r0, [sp, #0x48]
	movs r2, #2
	str r2, [r0, #0x1c]
	b _0802038A
_080202B2
	movs r2, #0xff
	strb r2, [r0, #8]
	lsls r2, r6, #0x19
	bpl _0802035E
	ldrh r2, [r5, #8]
	adds r2, #1
	lsls r3, r2, #0x10
	lsrs r3, r3, #0x10
	strh r3, [r5, #8]
	str r3, [sp, #0x34]
	movs r3, #0xf
	ldr r2, [r4, #0x7c]
	lsls r3, r3, #0x18
	bics r2, r3
	movs r3, #3
	lsls r3, r3, #0x18
	adds r2, r2, r3
	str r2, [r4, #0x7c]
	str r2, [sp, #0x30]
	lsls r2, r6, #0x1a
	bpl _0802031C
	ldrh r2, [r5, #0xc]
	adds r2, #1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	strh r2, [r5, #0xc]
	ldr r3, [sp, #0x34]
	b _080202EC
_080202EA
	b _080205B2
_080202EC
	cmp r3, r2
	blo _08020306
	movs r3, #0xf
	ldr r2, [sp, #0x30]
	lsls r3, r3, #0x18
	bics r2, r3
	movs r3, #3
	lsls r3, r3, #0x18
	adds r2, r2, r3
	str r2, [r4, #0x7c]
	movs r2, #2
	strb r2, [r0, #8]
	b _08020320
_08020306
	movs r3, #0xf
	ldr r2, [sp, #0x30]
	lsls r3, r3, #0x18
	bics r2, r3
	movs r3, #1
	lsls r3, r3, #0x19
	adds r2, r2, r3
	str r2, [r4, #0x7c]
	movs r2, #3
	strb r2, [r0, #8]
	b _08020320
_0802031C
	movs r2, #0
	strh r2, [r5, #0xc]
_08020320
	lsls r2, r6, #0x1b
	bpl _08020358
	ldrh r2, [r5, #0xe]
	adds r2, #1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	strh r2, [r5, #0xe]
	ldr r3, [sp, #0x34]
	cmp r3, r2
	ldr r2, [r4, #0x7c]
	bls _0802034A
	movs r3, #0xf
	lsls r3, r3, #0x18
	bics r2, r3
	movs r3, #3
	lsls r3, r3, #0x18
	adds r2, r2, r3
	str r2, [r4, #0x7c]
	movs r2, #0
	strb r2, [r0, #8]
	b _08020362
_0802034A
	movs r3, #0xf
	lsls r3, r3, #0x18
	bics r2, r3
	str r2, [r4, #0x7c]
	movs r2, #3
	strb r2, [r0, #8]
	b _08020362
_08020358
	movs r2, #0
	strh r2, [r5, #0xe]
	b _08020362
_0802035E
	movs r2, #0
	strh r2, [r5, #8]
_08020362
	lsls r2, r6, #0x18
	bpl _08020406
	ldrh r2, [r5, #0xa]
	adds r2, #1
	lsls r3, r2, #0x10
	lsrs r3, r3, #0x10
	strh r3, [r5, #0xa]
	str r3, [sp, #0x2c]
	movs r3, #0xf
	ldr r2, [r4, #0x7c]
	lsls r3, r3, #0x18
	bics r2, r3
	movs r3, #1
	lsls r3, r3, #0x18
	adds r2, r2, r3
	str r2, [r4, #0x7c]
	str r2, [sp, #0x28]
	lsls r2, r6, #0x1a
	bpl _080203C6
	b _0802038C
_0802038A
	b _0802068C
_0802038C
	ldrh r2, [r5, #0xc]
	adds r2, #1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	strh r2, [r5, #0xc]
	ldr r3, [sp, #0x2c]
	cmp r3, r2
	blo _080203B2
	movs r3, #0xf
	ldr r2, [sp, #0x28]
	lsls r3, r3, #0x18
	bics r2, r3
	movs r3, #1
	lsls r3, r3, #0x18
	adds r2, r2, r3
	str r2, [r4, #0x7c]
	movs r2, #2
	strb r2, [r0, #8]
	b _080203CA
_080203B2
	movs r3, #0xf
	ldr r2, [sp, #0x28]
	lsls r3, r3, #0x18
	bics r2, r3
	movs r3, #1
	lsls r3, r3, #0x19
	adds r2, r2, r3
	str r2, [r4, #0x7c]
	strb r7, [r0, #8]
	b _080203CA
_080203C6
	movs r2, #0
	strh r2, [r5, #0xc]
_080203CA
	lsls r2, r6, #0x1b
	bpl _08020400
	ldrh r2, [r5, #0xe]
	adds r2, #1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	strh r2, [r5, #0xe]
	ldr r3, [sp, #0x2c]
	cmp r3, r2
	ldr r2, [r4, #0x7c]
	bls _080203F4
	movs r3, #0xf
	lsls r3, r3, #0x18
	bics r2, r3
	movs r3, #1
	lsls r3, r3, #0x18
	adds r2, r2, r3
	str r2, [r4, #0x7c]
	movs r2, #0
	strb r2, [r0, #8]
	b _0802040A
_080203F4
	movs r3, #0xf
	lsls r3, r3, #0x18
	bics r2, r3
	str r2, [r4, #0x7c]
	strb r7, [r0, #8]
	b _0802040A
_08020400
	movs r2, #0
	strh r2, [r5, #0xe]
	b _0802040A
_08020406
	movs r2, #0
	strh r2, [r5, #0xa]
_0802040A
	lsls r2, r6, #0x1a
	bpl _080204B2
	ldrh r2, [r5, #0xc]
	adds r2, #1
	lsls r3, r2, #0x10
	lsrs r3, r3, #0x10
	strh r3, [r5, #0xc]
	str r3, [sp, #0x24]
	movs r3, #0xf
	ldr r2, [r4, #0x7c]
	lsls r3, r3, #0x18
	bics r2, r3
	movs r3, #1
	lsls r3, r3, #0x19
	adds r2, r2, r3
	str r2, [r4, #0x7c]
	str r2, [sp, #0x20]
	lsls r2, r6, #0x19
	bpl _0802046C
	ldrh r2, [r5, #8]
	adds r2, #1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	strh r2, [r5, #8]
	ldr r3, [sp, #0x24]
	cmp r3, r2
	blo _08020456
	movs r3, #0xf
	ldr r2, [sp, #0x20]
	lsls r3, r3, #0x18
	bics r2, r3
	movs r3, #1
	lsls r3, r3, #0x19
	adds r2, r2, r3
	str r2, [r4, #0x7c]
	movs r2, #3
	strb r2, [r0, #8]
	b _08020470
_08020456
	movs r3, #0xf
	ldr r2, [sp, #0x20]
	lsls r3, r3, #0x18
	bics r2, r3
	movs r3, #3
	lsls r3, r3, #0x18
	adds r2, r2, r3
	str r2, [r4, #0x7c]
	movs r2, #2
	strb r2, [r0, #8]
	b _08020470
_0802046C
	movs r2, #0
	strh r2, [r5, #8]
_08020470
	lsls r2, r6, #0x18
	bpl _080204AC
	ldrh r2, [r5, #0xa]
	adds r2, #1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	strh r2, [r5, #0xa]
	ldr r3, [sp, #0x24]
	cmp r3, r2
	ldr r2, [r4, #0x7c]
	bls _08020498
	movs r3, #0xf
	lsls r3, r3, #0x18
	bics r2, r3
	movs r3, #1
	lsls r3, r3, #0x19
	adds r2, r2, r3
	str r2, [r4, #0x7c]
	strb r7, [r0, #8]
	b _080204B6
_08020498
	movs r3, #0xf
	lsls r3, r3, #0x18
	bics r2, r3
	movs r3, #1
	lsls r3, r3, #0x18
	adds r2, r2, r3
	str r2, [r4, #0x7c]
	movs r2, #2
	strb r2, [r0, #8]
	b _080204B6
_080204AC
	movs r2, #0
	strh r2, [r5, #0xa]
	b _080204B6
_080204B2
	movs r2, #0
	strh r2, [r5, #0xc]
_080204B6
	lsls r2, r6, #0x1b
	bpl _0802054C
	ldrh r2, [r5, #0xe]
	adds r2, #1
	lsls r3, r2, #0x10
	lsrs r3, r3, #0x10
	strh r3, [r5, #0xe]
	str r3, [sp, #0x1c]
	movs r3, #0xf
	ldr r2, [r4, #0x7c]
	lsls r3, r3, #0x18
	bics r2, r3
	str r2, [r4, #0x7c]
	str r2, [sp, #0x18]
	lsls r2, r6, #0x19
	bpl _0802050C
	ldrh r2, [r5, #8]
	adds r2, #1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	strh r2, [r5, #8]
	ldr r3, [sp, #0x1c]
	cmp r3, r2
	blo _080204F6
	movs r3, #0xf
	ldr r2, [sp, #0x18]
	lsls r3, r3, #0x18
	bics r2, r3
	str r2, [r4, #0x7c]
	movs r2, #3
	strb r2, [r0, #8]
	b _08020510
_080204F6
	movs r3, #0xf
	ldr r2, [sp, #0x18]
	lsls r3, r3, #0x18
	bics r2, r3
	movs r3, #3
	lsls r3, r3, #0x18
	adds r2, r2, r3
	str r2, [r4, #0x7c]
	movs r2, #0
	strb r2, [r0, #8]
	b _08020510
_0802050C
	movs r2, #0
	strh r2, [r5, #8]
_08020510
	lsls r2, r6, #0x18
	bpl _08020546
	ldrh r2, [r5, #0xa]
	adds r2, #1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	strh r2, [r5, #0xa]
	ldr r3, [sp, #0x1c]
	cmp r3, r2
	ldr r2, [r4, #0x7c]
	bls _08020532
	movs r3, #0xf
	lsls r3, r3, #0x18
	bics r2, r3
	str r2, [r4, #0x7c]
	strb r7, [r0, #8]
	b _08020550
_08020532
	movs r3, #0xf
	lsls r3, r3, #0x18
	bics r2, r3
	movs r3, #1
	lsls r3, r3, #0x18
	adds r2, r2, r3
	str r2, [r4, #0x7c]
	movs r2, #0
	strb r2, [r0, #8]
	b _08020550
_08020546
	movs r2, #0
	strh r2, [r5, #0xa]
	b _08020550
_0802054C
	movs r2, #0
	strh r2, [r5, #0xe]
_08020550
	lsls r0, r6, #0x1f
	bpl _0802059C
	ldr r0, [sp, #0xc]
	cmp r0, #0
	beq _0802059C
	mov r3, ip
	ldr r0, [r3, #0x14]
	ldr r0, [r0]
	lsls r0, r0, #0x1f
	bne _0802059C
	cmp r1, #0xb
	beq _0802059C
	cmp r1, #0xa
	beq _0802059C
	ldr r3, [sp, #0x38]
	cmp r3, #0
	beq _08020582
	movs r0, #0x32
	strh r0, [r4, #0x16]
	movs r0, #0x33
	strh r0, [r4, #0x12]
	movs r0, #0x34
	strh r0, [r4, #0x14]
	strh r0, [r4, #0x10]
	b _08020590
_08020582
	movs r0, #0x4b
	strh r0, [r4, #0x16]
	movs r0, #0x4c
	strh r0, [r4, #0x12]
	movs r0, #0x4d
	strh r0, [r4, #0x14]
	strh r0, [r4, #0x10]
_08020590
	movs r0, #1
	lsls r0, r0, #0x14
	str r0, [r4, #0x78]
	ldr r0, [sp, #0x48]
	str r7, [r0, #0x1c]
	b _0802068C
_0802059C
	movs r0, #1
	lsls r0, r0, #0x12
	str r0, [r4, #0x78]
	cmp r1, #0xb
	beq _0802068C
	cmp r1, #0xa
	beq _0802068C
	ldr r0, [sp, #0x48]
	movs r2, #0
	str r2, [r0, #0x1c]
	b _0802068C
_080205B2
	cmp r1, #0xa
	beq _0802068C
	cmp r1, #0xb
	beq _0802068C
	cmp r1, #0xf
	beq _0802068C
	lsls r0, r6, #0x16
	bpl _080205E2
	ldr r0, [sp, #0x10]
	lsls r0, r0, #0x1f
	bmi _080205CC
	lsls r0, r6, #0x1f
	bpl _080205E2
_080205CC
	mov r3, ip
	ldr r0, [r3, #0x14]
	ldr r0, [r0]
	lsls r0, r0, #0x1f
	bne _080205E2
	ldr r0, [sp, #0xc]
	cmp r0, #0
	beq _080205E2
	adds r0, r4, #0
	bl sub_801F906
_080205E2
	lsls r0, r6, #0x1f
	bpl _080206CA
	ldr r3, _08020990 ;@ =gUnknown_030034F8
	ldr r0, [r3]
	adds r0, #0xc0
	ldr r0, [r0, #0x14]
	ldr r0, [r0]
	lsls r0, r0, #0x1f
	bne _080206CA
	lsls r0, r6, #0x16
	bmi _080206CA
	ldrh r0, [r5, #6]
	adds r0, #1
	strh r0, [r5, #6]
	ldr r0, [sp, #0xc]
	cmp r0, #0
	beq _08020610
	ldr r0, _08020994 ;@ =gPlayerEntity
	ldr r0, [r0]
	adds r0, #0xb0
	ldrb r0, [r0, #6]
	cmp r0, #0
	bne _08020612
_08020610
	strh r7, [r5, #6]
_08020612
	ldr r0, [sp, #0x10]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x1c
	beq _080206FE
	ldrh r0, [r5, #6]
	cmp r0, #1
	bls _080206FE
	ldr r0, [sp, #0x10]
	lsls r0, r0, #0x19
	bpl _0802062C
	movs r2, #3
	str r2, [sp, #0x14]
	b _0802064E
_0802062C
	ldr r0, [sp, #0x10]
	lsls r0, r0, #0x18
	bpl _08020638
	movs r2, #1
	str r2, [sp, #0x14]
	b _0802064E
_08020638
	ldr r0, [sp, #0x10]
	lsls r0, r0, #0x1a
	bpl _08020644
	movs r2, #2
	str r2, [sp, #0x14]
	b _0802064E
_08020644
	ldr r0, [sp, #0x10]
	lsls r0, r0, #0x1b
	bpl _0802064E
	movs r2, #0
	str r2, [sp, #0x14]
_0802064E
	ldr r0, [r4, #0x7c]
	ldr r2, [sp, #0x14]
	lsls r1, r0, #4
	lsrs r1, r1, #0x1c
	cmp r1, r2
	beq _080206FE
	movs r1, #0xf
	lsls r1, r1, #0x18
	ldr r2, [sp, #0x14]
	bics r0, r1
	lsls r1, r2, #0x1c
	lsrs r1, r1, #4
	orrs r0, r1
	str r0, [r4, #0x7c]
	ldr r7, [sp, #0x40]
	ldr r1, [r7, #4]
	cmp r1, #0
	beq _080206FE
	ldr r7, [sp, #0x40]
	lsls r0, r0, #4
	ldr r1, [r7, #0x34]
	lsrs r0, r0, #0x1c
	lsrs r1, r1, #8
	lsls r1, r1, #8
	orrs r0, r1
	str r0, [r7, #0x34]
	ldr r1, [r7, #0x14]
	adds r1, #0x2c
	ldr r2, [r1]
	ldr r1, [r1, #4]
	b _0802068E
_0802068C
	b _080207CA
_0802068E
	str r1, [r7, #0x20]
	str r2, [r7, #0x1c]
	ldr r0, [r7, #0x14]
	movs r2, #0xff
	ldr r1, [r7, #0x34]
	ldrb r0, [r0, #5]
	lsls r2, r2, #0xb
	bics r1, r2
	lsls r0, r0, #0xb
	orrs r0, r1
	lsls r1, r0, #0x18
	str r0, [r7, #0x34]
	ldr r0, _08020998 ;@ =gUnknown_0805107A
	lsrs r1, r1, #0x18
	ldr r2, _0802099C ;@ =gUnknown_0805107E
	ldrsb r0, [r0, r1]
	ldrsb r1, [r2, r1]
	ldr r2, [r7, #0x1c]
	lsls r0, r0, #0x10
	adds r0, r2, r0
	ldr r2, [r7, #0x20]
	lsls r1, r1, #0x10
	adds r1, r2, r1
	str r1, [sp, #4]
	str r0, [sp]
	ldr r0, [r7, #4]
	mov r1, sp
	bl sub_803FF24
	b _080206CC
_080206CA
	b _080207CC
_080206CC
	ldr r0, [r7, #0x34]
	ldr r2, _080209A4 ;@ =gUnknown_08051086
	lsls r1, r0, #0x18
	ldr r0, _080209A0 ;@ =gUnknown_08051082
	lsrs r1, r1, #0x18
	ldrsb r0, [r0, r1]
	ldrsb r1, [r2, r1]
	ldr r2, [r7, #0x1c]
	lsls r0, r0, #0x10
	adds r0, r2, r0
	ldr r2, [r7, #0x20]
	lsls r1, r1, #0x10
	adds r1, r2, r1
	str r1, [sp, #4]
	str r0, [sp]
	ldr r0, [r7, #0x3c]
	mov r1, sp
	bl sub_803FF24
	ldr r0, [r7, #0x34]
	ldr r1, _080209A8 ;@ =gUnknown_08051072
	lsls r2, r0, #0x18
	lsrs r2, r2, #0x18
	ldrb r1, [r1, r2]
	b _08020700
_080206FE
	b _08020746
_08020700
	cmp r1, #0
	beq _0802070C
	lsls r1, r0, #0xd
	lsrs r1, r1, #0x18
	adds r1, #1
	b _08020712
_0802070C
	lsls r1, r0, #0xd
	lsrs r1, r1, #0x18
	subs r1, #1
_08020712
	ldr r3, _080209AC ;@ =gUnknown_08051076
	ldrb r2, [r3, r2]
	cmp r2, #0
	beq _08020722
	lsls r0, r0, #0xd
	lsrs r0, r0, #0x18
	adds r0, #1
	b _08020728
_08020722
	lsls r0, r0, #0xd
	lsrs r0, r0, #0x18
	subs r0, #1
_08020728
	str r0, [sp, #4]
	ldr r0, [r7, #4]
	ldrb r2, [r0, #5]
	cmp r2, r1
	beq _08020736
	bl sub_80401C0
_08020736
	ldr r0, [r7, #0x3c]
	ldrb r1, [r0, #5]
	ldr r2, [sp, #4]
	cmp r1, r2
	beq _08020746
	ldr r1, [sp, #4]
	bl sub_80401C0
_08020746
	ldr r7, [sp, #0x40]
	ldr r0, [r7, #4]
	cmp r0, #0
	bne _080207CA
	ldrh r0, [r5, #6]
	cmp r0, #0xb4
	bls _0802076C
	ldr r0, [sp, #0x40]
	movs r3, #0
	ldr r0, [r0]
	mvns r3, r3
	ldr r1, [r0, #4]
	movs r2, #1
	adds r7, r1, r0
	adds r1, r4, #0
	ldr r0, [sp, #0x40]
	bl sub_803B8D6
	b _08020786
_0802076C
	cmp r0, #0x3c
	bls _08020786
	ldr r0, [sp, #0x40]
	movs r3, #0
	ldr r0, [r0]
	mvns r3, r3
	ldr r1, [r0, #4]
	movs r2, #0
	adds r7, r1, r0
	adds r1, r4, #0
	ldr r0, [sp, #0x40]
	bl sub_803B8D6
_08020786
	ldr r7, [sp, #0x40]
	ldr r0, [r7, #4]
	cmp r0, #0
	beq _080207CA
	ldr r0, _080209B0 ;@ =gUnknown_03003D20
	ldrb r0, [r0]
	cmp r0, #0
	beq _080207A6
	movs r0, #0x41
	strh r0, [r4, #0xe]
	movs r0, #0x42
	strh r0, [r4, #0xa]
	movs r0, #0x43
	strh r0, [r4, #0xc]
	strh r0, [r4, #8]
	b _080207B4
_080207A6
	movs r0, #0x51
	strh r0, [r4, #0xe]
	movs r0, #0x52
	strh r0, [r4, #0xa]
	movs r0, #0x53
	strh r0, [r4, #0xc]
	strh r0, [r4, #8]
_080207B4
	ldrh r0, [r5, #6]
	ldr r7, [sp, #0x40]
	ldr r2, _080209B4 ;@ =0xFFFE0001
	ldr r1, [r7, #0x40]
	lsls r0, r0, #1
	ands r1, r2
	orrs r0, r1
	str r0, [r7, #0x40]
	ldr r1, [sp, #0x48]
	movs r0, #6
	str r0, [r1, #0x1c]
_080207CA
	b _08020856
_080207CC
	ldrh r0, [r5, #6]
	cmp r0, #0
	beq _08020856
	ldr r0, [sp, #0xc]
	cmp r0, #0
	beq _080207DE
	adds r0, r4, #0
	bl sub_801F906
_080207DE
	ldr r7, [sp, #0x40]
	ldr r0, [r7, #4]
	cmp r0, #0
	beq _08020852
	ldr r0, _080209B0 ;@ =gUnknown_03003D20
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802080C
	movs r0, #0x38
	strh r0, [r4, #0xe]
	movs r0, #0x39
	strh r0, [r4, #0xa]
	movs r0, #0x3a
	strh r0, [r4, #0xc]
	strh r0, [r4, #8]
	movs r0, #0x3e
	strh r0, [r4, #0x1e]
	movs r0, #0x3f
	strh r0, [r4, #0x1a]
	movs r0, #0x40
	strh r0, [r4, #0x1c]
	strh r0, [r4, #0x18]
	b _08020828
_0802080C
	movs r0, #0x6e
	strh r0, [r4, #0xe]
	movs r0, #0x6f
	strh r0, [r4, #0xa]
	movs r0, #0x70
	strh r0, [r4, #0xc]
	strh r0, [r4, #8]
	movs r0, #0x5c
	strh r0, [r4, #0x1e]
	movs r0, #0x5d
	strh r0, [r4, #0x1a]
	movs r0, #0x5e
	strh r0, [r4, #0x1c]
	strh r0, [r4, #0x18]
_08020828
	ldr r7, [sp, #0x40]
	ldr r0, [r7]
	ldr r1, [r0, #0x10]
	adds r1, r1, r0
	adds r0, r7, #0
	bl sub_803B8CA
	movs r1, #1
	ldr r0, [r7, #0x34]
	lsls r1, r1, #0x13
	bics r0, r1
	str r0, [r7, #0x34]
	ldr r0, [r7, #0x40]
	ldr r2, _080209B4 ;@ =0xFFFE0001
	lsrs r0, r0, #1
	lsls r0, r0, #1
	ands r0, r2
	str r0, [r7, #0x40]
	ldr r1, [sp, #0x48]
	movs r0, #4
	str r0, [r1, #0x1c]
_08020852
	movs r2, #0
	strh r2, [r5, #6]
_08020856
	lsls r0, r6, #0x17
	bpl _08020892
	ldrh r0, [r5, #6]
	cmp r0, #0
	bne _08020892
	ldr r2, [sp, #8]
	cmp r2, #0
	beq _08020892
	ldr r2, [sp, #0x44]
	ldr r0, [r2, #4]
	cmp r0, #0
	bne _080208AC
	ldrh r0, [r5]
	movs r1, #0x4b
	lsls r1, r1, #3
	cmp r0, r1
	bls _080208AC
	ldr r2, [sp, #0x44]
	movs r3, #0
	ldr r0, [r2]
	mvns r3, r3
	ldr r1, [r0, #4]
	ldr r2, [sp, #8]
	adds r6, r1, r0
	adds r2, r2, r3
	adds r1, r4, #0
	ldr r0, [sp, #0x44]
	bl sub_803B8D4
	b _080208AC
_08020892
	ldr r2, [sp, #0x44]
	ldr r0, [r2, #4]
	cmp r0, #0
	beq _080208AC
	ldr r2, [sp, #0x44]
	ldr r0, [r2, #0x34]
	lsls r0, r0, #6
	lsrs r0, r0, #0x1c
	cmp r0, #4
	beq _080208AC
	ldr r0, [sp, #0x44]
	bl sub_802E3C6
_080208AC
	ldr r0, [sp, #0x10]
	lsls r0, r0, #0x1e
	bpl _0802098E
	ldr r0, [sp, #0x48]
	ldr r0, [r0, #0x1c]
	cmp r0, #0xa
	beq _0802098E
	cmp r0, #0xb
	beq _0802098E
	ldr r1, _080209B0 ;@ =gUnknown_03003D20
	ldrb r1, [r1]
	cmp r1, #0
	beq _0802090E
	ldr r0, _08020994 ;@ =gPlayerEntity
	movs r1, #0xae
	ldr r0, [r0]
	ldrb r1, [r1, r0]
	cmp r1, #0xf
	bls _0802098E
	ldr r2, _080209B8 ;@ =gUnknown_03003458
	movs r3, #5
	ldr r2, [r2]
	lsls r3, r3, #8
	adds r3, r2, r3
	ldr r3, [r3, #0x1c]
	lsls r3, r3, #0xc
	lsrs r3, r3, #0x19
	lsls r3, r3, #2
	adds r2, r3, r2
	ldr r2, [r2, #0x20]
	ldr r3, [r2, #0x30]
	ldr r3, [r3]
	lsls r3, r3, #0x16
	lsrs r3, r3, #0x1f
	beq _0802098E
	movs r3, #0x94
	ldr r3, [r3, r2]
	lsls r3, r3, #0x14
	bmi _0802098E
	adds r0, #0x90
	ldrb r0, [r0]
	cmp r0, #5
	beq _0802098E
	adds r0, r2, #0
	lsrs r1, r1, #4
	subs r1, #1
	bl sub_80333DC
	b _0802098E
_0802090E
	ldr r1, [sp, #0x48]
	movs r3, #0x60
	ldr r1, [r1, #4]
	ldr r2, [r4, #0x7c]
	lsls r7, r1, #0x18
	lsrs r7, r7, #0x18
	lsls r2, r2, #4
	lsrs r2, r2, #0x1c
	subs r7, #0xf2
	movs r6, #0x5f
	cmp r7, r2
	bne _08020950
	ldr r0, [r4, #0x30]
	movs r2, #4
	ldr r1, [r0]
	bics r1, r2
	movs r2, #0
	orrs r1, r2
	str r1, [r0]
	strh r6, [r4, #0xe]
	strh r3, [r4, #0xa]
	movs r0, #0x61
	strh r0, [r4, #0xc]
	strh r0, [r4, #8]
	ldr r2, [sp, #0x3c]
	ldr r0, [r2, #0x3c]
	lsrs r0, r0, #4
	lsls r0, r0, #4
	str r0, [r2, #0x3c]
	movs r0, #1
	lsls r0, r0, #0x16
	str r0, [r4, #0x78]
	b _080209D0
_08020950
	cmp r2, #1
	bne _0802096E
	lsls r7, r1, #0x18
	lsrs r7, r7, #0x18
	cmp r7, #0xfb
	beq _08020960
	cmp r7, #0xfd
	bne _0802096E
_08020960
	ldr r2, [sp, #0x3c]
	ldr r0, [r2, #0x3c]
	lsrs r0, r0, #4
	lsls r0, r0, #4
	adds r0, #5
	str r0, [r2, #0x3c]
	b _080209D0
_0802096E
	strh r6, [r4, #0xe]
	strh r3, [r4, #0xa]
	movs r3, #0x61
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	strh r3, [r4, #0xc]
	strh r3, [r4, #8]
	cmp r1, #0xfc
	beq _08020984
	cmp r1, #0xfa
	bne _080209BC
_08020984
	cmp r2, #3
	bne _080209BC
	movs r2, #0
	str r2, [r4, #0x78]
	b _080209C6
_0802098E
	b _080209D6
	ALIGN
_08020990 DCDU gUnknown_030034F8
_08020994 DCDU gPlayerEntity
_08020998 DCDU gUnknown_0805107A
_0802099C DCDU gUnknown_0805107E
_080209A0 DCDU gUnknown_08051082
_080209A4 DCDU gUnknown_08051086
_080209A8 DCDU gUnknown_08051072
_080209AC DCDU gUnknown_08051076
_080209B0 DCDU gUnknown_03003D20
_080209B4 DCDU 0xFFFE0001
_080209B8 DCDU gUnknown_03003458
_080209BC
	cmp r0, #0
	bne _080209C6
	movs r0, #1
	lsls r0, r0, #0x16
	str r0, [r4, #0x78]
_080209C6
	ldr r2, [sp, #0x3c]
	ldr r0, [r2, #0x3c]
	lsrs r0, r0, #4
	lsls r0, r0, #4
	str r0, [r2, #0x3c]
_080209D0
	ldr r1, [sp, #0x48]
	movs r0, #5
	str r0, [r1, #0x1c]
_080209D6
	ldrh r0, [r5, #4]
	adds r0, #1
	strh r0, [r5, #4]
	adds r0, r4, #0
	bl sub_801E7A6
	ldrh r0, [r5]
	adds r0, #1
	strh r0, [r5]
	ldr r0, [sp, #0x44]
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _08020A56
	ldrh r0, [r5, #2]
	movs r6, #0xff
	adds r6, #0x2d
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r4, #0
	cmp r0, r6
	strh r0, [r5, #2]
	bls _08020A06
	movs r4, #1
_08020A06
	ldr r1, _08020DAC ;@ =gUnknown_03003D20
	ldrb r1, [r1]
	cmp r1, #0
	beq _08020A2C
	bl sub_80406C4
	cmp r0, #0
	bne _08020A2C
	ldr r0, [sp, #0x44]
	adds r0, #0x30
	ldrb r0, [r0, #0xe]
	NEGS r0, r0
	lsls r1, r0, #0x18
	ldr r0, _08020DB0 ;@ =gPlayerEntity
	asrs r1, r1, #0x18
	ldr r0, [r0]
	adds r0, #0xac
	bl sub_8023A70
_08020A2C
	ldr r0, _08020DB0 ;@ =gPlayerEntity
	ldr r0, [r0]
	adds r0, #0xa0
	ldrb r0, [r0, #0xd]
	cmp r0, #0
	beq _08020A4A
	ldr r0, [sp, #0x44]
	ldr r0, [r0]
	ldr r1, [r0, #8]
	adds r1, r1, r0
	ldr r0, [sp, #0x44]
	bl sub_803B8CA
	cmp r4, #0
	beq _08020A56
_08020A4A
	ldr r0, [sp, #0x44]
	bl sub_802E3C6
	movs r2, #0
	strh r2, [r5, #2]
	strh r6, [r5]
_08020A56
	ldr r0, [sp, #0x40]
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _08020A6C
	ldr r0, [sp, #0x40]
	ldr r0, [r0]
	ldr r1, [r0, #8]
	adds r1, r1, r0
	ldr r0, [sp, #0x40]
	bl sub_803B8CA
_08020A6C
	add sp, #0x4c
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3


	thumb_func_start sub_8020A74
sub_8020A74 ;@ 0x08020A74
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r4, #0xa0
	adds r5, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _08020A94
	adds r0, r4, #0
	bl sub_802E3C6
	ldr r0, [r4]
	ldr r1, [r0, #0x10]
	adds r1, r1, r0
	adds r0, r4, #0
	bl sub_803B8CA
_08020A94
	ldr r0, [r4]
	movs r3, #0
	ldr r1, [r0, #4]
	mvns r3, r3
	adds r6, r1, r0
	adds r1, r5, #0
	movs r2, #4
	adds r0, r4, #0
	bl sub_803B8D4
	movs r0, #0
	adds r5, #0xff
	adds r5, #0x41
	strh r0, [r5, #2]
	pop {r4, r5, r6}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_8020AB6
sub_8020AB6 ;@ 0x08020AB6
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _08020DAC ;@ =gUnknown_03003D20
	ldrb r0, [r0]
	cmp r0, #0
	beq _08020AE0
	movs r0, #0x38
	strh r0, [r4, #0xe]
	movs r0, #0x39
	strh r0, [r4, #0xa]
	movs r0, #0x3a
	strh r0, [r4, #0xc]
	strh r0, [r4, #8]
	movs r0, #0x3e
	strh r0, [r4, #0x1e]
	movs r0, #0x3f
	strh r0, [r4, #0x1a]
	movs r0, #0x40
	strh r0, [r4, #0x1c]
	strh r0, [r4, #0x18]
	b _08020AFC
_08020AE0
	movs r0, #0x6e
	strh r0, [r4, #0xe]
	movs r0, #0x6f
	strh r0, [r4, #0xa]
	movs r0, #0x70
	strh r0, [r4, #0xc]
	strh r0, [r4, #8]
	movs r0, #0x5c
	strh r0, [r4, #0x1e]
	movs r0, #0x5d
	strh r0, [r4, #0x1a]
	movs r0, #0x5e
	strh r0, [r4, #0x1c]
	strh r0, [r4, #0x18]
_08020AFC
	movs r0, #4
	movs r1, #0x9c
	str r0, [r1, r4]
	adds r0, r4, #0
	adds r0, #0xff
	adds r0, #1
	ldr r1, [r0, #0x3c]
	movs r2, #1
	lsrs r1, r1, #4
	lsls r1, r1, #4
	lsls r2, r2, #0x15
	bics r1, r2
	str r1, [r0, #0x3c]
	movs r0, #5
	lsls r0, r0, #0xe
	str r0, [r4, #0x70]
	movs r1, #0
	str r1, [r4, #0x74]
	str r1, [r4, #0x78]
	ldr r1, [r4, #0x30]
	cmp r1, #0
	beq _08020B4A
	ldr r0, [r1]
	lsls r2, r0, #0x15
	lsrs r2, r2, #0x1f
	beq _08020B4A
	movs r2, #1
	lsls r2, r2, #0xa
	bics r0, r2
	lsls r2, r2, #1
	bics r0, r2
	str r0, [r1]
	ldr r0, _08020DB4 ;@ =gUnknown_03003EB8
	ldr r0, [r0]
	bl sub_8001432
	ldr r0, [r4, #0x30]
	bl sub_803FC14
_08020B4A
	pop {r4}
	pop {r3}
	bx r3

	thumb_func_start sub_8020B50
sub_8020B50 ;@ 0x08020B50
	adds r1, r0, #0
	adds r1, #0xff
	adds r1, #1
	ldr r2, [r1, #0x34]
	ldr r1, [r1, #0x38]
	str r1, [r0, #0x5c]
	str r2, [r0, #0x58]
	b sub_8020AB6

	thumb_func_start sub_8020B60
sub_8020B60 ;@ 0x08020B60
	ldr r0, [r0, #0x2c]
	movs r1, #1
	ldr r0, [r0]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x1f
	subs r0, r1, r0
	bx lr

	non_word_aligned_thumb_func_start sub_8020B6E
sub_8020B6E ;@ 0x08020B6E
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, _08020DAC ;@ =gUnknown_03003D20
	ldr r6, _08020DB8 ;@ =gUnknown_03003E98
	ldrb r0, [r0]
	cmp r0, #0
	beq _08020B94
	ldr r0, [r6]
	ldr r0, [r0, #8]
	bl sub_80406C4
	cmp r0, #0
	bne _08020B94
	ldr r0, _08020DB0 ;@ =gPlayerEntity
	movs r1, #1
	ldr r0, [r0]
	adds r0, #0xac
	bl sub_8023A70
_08020B94
	adds r5, r4, #0
	adds r5, #0x80
	ldr r0, [r5, #0x1c]
	cmp r0, #0xe
	bhs _08020BA8
	add r3, pc, #0xC ;@ =_08020BAC
	adds r3, r3, r0
	ldrh r3, [r3, r0]
	lsls r3, r3, #1
	add pc, r3
_08020BA8
	b _08020CBC
	ALIGN
_08020BAC
	DCB 0x42, 0x03
_08020BAE
	DCB 0x0F, 0x00
_08020BB0
	DCB 0x53, 0x00
_08020BB2
	DCB 0x0F, 0x00
_08020BB4
	DCB 0x42, 0x03
_08020BB6
	DCB 0x90, 0x01
_08020BB8
	DCB 0x8D, 0x00
_08020BBA
	DCB 0x42, 0x03
_08020BBC
	DCB 0x42, 0x03
_08020BBE
	DCB 0x42, 0x03
_08020BC0
	DCB 0xBA, 0x00
_08020BC2
	DCB 0x09, 0x01
_08020BC4
	DCB 0x42, 0x03
_08020BC6
	DCB 0x3E, 0x01
loc_8020bc8
	ldr r0, [r4, #0x2c]
	bl sub_803F6B4
	ldr r1, [r4, #0x7c]
	lsls r1, r1, #4
	lsrs r1, r1, #0x1c
	lsls r1, r1, #1
	adds r1, r1, r4
	ldrh r1, [r1, #0x10]
	cmp r0, r1
	beq _08020C06
	movs r2, #0
	ldr r0, [r4, #0x2c]
	bl sub_80007A0
	ldr r0, [r4, #0x2c]
	bl sub_803FC14
	adds r0, r4, #0
	bl sub_801F906
	ldr r0, [r4, #0x2c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne _08020C06
	bl sub_803FC14
	ldr r0, [r4, #0x2c]
	bl sub_8000914
_08020C06
	ldr r0, [r4, #0x2c]
	ldrh r0, [r0, #0x28]
	lsls r0, r0, #0x13
	lsrs r6, r0, #0x1f
	adds r0, r4, #0
	bl sub_803FAB8
	cmp r6, r0
	beq _08020C26
	adds r0, r4, #0
	bl sub_803FAB8
	adds r1, r0, #0
	ldr r0, [r4, #0x2c]
	bl sub_803F2CC
_08020C26
	ldr r0, [r4, #0x78]
	cmp r0, #0
	beq _08020C4A
	ldr r0, [r4, #0x2c]
	ldr r0, [r0]
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x1f
	bne _08020CBC
	adds r0, r4, #0
	bl sub_801F906
	ldr r0, [r4, #0x2c]
	bl sub_803FC14
	ldr r0, [r4, #0x2c]
	bl sub_8000914
	b _08020CBC
_08020C4A
	movs r0, #4
	str r0, [r5, #0x1c]
	b _08020CBC
loc_8020c50
	ldr r0, [r4, #0x2c]
	bl sub_803F6B4
	ldr r1, [r4, #0x7c]
	lsls r1, r1, #4
	lsrs r1, r1, #0x1c
	lsls r1, r1, #1
	adds r1, r1, r4
	ldrh r1, [r1, #8]
	cmp r0, r1
	beq _08020C82
	movs r2, #0
	ldr r0, [r4, #0x2c]
	bl sub_80007A0
	ldr r0, [r4, #0x2c]
	bl sub_803FC14
	ldr r0, [r4, #0x2c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne _08020C82
	bl sub_8000914
_08020C82
	ldr r0, [r4, #0x2c]
	ldrh r0, [r0, #0x28]
	lsls r0, r0, #0x13
	lsrs r6, r0, #0x1f
	adds r0, r4, #0
	bl sub_803FAB8
	cmp r6, r0
	beq _08020CA2
	adds r0, r4, #0
	bl sub_803FAB8
	adds r1, r0, #0
	ldr r0, [r4, #0x2c]
	bl sub_803F2CC
_08020CA2
	ldr r0, [r4, #0x78]
	cmp r0, #0
	beq _08020CBE
	ldr r0, [r4, #0x2c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne _08020CBC
	bl sub_803FC14
	ldr r0, [r4, #0x2c]
	bl sub_8000914
_08020CBC
	b _08020D94
_08020CBE
	movs r0, #4
	str r0, [r5, #0x1c]
	b _08020D94
loc_8020cc4
	ldr r0, [r4, #0x2c]
	bl sub_803F6B4
	ldr r1, [r4, #0x7c]
	lsls r1, r1, #4
	lsrs r1, r1, #0x1c
	lsls r1, r1, #1
	adds r1, r1, r4
	ldrh r1, [r1, #8]
	cmp r0, r1
	beq _08020CE8
	movs r2, #0
	ldr r0, [r4, #0x2c]
	bl sub_80007A0
	ldr r0, [r4, #0x2c]
	bl sub_803FC14
_08020CE8
	ldr r0, [r4, #0x2c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne _08020CFC
	bl sub_803FC14
	ldr r0, [r4, #0x2c]
	bl sub_8000914
_08020CFC
	ldr r0, [r4, #0x2c]
	ldrh r0, [r0, #0x28]
	lsls r0, r0, #0x13
	lsrs r5, r0, #0x1f
	adds r0, r4, #0
	bl sub_803FAB8
	cmp r5, r0
	beq _08020D94
	adds r0, r4, #0
	bl sub_803FAB8
	adds r1, r0, #0
	ldr r0, [r4, #0x2c]
	bl sub_803F2CC
	b _08020D94
loc_8020d1e
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #4
	lsrs r1, r0, #0x1c
	cmp r1, #2
	beq _08020D2C
	lsrs r0, r0, #0x1c
	bne _08020D96
_08020D2C
	ldr r0, [r4, #0x2c]
	bl sub_803F6B4
	cmp r0, #0x71
	beq _08020D5A
	movs r2, #0
	movs r1, #0x71
	ldr r0, [r4, #0x2c]
	bl sub_80007A0
	ldr r0, [r4, #0x2c]
	bl sub_803FC14
	ldr r0, [r4, #0x2c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne _08020D5A
	bl sub_803FC14
	ldr r0, [r4, #0x2c]
	bl sub_8000914
_08020D5A
	ldr r0, [r4, #0x2c]
	ldrh r0, [r0, #0x28]
	lsls r0, r0, #0x13
	lsrs r5, r0, #0x1f
	adds r0, r4, #0
	bl sub_803FAB8
	cmp r5, r0
	beq _08020D7A
	adds r0, r4, #0
	bl sub_803FAB8
	adds r1, r0, #0
	ldr r0, [r4, #0x2c]
	bl sub_803F2CC
_08020D7A
	ldr r0, [r4, #0x78]
	cmp r0, #0
	beq _08020D94
	ldr r0, [r4, #0x2c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne _08020D94
	bl sub_803FC14
	ldr r0, [r4, #0x2c]
	bl sub_8000914
_08020D94
	b _08020EC8
_08020D96
	adds r0, r4, #0
	adds r0, #0xff
	adds r0, #0x41
	movs r1, #0
	strh r1, [r0, #8]
	strh r1, [r0, #0xa]
	movs r0, #0x98
	strb r1, [r0, r4]
	str r1, [r4, #0x78]
	b _08020EC8
	ALIGN
_08020DAC DCDU gUnknown_03003D20
_08020DB0 DCDU gPlayerEntity
_08020DB4 DCDU gUnknown_03003EB8
_08020DB8 DCDU gUnknown_03003E98

loc_8020dbc
	ldr r0, [r4, #0x2c]
	bl sub_803F6B4
	cmp r0, #0x47
	beq _08020DEA
	movs r2, #0
	movs r1, #0x47
	ldr r0, [r4, #0x2c]
	bl sub_80007A0
	ldr r0, [r4, #0x2c]
	bl sub_803FC14
	ldr r0, [r4, #0x2c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne _08020DEA
	bl sub_803FC14
	ldr r0, [r4, #0x2c]
	bl sub_8000914
_08020DEA
	ldr r0, [r4, #0x2c]
	ldrh r0, [r0, #0x28]
	lsls r0, r0, #0x13
	lsrs r5, r0, #0x1f
	adds r0, r4, #0
	bl sub_803FAB8
	cmp r5, r0
	beq _08020E0A
	adds r0, r4, #0
	bl sub_803FAB8
	adds r1, r0, #0
	ldr r0, [r4, #0x2c]
	bl sub_803F2CC
_08020E0A
	ldr r0, [r4, #0x78]
	cmp r0, #0
	beq _08020EC8
	ldr r0, [r4, #0x2c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne _08020EC8
	bl sub_803FC14
	ldr r0, [r4, #0x2c]
	bl sub_8000914
	b _08020EC8
loc_8020e26
	ldr r0, [r4, #0x2c]
	bl sub_803F6B4
	ldr r1, [r4, #0x7c]
	lsls r1, r1, #4
	lsrs r1, r1, #0x1c
	lsls r1, r1, #1
	adds r1, r1, r4
	ldrh r1, [r1, #0x18]
	cmp r0, r1
	beq _08020E58
	movs r2, #0
	ldr r0, [r4, #0x2c]
	bl sub_80007A0
	ldr r0, [r4, #0x2c]
	bl sub_803FC14
	ldr r0, [r4, #0x2c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne _08020E58
	bl sub_8000914
_08020E58
	ldr r0, [r4, #0x2c]
	ldrh r0, [r0, #0x28]
	lsls r0, r0, #0x13
	lsrs r6, r0, #0x1f
	adds r0, r4, #0
	bl sub_803FAB8
	cmp r6, r0
	beq _08020E78
	adds r0, r4, #0
	bl sub_803FAB8
	adds r1, r0, #0
	ldr r0, [r4, #0x2c]
	bl sub_803F2CC
_08020E78
	ldr r0, [r4, #0x2c]
	ldr r0, [r0]
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x1f
	bne _08020EC8
	ldr r0, _0802123C ;@ =gUnknown_03003D20
	ldrb r0, [r0]
	cmp r0, #0
	beq _08020EA8
	movs r0, #0x38
	strh r0, [r4, #0xe]
	movs r0, #0x39
	strh r0, [r4, #0xa]
	movs r0, #0x3a
	strh r0, [r4, #0xc]
	strh r0, [r4, #8]
	movs r0, #0x3e
	strh r0, [r4, #0x1e]
	movs r0, #0x3f
	strh r0, [r4, #0x1a]
	movs r0, #0x40
	strh r0, [r4, #0x1c]
	strh r0, [r4, #0x18]
	b _08020EC4
_08020EA8
	movs r0, #0x6e
	strh r0, [r4, #0xe]
	movs r0, #0x6f
	strh r0, [r4, #0xa]
	movs r0, #0x70
	strh r0, [r4, #0xc]
	strh r0, [r4, #8]
	movs r0, #0x5c
	strh r0, [r4, #0x1e]
	movs r0, #0x5d
	strh r0, [r4, #0x1a]
	movs r0, #0x5e
	strh r0, [r4, #0x1c]
	strh r0, [r4, #0x18]
_08020EC4
	movs r0, #4
	str r0, [r5, #0x1c]
_08020EC8
	b _08021008
loc_8020eca
	movs r0, #0xff
	adds r0, #0x3d
	ldr r0, [r0, r4]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #9
	bhs _08020EE2
	add r3, pc, #0x8 ;@ =_08020EE4
	adds r3, r3, r0
	ldrh r3, [r3, r0]
	lsls r3, r3, #1
	add pc, r3
_08020EE2
	b _08021008
_08020EE4
	DCB 0x09, 0x00
_08020EE6
	DCB 0x4E, 0x00
_08020EE8
	DCB 0xB2, 0x00
_08020EEA
	DCB 0xA5, 0x01
_08020EEC
	DCB 0xE2, 0x00
_08020EEE
	DCB 0x3D, 0x01
_08020EF0
	DCB 0x78, 0x01
_08020EF2
	DCB 0xA5, 0x01
_08020EF4
	DCB 0xA5, 0x01
loc_8020ef6
	adds r5, r4, #0
	adds r5, #0xff
	adds r5, #1
	ldr r0, [r5, #0x3c]
	lsls r0, r0, #0xa
	bmi _08020F60
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #4
	lsrs r0, r0, #0x1c
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r1, [r0, #8]
	ldr r0, [r4, #0x2c]
	movs r2, #0
	bl sub_80007A0
	ldr r0, [r4, #0x2c]
	bl sub_803FC14
	ldr r0, [r4, #0x2c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne _08020F30
	bl sub_803FC14
	ldr r0, [r4, #0x2c]
	bl sub_8000914
_08020F30
	ldr r0, _08021240 ;@ =gUnknown_0300345C
	ldr r1, [r6]
	ldr r0, [r0]
	ldr r1, [r1, #8]
	lsls r1, r1, #0x1f
	lsrs r1, r1, #0x1f
	adds r1, #0x55
	lsls r1, r1, #5
	adds r0, r1, r0
	bl sub_8028C2E
	movs r1, #0xff
	ldr r0, [r5, #0x3c]
	adds r1, #0xf1
	bics r0, r1
	ldr r1, [r4, #0x70]
	adds r0, #0x50
	str r1, [r4, #0x74]
	movs r1, #0
	str r1, [r4, #0x70]
	movs r1, #1
	lsls r1, r1, #0x15
	orrs r0, r1
	str r0, [r5, #0x3c]
_08020F60
	ldr r0, [r4, #0x2c]
	bl sub_803F6E0
	cmp r0, #1
	bne _08021008
	ldr r0, [r5, #0x3c]
	ldr r1, [r4, #0x74]
	lsrs r0, r0, #4
	lsls r0, r0, #4
	str r1, [r4, #0x70]
	movs r1, #1
	adds r0, #1
	lsls r1, r1, #0x15
	bics r0, r1
	str r0, [r5, #0x3c]
	b _08021008
loc_8020f80
	ldr r0, [r4, #0x2c]
	bl sub_803F6E0
	cmp r0, #0xa
	bne _08020FA0
	adds r0, r4, #0
	adds r0, #0xff
	adds r0, #1
	ldr r1, [r0, #0x3c]
	lsrs r1, r1, #4
	lsls r1, r1, #4
	adds r1, #2
	str r1, [r0, #0x3c]
	movs r0, #0
	str r0, [r4, #0x70]
	b _08021008
_08020FA0
	ldr r0, [r4, #0x2c]
	bl sub_803F6E0
	adds r6, r4, #0
	adds r6, #0xff
	adds r6, #1
	ldr r1, [r6, #0x3c]
	lsls r1, r1, #0x17
	lsrs r1, r1, #0x1b
	cmp r0, r1
	bls _08021008
	ldr r0, [r4, #0x78]
	cmp r0, #0
	bne _08021008
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #4
	lsrs r0, r0, #0x1c
	cmp r0, #3
	bne _08021008
	ldr r0, [r5, #4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xfc
	bne _0802100A
	movs r2, #0
	movs r1, #0x56
	ldr r0, [r4, #0x2c]
	bl sub_80007A0
	ldr r0, [r4, #0x2c]
	bl sub_803FC14
	ldr r0, [r6, #0x3c]
	movs r1, #1
	lsrs r0, r0, #4
	lsls r0, r0, #4
	adds r0, #6
	lsls r1, r1, #9
	bics r0, r1
	str r0, [r6, #0x3c]
	ldr r0, [r4, #0x5c]
	movs r1, #0x15
	lsls r1, r1, #0x10
	subs r0, r0, r1
	str r0, [r4, #0x5c]
	ldr r0, [r4, #0x30]
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	beq _08021008
	movs r1, #0
	bl sub_80401E4
_08021008
	b _080210A6
_0802100A
	cmp r0, #0xfa
	bne _080210A6
	movs r2, #0
	movs r1, #0x56
	ldr r0, [r4, #0x2c]
	bl sub_80007A0
	ldr r0, [r4, #0x2c]
	bl sub_803FC14
	ldr r0, [r6, #0x3c]
	movs r1, #1
	lsrs r0, r0, #4
	lsls r0, r0, #4
	adds r0, #6
	lsls r1, r1, #9
	orrs r0, r1
	str r0, [r6, #0x3c]
	ldr r0, [r4, #0x5c]
	movs r1, #0xd
	lsls r1, r1, #0x10
	subs r0, r0, r1
	str r0, [r4, #0x5c]
	ldr r0, [r4, #0x30]
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	beq _080210A6
	movs r1, #0
	bl sub_80401E4
	b _080210A6
loc_8021048
	ldr r0, [r4, #0x2c]
	ldr r0, [r0]
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x1f
	bne _080210A6
	ldr r0, [r4, #0x30]
	movs r6, #4
	ldr r1, [r0]
	bics r1, r6
	orrs r1, r6
	str r1, [r0]
	ldr r0, [r4, #0x2c]
	bl sub_803FC14
	movs r0, #0x6e
	strh r0, [r4, #0xe]
	movs r0, #0x6f
	strh r0, [r4, #0xa]
	movs r0, #0x70
	strh r0, [r4, #0xc]
	strh r0, [r4, #8]
	movs r0, #0x5c
	strh r0, [r4, #0x1e]
	movs r0, #0x5d
	strh r0, [r4, #0x1a]
	movs r0, #0x5e
	strh r0, [r4, #0x1c]
	strh r0, [r4, #0x18]
	ldr r0, _08021240 ;@ =gUnknown_0300345C
	ldr r1, [r0]
	movs r0, #0x15
	lsls r0, r0, #7
	adds r0, r0, r1
	bl sub_8028C2E
	adds r0, r4, #0
	adds r0, #0xff
	adds r0, #1
	ldr r1, [r0, #0x3c]
	lsrs r1, r1, #4
	lsls r1, r1, #4
	str r1, [r0, #0x3c]
	str r6, [r5, #0x1c]
	ldr r0, [r4, #0x74]
	str r0, [r4, #0x70]
	movs r0, #0
	str r0, [r4, #0x78]
_080210A6
	b _080211D2
loc_80210a8
	ldr r0, [r4, #0x2c]
	bl sub_803F6B4
	cmp r0, #0x5b
	beq _0802110E
	movs r2, #0
	movs r1, #0x5b
	ldr r0, [r4, #0x2c]
	bl sub_80007A0
	ldr r0, [r4, #0x2c]
	bl sub_803FC14
	movs r1, #1
	ldr r0, [r4, #0x5c]
	lsls r1, r1, #0x14
	subs r0, r0, r1
	str r0, [r4, #0x5c]
	ldr r0, [r4, #0x2c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne _080210E0
	bl sub_803FC14
	ldr r0, [r4, #0x2c]
	bl sub_8000914
_080210E0
	ldr r0, _08021240 ;@ =gUnknown_0300345C
	ldr r1, [r0]
	movs r0, #0x4f
	lsls r0, r0, #5
	adds r0, r0, r1
	bl sub_8028C2E
	ldr r0, [r4, #0x30]
	bl sub_803F898
	ldr r1, _08021244 ;@ =0x000011EF
	cmp r0, r1
	beq _08021100
	ldr r0, [r4, #0x30]
	bl sub_800065C
_08021100
	ldr r0, [r4, #0x30]
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	bne _0802110E
	movs r1, #1
	bl sub_80401E4
_0802110E
	ldr r0, [r4, #0x2c]
	ldr r0, [r0]
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x1f
	bne _080211D2
	ldr r0, [r4, #0x30]
	movs r1, #4
	ldr r2, [r0]
	bics r2, r1
	orrs r2, r1
	str r2, [r0]
	movs r0, #0x6e
	strh r0, [r4, #0xe]
	movs r0, #0x6f
	strh r0, [r4, #0xa]
	movs r0, #0x70
	strh r0, [r4, #0xc]
	strh r0, [r4, #8]
	movs r0, #0x5c
	strh r0, [r4, #0x1e]
	movs r0, #0x5d
	strh r0, [r4, #0x1a]
	movs r0, #0x5e
	strh r0, [r4, #0x1c]
	strh r0, [r4, #0x18]
	ldr r0, [r4, #0x74]
	lsls r2, r1, #0xf
	str r0, [r4, #0x70]
	ldr r0, [r4, #0x5c]
	subs r0, r0, r2
	str r0, [r4, #0x5c]
	adds r0, r4, #0
	adds r0, #0xff
	adds r0, #1
	ldr r2, [r0, #0x3c]
	lsrs r2, r2, #4
	lsls r2, r2, #4
	str r2, [r0, #0x3c]
	str r1, [r5, #0x1c]
	b _080211D2
loc_802115e
	ldr r0, [r4, #0x2c]
	bl sub_803F6B4
	cmp r0, #0x5a
	beq _080211B2
	movs r2, #0
	movs r1, #0x5a
	ldr r0, [r4, #0x2c]
	bl sub_80007A0
	ldr r0, [r4, #0x2c]
	bl sub_803FC14
	movs r1, #0xf
	ldr r0, [r4, #0x7c]
	lsls r1, r1, #0x18
	bics r0, r1
	movs r1, #3
	lsls r1, r1, #0x18
	adds r0, r0, r1
	str r0, [r4, #0x7c]
	ldr r0, [r4, #0x2c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne _0802119C
	bl sub_803FC14
	ldr r0, [r4, #0x2c]
	bl sub_8000914
_0802119C
	ldr r0, _08021240 ;@ =gUnknown_0300345C
	ldr r1, [r0]
	movs r0, #0x4f
	lsls r0, r0, #5
	adds r0, r0, r1
	bl sub_8028C2E
	ldr r0, [r4, #0x70]
	str r0, [r4, #0x74]
	movs r0, #0
	str r0, [r4, #0x70]
_080211B2
	ldr r0, [r4, #0x2c]
	ldr r0, [r0]
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x1f
	bne _080211D2
	adds r0, r4, #0
	adds r0, #0xff
	adds r0, #1
	ldr r1, [r0, #0x3c]
	movs r2, #1
	lsrs r1, r1, #4
	lsls r1, r1, #4
	adds r1, #6
	lsls r2, r2, #9
	orrs r1, r2
	str r1, [r0, #0x3c]
_080211D2
	b _0802122E
loc_80211d4
	ldr r0, [r4, #0x2c]
	bl sub_803F6B4
	cmp r0, #0x56
	beq _0802121A
	ldr r0, [r4, #0x2c]
	bl sub_803F6B4
	cmp r0, #0x5a
	bne _0802121A
	movs r2, #0
	movs r1, #0x56
	ldr r0, [r4, #0x2c]
	bl sub_80007A0
	ldr r0, [r4, #0x2c]
	bl sub_803FC14
	movs r0, #0xff
	adds r0, #0x3d
	ldr r0, [r0, r4]
	lsls r0, r0, #0x16
	bpl _0802120C
	movs r1, #1
	ldr r0, [r4, #0x5c]
	lsls r1, r1, #0x14
	adds r0, r0, r1
	str r0, [r4, #0x5c]
_0802120C
	ldr r0, [r4, #0x30]
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	beq _0802121A
	movs r1, #0
	bl sub_80401E4
_0802121A
	ldr r0, [r4, #0x2c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne _0802122E
	bl sub_803FC14
	ldr r0, [r4, #0x2c]
	bl sub_8000914
_0802122E
	adds r0, r4, #0
	bl sub_801EBCA
	pop {r4, r5, r6}
	pop {r3}
	bx r3
	ALIGN
_0802123C DCDU gUnknown_03003D20
_08021240 DCDU gUnknown_0300345C
_08021244 DCDU 0x000011EF
