.globl	lamb_n83
lamb_n83:
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
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%rcx
	movq	$lamb_n83_0,	(%rcx)
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
lamb_n83_0:
	/* PUSH [ACCESS 0] */
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%rcx
	movq	$lamb_n83_0_1,	(%rcx)
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
	movq	$lamb_n83_0_2,	(%rcx)
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
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%rcx
	movq	$lamb_n83_0_3,	(%rcx)
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
lamb_n83_0_1:
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
lamb_n83_0_2:
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
lamb_n83_0_3:
	/* PUSH [ACCESS 0] */
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%rcx
	movq	$lamb_n83_0_3_4,	(%rcx)
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
	movq	$lamb_n83_0_3_5,	(%rcx)
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
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%rcx
	movq	$lamb_n83_0_3_6,	(%rcx)
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
lamb_n83_0_3_4:
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
lamb_n83_0_3_5:
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
lamb_n83_0_3_6:
	/* PUSH [ACCESS 0] */
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%rcx
	movq	$lamb_n83_0_3_6_7,	(%rcx)
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
	movq	$lamb_n83_0_3_6_8,	(%rcx)
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
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%rcx
	movq	$lamb_n83_0_3_6_9,	(%rcx)
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
lamb_n83_0_3_6_7:
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
lamb_n83_0_3_6_8:
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
lamb_n83_0_3_6_9:
	/* PUSH [ACCESS 0] */
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%rcx
	movq	$lamb_n83_0_3_6_9_10,	(%rcx)
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
	movq	$lamb_n83_0_3_6_9_11,	(%rcx)
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
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%rcx
	movq	$lamb_n83_0_3_6_9_12,	(%rcx)
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
lamb_n83_0_3_6_9_10:
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
lamb_n83_0_3_6_9_11:
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
lamb_n83_0_3_6_9_12:
	/* PUSH [ACCESS 0] */
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%rcx
	movq	$lamb_n83_0_3_6_9_12_13,	(%rcx)
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
	movq	$lamb_n83_0_3_6_9_12_14,	(%rcx)
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
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%rcx
	movq	$lamb_n83_0_3_6_9_12_15,	(%rcx)
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
lamb_n83_0_3_6_9_12_13:
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
lamb_n83_0_3_6_9_12_14:
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
lamb_n83_0_3_6_9_12_15:
	/* PUSH [ACCESS 0] */
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%rcx
	movq	$lamb_n83_0_3_6_9_12_15_16,	(%rcx)
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
	movq	$lamb_n83_0_3_6_9_12_15_17,	(%rcx)
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
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%rcx
	movq	$lamb_n83_0_3_6_9_12_15_18,	(%rcx)
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
lamb_n83_0_3_6_9_12_15_16:
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
lamb_n83_0_3_6_9_12_15_17:
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
lamb_n83_0_3_6_9_12_15_18:
	/* PUSH [ACCESS 0] */
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%rcx
	movq	$lamb_n83_0_3_6_9_12_15_18_19,	(%rcx)
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
	movq	$lamb_n83_0_3_6_9_12_15_18_20,	(%rcx)
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
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%rcx
	movq	$lamb_n83_0_3_6_9_12_15_18_21,	(%rcx)
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
lamb_n83_0_3_6_9_12_15_18_19:
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
lamb_n83_0_3_6_9_12_15_18_20:
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
lamb_n83_0_3_6_9_12_15_18_21:
	/* PUSH [ACCESS 0] */
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%rcx
	movq	$lamb_n83_0_3_6_9_12_15_18_21_22,	(%rcx)
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
	movq	$lamb_n83_0_3_6_9_12_15_18_21_23,	(%rcx)
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
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%rcx
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24,	(%rcx)
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
lamb_n83_0_3_6_9_12_15_18_21_22:
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
lamb_n83_0_3_6_9_12_15_18_21_23:
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
lamb_n83_0_3_6_9_12_15_18_21_24:
	/* PUSH [ACCESS 0] */
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%rcx
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_25,	(%rcx)
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
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_26,	(%rcx)
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
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%rcx
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27,	(%rcx)
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
lamb_n83_0_3_6_9_12_15_18_21_24_25:
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
lamb_n83_0_3_6_9_12_15_18_21_24_26:
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
lamb_n83_0_3_6_9_12_15_18_21_24_27:
	/* PUSH [ACCESS 0] */
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%rcx
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_28,	(%rcx)
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
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_29,	(%rcx)
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
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%rcx
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30,	(%rcx)
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_28:
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_29:
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30:
	/* PUSH [ACCESS 0] */
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%rcx
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_31,	(%rcx)
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
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_32,	(%rcx)
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
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%rcx
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33,	(%rcx)
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_31:
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_32:
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33:
	/* PUSH [ACCESS 0] */
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%rcx
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_34,	(%rcx)
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
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_35,	(%rcx)
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
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%rcx
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36,	(%rcx)
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_34:
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_35:
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36:
	/* PUSH [ACCESS 0] */
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%rcx
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_37,	(%rcx)
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
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_38,	(%rcx)
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
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%rcx
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39,	(%rcx)
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_37:
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_38:
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39:
	/* PUSH [ACCESS 0] */
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%rcx
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_40,	(%rcx)
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
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_41,	(%rcx)
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
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%rcx
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42,	(%rcx)
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_40:
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_41:
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42:
	/* PUSH [ACCESS 0] */
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%rcx
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_43,	(%rcx)
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
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_44,	(%rcx)
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
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%rcx
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45,	(%rcx)
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_43:
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_44:
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45:
	/* PUSH [ACCESS 0] */
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%rcx
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_46,	(%rcx)
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
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_47,	(%rcx)
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
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%rcx
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48,	(%rcx)
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_46:
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_47:
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48:
	/* PUSH [ACCESS 0] */
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%rcx
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_49,	(%rcx)
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
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_50,	(%rcx)
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
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%rcx
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51,	(%rcx)
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_49:
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_50:
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51:
	/* PUSH [ACCESS 0] */
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%rcx
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_52,	(%rcx)
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
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_53,	(%rcx)
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
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%rcx
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54,	(%rcx)
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_52:
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_53:
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54:
	/* PUSH [ACCESS 0] */
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%rcx
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_55,	(%rcx)
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
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_56,	(%rcx)
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
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%rcx
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57,	(%rcx)
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_55:
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_56:
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57:
	/* PUSH [ACCESS 0] */
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%rcx
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_58,	(%rcx)
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
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_59,	(%rcx)
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
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%rcx
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60,	(%rcx)
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_58:
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_59:
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60:
	/* PUSH [ACCESS 0] */
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%rcx
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_61,	(%rcx)
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
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_62,	(%rcx)
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
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%rcx
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63,	(%rcx)
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_61:
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_62:
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63:
	/* PUSH [ACCESS 0] */
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%rcx
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_64,	(%rcx)
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
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_65,	(%rcx)
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
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%rcx
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66,	(%rcx)
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_64:
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_65:
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66:
	/* PUSH [ACCESS 0] */
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%rcx
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_67,	(%rcx)
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
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_68,	(%rcx)
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
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%rcx
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69,	(%rcx)
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_67:
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_68:
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69:
	/* PUSH [ACCESS 0] */
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%rcx
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_70,	(%rcx)
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
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_71,	(%rcx)
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
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%rcx
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72,	(%rcx)
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_70:
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_71:
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72:
	/* PUSH [ACCESS 0] */
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%rcx
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_73,	(%rcx)
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
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_74,	(%rcx)
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
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%rcx
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75,	(%rcx)
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_73:
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_74:
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75:
	/* PUSH [ACCESS 0] */
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%rcx
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_76,	(%rcx)
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
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_77,	(%rcx)
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
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%rcx
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78,	(%rcx)
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_76:
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_77:
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78:
	/* PUSH [ACCESS 0] */
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%rcx
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_79,	(%rcx)
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
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_80,	(%rcx)
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
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%rcx
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81,	(%rcx)
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_79:
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_80:
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81:
	/* PUSH [ACCESS 0] */
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%rcx
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_82,	(%rcx)
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
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_83,	(%rcx)
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
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%rcx
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84,	(%rcx)
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_82:
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_83:
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84:
	/* PUSH [ACCESS 0] */
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%rcx
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_85,	(%rcx)
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
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_86,	(%rcx)
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
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%rcx
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87,	(%rcx)
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_85:
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_86:
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87:
	/* PUSH [ACCESS 0] */
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%rcx
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_88,	(%rcx)
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
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_89,	(%rcx)
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
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%rcx
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90,	(%rcx)
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_88:
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_89:
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90:
	/* PUSH [ACCESS 0] */
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%rcx
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_91,	(%rcx)
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
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_92,	(%rcx)
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
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%rcx
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93,	(%rcx)
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_91:
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_92:
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93:
	/* PUSH [ACCESS 0] */
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%rcx
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_94,	(%rcx)
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
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_95,	(%rcx)
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
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%rcx
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96,	(%rcx)
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_94:
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_95:
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96:
	/* PUSH [ACCESS 0] */
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%rcx
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_97,	(%rcx)
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
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_98,	(%rcx)
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
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%rcx
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99,	(%rcx)
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_97:
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_98:
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99:
	/* PUSH [ACCESS 0] */
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%rcx
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_100,	(%rcx)
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
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_101,	(%rcx)
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
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%rcx
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102,	(%rcx)
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_100:
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_101:
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102:
	/* PUSH [ACCESS 0] */
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%rcx
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_103,	(%rcx)
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
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_104,	(%rcx)
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
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%rcx
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105,	(%rcx)
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_103:
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_104:
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105:
	/* PUSH [ACCESS 0] */
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%rcx
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_106,	(%rcx)
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
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_107,	(%rcx)
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
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%rcx
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108,	(%rcx)
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_106:
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_107:
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108:
	/* PUSH [ACCESS 0] */
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%rcx
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_109,	(%rcx)
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
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_110,	(%rcx)
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
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%rcx
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111,	(%rcx)
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_109:
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_110:
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111:
	/* PUSH [ACCESS 0] */
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%rcx
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_112,	(%rcx)
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
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_113,	(%rcx)
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
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%rcx
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114,	(%rcx)
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_112:
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_113:
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114:
	/* PUSH [ACCESS 0] */
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%rcx
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_115,	(%rcx)
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
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_116,	(%rcx)
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
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%rcx
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117,	(%rcx)
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_115:
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_116:
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117:
	/* PUSH [ACCESS 0] */
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%rcx
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_118,	(%rcx)
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
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_119,	(%rcx)
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
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%rcx
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120,	(%rcx)
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_118:
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_119:
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120:
	/* PUSH [ACCESS 0] */
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%rcx
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_121,	(%rcx)
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
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_122,	(%rcx)
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
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%rcx
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123,	(%rcx)
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_121:
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_122:
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123:
	/* PUSH [ACCESS 0] */
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%rcx
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_124,	(%rcx)
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
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_125,	(%rcx)
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
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%rcx
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126,	(%rcx)
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_124:
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_125:
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126:
	/* PUSH [ACCESS 0] */
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%rcx
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_127,	(%rcx)
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
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_128,	(%rcx)
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
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%rcx
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129,	(%rcx)
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_127:
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_128:
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129:
	/* PUSH [ACCESS 0] */
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%rcx
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_130,	(%rcx)
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
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_131,	(%rcx)
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
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%rcx
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132,	(%rcx)
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_130:
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_131:
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132:
	/* PUSH [ACCESS 0] */
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%rcx
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_133,	(%rcx)
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
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_134,	(%rcx)
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
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%rcx
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135,	(%rcx)
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_133:
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_134:
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135:
	/* PUSH [ACCESS 0] */
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%rcx
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_136,	(%rcx)
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
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_137,	(%rcx)
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
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%rcx
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138,	(%rcx)
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_136:
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_137:
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138:
	/* PUSH [ACCESS 0] */
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%rcx
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_139,	(%rcx)
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
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_140,	(%rcx)
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
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%rcx
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141,	(%rcx)
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_139:
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_140:
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141:
	/* PUSH [ACCESS 0] */
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%rcx
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_142,	(%rcx)
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
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_143,	(%rcx)
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
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%rcx
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144,	(%rcx)
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_142:
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_143:
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144:
	/* PUSH [ACCESS 0] */
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%rcx
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_145,	(%rcx)
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
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_146,	(%rcx)
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
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%rcx
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147,	(%rcx)
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_145:
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_146:
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147:
	/* PUSH [ACCESS 0] */
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%rcx
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_148,	(%rcx)
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
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_149,	(%rcx)
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
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%rcx
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150,	(%rcx)
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_148:
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_149:
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150:
	/* PUSH [ACCESS 0] */
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%rcx
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_151,	(%rcx)
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
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_152,	(%rcx)
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
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%rcx
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153,	(%rcx)
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_151:
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_152:
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153:
	/* PUSH [ACCESS 0] */
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%rcx
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_154,	(%rcx)
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
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_155,	(%rcx)
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
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%rcx
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156,	(%rcx)
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_154:
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_155:
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156:
	/* PUSH [ACCESS 0] */
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%rcx
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_157,	(%rcx)
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
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_158,	(%rcx)
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
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%rcx
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159,	(%rcx)
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_157:
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_158:
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159:
	/* PUSH [ACCESS 0] */
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%rcx
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_160,	(%rcx)
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
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_161,	(%rcx)
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
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%rcx
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162,	(%rcx)
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_160:
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_161:
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162:
	/* PUSH [ACCESS 0] */
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%rcx
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_163,	(%rcx)
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
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_164,	(%rcx)
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
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%rcx
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165,	(%rcx)
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_163:
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_164:
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165:
	/* PUSH [ACCESS 0] */
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%rcx
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_166,	(%rcx)
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
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_167,	(%rcx)
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
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%rcx
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168,	(%rcx)
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_166:
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_167:
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168:
	/* PUSH [ACCESS 0] */
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%rcx
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_169,	(%rcx)
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
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_170,	(%rcx)
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
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%rcx
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171,	(%rcx)
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_169:
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_170:
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171:
	/* PUSH [ACCESS 0] */
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%rcx
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_172,	(%rcx)
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
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_173,	(%rcx)
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
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%rcx
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174,	(%rcx)
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_172:
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_173:
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174:
	/* PUSH [ACCESS 0] */
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%rcx
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_175,	(%rcx)
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
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_176,	(%rcx)
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
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%rcx
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177,	(%rcx)
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_175:
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_176:
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177:
	/* PUSH [ACCESS 0] */
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%rcx
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_178,	(%rcx)
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
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_179,	(%rcx)
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
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%rcx
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180,	(%rcx)
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_178:
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_179:
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180:
	/* PUSH [ACCESS 0] */
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%rcx
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_181,	(%rcx)
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
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_182,	(%rcx)
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
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%rcx
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183,	(%rcx)
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_181:
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_182:
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183:
	/* PUSH [ACCESS 0] */
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%rcx
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_184,	(%rcx)
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
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_185,	(%rcx)
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
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%rcx
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186,	(%rcx)
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_184:
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_185:
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186:
	/* PUSH [ACCESS 0] */
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%rcx
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_187,	(%rcx)
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
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_188,	(%rcx)
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
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%rcx
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189,	(%rcx)
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_187:
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_188:
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189:
	/* PUSH [ACCESS 0] */
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%rcx
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_190,	(%rcx)
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
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_191,	(%rcx)
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
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%rcx
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192,	(%rcx)
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_190:
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_191:
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192:
	/* PUSH [ACCESS 0] */
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%rcx
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_193,	(%rcx)
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
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_194,	(%rcx)
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
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%rcx
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195,	(%rcx)
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_193:
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_194:
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195:
	/* PUSH [ACCESS 0] */
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%rcx
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_196,	(%rcx)
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
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_197,	(%rcx)
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
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%rcx
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198,	(%rcx)
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_196:
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_197:
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198:
	/* PUSH [ACCESS 0] */
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%rcx
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_199,	(%rcx)
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
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_200,	(%rcx)
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
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%rcx
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201,	(%rcx)
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_199:
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_200:
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201:
	/* PUSH [ACCESS 0] */
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%rcx
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_202,	(%rcx)
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
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_203,	(%rcx)
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
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%rcx
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204,	(%rcx)
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_202:
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_203:
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204:
	/* PUSH [ACCESS 0] */
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%rcx
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_205,	(%rcx)
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
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_206,	(%rcx)
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
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%rcx
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207,	(%rcx)
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_205:
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_206:
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207:
	/* PUSH [ACCESS 0] */
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%rcx
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_208,	(%rcx)
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
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_209,	(%rcx)
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
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%rcx
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210,	(%rcx)
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_208:
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_209:
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210:
	/* PUSH [ACCESS 0] */
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%rcx
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_211,	(%rcx)
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
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_212,	(%rcx)
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
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%rcx
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213,	(%rcx)
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_211:
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_212:
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213:
	/* PUSH [ACCESS 0] */
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%rcx
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_214,	(%rcx)
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
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_215,	(%rcx)
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
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%rcx
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216,	(%rcx)
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_214:
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_215:
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216:
	/* PUSH [ACCESS 0] */
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%rcx
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_217,	(%rcx)
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
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_218,	(%rcx)
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
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%rcx
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219,	(%rcx)
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_217:
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_218:
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219:
	/* PUSH [ACCESS 0] */
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%rcx
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_220,	(%rcx)
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
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_221,	(%rcx)
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
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%rcx
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222,	(%rcx)
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_220:
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_221:
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222:
	/* PUSH [ACCESS 0] */
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%rcx
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_223,	(%rcx)
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
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_224,	(%rcx)
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
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%rcx
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225,	(%rcx)
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_223:
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_224:
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225:
	/* PUSH [ACCESS 0] */
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%rcx
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_226,	(%rcx)
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
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_227,	(%rcx)
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
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%rcx
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228,	(%rcx)
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_226:
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_227:
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228:
	/* PUSH [ACCESS 0] */
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%rcx
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_229,	(%rcx)
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
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_230,	(%rcx)
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
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%rcx
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231,	(%rcx)
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_229:
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_230:
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231:
	/* PUSH [ACCESS 0] */
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%rcx
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_232,	(%rcx)
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
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_233,	(%rcx)
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
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%rcx
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234,	(%rcx)
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_232:
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_233:
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234:
	/* PUSH [ACCESS 0] */
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%rcx
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_235,	(%rcx)
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
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_236,	(%rcx)
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
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%rcx
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237,	(%rcx)
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_235:
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_236:
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237:
	/* PUSH [ACCESS 0] */
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%rcx
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_238,	(%rcx)
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
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_239,	(%rcx)
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
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1] */
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%rcx
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240,	(%rcx)
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_238:
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_239:
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240:
	/* PUSH [ACCESS 0] */
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%rcx
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_241,	(%rcx)
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
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_242,	(%rcx)
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
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1] */
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%rcx
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243,	(%rcx)
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_241:
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_242:
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243:
	/* PUSH [ACCESS 0] */
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%rcx
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_244,	(%rcx)
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
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_245,	(%rcx)
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
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0] */
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%rcx
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246,	(%rcx)
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_244:
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_245:
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246:
	/* PUSH [ACCESS 0] */
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%rcx
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246_247,	(%rcx)
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
	movq	$lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246_248,	(%rcx)
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246_247:
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
lamb_n83_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246_248:
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
