    INCLUDE asm/macros.inc
    AREA text, CODE

	IMPORT sub_803CF48
	IMPORT sub_803CF5C

	thumb_func_start sub_803B8A4
sub_803B8A4 ;@ 0x0803B8A4
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	bl sub_803CF48
	ldr r5, [r0]
	adds r4, r0, #0
	movs r2, #0xa
	movs r1, #0
	adds r0, r6, #0
	bl sub_803CF5C
	adds r1, r0, #0
	str r5, [r4]
	pop {r4, r5, r6}
	pop {r3}
	adds r0, r1, #0
	bx r3
	ALIGN

	thumb_func_start sub_803B8C8
sub_803B8C8 ;@ 0x0803B8C8
	bx r0

	non_word_aligned_thumb_func_start sub_803B8CA
sub_803B8CA ;@ 0x0803B8CA
	bx r1

	thumb_func_start sub_803B8CC
sub_803B8CC ;@ 0x0803B8CC
	bx r2

	non_word_aligned_thumb_func_start sub_803B8CE
sub_803B8CE ;@ 0x0803B8CE
	bx r3

	thumb_func_start sub_803B8D0
sub_803B8D0 ;@ 0x0803B8D0
	bx r4

	non_word_aligned_thumb_func_start sub_803B8D2
sub_803B8D2 ;@ 0x0803B8D2
	bx r5

	thumb_func_start sub_803B8D4
sub_803B8D4 ;@ 0x0803B8D4
	bx r6

	non_word_aligned_thumb_func_start sub_803B8D6
sub_803B8D6 ;@ 0x0803B8D6
	bx r7

	thumb_func_start sub_803B8D8
sub_803B8D8 ;@ 0x0803B8D8
	push {r3, r4, r5, lr}
	ldr r4, _0803B8FC ;@ =0x00001BC4
	add r4, pc
	ldr r5, _0803B900 ;@ =0x00001BC4
	add r5, pc
	cmp r4, r5
	beq _0803B8F4
_0803B8E6
	ldr r0, [r4]
	adds r0, r0, r4
	bl sub_803B8C8
	adds r4, #4
	cmp r4, r5
	bne _0803B8E6
_0803B8F4
	pop {r3, r4, r5}
	pop {r3}
	bx r3
	ALIGN
_0803B8FC DCDU 0x00001BC4
_0803B900 DCDU 0x00001BC4
