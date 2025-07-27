    INCLUDE asm/macros.inc
    AREA text, CODE

	IMPORT __rt_lib_shutdown

	arm_func_start sub_803E240
sub_803E240 ;@ 0x0803E240
	LDR ip, _0803E248 ;@ =__rt_lib_shutdown
	bx ip
	ALIGN
_0803E248 DCDU __rt_lib_shutdown
	END