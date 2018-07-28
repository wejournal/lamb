.globl	lamb_n0
lamb_n0:
	/* GRAB */
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%rcx
	movq	%rdi,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	pushq	%r12
	movq	%r11,	%r9
	movq	%r10,	%r8
	call	gc_alloc
	popq	%r12
	popq	%r12
	popq	%rcx
	popq	%rdx
	popq	%rsi
	popq	%rdi
	pushq	%rax
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%rcx
	leaq	0(%rdi, %rdi, 2),	%rdx
	salq	$3,	%rdx
	movq	%rax,	%rdi
	call	memcpy
	popq	%rcx
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%rsi
	decq	%rdx
	leaq	0(%rdx, %rdx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rcx
	movq	(%rcx),	%r10
	movq	8(%rcx),	%r11
	movq	16(%rcx),	%r12
	movq	$0,	(%rcx)
	movq	$0,	8(%rcx)
	movq	$0,	16(%rcx)
	subq	%r13,	%rcx
	leaq	0(%rdi, %rdi, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rsi
	movq	%r10,	(%rsi)
	movq	%r11,	8(%rsi)
	movq	%r12,	16(%rsi)
	subq	%r13,	%rsi
	incq	%rdi
	/* GRAB */
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%rcx
	movq	%rdi,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	pushq	%r12
	movq	%r11,	%r9
	movq	%r10,	%r8
	call	gc_alloc
	popq	%r12
	popq	%r12
	popq	%rcx
	popq	%rdx
	popq	%rsi
	popq	%rdi
	pushq	%rax
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%rcx
	leaq	0(%rdi, %rdi, 2),	%rdx
	salq	$3,	%rdx
	movq	%rax,	%rdi
	call	memcpy
	popq	%rcx
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%rsi
	decq	%rdx
	leaq	0(%rdx, %rdx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rcx
	movq	(%rcx),	%r10
	movq	8(%rcx),	%r11
	movq	16(%rcx),	%r12
	movq	$0,	(%rcx)
	movq	$0,	8(%rcx)
	movq	$0,	16(%rcx)
	subq	%r13,	%rcx
	leaq	0(%rdi, %rdi, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rsi
	movq	%r10,	(%rsi)
	movq	%r11,	8(%rsi)
	movq	%r12,	16(%rsi)
	subq	%r13,	%rsi
	incq	%rdi
	/* ACCESS 0 */
	pushq	%rsi
	pushq	%rdi
	movq	%rdi,	%r13
	subq	$1,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rsi
	movq	(%rsi),	%r10
	movq	8(%rsi),	%r11
	movq	16(%rsi),	%r12
	subq	%r13,	%rsi
	movq	%r11,	%rdi
	movq	%r12,	%rsi
	popq	%r13
	popq	%r14
	jmp	*%r10
