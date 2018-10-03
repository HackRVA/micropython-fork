	.file	1 "microchip.c"
	.section .mdebug.abi32
	.previous
	.gnu_attribute 4, 3
	.section	.text,code
	.align	2
	.globl	microchip_main
	.set	nomips16
	.set	nomicromips
	.ent	microchip_main
	.type	microchip_main, @function
microchip_main:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24
	sw	$31,20($sp)
	lui	$2,%hi(USB_In_Buffer)
	addiu	$2,$2,%lo(USB_In_Buffer)
	addiu	$3,$2,64
	sb	$0,0($2)
.L7:
	addiu	$2,$2,1
	bnel	$2,$3,.L7
	sb	$0,0($2)

	lui	$2,%hi(USB_Out_Buffer)
	addiu	$2,$2,%lo(USB_Out_Buffer)
	addiu	$3,$2,64
	sb	$0,0($2)
.L8:
	addiu	$2,$2,1
	bnel	$2,$3,.L8
	sb	$0,0($2)

	jal	INTDisableInterrupts
	nop

	li	$4,64			# 0x40
	lui	$3,%hi(BMXCONCLR)
	sw	$4,%lo(BMXCONCLR)($3)
	lui	$3,%hi(OSCCON)
	lw	$3,%lo(OSCCON)($3)
	jal	INTRestoreInterrupts
	move	$4,$2

	jal	UserInit
	nop

	jal	USBDeviceInit
	nop

	jal	USBDeviceAttach
	nop

.L4:
	jal	ProcessIO
	nop

	j	.L4
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	microchip_main
	.size	microchip_main, .-microchip_main
	.align	2
	.globl	USBbufferSizeIn
	.set	nomips16
	.set	nomicromips
	.ent	USBbufferSizeIn
	.type	USBbufferSizeIn, @function
USBbufferSizeIn:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	j	$31
	li	$2,64			# 0x40

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	USBbufferSizeIn
	.size	USBbufferSizeIn, .-USBbufferSizeIn
	.align	2
	.globl	USBbufferSizeOut
	.set	nomips16
	.set	nomicromips
	.ent	USBbufferSizeOut
	.type	USBbufferSizeOut, @function
USBbufferSizeOut:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	j	$31
	li	$2,64			# 0x40

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	USBbufferSizeOut
	.size	USBbufferSizeOut, .-USBbufferSizeOut
	.align	2
	.globl	USBtransferReady
	.set	nomips16
	.set	nomicromips
	.ent	USBtransferReady
	.type	USBtransferReady, @function
USBtransferReady:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	lui	$2,%hi(cdc_trf_state)
	lbu	$2,%lo(cdc_trf_state)($2)
	j	$31
	sltu	$2,$2,1

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	USBtransferReady
	.size	USBtransferReady, .-USBtransferReady
	.align	2
	.globl	mchipUSBnotReady
	.set	nomips16
	.set	nomicromips
	.ent	mchipUSBnotReady
	.type	mchipUSBnotReady, @function
mchipUSBnotReady:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	lui	$2,%hi(USBDeviceState)
	lw	$2,%lo(USBDeviceState)($2)
	sltu	$2,$2,32
	bnel	$2,$0,.L15
	li	$2,1			# 0x1

	lui	$2,%hi(U1PWRC)
	lw	$2,%lo(U1PWRC)($2)
	j	$31
	ext	$2,$2,1,1

.L15:
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	mchipUSBnotReady
	.size	mchipUSBnotReady, .-mchipUSBnotReady
	.align	2
	.globl	getUSBSuspendControl
	.set	nomips16
	.set	nomicromips
	.ent	getUSBSuspendControl
	.type	getUSBSuspendControl, @function
getUSBSuspendControl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	lui	$2,%hi(U1PWRC)
	lw	$2,%lo(U1PWRC)($2)
	j	$31
	ext	$2,$2,1,1

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	getUSBSuspendControl
	.size	getUSBSuspendControl, .-getUSBSuspendControl
	.align	2
	.globl	USBDeviceStateDETACHED
	.set	nomips16
	.set	nomicromips
	.ent	USBDeviceStateDETACHED
	.type	USBDeviceStateDETACHED, @function
