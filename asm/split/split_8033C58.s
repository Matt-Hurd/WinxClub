    INCLUDE asm/macros.inc
    AREA text, CODE

	IMPORT gPlayerEntity
	IMPORT gUnknown_0300334A
	IMPORT gUnknown_030033A2
	IMPORT gUnknown_030033A6
	IMPORT gUnknown_03003454
	IMPORT gUnknown_03003458
	IMPORT gUnknown_0300345C
	IMPORT gUnknown_03003EB8
	IMPORT gUnknown_0803EA68
	IMPORT ModifyPlayerHealth
	IMPORT sub_80007A0
	IMPORT sub_8000914
	IMPORT sub_8000DE6
	IMPORT sub_800116A
	IMPORT sub_80268AC
	IMPORT sub_8028BE4
	IMPORT sub_8028C2E
	IMPORT sub_802E418
	IMPORT sub_802E4AA
	IMPORT sub_803357C
	IMPORT sub_803B8CA
	IMPORT sub_803B8D6
	IMPORT sub_803C124
	IMPORT sub_803D9F8
	IMPORT sub_803DA18
	IMPORT sub_803F654
	IMPORT sub_803F6B4
	IMPORT sub_803FC14
	IMPORT sub_803FF24
	IMPORT sub_80401C0
	IMPORT sub_80401E4

	thumb_func_start sub_8033C58
sub_8033C58 ;@ 0x08033C58
	push {r4, lr}
	adds r4, r0, #0
	bne _08033C70
	movs r0, #0x58
	bl sub_803D9F8
	adds r4, r0, #0
	bne _08033C70
	adds r0, r4, #0
_08033C6A
	pop {r4}
	pop {r3}
	bx r3
