    INCLUDE asm/macros.inc
    AREA text, CODE

	IMPORT gUnknown_03003E94
	IMPORT gUnknown_0803EA8C
	IMPORT gUnknown_0803ECD0
	IMPORT sub_80114B0
	IMPORT sub_8011562
	IMPORT sub_8011596
	IMPORT sub_80115EC
	IMPORT sub_80116D4
	IMPORT sub_801175C
	IMPORT sub_80117A4
	IMPORT sub_80117B0
	IMPORT sub_8011898
	IMPORT sub_8011912
	IMPORT sub_801196A
	IMPORT sub_801197C
	IMPORT sub_8011A80
	IMPORT sub_8011AC2
	IMPORT sub_8011B22
	IMPORT sub_8011D3C
	IMPORT sub_8011D56
	IMPORT sub_803D9A8
	IMPORT sub_803D9C4
	IMPORT sub_803D9F8
	IMPORT sub_803DA18

	thumb_func_start sub_800B464
sub_800B464 ;@ 0x0800B464
	adds r1, r0, #0
	ldr r0, _0800B6CC ;@ =gUnknown_03003E94
	ldr r0, [r0]
	adds r0, #8
	cmp r1, #0
	beq _0800B482
	cmp r1, #1
	beq _0800B48C
	cmp r1, #2
	bne _0800B480
	ldr r1, [r0]
	movs r2, #2
	bics r1, r2
	str r1, [r0]
_0800B480
	bx lr
_0800B482
	ldr r1, [r0]
	lsrs r1, r1, #1
	lsls r1, r1, #1
	str r1, [r0]
	bx lr
_0800B48C
	ldr r1, [r0]
	movs r2, #4
	bics r1, r2
	str r1, [r0]
	bx lr

	non_word_aligned_thumb_func_start sub_800B496
