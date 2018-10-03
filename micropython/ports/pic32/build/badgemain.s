	.file	1 "badgemain.c"
	.section .mdebug.abi32
	.previous
	.gnu_attribute 4, 3
	.section	.text,code
	.align	2
	.globl	UserInit
	.set	nomips16
	.set	nomicromips
	.ent	UserInit
	.type	UserInit, @function
UserInit:
	.frame	$sp,40,$31		# vars= 0, regs= 5/0, args= 16, gp= 0
	.mask	0x800f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-40
	sw	$31,36($sp)
	sw	$19,32($sp)
	sw	$18,28($sp)
	sw	$17,24($sp)
	sw	$16,20($sp)
	lui	$2,%hi(CFGCON)
	lw	$3,%lo(CFGCON)($2)
	ins	$3,$0,3,1
	sw	$3,%lo(CFGCON)($2)
	lui	$17,%hi(TRISC)
	lw	$2,%lo(TRISC)($17)
	ins	$2,$0,0,1
	sw	$2,%lo(TRISC)($17)
	lui	$16,%hi(LATC)
	lw	$2,%lo(LATC)($16)
	ins	$2,$0,0,1
	sw	$2,%lo(LATC)($16)
	lui	$2,%hi(CNPDC)
	lw	$3,%lo(CNPDC)($2)
	ins	$3,$0,0,1
	sw	$3,%lo(CNPDC)($2)
	lw	$3,%lo(TRISC)($17)
	ins	$3,$0,1,1
	sw	$3,%lo(TRISC)($17)
	lw	$3,%lo(LATC)($16)
	ins	$3,$0,1,1
	sw	$3,%lo(LATC)($16)
	lw	$3,%lo(CNPDC)($2)
	ins	$3,$0,1,1
	sw	$3,%lo(CNPDC)($2)
	lui	$2,%hi(TRISB)
	lw	$3,%lo(TRISB)($2)
	ins	$3,$0,3,1
	sw	$3,%lo(TRISB)($2)
	lui	$19,%hi(LATB)
	lw	$2,%lo(LATB)($19)
	ins	$2,$0,3,1
	sw	$2,%lo(LATB)($19)
	lui	$2,%hi(CNPDB)
	lw	$3,%lo(CNPDB)($2)
	ins	$3,$0,3,1
	sw	$3,%lo(CNPDB)($2)
	lui	$2,%hi(ANSELA)
	sw	$0,%lo(ANSELA)($2)
	lui	$2,%hi(ANSELB)
	sw	$0,%lo(ANSELB)($2)
	lui	$2,%hi(ANSELC)
	sw	$0,%lo(ANSELC)($2)
	lui	$2,%hi(TRISA)
	sw	$0,%lo(TRISA)($2)
	lui	$2,%hi(LATA)
	sw	$0,%lo(LATA)($2)
	lui	$2,%hi(TRISB)
	sw	$0,%lo(TRISB)($2)
	lui	$2,%hi(LATB)
	sw	$0,%lo(LATB)($2)
	lui	$2,%hi(TRISC)
	sw	$0,%lo(TRISC)($2)
	lui	$2,%hi(LATC)
	sw	$0,%lo(LATC)($2)
	jal	LCDInitPins
	nop

	lw	$2,%lo(LATC)($16)
	li	$18,1			# 0x1
	ins	$2,$18,0,1
	sw	$2,%lo(LATC)($16)
	jal	LCDReset
	nop

	lw	$2,%lo(LATC)($16)
	ins	$2,$18,1,1
	sw	$2,%lo(LATC)($16)
	jal	mp_init
	nop

	jal	FbInit
	nop

	jal	FbClear
	nop

	lw	$2,%lo(LATB)($19)
	ins	$2,$18,3,1
	sw	$2,%lo(LATB)($19)
	lw	$2,%lo(LATC)($16)
	ins	$2,$18,9,1
	sw	$2,%lo(LATC)($16)
	lw	$2,%lo(TRISC)($17)
	ins	$2,$18,3,1
	sw	$2,%lo(TRISC)($17)
	lui	$2,%hi(CNPUC)
	lw	$3,%lo(CNPUC)($2)
	ins	$3,$18,3,1
	sw	$3,%lo(CNPUC)($2)
	lw	$2,%lo(LATC)($16)
	ins	$2,$0,0,1
	sw	$2,%lo(LATC)($16)
	lw	$2,%lo(LATC)($16)
	ins	$2,$0,1,1
	sw	$2,%lo(LATC)($16)
	lw	$2,%lo(LATB)($19)
	ins	$2,$0,3,1
	sw	$2,%lo(LATB)($19)
	lw	$31,36($sp)
	lw	$19,32($sp)
	lw	$18,28($sp)
	lw	$17,24($sp)
	lw	$16,20($sp)
	j	$31
	addiu	$sp,$sp,40

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	UserInit
	.size	UserInit, .-UserInit
	.align	2
	.globl	LCDprint
	.set	nomips16
	.set	nomicromips
	.ent	LCDprint
	.type	LCDprint, @function
