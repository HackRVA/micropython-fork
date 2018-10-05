	.file	1 "LCDcolor.c"
	.section .mdebug.abi32
	.previous
	.gnu_attribute 4, 3
	.section	.text,code
	.align	2
	.globl	LCDInitPins
	.set	nomips16
	.set	nomicromips
	.ent	LCDInitPins
	.type	LCDInitPins, @function
LCDInitPins:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	lui	$4,%hi(TRISC)
	lw	$2,%lo(TRISC)($4)
	ins	$2,$0,9,1
	sw	$2,%lo(TRISC)($4)
	lui	$3,%hi(LATC)
	lw	$2,%lo(LATC)($3)
	ins	$2,$0,9,1
	sw	$2,%lo(LATC)($3)
	lui	$2,%hi(CNPDC)
	lw	$6,%lo(CNPDC)($2)
	li	$5,1			# 0x1
	ins	$6,$5,9,1
	sw	$6,%lo(CNPDC)($2)
	lw	$6,%lo(TRISC)($4)
	ins	$6,$0,8,1
	sw	$6,%lo(TRISC)($4)
	lw	$6,%lo(LATC)($3)
	ins	$6,$0,8,1
	sw	$6,%lo(LATC)($3)
	lw	$6,%lo(CNPDC)($2)
	ins	$6,$5,8,1
	sw	$6,%lo(CNPDC)($2)
	lw	$6,%lo(TRISC)($4)
	ins	$6,$0,7,1
	sw	$6,%lo(TRISC)($4)
	lw	$6,%lo(LATC)($3)
	ins	$6,$0,7,1
	sw	$6,%lo(LATC)($3)
	lw	$6,%lo(CNPDC)($2)
	ins	$6,$5,7,1
	sw	$6,%lo(CNPDC)($2)
	lw	$6,%lo(TRISC)($4)
	ins	$6,$0,6,1
	sw	$6,%lo(TRISC)($4)
	lw	$4,%lo(LATC)($3)
	ins	$4,$0,6,1
	sw	$4,%lo(LATC)($3)
	lw	$3,%lo(CNPDC)($2)
	ins	$3,$5,6,1
	sw	$3,%lo(CNPDC)($2)
	lui	$4,%hi(TRISB)
	lw	$2,%lo(TRISB)($4)
	ins	$2,$0,9,1
	sw	$2,%lo(TRISB)($4)
	lui	$3,%hi(LATB)
	lw	$2,%lo(LATB)($3)
	ins	$2,$0,9,1
	sw	$2,%lo(LATB)($3)
	lui	$2,%hi(CNPDB)
	lw	$6,%lo(CNPDB)($2)
	ins	$6,$5,9,1
	sw	$6,%lo(CNPDB)($2)
	lw	$6,%lo(TRISB)($4)
	ins	$6,$0,8,1
	sw	$6,%lo(TRISB)($4)
	lw	$4,%lo(LATB)($3)
	ins	$4,$0,8,1
	sw	$4,%lo(LATB)($3)
	lw	$3,%lo(CNPDB)($2)
	ins	$3,$5,8,1
	sw	$3,%lo(CNPDB)($2)
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	LCDInitPins
	.size	LCDInitPins, .-LCDInitPins
	.align	2
	.globl	LCDDelay
	.set	nomips16
	.set	nomicromips
	.ent	LCDDelay
	.type	LCDDelay, @function
LCDDelay:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	li	$2,1000			# 0x3e8
	addiu	$2,$2,-1
.L5:
	bne	$2,$0,.L5
	addiu	$2,$2,-1

	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	LCDDelay
	.size	LCDDelay, .-LCDDelay
	.align	2
	.globl	LCDReset
	.set	nomips16
	.set	nomicromips
	.ent	LCDReset
	.type	LCDReset, @function
