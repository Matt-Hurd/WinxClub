    INCLUDE asm/macros.inc
    AREA text, CODE

	IMPORT sub_803B650
	IMPORT sub_803B7C4
	IMPORT sub_803C4B4
	IMPORT sub_803CDE0

	thumb_func_start sub_803B81C
sub_803B81C ;@ 0x0803B81C
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r6, #0
	b _0803B82E
_0803B828
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
_0803B82E
	cmp r6, #2
	bhi _0803B852
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_803B650
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0
	bne _0803B828
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_803B7C4
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0
	bne _0803B828
_0803B852
	adds r0, r2, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	ALIGN

	thumb_func_start nullsub_62
nullsub_62 ;@ 0x0803B85C
	bx lr

	non_word_aligned_thumb_func_start nullsub_63
nullsub_63 ;@ 0x0803B85E
	bx lr
	END