LCDprint:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24
	sw	$31,20($sp)
	jal	FbWriteString
	nop

	lw	$31,20($sp)
	j	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	LCDprint
	.size	LCDprint, .-LCDprint
	.section	.rodata,code
	.align	2
.LC0:
	.ascii	"0123456789\000"
	.align	2
.LC1:
	.ascii	"results\000"
	.align	2
.LC2:
	.ascii	"print('word ', list(x+1 for x in range(4)), end=' eol\\n"
	.ascii	"')\000"
	.align	2
.LC3:
	.ascii	"for i in range(4):\012  print(i)\000"
	.align	2
.LC4:
	.ascii	"done\000"
	.section	.text,code
	.align	2
	.globl	ProcessIO
	.set	nomips16
	.set	nomicromips
	.ent	ProcessIO
	.type	ProcessIO, @function
ProcessIO:
	.frame	$sp,32,$31		# vars= 0, regs= 3/0, args= 16, gp= 0
	.mask	0x80030000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-32
	sw	$31,28($sp)
	sw	$17,24($sp)
	jal	mchipUSBnotReady
	sw	$16,20($sp)

	bne	$2,$0,.L26
	lw	$31,28($sp)

	lui	$4,%hi(USB_In_Buffer)
	addiu	$4,$4,%lo(USB_In_Buffer)
	jal	getsUSBUSART
	li	$5,64			# 0x40

	andi	$16,$2,0x00ff
	beq	$16,$0,.L5
	lui	$2,%hi(USB_In_Buffer)

	lb	$2,%lo(USB_In_Buffer)($2)
	li	$3,112			# 0x70
	beq	$2,$3,.L6
	li	$3,80			# 0x50

	bne	$2,$3,.L23
	li	$3,98			# 0x62

	j	.L24
	lui	$2,%hi(USB_In_Buffer)

.L6:
	jal	FbClear
	nop

	jal	FbBackgroundColor
	move	$4,$0

	li	$4,10			# 0xa
	jal	FbMove
	li	$5,20			# 0x14

	jal	FbColor
	li	$4,65535			# 0xffff

	lui	$4,%hi(.LC0)
	jal	FbWriteLine
	addiu	$4,$4,%lo(.LC0)

	lui	$3,%hi(y.14292)
	lbu	$2,%lo(y.14292)($3)
	addiu	$2,$2,8
	andi	$2,$2,0x00ff
	sb	$2,%lo(y.14292)($3)
	sltu	$2,$2,129
	beql	$2,$0,.L7
	sb	$0,%lo(y.14292)($3)

.L7:
	lui	$2,%hi(USB_In_Buffer)
.L24:
	j	.L9
	sb	$0,%lo(USB_In_Buffer)($2)

.L23:
	beql	$2,$3,.L10
	lui	$2,%hi(bright.14303)

	li	$3,66			# 0x42
	beql	$2,$3,.L11
	lui	$2,%hi(bright.14303)

	j	.L25
	lui	$2,%hi(USB_In_Buffer)

.L10:
	lbu	$3,%lo(bright.14303)($2)
	addiu	$3,$3,10
	j	.L12
	sb	$3,%lo(bright.14303)($2)

