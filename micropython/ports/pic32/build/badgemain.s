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

	andi	$2,$2,0x00ff
	beq	$2,$0,.L12
	lui	$3,%hi(USB_In_Buffer)

	lb	$3,%lo(USB_In_Buffer)($3)
	li	$4,45			# 0x2d
	beq	$3,$4,.L13
	li	$4,43			# 0x2b

	bne	$3,$4,.L33
	nop

	j	.L34
	lui	$2,%hi(G_contrast1)

.L13:
	lui	$2,%hi(G_contrast1)
	lbu	$3,%lo(G_contrast1)($2)
	addiu	$3,$3,-4
	j	.L16
	sb	$3,%lo(G_contrast1)($2)

.L34:
	lbu	$3,%lo(G_contrast1)($2)
	addiu	$3,$3,4
	sb	$3,%lo(G_contrast1)($2)
.L16:
	jal	LCDReset
	nop

	lui	$2,%hi(USB_In_Buffer)
	j	.L12
	sb	$0,%lo(USB_In_Buffer)($2)

.L33:
	beq	$3,$0,.L12
	nop

	blez	$2,.L29
	lui	$3,%hi(textBufPtr.14325)

	lbu	$5,%lo(textBufPtr.14325)($3)
	lui	$3,%hi(doMicroPython.14326)
	lw	$12,%lo(doMicroPython.14326)($3)
	lui	$3,%hi(USB_In_Buffer)
	addiu	$3,$3,%lo(USB_In_Buffer)
	addu	$10,$3,$2
	move	$2,$0
	lui	$6,%hi(USB_Out_Buffer)
	addiu	$6,$6,%lo(USB_Out_Buffer)
	li	$9,8			# 0x8
	li	$11,32			# 0x20
	lui	$8,%hi(textBuffer.14324)
	addiu	$8,$8,%lo(textBuffer.14324)
	li	$14,10			# 0xa
	li	$13,13			# 0xd
	lb	$4,0($3)
.L37:
	xori	$7,$4,0x7f
	beq	$7,$0,.L30
	xori	$7,$4,0x8

	bne	$7,$0,.L18
	addu	$7,$5,$8

.L30:
	beq	$5,$0,.L35
	addu	$4,$2,$6

	addiu	$5,$5,-1
	andi	$5,$5,0x00ff
.L35:
	sb	$9,0($4)
	sb	$11,1($4)
	sb	$9,2($4)
	j	.L21
	addiu	$2,$2,3

.L18:
	sb	$4,0($7)
	addiu	$5,$5,1
	andi	$5,$5,0x00ff
	addu	$7,$5,$8
	sb	$0,0($7)
	xori	$7,$4,0xa
	beql	$7,$0,.L36
	addu	$4,$2,$6

	xori	$7,$4,0xd
	bne	$7,$0,.L22
	addu	$7,$2,$6

	addu	$4,$2,$6
.L36:
	sb	$14,0($4)
	sb	$13,1($4)
	addiu	$2,$2,2
	j	.L21
	li	$12,1			# 0x1

.L22:
	sb	$4,0($7)
	addiu	$2,$2,1
.L21:
	addiu	$3,$3,1
	bnel	$3,$10,.L37
	lb	$4,0($3)

	lui	$3,%hi(textBufPtr.14325)
	sb	$5,%lo(textBufPtr.14325)($3)
	lui	$3,%hi(doMicroPython.14326)
	j	.L17
	sw	$12,%lo(doMicroPython.14326)($3)

.L29:
	move	$2,$0
.L17:
	lui	$3,%hi(USB_Out_Buffer)
	addiu	$3,$3,%lo(USB_Out_Buffer)
	addu	$2,$2,$3
	sb	$0,0($2)
	lui	$2,%hi(USB_In_Buffer)
	sb	$0,%lo(USB_In_Buffer)($2)
