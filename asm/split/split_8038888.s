	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT FadeToBlack
	IMPORT GetNextGlobalFunction
	IMPORT gUnknown_03003448
	IMPORT gUnknown_03003458
	IMPORT gUnknown_0300345C
	IMPORT sub_8000DE6
	IMPORT sub_801810E
	IMPORT sub_801B170
	IMPORT sub_8028A7C

	thumb_func_start sub_8038888

sub_8038888
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, _08038C70
	movs r2, #0
	movs r1, #4
	ldr r0, [r0]
	bl sub_8028A7C
	bl GetNextGlobalFunction
	adds r7, r4, #0
	movs r1, #0x21
	lsls r1, r1, #4
	adds r7, #0xff
	adds r7, #0xe9
	adds r6, r4, r1
	adds r5, r4, #4
	cmp r0, #0xf
	bne %4
	bl sub_801810E
	ldr r0, _08038C74
	adds r1, r4, #0
	ldr r0, [r0]
	bl sub_8000DE6
	ldr r0, _08038C74
	adds r1, r5, #0
	ldr r0, [r0]
	bl sub_8000DE6
	ldrb r0, [r6, #5]
	movs r5, #0
	cmp r0, #0
	bls %2
1
	lsls r0, r5, #2
	adds r1, r0, r4
	ldr r0, _08038C74
	adds r1, #0xff
	adds r1, #0xed
	ldr r0, [r0]
	bl sub_8000DE6
	adds r5, #1
	ldrb r0, [r6, #5]
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r0, r5
	bhi %1
2
	ldr r0, _08038C74
	adds r1, r7, #0
	ldr r0, [r0]
	bl sub_8000DE6
	ldr r0, _08038C78
	ldr r0, [r0]
	bl sub_801B170
3
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
4
	bl FadeToBlack
	ldr r0, _08038C74
	adds r1, r4, #0
	ldr r0, [r0]
	bl sub_8000DE6
	ldr r0, _08038C74
	adds r1, r5, #0
	ldr r0, [r0]
	bl sub_8000DE6
	ldrb r0, [r6, #5]
	movs r5, #0
	cmp r0, #0
	bls %6
5
	lsls r0, r5, #2
	adds r1, r0, r4
	ldr r0, _08038C74
	adds r1, #0xff
	adds r1, #0xed
	ldr r0, [r0]
	bl sub_8000DE6
	adds r5, #1
	ldrb r0, [r6, #5]
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r0, r5
	bhi %5
6
	ldr r0, _08038C74
	adds r1, r7, #0
	ldr r0, [r0]
	bl sub_8000DE6
	b %3

	ALIGN
_08038C70 DCDU gUnknown_0300345C
_08038C74 DCDU gUnknown_03003448
_08038C78 DCDU gUnknown_03003458

	END
