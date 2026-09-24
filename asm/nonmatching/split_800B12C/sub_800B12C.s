	thumb_func_start sub_800B12C
sub_800B12C
	push {r3, r4, r5, lr}
	ldr r5, _0800B150
	lsls r4, r1, #2
	str r2, [r5, r4]
	movs r4, #0
	cmp r2, #0
	beq %1
	adds r4, r3, #0
1
	adds r2, r4, #0
	bl sub_800B154
	pop {r3, r4, r5}
	pop {r3}
	bx r3

