.globl	lamb_n33
lamb_n33:
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
	movq	$lamb_n33_0,	(%r9)
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
lamb_n33_0:
	/* PUSH [ACCESS 0] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n33_0_1,	(%r9)
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
	movq	$lamb_n33_0_2,	(%r9)
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
	movq	$lamb_n33_0_3,	(%r9)
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
lamb_n33_0_1:
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
lamb_n33_0_2:
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
lamb_n33_0_3:
	/* PUSH [ACCESS 0] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n33_0_3_4,	(%r9)
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
	movq	$lamb_n33_0_3_5,	(%r9)
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
	movq	$lamb_n33_0_3_6,	(%r9)
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
lamb_n33_0_3_4:
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
lamb_n33_0_3_5:
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
lamb_n33_0_3_6:
	/* PUSH [ACCESS 0] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n33_0_3_6_7,	(%r9)
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
	movq	$lamb_n33_0_3_6_8,	(%r9)
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
	movq	$lamb_n33_0_3_6_9,	(%r9)
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
lamb_n33_0_3_6_7:
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
lamb_n33_0_3_6_8:
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
lamb_n33_0_3_6_9:
	/* PUSH [ACCESS 0] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n33_0_3_6_9_10,	(%r9)
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
	movq	$lamb_n33_0_3_6_9_11,	(%r9)
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
	movq	$lamb_n33_0_3_6_9_12,	(%r9)
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
lamb_n33_0_3_6_9_10:
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
lamb_n33_0_3_6_9_11:
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
lamb_n33_0_3_6_9_12:
	/* PUSH [ACCESS 0] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n33_0_3_6_9_12_13,	(%r9)
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
	movq	$lamb_n33_0_3_6_9_12_14,	(%r9)
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
	movq	$lamb_n33_0_3_6_9_12_15,	(%r9)
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
lamb_n33_0_3_6_9_12_13:
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
lamb_n33_0_3_6_9_12_14:
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
lamb_n33_0_3_6_9_12_15:
	/* PUSH [ACCESS 0] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n33_0_3_6_9_12_15_16,	(%r9)
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
	movq	$lamb_n33_0_3_6_9_12_15_17,	(%r9)
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
	movq	$lamb_n33_0_3_6_9_12_15_18,	(%r9)
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
lamb_n33_0_3_6_9_12_15_16:
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
lamb_n33_0_3_6_9_12_15_17:
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
lamb_n33_0_3_6_9_12_15_18:
	/* PUSH [ACCESS 0] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n33_0_3_6_9_12_15_18_19,	(%r9)
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
	movq	$lamb_n33_0_3_6_9_12_15_18_20,	(%r9)
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
	movq	$lamb_n33_0_3_6_9_12_15_18_21,	(%r9)
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
lamb_n33_0_3_6_9_12_15_18_19:
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
lamb_n33_0_3_6_9_12_15_18_20:
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
lamb_n33_0_3_6_9_12_15_18_21:
	/* PUSH [ACCESS 0] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n33_0_3_6_9_12_15_18_21_22,	(%r9)
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
	movq	$lamb_n33_0_3_6_9_12_15_18_21_23,	(%r9)
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
	movq	$lamb_n33_0_3_6_9_12_15_18_21_24,	(%r9)
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
lamb_n33_0_3_6_9_12_15_18_21_22:
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
lamb_n33_0_3_6_9_12_15_18_21_23:
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
lamb_n33_0_3_6_9_12_15_18_21_24:
	/* PUSH [ACCESS 0] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n33_0_3_6_9_12_15_18_21_24_25,	(%r9)
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
	movq	$lamb_n33_0_3_6_9_12_15_18_21_24_26,	(%r9)
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
	movq	$lamb_n33_0_3_6_9_12_15_18_21_24_27,	(%r9)
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
lamb_n33_0_3_6_9_12_15_18_21_24_25:
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
lamb_n33_0_3_6_9_12_15_18_21_24_26:
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
lamb_n33_0_3_6_9_12_15_18_21_24_27:
	/* PUSH [ACCESS 0] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n33_0_3_6_9_12_15_18_21_24_27_28,	(%r9)
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
	movq	$lamb_n33_0_3_6_9_12_15_18_21_24_27_29,	(%r9)
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
	movq	$lamb_n33_0_3_6_9_12_15_18_21_24_27_30,	(%r9)
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
lamb_n33_0_3_6_9_12_15_18_21_24_27_28:
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
lamb_n33_0_3_6_9_12_15_18_21_24_27_29:
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
lamb_n33_0_3_6_9_12_15_18_21_24_27_30:
	/* PUSH [ACCESS 0] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n33_0_3_6_9_12_15_18_21_24_27_30_31,	(%r9)
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
	movq	$lamb_n33_0_3_6_9_12_15_18_21_24_27_30_32,	(%r9)
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
	movq	$lamb_n33_0_3_6_9_12_15_18_21_24_27_30_33,	(%r9)
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
lamb_n33_0_3_6_9_12_15_18_21_24_27_30_31:
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
lamb_n33_0_3_6_9_12_15_18_21_24_27_30_32:
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
lamb_n33_0_3_6_9_12_15_18_21_24_27_30_33:
	/* PUSH [ACCESS 0] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n33_0_3_6_9_12_15_18_21_24_27_30_33_34,	(%r9)
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
	movq	$lamb_n33_0_3_6_9_12_15_18_21_24_27_30_33_35,	(%r9)
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
	movq	$lamb_n33_0_3_6_9_12_15_18_21_24_27_30_33_36,	(%r9)
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
lamb_n33_0_3_6_9_12_15_18_21_24_27_30_33_34:
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
lamb_n33_0_3_6_9_12_15_18_21_24_27_30_33_35:
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
lamb_n33_0_3_6_9_12_15_18_21_24_27_30_33_36:
	/* PUSH [ACCESS 0] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n33_0_3_6_9_12_15_18_21_24_27_30_33_36_37,	(%r9)
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
	movq	$lamb_n33_0_3_6_9_12_15_18_21_24_27_30_33_36_38,	(%r9)
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
	movq	$lamb_n33_0_3_6_9_12_15_18_21_24_27_30_33_36_39,	(%r9)
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
lamb_n33_0_3_6_9_12_15_18_21_24_27_30_33_36_37:
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
lamb_n33_0_3_6_9_12_15_18_21_24_27_30_33_36_38:
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
lamb_n33_0_3_6_9_12_15_18_21_24_27_30_33_36_39:
	/* PUSH [ACCESS 0] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n33_0_3_6_9_12_15_18_21_24_27_30_33_36_39_40,	(%r9)
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
	movq	$lamb_n33_0_3_6_9_12_15_18_21_24_27_30_33_36_39_41,	(%r9)
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
	movq	$lamb_n33_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42,	(%r9)
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
lamb_n33_0_3_6_9_12_15_18_21_24_27_30_33_36_39_40:
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
lamb_n33_0_3_6_9_12_15_18_21_24_27_30_33_36_39_41:
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
lamb_n33_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42:
	/* PUSH [ACCESS 0] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n33_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_43,	(%r9)
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
	movq	$lamb_n33_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_44,	(%r9)
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
	movq	$lamb_n33_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45,	(%r9)
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
lamb_n33_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_43:
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
lamb_n33_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_44:
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
lamb_n33_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45:
	/* PUSH [ACCESS 0] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n33_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_46,	(%r9)
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
	movq	$lamb_n33_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_47,	(%r9)
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
	movq	$lamb_n33_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48,	(%r9)
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
lamb_n33_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_46:
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
lamb_n33_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_47:
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
lamb_n33_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48:
	/* PUSH [ACCESS 0] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n33_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_49,	(%r9)
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
	movq	$lamb_n33_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_50,	(%r9)
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
	movq	$lamb_n33_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51,	(%r9)
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
lamb_n33_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_49:
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
lamb_n33_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_50:
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
lamb_n33_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51:
	/* PUSH [ACCESS 0] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n33_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_52,	(%r9)
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
	movq	$lamb_n33_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_53,	(%r9)
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
	movq	$lamb_n33_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54,	(%r9)
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
lamb_n33_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_52:
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
lamb_n33_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_53:
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
lamb_n33_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54:
	/* PUSH [ACCESS 0] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n33_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_55,	(%r9)
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
	movq	$lamb_n33_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_56,	(%r9)
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
	movq	$lamb_n33_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57,	(%r9)
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
lamb_n33_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_55:
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
lamb_n33_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_56:
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
lamb_n33_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57:
	/* PUSH [ACCESS 0] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n33_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_58,	(%r9)
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
	movq	$lamb_n33_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_59,	(%r9)
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
	movq	$lamb_n33_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60,	(%r9)
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
lamb_n33_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_58:
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
lamb_n33_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_59:
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
lamb_n33_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60:
	/* PUSH [ACCESS 0] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n33_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_61,	(%r9)
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
	movq	$lamb_n33_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_62,	(%r9)
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
	movq	$lamb_n33_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63,	(%r9)
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
lamb_n33_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_61:
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
lamb_n33_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_62:
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
lamb_n33_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63:
	/* PUSH [ACCESS 0] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n33_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_64,	(%r9)
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
	movq	$lamb_n33_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_65,	(%r9)
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
	movq	$lamb_n33_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66,	(%r9)
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
lamb_n33_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_64:
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
lamb_n33_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_65:
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
lamb_n33_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66:
	/* PUSH [ACCESS 0] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n33_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_67,	(%r9)
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
	movq	$lamb_n33_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_68,	(%r9)
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
	movq	$lamb_n33_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69,	(%r9)
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
lamb_n33_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_67:
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
lamb_n33_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_68:
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
lamb_n33_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69:
	/* PUSH [ACCESS 0] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n33_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_70,	(%r9)
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
	movq	$lamb_n33_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_71,	(%r9)
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
	movq	$lamb_n33_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72,	(%r9)
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
lamb_n33_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_70:
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
lamb_n33_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_71:
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
lamb_n33_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72:
	/* PUSH [ACCESS 0] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n33_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_73,	(%r9)
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
	movq	$lamb_n33_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_74,	(%r9)
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
	movq	$lamb_n33_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75,	(%r9)
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
lamb_n33_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_73:
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
lamb_n33_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_74:
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
lamb_n33_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75:
	/* PUSH [ACCESS 0] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n33_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_76,	(%r9)
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
	movq	$lamb_n33_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_77,	(%r9)
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
	movq	$lamb_n33_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78,	(%r9)
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
lamb_n33_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_76:
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
lamb_n33_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_77:
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
lamb_n33_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78:
	/* PUSH [ACCESS 0] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n33_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_79,	(%r9)
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
	movq	$lamb_n33_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_80,	(%r9)
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
	movq	$lamb_n33_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81,	(%r9)
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
lamb_n33_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_79:
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
lamb_n33_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_80:
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
lamb_n33_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81:
	/* PUSH [ACCESS 0] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n33_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_82,	(%r9)
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
	movq	$lamb_n33_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_83,	(%r9)
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
	movq	$lamb_n33_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84,	(%r9)
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
lamb_n33_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_82:
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
lamb_n33_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_83:
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
lamb_n33_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84:
	/* PUSH [ACCESS 0] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n33_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_85,	(%r9)
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
	movq	$lamb_n33_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_86,	(%r9)
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
	movq	$lamb_n33_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87,	(%r9)
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
lamb_n33_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_85:
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
lamb_n33_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_86:
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
lamb_n33_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87:
	/* PUSH [ACCESS 0] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n33_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_88,	(%r9)
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
	movq	$lamb_n33_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_89,	(%r9)
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
	movq	$lamb_n33_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90,	(%r9)
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
lamb_n33_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_88:
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
lamb_n33_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_89:
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
lamb_n33_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90:
	/* PUSH [ACCESS 0] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n33_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_91,	(%r9)
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
	movq	$lamb_n33_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_92,	(%r9)
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
	movq	$lamb_n33_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93,	(%r9)
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
lamb_n33_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_91:
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
lamb_n33_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_92:
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
lamb_n33_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93:
	/* PUSH [ACCESS 0] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n33_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_94,	(%r9)
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
	movq	$lamb_n33_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_95,	(%r9)
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
	movq	$lamb_n33_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96,	(%r9)
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
lamb_n33_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_94:
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
lamb_n33_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_95:
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
lamb_n33_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96:
	/* PUSH [ACCESS 0] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n33_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_97,	(%r9)
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
	movq	$lamb_n33_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_98,	(%r9)
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
lamb_n33_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_97:
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
lamb_n33_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_48_51_54_57_60_63_66_69_72_75_78_81_84_87_90_93_96_98:
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
