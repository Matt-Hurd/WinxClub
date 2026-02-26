	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT DefaultScriptGroups__08

	thumb_func_start sub_80200A4

sub_80200A4
	push {r3, lr}
	ldr r2, [r1]
	ldrb r2, [r2]
	cmp r2, #0x1c
	beq %33
	cmp r2, #0x21
	beq %31
	cmp r2, #0x25
	beq %31
	cmp r2, #0x2d
	bne %36
31
	movs r0, #1
32
	add sp, #4
	pop {r3}
	bx r3
33
	ldr r2, [r0, #0x78]
	cmp r2, #0
	beq %34
	adds r0, #0xff
	adds r0, #1
	ldr r0, [r0, #0x28]
	cmp r0, r1
	beq %35
34
	movs r0, #1
	b %32
35
	movs r0, #0
	b %32
36
	bl DefaultScriptGroups__08
	b %32

	END
