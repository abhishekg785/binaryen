	.text
	.file	"20090113-2.c"
	.section	.text.main,"ax",@progbits
	.hidden	main                    # -- Begin function main
	.globl	main
	.type	main,@function
main:                                   # @main
	.result 	i32
	.local  	i32
# BB#0:                                 # %entry
	i32.const	$push12=, 0
	i32.const	$push10=, 0
	i32.load	$push9=, __stack_pointer($pop10)
	i32.const	$push11=, 48
	i32.sub 	$push26=, $pop9, $pop11
	tee_local	$push25=, $0=, $pop26
	i32.store	__stack_pointer($pop12), $pop25
	i32.const	$push2=, 40
	i32.add 	$push3=, $0, $pop2
	i32.const	$push0=, 0
	i32.load	$push1=, .Lmain.elem+16($pop0)
	i32.store	0($pop3), $pop1
	i32.const	$push5=, 32
	i32.add 	$push6=, $0, $pop5
	i32.const	$push24=, 0
	i64.load	$push4=, .Lmain.elem+8($pop24):p2align=2
	i64.store	0($pop6), $pop4
	i32.const	$push23=, 0
	i64.load	$push7=, .Lmain.elem($pop23):p2align=2
	i64.store	24($0), $pop7
	i64.const	$push8=, 0
	i64.store	16($0), $pop8
	i32.const	$push16=, 24
	i32.add 	$push17=, $0, $pop16
	i32.store	12($0), $pop17
	i32.const	$push18=, 24
	i32.add 	$push19=, $0, $pop18
	i32.store	8($0), $pop19
	i32.const	$push20=, 8
	i32.add 	$push21=, $0, $pop20
	call    	foobar@FUNCTION, $pop21
	i32.const	$push15=, 0
	i32.const	$push13=, 48
	i32.add 	$push14=, $0, $pop13
	i32.store	__stack_pointer($pop15), $pop14
	i32.const	$push22=, 0
                                        # fallthrough-return: $pop22
	.endfunc
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
                                        # -- End function
	.section	.text.foobar,"ax",@progbits
	.type	foobar,@function        # -- Begin function foobar
foobar:                                 # @foobar
	.param  	i32
	.local  	i32, i32, i32, i32, i32, i32, i32, i32
# BB#0:                                 # %entry
	i32.const	$push14=, 0
	i32.const	$push12=, 0
	i32.load	$push11=, __stack_pointer($pop12)
	i32.const	$push13=, 32
	i32.sub 	$push34=, $pop11, $pop13
	tee_local	$push33=, $7=, $pop34
	i32.store	__stack_pointer($pop14), $pop33
	i32.const	$push18=, 16
	i32.add 	$push19=, $7, $pop18
	i32.const	$push20=, 12
	i32.add 	$push21=, $7, $pop20
	call    	bmp_iter_set_init@FUNCTION, $pop19, $0, $pop21
	i32.const	$push22=, 16
	i32.add 	$push23=, $7, $pop22
	i32.const	$push32=, 12
	i32.add 	$2=, $pop23, $pop32
	i32.const	$push2=, 24
	i32.add 	$3=, $7, $pop2
.LBB1_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_3 Depth 2
                                        #     Child Loop BB1_9 Depth 2
	loop    	                # label0:
	i32.load	$0=, 12($7)
	block   	
	block   	
	block   	
	block   	
	i32.load	$push36=, 0($2)
	tee_local	$push35=, $5=, $pop36
	i32.eqz 	$push66=, $pop35
	br_if   	0, $pop66       # 0: down to label4
# BB#2:                                 # %if.then.i
                                        #   in Loop: Header=BB1_1 Depth=1
	block   	
	i32.const	$push37=, 1
	i32.and 	$push0=, $5, $pop37
	br_if   	0, $pop0        # 0: down to label5
.LBB1_3:                                # %while.body.i
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	loop    	                # label6:
	i32.const	$push42=, 1
	i32.add 	$0=, $0, $pop42
	i32.const	$push41=, 1
	i32.shr_u	$push40=, $5, $pop41
	tee_local	$push39=, $5=, $pop40
	i32.const	$push38=, 1
	i32.and 	$push1=, $pop39, $pop38
	i32.eqz 	$push67=, $pop1
	br_if   	0, $pop67       # 0: up to label6
