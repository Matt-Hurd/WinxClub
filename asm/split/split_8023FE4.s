	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT __16__rt_sdiv
	IMPORT gPlayerEntity
	IMPORT gUnknown_03003EA0
	IMPORT sub_800065C
	IMPORT sub_8000D5A

	thumb_func_start sub_8023FE4

sub_8023FE4
	push {r0, r4, r5, r6, r7, lr}
	ldr r0, _08024074
	movs r3, #8
	ldr r0, [r0]
	sub sp, #8
	adds r0, #0xa0
	ldrsb r1, [r0, r3]
	lsls r1, r1, #6
	movs r3, #9
	ldrsb r0, [r0, r3]
	bl __16__rt_sdiv
	lsls r6, r0, #0x10
	lsrs r6, r6, #0x10
	movs r4, #2
35
	lsls r0, r4, #4
	subs r0, #0x20
	cmp r0, r6
	bge %36
	subs r0, r6, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	b %37
36
	movs r0, #0
37
	ldr r2, _08024078
	adds r1, r2, #0
	cmp r0, #0x10
	bhs %38
	ldr r1, _0802407C
	adds r1, r0, r1
38
	subs r0, r2, r1
	ldr r1, _0802407C
	adds r0, r0, r1
	lsls r5, r0, #0x10
	ldr r1, [sp, #8]
	lsls r0, r4, #2
	adds r7, r0, r1
	lsrs r5, r5, #0x10
	adds r7, #0x80
	ldr r1, [r7, #0x30]
	ldr r0, _08024080
	str r1, [sp, #4]
	ldr r0, [r0]
	bl sub_8000D5A
	ldr r0, [r0, #0x20]
	ldr r1, [sp, #4]
	ldr r1, [r1, #0x10]
	subs r0, r1, r0
	asrs r0, r0, #3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r5
	beq %39
	adds r1, r5, #0
	ldr r0, [r7, #0x30]
	bl sub_800065C
39
	adds r4, #1
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	cmp r4, #6
	blo %35
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	ALIGN

	ALIGN
_08024074 DCDU gPlayerEntity
_08024078 DCDU 0x0000087D
_0802407C DCDU 0x0000086D
_08024080 DCDU gUnknown_03003EA0

	END
