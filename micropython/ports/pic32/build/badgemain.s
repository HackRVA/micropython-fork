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

	bne	$2,$0,.L3
	lui	$2,%hi(writeLOCK.14310)

	lbu	$2,%lo(writeLOCK.14310)($2)
	bne	$2,$0,.L5
	lui	$4,%hi(USB_In_Buffer)

	addiu	$4,$4,%lo(USB_In_Buffer)
	jal	getsUSBUSART
	li	$5,63			# 0x3f

	andi	$17,$2,0x00ff
	beq	$17,$0,.L5
	lui	$2,%hi(USB_In_Buffer)

	lb	$2,%lo(USB_In_Buffer)($2)
	li	$3,13			# 0xd
	beq	$2,$3,.L6
	li	$3,10			# 0xa

	bne	$2,$3,.L22
	lui	$2,%hi(USB_In_Buffer)

.L6:
	jal	FbColor
	li	$4,65535			# 0xffff

	lui	$16,%hi(y.14316)
	move	$4,$0
	jal	FbMove
	lw	$5,%lo(y.14316)($16)

	lw	$2,%lo(y.14316)($16)
	addiu	$2,$2,10
	sw	$2,%lo(y.14316)($16)
	slt	$2,$2,111
	beql	$2,$0,.L8
	sw	$0,%lo(y.14316)($16)

.L8:
	jal	FbMoveX
	move	$4,$0

	lui	$16,%hi(textBuffer.14311)
	jal	FbWriteLine
	addiu	$4,$16,%lo(textBuffer.14311)

	move	$4,$0
	jal	FbMoveRelative
	li	$5,10			# 0xa

	lui	$2,%hi(textBufPtr.14312)
	sb	$0,%lo(textBufPtr.14312)($2)
	jal	FbMoveX
	move	$4,$0

	addiu	$4,$16,%lo(textBuffer.14311)
	jal	do_str
	li	$5,1			# 0x1

	jal	FbSwapBuffers
	nop

	lui	$2,%hi(USB_In_Buffer)
.L22:
	lb	$2,%lo(USB_In_Buffer)($2)
	li	$3,45			# 0x2d
	beq	$2,$3,.L9
	li	$3,43			# 0x2b

	bne	$2,$3,.L20
	nop

	j	.L21
	lui	$2,%hi(G_contrast1)

.L9:
	lui	$2,%hi(G_contrast1)
	lbu	$3,%lo(G_contrast1)($2)
	addiu	$3,$3,-4
	j	.L12
	sb	$3,%lo(G_contrast1)($2)

.L21:
	lbu	$3,%lo(G_contrast1)($2)
	addiu	$3,$3,4
	sb	$3,%lo(G_contrast1)($2)
.L12:
	jal	LCDReset
	nop

	lui	$2,%hi(USB_In_Buffer)
	j	.L5
	sb	$0,%lo(USB_In_Buffer)($2)

.L20:
	beq	$2,$0,.L5
	nop

	blez	$17,.L18
	lui	$2,%hi(textBufPtr.14312)

	lbu	$4,%lo(textBufPtr.14312)($2)
	move	$2,$0
	lui	$9,%hi(USB_In_Buffer)
	addiu	$9,$9,%lo(USB_In_Buffer)
	lui	$6,%hi(USB_Out_Buffer)
	addiu	$6,$6,%lo(USB_Out_Buffer)
	lui	$8,%hi(textBuffer.14311)
	addiu	$8,$8,%lo(textBuffer.14311)
	li	$7,13			# 0xd
	li	$10,10			# 0xa
	addu	$3,$2,$9
.L23:
	lb	$3,0($3)
	addu	$5,$2,$6
	sb	$3,0($5)
	addu	$5,$4,$8
	sb	$3,0($5)
	addiu	$4,$4,1
	bne	$3,$7,.L14
	andi	$4,$4,0x00ff

	addiu	$2,$2,1
	addu	$3,$2,$6
	sb	$10,0($3)
.L14:
	addiu	$2,$2,1
	slt	$3,$2,$17
	bne	$3,$0,.L23
	addu	$3,$2,$9

	lui	$3,%hi(textBufPtr.14312)
	j	.L13
	sb	$4,%lo(textBufPtr.14312)($3)

