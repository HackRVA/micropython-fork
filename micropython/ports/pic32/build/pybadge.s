	.file	1 "pybadge.c"
	.section .mdebug.abi32
	.previous
	.gnu_attribute 4, 3
	.section	.text,code
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	pybadge_LCDputPixel
	.type	pybadge_LCDputPixel, @function
pybadge_LCDputPixel:
	.frame	$sp,32,$31		# vars= 0, regs= 4/0, args= 16, gp= 0
	.mask	0x80070000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-32
	sw	$31,28($sp)
	sw	$18,24($sp)
	sw	$17,20($sp)
	sw	$16,16($sp)
	move	$16,$5
	jal	mp_obj_get_int
	move	$17,$6

	move	$18,$2
	jal	mp_obj_get_int
	move	$4,$16

	move	$16,$2
	jal	mp_obj_get_int
	move	$4,$17

	andi	$4,$18,0x00ff
	andi	$5,$16,0x00ff
	jal	LCDputPixel
	andi	$6,$2,0x00ff

	lui	$2,%hi(mp_const_none_obj)
	addiu	$2,$2,%lo(mp_const_none_obj)
	lw	$31,28($sp)
	lw	$18,24($sp)
	lw	$17,20($sp)
	lw	$16,16($sp)
	j	$31
	addiu	$sp,$sp,32

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	pybadge_LCDputPixel
	.size	pybadge_LCDputPixel, .-pybadge_LCDputPixel
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	pybadge_LCDcolor
	.type	pybadge_LCDcolor, @function
pybadge_LCDcolor:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24
	sw	$31,20($sp)
	jal	mp_obj_get_int
	nop

	jal	LCDcolor
	andi	$4,$2,0x00ff

	lui	$2,%hi(mp_const_none_obj)
	addiu	$2,$2,%lo(mp_const_none_obj)
	lw	$31,20($sp)
	j	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	pybadge_LCDcolor
	.size	pybadge_LCDcolor, .-pybadge_LCDcolor
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	pybadge_LCDBars
	.type	pybadge_LCDBars, @function
pybadge_LCDBars:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24
	sw	$31,20($sp)
	jal	LCDBars
	nop

	lui	$2,%hi(mp_const_none_obj)
	addiu	$2,$2,%lo(mp_const_none_obj)
	lw	$31,20($sp)
	j	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	pybadge_LCDBars
	.size	pybadge_LCDBars, .-pybadge_LCDBars
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	pybadge_FbLine
	.type	pybadge_FbLine, @function
pybadge_FbLine:
	.frame	$sp,32,$31		# vars= 0, regs= 3/0, args= 16, gp= 0
	.mask	0x80030000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-32
	sw	$31,28($sp)
	sw	$17,24($sp)
	sw	$16,20($sp)
	jal	mp_obj_get_int
	move	$16,$5

	move	$17,$2
	jal	mp_obj_get_int
	move	$4,$16

	andi	$4,$17,0x00ff
	jal	FbLine1
	andi	$5,$2,0x00ff

	lui	$2,%hi(mp_const_none_obj)
	addiu	$2,$2,%lo(mp_const_none_obj)
	lw	$31,28($sp)
	lw	$17,24($sp)
	lw	$16,20($sp)
	j	$31
	addiu	$sp,$sp,32

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	pybadge_FbLine
	.size	pybadge_FbLine, .-pybadge_FbLine
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	pybadge_FbPushBuffer
	.type	pybadge_FbPushBuffer, @function
pybadge_FbPushBuffer:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24
	sw	$31,20($sp)
	jal	FbPushBuffer
	nop

	lui	$2,%hi(mp_const_none_obj)
	addiu	$2,$2,%lo(mp_const_none_obj)
	lw	$31,20($sp)
	j	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	pybadge_FbPushBuffer
	.size	pybadge_FbPushBuffer, .-pybadge_FbPushBuffer
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	pybadge_FbSwapBuffers
	.type	pybadge_FbSwapBuffers, @function
