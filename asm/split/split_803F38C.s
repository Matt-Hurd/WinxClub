    INCLUDE asm/macros.inc
    AREA text, CODE

	IMPORT sub_803B92C
	IMPORT sub_803B940

	thumb_func_start sub_803F38C
sub_803F38C ;@ 0x0803F38C
	movs r2, #0xff
	adds r2, #1
	push {r4}
	movs r3, #2
	cmp r1, #0
	ldr r4, [r0]
	beq _0803F3A6
	orrs r4, r3
	adds r1, r4, #0
	bics r1, r2
	str r1, [r0]
_0803F3A2
	pop {r4}
	bx lr
_0803F3A6
	bics r4, r3
	bics r4, r2
	str r4, [r0]
	b _0803F3A2
	ALIGN

	thumb_func_start sub_803F3B0
sub_803F3B0 ;@ 0x0803F3B0
	movs r0, #1
	bx lr

	thumb_func_start sub_803F3B4
sub_803F3B4 ;@ 0x0803F3B4
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r1, [r0]
	ldr r0, [r5]
	bl sub_803B92C
	adds r6, r0, #0
	adds r7, r1, #0
	ldr r1, [r4, #4]
	ldr r0, [r5, #4]
	bl sub_803B92C
	add r2, pc, #0x10 ;@ =_0803F3E0
	adds r0, r0, r6
	adcs r1, r7
	ldm r2!, {r2, r3}
	bl sub_803B940
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
	ALIGN
_0803F3E0 DCDU 0x00000100
_0803F3E4 DCDU 0x00000000
	END