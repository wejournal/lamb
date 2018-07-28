.globl	lamb_n16
lamb_n16:
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
	movq	$lamb_n16_0,	(%rcx)
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
lamb_n16_0:
	/* PUSH [ACCESS 0] */
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%rcx
	movq	$lamb_n16_0_1,	(%rcx)
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
	movq	$lamb_n16_0_2,	(%rcx)
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
	movq	$lamb_n16_0_3,	(%rcx)
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
lamb_n16_0_1:
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
lamb_n16_0_2:
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
lamb_n16_0_3:
	/* PUSH [ACCESS 0] */
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%rcx
	movq	$lamb_n16_0_3_4,	(%rcx)
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
	movq	$lamb_n16_0_3_5,	(%rcx)
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
	movq	$lamb_n16_0_3_6,	(%rcx)
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
lamb_n16_0_3_4:
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
lamb_n16_0_3_5:
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
lamb_n16_0_3_6:
	/* PUSH [ACCESS 0] */
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%rcx
	movq	$lamb_n16_0_3_6_7,	(%rcx)
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
	movq	$lamb_n16_0_3_6_8,	(%rcx)
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
	movq	$lamb_n16_0_3_6_9,	(%rcx)
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
lamb_n16_0_3_6_7:
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
lamb_n16_0_3_6_8:
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
lamb_n16_0_3_6_9:
	/* PUSH [ACCESS 0] */
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%rcx
	movq	$lamb_n16_0_3_6_9_10,	(%rcx)
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
	movq	$lamb_n16_0_3_6_9_11,	(%rcx)
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
	movq	$lamb_n16_0_3_6_9_12,	(%rcx)
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
lamb_n16_0_3_6_9_10:
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
lamb_n16_0_3_6_9_11:
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
lamb_n16_0_3_6_9_12:
	/* PUSH [ACCESS 0] */
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%rcx
	movq	$lamb_n16_0_3_6_9_12_13,	(%rcx)
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
	movq	$lamb_n16_0_3_6_9_12_14,	(%rcx)
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
	movq	$lamb_n16_0_3_6_9_12_15,	(%rcx)
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
lamb_n16_0_3_6_9_12_13:
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
lamb_n16_0_3_6_9_12_14:
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
lamb_n16_0_3_6_9_12_15:
	/* PUSH [ACCESS 0] */
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%rcx
	movq	$lamb_n16_0_3_6_9_12_15_16,	(%rcx)
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
	movq	$lamb_n16_0_3_6_9_12_15_17,	(%rcx)
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
	movq	$lamb_n16_0_3_6_9_12_15_18,	(%rcx)
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
lamb_n16_0_3_6_9_12_15_16:
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
lamb_n16_0_3_6_9_12_15_17:
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
lamb_n16_0_3_6_9_12_15_18:
	/* PUSH [ACCESS 0] */
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%rcx
	movq	$lamb_n16_0_3_6_9_12_15_18_19,	(%rcx)
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
	movq	$lamb_n16_0_3_6_9_12_15_18_20,	(%rcx)
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
	movq	$lamb_n16_0_3_6_9_12_15_18_21,	(%rcx)
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
lamb_n16_0_3_6_9_12_15_18_19:
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
lamb_n16_0_3_6_9_12_15_18_20:
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
lamb_n16_0_3_6_9_12_15_18_21:
	/* PUSH [ACCESS 0] */
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%rcx
	movq	$lamb_n16_0_3_6_9_12_15_18_21_22,	(%rcx)
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
	movq	$lamb_n16_0_3_6_9_12_15_18_21_23,	(%rcx)
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
	movq	$lamb_n16_0_3_6_9_12_15_18_21_24,	(%rcx)
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
lamb_n16_0_3_6_9_12_15_18_21_22:
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
lamb_n16_0_3_6_9_12_15_18_21_23:
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
lamb_n16_0_3_6_9_12_15_18_21_24:
	/* PUSH [ACCESS 0] */
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%rcx
	movq	$lamb_n16_0_3_6_9_12_15_18_21_24_25,	(%rcx)
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
	movq	$lamb_n16_0_3_6_9_12_15_18_21_24_26,	(%rcx)
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
	movq	$lamb_n16_0_3_6_9_12_15_18_21_24_27,	(%rcx)
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
lamb_n16_0_3_6_9_12_15_18_21_24_25:
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
lamb_n16_0_3_6_9_12_15_18_21_24_26:
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
lamb_n16_0_3_6_9_12_15_18_21_24_27:
	/* PUSH [ACCESS 0] */
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%rcx
	movq	$lamb_n16_0_3_6_9_12_15_18_21_24_27_28,	(%rcx)
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
	movq	$lamb_n16_0_3_6_9_12_15_18_21_24_27_29,	(%rcx)
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
	movq	$lamb_n16_0_3_6_9_12_15_18_21_24_27_30,	(%rcx)
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
lamb_n16_0_3_6_9_12_15_18_21_24_27_28:
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
lamb_n16_0_3_6_9_12_15_18_21_24_27_29:
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
lamb_n16_0_3_6_9_12_15_18_21_24_27_30:
	/* PUSH [ACCESS 0] */
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%rcx
	movq	$lamb_n16_0_3_6_9_12_15_18_21_24_27_30_31,	(%rcx)
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
	movq	$lamb_n16_0_3_6_9_12_15_18_21_24_27_30_32,	(%rcx)
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
	movq	$lamb_n16_0_3_6_9_12_15_18_21_24_27_30_33,	(%rcx)
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
lamb_n16_0_3_6_9_12_15_18_21_24_27_30_31:
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
lamb_n16_0_3_6_9_12_15_18_21_24_27_30_32:
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
lamb_n16_0_3_6_9_12_15_18_21_24_27_30_33:
	/* PUSH [ACCESS 0] */
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%rcx
	movq	$lamb_n16_0_3_6_9_12_15_18_21_24_27_30_33_34,	(%rcx)
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
	movq	$lamb_n16_0_3_6_9_12_15_18_21_24_27_30_33_35,	(%rcx)
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
	movq	$lamb_n16_0_3_6_9_12_15_18_21_24_27_30_33_36,	(%rcx)
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
lamb_n16_0_3_6_9_12_15_18_21_24_27_30_33_34:
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
lamb_n16_0_3_6_9_12_15_18_21_24_27_30_33_35:
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
lamb_n16_0_3_6_9_12_15_18_21_24_27_30_33_36:
	/* PUSH [ACCESS 0] */
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%rcx
	movq	$lamb_n16_0_3_6_9_12_15_18_21_24_27_30_33_36_37,	(%rcx)
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
	movq	$lamb_n16_0_3_6_9_12_15_18_21_24_27_30_33_36_38,	(%rcx)
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
	movq	$lamb_n16_0_3_6_9_12_15_18_21_24_27_30_33_36_39,	(%rcx)
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
lamb_n16_0_3_6_9_12_15_18_21_24_27_30_33_36_37:
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
lamb_n16_0_3_6_9_12_15_18_21_24_27_30_33_36_38:
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
lamb_n16_0_3_6_9_12_15_18_21_24_27_30_33_36_39:
	/* PUSH [ACCESS 0] */
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%rcx
	movq	$lamb_n16_0_3_6_9_12_15_18_21_24_27_30_33_36_39_40,	(%rcx)
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
	movq	$lamb_n16_0_3_6_9_12_15_18_21_24_27_30_33_36_39_41,	(%rcx)
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
	movq	$lamb_n16_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42,	(%rcx)
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
lamb_n16_0_3_6_9_12_15_18_21_24_27_30_33_36_39_40:
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
lamb_n16_0_3_6_9_12_15_18_21_24_27_30_33_36_39_41:
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
lamb_n16_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42:
	/* PUSH [ACCESS 0] */
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%rcx
	movq	$lamb_n16_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_43,	(%rcx)
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
	movq	$lamb_n16_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_44,	(%rcx)
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
	movq	$lamb_n16_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45,	(%rcx)
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
lamb_n16_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_43:
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
lamb_n16_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_44:
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
lamb_n16_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45:
	/* PUSH [ACCESS 0] */
	leaq	0(%rdx, %rdx, 2),	%r10
	salq	$3,	%r10
	addq	%r10,	%rcx
	movq	$lamb_n16_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_46,	(%rcx)
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
	movq	$lamb_n16_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_47,	(%rcx)
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
lamb_n16_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_46:
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
lamb_n16_0_3_6_9_12_15_18_21_24_27_30_33_36_39_42_45_47:
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
