	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_03003460
	IMPORT sub_80121C4
	IMPORT sub_801220C
	IMPORT sub_80122F0
	IMPORT sub_801230C
	IMPORT sub_8012334

	thumb_func_start sub_8028BE4
sub_8028BE4
	push {r3, lr}
	ldr r0, [r0, #8]
	bl sub_80121C4
	cmp r0, #0
	beq %2
	movs r0, #1
1
	add sp, #4
	pop {r3}
	bx r3
2
	movs r0, #0
	b %1

	thumb_func_start sub_8028BFC
sub_8028BFC
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r0, _08028C78
	ldr r0, [r0]
	cmp r0, #0
	beq %5
	movs r4, #0
3
	lsls r0, r4, #5
	adds r5, r0, r6
	ldr r0, [r5, #8]
	bl sub_80121C4
	cmp r0, #0
	beq %4
	adds r0, r5, #4
	bl sub_8012334
4
	adds r4, #1
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	cmp r4, #0x98
	blo %3
5
	pop {r4, r5, r6}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_8028C2E
sub_8028C2E
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #4
	bl sub_801220C
	movs r0, #0
	strb r0, [r4]
	pop {r4}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_8028C42
sub_8028C42
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r0]
	cmp r0, #0
	bne %6
	adds r0, r4, #4
	bl sub_80122F0
	movs r0, #1
	strb r0, [r4]
6
	pop {r4}
	pop {r3}
	bx r3

	thumb_func_start sub_8028C5C
sub_8028C5C
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r0]
	cmp r0, #0
	beq %7
	adds r0, r4, #4
	bl sub_801230C
	movs r0, #0
	strb r0, [r4]
7
	pop {r4}
	pop {r3}
	bx r3
	ALIGN
_08028C78 DCDU gUnknown_03003460
	END