LCDReset:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24
	sw	$31,20($sp)
	lui	$2,%hi(LATB)
	lw	$3,%lo(LATB)($2)
	ins	$3,$0,8,1
	sw	$3,%lo(LATB)($2)
	lui	$3,%hi(LATC)
	lw	$4,%lo(LATC)($3)
	ins	$4,$0,8,1
	sw	$4,%lo(LATC)($3)
	lw	$5,%lo(LATC)($3)
	li	$4,1			# 0x1
	ins	$5,$4,8,1
	sw	$5,%lo(LATC)($3)
	lw	$3,%lo(LATB)($2)
	ins	$3,$4,8,1
	sw	$3,%lo(LATB)($2)
	jal	S6B33_init_device
	nop

	lw	$31,20($sp)
	j	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	LCDReset
	.size	LCDReset, .-LCDReset
	.align	2
	.globl	LCDcolor
	.set	nomips16
	.set	nomicromips
	.ent	LCDcolor
	.type	LCDcolor, @function
LCDcolor:
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
	andi	$17,$4,0xffff
	move	$4,$0
	move	$5,$0
	li	$6,131			# 0x83
	jal	S6B33_rect
	li	$7,131			# 0x83

	j	.L8
	move	$18,$0

.L9:
	jal	S6B33_pixel
	move	$4,$17

	addiu	$16,$16,-1
	andi	$16,$16,0x00ff
	bne	$16,$0,.L9
	li	$2,132			# 0x84

	addiu	$18,$18,1
	andi	$18,$18,0x00ff
	beq	$18,$2,.L7
	lw	$31,28($sp)

.L8:
	j	.L9
	li	$16,132			# 0x84

.L7:
	lw	$18,24($sp)
	lw	$17,20($sp)
	lw	$16,16($sp)
	j	$31
	addiu	$sp,$sp,32

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	LCDcolor
	.size	LCDcolor, .-LCDcolor
	.align	2
	.globl	LCDblack
	.set	nomips16
	.set	nomicromips
	.ent	LCDblack
	.type	LCDblack, @function
LCDblack:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24
	sw	$31,20($sp)
	jal	LCDcolor
	move	$4,$0

	lw	$31,20($sp)
	j	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	LCDblack
	.size	LCDblack, .-LCDblack
	.align	2
	.globl	LCDwhite
	.set	nomips16
	.set	nomicromips
	.ent	LCDwhite
	.type	LCDwhite, @function
LCDwhite:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24
	sw	$31,20($sp)
	jal	LCDcolor
	li	$4,65535			# 0xffff

	lw	$31,20($sp)
	j	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	LCDwhite
	.size	LCDwhite, .-LCDwhite
	.align	2
	.globl	LCDred
	.set	nomips16
	.set	nomicromips
	.ent	LCDred
	.type	LCDred, @function
LCDred:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24
	sw	$31,20($sp)
	jal	LCDcolor
	li	$4,63488			# 0xf800

	lw	$31,20($sp)
	j	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	LCDred
	.size	LCDred, .-LCDred
	.align	2
	.globl	LCDgreen
	.set	nomips16
	.set	nomicromips
	.ent	LCDgreen
	.type	LCDgreen, @function
LCDgreen:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24
	sw	$31,20($sp)
	jal	LCDcolor
	li	$4,2016			# 0x7e0

	lw	$31,20($sp)
	j	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	LCDgreen
	.size	LCDgreen, .-LCDgreen
	.align	2
	.globl	LCDblue
	.set	nomips16
	.set	nomicromips
	.ent	LCDblue
	.type	LCDblue, @function
LCDblue:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24
	sw	$31,20($sp)
	jal	LCDcolor
	li	$4,31			# 0x1f

	lw	$31,20($sp)
	j	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	LCDblue
	.size	LCDblue, .-LCDblue
	.align	2
	.globl	LCDBars
	.set	nomips16
	.set	nomicromips
	.ent	LCDBars
	.type	LCDBars, @function