_08033C70
	adds r0, r4, #0
	bl sub_802E418
	ldr r0, _08034050 ;@ =gUnknown_0803EA68
	movs r1, #0
	str r0, [r4]
	str r1, [r4, #0x3c]
	str r1, [r4, #0x40]
	str r1, [r4, #0x44]
	adds r0, r4, #0
	adds r0, #0x40
	str r1, [r4, #0x48]
	ldrh r2, [r0, #0xc]
	movs r3, #0x3c
	bics r2, r3
	movs r3, #0xc0
	bics r2, r3
	movs r3, #1
	lsls r3, r3, #0xa
	bics r2, r3
	strh r2, [r0, #0xc]
	strh r1, [r0, #0xe]
	strh r1, [r0, #0x10]
	strh r1, [r0, #0x12]
	adds r0, r4, #0
	b _08033C6A

	thumb_func_start sub_8033CA4
sub_8033CA4 ;@ 0x08033CA4
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, _08034050 ;@ =gUnknown_0803EA68
	adds r7, r1, #0
	str r0, [r4]
	ldr r0, [r4, #0x3c]
	cmp r0, #0
	beq _08033CC4
	ldr r0, _08034054 ;@ =gUnknown_03003EB8
	adds r1, r4, #0
	adds r1, #0x3c
	ldr r0, [r0]
	bl sub_8000DE6
	movs r0, #0
	str r0, [r4, #0x3c]
_08033CC4
	ldr r5, _08034058 ;@ =gUnknown_0300345C
	movs r6, #0x45
	ldr r0, [r5]
	lsls r6, r6, #5
	adds r0, r6, r0
	bl sub_8028BE4
	cmp r0, #0
	beq _08033CDE
	ldr r0, [r5]
	adds r0, r6, r0
	bl sub_80268AC
_08033CDE
	ldr r0, [r5]
	ldr r1, [r4, #0x34]
	lsls r1, r1, #6
	lsrs r1, r1, #0x1c
	adds r1, #0x46
	lsls r1, r1, #5
	adds r0, r1, r0
	bl sub_8028BE4
	cmp r0, #0
	beq _08033D06
	ldr r0, [r5]
	ldr r1, [r4, #0x34]
	lsls r1, r1, #6
	lsrs r1, r1, #0x1c
	adds r1, #0x46
	lsls r1, r1, #5
	adds r0, r1, r0
	bl sub_80268AC
_08033D06
	ldr r0, [r4, #0x48]
	bl sub_803357C
	movs r1, #0
	adds r0, r4, #0
	bl sub_802E4AA
	cmp r7, #0
	beq _08033D1E
	adds r0, r4, #0
	bl sub_803DA18
_08033D1E
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	thumb_func_start sub_8033D24
sub_8033D24 ;@ 0x08033D24
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, _0803405C ;@ =gUnknown_03003458
	movs r6, #3
	ldr r1, [r0]
	movs r0, #5
	lsls r0, r0, #8
	adds r5, r1, r0
	ldr r0, [r5, #0x1c]
	lsls r6, r6, #8
	lsls r0, r0, #0xc
	lsrs r0, r0, #0x19
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r3, [r0, #0x20]
	str r3, [r4, #0x48]
	ldr r0, [r1, #0x20]
	adds r3, #0xc0
	str r0, [r4, #0x44]
	ldr r5, [r5, #0x1c]
	lsls r5, r5, #5
	lsrs r5, r5, #0x19
	lsls r5, r5, #2
	adds r1, r5, r1
	ldr r1, [r1, #0x20]
	adds r5, r4, #0
	str r1, [r4, #0x40]
	ldr r1, [r3, #0x3c]
	adds r5, #0x40
	ldrh r3, [r5, #0xc]
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1e
	bics r3, r6
	lsls r1, r1, #8
	orrs r1, r3
	ldr r3, [r4, #0x34]
	movs r6, #0xf
	lsls r6, r6, #0x16
	bics r3, r6
	lsls r6, r2, #0x1a
	lsrs r6, r6, #0x1c
	lsls r6, r6, #0x16
	orrs r3, r6
	str r3, [r4, #0x34]
	movs r3, #0xc0
	bics r1, r3
	lsls r2, r2, #0x1e
	lsrs r2, r2, #0x18
	orrs r1, r2
	lsls r2, r1, #0x18
	lsrs r2, r2, #0x1e
	lsls r2, r2, #1
	adds r2, #3
	lsls r2, r2, #0x1c
	movs r3, #0x3c
	bics r1, r3
	lsrs r2, r2, #0x1a
	orrs r1, r2
	strh r1, [r5, #0xc]
	ldr r0, [r0, #0x30]
	adds r6, r4, #0
	adds r0, #0x2c
	ldr r1, [r0]
	ldr r0, [r0, #4]
	adds r6, #0x1c
	str r0, [r4, #0x20]
	str r1, [r4, #0x1c]
	ldr r0, [r4, #0x44]
	movs r2, #0xff
	ldr r0, [r0, #0x2c]
	lsls r2, r2, #0xb
	ldrb r0, [r0, #5]
	ldr r1, [r4, #0x34]
	adds r0, #0xfe
	lsls r0, r0, #0x18
	lsrs r0, r0, #0xd
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	movs r0, #0
	strh r0, [r5, #0x12]
	ldr r0, _08034054 ;@ =gUnknown_03003EB8
	ldr r0, [r0]
	bl sub_800116A
	str r0, [r4, #4]
	ldr r1, [r0]
	movs r2, #2
	orrs r1, r2
	lsls r7, r2, #7
	bics r1, r7
	str r1, [r0]
	ldr r0, _08034054 ;@ =gUnknown_03003EB8
	ldr r0, [r0]
	bl sub_800116A
	str r0, [r4, #0x3c]
	ldr r1, [r0]
	movs r2, #2
	orrs r1, r2
	bics r1, r7
	str r1, [r0]
	ldrh r0, [r5, #0xc]
	lsls r1, r0, #0x16
	lsrs r1, r1, #0x1e
	cmp r1, #2
	bne _08033E12
	movs r2, #0
	movs r1, #0x31
	ldr r0, [r4, #4]
	bl sub_80007A0
	movs r2, #0
	movs r1, #0x13
	lsls r1, r1, #5
	ldr r0, [r4, #0x3c]
	bl sub_80007A0
	b _08033E48
_08033E12
	movs r3, #0x16
	ldr r7, _08034060 ;@ =gUnknown_0300334A
	muls r1, r3
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1c
	adds r1, r1, r7
	lsls r0, r0, #1
	ldrh r1, [r1, r0]
	ldr r0, [r4, #4]
	movs r2, #0
	bl sub_80007A0
	ldrh r0, [r5, #0xc]
	movs r3, #0x16
	lsls r1, r0, #0x16
	lsrs r1, r1, #0x1e
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1c
	muls r1, r3
	adds r1, r1, r7
	lsls r0, r0, #1
	adds r0, r1, r0
	ldrh r1, [r0, #2]
	ldr r0, [r4, #0x3c]
	movs r2, #0
	bl sub_80007A0
_08033E48
	adds r1, r6, #0
	ldr r0, [r4, #4]
	bl sub_803FF24
	ldr r0, [r4, #0x34]
	lsls r0, r0, #0xd
	lsrs r1, r0, #0x18
	ldr r0, [r4, #4]
	bl sub_80401C0
	ldr r0, [r4, #4]
	bl sub_8000914
	movs r1, #1
	ldr r0, [r4, #4]
	bl sub_80401E4
	adds r1, r6, #0
	ldr r0, [r4, #0x3c]
	bl sub_803FF24
	ldr r0, [r4, #0x34]
	lsls r0, r0, #0xd
	lsrs r1, r0, #0x18
	adds r1, #1
	ldr r0, [r4, #0x3c]
	bl sub_80401C0
	ldr r0, [r4, #0x3c]
	bl sub_8000914
	movs r1, #1
	ldr r0, [r4, #0x3c]
	bl sub_80401E4
	ldr r0, [r4, #0x34]
	lsls r0, r0, #6
	lsrs r1, r0, #0x1c
	cmp r1, #1
	ldr r0, _08034058 ;@ =gUnknown_0300345C
	bne _08033EAC
	ldr r1, [r0]
	movs r0, #0x45
	lsls r0, r0, #5
	adds r0, r0, r1
	bl sub_8028C2E
_08033EA6
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
_08033EAC
	ldr r0, [r0]
	adds r1, #0x46
	lsls r1, r1, #5
	adds r0, r1, r0
	bl sub_8028C2E
	b _08033EA6

	non_word_aligned_thumb_func_start sub_8033EBA
sub_8033EBA ;@ 0x08033EBA
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, [r0, #0x3c]
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	beq _08033ECE
	movs r1, #0
	bl sub_80401E4
	b _08033ED4
_08033ECE
	movs r1, #1
	bl sub_80401E4
_08033ED4
	ldr r0, [r4, #0x40]
	movs r1, #0x9c
	ldr r1, [r1, r0]
	movs r7, #0
	cmp r1, #0xf
	beq _08033EE4
	cmp r1, #0x10
	bne _08033F4E
_08033EE4
	ldr r1, [r4, #0x34]
	lsls r2, r1, #0x15
	lsrs r2, r2, #0x1d
	cmp r2, #1
	bne _08033F26
	lsls r1, r1, #6
	lsrs r1, r1, #0x1c
	cmp r1, #1
	bne _08033EFE
	ldr r0, [r4, #0x44]
	ldr r1, [r0, #0x74]
	str r1, [r0, #0x70]
	b _08033F26
_08033EFE
	cmp r1, #2
	bne _08033F26
	ldr r0, [r0, #0x7c]
	ldr r1, _08034064 ;@ =gUnknown_03003454
	lsls r0, r0, #8
	lsrs r0, r0, #0x18
	ldr r1, [r1]
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r1, #0xb
	lsls r1, r1, #7
	adds r0, r0, r1
	ldrh r1, [r0, #0x18]
	movs r2, #2
	bics r1, r2
	strh r1, [r0, #0x18]
	ldr r0, [r4, #0x40]
	movs r1, #0
	bl sub_803F654
_08033F26
	ldr r0, _0803405C ;@ =gUnknown_03003458
	movs r1, #0x29
	ldr r0, [r0]
	lsls r1, r1, #5
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r1, #1
	strb r1, [r0]
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x10]
	adds r1, r2, r1
	bl sub_803B8CA
	ldr r0, [r4, #0x48]
	bl sub_803357C
_08033F48
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
_08033F4E
	ldr r2, [r4, #0x34]
	movs r6, #7
	adds r5, r4, #0
	lsls r1, r2, #0x15
	lsrs r1, r1, #0x1d
	adds r5, #0x40
	lsls r6, r6, #8
	cmp r1, #0
	beq _08033FF0
	cmp r1, #1
	beq _08034048
	cmp r1, #2
	bne _08033FEE
	ldr r0, [r4, #4]
	bl sub_803F6B4
	ldrh r1, [r5, #0xc]
	movs r3, #0x16
	ldr r6, _08034060 ;@ =gUnknown_0300334A
	lsls r2, r1, #0x16
	lsrs r2, r2, #0x1e
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1c
	muls r2, r3
	adds r2, r2, r6
	lsls r1, r1, #1
	ldrh r1, [r2, r1]
	adds r1, #2
	cmp r0, r1
	ldr r0, [r4, #4]
	beq _0803404E
	movs r2, #0
	bl sub_80007A0
	ldr r0, [r4, #4]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne _08033FA0
	bl sub_8000914
_08033FA0
	ldr r0, [r4, #0x3c]
	bl sub_803F6B4
	movs r1, #0x13
	lsls r1, r1, #5
	cmp r0, r1
	beq _08033FDA
	ldrh r0, [r5, #0xc]
	movs r3, #0x16
	lsls r1, r0, #0x16
	lsrs r1, r1, #0x1e
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1c
	muls r1, r3
	adds r1, r1, r6
	lsls r0, r0, #1
	ldrh r1, [r1, r0]
	ldr r0, [r4, #0x3c]
	adds r1, #5
	movs r2, #0
	bl sub_80007A0
	ldr r0, [r4, #0x3c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne _08033FDA
	bl sub_8000914
_08033FDA
	ldr r7, _08034058 ;@ =gUnknown_0300345C
	ldr r0, [r7]
	ldr r1, [r4, #0x34]
	lsls r1, r1, #6
	lsrs r1, r1, #0x1c
	adds r1, #0x46
	lsls r1, r1, #5
	adds r0, r1, r0
	bl sub_80268AC
_08033FEE
	b _0803412C
_08033FF0
	ldrh r1, [r5, #0xc]
	lsls r0, r1, #0x16
	lsrs r2, r0, #0x1e
	cmp r2, #2
	bne _08034068
	ldrh r0, [r5, #0x12]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	strh r0, [r5, #0x12]
	cmp r0, #0x78
	bls _08034068
	lsls r0, r1, #0x1a
	lsrs r0, r0, #0x1c
	ldr r6, _08034060 ;@ =gUnknown_0300334A
	lsls r0, r0, #1
	adds r0, r0, r6
	ldrh r1, [r0, #0x2c]
	ldr r0, [r4, #4]
	movs r2, #0
	bl sub_80007A0
	ldr r0, [r4, #4]
	bl sub_803FC14
	ldr r0, [r4, #0x3c]
	bl sub_803F6B4
	ldrh r1, [r5, #0xc]
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1c
	lsls r1, r1, #1
	adds r1, r1, r6
	ldrh r1, [r1, #0x2e]
	cmp r0, r1
	beq _0803404A
	movs r2, #0
	ldr r0, [r4, #0x3c]
	bl sub_80007A0
	ldr r0, [r4, #0x3c]
	bl sub_803FC14
	b _0803404A
_08034048
	b _08034172
_0803404A
	strh r7, [r5, #0x12]
	b _0803412C
_0803404E
	b _08034296
	ALIGN
_08034050 DCDU gUnknown_0803EA68
_08034054 DCDU gUnknown_03003EB8
_08034058 DCDU gUnknown_0300345C
_0803405C DCDU gUnknown_03003458
_08034060 DCDU gUnknown_0300334A
_08034064 DCDU gUnknown_03003454
_08034068
	ldr r0, [r4, #4]
	ldr r3, [r0]
	lsls r3, r3, #0x15
	lsrs r3, r3, #0x1f
	bne _0803412C
	movs r3, #0x16
	ldr r7, _08034338 ;@ =gUnknown_0300334A
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1c
	muls r2, r3
	adds r2, r2, r7
	lsls r1, r1, #1
	ldrh r1, [r2, r1]
	adds r1, #1
	movs r2, #0
	bl sub_80007A0
	ldr r0, [r4, #4]
	bl sub_8000914
	ldr r0, [r4, #0x3c]
	bl sub_803F6B4
	movs r1, #0x13
	lsls r1, r1, #5
	cmp r0, r1
	beq _080340D8
	ldrh r0, [r5, #0xc]
	movs r3, #0x16
	lsls r1, r0, #0x16
	lsrs r1, r1, #0x1e
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1c
	muls r1, r3
	adds r1, r1, r7
	lsls r0, r0, #1
	ldrh r1, [r1, r0]
	ldr r0, [r4, #0x3c]
	adds r1, #4
	movs r2, #0
	bl sub_80007A0
	ldr r0, [r4, #0x3c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne _080340CA
	bl sub_8000914
_080340CA
	ldr r0, [r4, #0x3c]
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	bne _080340D8
	movs r1, #1
	bl sub_80401E4
_080340D8
	ldrh r0, [r5, #0xc]
	lsls r1, r0, #0x16
	lsrs r1, r1, #0x1e
	lsls r7, r1, #3
	ldr r1, _0803433C ;@ =gUnknown_030033A6
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x1e
	lsls r2, r0, #1
	adds r1, r7, r1
	ldrh r1, [r1, r2]
	strh r1, [r5, #0x14]
	ldr r2, [r4, #0x34]
	lsls r2, r2, #6
	lsrs r2, r2, #0x1c
	beq _0803412E
	cmp r2, #1
	beq _0803414A
	cmp r2, #2
	bne _08034122
	ldr r1, _08034340 ;@ =gUnknown_03003454
	ldr r0, [r1]
	ldr r1, [r4, #0x40]
	ldr r1, [r1, #0x7c]
	lsls r1, r1, #8
	lsrs r1, r1, #0x18
	lsls r1, r1, #1
	adds r0, r1, r0
	movs r1, #0xb
	lsls r1, r1, #7
	adds r0, r0, r1
	ldrh r1, [r0, #0x18]
	orrs r1, r2
	strh r1, [r0, #0x18]
	ldr r0, [r4, #0x40]
	movs r1, #1
	bl sub_803F654
_08034122
	ldr r0, [r4, #0x34]
	bics r0, r6
	adds r0, #0xff
	adds r0, #1
	str r0, [r4, #0x34]
_0803412C
	b _0803425C
_0803412E
	ldr r2, _08034344 ;@ =gUnknown_030033A2
	ldrb r0, [r2, r0]
	bl sub_803C124
	ldr r2, _08034344 ;@ =gUnknown_030033A2
	strh r0, [r5, #0xe]
	ldrb r0, [r2]
	ldr r1, _0803433C ;@ =gUnknown_030033A6
	strh r0, [r5, #0x10]
	ldrh r1, [r1, r7]
	bl sub_803C124
	strh r0, [r5, #0x10]
	b _08034122
_0803414A
	ldr r0, [r4, #0x44]
	ldr r7, _08034348 ;@ =gUnknown_0300345C
	ldr r1, [r0, #0x70]
	asrs r2, r1, #1
	str r1, [r0, #0x74]
	adds r1, r1, r2
	str r1, [r0, #0x70]
	movs r0, #0x45
	ldr r1, [r7]
	lsls r0, r0, #5
	adds r0, r0, r1
	bl sub_80268AC
	movs r0, #0x47
	ldr r1, [r7]
	lsls r0, r0, #5
	adds r0, r0, r1
	bl sub_8028C2E
	b _08034122
_08034172
	ldrh r1, [r5, #0xc]
	lsls r1, r1, #0x15
	bmi _0803425C
	ldrh r1, [r5, #0x12]
	adds r1, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	strh r1, [r5, #0x12]
	ldrh r3, [r5, #0x14]
	cmp r1, r3
	bhi _0803425C
	lsls r2, r2, #6
	lsrs r2, r2, #0x1c
	beq _080341EE
	cmp r2, #1
	beq _0803425E
	cmp r2, #2
	bne _0803425C
	cmp r1, r3
	beq _080341A2
	movs r1, #0xb6
	ldrsb r1, [r1, r0]
	cmp r1, #0
	bgt _0803425C
_080341A2
	ldr r0, [r0, #0x7c]
	ldr r1, _08034340 ;@ =gUnknown_03003454
	lsls r0, r0, #8
	lsrs r0, r0, #0x18
	ldr r1, [r1]
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r1, #0xb
	lsls r1, r1, #7
	adds r0, r0, r1
	ldrh r1, [r0, #0x18]
	movs r2, #2
	bics r1, r2
	strh r1, [r0, #0x18]
	ldr r0, [r4, #0x40]
	movs r1, #0
	bl sub_803F654
	ldr r0, [r4, #0x40]
	movs r3, #0x14
	ldr r1, [r0]
	ldr r2, [r1, #0x34]
	adds r7, r2, r1
	movs r2, #1
	ldr r1, [r4, #0x48]
	bl sub_803B8D6
	ldr r0, [r4, #0x34]
	movs r1, #1
	lsls r1, r1, #9
	bics r0, r6
	adds r0, r0, r1
	str r0, [r4, #0x34]
	ldrh r0, [r5, #0xc]
	lsls r1, r1, #1
	orrs r0, r1
	strh r0, [r5, #0xc]
	b _0803425C
_080341EE
	ldr r0, _0803434C ;@ =gPlayerEntity
	ldr r2, _08034344 ;@ =gUnknown_030033A2
	ldr r7, [r0]
	movs r0, #0xac
	ldrb r0, [r0, r7]
	ldrb r2, [r2]
	cmp r0, r2
	bhs _08034218
	ldrh r0, [r5, #0x10]
	cmp r0, #0
	beq _08034230
	bl sub_803C124
	cmp r1, #0
	bne _08034230
	movs r1, #1
	adds r0, r7, #0
	adds r0, #0xac
	bl ModifyPlayerHealth
	b _08034230
_08034218
	ldrh r0, [r5, #0xe]
	cmp r0, #0
	beq _08034230
	bl sub_803C124
	cmp r1, #0
	bne _08034230
	movs r1, #1
	adds r0, r7, #0
	adds r0, #0xac
	bl ModifyPlayerHealth
_08034230
	ldrh r0, [r5, #0x12]
	ldrh r1, [r5, #0x14]
	cmp r0, r1
	beq _08034260
	ldr r0, _0803434C ;@ =gPlayerEntity
	ldr r1, [r0]
	adds r1, #0xa0
	ldrb r0, [r1, #0xc]
	ldrb r1, [r1, #0xf]
	cmp r0, r1
	beq _08034260
	ldrh r1, [r5, #0xc]
	ldr r2, _08034344 ;@ =gUnknown_030033A2
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x1e
	ldrb r1, [r2, r1]
	lsls r3, r1, #1
	adds r1, r3, r1
	lsls r1, r1, #1
	cmp r0, r1
	bne _0803425C
	b _08034260
_0803425C
	b _080342D0
_0803425E
	b _08034276
_08034260
	ldr r0, [r4, #0x34]
	movs r1, #1
	lsls r1, r1, #9
	bics r0, r6
	adds r0, r0, r1
	str r0, [r4, #0x34]
	ldrh r0, [r5, #0xc]
	lsls r1, r1, #1
	orrs r0, r1
	strh r0, [r5, #0xc]
	b _080342D0
_08034276
	cmp r1, r3
	bne _080342D0
	ldr r0, [r4, #0x44]
	ldr r1, [r0, #0x74]
	str r1, [r0, #0x70]
	ldr r0, [r4, #0x34]
	movs r1, #1
	lsls r1, r1, #9
	bics r0, r6
	adds r0, r0, r1
	str r0, [r4, #0x34]
	ldrh r0, [r5, #0xc]
	lsls r1, r1, #1
	orrs r0, r1
	strh r0, [r5, #0xc]
	b _080342D0
_08034296
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne _080342D0
	ldr r6, _08034350 ;@ =gUnknown_03003EB8
	cmp r0, #0
	beq _080342AE
	adds r1, r4, #4
	ldr r0, [r6]
	bl sub_8000DE6
	str r7, [r4, #4]
_080342AE
	ldr r0, [r4, #0x3c]
	cmp r0, #0
	beq _080342C0
	adds r1, r4, #0
	adds r1, #0x3c
	ldr r0, [r6]
	bl sub_8000DE6
	str r7, [r4, #0x3c]
_080342C0
	ldr r0, _08034354 ;@ =gUnknown_03003458
	movs r1, #0x29
	ldr r0, [r0]
	lsls r1, r1, #5
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r1, #1
	strb r1, [r0]
_080342D0
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _080342D8
_080342D6
	b _08033F48
_080342D8
	ldrh r1, [r5, #0xc]
	lsls r1, r1, #0x16
	lsrs r1, r1, #0x1e
	cmp r1, #2
	bne _080342FA
	bl sub_803F6B4
	cmp r0, #0x31
	bne _080342F2
	ldr r0, [r4, #0x44]
	ldr r1, [r0, #0x2c]
	adds r5, r1, #0
	b _08034300
_080342F2
	ldr r0, [r4, #0x40]
	ldr r1, [r0, #0x30]
	ldr r5, [r0, #0x2c]
	b _08034300
_080342FA
	ldr r0, [r4, #0x44]
	ldr r1, [r0, #0x30]
	ldr r5, [r0, #0x2c]
_08034300
	adds r1, #0x2c
	adds r6, r1, #0
	ldr r0, [r4, #4]
	bl sub_803FF24
	ldrb r2, [r5, #5]
	ldr r0, [r4, #4]
	ldrb r3, [r0, #5]
	subs r2, #2
	adds r1, r2, #0
	cmp r2, r3
	beq _0803431C
	bl sub_80401C0
_0803431C
	adds r1, r6, #0
	ldr r0, [r4, #0x3c]
	bl sub_803FF24
	ldrb r2, [r5, #5]
	ldr r0, [r4, #0x3c]
	ldrb r3, [r0, #5]
	subs r2, #1
	adds r1, r2, #0
	cmp r2, r3
	beq _080342D6
	bl sub_80401C0
	b _08033F48
	ALIGN
_08034338 DCDU gUnknown_0300334A
_0803433C DCDU gUnknown_030033A6
_08034340 DCDU gUnknown_03003454
_08034344 DCDU gUnknown_030033A2
_08034348 DCDU gUnknown_0300345C
_0803434C DCDU gPlayerEntity
_08034350 DCDU gUnknown_03003EB8
_08034354 DCDU gUnknown_03003458
	END