.L11:
	lbu	$3,%lo(bright.14303)($2)
	addiu	$3,$3,-10
	sb	$3,%lo(bright.14303)($2)
.L12:
	lui	$2,%hi(USB_In_Buffer)
	j	.L27
	sb	$0,%lo(USB_In_Buffer)($2)

.L9:
	lui	$2,%hi(USB_In_Buffer)
.L25:
	lb	$2,%lo(USB_In_Buffer)($2)
	li	$3,13			# 0xd
	beq	$2,$3,.L14
	li	$3,10			# 0xa

	bne	$2,$3,.L27
	lui	$2,%hi(USB_In_Buffer)

.L14:
	jal	FbColor
	li	$4,65535			# 0xffff

	lui	$17,%hi(y.14304)
	move	$4,$0
	jal	FbMove
	lw	$5,%lo(y.14304)($17)

	lw	$2,%lo(y.14304)($17)
	addiu	$2,$2,10
	sw	$2,%lo(y.14304)($17)
	slt	$2,$2,111
	beql	$2,$0,.L15
	sw	$0,%lo(y.14304)($17)

.L15:
	lui	$4,%hi(.LC1)
	jal	FbWriteLine
	addiu	$4,$4,%lo(.LC1)

	move	$4,$0
	jal	FbMoveRelative
	li	$5,10			# 0xa

	jal	FbMoveX
	move	$4,$0

	lui	$4,%hi(.LC2)
	addiu	$4,$4,%lo(.LC2)
	jal	do_str
	move	$5,$0

	move	$4,$0
	jal	FbMoveRelative
	li	$5,10			# 0xa

	jal	FbMoveX
	move	$4,$0

	lui	$4,%hi(.LC3)
	addiu	$4,$4,%lo(.LC3)
	jal	do_str
	li	$5,1			# 0x1

	move	$4,$0
	jal	FbMoveRelative
	li	$5,10			# 0xa

	jal	FbMoveX
	move	$4,$0

	lui	$4,%hi(.LC4)
	jal	FbWriteLine
	addiu	$4,$4,%lo(.LC4)

	jal	FbSwapBuffers
	nop

	lui	$2,%hi(USB_In_Buffer)
	sb	$0,%lo(USB_In_Buffer)($2)
	j	.L16
	move	$2,$0

.L27:
	lb	$3,%lo(USB_In_Buffer)($2)
	li	$2,45			# 0x2d
	bne	$3,$2,.L17
	lui	$2,%hi(USB_In_Buffer)

	lui	$2,%hi(G_contrast1)
	lbu	$3,%lo(G_contrast1)($2)
	addiu	$3,$3,-4
	jal	LCDReset
	sb	$3,%lo(G_contrast1)($2)

	lui	$2,%hi(USB_In_Buffer)
	j	.L18
	sb	$0,%lo(USB_In_Buffer)($2)

.L17:
	lb	$2,%lo(USB_In_Buffer)($2)
	li	$3,61			# 0x3d
	beql	$2,$3,.L28
	lui	$2,%hi(G_contrast1)

.L16:
	li	$3,43			# 0x2b
	bne	$2,$3,.L18
	lui	$2,%hi(G_contrast1)

.L28:
	lbu	$3,%lo(G_contrast1)($2)
	addiu	$3,$3,4
	jal	LCDReset
	sb	$3,%lo(G_contrast1)($2)

	lui	$2,%hi(USB_In_Buffer)
	sb	$0,%lo(USB_In_Buffer)($2)
.L18:
	blez	$16,.L5
	lui	$2,%hi(NextUSBOut)

	lbu	$8,%lo(NextUSBOut)($2)
	lui	$2,%hi(USB_In_Buffer)
	addiu	$2,$2,%lo(USB_In_Buffer)
	addu	$7,$2,$16
	move	$3,$8
	lui	$6,%hi(USB_Out_Buffer)
	addiu	$6,$6,%lo(USB_Out_Buffer)
.L20:
	addu	$4,$3,$6
	lbu	$5,0($2)
	sb	$5,0($4)
	addiu	$3,$3,1
	addiu	$2,$2,1
	bne	$2,$7,.L20
	andi	$3,$3,0x00ff

	addu	$16,$16,$8
	lui	$2,%hi(NextUSBOut)
	sb	$16,%lo(NextUSBOut)($2)