LCDBars:
	.frame	$sp,56,$31		# vars= 0, regs= 9/0, args= 16, gp= 0
	.mask	0x80ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-56
	sw	$31,52($sp)
	sw	$23,48($sp)
	sw	$22,44($sp)
	sw	$21,40($sp)
	sw	$20,36($sp)
	sw	$19,32($sp)
	sw	$18,28($sp)
	sw	$17,24($sp)
	sw	$16,20($sp)
	move	$4,$0
	move	$5,$0
	li	$6,131			# 0x83
	jal	S6B33_rect
	li	$7,131			# 0x83

	li	$23,16			# 0x10
	li	$18,15			# 0xf
	li	$19,14			# 0xe
	li	$20,13			# 0xd
	li	$21,12			# 0xc
	j	.L18
	li	$22,11			# 0xb

.L51:
	andi	$16,$17,0xf
.L100:
	bne	$16,$0,.L98
	li	$2,1			# 0x1

	sltu	$2,$17,32
	beq	$2,$0,.L20
	nop

	jal	S6B33_pixel
	li	$4,65535			# 0xffff

	j	.L89
	li	$2,3			# 0x3

.L20:
	jal	S6B33_pixel
	li	$4,65535			# 0xffff

	li	$2,1			# 0x1
.L98:
	bne	$16,$2,.L99
	li	$2,2			# 0x2

	sltu	$2,$17,32
	beq	$2,$0,.L23
	nop

	jal	S6B33_pixel
	li	$4,65535			# 0xffff

	j	.L90
	li	$2,4			# 0x4

.L23:
	jal	S6B33_pixel
	li	$4,65535			# 0xffff

	li	$2,2			# 0x2
.L99:
	bne	$16,$2,.L89
	li	$2,3			# 0x3

	sltu	$2,$17,32
	beq	$2,$0,.L25
	nop

	jal	S6B33_pixel
	li	$4,65535			# 0xffff

	j	.L91
	li	$2,5			# 0x5

.L25:
	jal	S6B33_pixel
	move	$4,$0

	li	$2,3			# 0x3
.L89:
	bne	$16,$2,.L90
	li	$2,4			# 0x4

	sltu	$2,$17,32
	beq	$2,$0,.L27
	nop

	jal	S6B33_pixel
	li	$4,65535			# 0xffff

	j	.L92
	li	$2,6			# 0x6

.L27:
	jal	S6B33_pixel
	move	$4,$0

	li	$2,4			# 0x4
.L90:
	bne	$16,$2,.L91
	li	$2,5			# 0x5

	sltu	$2,$17,32
	beq	$2,$0,.L29
	nop

	jal	S6B33_pixel
	move	$4,$0

	j	.L93
	li	$2,7			# 0x7

.L29:
	jal	S6B33_pixel
	li	$4,63488			# 0xf800

	li	$2,5			# 0x5
.L91:
	bne	$16,$2,.L92
	li	$2,6			# 0x6

	sltu	$2,$17,32
	beq	$2,$0,.L31
	nop

	jal	S6B33_pixel
	move	$4,$0

	j	.L94
	li	$2,8			# 0x8

.L31:
	jal	S6B33_pixel
	li	$4,63488			# 0xf800

	li	$2,6			# 0x6
.L92:
	bne	$16,$2,.L93
	li	$2,7			# 0x7

	sltu	$2,$17,32
	beq	$2,$0,.L33
	nop

	jal	S6B33_pixel
	move	$4,$0

	j	.L95
	li	$2,9			# 0x9

.L33:
	jal	S6B33_pixel
	li	$4,2016			# 0x7e0

	li	$2,7			# 0x7
.L93:
	bne	$16,$2,.L94
	li	$2,8			# 0x8

	sltu	$2,$17,32
	beq	$2,$0,.L35
	nop

	jal	S6B33_pixel
	move	$4,$0

	j	.L96
	li	$2,10			# 0xa

.L35:
	jal	S6B33_pixel
	li	$4,2016			# 0x7e0

	li	$2,8			# 0x8
.L94:
	bne	$16,$2,.L95
	li	$2,9			# 0x9

	sltu	$2,$17,32
	beq	$2,$0,.L37
	nop

	jal	S6B33_pixel
	li	$4,65535			# 0xffff

	j	.L38
	nop

