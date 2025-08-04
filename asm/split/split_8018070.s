	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_03003E84
	IMPORT sub_8004716
	IMPORT sub_800474E
	IMPORT sub_800529A
	IMPORT sub_8008008
	IMPORT sub_8008072
	IMPORT sub_800EF2A
	IMPORT sub_801047C
	IMPORT sub_80108DA
	IMPORT __call_via_r2
	IMPORT __call_via_r3
	IMPORT sub_803D4A8
	IMPORT sub_803D680
	IMPORT sub_803D834
	IMPORT sub_803D97C
	IMPORT sub_803D984
	IMPORT sub_803D9A8
	IMPORT __nw__FUi
	IMPORT sub_803DA18

	thumb_func_start sub_8018070
sub_8018070
	push {r4, lr}
	sub sp, #0x18
	add r4, sp, #0xc
	adds r0, r4, #0
	bl sub_8004716
	movs r2, #0
	str r2, [sp, #8]
	movs r1, #1
	movs r0, #0x10
	str r0, [sp]
	movs r2, #0x3f
	movs r3, #2
	adds r0, r4, #0
	str r1, [sp, #4]
	bl sub_803D680
	adds r0, r4, #0
	bl sub_803D97C
	cmp r0, #0
	bne _080180B6
_0801809C
	adds r0, r4, #0
	bl sub_803D834
	adds r0, r4, #0
	bl sub_800474E
	bl sub_800EF2A
	adds r0, r4, #0
	bl sub_803D97C
	cmp r0, #0
	beq _0801809C
_080180B6
	add sp, #0x18
	pop {r4}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_80180BE
sub_80180BE
	push {r4, lr}
	sub sp, #0x18
	add r4, sp, #0xc
	adds r0, r4, #0
	bl sub_8004716
	movs r2, #0
	movs r1, #1
	str r1, [sp, #4]
	str r2, [sp, #8]
	movs r0, #0x10
	str r0, [sp]
	movs r2, #0x3f
	movs r1, #0
	movs r3, #2
	adds r0, r4, #0
	bl sub_803D680
	adds r0, r4, #0
	bl sub_803D97C
	cmp r0, #0
	bne _08018106
_080180EC
	adds r0, r4, #0
	bl sub_803D834
	adds r0, r4, #0
	bl sub_800474E
	bl sub_800EF2A
	adds r0, r4, #0
	bl sub_803D97C
	cmp r0, #0
	beq _080180EC
_08018106
	add sp, #0x18
	pop {r4}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_801810E
sub_801810E
	b sub_80180BE

	thumb_func_start sub_8018110
sub_8018110
	push {r4, lr}
	adds r4, r0, #0
	bne _08018128
	movs r0, #0x14
	bl __nw__FUi
	adds r4, r0, #0
	bne _08018128
	adds r0, r4, #0
_08018122
	pop {r4}
	pop {r3}
	bx r3
_08018128
	movs r0, #0
	str r0, [r4, #0x10]
	movs r2, #0
	movs r1, #0
	ldr r0, _08018374
	bl sub_803D984
	movs r1, #1
	lsls r1, r1, #0xe
	str r0, [r4]
	adds r0, r0, r1
	lsls r1, r1, #2
	adds r1, r0, r1
	str r0, [r4, #4]
	movs r0, #5
	lsls r0, r0, #8
	adds r0, r1, r0
	str r1, [r4, #8]
	str r0, [r4, #0xc]
	movs r0, #0xff
	adds r0, #1
	bl sub_80108DA
	ldr r0, [r4, #0xc]
	bl sub_801047C
	adds r0, r4, #0
	b _08018122

	thumb_func_start sub_8018160
sub_8018160
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	movs r2, #0
	movs r1, #0
	ldr r0, [r0]
	bl sub_803D9A8
	movs r5, #0
	str r5, [r4]
	str r5, [r4, #4]
	str r5, [r4, #8]
	str r5, [r4, #0xc]
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _0801818C
	ldr r1, [r0]
	ldr r2, [r1]
	adds r2, r2, r1
	movs r1, #1
	bl __call_via_r2
_0801818C
	str r5, [r4, #0x10]
	cmp r6, #0
	beq _08018198
	adds r0, r4, #0
	bl sub_803DA18
_08018198
	pop {r4, r5, r6}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_801819E
sub_801819E
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, [r0, #0x10]
	movs r7, #0
	adds r6, r1, #0
	adds r5, r2, #0
	cmp r0, #0
	sub sp, #0x1c
	beq _080181BE
	bl sub_8008072
	ldr r1, [r5, #4]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1c
	cmp r0, r1
	beq _080181DE
_080181BE
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _080181D0
	ldr r1, [r0]
	ldr r2, [r1]
	adds r2, r2, r1
	movs r1, #1
	bl __call_via_r2
_080181D0
	str r7, [r4, #0x10]
	ldr r0, [r5, #4]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	bl sub_803D4A8
	str r0, [r4, #0x10]
_080181DE
	ldr r0, [r5, #4]
	ldr r1, _08018378
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	ldr r0, [r1]
	beq _0801827A
	ldr r1, [r5]
	adds r3, r7, #0
	lsrs r1, r1, #0x13
	lsls r2, r1, #2
	adds r1, r6, #0
	bl sub_800529A
	adds r6, r0, #0
	ldr r0, [r4, #0x10]
	ldr r1, [r0]
	ldr r2, [r1, #0x14]
	adds r2, r2, r1
	adds r1, r6, #0
	bl __call_via_r2
	adds r7, r0, #0
	add r0, sp, #4
	bl sub_8008008
	str r6, [sp, #4]
	ldr r0, [r5]
	lsrs r0, r0, #0x13
	lsls r0, r0, #2
	str r0, [sp, #8]
	ldr r0, [r4, #4]
	str r0, [sp, #0xc]
	adds r0, r7, #3
	lsrs r0, r0, #2
	lsls r0, r0, #2
	str r0, [sp, #0x14]
	ldr r0, [r4, #0x10]
	ldr r1, [r0]
	ldr r2, [r1, #0x20]
	adds r2, r2, r1
	adds r1, r6, #0
	bl __call_via_r2
	adds r2, r0, #0
	ldr r0, [r4, #0x10]
	ldr r1, [r0]
	ldr r3, [r1, #0x1c]
	adds r3, r3, r1
	ldr r1, [r4]
	bl __call_via_r3
	ldr r0, [r4, #0x10]
	ldr r1, [r0]
	ldr r2, [r1, #8]
	adds r2, r2, r1
	add r1, sp, #4
	bl __call_via_r2
	ldr r0, [r4, #0x10]
	ldr r1, [r0]
	ldr r2, [r1, #0xc]
	adds r3, r2, r1
	movs r2, #1
	lsls r2, r2, #0x1e
	adds r1, r7, #0
	bl __call_via_r3
	ldr r0, [r5]
	lsls r1, r0, #0xd
	lsrs r1, r1, #0xd
	lsrs r0, r7, #2
	lsls r0, r0, #0x13
	orrs r0, r1
	str r0, [r5]
_08018272
	add sp, #0x1c
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
_0801827A
	ldr r3, [r4, #4]
	ldr r1, [r5]
	lsrs r1, r1, #0x13
	lsls r2, r1, #2
	adds r1, r6, #0
	bl sub_800529A
	b _08018272

	non_word_aligned_thumb_func_start sub_801828A
sub_801828A
	push {r0, r1, r2, r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, [r0, #0x10]
	movs r7, #0
	adds r6, r1, #0
	adds r5, r2, #0
	cmp r0, #0
	sub sp, #0x1c
	beq _080182AA
	bl sub_8008072
	ldr r1, [r5, #4]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1c
	cmp r0, r1
	beq _080182CA
_080182AA
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _080182BC
	ldr r1, [r0]
	ldr r2, [r1]
	adds r2, r2, r1
	movs r1, #1
	bl __call_via_r2
_080182BC
	str r7, [r4, #0x10]
	ldr r0, [r5, #4]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	bl sub_803D4A8
	str r0, [r4, #0x10]
_080182CA
	ldr r1, [r5, #4]
	ldr r2, _08018378
	lsls r0, r1, #0x1c
	lsrs r0, r0, #0x1c
	ldr r0, [r2]
	beq _08018364
	lsrs r1, r1, #4
	lsls r2, r1, #2
	adds r3, r7, #0
	adds r1, r6, #0
	bl sub_800529A
	adds r6, r0, #0
	ldr r0, [r4, #0x10]
	ldr r1, [r0]
	ldr r2, [r1, #0x14]
	adds r2, r2, r1
	adds r1, r6, #0
	bl __call_via_r2
	adds r7, r0, #0
	add r0, sp, #4
	bl sub_8008008
	str r6, [sp, #4]
	ldr r0, [r5, #4]
	lsrs r0, r0, #4
	lsls r0, r0, #2
	str r0, [sp, #8]
	adds r0, r7, #3
	lsrs r0, r0, #2
	ldr r3, [sp, #0x28]
	lsls r0, r0, #2
	str r0, [sp, #0x14]
	str r3, [sp, #0xc]
	ldr r0, [r4, #0x10]
	ldr r1, [r0]
	ldr r2, [r1, #0x20]
	adds r2, r2, r1
	adds r1, r6, #0
	bl __call_via_r2
	adds r2, r0, #0
	ldr r0, [r4, #0x10]
	ldr r1, [r0]
	ldr r3, [r1, #0x1c]
	adds r3, r3, r1
	ldr r1, [r4]
	bl __call_via_r3
	ldr r0, [r4, #0x10]
	ldr r1, [r0]
	ldr r2, [r1, #8]
	adds r2, r2, r1
	add r1, sp, #4
	bl __call_via_r2
	ldr r0, [r4, #0x10]
	ldr r1, [r0]
	ldr r2, [r1, #0xc]
	adds r3, r2, r1
	movs r2, #1
	lsls r2, r2, #0x1e
	adds r1, r7, #0
	bl __call_via_r3
	ldr r0, [r5, #4]
	lsls r1, r0, #0x1c
	lsrs r1, r1, #0x1c
	lsrs r0, r7, #2
	lsls r0, r0, #4
	orrs r0, r1
	str r0, [r5, #4]
_0801835C
	add sp, #0x2c
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
_08018364
	lsrs r1, r1, #4
	lsls r2, r1, #2
	adds r1, r6, #0
	ldr r3, [sp, #0x28]
	bl sub_800529A
	b _0801835C
	ALIGN
_08018374 DCDU 0x00015500
_08018378 DCDU gUnknown_03003E84
	END
