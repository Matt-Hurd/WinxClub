    INCLUDE asm/macros.inc
    AREA text, CODE

	IMPORT gUnknown_03003458
	IMPORT gUnknown_03003478
	IMPORT gUnknown_030034F8
	IMPORT gUnknown_03003D20
	IMPORT sub_8005106
	IMPORT sub_800E53C
	IMPORT sub_800E71C
	IMPORT sub_800EF2A
	IMPORT sub_8018070
	IMPORT sub_8018386
	IMPORT sub_801BEA0
	IMPORT sub_8023D0C
	IMPORT sub_80247A4
	IMPORT sub_803DA80

	thumb_func_start sub_8028CE8
sub_8028CE8 ;@ 0x08028CE8
	push {r4, lr}
	movs r0, #1
	bl sub_800E53C
	movs r0, #0
	bl sub_800E71C
	ldr r3, _08028D50 ;@ =gUnknown_03003478
	movs r0, #0x10
	ldr r2, [r3]
	ldr r1, _08028D58 ;@ =gUnknown_03003D20
	bics r2, r0
	ldr r0, _08028D54 ;@ =gUnknown_03003458
	str r2, [r3]
	ldr r0, [r0]
	movs r4, #0
	strb r4, [r1]
	movs r1, #0x10
	bics r2, r1
	str r2, [r3]
	bl sub_801BEA0
	bl sub_8005106
	adds r1, r0, #0
	movs r0, #0xff
	adds r3, r4, #0
	movs r2, #0
	adds r0, #0x95
	bl sub_803DA80
	adds r4, r0, #0
	beq _08028D30
	adds r0, r4, #0
	bl sub_8023D0C
_08028D30
	ldr r0, _08028D5C ;@ =gUnknown_030034F8
	movs r1, #0
	str r4, [r0]
	adds r0, r4, #0
	bl sub_80247A4
	bl sub_800EF2A
	bl sub_8018070
	movs r0, #0x12
	bl sub_8018386
	pop {r4}
	pop {r3}
	bx r3
	ALIGN
_08028D50 DCDU gUnknown_03003478
_08028D54 DCDU gUnknown_03003458
_08028D58 DCDU gUnknown_03003D20
_08028D5C DCDU gUnknown_030034F8
	END