.L37:
	jal	S6B33_pixel
	li	$4,31			# 0x1f

	li	$2,9			# 0x9
.L95:
	bne	$16,$2,.L96
	li	$2,10			# 0xa

	sltu	$2,$17,32
	beq	$2,$0,.L39
	nop

	jal	S6B33_pixel
	li	$4,65535			# 0xffff

	j	.L40
	nop

.L39:
	jal	S6B33_pixel
	li	$4,31			# 0x1f

	li	$2,10			# 0xa
.L96:
	bne	$16,$2,.L38
	sltu	$2,$17,32

	beq	$2,$0,.L41
	nop

	jal	S6B33_pixel
	li	$4,65535			# 0xffff

	j	.L42
	nop

.L41:
	jal	S6B33_pixel
	li	$4,63519			# 0xf81f

.L38:
	bne	$16,$22,.L40
	sltu	$2,$17,32

	beq	$2,$0,.L43
	nop

	jal	S6B33_pixel
	li	$4,65535			# 0xffff

	j	.L44
	nop

.L43:
	jal	S6B33_pixel
	li	$4,63519			# 0xf81f

.L40:
	bne	$16,$21,.L42
	sltu	$2,$17,32

	beq	$2,$0,.L45
	nop

	jal	S6B33_pixel
	move	$4,$0

	j	.L46
	nop

.L45:
	jal	S6B33_pixel
	li	$4,2047			# 0x7ff

.L42:
	bne	$16,$20,.L44
	sltu	$2,$17,32

	beq	$2,$0,.L47
	nop

	jal	S6B33_pixel
	move	$4,$0

	j	.L97
	addiu	$17,$17,1

.L47:
	jal	S6B33_pixel
	li	$4,2047			# 0x7ff

.L44:
	bne	$16,$19,.L46
	sltu	$2,$17,32

	beq	$2,$0,.L49
	nop

	jal	S6B33_pixel
	move	$4,$0

	j	.L97
	addiu	$17,$17,1

.L49:
	jal	S6B33_pixel
	li	$4,65504			# 0xffe0

.L46:
	bnel	$16,$18,.L97
	addiu	$17,$17,1

	sltu	$2,$17,32
	beq	$2,$0,.L50
	nop

	jal	S6B33_pixel
	move	$4,$0

	j	.L97
	addiu	$17,$17,1

.L50:
	jal	S6B33_pixel
	li	$4,65504			# 0xffe0

	addiu	$17,$17,1
.L97:
	andi	$17,$17,0x00ff
	li	$2,132			# 0x84
	bne	$17,$2,.L100
	andi	$16,$17,0xf

	addiu	$23,$23,-1
	andi	$23,$23,0x00ff
	beql	$23,$0,.L67
	li	$18,17			# 0x11

.L18:
	j	.L51
	move	$17,$0

.L53:
	srl	$2,$16,2
.L101:
	andi	$4,$2,0x1f
	sll	$4,$4,6
	sll	$2,$2,11
	or	$4,$4,$2
	jal	S6B33_pixel
	andi	$4,$4,0xffc0

	addiu	$16,$16,1
	andi	$16,$16,0x00ff
	bne	$16,$17,.L101
	srl	$2,$16,2

	addiu	$18,$18,-1
	andi	$18,$18,0x00ff
	bnel	$18,$0,.L53
	move	$16,$0

	j	.L82
	li	$18,16			# 0x10

.L67:
	li	$17,132			# 0x84
	j	.L53
	move	$16,$0

.L55:
	srl	$2,$16,2
.L102:
	sll	$4,$2,11
	andi	$2,$2,0x1f
	or	$4,$4,$2
	jal	S6B33_pixel
	andi	$4,$4,0xf81f

	addiu	$16,$16,1
	andi	$16,$16,0x00ff
	bne	$16,$17,.L102
	srl	$2,$16,2

	addiu	$18,$18,-1
	andi	$18,$18,0x00ff
	bnel	$18,$0,.L55
	move	$16,$0

	j	.L83
	li	$18,17			# 0x11

