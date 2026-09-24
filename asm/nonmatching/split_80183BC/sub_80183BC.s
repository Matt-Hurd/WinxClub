	thumb_func_start sub_80183BC
	push {r4}
	movs r4, #1
	lsls r4, r4, #0xf
	lsls r2, r4, #0xf
	movs r1, #0
	cmp r0, r2
	blo %1
	subs r0, r0, r2
	lsrs r1, r2, #0xe
1
	movs r3, #1
	lsls r3, r3, #0xe
	adds r2, r1, r3
	lsls r2, r2, #0xe
	cmp r2, r0
	bhi %2
	subs r0, r0, r2
	orrs r1, r4
2
	movs r4, #1
	lsls r4, r4, #0xd
	adds r2, r1, r4
	lsls r2, r2, #0xd
	cmp r2, r0
	bhi %3
	subs r0, r0, r2
	orrs r1, r3
3
	movs r3, #1
	lsls r3, r3, #0xc
	adds r2, r1, r3
	lsls r2, r2, #0xc
	cmp r2, r0
	bhi %4
	subs r0, r0, r2
	orrs r1, r4
4
	movs r4, #1
	lsls r4, r4, #0xb
	adds r2, r1, r4
	lsls r2, r2, #0xb
	cmp r2, r0
	bhi %5
	subs r0, r0, r2
	orrs r1, r3
5
	movs r3, #1
	lsls r3, r3, #0xa
	adds r2, r1, r3
	lsls r2, r2, #0xa
	cmp r2, r0
	bhi %6
	subs r0, r0, r2
	orrs r1, r4
6
	movs r4, #1
	lsls r4, r4, #9
	adds r2, r1, r4
	lsls r2, r2, #9
	cmp r2, r0
	bhi %7
	subs r0, r0, r2
	orrs r1, r3
7
	adds r2, r1, #0
	adds r2, #0xff
	adds r2, #1
	lsls r2, r2, #8
	cmp r2, r0
	bhi %8
	subs r0, r0, r2
	orrs r1, r4
8
	adds r2, r1, #0
	adds r2, #0x80
	lsls r2, r2, #7
	cmp r2, r0
	bhi %9
	subs r0, r0, r2
	movs r2, #0xff
	adds r2, #1
	orrs r1, r2
9
	adds r2, r1, #0
	adds r2, #0x40
	lsls r2, r2, #6
	cmp r2, r0
	bhi %10
	subs r0, r0, r2
	movs r2, #0x80
	orrs r1, r2
10
	adds r2, r1, #0
	adds r2, #0x20
	lsls r2, r2, #5
	cmp r2, r0
	bhi %11
	subs r0, r0, r2
	movs r2, #0x40
	orrs r1, r2
11
	adds r2, r1, #0
	adds r2, #0x10
	lsls r2, r2, #4
	cmp r2, r0
	bhi %12
	subs r0, r0, r2
	movs r2, #0x20
	orrs r1, r2
12
	adds r2, r1, #0
	adds r2, #8
	lsls r2, r2, #3
	cmp r2, r0
	bhi %13
	subs r0, r0, r2
	movs r2, #0x10
	orrs r1, r2
13
	adds r2, r1, #4
	lsls r2, r2, #2
	cmp r2, r0
	bhi %14
	subs r0, r0, r2
	movs r2, #8
	orrs r1, r2
14
	adds r2, r1, #2
	lsls r2, r2, #1
	cmp r2, r0
	bhi %15
	subs r0, r0, r2
	movs r2, #4
	orrs r1, r2
15
	adds r2, r1, #1
	cmp r0, r2
	blo %16
	movs r0, #2
	orrs r1, r0
16
	lsrs r0, r1, #1
	pop {r4}
	bx lr
	thumb_func_end sub_80183BC

