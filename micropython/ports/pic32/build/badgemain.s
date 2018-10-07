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
	jal	timerInit
	nop

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
	.globl	echoUSB
	.set	nomips16
	.set	nomicromips
	.ent	echoUSB
	.type	echoUSB, @function
echoUSB:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	lui	$2,%hi(lineOutBufPtr)
	lbu	$2,%lo(lineOutBufPtr)($2)
	addu	$3,$5,$2
	slt	$3,$3,65
	beq	$3,$0,.L9
	nop

	blez	$5,.L5
	move	$3,$0

	li	$9,10			# 0xa
	lui	$8,%hi(lineOutBuffer)
	addiu	$8,$8,%lo(lineOutBuffer)
	li	$10,13			# 0xd
.L7:
	lb	$6,0($4)
	bne	$6,$9,.L6
	move	$7,$4

	addu	$6,$2,$8
	sb	$10,0($6)
	addiu	$2,$2,1
	andi	$2,$2,0x00ff
.L6:
	addu	$6,$2,$8
	lbu	$7,0($7)
	sb	$7,0($6)
	addiu	$2,$2,1
	andi	$2,$2,0x00ff
	addiu	$3,$3,1
	bne	$3,$5,.L7
	addiu	$4,$4,1

	lui	$3,%hi(lineOutBufPtr)
	sb	$2,%lo(lineOutBufPtr)($3)
.L5:
	lui	$2,%hi(lineOutBufPtr)
	lbu	$3,%lo(lineOutBufPtr)($2)
	lui	$2,%hi(lineOutBuffer)
	addiu	$2,$2,%lo(lineOutBuffer)
	addu	$2,$3,$2
	sb	$0,0($2)
.L9:
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	echoUSB
	.size	echoUSB, .-echoUSB
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

	bne	$2,$0,.L10
	lui	$2,%hi(writeLOCK.14323)

	lbu	$2,%lo(writeLOCK.14323)($2)
	bne	$2,$0,.L12
	lui	$4,%hi(USB_In_Buffer)

	addiu	$4,$4,%lo(USB_In_Buffer)
	jal	getsUSBUSART
	li	$5,63			# 0x3f

	andi	$16,$2,0x00ff
	beq	$16,$0,.L12
	lui	$2,%hi(USB_In_Buffer)

	lb	$2,%lo(USB_In_Buffer)($2)
	li	$3,13			# 0xd
	beq	$2,$3,.L13
	li	$3,10			# 0xa

	bne	$2,$3,.L36
	lui	$2,%hi(USB_In_Buffer)

.L13:
	lui	$2,%hi(textBufPtr.14325)
	sb	$0,%lo(textBufPtr.14325)($2)
	jal	FbMoveX
	move	$4,$0

	lui	$4,%hi(textBuffer.14324)
	addiu	$4,$4,%lo(textBuffer.14324)
	jal	do_str
	li	$5,1			# 0x1

	move	$4,$0
	jal	FbMoveRelative
	li	$5,10			# 0xa

	jal	FbSwapBuffers
	nop

	lui	$2,%hi(USB_In_Buffer)
.L36:
	lb	$2,%lo(USB_In_Buffer)($2)
	li	$3,45			# 0x2d
	beq	$2,$3,.L15
	li	$3,43			# 0x2b

	bne	$2,$3,.L34
	nop

	j	.L35
	lui	$2,%hi(G_contrast1)

.L15:
	lui	$2,%hi(G_contrast1)
	lbu	$3,%lo(G_contrast1)($2)
	addiu	$3,$3,-4
	j	.L18
	sb	$3,%lo(G_contrast1)($2)

.L35:
	lbu	$3,%lo(G_contrast1)($2)
	addiu	$3,$3,4
	sb	$3,%lo(G_contrast1)($2)
.L18:
	jal	LCDReset
	nop

	lui	$2,%hi(USB_In_Buffer)
	j	.L12
	sb	$0,%lo(USB_In_Buffer)($2)

.L34:
	beq	$2,$0,.L12
	nop

	blez	$16,.L30
	lui	$2,%hi(textBufPtr.14325)

	lbu	$7,%lo(textBufPtr.14325)($2)
	lui	$3,%hi(USB_In_Buffer)
	addiu	$3,$3,%lo(USB_In_Buffer)
	addu	$16,$3,$16
	move	$2,$0
	lui	$5,%hi(USB_Out_Buffer)
	addiu	$5,$5,%lo(USB_Out_Buffer)
	li	$9,13			# 0xd
	li	$8,10			# 0xa
	li	$10,8			# 0x8
	li	$12,32			# 0x20
	lui	$11,%hi(textBuffer.14324)
	addiu	$11,$11,%lo(textBuffer.14324)
	lb	$4,0($3)
.L39:
	xori	$6,$4,0xa
	beql	$6,$0,.L37
	addu	$4,$2,$5

	xori	$6,$4,0xd
	bne	$6,$0,.L20
	xori	$6,$4,0x7f

	addu	$4,$2,$5
