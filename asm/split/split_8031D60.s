	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_0300333C

	thumb_func_start sub_8031D60

sub_8031D60
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	sub sp, #0xc
	str r1, [r4, #0x10]
	adds r0, r3, #0
	ldr r3, [r1, #0x2c]
	movs r7, #0xff
	str r3, [r4, #0x14]
	ldr r5, [r1, #0x30]
	lsls r7, r7, #0xb
	str r5, [r4, #0x18]
	ldrb r5, [r3, #5]
	ldr r6, [r4, #0x34]
	adds r3, #0x2c
	bics r6, r7
	lsls r5, r5, #0xb
	orrs r5, r6
	str r5, [r4, #0x34]
	ldr r5, [r3]
	ldr r3, [r3, #4]
	adds r7, r4, #0
	str r3, [r4, #0x20]
	adds r7, #0x1c
	adds r3, r0, #1
	str r5, [r4, #0x1c]
	bne %4
	ldr r0, [r1, #0x7c]
	ldr r1, [r4, #0x34]
	lsls r0, r0, #4
	lsrs r0, r0, #0x1c
	lsrs r1, r1, #8
	lsls r1, r1, #8
	orrs r0, r1
	str r0, [r4, #0x34]
	b %5
4
	ldr r1, [r4, #0x34]
	lsls r0, r0, #0x18
	lsrs r1, r1, #8
	lsls r1, r1, #8
	lsrs r0, r0, #0x18
	orrs r0, r1
	str r0, [r4, #0x34]
5
	movs r1, #0xf
	ldr r0, [r4, #0x34]
	lsls r1, r1, #0x16
	bics r0, r1
	lsls r1, r2, #0x1c
	lsrs r1, r1, #6
	orrs r0, r1
	str r0, [r4, #0x34]
	lsls r0, r0, #6
	lsrs r0, r0, #0x1c
	ldr r2, _08032100
	lsls r1, r0, #1
	ldrh r1, [r2, r1]
	cmp r0, #5
	str r1, [r4, #0x38]
	bhs %6
	add r3, pc, #0x8
	adds r3, r3, r0
	ldrh r3, [r3, r0]
	lsls r3, r3, #1
	add pc, r3
6
	b %32
7
	DCB 0x05, 0x00
8
	DCB 0x88, 0x00
9
	DCB 0x14, 0x01
10
	DCB 0xBC, 0x01
11
	DCB 0x3E, 0x02
loc_8031dea
	ldr r0, [r4, #0x34]
	lsls r1, r0, #0x18
	lsrs r1, r1, #0x18
	beq %15
	cmp r1, #1
	beq %12
	cmp r1, #2
	beq %13
	cmp r1, #3
	bne %14
	movs r2, #5
	ldr r1, [r4, #0x1c]
	lsls r2, r2, #0x11
	adds r1, r1, r2
	str r1, [r4, #0x1c]
	ldr r1, [r4, #0x20]
	movs r2, #3
	lsls r2, r2, #0x11
	adds r1, r1, r2
	str r1, [r4, #0x20]
	ldr r1, _08032104
	movs r2, #0xff
	str r1, [r4, #0x28]
	adds r1, r0, #0
	lsls r2, r2, #0xb
	movs r3, #1
	lsls r3, r3, #0xb
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	b %14
12
	movs r2, #3
	ldr r1, [r4, #0x1c]
	lsls r2, r2, #0x12
	subs r1, r1, r2
	str r1, [r4, #0x1c]
	ldr r1, [r4, #0x20]
	movs r2, #1
	lsls r2, r2, #0x13
	adds r1, r1, r2
	str r1, [r4, #0x20]
	lsrs r1, r2, #2
	movs r2, #0xff
	str r1, [r4, #0x28]
	adds r1, r0, #0
	lsls r2, r2, #0xb
	movs r3, #1
	lsls r3, r3, #0xb
	subs r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	b %14
13
	movs r2, #3
	ldr r1, [r4, #0x20]
	lsls r2, r2, #0x11
	adds r1, r1, r2
	str r1, [r4, #0x20]
	ldr r1, _08032104
	movs r2, #0xff
	str r1, [r4, #0x24]
	adds r1, r0, #0
	lsls r2, r2, #0xb
	movs r3, #1
	lsls r3, r3, #0xb
	subs r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
14
	b %16
15
	movs r2, #3
	ldr r1, [r4, #0x20]
	lsls r2, r2, #0x11
	adds r1, r1, r2
	str r1, [r4, #0x20]
	movs r1, #1
	lsls r1, r1, #0x11
	str r1, [r4, #0x24]
	movs r2, #0xff
	lsls r2, r2, #0xb
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	subs r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
16
	movs r1, #0xf
	ldr r0, [r4, #0x4c]
	lsls r1, r1, #9
	bics r0, r1
	movs r1, #5
	lsls r1, r1, #9
	adds r0, r0, r1
	movs r1, #0x1f
	lsls r1, r1, #0x1a
	bics r0, r1
	movs r1, #1
	lsls r1, r1, #0x1b
	adds r0, r0, r1
	ldr r1, [r4, #0x50]
	lsrs r1, r1, #3
	lsls r1, r1, #3
	adds r1, #2
	str r1, [r4, #0x50]
	ldr r1, _08032108
	ands r0, r1
	ldr r1, _0803210C
	adds r0, r0, r1
	str r0, [r4, #0x4c]
	ldr r0, _08032104
	movs r1, #7
	str r0, [r4, #0x44]
	movs r0, #0
	str r0, [r4, #0x3c]
	ldr r0, _08032110
	lsls r1, r1, #8
	str r0, [r4, #0x40]
	ldr r0, [r4, #0x34]
	bics r0, r1
	adds r0, #0xff
	adds r0, #1
	str r0, [r4, #0x34]
	ldr r0, _08032114
	str r0, [r4, #0x48]
	b %32
loc_8031ef0
	ldr r0, [r4, #0x34]
	lsls r1, r0, #0x18
	lsrs r1, r1, #0x18
	beq %20
	cmp r1, #1
	beq %17
	cmp r1, #2
	beq %18
	cmp r1, #3
	bne %19
	movs r2, #0xb
	ldr r1, [r4, #0x1c]
	lsls r2, r2, #0x11
	adds r1, r1, r2
	str r1, [r4, #0x1c]
	ldr r1, [r4, #0x20]
	movs r2, #3
	lsls r2, r2, #0x13
	adds r1, r1, r2
	str r1, [r4, #0x20]
	ldr r1, _08032118
	movs r2, #0xff
	str r1, [r4, #0x28]
	adds r1, r0, #0
	lsls r2, r2, #0xb
	movs r3, #1
	lsls r3, r3, #0xb
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	b %19
17
	movs r2, #0x15
	ldr r1, [r4, #0x1c]
	lsls r2, r2, #0x10
	subs r1, r1, r2
	str r1, [r4, #0x1c]
	ldr r1, [r4, #0x20]
	movs r2, #0x1f
	lsls r2, r2, #0x10
	adds r1, r1, r2
	str r1, [r4, #0x20]
	movs r1, #1
	lsls r1, r1, #0x10
	str r1, [r4, #0x28]
	movs r2, #0xff
	lsls r2, r2, #0xb
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	subs r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	b %19
18
	movs r2, #7
	ldr r1, [r4, #0x1c]
	lsls r2, r2, #0x11
	subs r1, r1, r2
	str r1, [r4, #0x1c]
	ldr r1, [r4, #0x20]
	movs r2, #0xf
	lsls r2, r2, #0x11
	adds r1, r1, r2
	str r1, [r4, #0x20]
	ldr r1, _08032118
	movs r2, #0xff
	str r1, [r4, #0x24]
	adds r1, r0, #0
	lsls r2, r2, #0xb
	movs r3, #1
	lsls r3, r3, #0xb
	subs r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
19
	b %21
20
	movs r2, #7
	ldr r1, [r4, #0x1c]
	lsls r2, r2, #0x11
	adds r1, r1, r2
	str r1, [r4, #0x1c]
	ldr r1, [r4, #0x20]
	lsls r2, r2, #1
	adds r1, r1, r2
	str r1, [r4, #0x20]
	movs r1, #1
	lsls r1, r1, #0x10
	str r1, [r4, #0x24]
	movs r2, #0xff
	lsls r2, r2, #0xb
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	subs r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
21
	movs r1, #0xf
	ldr r0, [r4, #0x4c]
	lsls r1, r1, #9
	bics r0, r1
	movs r1, #1
	lsls r1, r1, #0xb
	adds r0, r0, r1
	movs r1, #0x1f
	lsls r1, r1, #0x1a
	bics r0, r1
	movs r1, #3
	lsls r1, r1, #0x1a
	adds r0, r0, r1
	ldr r1, [r4, #0x50]
	lsrs r1, r1, #3
	lsls r1, r1, #3
	str r1, [r4, #0x50]
	ldr r1, _08032108
	ands r0, r1
	ldr r1, _0803211C
	adds r0, r0, r1
	str r0, [r4, #0x4c]
	ldr r0, _08032120
	movs r1, #7
	str r0, [r4, #0x44]
	movs r0, #0
	str r0, [r4, #0x3c]
	ldr r0, _08032124
	lsls r1, r1, #8
	str r0, [r4, #0x40]
	ldr r0, [r4, #0x34]
	bics r0, r1
	adds r0, #0xff
	adds r0, #1
	str r0, [r4, #0x34]
	ldr r0, _08032128
	str r0, [r4, #0x48]
	b %32
loc_8032008
	ldr r0, [r4, #0x34]
	lsls r1, r0, #0x18
	lsrs r1, r1, #0x18
	beq %25
	cmp r1, #1
	beq %22
	cmp r1, #2
	beq %23
	cmp r1, #3
	bne %24
	movs r2, #3
	ldr r1, [r4, #0x1c]
	lsls r2, r2, #0x10
	subs r1, r1, r2
	str r1, [r4, #0x1c]
	ldr r1, [r4, #0x20]
	movs r2, #7
	lsls r2, r2, #0x11
	adds r1, r1, r2
	str r1, [r4, #0x20]
	ldr r1, _0803212C
	movs r2, #0xff
	str r1, [r4, #0x28]
	adds r1, r0, #0
	lsls r2, r2, #0xb
	movs r3, #1
	lsls r3, r3, #0xb
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	b %24
22
	movs r2, #1
	ldr r1, [r4, #0x1c]
	lsls r2, r2, #0x11
	adds r1, r1, r2
	str r1, [r4, #0x1c]
	ldr r1, [r4, #0x20]
	movs r2, #0x11
	lsls r2, r2, #0x11
	adds r1, r1, r2
	str r1, [r4, #0x20]
	movs r1, #1
	lsls r1, r1, #0xf
	str r1, [r4, #0x28]
	movs r2, #0xff
	lsls r2, r2, #0xb
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	subs r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	b %24
23
	movs r2, #1
	ldr r1, [r4, #0x1c]
	lsls r2, r2, #0x13
	subs r1, r1, r2
	str r1, [r4, #0x1c]
	ldr r1, [r4, #0x20]
	movs r2, #0xd
	lsls r2, r2, #0x11
	adds r1, r1, r2
	str r1, [r4, #0x20]
	ldr r1, _0803212C
	movs r2, #0xff
	str r1, [r4, #0x24]
	adds r1, r0, #0
	lsls r2, r2, #0xb
	movs r3, #1
	lsls r3, r3, #0xb
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
24
	b %26
25
	movs r2, #1
	ldr r1, [r4, #0x1c]
	lsls r2, r2, #0x13
	adds r1, r1, r2
	str r1, [r4, #0x1c]
	ldr r1, [r4, #0x20]
	movs r2, #0xd
	lsls r2, r2, #0x11
	adds r1, r1, r2
	str r1, [r4, #0x20]
	movs r1, #1
	lsls r1, r1, #0xf
	str r1, [r4, #0x24]
	movs r2, #0xff
	lsls r2, r2, #0xb
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	subs r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
26
	movs r1, #0xf
	ldr r0, [r4, #0x4c]
	lsls r1, r1, #9
	bics r0, r1
	movs r1, #1
	lsls r1, r1, #0xb
	adds r0, r0, r1
	movs r1, #0x1f
	lsls r1, r1, #0x1a
	bics r0, r1
	movs r1, #3
	lsls r1, r1, #0x1a
	adds r0, r0, r1
	ldr r1, [r4, #0x50]
	lsrs r1, r1, #3
	lsls r1, r1, #3
	str r1, [r4, #0x50]
	ldr r1, _08032108
	b %27
	ALIGN

	ALIGN
_08032100 DCDU gUnknown_0300333C
_08032104 DCDU 0xFFFE0000
_08032108 DCDU 0xFC001FFF
_0803210C DCDU 0x00D5C000
_08032110 DCDU 0xFFEE0000
_08032114 DCDU 0x00028CCC
_08032118 DCDU 0xFFFF0000
_0803211C DCDU 0x02A0A000
_08032120 DCDU 0xFFFD0000
_08032124 DCDU 0xFFFC0000
_08032128 DCDU 0x0002A664
_0803212C DCDU 0xFFFF8000

	END
