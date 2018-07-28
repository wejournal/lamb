.globl	lamb_n1
lamb_n1:
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
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0] */
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%rcx
	movq	$lamb_n1_0,	(%rcx)
	movq	%rdi,	8(%rcx)
	movq	%rsi,	16(%rcx)
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%rcx
	incq	%rdx
	/* ACCESS 1 */
	pushq	%rsi
	pushq	%rdi
	movq	%rdi,	%r13
	subq	$2,	%r13
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
lamb_n1_0:
	/* PUSH [ACCESS 0] */
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%rcx
	movq	$lamb_n1_0_1,	(%rcx)
	movq	%rdi,	8(%rcx)
	movq	%rsi,	16(%rcx)
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%rcx
	incq	%rdx
	/* PUSH [ACCESS 1] */
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%rcx
	movq	$lamb_n1_0_2,	(%rcx)
	movq	%rdi,	8(%rcx)
	movq	%rsi,	16(%rcx)
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%rcx
	incq	%rdx
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
lamb_n1_0_1:
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
lamb_n1_0_2:
	/* ACCESS 1 */
	pushq	%rsi
	pushq	%rdi
	movq	%rdi,	%r13
	subq	$2,	%r13
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
