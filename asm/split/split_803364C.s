    INCLUDE asm/macros.inc
    AREA text, CODE

	IMPORT gPlayerEntity
	IMPORT gUnknown_0300334A
	IMPORT gUnknown_03003458
	IMPORT gUnknown_0300346C
	IMPORT gUnknown_03003E98
	IMPORT gUnknown_03003EA0
	IMPORT gUnknown_08051072
	IMPORT gUnknown_08051076
	IMPORT gUnknown_0805107A
	IMPORT gUnknown_0805107E
	IMPORT gUnknown_08051082
	IMPORT gUnknown_08051086
	IMPORT sub_80003F4
	IMPORT sub_800065C
	IMPORT sub_80007A0
	IMPORT sub_8000914
	IMPORT sub_8000D5A
	IMPORT sub_80050FA
	IMPORT sub_8005106
	IMPORT sub_800BE0E
	IMPORT sub_800C1CA
	IMPORT sub_801D6C4
	IMPORT sub_801DFD4
	IMPORT sub_801E124
	IMPORT sub_801EBCA
	IMPORT sub_8023AA2
	IMPORT sub_8032A90
	IMPORT sub_8033512
	IMPORT sub_803357C
	IMPORT sub_8033C58
	IMPORT __call_via_r1
	IMPORT __call_via_r2
	IMPORT __call_via_r5
	IMPORT __call_via_r6
	IMPORT sub_803DA80
	IMPORT sub_803FC14
	IMPORT sub_803FF24


	thumb_func_start sub_803364C
