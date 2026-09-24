	non_word_aligned_thumb_func_start sub_800B94A
sub_800B94A
	ldr r0, _0800BBC4
	push {r3, lr}
	ldr r0, [r0]
	bl sub_800B082
	ldr r1, _0800BBCC
	cmp r0, #3
	ldr r0, [r1]
	ldr r3, _0800BBC8
	blo %18
	ldr r1, _0800BBD0
	cmp r0, #0
	beq %17
	movs r0, #0
	str r0, [sp]
	mov r0, sp
	ldr r2, _0800BBD4
	bl CpuSet
16
	add sp, #4
	pop {r3}
	bx r3
17
	adds r2, r1, #0
	movs r0, #0
	str r0, [sp]
	mov r1, sp
	str r1, [r3]
	adds r0, r3, #0
	str r2, [r0, #4]
	ldr r1, _0800BBD8
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	b %16
18
	ldr r1, _0800BBDC
	cmp r0, #0
	beq %19
	movs r0, #0
	str r0, [sp]
	mov r0, sp
	ldr r2, _0800BBE0
	bl CpuSet
	b %16
19
	adds r2, r1, #0
	movs r0, #0
	str r0, [sp]
	mov r1, sp
	str r1, [r3]
	adds r0, r3, #0
	str r2, [r0, #4]
	ldr r1, _0800BBE4
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	b %16