USBDeviceStateDETACHED:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	lui	$2,%hi(USBDeviceState)
	lw	$2,%lo(USBDeviceState)($2)
	j	$31
	sltu	$2,$2,1

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	USBDeviceStateDETACHED
	.size	USBDeviceStateDETACHED, .-USBDeviceStateDETACHED
	.align	2
	.globl	USBDeviceStateATTACHED
	.set	nomips16
	.set	nomicromips
	.ent	USBDeviceStateATTACHED
	.type	USBDeviceStateATTACHED, @function
USBDeviceStateATTACHED:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	lui	$2,%hi(USBDeviceState)
	lw	$2,%lo(USBDeviceState)($2)
	xori	$2,$2,0x1
	j	$31
	sltu	$2,$2,1

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	USBDeviceStateATTACHED
	.size	USBDeviceStateATTACHED, .-USBDeviceStateATTACHED
	.align	2
	.globl	USBDeviceStatePOWERED
	.set	nomips16
	.set	nomicromips
	.ent	USBDeviceStatePOWERED
	.type	USBDeviceStatePOWERED, @function
USBDeviceStatePOWERED:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	lui	$2,%hi(USBDeviceState)
	lw	$2,%lo(USBDeviceState)($2)
	xori	$2,$2,0x2
	j	$31
	sltu	$2,$2,1

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	USBDeviceStatePOWERED
	.size	USBDeviceStatePOWERED, .-USBDeviceStatePOWERED
	.align	2
	.globl	USBDeviceStateDEFAULT
	.set	nomips16
	.set	nomicromips
	.ent	USBDeviceStateDEFAULT
	.type	USBDeviceStateDEFAULT, @function
USBDeviceStateDEFAULT:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	lui	$2,%hi(USBDeviceState)
	lw	$2,%lo(USBDeviceState)($2)
	xori	$2,$2,0x4
	j	$31
	sltu	$2,$2,1

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	USBDeviceStateDEFAULT
	.size	USBDeviceStateDEFAULT, .-USBDeviceStateDEFAULT
	.align	2
	.globl	USBDeviceStateADDRESS
	.set	nomips16
	.set	nomicromips
	.ent	USBDeviceStateADDRESS
	.type	USBDeviceStateADDRESS, @function
USBDeviceStateADDRESS:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	lui	$2,%hi(USBDeviceState)
	lw	$2,%lo(USBDeviceState)($2)
	xori	$2,$2,0x10
	j	$31
	sltu	$2,$2,1

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	USBDeviceStateADDRESS
	.size	USBDeviceStateADDRESS, .-USBDeviceStateADDRESS
	.align	2
	.globl	USBDeviceStateCONFIGURED
	.set	nomips16
	.set	nomicromips
	.ent	USBDeviceStateCONFIGURED
	.type	USBDeviceStateCONFIGURED, @function
USBDeviceStateCONFIGURED:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	lui	$2,%hi(USBDeviceState)
	lw	$2,%lo(USBDeviceState)($2)
	xori	$2,$2,0x20
	j	$31
	sltu	$2,$2,1

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	USBDeviceStateCONFIGURED
	.size	USBDeviceStateCONFIGURED, .-USBDeviceStateCONFIGURED
	.align	2
	.globl	mySetLineCodingHandler
	.set	nomips16
	.set	nomicromips
	.ent	mySetLineCodingHandler
	.type	mySetLineCodingHandler, @function