pybadge_FbSwapBuffers:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24
	sw	$31,20($sp)
	jal	FbSwapBuffers
	nop

	lui	$2,%hi(mp_const_none_obj)
	addiu	$2,$2,%lo(mp_const_none_obj)
	lw	$31,20($sp)
	j	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	pybadge_FbSwapBuffers
	.size	pybadge_FbSwapBuffers, .-pybadge_FbSwapBuffers
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	pybadge_FbWriteString
	.type	pybadge_FbWriteString, @function
pybadge_FbWriteString:
	.frame	$sp,32,$31		# vars= 0, regs= 3/0, args= 16, gp= 0
	.mask	0x80030000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-32
	sw	$31,28($sp)
	sw	$17,24($sp)
	sw	$16,20($sp)
	jal	mp_obj_str_get_str
	move	$16,$5

	move	$17,$2
	jal	mp_obj_get_int
	move	$4,$16

	move	$4,$17
	jal	FbWriteString
	andi	$5,$2,0x00ff

	lui	$2,%hi(mp_const_none_obj)
	addiu	$2,$2,%lo(mp_const_none_obj)
	lw	$31,28($sp)
	lw	$17,24($sp)
	lw	$16,20($sp)
	j	$31
	addiu	$sp,$sp,32

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	pybadge_FbWriteString
	.size	pybadge_FbWriteString, .-pybadge_FbWriteString
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	pybadge_FbWriteLine
	.type	pybadge_FbWriteLine, @function
pybadge_FbWriteLine:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24
	sw	$31,20($sp)
	jal	mp_obj_str_get_str
	nop

	jal	FbWriteLine
	move	$4,$2

	lui	$2,%hi(mp_const_none_obj)
	addiu	$2,$2,%lo(mp_const_none_obj)
	lw	$31,20($sp)
	j	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	pybadge_FbWriteLine
	.size	pybadge_FbWriteLine, .-pybadge_FbWriteLine
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	pybadge_FbPoint
	.type	pybadge_FbPoint, @function
pybadge_FbPoint:
	.frame	$sp,32,$31		# vars= 0, regs= 3/0, args= 16, gp= 0
	.mask	0x80030000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-32
	sw	$31,28($sp)
	sw	$17,24($sp)
	sw	$16,20($sp)
	jal	mp_obj_get_int
	move	$16,$5

	move	$17,$2
	jal	mp_obj_get_int
	move	$4,$16

	andi	$4,$17,0x00ff
	jal	FbPoint
	andi	$5,$2,0x00ff

	lui	$2,%hi(mp_const_none_obj)
	addiu	$2,$2,%lo(mp_const_none_obj)
	lw	$31,28($sp)
	lw	$17,24($sp)
	lw	$16,20($sp)
	j	$31
	addiu	$sp,$sp,32

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	pybadge_FbPoint
	.size	pybadge_FbPoint, .-pybadge_FbPoint
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	pybadge_FbCharacter
	.type	pybadge_FbCharacter, @function
pybadge_FbCharacter:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24
	sw	$31,20($sp)
	jal	mp_obj_get_int
	nop

	jal	FbCharacter
	andi	$4,$2,0x00ff

	lui	$2,%hi(mp_const_none_obj)
	addiu	$2,$2,%lo(mp_const_none_obj)
	lw	$31,20($sp)
	j	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	pybadge_FbCharacter
	.size	pybadge_FbCharacter, .-pybadge_FbCharacter
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	pybadge_FbBackgroundColor
	.type	pybadge_FbBackgroundColor, @function
pybadge_FbBackgroundColor:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24
	sw	$31,20($sp)
	jal	mp_obj_get_int
	nop

	jal	FbBackgroundColor
	andi	$4,$2,0x00ff

	lui	$2,%hi(mp_const_none_obj)
	addiu	$2,$2,%lo(mp_const_none_obj)
	lw	$31,20($sp)
	j	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	pybadge_FbBackgroundColor
	.size	pybadge_FbBackgroundColor, .-pybadge_FbBackgroundColor
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	pybadge_FbColor
	.type	pybadge_FbColor, @function
pybadge_FbColor:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24
	sw	$31,20($sp)
	jal	mp_obj_get_int
	nop

	jal	FbColor
	andi	$4,$2,0xffff

	lui	$2,%hi(mp_const_none_obj)
	addiu	$2,$2,%lo(mp_const_none_obj)
	lw	$31,20($sp)
	j	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	pybadge_FbColor
	.size	pybadge_FbColor, .-pybadge_FbColor
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	pybadge_FbClear
	.type	pybadge_FbClear, @function