.L37:
	sb	$9,0($4)
	sb	$8,1($4)
	j	.L22
	addiu	$2,$2,2

.L20:
	beq	$6,$0,.L32
	xori	$6,$4,0x8

	bne	$6,$0,.L23
	addu	$6,$2,$5

.L32:
	beq	$7,$0,.L38
	addu	$4,$2,$5

	addiu	$7,$7,-1
	andi	$7,$7,0x00ff
.L38:
	sb	$10,0($4)
	sb	$12,1($4)
	sb	$10,2($4)
	j	.L22
	addiu	$2,$2,3

.L23:
	sb	$4,0($6)
	addiu	$2,$2,1
	addu	$6,$7,$11
	sb	$4,0($6)
	addiu	$7,$7,1
	andi	$7,$7,0x00ff
.L22:
	addiu	$3,$3,1
	bnel	$3,$16,.L39
	lb	$4,0($3)

	lui	$3,%hi(textBufPtr.14325)
	j	.L19
	sb	$7,%lo(textBufPtr.14325)($3)

.L30:
	move	$2,$0
.L19:
	lui	$3,%hi(USB_Out_Buffer)
	addiu	$3,$3,%lo(USB_Out_Buffer)
	addu	$2,$2,$3
	sb	$0,0($2)
	lui	$2,%hi(textBufPtr.14325)
	lbu	$3,%lo(textBufPtr.14325)($2)
	lui	$2,%hi(textBuffer.14324)
	addiu	$2,$2,%lo(textBuffer.14324)
	addu	$2,$3,$2
	sb	$0,0($2)
	lui	$2,%hi(USB_In_Buffer)
	sb	$0,%lo(USB_In_Buffer)($2)
.L12:
	jal	USBtransferReady
	nop

	beq	$2,$0,.L27
	lui	$2,%hi(writeLOCK.14323)

	lbu	$2,%lo(writeLOCK.14323)($2)
	beq	$2,$0,.L40
	lui	$2,%hi(lineOutBufPtr)

	lui	$2,%hi(USB_Out_Buffer)
	sb	$0,%lo(USB_Out_Buffer)($2)
	lui	$2,%hi(writeLOCK.14323)
	sb	$0,%lo(writeLOCK.14323)($2)
	lui	$2,%hi(lineOutBufPtr)
.L40:
	lbu	$16,%lo(lineOutBufPtr)($2)
	beql	$16,$0,.L41
	lui	$4,%hi(USB_Out_Buffer)

	lui	$17,%hi(USB_Out_Buffer)
	addiu	$4,$17,%lo(USB_Out_Buffer)
	lui	$5,%hi(lineOutBuffer)
	addiu	$5,$5,%lo(lineOutBuffer)
	jal	strncpy
	move	$6,$16

	addiu	$17,$17,%lo(USB_Out_Buffer)
	addu	$16,$16,$17
	sb	$0,0($16)
	lui	$2,%hi(lineOutBufPtr)
	sb	$0,%lo(lineOutBufPtr)($2)
	lui	$4,%hi(USB_Out_Buffer)
.L41:
	jal	strlen
	addiu	$4,$4,%lo(USB_Out_Buffer)

	beq	$2,$0,.L27
	lui	$4,%hi(USB_Out_Buffer)

	addiu	$4,$4,%lo(USB_Out_Buffer)
	jal	putUSBUSART
	move	$5,$2

	li	$3,1			# 0x1
	lui	$2,%hi(writeLOCK.14323)
	sb	$3,%lo(writeLOCK.14323)($2)
.L27:
	jal	CDCTxService
	nop

.L10:
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
	lui	$2,%hi(led_count.14352)
	lw	$2,%lo(led_count.14352)($2)
	bne	$2,$0,.L59
	lui	$2,%hi(led_count.14352)

	li	$3,65536			# 0x10000
	ori	$3,$3,0x86a0
	sw	$3,%lo(led_count.14352)($2)
	lui	$2,%hi(led_count.14352)
.L59:
	lw	$3,%lo(led_count.14352)($2)
	addiu	$3,$3,-1
	jal	getUSBSuspendControl
	sw	$3,%lo(led_count.14352)($2)

	li	$3,1			# 0x1
	bne	$2,$3,.L44
	lui	$2,%hi(led_count.14352)

	lw	$2,%lo(led_count.14352)($2)
	bnel	$2,$0,.L60
	lw	$31,20($sp)

	lui	$2,%hi(LATC)
	lw	$3,%lo(LATC)($2)
	li	$4,1			# 0x1
	ins	$3,$4,0,1
	sw	$3,%lo(LATC)($2)
	lw	$3,%lo(LATC)($2)
	ins	$3,$4,1,1
	sw	$3,%lo(LATC)($2)
	j	.L56
	lw	$31,20($sp)

.L44:
	jal	USBDeviceStateDETACHED
	nop

	beq	$2,$0,.L46
	lui	$2,%hi(LATC)

	lw	$3,%lo(LATC)($2)
	ins	$3,$0,0,1
	sw	$3,%lo(LATC)($2)
	lw	$3,%lo(LATC)($2)
	ins	$3,$0,1,1
	sw	$3,%lo(LATC)($2)
	j	.L56
	lw	$31,20($sp)

