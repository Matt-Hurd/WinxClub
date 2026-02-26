	INCLUDE asm/macros.inc
	AREA text, CODE

	thumb_func_start sub_80186D8

sub_80186D8
	push {r4, r5, r6, r7, lr}
	ldr r3, [r0, #4]
	ldr r7, [r1, #8]
	adds r6, r3, #0
	ldr r4, [r0, #8]
	muls r6, r7
	ldr r5, [r1, #4]
	mov ip, r7
	adds r7, r4, #0
	muls r7, r5
	subs r6, r6, r7
	ldr r0, [r0]
	mov lr, r6
	ldr r1, [r1]
	adds r6, r0, #0
	mov r7, ip
	muls r4, r1
	muls r6, r7
	subs r4, r6, r4
	muls r1, r3
	muls r0, r5
	subs r0, r0, r1
	str r0, [r2, #8]
	str r4, [r2, #4]
	mov r6, lr
	str r6, [r2]
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	END
