	.file	"sorting.c"
	.option nopic
	.attribute arch, "rv64i2p0_a2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	SortingInsertion
	.type	SortingInsertion, @function
SortingInsertion:
	li	a5,1
	ble	a0,a5,.L1
	addi	a6,a1,4
	addiw	t1,a0,-1
	li	a7,0
	li	a0,-1
	j	.L5
.L3:
	addi	a5,a5,1
	slli	a5,a5,2
	add	a5,a1,a5
	sw	a2,0(a5)
	addiw	a7,a7,1
	addi	a6,a6,4
	beq	a7,t1,.L1
.L5:
	lw	a2,0(a6)
	sext.w	a5,a7
	blt	a5,zero,.L3
	lw	a3,-4(a6)
	bge	a2,a3,.L3
	mv	a4,a6
.L4:
	sw	a3,0(a4)
	addiw	a5,a5,-1
	beq	a5,a0,.L3
	addi	a4,a4,-4
	lw	a3,-4(a4)
	bgt	a3,a2,.L4
	j	.L3
.L1:
	ret
	.size	SortingInsertion, .-SortingInsertion
	.ident	"GCC: (SiFive GCC 8.3.0-2020.04.1) 8.3.0"
