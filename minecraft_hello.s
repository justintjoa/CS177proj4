	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 15	sdk_version 10, 15, 4
	.intel_syntax noprefix
	.globl	_win                    ## -- Begin function win
	.p2align	4, 0x90
_win:                                   ## @win
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 32
	xor	eax, eax
	mov	edx, eax
	lea	rsi, [rbp - 32]
	mov	rcx, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rcx, qword ptr [rcx]
	mov	qword ptr [rbp - 8], rcx
	mov	rcx, qword ptr [rip + l___const.win.argv]
	mov	qword ptr [rbp - 32], rcx
	mov	rcx, qword ptr [rip + l___const.win.argv+8]
	mov	qword ptr [rbp - 24], rcx
	lea	rdi, [rip + L_.str]
	call	_execve
	mov	rcx, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rcx, qword ptr [rcx]
	mov	rdx, qword ptr [rbp - 8]
	cmp	rcx, rdx
	jne	LBB0_2
## %bb.1:
	add	rsp, 32
	pop	rbp
	ret
LBB0_2:
	call	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.globl	_mine                   ## -- Begin function mine
	.p2align	4, 0x90
_mine:                                  ## @mine
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 48
	mov	qword ptr [rbp - 16], rdi
	mov	qword ptr [rbp - 24], rsi
	lea	rdi, [rip + L_.str.1]
	mov	al, 0
	call	_printf
	mov	rcx, qword ptr [rip + ___stdinp@GOTPCREL]
	mov	rdi, qword ptr [rbp - 16]
	mov	rdx, qword ptr [rcx]
	mov	esi, 7
	mov	dword ptr [rbp - 32], eax ## 4-byte Spill
	call	_fgets
	mov	rdi, qword ptr [rbp - 16]
	mov	qword ptr [rbp - 40], rax ## 8-byte Spill
	call	_atoi
	mov	dword ptr [rbp - 28], eax
	cmp	dword ptr [rbp - 28], -1
	jne	LBB1_2
## %bb.1:
	mov	byte ptr [rbp - 1], 0
	jmp	LBB1_3
LBB1_2:
	mov	esi, dword ptr [rbp - 28]
	mov	rax, qword ptr [rbp - 24]
	movsxd	rcx, dword ptr [rbp - 28]
	mov	rdx, qword ptr [rax + 8*rcx]
	lea	rdi, [rip + L_.str.2]
	mov	al, 0
	call	_printf
	mov	byte ptr [rbp - 1], 1
LBB1_3:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 48
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_main                   ## -- Begin function main
	.p2align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 288
	xor	eax, eax
	mov	esi, eax
	mov	rcx, qword ptr [rip + ___stdoutp@GOTPCREL]
	mov	rdx, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rdx, qword ptr [rdx]
	mov	qword ptr [rbp - 8], rdx
	mov	dword ptr [rbp - 260], 0
	mov	rdi, qword ptr [rcx]
	call	_setbuf
	lea	rdi, [rip + L_.str.3]
	call	_puts
	lea	rdi, [rip + L_.str.4]
	mov	dword ptr [rbp - 264], eax ## 4-byte Spill
	call	_puts
	lea	rdi, [rip + L_.str.5]
	mov	dword ptr [rbp - 268], eax ## 4-byte Spill
	call	_puts
	lea	rdi, [rip + L_.str.6]
	mov	dword ptr [rbp - 272], eax ## 4-byte Spill
	call	_puts
	mov	qword ptr [rbp - 248], 4919
	mov	qword ptr [rbp - 184], 9011
	mov	qword ptr [rbp - 104], 8224
LBB2_1:                                 ## =>This Inner Loop Header: Depth=1
	lea	rsi, [rbp - 256]
	lea	rdi, [rbp - 96]
	call	_mine
	test	al, 1
	jne	LBB2_2
	jmp	LBB2_3
LBB2_2:                                 ##   in Loop: Header=BB2_1 Depth=1
	jmp	LBB2_1
LBB2_3:
	lea	rdi, [rip + L_.str.7]
	call	_puts
	mov	rcx, qword ptr [rip + ___stdinp@GOTPCREL]
	lea	rdi, [rbp - 96]
	mov	rdx, qword ptr [rcx]
	mov	esi, 200
	mov	dword ptr [rbp - 276], eax ## 4-byte Spill
	call	_fgets
	lea	rdi, [rip + L_.str.8]
	mov	qword ptr [rbp - 288], rax ## 8-byte Spill
	call	_puts
	mov	rcx, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rcx, qword ptr [rcx]
	mov	rdx, qword ptr [rbp - 8]
	cmp	rcx, rdx
	jne	LBB2_5
## %bb.4:
	xor	eax, eax
	add	rsp, 288
	pop	rbp
	ret
LBB2_5:
	call	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"/bin/sh"

	.section	__DATA,__const
	.p2align	4               ## @__const.win.argv
l___const.win.argv:
	.quad	L_.str
	.quad	0

	.section	__TEXT,__cstring,cstring_literals
L_.str.1:                               ## @.str.1
	.asciz	"Which block do you want to mine? >> "

L_.str.2:                               ## @.str.2
	.asciz	"block %d contains 0x%zx.\n"

L_.str.3:                               ## @.str.3
	.asciz	"Welcome to m1nEcr4F7!"

L_.str.4:                               ## @.str.4
	.asciz	"Explore your world, and create anything you can imagine!"

L_.str.5:                               ## @.str.5
	.asciz	"Now let's mine some blocks and see what you get..."

L_.str.6:                               ## @.str.6
	.asciz	"(Mine block -1 to exit.)"

L_.str.7:                               ## @.str.7
	.asciz	"Before you go, can I know your name?"

L_.str.8:                               ## @.str.8
	.asciz	"Very good, bye."


.subsections_via_symbols