.L12:
	jal	USBtransferReady
	nop

	beq	$2,$0,.L38
	lui	$2,%hi(doMicroPython.14326)

	lui	$2,%hi(writeLOCK.14323)
	lbu	$2,%lo(writeLOCK.14323)($2)
	beq	$2,$0,.L39
	lui	$2,%hi(lineOutBufPtr)

	lui	$2,%hi(USB_Out_Buffer)
	sb	$0,%lo(USB_Out_Buffer)($2)
	lui	$2,%hi(writeLOCK.14323)
	sb	$0,%lo(writeLOCK.14323)($2)
	lui	$2,%hi(lineOutBufPtr)
.L39:
	lbu	$16,%lo(lineOutBufPtr)($2)
	beql	$16,$0,.L40
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
.L40:
	jal	strlen
	addiu	$4,$4,%lo(USB_Out_Buffer)

	beql	$2,$0,.L38
	lui	$2,%hi(doMicroPython.14326)

	lui	$4,%hi(USB_Out_Buffer)
	addiu	$4,$4,%lo(USB_Out_Buffer)
	jal	putUSBUSART
	move	$5,$2

	li	$3,1			# 0x1
	lui	$2,%hi(writeLOCK.14323)
	sb	$3,%lo(writeLOCK.14323)($2)
	lui	$2,%hi(doMicroPython.14326)
.L38:
	lw	$2,%lo(doMicroPython.14326)($2)
	beq	$2,$0,.L28
	lui	$17,%hi(textBufPtr.14325)

	lbu	$6,%lo(textBufPtr.14325)($17)
	lui	$16,%hi(mp_buffer.14340)
	addiu	$4,$16,%lo(mp_buffer.14340)
	lui	$5,%hi(textBuffer.14324)
	addiu	$5,$5,%lo(textBuffer.14324)
	jal	strncpy
	addiu	$6,$6,1

	addiu	$4,$16,%lo(mp_buffer.14340)
	jal	do_str
	li	$5,1			# 0x1

	sb	$0,%lo(textBufPtr.14325)($17)
	lui	$2,%hi(doMicroPython.14326)
	sw	$0,%lo(doMicroPython.14326)($2)
.L28:
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
	lui	$2,%hi(led_count.14348)
	lw	$2,%lo(led_count.14348)($2)
	bne	$2,$0,.L58
	lui	$2,%hi(led_count.14348)

	li	$3,65536			# 0x10000
	ori	$3,$3,0x86a0
	sw	$3,%lo(led_count.14348)($2)
	lui	$2,%hi(led_count.14348)
.L58:
	lw	$3,%lo(led_count.14348)($2)
	addiu	$3,$3,-1
	jal	getUSBSuspendControl
	sw	$3,%lo(led_count.14348)($2)

	li	$3,1			# 0x1
	bne	$2,$3,.L43
	lui	$2,%hi(led_count.14348)

	lw	$2,%lo(led_count.14348)($2)
	bnel	$2,$0,.L59
	lw	$31,20($sp)

	lui	$2,%hi(LATC)
	lw	$3,%lo(LATC)($2)
	li	$4,1			# 0x1
	ins	$3,$4,0,1
	sw	$3,%lo(LATC)($2)
	lw	$3,%lo(LATC)($2)
	ins	$3,$4,1,1
	sw	$3,%lo(LATC)($2)
	j	.L55
	lw	$31,20($sp)

.L43:
	jal	USBDeviceStateDETACHED
	nop

	beq	$2,$0,.L45
	lui	$2,%hi(LATC)

	lw	$3,%lo(LATC)($2)
	ins	$3,$0,0,1
	sw	$3,%lo(LATC)($2)
	lw	$3,%lo(LATC)($2)
	ins	$3,$0,1,1
	sw	$3,%lo(LATC)($2)
	j	.L55
	lw	$31,20($sp)

.L45:
	jal	USBDeviceStateATTACHED
	nop

	beq	$2,$0,.L46
	lui	$2,%hi(LATC)

	lw	$3,%lo(LATC)($2)
	li	$4,1			# 0x1
	ins	$3,$4,0,1
	sw	$3,%lo(LATC)($2)
	lw	$3,%lo(LATC)($2)
	ins	$3,$4,1,1
	sw	$3,%lo(LATC)($2)
	j	.L55
	lw	$31,20($sp)

