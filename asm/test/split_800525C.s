    INCLUDE asm/macros.inc
    AREA text, CODE

	IMPORT gUnknown_03003E84
	IMPORT gUnknown_0803E680
	IMPORT gUnknown_0803ECC0
	IMPORT sub_803BF0C
	IMPORT sub_803D9F8
	IMPORT sub_803DA18

	thumb_func_start sub_800525C
sub_800525C ;@ 0x0800525C
	push {r3, lr}
	cmp r0, #0
	bne _0800526C
	movs r0, #4
	bl sub_803D9F8
	cmp r0, #0
	beq _08005278
_0800526C
	ldr r1, _080052B4 ;@ =_0803ECC0
	str r1, [r0]
	ldr r1, _080052B8 ;@ =gUnknown_03003E84
	str r0, [r1]
	ldr r1, _080052BC ;@ =_0803E680
	str r1, [r0]
_08005278
	add sp, #4
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_800527E
sub_800527E ;@ 0x0800527E
	push {r3, lr}
	ldr r2, _080052B4 ;@ =_0803ECC0
	ldr r3, _080052B8 ;@ =gUnknown_03003E84
	str r2, [r0]
	movs r2, #0
	str r2, [r3]
	cmp r1, #0
	beq _08005292
	bl sub_803DA18
_08005292
	add sp, #4
	pop {r3}
	bx r3

	thumb_func_start nullsub_1
nullsub_1 ;@ 0x08005298
	bx lr

	non_word_aligned_thumb_func_start sub_800529A
sub_800529A ;@ 0x0800529A
	push {r4, lr}
	adds r0, r1, #0
	adds r4, r3, #0
	beq _080052AC
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_803BF0C
	adds r0, r4, #0
_080052AC
	pop {r4}
	pop {r3}
	bx r3
	ALIGN
_080052B4 DCDU gUnknown_0803ECC0
_080052B8 DCDU gUnknown_03003E84
_080052BC DCDU gUnknown_0803E680
