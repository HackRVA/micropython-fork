	.file	1 "mp_main.c"
	.section .mdebug.abi32
	.previous
	.gnu_attribute 4, 3
	.section	.text,code
	.align	2
	.globl	mp_builtin_open
	.set	nomips16
	.set	nomicromips
	.ent	mp_builtin_open
	.type	mp_builtin_open, @function
mp_builtin_open:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	lui	$2,%hi(mp_const_none_obj)
	j	$31
	addiu	$2,$2,%lo(mp_const_none_obj)

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	mp_builtin_open
	.size	mp_builtin_open, .-mp_builtin_open
	.align	2
	.globl	do_str
	.set	nomips16
	.set	nomicromips
	.ent	do_str
	.type	do_str, @function
do_str:
	.frame	$sp,232,$31		# vars= 208, regs= 2/0, args= 16, gp= 0
	.mask	0x80010000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-232
	sw	$31,228($sp)
	sw	$16,224($sp)
	sw	$4,232($sp)
	sw	$5,236($sp)
	jal	nlr_push_tail
	addiu	$4,$sp,16

	jal	setjmp
	addiu	$4,$sp,24

	bnel	$2,$0,.L3
	lui	$4,%hi(mp_plat_print)

	jal	strlen
	lw	$4,232($sp)

	li	$4,54			# 0x36
	lw	$5,232($sp)
	move	$6,$2
	jal	mp_lexer_new_from_str_len
	move	$7,$0

	lw	$16,0($2)
	addiu	$4,$sp,216
	move	$5,$2
	jal	mp_parse
	lw	$6,236($sp)

	addiu	$4,$sp,216
	move	$5,$16
	move	$6,$0
	jal	mp_compile
	li	$7,1			# 0x1

	jal	mp_call_function_0
	move	$4,$2

	jal	nlr_pop
	nop

	j	.L5
	lw	$31,228($sp)

.L3:
	addiu	$4,$4,%lo(mp_plat_print)
	jal	mp_obj_print_exception
	lw	$5,20($sp)

	lw	$31,228($sp)
.L5:
	lw	$16,224($sp)
	j	$31
	addiu	$sp,$sp,232

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	do_str
	.size	do_str, .-do_str
	.align	2
	.globl	mp_lexer_new_from_file
	.set	nomips16
	.set	nomicromips
	.ent	mp_lexer_new_from_file
	.type	mp_lexer_new_from_file, @function
mp_lexer_new_from_file:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24
	sw	$31,20($sp)
	jal	mp_raise_OSError
	li	$4,2			# 0x2

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	mp_lexer_new_from_file
	.size	mp_lexer_new_from_file, .-mp_lexer_new_from_file
	.align	2
	.globl	mp_import_stat
	.set	nomips16
	.set	nomicromips
	.ent	mp_import_stat
	.type	mp_import_stat, @function
mp_import_stat:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	j	$31
	move	$2,$0

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	mp_import_stat
	.size	mp_import_stat, .-mp_import_stat
	.align	2
	.globl	nlr_jump_fail
	.set	nomips16
	.set	nomicromips
	.ent	nlr_jump_fail
	.type	nlr_jump_fail, @function
nlr_jump_fail:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
.L9:
	j	.L9
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	nlr_jump_fail
	.size	nlr_jump_fail, .-nlr_jump_fail
	.align	2
	.globl	__fatal_error
	.set	nomips16
	.set	nomicromips
	.ent	__fatal_error
	.type	__fatal_error, @function
__fatal_error:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
.L11:
	j	.L11
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	__fatal_error
	.size	__fatal_error, .-__fatal_error
	.section	.rodata,code
	.align	2
.LC0:
	.ascii	"Assertion failed\000"
	.section	.text,code
	.align	2
	.weak	__assert_func
	.set	nomips16
	.set	nomicromips
	.ent	__assert_func
	.type	__assert_func, @function
__assert_func:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24
	sw	$31,20($sp)
	lui	$4,%hi(.LC0)
	jal	__fatal_error
	addiu	$4,$4,%lo(.LC0)

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	__assert_func
	.size	__assert_func, .-__assert_func
	.align	2
	.globl	_vprintf_0
	.set	nomips16
	.set	nomicromips
	.ent	_vprintf_0
	.type	_vprintf_0, @function
_vprintf_0:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	j	$31
	move	$2,$0

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	_vprintf_0
	.size	_vprintf_0, .-_vprintf_0
	.align	2
	.globl	_vsnprintf_0
	.set	nomips16
	.set	nomicromips
	.ent	_vsnprintf_0
	.type	_vsnprintf_0, @function
_vsnprintf_0:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	j	$31
	move	$2,$0

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	_vsnprintf_0
	.size	_vsnprintf_0, .-_vsnprintf_0
	.align	2
	.globl	_printf_0
	.set	nomips16
	.set	nomicromips
	.ent	_printf_0
	.type	_printf_0, @function
_printf_0:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	sw	$5,4($sp)
	sw	$6,8($sp)
	sw	$7,12($sp)
	j	$31
	move	$2,$0

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	_printf_0
	.size	_printf_0, .-_printf_0
	.align	2
	.globl	putchar
	.set	nomips16
	.set	nomicromips
	.ent	putchar
	.type	putchar, @function
putchar:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	j	$31
	move	$2,$0

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	putchar
	.size	putchar, .-putchar
	.align	2
	.globl	puts
	.set	nomips16
	.set	nomicromips
	.ent	puts
	.type	puts, @function
puts:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	j	$31
	move	$2,$0

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	puts
	.size	puts, .-puts
	.globl	mp_builtin_open_obj
	.section	.rodata,code
	.align	2
	.type	mp_builtin_open_obj, @object
	.size	mp_builtin_open_obj, 12
mp_builtin_open_obj:
	.word	mp_type_fun_builtin_var
	.word	262143
	.word	mp_builtin_open
	.ident	"GCC: (Microchip Technology) 4.5.2 MPLAB XC32 Compiler v1.34"
# Begin MCHP vector dispatch table
# End MCHP vector dispatch table
# Microchip Technology PIC32 MCU configuration words