.L46:
	jal	USBDeviceStatePOWERED
	nop

	beq	$2,$0,.L47
	lui	$2,%hi(LATC)

	lw	$3,%lo(LATC)($2)
	li	$4,1			# 0x1
	ins	$3,$4,0,1
	sw	$3,%lo(LATC)($2)
	lw	$3,%lo(LATC)($2)
	ins	$3,$0,1,1
	sw	$3,%lo(LATC)($2)
	j	.L55
	lw	$31,20($sp)

.L47:
	jal	USBDeviceStateDEFAULT
	nop

	beq	$2,$0,.L48
	lui	$2,%hi(LATC)

	lw	$3,%lo(LATC)($2)
	ins	$3,$0,0,1
	sw	$3,%lo(LATC)($2)
	lw	$3,%lo(LATC)($2)
	li	$4,1			# 0x1
	ins	$3,$4,1,1
	sw	$3,%lo(LATC)($2)
	j	.L55
	lw	$31,20($sp)

.L48:
	jal	USBDeviceStateADDRESS
	nop

	beq	$2,$0,.L49
	lui	$2,%hi(led_count.14348)

	lw	$2,%lo(led_count.14348)($2)
	bnel	$2,$0,.L59
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
	j	.L55
	lw	$31,20($sp)

.L49:
	jal	USBDeviceStateCONFIGURED
	nop

	beq	$2,$0,.L41
	lui	$2,%hi(led_count.14348)

	lw	$2,%lo(led_count.14348)($2)
	bne	$2,$0,.L41
	lui	$2,%hi(LATC)

	lw	$2,%lo(LATC)($2)
	andi	$2,$2,0x1
	beq	$2,$0,.L50
	lui	$2,%hi(LATC)

	lw	$3,%lo(LATC)($2)
	ins	$3,$0,0,1
	sw	$3,%lo(LATC)($2)
	j	.L56
	lui	$2,%hi(LATC)

.L50:
	lw	$3,%lo(LATC)($2)
	li	$4,1			# 0x1
	ins	$3,$4,0,1
	sw	$3,%lo(LATC)($2)
	lui	$2,%hi(LATC)
.L56:
	lw	$2,%lo(LATC)($2)
	andi	$2,$2,0x2
	beq	$2,$0,.L52
	lui	$2,%hi(LATC)

	lw	$3,%lo(LATC)($2)
	ins	$3,$0,1,1
	sw	$3,%lo(LATC)($2)
	j	.L57
	lui	$2,%hi(LATB)

.L52:
	lw	$3,%lo(LATC)($2)
	li	$4,1			# 0x1
	ins	$3,$4,1,1
	sw	$3,%lo(LATC)($2)
	lui	$2,%hi(LATB)
.L57:
	lw	$2,%lo(LATB)($2)
	andi	$2,$2,0x8
	beq	$2,$0,.L54
	lui	$2,%hi(LATB)

	lw	$3,%lo(LATB)($2)
	ins	$3,$0,3,1
	sw	$3,%lo(LATB)($2)
	j	.L55
	lw	$31,20($sp)

.L54:
	lw	$3,%lo(LATB)($2)
	li	$4,1			# 0x1
	ins	$3,$4,3,1
	sw	$3,%lo(LATB)($2)
.L41:
	lw	$31,20($sp)
.L55:
.L59:
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
	.align	2
	.type	led_count.14348, @object
	.size	led_count.14348, 4
led_count.14348:
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
	.align	2
	.type	mp_buffer.14340, @object
	.size	mp_buffer.14340, 128
mp_buffer.14340:
	.space	128
	.align	2
	.type	doMicroPython.14326, @object
	.size	doMicroPython.14326, 4
doMicroPython.14326:
	.space	4
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