sub_803364C ;@ 0x0803364C
	push {lr}
	ldr r1, [r0, #0x58]
	ldr r3, [r0, #0x5c]
	sub sp, #0xc
	movs r2, #1
	lsls r2, r2, #0x14
	subs r2, r3, r2
	str r1, [sp, #4]
	str r2, [sp, #8]
	ldr r0, [r0, #0x2c]
	add r1, sp, #4
	bl sub_803FF24
	add sp, #0xc
	pop {r3}
	bx r3

	thumb_func_start sub_803366C
sub_803366C ;@ 0x0803366C
	push {r4}
	ldr r2, [r0, #0x58]
	cmp r2, #0
	ble _08033692
	ldr r0, [r0, #0x5c]
	cmp r0, #0
	ble _08033692
	ldr r1, _08033A5C ;@ =gUnknown_03003458
	movs r3, #3
	ldr r1, [r1]
	lsls r3, r3, #0x10
	ldr r4, [r1, #0x14]
	subs r4, r4, r3
	cmp r2, r4
	bge _08033692
	ldr r1, [r1, #0x18]
	subs r1, r1, r3
	cmp r0, r1
	blt _08033698
_08033692
	movs r0, #0
_08033694
	pop {r4}
	bx lr
_08033698
	movs r0, #1
	b _08033694

	thumb_func_start sub_803369C
sub_803369C ;@ 0x0803369C
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r6, #0x80
	adds r4, r0, #0
	ldr r0, [r6, #0x20]
	sub sp, #0xc
	cmp r0, #0
	beq _08033764
	adds r5, r4, #0
	adds r5, #0xa8
	ldr r0, [r4, #0x78]
	adds r7, r4, #0
	adds r7, #0xc0
	cmp r0, #0
	str r5, [sp, #8]
	beq _08033754
	movs r3, #3
	lsls r3, r3, #0x10
	cmp r0, r3
	blt _080336E4
	ldr r2, [r4, #0x58]
	cmp r2, #0
	ble _080336E4
	ldr r0, [r4, #0x5c]
	cmp r0, #0
	ble _080336E4
	ldr r1, _08033A5C ;@ =gUnknown_03003458
	ldr r1, [r1]
	ldr r5, [r1, #0x14]
	subs r5, r5, r3
	cmp r2, r5
	bge _080336E4
	ldr r1, [r1, #0x18]
	subs r1, r1, r3
	cmp r0, r1
	blt _08033754
_080336E4
	movs r3, #0
	str r3, [r4, #0x70]
	str r3, [r4, #0x78]
	ldr r0, [r7, #0x3c]
	lsls r1, r0, #0x1c
	bpl _08033720
	movs r2, #1
	ldr r1, [r6, #0x14]
	lsls r2, r2, #0xb
	bics r1, r2
	str r1, [r6, #0x14]
	movs r1, #8
	bics r0, r1
	str r0, [r7, #0x3c]
	str r3, [r4, #0x58]
	str r3, [r4, #0x5c]
	str r3, [sp]
	str r3, [sp, #4]
	ldr r0, [r4, #0x2c]
	mov r1, sp
	adds r5, r3, #0
	bl sub_803FF24
	str r5, [sp]
	str r5, [sp, #4]
	ldr r0, [r4, #0x30]
	mov r1, sp
	bl sub_803FF24
	b _08033754
_08033720
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	movs r3, #0x16
	movs r1, #6
	str r1, [r6, #0x1c]
	ldr r1, _08033A60 ;@ =gUnknown_0300334A
	muls r0, r3
	adds r0, r0, r1
	ldrh r0, [r0, #4]
	movs r3, #0
	mvns r3, r3
	strh r0, [r4, #0xe]
	adds r1, r0, #1
	strh r1, [r4, #0xa]
	adds r0, #2
	strh r0, [r4, #0xc]
	strh r0, [r4, #8]
	ldr r5, [sp, #8]
	movs r2, #1
	ldr r0, [r5]
	ldr r1, [r0, #4]
	adds r5, r1, r0
	adds r1, r4, #0
	ldr r0, [sp, #8]
	bl __call_via_r5
_08033754
	ldr r0, [r6, #0x1c]
	cmp r0, #0
	beq _0803375E
	cmp r0, #4
	bne _0803376C
_0803375E
	adds r0, r4, #0
	bl sub_801EBCA
_08033764
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
_0803376C
	cmp r0, #6
	bne _08033764
	ldr r0, _08033A64 ;@ =gUnknown_03003EA0
	ldr r5, [r4, #0x2c]
	ldr r0, [r0]
	ldr r2, [r5, #0x44]
	movs r1, #0
	mvns r1, r1
	cmp r2, #0
	beq _0803378C
	bl sub_8000D5A
	ldr r0, [r0, #0x24]
	ldr r1, [r5, #0x44]
	subs r0, r1, r0
	asrs r1, r0, #3
_0803378C
	lsls r0, r1, #0x10
	ldr r1, [r4, #0x7c]
	lsrs r0, r0, #0x10
	lsls r1, r1, #4
	lsrs r1, r1, #0x1c
	lsls r1, r1, #1
	adds r1, r1, r4
	ldrh r1, [r1, #8]
	cmp r0, r1
	beq _080337AE
	movs r2, #0
	ldr r0, [r4, #0x2c]
	bl sub_80007A0
	ldr r0, [r4, #0x2c]
	bl sub_803FC14
_080337AE
	ldr r0, [r4, #0x2c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne _080337C2
	bl sub_803FC14
	ldr r0, [r4, #0x2c]
	bl sub_8000914
_080337C2
	ldr r5, [r4, #0x2c]
	ldrh r0, [r5, #0x28]
	lsls r0, r0, #0x13
	lsrs r2, r0, #0x1f
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #4
	lsrs r0, r0, #0x1c
	cmp r0, #2
	bne _080337DE
	ldr r1, [r6]
	lsls r1, r1, #0x1d
	bpl _080337DE
	movs r1, #1
	b _080337E0
_080337DE
	movs r1, #0
_080337E0
	cmp r2, r1
	beq _080338AC
	cmp r0, #2
	bne _080337F2
	ldr r0, [r6]
	lsls r0, r0, #0x1d
	bpl _080337F2
	movs r1, #1
	b _080337F4
_080337F2
	movs r1, #0
_080337F4
	ldrh r2, [r5, #0x28]
	movs r3, #1
	lsls r3, r3, #0xc
	bics r2, r3
	lsls r1, r1, #0xc
	orrs r1, r2
	strh r1, [r5, #0x28]
	adds r0, r5, #0
	bl sub_80003F4
	ldr r0, [r5]
	lsls r1, r0, #0x1e
	bmi _080338A4
	ldr r1, [r5, #0x3c]
	cmp r1, #0
	blt _0803382E
	movs r2, #0xf
	ldr r1, [r5, #0x34]
	lsls r2, r2, #0x14
	cmp r1, r2
	bge _0803382E
	ldr r1, [r5, #0x40]
	cmp r1, #0
	blt _0803382E
	movs r2, #5
	ldr r1, [r5, #0x38]
	lsls r2, r2, #0x15
	cmp r1, r2
	blt _0803384C
_0803382E
	lsls r0, r0, #0x16
	bmi _080338A4
	ldr r0, _08033A64 ;@ =gUnknown_03003EA0
	adds r1, r5, #0
	ldr r0, [r0]
	bl sub_800C1CA
	movs r1, #1
	ldr r0, [r5]
	lsls r1, r1, #9
	orrs r0, r1
	movs r1, #0x80
	orrs r0, r1
	str r0, [r5]
	b _080338A4
_0803384C
	lsls r0, r0, #0x16
	bpl _0803386C
	ldr r0, _08033A64 ;@ =gUnknown_03003EA0
	adds r1, r5, #0
	ldr r0, [r0]
	bl sub_800BE0E
	movs r1, #1
	ldr r0, [r5]
	lsls r1, r1, #9
	bics r0, r1
	movs r1, #0x20
	orrs r0, r1
	movs r1, #0x40
	orrs r0, r1
	str r0, [r5]
_0803386C
	ldr r0, [r5, #0x2c]
	asrs r1, r0, #0x1f
	lsrs r1, r1, #0x10
	adds r0, r1, r0
	ldrh r1, [r5, #0x28]
	asrs r0, r0, #0x10
	lsls r0, r0, #0x17
	lsrs r1, r1, #9
	lsls r1, r1, #9
	lsrs r0, r0, #0x17
	orrs r0, r1
	strh r0, [r5, #0x28]
	ldr r0, [r5, #0x30]
	asrs r1, r0, #0x1f
	lsrs r1, r1, #0x10
	adds r0, r1, r0
	ldrh r1, [r5, #0x26]
	asrs r0, r0, #0x10
	lsls r0, r0, #0x18
	lsrs r1, r1, #8
	lsls r1, r1, #8
	lsrs r0, r0, #0x18
	orrs r0, r1
	strh r0, [r5, #0x26]
	ldr r0, [r5]
	movs r1, #0x80
	orrs r0, r1
	str r0, [r5]
_080338A4
	ldr r0, [r5]
	movs r1, #0x80
	orrs r0, r1
	str r0, [r5]
_080338AC
	ldr r0, [r7, #0x3c]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	cmp r0, #3
	beq _080338BA
	cmp r0, #2
	bne _080338D0
_080338BA
	ldr r0, [r6, #0x24]
	adds r0, #0x58
	ldr r1, [r0]
	str r1, [sp]
	ldr r0, [r0, #4]
	mov r1, sp
	str r0, [sp, #4]
	adds r0, r4, #0
	bl sub_8033512
	b _080338E4
_080338D0
	ldr r0, [r6, #0x20]
	adds r0, #0x58
	ldr r1, [r0]
	str r1, [sp]
	ldr r0, [r0, #4]
	mov r1, sp
	str r0, [sp, #4]
	adds r0, r4, #0
	bl sub_8033512
_080338E4
	ldr r0, [r7, #0x3c]
	movs r1, #0x3f
	adds r2, r0, #0
	lsls r1, r1, #6
	adds r0, #0x40
	ands r0, r1
	bics r2, r1
	orrs r0, r2
	lsls r2, r0, #0x14
	lsrs r2, r2, #0x1a
	str r0, [r7, #0x3c]
	bne _080339D6
	ldr r2, [r4, #0x38]
	cmp r2, #0
	bne _080339D6
	ldr r2, [r6, #0x24]
	adds r2, #0x80
	ldr r2, [r2, #0x1c]
	cmp r2, #0xf
	beq _08033910
	cmp r2, #0x10
	bne _08033918
_08033910
	adds r0, r4, #0
	bl sub_803357C
	b _080339D6
_08033918
	ldr r2, _08033A68 ;@ =gPlayerEntity
	bics r0, r1
	ldr r2, [r2]
	ldr r1, _08033A6C ;@ =gUnknown_0300346C
	adds r2, #0xb0
	ldrb r5, [r2, #7]
	str r0, [r7, #0x3c]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	cmp r0, #3
	ldr r0, [r1]
	bne _08033976
	bl sub_80050FA
	bl sub_8005106
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0x58
	bl sub_803DA80
	adds r6, r0, #0
	beq _0803394E
	adds r0, r6, #0
	bl sub_8032A90
_0803394E
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r6, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	ldr r0, [r4, #0x38]
	movs r3, #0
	ldr r1, [r0]
	mvns r3, r3
	ldr r2, [r1, #4]
	adds r6, r2, r1
	adds r2, r5, #0
	adds r1, r4, #0
	bl __call_via_r6
	b _080339C2
_08033976
	bl sub_80050FA
	bl sub_8005106
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0x58
	bl sub_803DA80
	adds r6, r0, #0
	beq _08033994
	adds r0, r6, #0
	bl sub_8033C58
_08033994
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r6, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	ldr r1, [r7, #0x3c]
	ldr r0, [r4, #0x38]
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1e
	lsls r1, r1, #2
	adds r2, r1, r5
	ldr r1, [r0]
	ldr r3, [r1, #4]
	adds r5, r3, r1
	movs r3, #0
	mvns r3, r3
	adds r1, r4, #0
	bl __call_via_r5
_080339C2
	ldr r0, _08033A68 ;@ =gPlayerEntity
	movs r1, #0xae
	ldr r0, [r0]
	ldrb r1, [r1, r0]
	NEGS r1, r1
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, #0xac
	bl sub_8023AA2
_080339D6
	ldr r5, [sp, #8]
	ldr r0, [r5, #4]
	cmp r0, #0
	bne _080339E0
	b _08033764
_080339E0
	ldr r5, [sp, #8]
	ldr r0, [r4, #0x7c]
	ldr r1, [r5, #0x34]
	lsls r0, r0, #4
	lsrs r1, r1, #8
	lsls r1, r1, #8
	lsrs r0, r0, #0x1c
	orrs r0, r1
	str r0, [r5, #0x34]
	ldr r1, [r5, #0x14]
	adds r1, #0x2c
	ldr r2, [r1]
	ldr r1, [r1, #4]
	str r1, [r5, #0x20]
	str r2, [r5, #0x1c]
	ldr r0, [r5, #0x14]
	movs r2, #0xff
	ldr r1, [r5, #0x34]
	ldrb r0, [r0, #5]
	lsls r2, r2, #0xb
	bics r1, r2
	lsls r0, r0, #0xb
	orrs r0, r1
	lsls r1, r0, #0x18
	str r0, [r5, #0x34]
	ldr r0, _08033A70 ;@ =gUnknown_0805107A
	lsrs r1, r1, #0x18
	ldr r2, _08033A74 ;@ =gUnknown_0805107E
	ldrsb r0, [r0, r1]
	ldrsb r1, [r2, r1]
	ldr r2, [r5, #0x1c]
	lsls r0, r0, #0x10
	adds r0, r2, r0
	ldr r2, [r5, #0x20]
	lsls r1, r1, #0x10
	adds r1, r2, r1
	str r1, [sp, #4]
	str r0, [sp]
	ldr r0, [r5, #4]
	mov r1, sp
	bl sub_803FF24
	ldr r0, [r5, #0x34]
	ldr r2, _08033A7C ;@ =gUnknown_08051086
	lsls r1, r0, #0x18
	ldr r0, _08033A78 ;@ =gUnknown_08051082
	lsrs r1, r1, #0x18
	ldrsb r0, [r0, r1]
	ldrsb r1, [r2, r1]
	ldr r2, [r5, #0x1c]
	lsls r0, r0, #0x10
	adds r0, r2, r0
	ldr r2, [r5, #0x20]
	lsls r1, r1, #0x10
	adds r1, r2, r1
	str r1, [sp, #4]
	str r0, [sp]
	ldr r0, [r5, #0x3c]
	mov r1, sp
	bl sub_803FF24
	b _08033A80
	ALIGN
_08033A5C DCDU gUnknown_03003458
_08033A60 DCDU gUnknown_0300334A
_08033A64 DCDU gUnknown_03003EA0
_08033A68 DCDU gPlayerEntity
_08033A6C DCDU gUnknown_0300346C
_08033A70 DCDU gUnknown_0805107A
_08033A74 DCDU gUnknown_0805107E
_08033A78 DCDU gUnknown_08051082
_08033A7C DCDU gUnknown_08051086
_08033A80
	ldr r1, [r5, #0x34]
	ldr r0, _08033C44 ;@ =gUnknown_08051072
	lsls r2, r1, #0x18
	lsrs r2, r2, #0x18
	ldrb r0, [r0, r2]
	cmp r0, #0
	beq _08033A96
	lsls r0, r1, #0xd
	lsrs r0, r0, #0x18
	adds r0, #1
	b _08033A9C
_08033A96
	lsls r0, r1, #0xd
	lsrs r0, r0, #0x18
	subs r0, #1
_08033A9C
	ldr r3, _08033C48 ;@ =gUnknown_08051076
	ldrb r2, [r3, r2]
	cmp r2, #0
	beq _08033AAC
	lsls r1, r1, #0xd
	lsrs r1, r1, #0x18
	adds r1, #1
	b _08033AB2
_08033AAC
	lsls r1, r1, #0xd
	lsrs r1, r1, #0x18
	subs r1, #1
_08033AB2
	ldr r2, [r5, #4]
	movs r4, #3
	ldrb r3, [r2, #5]
	lsls r4, r4, #0xa
	cmp r3, r0
	beq _08033ADA
	ldrh r3, [r2, #0x2a]
	lsls r6, r0, #0x18
	lsrs r6, r6, #0x1e
	lsls r6, r6, #0xa
	bics r3, r4
	orrs r3, r6
	strh r3, [r2, #0x2a]
	strb r0, [r2, #5]
	ldr r0, [r2]
	lsls r3, r0, #0x16
	bmi _08033ADA
	movs r3, #0x80
	orrs r0, r3
	str r0, [r2]
_08033ADA
	ldr r0, [r5, #0x3c]
	ldrb r2, [r0, #5]
	cmp r2, r1
	beq _08033AFE
	ldrh r2, [r0, #0x2a]
	lsls r3, r1, #0x18
	lsrs r3, r3, #0x1e
	lsls r3, r3, #0xa
	bics r2, r4
	orrs r2, r3
	strh r2, [r0, #0x2a]
	strb r1, [r0, #5]
	ldr r1, [r0]
	lsls r2, r1, #0x16
	bmi _08033AFE
	movs r3, #0x80
	orrs r1, r3
	str r1, [r0]
_08033AFE
	ldr r0, [sp, #8]
	ldr r0, [r0]
	ldr r1, [r0, #8]
	adds r1, r1, r0
	ldr r0, [sp, #8]
	bl __call_via_r1
	b _08033764

	non_word_aligned_thumb_func_start sub_8033B0E
sub_8033B0E ;@ 0x08033B0E
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, _08033C4C ;@ =gUnknown_03003E98
	adds r5, r4, #0
	ldr r0, [r0]
	adds r5, #0xf0
	ldr r1, [r0, #8]
	movs r0, #3
	bics r0, r1
	cmp r0, #0
	sub sp, #0xc
	bne _08033B8A
	movs r3, #0xf
	ldrsb r0, [r5, r3]
	ldrb r1, [r5, #0xe]
	adds r1, r1, r0
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	strb r1, [r5, #0xe]
	bpl _08033B40
	movs r1, #0
	strb r1, [r5, #0xe]
	NEGS r0, r0
	strb r0, [r5, #0xf]
	b _08033B4C
_08033B40
	cmp r1, #4
	ble _08033B4C
	movs r1, #4
	strb r1, [r5, #0xe]
	NEGS r0, r0
	strb r0, [r5, #0xf]
_08033B4C
	movs r3, #0xe
	ldrsb r0, [r5, r3]
	lsrs r1, r0, #0x1f
	adds r0, r1, r0
	asrs r6, r0, #1
	adds r6, #1
	cmp r6, #3
	bls _08033B60
	movs r6, #3
	b _08033B66
_08033B60
	cmp r6, #1
	bhs _08033B66
	movs r6, #1
_08033B66
	ldr r0, _08033C50 ;@ =gUnknown_03003EA0
	ldr r7, [r4, #0x30]
	ldr r0, [r0]
	bl sub_8000D5A
	ldr r0, [r0, #0x20]
	ldr r1, [r7, #0x10]
	subs r0, r1, r0
	asrs r0, r0, #3
	ldr r1, _08033C54 ;@ =0x000011EF
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r1, r6, r1
	cmp r0, r1
	beq _08033B8A
	ldr r0, [r4, #0x30]
	bl sub_800065C
_08033B8A
	movs r3, #0xe
	ldrsb r0, [r5, r3]
	movs r1, #1
	lsls r1, r1, #0x14
	adds r0, #4
	lsls r0, r0, #0x10
	adds r0, r0, r1
	ldr r1, [r4, #0x58]
	ldr r2, [r4, #0x5c]
	movs r5, #0
	adds r2, r2, r0
	cmp r1, #0
	blt _08033BD0
	cmp r2, #0
	blt _08033BD0
	ldr r1, [r4, #0x58]
	ldr r2, [r4, #0x5c]
	str r1, [sp, #4]
	subs r0, r2, r0
	str r0, [sp, #8]
	ldr r0, [r4, #0x2c]
	add r1, sp, #4
	bl sub_803FF24
	ldr r0, [r4, #0x30]
	cmp r0, #0
	beq _08033BC8
	adds r1, r4, #0
	adds r1, #0x58
	bl sub_803FF24
_08033BC8
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
_08033BD0
	str r5, [r4, #0x58]
	str r5, [r4, #0x5c]
	str r5, [sp, #4]
	str r5, [sp, #8]
	ldr r0, [r4, #0x2c]
	add r1, sp, #4
	bl sub_803FF24
	str r5, [sp, #4]
	str r5, [sp, #8]
	ldr r0, [r4, #0x30]
	add r1, sp, #4
	bl sub_803FF24
	b _08033BC8

	non_word_aligned_thumb_func_start sub_8033BEE
sub_8033BEE ;@ 0x08033BEE
	push {r4, lr}
	adds r4, r0, #0
	bl sub_801DFD4
	adds r0, r4, #0
	adds r0, #0xa8
	ldr r1, [r0]
	ldr r2, [r1, #0xc]
	adds r1, r2, r1
	bl __call_via_r1
	pop {r4}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_8033C0A
sub_8033C0A ;@ 0x08033C0A
	push {r4, lr}
	adds r4, r0, #0
	bl sub_801D6C4
	adds r0, r4, #0
	adds r0, #0xa8
	ldr r1, [r0]
	ldr r2, [r1, #0x10]
	adds r1, r2, r1
	bl __call_via_r1
	pop {r4}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_8033C26
sub_8033C26 ;@ 0x08033C26
	push {r4, lr}
	adds r4, r0, #0
	bl sub_801E124
	adds r0, r4, #0
	adds r0, #0xa8
	ldr r1, [r0]
	ldr r2, [r1, #0x14]
	adds r2, r2, r1
	ldr r1, [r4, #0x2c]
	bl __call_via_r2
	pop {r4}
	pop {r3}
	bx r3
	ALIGN
_08033C44 DCDU gUnknown_08051072
_08033C48 DCDU gUnknown_08051076
_08033C4C DCDU gUnknown_03003E98
_08033C50 DCDU gUnknown_03003EA0
_08033C54 DCDU 0x000011EF
	END