sub_800B496 ;@ 0x0800B496
	adds r2, r0, #0
	ldr r0, _0800B6CC ;@ =gUnknown_03003E94
	ldr r1, [r0]
	adds r0, r1, #0
	adds r0, #8
	cmp r2, #0
	beq _0800B4BE
	cmp r2, #1
	beq _0800B4CA
	cmp r2, #2
	bne _0800B4DC
	ldr r2, [r0]
	movs r3, #2
	orrs r2, r3
	str r2, [r0]
	ldr r0, [r1, #4]
	movs r1, #0x51
	lsls r1, r1, #5
	adds r0, r0, r1
	bx lr
_0800B4BE
	ldr r2, [r0]
	movs r3, #1
	orrs r2, r3
	str r2, [r0]
	ldr r0, [r1, #4]
	bx lr
_0800B4CA
	ldr r2, [r0]
	movs r3, #4
	orrs r2, r3
	str r2, [r0]
	ldr r0, [r1, #4]
	movs r1, #7
	lsls r1, r1, #8
	adds r0, r0, r1
	bx lr
_0800B4DC
	movs r0, #0
	bx lr

	thumb_func_start sub_800B4E0
sub_800B4E0 ;@ 0x0800B4E0
	push {r3, lr}
	ldr r1, _0800B6D0 ;@ =sub_800B464
	ldr r0, _0800B6D4 ;@ =sub_800B496
	bl sub_80114B0
	add sp, #4
	pop {r3}
	bx r3

	thumb_func_start sub_800B4F0
sub_800B4F0 ;@ 0x0800B4F0
	push {r4, lr}
	adds r4, r0, #0
	bne _0800B508
	movs r0, #0x14
	bl sub_803D9F8
	adds r4, r0, #0
	bne _0800B508
	adds r0, r4, #0
_0800B502
	pop {r4}
	pop {r3}
	bx r3
_0800B508
	ldr r0, _0800B6D8 ;@ =_0803ECD0
	movs r1, #0x61
	str r0, [r4]
	ldr r0, _0800B6CC ;@ =gUnknown_03003E94
	lsls r1, r1, #5
	str r4, [r0]
	ldr r0, _0800B6DC ;@ =_0803EA8C
	movs r3, #0
	movs r2, #0
	str r0, [r4]
	movs r0, #1
	bl sub_803D9C4
	str r0, [r4, #4]
	ldr r0, [r4, #8]
	movs r1, #2
	lsrs r0, r0, #1
	lsls r0, r0, #1
	bics r0, r1
	movs r1, #4
	bics r0, r1
	movs r1, #8
	bics r0, r1
	movs r1, #0x10
	bics r0, r1
	str r0, [r4, #8]
	ldr r0, _0800B6D4 ;@ =sub_800B496
	ldr r1, _0800B6D0 ;@ =sub_800B464
	bl sub_80114B0
	adds r0, r4, #0
	b _0800B502

	thumb_func_start sub_800B548
sub_800B548 ;@ 0x0800B548
	push {r3, lr}
	bl sub_801175C
	add sp, #4
	pop {r3}
	bx r3

	thumb_func_start sub_800B554
sub_800B554 ;@ 0x0800B554
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, _0800B6DC ;@ =_0803EA8C
	adds r6, r1, #0
	str r0, [r4]
	bl sub_801175C
	ldr r0, [r4, #8]
	movs r5, #0
	lsls r0, r0, #0x1c
	cmp r0, #0
	blt _0800B578
	movs r2, #0
	movs r1, #0
	ldr r0, [r4, #4]
	bl sub_803D9A8
	str r5, [r4, #4]
_0800B578
	ldr r0, _0800B6D8 ;@ =_0803ECD0
	cmp r6, #0
	str r0, [r4]
	ldr r0, _0800B6CC ;@ =gUnknown_03003E94
	str r5, [r0]
	beq _0800B58A
	adds r0, r4, #0
	bl sub_803DA18
_0800B58A
	pop {r4, r5, r6}
	pop {r3}
	bx r3

	thumb_func_start sub_800B590
sub_800B590 ;@ 0x0800B590
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	bl sub_801175C
	ldr r0, [r4, #8]
	lsls r0, r0, #0x1c
	bmi _0800B5AA
	movs r2, #0
	movs r1, #0
	ldr r0, [r4, #4]
	bl sub_803D9A8
_0800B5AA
	movs r6, #8
	cmp r5, #0
	bne _0800B5C8
	movs r1, #0x61
	lsls r1, r1, #5
	movs r3, #0
	movs r2, #0
	movs r0, #1
	bl sub_803D9C4
	str r0, [r4, #4]
	ldr r0, [r4, #8]
	bics r0, r6
	str r0, [r4, #8]
	b _0800B5D0
_0800B5C8
	str r5, [r4, #4]
	ldr r0, [r4, #8]
	orrs r0, r6
	str r0, [r4, #8]
_0800B5D0
	ldr r0, [r4, #8]
	movs r1, #2
	lsrs r0, r0, #1
	lsls r0, r0, #1
	bics r0, r1
	movs r1, #4
	bics r0, r1
	str r0, [r4, #8]
	ldr r0, _0800B6D4 ;@ =sub_800B496
	ldr r1, _0800B6D0 ;@ =sub_800B464
	bl sub_80114B0
	pop {r4, r5, r6}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_800B5EE
sub_800B5EE ;@ 0x0800B5EE
	adds r0, r1, #0
	adds r1, r2, #0
	push {r3, lr}
	adds r2, r3, #0
	bl sub_8011912
	add sp, #4
	pop {r3}
	bx r3

	thumb_func_start sub_800B600
sub_800B600 ;@ 0x0800B600
	push {r3, lr}
	adds r0, r1, #0
	bl sub_80115EC
	add sp, #4
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_800B60E
sub_800B60E ;@ 0x0800B60E
	push {r3, lr}
	adds r0, r1, #0
	bl sub_8011596
	add sp, #4
	pop {r3}
	bx r3

	thumb_func_start sub_800B61C
sub_800B61C ;@ 0x0800B61C
	push {r3, lr}
	adds r0, r1, #0
	bl sub_8011898
	add sp, #4
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_800B62A
sub_800B62A ;@ 0x0800B62A
	push {r3, lr}
	adds r0, r1, #0
	bl sub_801196A
	add sp, #4
	pop {r3}
	bx r3

	thumb_func_start sub_800B638
sub_800B638 ;@ 0x0800B638
	push {r3, lr}
	adds r0, r1, #0
	bl sub_80117B0
	add sp, #4
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_800B646
sub_800B646 ;@ 0x0800B646
	push {r3, lr}
	bl sub_801197C
	add sp, #4
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_800B652
sub_800B652 ;@ 0x0800B652
	push {r3, lr}
	bl sub_8011562
	add sp, #4
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_800B65E
sub_800B65E ;@ 0x0800B65E
	push {r3, lr}
	bl sub_8011A80
	add sp, #4
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_800B66A
sub_800B66A ;@ 0x0800B66A
	push {r3, lr}
	bl sub_80117A4
	add sp, #4
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_800B676
sub_800B676 ;@ 0x0800B676
	push {r3, lr}
	adds r3, r0, #0
	adds r0, r1, #0
	movs r2, #0
	str r2, [r3, #0xc]
	bl sub_8011AC2
	add sp, #4
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_800B68A
sub_800B68A ;@ 0x0800B68A
	push {r3, lr}
	adds r0, r1, #0
	bl sub_8011B22
	add sp, #4
	pop {r3}
	bx r3

	thumb_func_start sub_800B698
sub_800B698 ;@ 0x0800B698
	push {r3, lr}
	str r1, [r0, #0xc]
	adds r0, r1, #0
	bl sub_8011D3C
	add sp, #4
	pop {r3}
	bx r3

	thumb_func_start sub_800B6A8
sub_800B6A8 ;@ 0x0800B6A8
	ldr r0, [r0, #0xc]
	bx lr

	thumb_func_start sub_800B6AC
sub_800B6AC ;@ 0x0800B6AC
	push {r4, lr}
	adds r4, r0, #0
	bl sub_80116D4
	movs r0, #0
	str r0, [r4, #0xc]
	pop {r4}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_800B6BE
sub_800B6BE ;@ 0x0800B6BE
	push {r3, lr}
	bl sub_8011D56
	add sp, #4
	pop {r3}
	bx r3
	ALIGN
_0800B6CC DCDU gUnknown_03003E94
_0800B6D0 DCDU sub_800B464
_0800B6D4 DCDU sub_800B496
_0800B6D8 DCDU gUnknown_0803ECD0
_0800B6DC DCDU gUnknown_0803EA8C
	END