mySetLineCodingHandler:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	lui	$2,%hi(cdc_notice)
	lbu	$5,%lo(cdc_notice)($2)
	andi	$5,$5,0x00ff
	addiu	$2,$2,%lo(cdc_notice)
	lbu	$4,1($2)
	andi	$4,$4,0x00ff
	sll	$4,$4,8
	or	$4,$4,$5
	lbu	$3,2($2)
	andi	$3,$3,0x00ff
	sll	$3,$3,16
	or	$3,$3,$4
	lbu	$2,3($2)
	sll	$2,$2,24
	or	$2,$2,$3
	li	$3,65536			# 0x10000
	ori	$3,$3,0xc201
	sltu	$2,$2,$3
	beq	$2,$0,.L25
	lui	$2,%hi(cdc_notice)

	lbu	$6,%lo(cdc_notice)($2)
	andi	$6,$6,0x00ff
	addiu	$2,$2,%lo(cdc_notice)
	lbu	$5,1($2)
	andi	$5,$5,0x00ff
	sll	$5,$5,8
	or	$5,$5,$6
	lbu	$4,2($2)
	andi	$4,$4,0x00ff
	sll	$4,$4,16
	or	$4,$4,$5
	lbu	$3,3($2)
	sll	$3,$3,24
	or	$3,$3,$4
	lui	$2,%hi(line_coding)
	sw	$3,%lo(line_coding)($2)
.L25:
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	mySetLineCodingHandler
	.size	mySetLineCodingHandler, .-mySetLineCodingHandler
	.align	2
	.globl	USBCBSuspend
	.set	nomips16
	.set	nomicromips
	.ent	USBCBSuspend
	.type	USBCBSuspend, @function
USBCBSuspend:
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
	.end	USBCBSuspend
	.size	USBCBSuspend, .-USBCBSuspend
	.align	2
	.globl	USBCBWakeFromSuspend
	.set	nomips16
	.set	nomicromips
	.ent	USBCBWakeFromSuspend
	.type	USBCBWakeFromSuspend, @function
USBCBWakeFromSuspend:
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
	.end	USBCBWakeFromSuspend
	.size	USBCBWakeFromSuspend, .-USBCBWakeFromSuspend
	.align	2
	.globl	USBCB_SOF_Handler
	.set	nomips16
	.set	nomicromips
	.ent	USBCB_SOF_Handler
	.type	USBCB_SOF_Handler, @function
USBCB_SOF_Handler:
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
	.end	USBCB_SOF_Handler
	.size	USBCB_SOF_Handler, .-USBCB_SOF_Handler
	.align	2
	.globl	USBCBErrorHandler
	.set	nomips16
	.set	nomicromips
	.ent	USBCBErrorHandler
	.type	USBCBErrorHandler, @function
USBCBErrorHandler:
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
	.end	USBCBErrorHandler
	.size	USBCBErrorHandler, .-USBCBErrorHandler
	.align	2
	.globl	USBCBCheckOtherReq
	.set	nomips16
	.set	nomicromips
	.ent	USBCBCheckOtherReq
	.type	USBCBCheckOtherReq, @function
USBCBCheckOtherReq:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24
	sw	$31,20($sp)
	jal	USBCheckCDCRequest
	nop

	lw	$31,20($sp)
	j	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	USBCBCheckOtherReq
	.size	USBCBCheckOtherReq, .-USBCBCheckOtherReq
	.align	2
	.globl	USBCBStdSetDscHandler
	.set	nomips16
	.set	nomicromips
	.ent	USBCBStdSetDscHandler
	.type	USBCBStdSetDscHandler, @function
USBCBStdSetDscHandler:
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
	.end	USBCBStdSetDscHandler
	.size	USBCBStdSetDscHandler, .-USBCBStdSetDscHandler
	.align	2
	.globl	USBCBInitEP
	.set	nomips16
	.set	nomicromips
	.ent	USBCBInitEP
	.type	USBCBInitEP, @function
USBCBInitEP:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24
	sw	$31,20($sp)
	jal	CDCInitEP
	nop

	lw	$31,20($sp)
	j	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	USBCBInitEP
	.size	USBCBInitEP, .-USBCBInitEP
	.align	2
	.globl	USBCBSendResume
	.set	nomips16
	.set	nomicromips
	.ent	USBCBSendResume
	.type	USBCBSendResume, @function