pybadge_FbClear:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24
	sw	$31,20($sp)
	jal	FbClear
	nop

	lui	$2,%hi(mp_const_none_obj)
	addiu	$2,$2,%lo(mp_const_none_obj)
	lw	$31,20($sp)
	j	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	pybadge_FbClear
	.size	pybadge_FbClear, .-pybadge_FbClear
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	pybadge_FbMoveRelative
	.type	pybadge_FbMoveRelative, @function
pybadge_FbMoveRelative:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24
	sw	$31,20($sp)
	andi	$4,$4,0x00ff
	jal	FbMoveRelative
	andi	$5,$5,0x00ff

	lui	$2,%hi(mp_const_none_obj)
	addiu	$2,$2,%lo(mp_const_none_obj)
	lw	$31,20($sp)
	j	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	pybadge_FbMoveRelative
	.size	pybadge_FbMoveRelative, .-pybadge_FbMoveRelative
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	pybadge_FbMove
	.type	pybadge_FbMove, @function
pybadge_FbMove:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24
	sw	$31,20($sp)
	andi	$4,$4,0x00ff
	jal	FbMove
	andi	$5,$5,0x00ff

	lui	$2,%hi(mp_const_none_obj)
	addiu	$2,$2,%lo(mp_const_none_obj)
	lw	$31,20($sp)
	j	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	pybadge_FbMove
	.size	pybadge_FbMove, .-pybadge_FbMove
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	pybadge_FbMoveY
	.type	pybadge_FbMoveY, @function
pybadge_FbMoveY:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24
	sw	$31,20($sp)
	jal	mp_obj_get_int
	nop

	jal	FbMoveY
	andi	$4,$2,0x00ff

	lui	$2,%hi(mp_const_none_obj)
	addiu	$2,$2,%lo(mp_const_none_obj)
	lw	$31,20($sp)
	j	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	pybadge_FbMoveY
	.size	pybadge_FbMoveY, .-pybadge_FbMoveY
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	pybadge_FbMoveX
	.type	pybadge_FbMoveX, @function
pybadge_FbMoveX:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24
	sw	$31,20($sp)
	jal	mp_obj_get_int
	nop

	jal	FbMoveX
	andi	$4,$2,0x00ff

	lui	$2,%hi(mp_const_none_obj)
	addiu	$2,$2,%lo(mp_const_none_obj)
	lw	$31,20($sp)
	j	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	pybadge_FbMoveX
	.size	pybadge_FbMoveX, .-pybadge_FbMoveX
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	pybadge_backlight
	.type	pybadge_backlight, @function
pybadge_backlight:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24
	sw	$31,20($sp)
	jal	mp_obj_get_int
	nop

	jal	backlight
	andi	$4,$2,0x00ff

	lui	$2,%hi(mp_const_none_obj)
	addiu	$2,$2,%lo(mp_const_none_obj)
	lw	$31,20($sp)
	j	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	pybadge_backlight
	.size	pybadge_backlight, .-pybadge_backlight
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	pybadge_flare
	.type	pybadge_flare, @function
pybadge_flare:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24
	sw	$31,20($sp)
	jal	mp_obj_get_int
	nop

	jal	flare_leds
	andi	$4,$2,0x00ff

	lui	$2,%hi(mp_const_none_obj)
	addiu	$2,$2,%lo(mp_const_none_obj)
	lw	$31,20($sp)
	j	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	pybadge_flare
	.size	pybadge_flare, .-pybadge_flare
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	pybadge_blue
	.type	pybadge_blue, @function
pybadge_blue:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24
	sw	$31,20($sp)
	jal	mp_obj_get_int
	nop

	jal	blue
	andi	$4,$2,0x00ff

	lui	$2,%hi(mp_const_none_obj)
	addiu	$2,$2,%lo(mp_const_none_obj)
	lw	$31,20($sp)
	j	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	pybadge_blue
	.size	pybadge_blue, .-pybadge_blue
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	pybadge_green
	.type	pybadge_green, @function
