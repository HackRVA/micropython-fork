	.file	1 "badge.c"
	.section .mdebug.abi32
	.previous
	.gnu_attribute 4, 3
	.section	.text,code
	.align	2
	.globl	pause
	.set	nomips16
	.set	nomicromips
	.ent	pause
	.type	pause, @function
pause:
	.frame	$sp,24,$31		# vars= 0, regs= 2/0, args= 16, gp= 0
	.mask	0x80010000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24
	sw	$31,20($sp)
	sw	$16,16($sp)
	li	$16,524288			# 0x80000
.L2:
	jal	ReadCoreTimer
	nop

	and	$2,$2,$16
	bne	$2,$0,.L2
	nop

	li	$16,524288			# 0x80000
.L4:
	jal	ReadCoreTimer
	nop

	and	$2,$2,$16
	beq	$2,$0,.L4
	lw	$31,20($sp)

	lw	$16,16($sp)
	j	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	pause
	.size	pause, .-pause
	.align	2
	.globl	initPIC32
	.set	nomips16
	.set	nomicromips
	.ent	initPIC32
	.type	initPIC32, @function
initPIC32:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24
	sw	$31,20($sp)
	jal	INTDisableInterrupts
	nop

	li	$4,64			# 0x40
	lui	$3,%hi(BMXCONCLR)
	sw	$4,%lo(BMXCONCLR)($3)
	lui	$3,%hi(OSCCON)
	lw	$3,%lo(OSCCON)($3)
	jal	INTRestoreInterrupts
	move	$4,$2

	lui	$2,%hi(CFGCON)
	lw	$3,%lo(CFGCON)($2)
	ins	$3,$0,3,1
	sw	$3,%lo(CFGCON)($2)
	jal	pause
	nop

	lui	$2,%hi(ANSELA)
	sw	$0,%lo(ANSELA)($2)
	lui	$2,%hi(ANSELB)
	sw	$0,%lo(ANSELB)($2)
	lui	$2,%hi(ANSELC)
	sw	$0,%lo(ANSELC)($2)
	lui	$2,%hi(TRISA)
	sw	$0,%lo(TRISA)($2)
	lui	$7,%hi(TRISB)
	sw	$0,%lo(TRISB)($7)
	lui	$3,%hi(TRISC)
	sw	$0,%lo(TRISC)($3)
	lui	$2,%hi(LATA)
	sw	$0,%lo(LATA)($2)
	lui	$6,%hi(LATB)
	sw	$0,%lo(LATB)($6)
	lui	$2,%hi(LATC)
	sw	$0,%lo(LATC)($2)
	lw	$4,%lo(TRISC)($3)
	ins	$4,$0,0,1
	sw	$4,%lo(TRISC)($3)
	lw	$4,%lo(LATC)($2)
	ins	$4,$0,0,1
	sw	$4,%lo(LATC)($2)
	lui	$5,%hi(CNPUC)
	lw	$4,%lo(CNPUC)($5)
	ins	$4,$0,0,1
	sw	$4,%lo(CNPUC)($5)
	lui	$4,%hi(CNPDC)
	lw	$8,%lo(CNPDC)($4)
	ins	$8,$0,0,1
	sw	$8,%lo(CNPDC)($4)
	lw	$8,%lo(TRISB)($7)
	ins	$8,$0,3,1
	sw	$8,%lo(TRISB)($7)
	lw	$7,%lo(LATB)($6)
	ins	$7,$0,3,1
	sw	$7,%lo(LATB)($6)
	lui	$6,%hi(CNPUB)
	lw	$7,%lo(CNPUB)($6)
	ins	$7,$0,3,1
	sw	$7,%lo(CNPUB)($6)
	lui	$6,%hi(CNPDB)
	lw	$7,%lo(CNPDB)($6)
	ins	$7,$0,3,1
	sw	$7,%lo(CNPDB)($6)
	lw	$6,%lo(TRISC)($3)
	ins	$6,$0,1,1
	sw	$6,%lo(TRISC)($3)
	lw	$3,%lo(LATC)($2)
	ins	$3,$0,1,1
	sw	$3,%lo(LATC)($2)
	lw	$2,%lo(CNPUC)($5)
	ins	$2,$0,1,1
	sw	$2,%lo(CNPUC)($5)
	lw	$2,%lo(CNPDC)($4)
	ins	$2,$0,1,1
	sw	$2,%lo(CNPDC)($4)
	lw	$31,20($sp)
	j	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	initPIC32
	.size	initPIC32, .-initPIC32
	.align	2
	.globl	redled
	.set	nomips16
	.set	nomicromips
	.ent	redled
	.type	redled, @function
redled:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24
	sw	$31,20($sp)
	lui	$2,%hi(LATC)
	lw	$3,%lo(LATC)($2)
	ins	$3,$4,0,1
	sw	$3,%lo(LATC)($2)
	jal	pause
	nop

	lw	$31,20($sp)
	j	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	redled
	.size	redled, .-redled
	.align	2
	.globl	greenled
	.set	nomips16
	.set	nomicromips
	.ent	greenled
	.type	greenled, @function
greenled:
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
	ins	$3,$4,3,1
	sw	$3,%lo(LATB)($2)
	jal	pause
	nop

	lw	$31,20($sp)
	j	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	greenled
	.size	greenled, .-greenled
	.align	2
	.globl	blueled
	.set	nomips16
	.set	nomicromips
	.ent	blueled
	.type	blueled, @function
blueled:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24
	sw	$31,20($sp)
	lui	$2,%hi(LATC)
	lw	$3,%lo(LATC)($2)
	ins	$3,$4,1,1
	sw	$3,%lo(LATC)($2)
	jal	pause
	nop

	lw	$31,20($sp)
	j	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	blueled
	.size	blueled, .-blueled
	.align	2
	.globl	badgeled
	.set	nomips16
	.set	nomicromips
	.ent	badgeled
	.type	badgeled, @function
badgeled:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24
	sw	$31,20($sp)
	sltu	$4,$0,$4
	lui	$2,%hi(LATC)
	lw	$3,%lo(LATC)($2)
	ins	$3,$4,0,1
	sw	$3,%lo(LATC)($2)
	sltu	$5,$0,$5
	lui	$3,%hi(LATB)
	lw	$4,%lo(LATB)($3)
	ins	$4,$5,3,1
	sw	$4,%lo(LATB)($3)
	sltu	$6,$0,$6
	lw	$3,%lo(LATC)($2)
	ins	$3,$6,1,1
	sw	$3,%lo(LATC)($2)
	jal	pause
	nop

	lw	$31,20($sp)
	j	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	badgeled
	.size	badgeled, .-badgeled
	.ident	"GCC: (Microchip Technology) 4.5.2 MPLAB XC32 Compiler v1.34"
# Begin MCHP vector dispatch table
# End MCHP vector dispatch table
# Microchip Technology PIC32 MCU configuration words