.LBB1_4:                                # %while.end.i
                                        #   in Loop: Header=BB1_1 Depth=1
	end_loop
	end_block                       # label5:
	i32.store	12($7), $0
	br      	1               # 1: down to label3
.LBB1_5:                                # %if.end.i
                                        #   in Loop: Header=BB1_1 Depth=1
	end_block                       # label4:
	i32.load	$push3=, 0($3)
	i32.const	$push50=, 1
	i32.add 	$push49=, $pop3, $pop50
	tee_local	$push48=, $5=, $pop49
	i32.store	0($3), $pop48
	i32.const	$push47=, 63
	i32.add 	$push4=, $0, $pop47
	i32.const	$push46=, -64
	i32.and 	$push45=, $pop4, $pop46
	tee_local	$push44=, $6=, $pop45
	i32.store	12($7), $pop44
	i32.load	$4=, 16($7)
	i32.const	$push43=, 2
	i32.ne  	$push5=, $5, $pop43
	br_if   	1, $pop5        # 1: down to label2
# BB#6:                                 #   in Loop: Header=BB1_1 Depth=1
	i32.const	$8=, 4
	br      	2               # 2: down to label1
.LBB1_7:                                #   in Loop: Header=BB1_1 Depth=1
	end_block                       # label3:
	i32.const	$8=, 2
	br      	1               # 1: down to label1
.LBB1_8:                                #   in Loop: Header=BB1_1 Depth=1
	end_block                       # label2:
	i32.const	$8=, 6
.LBB1_9:                                #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	end_block                       # label1:
	loop    	                # label7:
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	br_table 	$8, 5, 0, 1, 6, 2, 3, 4, 4 # 5: down to label14
                                        # 0: down to label19
                                        # 1: down to label18
                                        # 6: down to label13
                                        # 2: down to label17
                                        # 3: down to label16
                                        # 4: down to label15
.LBB1_10:                               # %if.then15.i
                                        #   in Loop: Header=BB1_9 Depth=2
	end_block                       # label19:
	i32.store	0($2), $1
	i32.store	0($3), $5
	i32.store	12($7), $6
	i32.store	16($7), $4
	i32.const	$push24=, 16
	i32.add 	$push25=, $7, $pop24
	i32.const	$push26=, 12
	i32.add 	$push27=, $7, $pop26
	call    	bmp_iter_set_tail@FUNCTION, $pop25, $pop27
	i32.load	$0=, 12($7)
# BB#11:                                #   in Loop: Header=BB1_9 Depth=2
	i32.const	$8=, 2
	br      	11              # 11: up to label7
.LBB1_12:                               # %for.body
                                        #   in Loop: Header=BB1_1 Depth=1
	end_block                       # label18:
	call    	catchme@FUNCTION, $0
	i32.const	$push28=, 16
	i32.add 	$push29=, $7, $pop28
	i32.const	$push30=, 12
	i32.add 	$push31=, $7, $pop30
	call    	bmp_iter_next@FUNCTION, $pop29, $pop31
	br      	11              # 11: up to label0
.LBB1_13:                               # %while.end21.i
                                        #   in Loop: Header=BB1_9 Depth=2
	end_block                       # label17:
	i32.load	$push52=, 0($4)
	tee_local	$push51=, $4=, $pop52
	i32.eqz 	$push68=, $pop51
	br_if   	4, $pop68       # 4: down to label12
# BB#14:                                #   in Loop: Header=BB1_9 Depth=2
	i32.const	$8=, 5
	br      	9               # 9: up to label7
.LBB1_15:                               # %if.end25.i
                                        #   in Loop: Header=BB1_9 Depth=2
	end_block                       # label16:
	i32.load	$push10=, 8($4)
	i32.const	$push55=, 7
	i32.shl 	$6=, $pop10, $pop55
	i32.const	$5=, 0
	i32.const	$push54=, 0
	i32.const	$push53=, 2
	i32.eq  	$push6=, $pop54, $pop53
	br_if   	7, $pop6        # 7: down to label8
# BB#16:                                #   in Loop: Header=BB1_9 Depth=2
	i32.const	$8=, 6
	br      	8               # 8: up to label7