pybadge_green:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24
	sw	$31,20($sp)
	jal	mp_obj_get_int
	nop

	jal	green
	andi	$4,$2,0x00ff

	lui	$2,%hi(mp_const_none_obj)
	addiu	$2,$2,%lo(mp_const_none_obj)
	lw	$31,20($sp)
	j	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	pybadge_green
	.size	pybadge_green, .-pybadge_green
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	pybadge_red
	.type	pybadge_red, @function
pybadge_red:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24
	sw	$31,20($sp)
	jal	mp_obj_get_int
	nop

	jal	red
	andi	$4,$2,0x00ff

	lui	$2,%hi(mp_const_none_obj)
	addiu	$2,$2,%lo(mp_const_none_obj)
	lw	$31,20($sp)
	j	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	pybadge_red
	.size	pybadge_red, .-pybadge_red
	.globl	mp_module_pybadge
	.section	.rodata,code
	.align	2
	.type	mp_module_pybadge, @object
	.size	mp_module_pybadge, 8
mp_module_pybadge:
	.word	mp_type_module
	.word	mp_module_pybadge_globals
	.align	2
	.type	mp_module_pybadge_globals, @object
	.size	mp_module_pybadge_globals, 16
mp_module_pybadge_globals:
	.word	mp_type_dict
	.byte	191
	.byte	0
	.byte	0
	.byte	0
	.word	23
	.word	pybadge_globals_table
	.align	2
	.type	pybadge_globals_table, @object
	.size	pybadge_globals_table, 184
pybadge_globals_table:
	.word	110
	.word	750
	.word	226
	.word	pybadge_red_obj
	.word	230
	.word	pybadge_green_obj
	.word	234
	.word	pybadge_blue_obj
	.word	238
	.word	pybadge_flare_obj
	.word	242
	.word	pybadge_backlight_obj
	.word	246
	.word	pybadge_FbMoveX_obj
	.word	250
	.word	pybadge_FbMoveY_obj
	.word	254
	.word	pybadge_FbMove_obj
	.word	258
	.word	pybadge_FbMoveRelative_obj
	.word	262
	.word	pybadge_FbClear_obj
	.word	266
	.word	pybadge_FbColor_obj
	.word	270
	.word	pybadge_FbBackgroundColor_obj
	.word	274
	.word	pybadge_FbCharacter_obj
	.word	278
	.word	pybadge_FbPoint_obj
	.word	282
	.word	pybadge_FbWriteLine_obj
	.word	286
	.word	pybadge_FbWriteString_obj
	.word	290
	.word	pybadge_FbSwapBuffers_obj
	.word	294
	.word	pybadge_FbPushBuffer_obj
	.word	298
	.word	pybadge_FbLine_obj
	.word	302
	.word	pybadge_LCDBars_obj
	.word	306
	.word	pybadge_LCDcolor_obj
	.word	310
	.word	pybadge_LCDputPixel_obj
	.align	2
	.type	pybadge_red_obj, @object
	.size	pybadge_red_obj, 8
pybadge_red_obj:
	.word	mp_type_fun_builtin_1
	.word	pybadge_red
	.align	2
	.type	pybadge_green_obj, @object
	.size	pybadge_green_obj, 8
pybadge_green_obj:
	.word	mp_type_fun_builtin_1
	.word	pybadge_green
	.align	2
	.type	pybadge_blue_obj, @object
	.size	pybadge_blue_obj, 8
pybadge_blue_obj:
	.word	mp_type_fun_builtin_1
	.word	pybadge_blue
	.align	2
	.type	pybadge_flare_obj, @object
	.size	pybadge_flare_obj, 8
pybadge_flare_obj:
	.word	mp_type_fun_builtin_1
	.word	pybadge_flare
	.align	2
	.type	pybadge_backlight_obj, @object
	.size	pybadge_backlight_obj, 8
pybadge_backlight_obj:
	.word	mp_type_fun_builtin_1
	.word	pybadge_backlight
	.align	2
	.type	pybadge_FbMoveX_obj, @object
	.size	pybadge_FbMoveX_obj, 8
pybadge_FbMoveX_obj:
	.word	mp_type_fun_builtin_1
	.word	pybadge_FbMoveX
	.align	2
	.type	pybadge_FbMoveY_obj, @object
	.size	pybadge_FbMoveY_obj, 8