.L18:
	move	$2,$0
.L13:
	lui	$3,%hi(USB_Out_Buffer)
	addiu	$3,$3,%lo(USB_Out_Buffer)
	addu	$2,$2,$3
	sb	$0,0($2)
	lui	$2,%hi(textBufPtr.14312)
	lbu	$3,%lo(textBufPtr.14312)($2)
	lui	$2,%hi(textBuffer.14311)
	addiu	$2,$2,%lo(textBuffer.14311)
	addu	$2,$3,$2
	sb	$0,0($2)
	lui	$2,%hi(USB_In_Buffer)
	sb	$0,%lo(USB_In_Buffer)($2)
.L5:
	jal	USBtransferReady
	nop

	beq	$2,$0,.L16
	lui	$2,%hi(writeLOCK.14310)

	lbu	$2,%lo(writeLOCK.14310)($2)
	beq	$2,$0,.L24
	lui	$4,%hi(USB_Out_Buffer)

	lui	$2,%hi(USB_Out_Buffer)
	sb	$0,%lo(USB_Out_Buffer)($2)
	lui	$2,%hi(writeLOCK.14310)
	sb	$0,%lo(writeLOCK.14310)($2)
.L24:
	jal	strlen
	addiu	$4,$4,%lo(USB_Out_Buffer)

	beq	$2,$0,.L16
	lui	$4,%hi(USB_Out_Buffer)

	addiu	$4,$4,%lo(USB_Out_Buffer)
	jal	putUSBUSART
	move	$5,$2

	li	$3,1			# 0x1
	lui	$2,%hi(writeLOCK.14310)
	sb	$3,%lo(writeLOCK.14310)($2)
.L16:
	jal	CDCTxService
	nop

.L3:
	lw	$31,28($sp)
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
	lui	$2,%hi(led_count.14344)
	lw	$2,%lo(led_count.14344)($2)
	bne	$2,$0,.L42
	lui	$2,%hi(led_count.14344)

	li	$3,65536			# 0x10000
	ori	$3,$3,0x86a0
	sw	$3,%lo(led_count.14344)($2)
	lui	$2,%hi(led_count.14344)
.L42:
	lw	$3,%lo(led_count.14344)($2)
	addiu	$3,$3,-1
	jal	getUSBSuspendControl
	sw	$3,%lo(led_count.14344)($2)

	li	$3,1			# 0x1
	bne	$2,$3,.L27
	lui	$2,%hi(led_count.14344)

	lw	$2,%lo(led_count.14344)($2)
	bnel	$2,$0,.L43
	lw	$31,20($sp)

	lui	$2,%hi(LATC)
	lw	$3,%lo(LATC)($2)
	li	$4,1			# 0x1
	ins	$3,$4,0,1
	sw	$3,%lo(LATC)($2)
	lw	$3,%lo(LATC)($2)
	ins	$3,$4,1,1
	sw	$3,%lo(LATC)($2)
	j	.L39
	lw	$31,20($sp)

.L27:
	jal	USBDeviceStateDETACHED
	nop

	beq	$2,$0,.L29
	lui	$2,%hi(LATC)

	lw	$3,%lo(LATC)($2)
	ins	$3,$0,0,1
	sw	$3,%lo(LATC)($2)
	lw	$3,%lo(LATC)($2)
	ins	$3,$0,1,1
	sw	$3,%lo(LATC)($2)
	j	.L39
	lw	$31,20($sp)

.L29:
	jal	USBDeviceStateATTACHED
	nop

	beq	$2,$0,.L30
	lui	$2,%hi(LATC)

	lw	$3,%lo(LATC)($2)
	li	$4,1			# 0x1
	ins	$3,$4,0,1
	sw	$3,%lo(LATC)($2)
	lw	$3,%lo(LATC)($2)
	ins	$3,$4,1,1
	sw	$3,%lo(LATC)($2)
	j	.L39
	lw	$31,20($sp)

