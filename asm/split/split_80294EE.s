	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT __16__rt_sdiv
	IMPORT __call_via_r1
	IMPORT rand

	non_word_aligned_thumb_func_start sub_80294EE

sub_80294EE
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r1]
	adds r4, r5, #0
	adds r4, #0x80
	ldrb r0, [r0, #4]
	ldr r1, [r4, #0x2c]
	lsrs r1, r1, #3
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1d
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r4, #0x2c]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1d
	cmp r0, #0xb
	bhs %24
	add r3, pc, #0x4
	ldrb r3, [r3, r0]
	lsls r3, r3, #1
	add pc, r3
13
	DCB 0x05
14
	DCB 0x05
15
	DCB 0x1E
16
	DCB 0x1E
17
	DCB 0x1E
18
	DCB 0x1E
19
	DCB 0x41
20
	DCB 0x30
21
	DCB 0x30
22
	DCB 0x30
23
	DCB 0x30, 0x00
loc_8029524
	bl rand
	adds r1, r0, #0
	ldr r0, [r4, #0x30]
	lsls r0, r0, #0xd
	lsrs r0, r0, #0x1d
	bl __16__rt_sdiv
	ldr r0, [r4, #0x2c]
	lsls r1, r1, #0x1d
	lsrs r0, r0, #3
	lsls r0, r0, #3
	lsrs r1, r1, #0x1d
	orrs r0, r1
	str r0, [r4, #0x2c]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1a
	adds r0, r0, r5
	adds r0, #0xb8
	ldr r1, [r0]
	movs r2, #1
	lsls r2, r2, #0x16
	bics r1, r2
	str r1, [r0]
	b %24
loc_8029556
	ldr r0, [r4, #0x2c]
	movs r2, #1
	lsrs r1, r0, #3
	adds r0, #6
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1d
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r4, #0x2c]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1a
	adds r0, r0, r5
	adds r0, #0xb8
	ldr r1, [r0]
	lsls r2, r2, #0x16
	bics r1, r2
	str r1, [r0]
	b %24
loc_802957a
	ldr r0, [r4, #0x2c]
	movs r2, #1
	lsrs r1, r0, #3
	adds r0, #1
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1d
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r4, #0x2c]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1a
	adds r0, r0, r5
	adds r0, #0xb8
	ldr r1, [r0]
	lsls r2, r2, #0x16
	orrs r1, r2
	str r1, [r0]
24
	ldr r0, [r4, #0x2c]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1a
	adds r0, r0, r5
	adds r0, #0x80
	ldr r0, [r0, #0x38]
	lsls r0, r0, #0x1f
	bmi %26
	ldr r1, [r5]
	adds r0, r5, #0
	ldr r2, [r1, #0x58]
	adds r1, r2, r1
	bl __call_via_r1
25
	pop {r3, r4, r5}
	pop {r3}
	bx r3
26
	ldr r1, [r5]
	adds r0, r5, #0
	ldr r2, [r1, #0x5c]
	adds r1, r2, r1
	bl __call_via_r1
	b %25

	END
