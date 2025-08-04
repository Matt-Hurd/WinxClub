	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_03003444
	IMPORT sub_800EF2A
	IMPORT maybeLoadOrRenderBgImage
	IMPORT FadeToImage
	IMPORT FadeToBlack
	IMPORT SetNextGlobalFunction

	thumb_func_start sub_8017DC8
sub_8017DC8
	push {r3, lr}
	bl FadeToBlack
	add sp, #4
	pop {r3}
	bx r3

	thumb_func_start sub_8017DD4
sub_8017DD4
	push {r3, lr}
	add r0, pc, #0x54
	bl maybeLoadOrRenderBgImage
	bl FadeToImage
	add sp, #4
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_8017DE6
sub_8017DE6
	push {r3, r4, r5, lr}
	add r0, pc, #0x40
	bl maybeLoadOrRenderBgImage
	bl FadeToImage
	ldr r5, _08017E3C
	movs r4, #0
	ldr r0, [r5]
	adds r1, r4, #0
	ldr r2, [r0, #0x14]
	lsls r2, r2, #0x1c
	bmi %1
	ldrh r1, [r0, #6]
1
	lsls r0, r1, #0x10
	bne %4
2
	bl sub_800EF2A
	ldr r0, [r5]
	adds r1, r4, #0
	ldr r2, [r0, #0x14]
	lsls r2, r2, #0x1c
	bmi %3
	ldrh r1, [r0, #6]
3
	lsls r0, r1, #0x10
	beq %2
4
	movs r0, #0x10
	bl SetNextGlobalFunction
	bl FadeToBlack
	pop {r3, r4, r5}
	pop {r3}
	bx r3
	ALIGN
_08017E2C DCDU 0x69544742
_08017E30 DCDU 0x53656C74
_08017E34 DCDU 0x65657263
_08017E38 DCDU 0x0000006E
_08017E3C DCDU gUnknown_03003444
	END
