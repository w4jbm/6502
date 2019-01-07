; Jxx <target address>
; Similar to Bxx except it does not have the 128 byte limit of the branch.
; Simple implementation uses a branch to skip around a JMP instruction.
;
; Called using format "#jxx <addr>"

jeq	.macro
	bne *+5
	jmp \1
	.endm

jne	.macro
	beq *+5
	jmp \1
	.endm

jmi	.macro
	bpl *+5
	jmp \1
	.endm

jpl	.macro
	bmi *+5
	jmp \1
	.endm

jcs	.macro
	bcc *+5
	jmp \1
	.endm

jcc	.macro
	bcs *+5
	jmp \1
	.endm

jvs	.macro
	bvc *+5
	jmp \1
	.endm

jvc	.macro
	bvs *+5
	jmp \1
	.endm