pybadge_FbMoveY_obj:
	.word	mp_type_fun_builtin_1
	.word	pybadge_FbMoveY
	.align	2
	.type	pybadge_FbMove_obj, @object
	.size	pybadge_FbMove_obj, 8
pybadge_FbMove_obj:
	.word	mp_type_fun_builtin_2
	.word	pybadge_FbMove
	.align	2
	.type	pybadge_FbMoveRelative_obj, @object
	.size	pybadge_FbMoveRelative_obj, 8
pybadge_FbMoveRelative_obj:
	.word	mp_type_fun_builtin_2
	.word	pybadge_FbMoveRelative
	.align	2
	.type	pybadge_FbClear_obj, @object
	.size	pybadge_FbClear_obj, 8
pybadge_FbClear_obj:
	.word	mp_type_fun_builtin_0
	.word	pybadge_FbClear
	.align	2
	.type	pybadge_FbColor_obj, @object
	.size	pybadge_FbColor_obj, 8
pybadge_FbColor_obj:
	.word	mp_type_fun_builtin_1
	.word	pybadge_FbColor
	.align	2
	.type	pybadge_FbBackgroundColor_obj, @object
	.size	pybadge_FbBackgroundColor_obj, 8
pybadge_FbBackgroundColor_obj:
	.word	mp_type_fun_builtin_1
	.word	pybadge_FbBackgroundColor
	.align	2
	.type	pybadge_FbCharacter_obj, @object
	.size	pybadge_FbCharacter_obj, 8
pybadge_FbCharacter_obj:
	.word	mp_type_fun_builtin_1
	.word	pybadge_FbCharacter
	.align	2
	.type	pybadge_FbPoint_obj, @object
	.size	pybadge_FbPoint_obj, 8
pybadge_FbPoint_obj:
	.word	mp_type_fun_builtin_2
	.word	pybadge_FbPoint
	.align	2
	.type	pybadge_FbWriteLine_obj, @object
	.size	pybadge_FbWriteLine_obj, 8
pybadge_FbWriteLine_obj:
	.word	mp_type_fun_builtin_1
	.word	pybadge_FbWriteLine
	.align	2
	.type	pybadge_FbWriteString_obj, @object
	.size	pybadge_FbWriteString_obj, 8
pybadge_FbWriteString_obj:
	.word	mp_type_fun_builtin_2
	.word	pybadge_FbWriteString
	.align	2
	.type	pybadge_FbSwapBuffers_obj, @object
	.size	pybadge_FbSwapBuffers_obj, 8
pybadge_FbSwapBuffers_obj:
	.word	mp_type_fun_builtin_0
	.word	pybadge_FbSwapBuffers
	.align	2
	.type	pybadge_FbPushBuffer_obj, @object
	.size	pybadge_FbPushBuffer_obj, 8
pybadge_FbPushBuffer_obj:
	.word	mp_type_fun_builtin_0
	.word	pybadge_FbPushBuffer
	.align	2
	.type	pybadge_FbLine_obj, @object
	.size	pybadge_FbLine_obj, 8
pybadge_FbLine_obj:
	.word	mp_type_fun_builtin_2
	.word	pybadge_FbLine
	.align	2
	.type	pybadge_LCDBars_obj, @object
	.size	pybadge_LCDBars_obj, 8
pybadge_LCDBars_obj:
	.word	mp_type_fun_builtin_0
	.word	pybadge_LCDBars
	.align	2
	.type	pybadge_LCDcolor_obj, @object
	.size	pybadge_LCDcolor_obj, 8
pybadge_LCDcolor_obj:
	.word	mp_type_fun_builtin_1
	.word	pybadge_LCDcolor
	.align	2
	.type	pybadge_LCDputPixel_obj, @object
	.size	pybadge_LCDputPixel_obj, 8
pybadge_LCDputPixel_obj:
	.word	mp_type_fun_builtin_3
	.word	pybadge_LCDputPixel
	.ident	"GCC: (Microchip Technology) 4.5.2 MPLAB XC32 Compiler v1.34"
# Begin MCHP vector dispatch table
# End MCHP vector dispatch table
# Microchip Technology PIC32 MCU configuration words
