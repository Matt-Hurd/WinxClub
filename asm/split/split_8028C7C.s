	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_03003458
	IMPORT gUnknown_03003478
	IMPORT gUnknown_030034F8
	IMPORT sub_8005106
	IMPORT sub_800EF2A
	IMPORT sub_8018070
	IMPORT sub_8018386
	IMPORT sub_801B56C
	IMPORT sub_801C7D2
	IMPORT sub_801CCA8
	IMPORT sub_8023D0C
	IMPORT sub_80247A4
	IMPORT sub_803DA80

	thumb_func_start sub_8028C7C
sub_8028C7C
	push {r4, lr}
	bl sub_8005106
	adds r1, r0, #0
	movs r0, #0xff
	movs r3, #0
	movs r2, #0
	adds r0, #0x95
	bl sub_803DA80
	adds r4, r0, #0
	beq _08028C9A
	adds r0, r4, #0
	bl sub_8023D0C
_08028C9A
	ldr r0, _08028CDC
	ldr r1, _08028CE0
	str r4, [r0]
	ldr r1, [r1]
	movs r0, #0x10
	ands r1, r0
	beq _08028CAC
	movs r1, #1
	b _08028CAE
_08028CAC
	movs r1, #0
_08028CAE
	adds r0, r4, #0
	bl sub_80247A4
	ldr r4, _08028CE4
	ldr r0, [r4]
	bl sub_801CCA8
	ldr r0, [r4]
	bl sub_801B56C
	bl sub_800EF2A
	ldr r0, [r4]
	bl sub_801C7D2
	bl sub_8018070
	movs r0, #0x12
	bl sub_8018386
	pop {r4}
	pop {r3}
	bx r3
	ALIGN
_08028CDC DCDU gUnknown_030034F8
_08028CE0 DCDU gUnknown_03003478
_08028CE4 DCDU gUnknown_03003458
	END