USBCBSendResume:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	lui	$2,%hi(RemoteWakeup)
	lw	$3,%lo(RemoteWakeup)($2)
	li	$2,1			# 0x1
	bne	$3,$2,.L41
	lui	$2,%hi(USBBusIsSuspended)

	lw	$3,%lo(USBBusIsSuspended)($2)
	li	$2,1			# 0x1
	bne	$3,$2,.L41
	li	$3,8			# 0x8

	lui	$2,%hi(IEC1CLR)
	sw	$3,%lo(IEC1CLR)($2)
	lui	$2,%hi(U1PWRC)
	lw	$3,%lo(U1PWRC)($2)
	ins	$3,$0,1,1
	sw	$3,%lo(U1PWRC)($2)
	lui	$2,%hi(USBBusIsSuspended)
	sw	$0,%lo(USBBusIsSuspended)($2)
	li	$2,3600			# 0xe10
	addiu	$2,$2,-1
.L39:
	andi	$2,$2,0xffff
	bne	$2,$0,.L39
	addiu	$2,$2,-1

	lui	$2,%hi(U1CON)
	lw	$3,%lo(U1CON)($2)
	li	$4,1			# 0x1
	ins	$3,$4,2,1
	sw	$3,%lo(U1CON)($2)
	li	$2,1800			# 0x708
	addiu	$2,$2,-1
.L40:
	andi	$2,$2,0xffff
	bne	$2,$0,.L40
	addiu	$2,$2,-1

	lui	$2,%hi(delay_count.13432)
	sh	$0,%lo(delay_count.13432)($2)
	lui	$2,%hi(U1CON)
	lw	$3,%lo(U1CON)($2)
	ins	$3,$0,2,1
	sw	$3,%lo(U1CON)($2)
	li	$3,8			# 0x8
	lui	$2,%hi(IEC1SET)
	sw	$3,%lo(IEC1SET)($2)
.L41:
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	USBCBSendResume
	.size	USBCBSendResume, .-USBCBSendResume
	.align	2
	.globl	USER_USB_CALLBACK_EVENT_HANDLER
	.set	nomips16
	.set	nomicromips
	.ent	USER_USB_CALLBACK_EVENT_HANDLER
	.type	USER_USB_CALLBACK_EVENT_HANDLER, @function
USER_USB_CALLBACK_EVENT_HANDLER:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24
	li	$2,1			# 0x1
	beq	$4,$2,.L44
	sw	$31,20($sp)

	li	$2,3			# 0x3
	bne	$4,$2,.L47
	li	$2,1			# 0x1

	j	.L46
	nop

.L44:
	jal	USBCBInitEP
	nop

	j	.L47
	li	$2,1			# 0x1

.L46:
	jal	USBCBCheckOtherReq
	nop

	li	$2,1			# 0x1
.L47:
	lw	$31,20($sp)
	j	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	USER_USB_CALLBACK_EVENT_HANDLER
	.size	USER_USB_CALLBACK_EVENT_HANDLER, .-USER_USB_CALLBACK_EVENT_HANDLER
	.globl	USB_In_Buffer
	.section	.bss,bss
	.align	2
	.type	USB_In_Buffer, @object
	.size	USB_In_Buffer, 64
USB_In_Buffer:
	.space	64
	.globl	USB_Out_Buffer
	.align	2
	.type	USB_Out_Buffer, @object
	.size	USB_Out_Buffer, 64
USB_Out_Buffer:
	.space	64
	.align	1
	.type	delay_count.13432, @object
	.size	delay_count.13432, 2
delay_count.13432:
	.space	2
	.ident	"GCC: (Microchip Technology) 4.5.2 MPLAB XC32 Compiler v1.34"
# Begin MCHP vector dispatch table
# End MCHP vector dispatch table
# Microchip Technology PIC32 MCU configuration words
