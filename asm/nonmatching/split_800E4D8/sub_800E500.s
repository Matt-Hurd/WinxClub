	thumb_func_start sub_800E500
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r0, r3, #0
	adds r5, r1, #0
	adds r4, r2, #0
	cmp r6, #0
	beq %2
	cmp r6, #1
	bne %1
	movs r2, #0
	movs r1, #0
	bl sub_80052C0
	adds r2, r4, #0
	adds r1, r5, #0
	bl sub_80052C0
1
	pop {r4, r5, r6}
	pop {r3}
	bx r3
2
	movs r1, #0
	cmp r4, #0
	bls %1
3
	ldrb r2, [r5, r1]
	adds r1, #1
	adds r0, r2, r0
	cmp r1, r4
	blo %3
	b %1
	ALIGN
	thumb_func_end sub_800E500

