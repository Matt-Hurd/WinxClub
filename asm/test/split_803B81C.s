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

	thumb_func_start sub_803B860
sub_803B860 ;@ 0x0803B860
	push {r0, r1, r2, r3}
	push {r4, r5, lr}
	sub sp, #0x44
	str r0, [sp, #0x3c]
	ldr r0, _0803B89C ;@ =0x0000156F
	add r1, sp, #0x58
	str r1, [sp, #0x38]
	add r0, pc
	str r0, [sp, #0x20]
	ldr r0, _0803B8A0 ;@ =0x00001577
	add r0, pc
	str r0, [sp, #0x24]
	add r5, sp, #0x3c
	adds r0, r5, #0
	add r3, sp, #4
	add r2, sp, #0x38
	ldr r1, [sp, #0x54]
	bl sub_803C4B4
	adds r4, r0, #0
	adds r1, r5, #0
	movs r0, #0
	bl sub_803CDE0
	adds r0, r4, #0
	add sp, #0x44
	pop {r4, r5}
	pop {r3}
	add sp, #0x10
	bx r3
	ALIGN
_0803B89C DCDU 0x0000156F
_0803B8A0 DCDU 0x00001577