.L5:
	jal	USBtransferReady
	nop

	beq	$2,$0,.L21
	lui	$2,%hi(NextUSBOut)

	lbu	$5,%lo(NextUSBOut)($2)
	beq	$5,$0,.L21
	lui	$4,%hi(USB_Out_Buffer)

	jal	putUSBUSART
	addiu	$4,$4,%lo(USB_Out_Buffer)

	lui	$2,%hi(NextUSBOut)
	sb	$0,%lo(NextUSBOut)($2)
.L21:
	jal	CDCTxService
	nop

	lw	$31,28($sp)
.L26:
	lw	$17,24($sp)
	lw	$16,20($sp)
	j	$31
	addiu	$sp,$sp,32

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	ProcessIO
	.size	ProcessIO, .-ProcessIO
	.align	2
	.globl	BlinkUSBStatus
	.set	nomips16
	.set	nomicromips
	.ent	BlinkUSBStatus
	.type	BlinkUSBStatus, @function
BlinkUSBStatus:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24
	sw	$31,20($sp)
	lui	$2,%hi(led_count.14329)
	lw	$2,%lo(led_count.14329)($2)
	bne	$2,$0,.L46
	lui	$2,%hi(led_count.14329)

	li	$3,65536			# 0x10000
	ori	$3,$3,0x86a0
	sw	$3,%lo(led_count.14329)($2)
	lui	$2,%hi(led_count.14329)
.L46:
	lw	$3,%lo(led_count.14329)($2)
	addiu	$3,$3,-1
	jal	getUSBSuspendControl
	sw	$3,%lo(led_count.14329)($2)

	li	$3,1			# 0x1
	bne	$2,$3,.L31
	lui	$2,%hi(led_count.14329)

	lw	$2,%lo(led_count.14329)($2)
	bnel	$2,$0,.L47
	lw	$31,20($sp)

	lui	$2,%hi(LATC)
	lw	$3,%lo(LATC)($2)
	li	$4,1			# 0x1
	ins	$3,$4,0,1
	sw	$3,%lo(LATC)($2)
	lw	$3,%lo(LATC)($2)
	ins	$3,$4,1,1
	sw	$3,%lo(LATC)($2)
	j	.L43
	lw	$31,20($sp)

.L31:
	jal	USBDeviceStateDETACHED
	nop

	beq	$2,$0,.L33
	lui	$2,%hi(LATC)

	lw	$3,%lo(LATC)($2)
	ins	$3,$0,0,1
	sw	$3,%lo(LATC)($2)
	lw	$3,%lo(LATC)($2)
	ins	$3,$0,1,1
	sw	$3,%lo(LATC)($2)
	j	.L43
	lw	$31,20($sp)

.L33:
	jal	USBDeviceStateATTACHED
	nop

	beq	$2,$0,.L34
	lui	$2,%hi(LATC)

	lw	$3,%lo(LATC)($2)
	li	$4,1			# 0x1
	ins	$3,$4,0,1
	sw	$3,%lo(LATC)($2)
	lw	$3,%lo(LATC)($2)
	ins	$3,$4,1,1
	sw	$3,%lo(LATC)($2)
	j	.L43
	lw	$31,20($sp)

.L34:
	jal	USBDeviceStatePOWERED
	nop

	beq	$2,$0,.L35
	lui	$2,%hi(LATC)

	lw	$3,%lo(LATC)($2)
	li	$4,1			# 0x1
	ins	$3,$4,0,1
	sw	$3,%lo(LATC)($2)
	lw	$3,%lo(LATC)($2)
	ins	$3,$0,1,1
	sw	$3,%lo(LATC)($2)
	j	.L43
	lw	$31,20($sp)

.L35:
	jal	USBDeviceStateDEFAULT
	nop

	beq	$2,$0,.L36
	lui	$2,%hi(LATC)

	lw	$3,%lo(LATC)($2)
	ins	$3,$0,0,1
	sw	$3,%lo(LATC)($2)
	lw	$3,%lo(LATC)($2)
	li	$4,1			# 0x1
	ins	$3,$4,1,1
	sw	$3,%lo(LATC)($2)
	j	.L43
	lw	$31,20($sp)

