	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_03003EBC
	IMPORT gUnknown_0803ECB4
	IMPORT gUnknown_0803ECF4
	IMPORT sub_8005106
	IMPORT maybeMallocEWRAM
	IMPORT sub_803DA18
	IMPORT __da__FPv
	IMPORT sub_803DA9C

	thumb_func_start sub_801343C
sub_801343C
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	adds r4, r0, #0
	cmp r0, #0
	bne _08013458
	movs r0, #0xc
	bl maybeMallocEWRAM
	adds r4, r0, #0
	bne _08013458
	adds r0, r4, #0
_08013452
	pop {r4, r5, r6}
	pop {r3}
	bx r3
_08013458
	ldr r0, _080134AC
	movs r6, #0
	str r0, [r4]
	ldr r0, _080134B0
	str r4, [r0]
	ldr r0, _080134B4
	str r0, [r4]
	strb r6, [r4, #9]
	strb r5, [r4, #8]
	bl sub_8005106
	adds r1, r0, #0
	lsls r0, r5, #4
	adds r3, r6, #0
	movs r2, #0
	bl sub_803DA9C
	str r0, [r4, #4]
	adds r0, r4, #0
	b _08013452

	thumb_func_start sub_8013480
sub_8013480
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _080134B4
	adds r5, r1, #0
	str r0, [r4]
	ldr r0, [r4, #4]
	bl __da__FPv
	ldr r0, _080134AC
	ldr r1, _080134B0
	str r0, [r4]
	movs r0, #0
	str r0, [r1]
	cmp r5, #0
	beq _080134A4
	adds r0, r4, #0
	bl sub_803DA18
_080134A4
	pop {r3, r4, r5}
	pop {r3}
	bx r3
	ALIGN
_080134AC DCDU gUnknown_0803ECF4
_080134B0 DCDU gUnknown_03003EBC
_080134B4 DCDU gUnknown_0803ECB4
	END
