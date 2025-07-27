    INCLUDE asm/macros.inc
    AREA text, CODE

	IMPORT __raise

	arm_func_start sub_803E24C
sub_803E24C ;@ 0x0803E24C
	LDR ip, _0803E254 ;@ =__raise
	bx ip
	ALIGN
_0803E254 DCDU __raise
	END