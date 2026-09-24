	thumb_func_start sub_801F28C
	push {r4, r5}
	ldm r1!, {r3, r4}
	movs r1, #0x7c
	ldrb r1, [r1, r0]
	cmp r1, #0
	beq %226
	ldr r1, [r0, #0x30]
	ldr r1, [r1, #0x10]
	ldr r1, [r1]
	lsls r1, r1, #1
	lsrs r1, r1, #0x16
	lsls r5, r1, #0x10
	cmp r2, #0
	beq %223
	ldr r1, _0801F2F4
	cmp r2, #1
	ldr r1, [r1]
	beq %224
	cmp r2, #2
	beq %225
	cmp r2, #3
	bne %226
	ldr r0, [r0, #0x5c]
	subs r1, r4, r1
	subs r0, r0, r5
	cmp r1, r0
	blt %226
	movs r0, #1
222
	pop {r4, r5}
	bx lr
223
	ldr r0, [r0, #0x58]
	cmp r3, r0
	bgt %226
	movs r0, #1
	b %222
224
	ldr r0, [r0, #0x5c]
	subs r1, r4, r1
	cmp r1, r0
	bgt %226
	movs r0, #1
	b %222
225
	ldr r0, [r0, #0x58]
	cmp r3, r0
	blt %226
	movs r0, #1
	b %222
226
	movs r0, #0
	b %222
	thumb_func_end sub_801F28C
