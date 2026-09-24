	thumb_func_start HostileCreature__20
HostileCreature__20
	push {r4, r5, lr}
	sub sp, #0xc
	adds r4, r0, #0
	bl m20__7DefaultFv
	ldr r1, _0802B274
	movs r0, #0x10
	ldr r1, [r1]
	ands r1, r0
	beq %171
	ldr r0, _0802B278
	ldr r0, [r0]
	bl sub_8023FE4
171
	adds r5, r4, #0
	adds r5, #0x80
	ldr r1, [r5, #0x24]
	ldr r0, [r4, #0x58]
	ldr r2, [r4, #0x5c]
	str r0, [sp, #4]
	subs r1, r2, r1
	str r1, [sp, #8]
	ldr r0, [r4, #0x2c]
	add r1, sp, #4
	bl sub_803FF24
	ldr r0, [r5, #0x1c]
	cmp r0, #0xf
	beq %172
	cmp r0, #0x10
	beq %172
	adds r0, r4, #0
	bl sub_802936C
172
	add sp, #0xc
	pop {r4, r5}
	pop {r3}
	bx r3