.LBB1_17:                               # %while.body9.i.preheader
                                        #   in Loop: Header=BB1_9 Depth=2
	end_block                       # label15:
	i32.const	$push57=, 2
	i32.shl 	$push7=, $5, $pop57
	i32.add 	$push8=, $4, $pop7
	i32.const	$push56=, 12
	i32.add 	$0=, $pop8, $pop56
# BB#18:                                #   in Loop: Header=BB1_9 Depth=2
	i32.const	$8=, 0
	br      	7               # 7: up to label7
.LBB1_19:                               # %while.body9.i
                                        #   in Loop: Header=BB1_9 Depth=2
	end_block                       # label14:
	i32.load	$push59=, 0($0)
	tee_local	$push58=, $1=, $pop59
	br_if   	2, $pop58       # 2: down to label11
# BB#20:                                #   in Loop: Header=BB1_9 Depth=2
	i32.const	$8=, 3
	br      	6               # 6: up to label7
.LBB1_21:                               # %if.end17.i
                                        #   in Loop: Header=BB1_9 Depth=2
	end_block                       # label13:
	i32.const	$push65=, 4
	i32.add 	$0=, $0, $pop65
	i32.const	$push64=, 64
	i32.add 	$6=, $6, $pop64
	i32.const	$push63=, 1
	i32.add 	$push62=, $5, $pop63
	tee_local	$push61=, $5=, $pop62
	i32.const	$push60=, 2
	i32.ne  	$push9=, $pop61, $pop60
	br_if   	3, $pop9        # 3: down to label9
	br      	2               # 2: down to label10
.LBB1_22:                               # %for.end
	end_block                       # label12:
	i32.const	$push17=, 0
	i32.const	$push15=, 32
	i32.add 	$push16=, $7, $pop15
	i32.store	__stack_pointer($pop17), $pop16
	return
.LBB1_23:                               #   in Loop: Header=BB1_9 Depth=2
	end_block                       # label11:
	i32.const	$8=, 1
	br      	3               # 3: up to label7
.LBB1_24:                               #   in Loop: Header=BB1_9 Depth=2
	end_block                       # label10:
	i32.const	$8=, 4
	br      	2               # 2: up to label7
.LBB1_25:                               #   in Loop: Header=BB1_9 Depth=2
	end_block                       # label9:
	i32.const	$8=, 0
	br      	1               # 1: up to label7
.LBB1_26:                               #   in Loop: Header=BB1_9 Depth=2
	end_block                       # label8:
	i32.const	$8=, 4
	br      	0               # 0: up to label7
.LBB1_27:
	end_loop
	end_loop
	.endfunc
.Lfunc_end1:
	.size	foobar, .Lfunc_end1-foobar
                                        # -- End function
	.section	.text.bmp_iter_set_init,"ax",@progbits
	.type	bmp_iter_set_init,@function # -- Begin function bmp_iter_set_init
bmp_iter_set_init:                      # @bmp_iter_set_init
	.param  	i32, i32, i32
	.local  	i32
# BB#0:                                 # %entry
	i32.const	$push7=, 0
	i32.store	4($0), $pop7
	i32.load	$push6=, 0($1)
	tee_local	$push5=, $1=, $pop6
	i32.store	0($0), $pop5
	block   	
	br_if   	0, $1           # 0: down to label20
# BB#1:                                 # %if.then
	i32.const	$1=, bitmap_zero_bits
	i32.const	$push8=, bitmap_zero_bits
	i32.store	0($0), $pop8
.LBB2_2:                                # %while.end
	end_block                       # label20:
	i32.const	$push11=, 0
	i32.store	8($0), $pop11
	i32.load	$push10=, 12($1)
	tee_local	$push9=, $3=, $pop10
	i32.store	12($0), $pop9
	i32.load	$push0=, 8($1)
	i32.const	$push1=, 7
	i32.shl 	$push2=, $pop0, $pop1
	i32.eqz 	$push3=, $3
	i32.or  	$push4=, $pop2, $pop3
	i32.store	0($2), $pop4
                                        # fallthrough-return
	.endfunc