.L82:
	li	$17,132			# 0x84
	j	.L55
	move	$16,$0

.L57:
	srl	$2,$16,2
.L103:
	andi	$4,$2,0x1f
	sll	$4,$4,6
	andi	$2,$2,0x1f
	jal	S6B33_pixel
	or	$4,$4,$2

	addiu	$16,$16,1
	andi	$16,$16,0x00ff
	bne	$16,$17,.L103
	srl	$2,$16,2

	addiu	$18,$18,-1
	andi	$18,$18,0x00ff
	bnel	$18,$0,.L57
	move	$16,$0

	j	.L84
	li	$18,16			# 0x10

.L83:
	li	$17,132			# 0x84
	j	.L57
	move	$16,$0

.L59:
	sll	$4,$16,9
.L104:
	jal	S6B33_pixel
	andi	$4,$4,0xf800

	addiu	$16,$16,1
	andi	$16,$16,0x00ff
	bnel	$16,$17,.L104
	sll	$4,$16,9

	addiu	$18,$18,-1
	andi	$18,$18,0x00ff
	bnel	$18,$0,.L59
	move	$16,$0

	j	.L85
	li	$18,82			# 0x52

.L84:
	li	$17,132			# 0x84
	j	.L59
	move	$16,$0

.L61:
	ext	$4,$16,2,5
.L105:
	jal	S6B33_pixel
	sll	$4,$4,6

	addiu	$16,$16,1
	andi	$16,$16,0x00ff
	bnel	$16,$17,.L105
	ext	$4,$16,2,5

	addiu	$18,$18,1
	andi	$18,$18,0x00ff
	bnel	$18,$19,.L61
	move	$16,$0

	j	.L86
	li	$17,132			# 0x84

.L85:
	li	$17,132			# 0x84
	li	$19,98			# 0x62
	j	.L61
	move	$16,$0

.L63:
.L106:
	jal	S6B33_pixel
	ext	$4,$16,2,5

	addiu	$16,$16,1
	andi	$16,$16,0x00ff
	bne	$16,$17,.L63
	nop

	addiu	$18,$18,1
	andi	$18,$18,0x00ff
	bnel	$18,$19,.L106
	move	$16,$0

	j	.L87
	li	$18,18			# 0x12

.L86:
	li	$19,114			# 0x72
	j	.L63
	move	$16,$0

.L65:
	srl	$2,$16,2
.L107:
	sll	$4,$2,11
	andi	$3,$2,0x1f
	or	$4,$4,$3
	sll	$2,$3,6
	or	$4,$4,$2
	jal	S6B33_pixel
	andi	$4,$4,0xffdf

	addiu	$16,$16,1
	andi	$16,$16,0x00ff
	bne	$16,$17,.L107
	srl	$2,$16,2

	addiu	$18,$18,-1
	andi	$18,$18,0x00ff
	bne	$18,$0,.L65
	move	$16,$0

	j	.L88
	lw	$31,52($sp)

.L87:
	li	$17,132			# 0x84
	j	.L65
	move	$16,$0

.L88:
	lw	$23,48($sp)
	lw	$22,44($sp)
	lw	$21,40($sp)
	lw	$20,36($sp)
	lw	$19,32($sp)
	lw	$18,28($sp)
	lw	$17,24($sp)
	lw	$16,20($sp)
	j	$31
	addiu	$sp,$sp,56

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	LCDBars
	.size	LCDBars, .-LCDBars
	.align	2
	.globl	LCDLogo
	.set	nomips16
	.set	nomicromips
	.ent	LCDLogo
	.type	LCDLogo, @function
LCDLogo:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	LCDLogo
	.size	LCDLogo, .-LCDLogo
	.align	2
	.globl	LCDputPixel
	.set	nomips16
	.set	nomicromips
	.ent	LCDputPixel
	.type	LCDputPixel, @function