.L46:
	jal	USBDeviceStateATTACHED
	nop

	beq	$2,$0,.L47
	lui	$2,%hi(LATC)

	lw	$3,%lo(LATC)($2)
	li	$4,1			# 0x1
	ins	$3,$4,0,1
	sw	$3,%lo(LATC)($2)
	lw	$3,%lo(LATC)($2)
	ins	$3,$4,1,1
	sw	$3,%lo(LATC)($2)
	j	.L56
	lw	$31,20($sp)

.L47:
	jal	USBDeviceStatePOWERED
	nop

	beq	$2,$0,.L48
	lui	$2,%hi(LATC)

	lw	$3,%lo(LATC)($2)
	li	$4,1			# 0x1
	ins	$3,$4,0,1
	sw	$3,%lo(LATC)($2)
	lw	$3,%lo(LATC)($2)
	ins	$3,$0,1,1
	sw	$3,%lo(LATC)($2)
	j	.L56
	lw	$31,20($sp)

.L48:
	jal	USBDeviceStateDEFAULT
	nop

	beq	$2,$0,.L49
	lui	$2,%hi(LATC)

	lw	$3,%lo(LATC)($2)
	ins	$3,$0,0,1
	sw	$3,%lo(LATC)($2)
	lw	$3,%lo(LATC)($2)
	li	$4,1			# 0x1
	ins	$3,$4,1,1
	sw	$3,%lo(LATC)($2)
	j	.L56
	lw	$31,20($sp)

.L49:
	jal	USBDeviceStateADDRESS
	nop

	beq	$2,$0,.L50
	lui	$2,%hi(led_count.14352)

	lw	$2,%lo(led_count.14352)($2)
	bnel	$2,$0,.L60
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
	j	.L56
	lw	$31,20($sp)

.L50:
	jal	USBDeviceStateCONFIGURED
	nop

	beq	$2,$0,.L42
	lui	$2,%hi(led_count.14352)

	lw	$2,%lo(led_count.14352)($2)
	bne	$2,$0,.L42
	lui	$2,%hi(LATC)

	lw	$2,%lo(LATC)($2)
	andi	$2,$2,0x1
	beq	$2,$0,.L51
	lui	$2,%hi(LATC)

	lw	$3,%lo(LATC)($2)
	ins	$3,$0,0,1
	sw	$3,%lo(LATC)($2)
	j	.L57
	lui	$2,%hi(LATC)

.L51:
	lw	$3,%lo(LATC)($2)
	li	$4,1			# 0x1
	ins	$3,$4,0,1
	sw	$3,%lo(LATC)($2)
	lui	$2,%hi(LATC)
.L57:
	lw	$2,%lo(LATC)($2)
	andi	$2,$2,0x2
	beq	$2,$0,.L53
	lui	$2,%hi(LATC)

	lw	$3,%lo(LATC)($2)
	ins	$3,$0,1,1
	sw	$3,%lo(LATC)($2)
	j	.L58
	lui	$2,%hi(LATB)

.L53:
	lw	$3,%lo(LATC)($2)
	li	$4,1			# 0x1
	ins	$3,$4,1,1
	sw	$3,%lo(LATC)($2)
	lui	$2,%hi(LATB)
.L58:
	lw	$2,%lo(LATB)($2)
	andi	$2,$2,0x8
	beq	$2,$0,.L55
	lui	$2,%hi(LATB)

	lw	$3,%lo(LATB)($2)
	ins	$3,$0,3,1
	sw	$3,%lo(LATB)($2)
	j	.L56
	lw	$31,20($sp)

.L55:
	lw	$3,%lo(LATB)($2)
	li	$4,1			# 0x1
	ins	$3,$4,3,1
	sw	$3,%lo(LATB)($2)
.L42:
	lw	$31,20($sp)
.L56:
.L60:
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
	.type	led_count.14352, @object
	.size	led_count.14352, 4
led_count.14352:
	.space	4
	.type	lineOutBufPtr, @object
	.size	lineOutBufPtr, 1
lineOutBufPtr:
	.space	1
	.align	2
	.type	lineOutBuffer, @object
	.size	lineOutBuffer, 64
lineOutBuffer:
	.space	64
	.type	textBufPtr.14325, @object
	.size	textBufPtr.14325, 1
textBufPtr.14325:
	.space	1
	.align	2
	.type	textBuffer.14324, @object
	.size	textBuffer.14324, 128
textBuffer.14324:
	.space	128
	.type	writeLOCK.14323, @object
	.size	writeLOCK.14323, 1
writeLOCK.14323:
	.space	1
	.ident	"GCC: (Microchip Technology) 4.5.2 MPLAB XC32 Compiler v1.34"
# Begin MCHP vector dispatch table
# End MCHP vector dispatch table
# Microchip Technology PIC32 MCU configuration words