.L30:
	jal	USBDeviceStatePOWERED
	nop

	beq	$2,$0,.L31
	lui	$2,%hi(LATC)

	lw	$3,%lo(LATC)($2)
	li	$4,1			# 0x1
	ins	$3,$4,0,1
	sw	$3,%lo(LATC)($2)
	lw	$3,%lo(LATC)($2)
	ins	$3,$0,1,1
	sw	$3,%lo(LATC)($2)
	j	.L39
	lw	$31,20($sp)

.L31:
	jal	USBDeviceStateDEFAULT
	nop

	beq	$2,$0,.L32
	lui	$2,%hi(LATC)

	lw	$3,%lo(LATC)($2)
	ins	$3,$0,0,1
	sw	$3,%lo(LATC)($2)
	lw	$3,%lo(LATC)($2)
	li	$4,1			# 0x1
	ins	$3,$4,1,1
	sw	$3,%lo(LATC)($2)
	j	.L39
	lw	$31,20($sp)

.L32:
	jal	USBDeviceStateADDRESS
	nop

	beq	$2,$0,.L33
	lui	$2,%hi(led_count.14344)

	lw	$2,%lo(led_count.14344)($2)
	bnel	$2,$0,.L43
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
	j	.L39
	lw	$31,20($sp)

.L33:
	jal	USBDeviceStateCONFIGURED
	nop

	beq	$2,$0,.L25
	lui	$2,%hi(led_count.14344)

	lw	$2,%lo(led_count.14344)($2)
	bne	$2,$0,.L25
	lui	$2,%hi(LATC)

	lw	$2,%lo(LATC)($2)
	andi	$2,$2,0x1
	beq	$2,$0,.L34
	lui	$2,%hi(LATC)

	lw	$3,%lo(LATC)($2)
	ins	$3,$0,0,1
	sw	$3,%lo(LATC)($2)
	j	.L40
	lui	$2,%hi(LATC)

.L34:
	lw	$3,%lo(LATC)($2)
	li	$4,1			# 0x1
	ins	$3,$4,0,1
	sw	$3,%lo(LATC)($2)
	lui	$2,%hi(LATC)
.L40:
	lw	$2,%lo(LATC)($2)
	andi	$2,$2,0x2
	beq	$2,$0,.L36
	lui	$2,%hi(LATC)

	lw	$3,%lo(LATC)($2)
	ins	$3,$0,1,1
	sw	$3,%lo(LATC)($2)
	j	.L41
	lui	$2,%hi(LATB)

.L36:
	lw	$3,%lo(LATC)($2)
	li	$4,1			# 0x1
	ins	$3,$4,1,1
	sw	$3,%lo(LATC)($2)
	lui	$2,%hi(LATB)
.L41:
	lw	$2,%lo(LATB)($2)
	andi	$2,$2,0x8
	beq	$2,$0,.L38
	lui	$2,%hi(LATB)

	lw	$3,%lo(LATB)($2)
	ins	$3,$0,3,1
	sw	$3,%lo(LATB)($2)
	j	.L39
	lw	$31,20($sp)

.L38:
	lw	$3,%lo(LATB)($2)
	li	$4,1			# 0x1
	ins	$3,$4,3,1
	sw	$3,%lo(LATB)($2)
.L25:
	lw	$31,20($sp)
.L39:
.L43:
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
	.type	led_count.14344, @object
	.size	led_count.14344, 4
led_count.14344:
	.space	4
	.align	2
	.type	y.14316, @object
	.size	y.14316, 4
y.14316:
	.space	4
	.type	textBufPtr.14312, @object
	.size	textBufPtr.14312, 1
textBufPtr.14312:
	.space	1
	.align	2
	.type	textBuffer.14311, @object
	.size	textBuffer.14311, 128
textBuffer.14311:
	.space	128
	.type	writeLOCK.14310, @object
	.size	writeLOCK.14310, 1
writeLOCK.14310:
	.space	1
	.ident	"GCC: (Microchip Technology) 4.5.2 MPLAB XC32 Compiler v1.34"
# Begin MCHP vector dispatch table
# End MCHP vector dispatch table
# Microchip Technology PIC32 MCU configuration words