LCDputPixel:
	.frame	$sp,24,$31		# vars= 0, regs= 2/0, args= 16, gp= 0
	.mask	0x80010000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24
	sw	$31,20($sp)
	sw	$16,16($sp)
	andi	$2,$4,0x00ff
	andi	$16,$6,0xffff
	andi	$4,$5,0x00ff
	move	$5,$2
	move	$6,$0
	jal	S6B33_rect
	move	$7,$0

	jal	S6B33_pixel
	move	$4,$16

	lw	$31,20($sp)
	lw	$16,16($sp)
	j	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	LCDputPixel
	.size	LCDputPixel, .-LCDputPixel
	.align	2
	.globl	LCDline
	.set	nomips16
	.set	nomicromips
	.ent	LCDline
	.type	LCDline, @function
LCDline:
	.frame	$sp,64,$31		# vars= 8, regs= 10/0, args= 16, gp= 0
	.mask	0xc0ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-64
	sw	$31,60($sp)
	sw	$fp,56($sp)
	sw	$23,52($sp)
	sw	$22,48($sp)
	sw	$21,44($sp)
	sw	$20,40($sp)
	sw	$19,36($sp)
	sw	$18,32($sp)
	sw	$17,28($sp)
	sw	$16,24($sp)
	move	$17,$4
	move	$18,$5
	move	$20,$6
	sw	$7,76($sp)
	subu	$23,$6,$4
	sra	$2,$23,31
	xor	$23,$2,$23
	subu	$23,$23,$2
	slt	$2,$4,$6
	beq	$2,$0,.L120
	lhu	$21,80($sp)

	li	$2,1			# 0x1
	j	.L111
	sw	$2,16($sp)

.L120:
	li	$3,-1			# 0xffffffffffffffff
	sw	$3,16($sp)
.L111:
	lw	$2,76($sp)
	subu	$19,$2,$18
	sra	$2,$19,31
	xor	$19,$2,$19
	subu	$19,$19,$2
	lw	$3,76($sp)
	slt	$2,$18,$3
	beql	$2,$0,.L121
	li	$fp,-1			# 0xffffffffffffffff

	li	$fp,1			# 0x1
.L121:
	slt	$2,$19,$23
	bnel	$2,$0,.L113
	srl	$16,$23,31

	subu	$2,$0,$19
	srl	$16,$2,31
	addu	$2,$16,$2
	j	.L124
	sra	$16,$2,1

.L113:
	addu	$16,$16,$23
	sra	$16,$16,1
.L124:
	subu	$22,$0,$23
.L125:
	andi	$4,$17,0x00ff
	andi	$5,$18,0x00ff
	jal	LCDputPixel
	move	$6,$21

	bne	$17,$20,.L126
	slt	$2,$22,$16

	lw	$2,76($sp)
	beq	$18,$2,.L110
	slt	$2,$22,$16

.L126:
	beql	$2,$0,.L122
	move	$2,$16

	subu	$2,$16,$19
	lw	$3,16($sp)
	addu	$17,$17,$3
.L122:
	slt	$16,$16,$19
	beql	$16,$0,.L125
	move	$16,$2

	addu	$16,$2,$23
	j	.L125
	addu	$18,$18,$fp

.L110:
	lw	$31,60($sp)
	lw	$fp,56($sp)
	lw	$23,52($sp)
	lw	$22,48($sp)
	lw	$21,44($sp)
	lw	$20,40($sp)
	lw	$19,36($sp)
	lw	$18,32($sp)
	lw	$17,28($sp)
	lw	$16,24($sp)
	j	$31
	addiu	$sp,$sp,64

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	LCDline
	.size	LCDline, .-LCDline
	.ident	"GCC: (Microchip Technology) 4.5.2 MPLAB XC32 Compiler v1.34"
# Begin MCHP vector dispatch table
# End MCHP vector dispatch table
# Microchip Technology PIC32 MCU configuration words