.Lfunc_end2:
	.size	bmp_iter_set_init, .Lfunc_end2-bmp_iter_set_init
                                        # -- End function
	.section	.text.catchme,"ax",@progbits
	.type	catchme,@function       # -- Begin function catchme
catchme:                                # @catchme
	.param  	i32
# BB#0:                                 # %entry
	block   	
	i32.const	$push0=, 64
	i32.or  	$push1=, $0, $pop0
	i32.const	$push3=, 64
	i32.ne  	$push2=, $pop1, $pop3
	br_if   	0, $pop2        # 0: down to label21
# BB#1:                                 # %if.end
	return
.LBB3_2:                                # %if.then
	end_block                       # label21:
	call    	abort@FUNCTION
	unreachable
	.endfunc
.Lfunc_end3:
	.size	catchme, .Lfunc_end3-catchme
                                        # -- End function
	.section	.text.bmp_iter_next,"ax",@progbits
	.type	bmp_iter_next,@function # -- Begin function bmp_iter_next
bmp_iter_next:                          # @bmp_iter_next
	.param  	i32, i32
# BB#0:                                 # %entry
	i32.load	$push0=, 12($0)
	i32.const	$push1=, 1
	i32.shr_u	$push2=, $pop0, $pop1
	i32.store	12($0), $pop2
	i32.load	$push3=, 0($1)
	i32.const	$push5=, 1
	i32.add 	$push4=, $pop3, $pop5
	i32.store	0($1), $pop4
                                        # fallthrough-return
	.endfunc
.Lfunc_end4:
	.size	bmp_iter_next, .Lfunc_end4-bmp_iter_next
                                        # -- End function
	.section	.text.bmp_iter_set_tail,"ax",@progbits
	.type	bmp_iter_set_tail,@function # -- Begin function bmp_iter_set_tail
bmp_iter_set_tail:                      # @bmp_iter_set_tail
	.param  	i32, i32
	.local  	i32, i32
# BB#0:                                 # %entry
	block   	
	i32.load	$push6=, 12($0)
	tee_local	$push5=, $3=, $pop6
	i32.const	$push4=, 1
	i32.and 	$push0=, $pop5, $pop4
	br_if   	0, $pop0        # 0: down to label22
# BB#1:                                 # %while.body.lr.ph
	i32.load	$2=, 0($1)
.LBB5_2:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	loop    	                # label23:
	i32.const	$push11=, 1
	i32.add 	$2=, $2, $pop11
	i32.const	$push10=, 1
	i32.shr_u	$push9=, $3, $pop10
	tee_local	$push8=, $3=, $pop9
	i32.const	$push7=, 1
	i32.and 	$push1=, $pop8, $pop7
	i32.eqz 	$push12=, $pop1
	br_if   	0, $pop12       # 0: up to label23
# BB#3:                                 # %while.cond.while.end_crit_edge
	end_loop
	i32.store	0($1), $2
	i32.const	$push2=, 12
	i32.add 	$push3=, $0, $pop2
	i32.store	0($pop3), $3
.LBB5_4:                                # %while.end
	end_block                       # label22:
                                        # fallthrough-return
	.endfunc
.Lfunc_end5:
	.size	bmp_iter_set_tail, .Lfunc_end5-bmp_iter_set_tail
                                        # -- End function
	.type	.Lmain.elem,@object     # @main.elem
	.section	.rodata..Lmain.elem,"a",@progbits
	.p2align	2
.Lmain.elem:
	.int32	0
	.int32	0
	.int32	0                       # 0x0
	.int32	1                       # 0x1
	.int32	1                       # 0x1
	.size	.Lmain.elem, 20

	.hidden	bitmap_zero_bits        # @bitmap_zero_bits
	.type	bitmap_zero_bits,@object
	.section	.bss.bitmap_zero_bits,"aw",@nobits
	.globl	bitmap_zero_bits
	.p2align	2
bitmap_zero_bits:
	.skip	20
	.size	bitmap_zero_bits, 20


	.ident	"clang version 6.0.0 (https://llvm.googlesource.com/clang.git a1774cccdccfa673c057f93ccf23bc2d8cb04932) (https://llvm.googlesource.com/llvm.git fc50e1c6121255333bc42d6faf2b524c074eae25)"
	.functype	abort, void