.L36:
	jal	USBDeviceStateADDRESS
	nop

	beq	$2,$0,.L37
	lui	$2,%hi(led_count.14329)

	lw	$2,%lo(led_count.14329)($2)
	bnel	$2,$0,.L47
	lw	$31,20($sp)

	lui	$2,%hi(LATC)
	lw	$4,%lo(LATC)($2)
	andi	$4,$4,0x1
	sltu	$4,$4,1
	lw	$3,%lo(LATC)($2)
	ins	$3,$4,0,1
	sw	$3,%lo(LATC)($2)
	lw	$3,%lo(LATC)($2)
	ins	$3,$0,1,1
	sw	$3,%lo(LATC)($2)
	j	.L43
	lw	$31,20($sp)

.L37:
	jal	USBDeviceStateCONFIGURED
	nop

	beq	$2,$0,.L29
	lui	$2,%hi(led_count.14329)

	lw	$2,%lo(led_count.14329)($2)
	bne	$2,$0,.L29
	lui	$2,%hi(LATC)

	lw	$2,%lo(LATC)($2)
	andi	$2,$2,0x1
	beq	$2,$0,.L38
	lui	$2,%hi(LATC)

	lw	$3,%lo(LATC)($2)
	ins	$3,$0,0,1
	sw	$3,%lo(LATC)($2)
	j	.L44
	lui	$2,%hi(LATC)

.L38:
	lw	$3,%lo(LATC)($2)
	li	$4,1			# 0x1
	ins	$3,$4,0,1
	sw	$3,%lo(LATC)($2)
	lui	$2,%hi(LATC)
.L44:
	lw	$2,%lo(LATC)($2)
	andi	$2,$2,0x2
	beq	$2,$0,.L40
	lui	$2,%hi(LATC)

	lw	$3,%lo(LATC)($2)
	ins	$3,$0,1,1
	sw	$3,%lo(LATC)($2)
	j	.L45
	lui	$2,%hi(LATB)

.L40:
	lw	$3,%lo(LATC)($2)
	li	$4,1			# 0x1
	ins	$3,$4,1,1
	sw	$3,%lo(LATC)($2)
	lui	$2,%hi(LATB)
.L45:
	lw	$2,%lo(LATB)($2)
	andi	$2,$2,0x8
	beq	$2,$0,.L42
	lui	$2,%hi(LATB)

	lw	$3,%lo(LATB)($2)
	ins	$3,$0,3,1
	sw	$3,%lo(LATB)($2)
	j	.L43
	lw	$31,20($sp)

.L42:
	lw	$3,%lo(LATB)($2)
	li	$4,1			# 0x1
	ins	$3,$4,3,1
	sw	$3,%lo(LATB)($2)
.L29:
	lw	$31,20($sp)
.L43:
.L47:
	j	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	BlinkUSBStatus
	.size	BlinkUSBStatus, .-BlinkUSBStatus
	.globl	NextUSBOut
	.section	.bss,bss
	.type	NextUSBOut, @object
	.size	NextUSBOut, 1
NextUSBOut:
	.space	1
	.globl	hextab
	.section	.rodata,code
	.align	2
	.type	hextab, @object
	.size	hextab, 17
hextab:
	.ascii	"0123456789ABCDEF\000"
	.section	.bss,bss
	.align	2
	.type	led_count.14329, @object
	.size	led_count.14329, 4
led_count.14329:
	.space	4
	.align	2
	.type	y.14304, @object
	.size	y.14304, 4
y.14304:
	.space	4
	.section	.data, data
	.type	bright.14303, @object
	.size	bright.14303, 1
bright.14303:
	.byte	-1
	.section	.bss,bss
	.type	y.14292, @object
	.size	y.14292, 1
y.14292:
	.space	1
	.ident	"GCC: (Microchip Technology) 4.5.2 MPLAB XC32 Compiler v1.34"
# Begin MCHP vector dispatch table
# End MCHP vector dispatch table
# Microchip Technology PIC32 MCU configuration words
