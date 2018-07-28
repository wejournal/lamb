.globl	lamb_n7
lamb_n7:
	/* GRAB */
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	movq	%rcx,	%r10
	incq	%r10
	movq	$24,	%r11
	movq	$4,	%r12
	pushq	%r12
	movq	%rsp,	%r12
	subq	$8,	%rsp
	pushq	%r12
	pushq	%r11
	pushq	%r10
	subq	$32,	%rsp
	call	gc_alloc
	addq	$32,	%rsp
	popq	%r14
	popq	%r14
	popq	%r12
	addq	$8,	%rsp
	popq	%r12
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%r8
	pushq	%r9
	leaq	0(%rcx, %rcx, 2),	%r8
	salq	$3,	%r8
	movq	%rax,	%rcx
	call	memcpy
	popq	%r9
	popq	%r8
	popq	%rdx
	popq	%rcx
	popq	%rdx
	decq	%r8
	leaq	0(%r8, %r8, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%r9
	movq	(%r9),	%r10
	movq	8(%r9),	%r11
	movq	16(%r9),	%r12
	movq	$0,	(%r9)
	movq	$0,	8(%r9)
	movq	$0,	16(%r9)
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
	movq	$lamb_n7_0,	(%r9)
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
lamb_n7_0:
	/* PUSH [ACCESS 0] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n7_0_1,	(%r9)
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
	movq	$lamb_n7_0_2,	(%r9)
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
	movq	$lamb_n7_0_3,	(%r9)
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
lamb_n7_0_1:
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
lamb_n7_0_2:
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n7_0_3:
	/* PUSH [ACCESS 0] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n7_0_3_4,	(%r9)
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
	movq	$lamb_n7_0_3_5,	(%r9)
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
	movq	$lamb_n7_0_3_6,	(%r9)
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
lamb_n7_0_3_4:
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
lamb_n7_0_3_5:
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n7_0_3_6:
	/* PUSH [ACCESS 0] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n7_0_3_6_7,	(%r9)
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
	movq	$lamb_n7_0_3_6_8,	(%r9)
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
	movq	$lamb_n7_0_3_6_9,	(%r9)
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
lamb_n7_0_3_6_7:
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
lamb_n7_0_3_6_8:
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n7_0_3_6_9:
	/* PUSH [ACCESS 0] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n7_0_3_6_9_10,	(%r9)
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
	movq	$lamb_n7_0_3_6_9_11,	(%r9)
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
	movq	$lamb_n7_0_3_6_9_12,	(%r9)
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
lamb_n7_0_3_6_9_10:
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
lamb_n7_0_3_6_9_11:
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n7_0_3_6_9_12:
	/* PUSH [ACCESS 0] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n7_0_3_6_9_12_13,	(%r9)
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
	movq	$lamb_n7_0_3_6_9_12_14,	(%r9)
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
	movq	$lamb_n7_0_3_6_9_12_15,	(%r9)
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
lamb_n7_0_3_6_9_12_13:
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
lamb_n7_0_3_6_9_12_14:
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n7_0_3_6_9_12_15:
	/* PUSH [ACCESS 0] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n7_0_3_6_9_12_15_16,	(%r9)
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
	movq	$lamb_n7_0_3_6_9_12_15_17,	(%r9)
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
	movq	$lamb_n7_0_3_6_9_12_15_18,	(%r9)
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
lamb_n7_0_3_6_9_12_15_16:
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
lamb_n7_0_3_6_9_12_15_17:
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
lamb_n7_0_3_6_9_12_15_18:
	/* PUSH [ACCESS 0] */
	leaq	0(%r8, %r8, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%r9
	movq	$lamb_n7_0_3_6_9_12_15_18_19,	(%r9)
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
	movq	$lamb_n7_0_3_6_9_12_15_18_20,	(%r9)
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
lamb_n7_0_3_6_9_12_15_18_19:
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
lamb_n7_0_3_6_9_12_15_18_20:
	/* ACCESS 1 */
	pushq	%rdx
	pushq	%rcx
	movq	%rcx,	%r13
	subq	$2,	%r13
	leaq	0(%r13, %r13, 2),	%r13
	salq	$3,	%r13
	addq	%r13,	%rdx
	movq	(%rdx),	%r10
	movq	8(%rdx),	%r11
	movq	16(%rdx),	%r12
	subq	%r13,	%rdx
	movq	%r11,	%rcx
	movq	%r12,	%rdx
	popq	%r13
	popq	%r14
	jmp	*%r10
