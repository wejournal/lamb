.globl	lamb_n112
lamb_n112:
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0:
	/* PUSH [ACCESS 0] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_1,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* PUSH [ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_2,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_1:
	/* ACCESS 0 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$1,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_2:
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3:
	/* PUSH [ACCESS 0] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_4,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* PUSH [ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_5,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_4:
	/* ACCESS 0 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$1,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_5:
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6:
	/* PUSH [ACCESS 0] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_7,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* PUSH [ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_8,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_7:
	/* ACCESS 0 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$1,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_8:
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9:
	/* PUSH [ACCESS 0] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_10,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* PUSH [ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_11,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_10:
	/* ACCESS 0 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$1,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_11:
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12:
	/* PUSH [ACCESS 0] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_13,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* PUSH [ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_14,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_13:
	/* ACCESS 0 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$1,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_14:
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15:
	/* PUSH [ACCESS 0] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_16,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* PUSH [ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_17,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_16:
	/* ACCESS 0 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$1,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_17:
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18:
	/* PUSH [ACCESS 0] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_19,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* PUSH [ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_20,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_19:
	/* ACCESS 0 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$1,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_20:
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21:
	/* PUSH [ACCESS 0] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_22,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* PUSH [ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_23,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_22:
	/* ACCESS 0 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$1,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_23:
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24:
	/* PUSH [ACCESS 0] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_25,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* PUSH [ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_26,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_25:
	/* ACCESS 0 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$1,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_26:
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27:
	/* PUSH [ACCESS 0] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_28,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* PUSH [ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_29,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_28:
	/* ACCESS 0 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$1,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_29:
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30:
	/* PUSH [ACCESS 0] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_31,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* PUSH [ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_32,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_31:
	/* ACCESS 0 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$1,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_32:
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33:
	/* PUSH [ACCESS 0] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_34,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* PUSH [ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_35,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_34:
	/* ACCESS 0 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$1,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_35:
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36:
	/* PUSH [ACCESS 0] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_37,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* PUSH [ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_38,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_37:
	/* ACCESS 0 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$1,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_38:
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39:
	/* PUSH [ACCESS 0] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_40,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* PUSH [ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_41,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_40:
	/* ACCESS 0 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$1,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_41:
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42:
	/* PUSH [ACCESS 0] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_43,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* PUSH [ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_44,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_43:
	/* ACCESS 0 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$1,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_44:
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45:
	/* PUSH [ACCESS 0] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_46,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* PUSH [ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_47,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_46:
	/* ACCESS 0 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$1,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_47:
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48:
	/* PUSH [ACCESS 0] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_49,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* PUSH [ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_50,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_49:
	/* ACCESS 0 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$1,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_50:
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51:
	/* PUSH [ACCESS 0] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_52,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* PUSH [ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_53,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_52:
	/* ACCESS 0 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$1,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_53:
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54:
	/* PUSH [ACCESS 0] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_55,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* PUSH [ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_56,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_55:
	/* ACCESS 0 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$1,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_56:
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57:
	/* PUSH [ACCESS 0] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_58,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* PUSH [ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_59,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_58:
	/* ACCESS 0 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$1,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_59:
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60:
	/* PUSH [ACCESS 0] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_61,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* PUSH [ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_62,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_61:
	/* ACCESS 0 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$1,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_62:
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63:
	/* PUSH [ACCESS 0] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_64,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* PUSH [ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_65,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_64:
	/* ACCESS 0 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$1,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_65:
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66:
	/* PUSH [ACCESS 0] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_67,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* PUSH [ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_68,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_67:
	/* ACCESS 0 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$1,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_68:
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69:
	/* PUSH [ACCESS 0] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_70,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* PUSH [ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_71,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_70:
	/* ACCESS 0 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$1,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_71:
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72:
	/* PUSH [ACCESS 0] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_73,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* PUSH [ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_74,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_73:
	/* ACCESS 0 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$1,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_74:
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75:
	/* PUSH [ACCESS 0] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_76,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* PUSH [ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_77,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_76:
	/* ACCESS 0 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$1,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_77:
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78:
	/* PUSH [ACCESS 0] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_79,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* PUSH [ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_80,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_79:
	/* ACCESS 0 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$1,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_80:
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81:
	/* PUSH [ACCESS 0] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_82,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* PUSH [ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_83,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_82:
	/* ACCESS 0 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$1,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_83:
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84:
	/* PUSH [ACCESS 0] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_85,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* PUSH [ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_86,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_85:
	/* ACCESS 0 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$1,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_86:
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87:
	/* PUSH [ACCESS 0] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_88,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* PUSH [ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_89,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_88:
	/* ACCESS 0 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$1,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_89:
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90:
	/* PUSH [ACCESS 0] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_91,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* PUSH [ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_92,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_91:
	/* ACCESS 0 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$1,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_92:
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93:
	/* PUSH [ACCESS 0] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_94,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* PUSH [ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_95,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_94:
	/* ACCESS 0 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$1,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_95:
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96:
	/* PUSH [ACCESS 0] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_97,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* PUSH [ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_98,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_97:
	/* ACCESS 0 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$1,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_98:
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99:
	/* PUSH [ACCESS 0] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_100,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* PUSH [ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_101,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_100:
	/* ACCESS 0 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$1,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_101:
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102:
	/* PUSH [ACCESS 0] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_103,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* PUSH [ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_104,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_103:
	/* ACCESS 0 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$1,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_104:
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105:
	/* PUSH [ACCESS 0] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_106,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* PUSH [ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_107,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_106:
	/* ACCESS 0 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$1,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_107:
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108:
	/* PUSH [ACCESS 0] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_109,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* PUSH [ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_110,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_109:
	/* ACCESS 0 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$1,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_110:
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111:
	/* PUSH [ACCESS 0] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_112,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* PUSH [ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_113,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_112:
	/* ACCESS 0 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$1,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_113:
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114:
	/* PUSH [ACCESS 0] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_115,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* PUSH [ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_116,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_115:
	/* ACCESS 0 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$1,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_116:
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117:
	/* PUSH [ACCESS 0] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_118,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* PUSH [ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_119,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_118:
	/* ACCESS 0 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$1,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_119:
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120:
	/* PUSH [ACCESS 0] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_121,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* PUSH [ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_122,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_121:
	/* ACCESS 0 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$1,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_122:
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123:
	/* PUSH [ACCESS 0] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_124,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* PUSH [ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_125,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_124:
	/* ACCESS 0 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$1,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_125:
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126:
	/* PUSH [ACCESS 0] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_127,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* PUSH [ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_128,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_127:
	/* ACCESS 0 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$1,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_128:
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129:
	/* PUSH [ACCESS 0] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_130,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* PUSH [ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_131,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_130:
	/* ACCESS 0 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$1,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_131:
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132:
	/* PUSH [ACCESS 0] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_133,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* PUSH [ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_134,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_133:
	/* ACCESS 0 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$1,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_134:
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135:
	/* PUSH [ACCESS 0] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_136,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* PUSH [ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_137,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_136:
	/* ACCESS 0 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$1,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_137:
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138:
	/* PUSH [ACCESS 0] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_139,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* PUSH [ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_140,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_139:
	/* ACCESS 0 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$1,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_140:
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141:
	/* PUSH [ACCESS 0] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_142,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* PUSH [ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_143,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_142:
	/* ACCESS 0 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$1,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_143:
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144:
	/* PUSH [ACCESS 0] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_145,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* PUSH [ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_146,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_145:
	/* ACCESS 0 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$1,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_146:
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147:
	/* PUSH [ACCESS 0] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_148,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* PUSH [ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_149,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_148:
	/* ACCESS 0 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$1,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_149:
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150:
	/* PUSH [ACCESS 0] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_151,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* PUSH [ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_152,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_151:
	/* ACCESS 0 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$1,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_152:
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153:
	/* PUSH [ACCESS 0] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_154,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* PUSH [ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_155,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_154:
	/* ACCESS 0 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$1,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_155:
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156:
	/* PUSH [ACCESS 0] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_157,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* PUSH [ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_158,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_157:
	/* ACCESS 0 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$1,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_158:
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159:
	/* PUSH [ACCESS 0] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_160,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* PUSH [ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_161,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_160:
	/* ACCESS 0 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$1,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_161:
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162:
	/* PUSH [ACCESS 0] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_163,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* PUSH [ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_164,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_163:
	/* ACCESS 0 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$1,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_164:
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165:
	/* PUSH [ACCESS 0] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_166,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* PUSH [ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_167,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_166:
	/* ACCESS 0 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$1,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_167:
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168:
	/* PUSH [ACCESS 0] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_169,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* PUSH [ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_170,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_169:
	/* ACCESS 0 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$1,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_170:
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171:
	/* PUSH [ACCESS 0] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_172,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* PUSH [ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_173,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_172:
	/* ACCESS 0 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$1,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_173:
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174:
	/* PUSH [ACCESS 0] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_175,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* PUSH [ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_176,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_175:
	/* ACCESS 0 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$1,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_176:
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177:
	/* PUSH [ACCESS 0] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_178,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* PUSH [ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_179,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_178:
	/* ACCESS 0 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$1,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_179:
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180:
	/* PUSH [ACCESS 0] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_181,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* PUSH [ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_182,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_181:
	/* ACCESS 0 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$1,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_182:
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183:
	/* PUSH [ACCESS 0] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_184,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* PUSH [ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_185,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_184:
	/* ACCESS 0 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$1,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_185:
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186:
	/* PUSH [ACCESS 0] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_187,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* PUSH [ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_188,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_187:
	/* ACCESS 0 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$1,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_188:
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189:
	/* PUSH [ACCESS 0] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_190,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* PUSH [ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_191,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_190:
	/* ACCESS 0 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$1,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_191:
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192:
	/* PUSH [ACCESS 0] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_193,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* PUSH [ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_194,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_193:
	/* ACCESS 0 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$1,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_194:
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195:
	/* PUSH [ACCESS 0] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_196,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* PUSH [ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_197,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_196:
	/* ACCESS 0 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$1,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_197:
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198:
	/* PUSH [ACCESS 0] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_199,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* PUSH [ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_200,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_199:
	/* ACCESS 0 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$1,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_200:
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201:
	/* PUSH [ACCESS 0] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_202,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* PUSH [ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_203,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_202:
	/* ACCESS 0 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$1,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_203:
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204:
	/* PUSH [ACCESS 0] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_205,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* PUSH [ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_206,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_205:
	/* ACCESS 0 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$1,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_206:
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207:
	/* PUSH [ACCESS 0] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_208,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* PUSH [ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_209,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_208:
	/* ACCESS 0 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$1,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_209:
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210:
	/* PUSH [ACCESS 0] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_211,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* PUSH [ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_212,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_211:
	/* ACCESS 0 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$1,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_212:
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213:
	/* PUSH [ACCESS 0] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_214,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* PUSH [ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_215,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_214:
	/* ACCESS 0 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$1,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_215:
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216:
	/* PUSH [ACCESS 0] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_217,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* PUSH [ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_218,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_217:
	/* ACCESS 0 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$1,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_218:
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219:
	/* PUSH [ACCESS 0] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_220,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* PUSH [ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_221,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_220:
	/* ACCESS 0 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$1,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_221:
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222:
	/* PUSH [ACCESS 0] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_223,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* PUSH [ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_224,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_223:
	/* ACCESS 0 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$1,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_224:
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225:
	/* PUSH [ACCESS 0] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_226,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* PUSH [ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_227,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_226:
	/* ACCESS 0 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$1,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_227:
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228:
	/* PUSH [ACCESS 0] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_229,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* PUSH [ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_230,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_229:
	/* ACCESS 0 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$1,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_230:
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231:
	/* PUSH [ACCESS 0] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_232,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* PUSH [ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_233,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_232:
	/* ACCESS 0 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$1,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_233:
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234:
	/* PUSH [ACCESS 0] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_235,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* PUSH [ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_236,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_235:
	/* ACCESS 0 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$1,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_236:
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237:
	/* PUSH [ACCESS 0] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_238,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* PUSH [ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_239,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_238:
	/* ACCESS 0 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$1,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_239:
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240:
	/* PUSH [ACCESS 0] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_241,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* PUSH [ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_242,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_241:
	/* ACCESS 0 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$1,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_242:
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243:
	/* PUSH [ACCESS 0] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_244,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* PUSH [ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_245,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_244:
	/* ACCESS 0 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$1,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_245:
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246:
	/* PUSH [ACCESS 0] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246_247,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* PUSH [ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246_248,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246_249,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246_247:
	/* ACCESS 0 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$1,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246_248:
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246_249:
	/* PUSH [ACCESS 0] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246_249_250,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* PUSH [ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246_249_251,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246_249_252,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246_249_250:
	/* ACCESS 0 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$1,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246_249_251:
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246_249_252:
	/* PUSH [ACCESS 0] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246_249_252_253,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* PUSH [ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246_249_252_254,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246_249_252_255,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246_249_252_253:
	/* ACCESS 0 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$1,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246_249_252_254:
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246_249_252_255:
	/* PUSH [ACCESS 0] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246_249_252_255_256,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* PUSH [ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246_249_252_255_257,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246_249_252_255_258,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246_249_252_255_256:
	/* ACCESS 0 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$1,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246_249_252_255_257:
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246_249_252_255_258:
	/* PUSH [ACCESS 0] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246_249_252_255_258_259,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* PUSH [ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246_249_252_255_258_260,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246_249_252_255_258_261,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246_249_252_255_258_259:
	/* ACCESS 0 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$1,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246_249_252_255_258_260:
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246_249_252_255_258_261:
	/* PUSH [ACCESS 0] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246_249_252_255_258_261_262,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* PUSH [ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246_249_252_255_258_261_263,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246_249_252_255_258_261_264,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246_249_252_255_258_261_262:
	/* ACCESS 0 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$1,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246_249_252_255_258_261_263:
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246_249_252_255_258_261_264:
	/* PUSH [ACCESS 0] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246_249_252_255_258_261_264_265,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* PUSH [ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246_249_252_255_258_261_264_266,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246_249_252_255_258_261_264_267,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246_249_252_255_258_261_264_265:
	/* ACCESS 0 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$1,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246_249_252_255_258_261_264_266:
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246_249_252_255_258_261_264_267:
	/* PUSH [ACCESS 0] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246_249_252_255_258_261_264_267_268,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* PUSH [ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246_249_252_255_258_261_264_267_269,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246_249_252_255_258_261_264_267_270,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246_249_252_255_258_261_264_267_268:
	/* ACCESS 0 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$1,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246_249_252_255_258_261_264_267_269:
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246_249_252_255_258_261_264_267_270:
	/* PUSH [ACCESS 0] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246_249_252_255_258_261_264_267_270_271,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* PUSH [ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246_249_252_255_258_261_264_267_270_272,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246_249_252_255_258_261_264_267_270_273,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246_249_252_255_258_261_264_267_270_271:
	/* ACCESS 0 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$1,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246_249_252_255_258_261_264_267_270_272:
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246_249_252_255_258_261_264_267_270_273:
	/* PUSH [ACCESS 0] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246_249_252_255_258_261_264_267_270_273_274,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* PUSH [ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246_249_252_255_258_261_264_267_270_273_275,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246_249_252_255_258_261_264_267_270_273_276,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246_249_252_255_258_261_264_267_270_273_274:
	/* ACCESS 0 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$1,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246_249_252_255_258_261_264_267_270_273_275:
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246_249_252_255_258_261_264_267_270_273_276:
	/* PUSH [ACCESS 0] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246_249_252_255_258_261_264_267_270_273_276_277,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* PUSH [ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246_249_252_255_258_261_264_267_270_273_276_278,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246_249_252_255_258_261_264_267_270_273_276_279,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246_249_252_255_258_261_264_267_270_273_276_277:
	/* ACCESS 0 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$1,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246_249_252_255_258_261_264_267_270_273_276_278:
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246_249_252_255_258_261_264_267_270_273_276_279:
	/* PUSH [ACCESS 0] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246_249_252_255_258_261_264_267_270_273_276_279_280,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* PUSH [ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246_249_252_255_258_261_264_267_270_273_276_279_281,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246_249_252_255_258_261_264_267_270_273_276_279_282,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246_249_252_255_258_261_264_267_270_273_276_279_280:
	/* ACCESS 0 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$1,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246_249_252_255_258_261_264_267_270_273_276_279_281:
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246_249_252_255_258_261_264_267_270_273_276_279_282:
	/* PUSH [ACCESS 0] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246_249_252_255_258_261_264_267_270_273_276_279_282_283,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* PUSH [ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246_249_252_255_258_261_264_267_270_273_276_279_282_284,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246_249_252_255_258_261_264_267_270_273_276_279_282_285,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246_249_252_255_258_261_264_267_270_273_276_279_282_283:
	/* ACCESS 0 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$1,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246_249_252_255_258_261_264_267_270_273_276_279_282_284:
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246_249_252_255_258_261_264_267_270_273_276_279_282_285:
	/* PUSH [ACCESS 0] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246_249_252_255_258_261_264_267_270_273_276_279_282_285_286,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* PUSH [ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246_249_252_255_258_261_264_267_270_273_276_279_282_285_287,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246_249_252_255_258_261_264_267_270_273_276_279_282_285_288,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246_249_252_255_258_261_264_267_270_273_276_279_282_285_286:
	/* ACCESS 0 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$1,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246_249_252_255_258_261_264_267_270_273_276_279_282_285_287:
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246_249_252_255_258_261_264_267_270_273_276_279_282_285_288:
	/* PUSH [ACCESS 0] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246_249_252_255_258_261_264_267_270_273_276_279_282_285_288_289,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* PUSH [ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246_249_252_255_258_261_264_267_270_273_276_279_282_285_288_290,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246_249_252_255_258_261_264_267_270_273_276_279_282_285_288_291,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246_249_252_255_258_261_264_267_270_273_276_279_282_285_288_289:
	/* ACCESS 0 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$1,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246_249_252_255_258_261_264_267_270_273_276_279_282_285_288_290:
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246_249_252_255_258_261_264_267_270_273_276_279_282_285_288_291:
	/* PUSH [ACCESS 0] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246_249_252_255_258_261_264_267_270_273_276_279_282_285_288_291_292,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* PUSH [ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246_249_252_255_258_261_264_267_270_273_276_279_282_285_288_291_293,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246_249_252_255_258_261_264_267_270_273_276_279_282_285_288_291_294,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246_249_252_255_258_261_264_267_270_273_276_279_282_285_288_291_292:
	/* ACCESS 0 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$1,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246_249_252_255_258_261_264_267_270_273_276_279_282_285_288_291_293:
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246_249_252_255_258_261_264_267_270_273_276_279_282_285_288_291_294:
	/* PUSH [ACCESS 0] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246_249_252_255_258_261_264_267_270_273_276_279_282_285_288_291_294_295,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* PUSH [ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246_249_252_255_258_261_264_267_270_273_276_279_282_285_288_291_294_296,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246_249_252_255_258_261_264_267_270_273_276_279_282_285_288_291_294_297,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246_249_252_255_258_261_264_267_270_273_276_279_282_285_288_291_294_295:
	/* ACCESS 0 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$1,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246_249_252_255_258_261_264_267_270_273_276_279_282_285_288_291_294_296:
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246_249_252_255_258_261_264_267_270_273_276_279_282_285_288_291_294_297:
	/* PUSH [ACCESS 0] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246_249_252_255_258_261_264_267_270_273_276_279_282_285_288_291_294_297_298,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* PUSH [ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246_249_252_255_258_261_264_267_270_273_276_279_282_285_288_291_294_297_299,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246_249_252_255_258_261_264_267_270_273_276_279_282_285_288_291_294_297_300,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246_249_252_255_258_261_264_267_270_273_276_279_282_285_288_291_294_297_298:
	/* ACCESS 0 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$1,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246_249_252_255_258_261_264_267_270_273_276_279_282_285_288_291_294_297_299:
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246_249_252_255_258_261_264_267_270_273_276_279_282_285_288_291_294_297_300:
	/* PUSH [ACCESS 0] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246_249_252_255_258_261_264_267_270_273_276_279_282_285_288_291_294_297_300_301,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* PUSH [ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246_249_252_255_258_261_264_267_270_273_276_279_282_285_288_291_294_297_300_302,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246_249_252_255_258_261_264_267_270_273_276_279_282_285_288_291_294_297_300_303,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246_249_252_255_258_261_264_267_270_273_276_279_282_285_288_291_294_297_300_301:
	/* ACCESS 0 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$1,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246_249_252_255_258_261_264_267_270_273_276_279_282_285_288_291_294_297_300_302:
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246_249_252_255_258_261_264_267_270_273_276_279_282_285_288_291_294_297_300_303:
	/* PUSH [ACCESS 0] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246_249_252_255_258_261_264_267_270_273_276_279_282_285_288_291_294_297_300_303_304,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* PUSH [ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246_249_252_255_258_261_264_267_270_273_276_279_282_285_288_291_294_297_300_303_305,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246_249_252_255_258_261_264_267_270_273_276_279_282_285_288_291_294_297_300_303_306,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246_249_252_255_258_261_264_267_270_273_276_279_282_285_288_291_294_297_300_303_304:
	/* ACCESS 0 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$1,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246_249_252_255_258_261_264_267_270_273_276_279_282_285_288_291_294_297_300_303_305:
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246_249_252_255_258_261_264_267_270_273_276_279_282_285_288_291_294_297_300_303_306:
	/* PUSH [ACCESS 0] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246_249_252_255_258_261_264_267_270_273_276_279_282_285_288_291_294_297_300_303_306_307,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* PUSH [ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246_249_252_255_258_261_264_267_270_273_276_279_282_285_288_291_294_297_300_303_306_308,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246_249_252_255_258_261_264_267_270_273_276_279_282_285_288_291_294_297_300_303_306_309,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246_249_252_255_258_261_264_267_270_273_276_279_282_285_288_291_294_297_300_303_306_307:
	/* ACCESS 0 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$1,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246_249_252_255_258_261_264_267_270_273_276_279_282_285_288_291_294_297_300_303_306_308:
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246_249_252_255_258_261_264_267_270_273_276_279_282_285_288_291_294_297_300_303_306_309:
	/* PUSH [ACCESS 0] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246_249_252_255_258_261_264_267_270_273_276_279_282_285_288_291_294_297_300_303_306_309_310,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* PUSH [ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246_249_252_255_258_261_264_267_270_273_276_279_282_285_288_291_294_297_300_303_306_309_311,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246_249_252_255_258_261_264_267_270_273_276_279_282_285_288_291_294_297_300_303_306_309_312,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246_249_252_255_258_261_264_267_270_273_276_279_282_285_288_291_294_297_300_303_306_309_310:
	/* ACCESS 0 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$1,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246_249_252_255_258_261_264_267_270_273_276_279_282_285_288_291_294_297_300_303_306_309_311:
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246_249_252_255_258_261_264_267_270_273_276_279_282_285_288_291_294_297_300_303_306_309_312:
	/* PUSH [ACCESS 0] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246_249_252_255_258_261_264_267_270_273_276_279_282_285_288_291_294_297_300_303_306_309_312_313,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* PUSH [ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246_249_252_255_258_261_264_267_270_273_276_279_282_285_288_291_294_297_300_303_306_309_312_314,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246_249_252_255_258_261_264_267_270_273_276_279_282_285_288_291_294_297_300_303_306_309_312_315,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246_249_252_255_258_261_264_267_270_273_276_279_282_285_288_291_294_297_300_303_306_309_312_313:
	/* ACCESS 0 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$1,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246_249_252_255_258_261_264_267_270_273_276_279_282_285_288_291_294_297_300_303_306_309_312_314:
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246_249_252_255_258_261_264_267_270_273_276_279_282_285_288_291_294_297_300_303_306_309_312_315:
	/* PUSH [ACCESS 0] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246_249_252_255_258_261_264_267_270_273_276_279_282_285_288_291_294_297_300_303_306_309_312_315_316,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* PUSH [ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246_249_252_255_258_261_264_267_270_273_276_279_282_285_288_291_294_297_300_303_306_309_312_315_317,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246_249_252_255_258_261_264_267_270_273_276_279_282_285_288_291_294_297_300_303_306_309_312_315_318,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246_249_252_255_258_261_264_267_270_273_276_279_282_285_288_291_294_297_300_303_306_309_312_315_316:
	/* ACCESS 0 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$1,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246_249_252_255_258_261_264_267_270_273_276_279_282_285_288_291_294_297_300_303_306_309_312_315_317:
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246_249_252_255_258_261_264_267_270_273_276_279_282_285_288_291_294_297_300_303_306_309_312_315_318:
	/* PUSH [ACCESS 0] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246_249_252_255_258_261_264_267_270_273_276_279_282_285_288_291_294_297_300_303_306_309_312_315_318_319,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* PUSH [ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246_249_252_255_258_261_264_267_270_273_276_279_282_285_288_291_294_297_300_303_306_309_312_315_318_320,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246_249_252_255_258_261_264_267_270_273_276_279_282_285_288_291_294_297_300_303_306_309_312_315_318_321,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246_249_252_255_258_261_264_267_270_273_276_279_282_285_288_291_294_297_300_303_306_309_312_315_318_319:
	/* ACCESS 0 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$1,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246_249_252_255_258_261_264_267_270_273_276_279_282_285_288_291_294_297_300_303_306_309_312_315_318_320:
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246_249_252_255_258_261_264_267_270_273_276_279_282_285_288_291_294_297_300_303_306_309_312_315_318_321:
	/* PUSH [ACCESS 0] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246_249_252_255_258_261_264_267_270_273_276_279_282_285_288_291_294_297_300_303_306_309_312_315_318_321_322,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* PUSH [ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246_249_252_255_258_261_264_267_270_273_276_279_282_285_288_291_294_297_300_303_306_309_312_315_318_321_323,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1], ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246_249_252_255_258_261_264_267_270_273_276_279_282_285_288_291_294_297_300_303_306_309_312_315_318_321_324,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246_249_252_255_258_261_264_267_270_273_276_279_282_285_288_291_294_297_300_303_306_309_312_315_318_321_322:
	/* ACCESS 0 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$1,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246_249_252_255_258_261_264_267_270_273_276_279_282_285_288_291_294_297_300_303_306_309_312_315_318_321_323:
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246_249_252_255_258_261_264_267_270_273_276_279_282_285_288_291_294_297_300_303_306_309_312_315_318_321_324:
	/* PUSH [ACCESS 0] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246_249_252_255_258_261_264_267_270_273_276_279_282_285_288_291_294_297_300_303_306_309_312_315_318_321_324_325,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* PUSH [ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246_249_252_255_258_261_264_267_270_273_276_279_282_285_288_291_294_297_300_303_306_309_312_315_318_321_324_326,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1], ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246_249_252_255_258_261_264_267_270_273_276_279_282_285_288_291_294_297_300_303_306_309_312_315_318_321_324_327,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246_249_252_255_258_261_264_267_270_273_276_279_282_285_288_291_294_297_300_303_306_309_312_315_318_321_324_325:
	/* ACCESS 0 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$1,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246_249_252_255_258_261_264_267_270_273_276_279_282_285_288_291_294_297_300_303_306_309_312_315_318_321_324_326:
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246_249_252_255_258_261_264_267_270_273_276_279_282_285_288_291_294_297_300_303_306_309_312_315_318_321_324_327:
	/* PUSH [ACCESS 0] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246_249_252_255_258_261_264_267_270_273_276_279_282_285_288_291_294_297_300_303_306_309_312_315_318_321_324_327_328,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* PUSH [ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246_249_252_255_258_261_264_267_270_273_276_279_282_285_288_291_294_297_300_303_306_309_312_315_318_321_324_327_329,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0], ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246_249_252_255_258_261_264_267_270_273_276_279_282_285_288_291_294_297_300_303_306_309_312_315_318_321_324_327_330,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246_249_252_255_258_261_264_267_270_273_276_279_282_285_288_291_294_297_300_303_306_309_312_315_318_321_324_327_328:
	/* ACCESS 0 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$1,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246_249_252_255_258_261_264_267_270_273_276_279_282_285_288_291_294_297_300_303_306_309_312_315_318_321_324_327_329:
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246_249_252_255_258_261_264_267_270_273_276_279_282_285_288_291_294_297_300_303_306_309_312_315_318_321_324_327_330:
	/* PUSH [ACCESS 0] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246_249_252_255_258_261_264_267_270_273_276_279_282_285_288_291_294_297_300_303_306_309_312_315_318_321_324_327_330_331,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* PUSH [ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246_249_252_255_258_261_264_267_270_273_276_279_282_285_288_291_294_297_300_303_306_309_312_315_318_321_324_327_330_332,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* PUSH [PUSH [ACCESS 0], PUSH [ACCESS 1], GRAB, GRAB, ACCESS 0] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246_249_252_255_258_261_264_267_270_273_276_279_282_285_288_291_294_297_300_303_306_309_312_315_318_321_324_327_330_333,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246_249_252_255_258_261_264_267_270_273_276_279_282_285_288_291_294_297_300_303_306_309_312_315_318_321_324_327_330_331:
	/* ACCESS 0 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$1,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246_249_252_255_258_261_264_267_270_273_276_279_282_285_288_291_294_297_300_303_306_309_312_315_318_321_324_327_330_332:
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246_249_252_255_258_261_264_267_270_273_276_279_282_285_288_291_294_297_300_303_306_309_312_315_318_321_324_327_330_333:
	/* PUSH [ACCESS 0] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246_249_252_255_258_261_264_267_270_273_276_279_282_285_288_291_294_297_300_303_306_309_312_315_318_321_324_327_330_333_334,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* PUSH [ACCESS 1] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246_249_252_255_258_261_264_267_270_273_276_279_282_285_288_291_294_297_300_303_306_309_312_315_318_321_324_327_330_333_335,	(%r9)
	movq	%rcx,	8(%r9)
	movq	%rdx,	16(%r9)
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	subq	%r10,	%r9
	incq	%r8
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
	subq	%r13,	%r9
	leaq	0(%rcx, %rcx, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	%r10,	(%rdx)
	movq	%r11,	8(%rdx)
	movq	%r12,	16(%rdx)
	subq	%r13,	%rdx
	incq	%rcx
	/* ACCESS 0 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$1,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246_249_252_255_258_261_264_267_270_273_276_279_282_285_288_291_294_297_300_303_306_309_312_315_318_321_324_327_330_333_334:
	/* ACCESS 0 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$1,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n112_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_99_102_105_108_111_114_117_120_123_126_129_132_135_138_141_144_147_150_153_156_159_162_165_168_171_174_177_180_183_186_189_192_195_198_201_204_207_210_213_216_219_222_225_228_231_234_237_240_243_246_249_252_255_258_261_264_267_270_273_276_279_282_285_288_291_294_297_300_303_306_309_312_315_318_321_324_327_330_333_335:
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
