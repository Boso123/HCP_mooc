# mark_description "Intel(R) C++ Intel(R) 64 Compiler for applications running on Intel(R) 64, Version 17.0.2.174 Build 20170213";
# mark_description "";
# mark_description "-S -qopt-report -xMIC-AVX512";
	.file "worker.cc"
	.text
..TXTST0:
# -- Begin  _Z10MyFunctioni
	.text
# mark_begin;
# Threads 2
        .align    16,0x90
	.globl _Z10MyFunctioni
# --- MyFunction(int)
_Z10MyFunctioni:
# parameter 1: %edi
..B1.1:                         # Preds ..B1.0
                                # Execution count [1.00e+00]
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0xb, _Z10MyFunctioni$$LSDA
..___tag_value__Z10MyFunctioni.1:
..L2:
                                                          #1.26
        pushq     %rbx                                          #1.26
	.cfi_def_cfa_offset 16
        movq      %rsp, %rbx                                    #1.26
	.cfi_def_cfa 3, 16
	.cfi_offset 3, -16
        andq      $-64, %rsp                                    #1.26
        pushq     %rbp                                          #1.26
        pushq     %rbp                                          #1.26
        movq      8(%rbx), %rbp                                 #1.26
        movq      %rbp, 8(%rsp)                                 #1.26
        movq      %rsp, %rbp                                    #1.26
	.cfi_escape 0x10, 0x06, 0x02, 0x76, 0x00
        subq      $48, %rsp                                     #1.26 c1
        movslq    %edi, %r8                                     #2.13 c1
        lea       (,%r8,8), %rsi                                #2.10 c3
        movq      %rsi, %rax                                    #2.10 c5
        addq      $63, %rax                                     #2.10 c7
        andq      $-64, %rax                                    #2.10
        subq      %rax, %rsp                                    #2.10
        movq      %rsp, %rax                                    #2.10
                                # LOE rax rsi r8 r12 r13 r14 r15 edi
..B1.25:                        # Preds ..B1.1
                                # Execution count [1.00e+00]
        movq      %rax, %rcx                                    #2.10 c1
                                # LOE rcx rsi r8 r12 r13 r14 r15 edi
..B1.2:                         # Preds ..B1.25
                                # Execution count [1.00e+00]
        movq      %rsi, %rax                                    #2.16 c1
        addq      $63, %rax                                     #2.16 c3
        andq      $-64, %rax                                    #2.16
        subq      %rax, %rsp                                    #2.16
        movq      %rsp, %rax                                    #2.16
                                # LOE rax rcx rsi r8 r12 r13 r14 r15 edi
..B1.3:                         # Preds ..B1.2
                                # Execution count [1.00e+00]
        testq     %r8, %r8                                      #3.16 c1
        jle       ..B1.12       # Prob 50%                      #3.16 c3
                                # LOE rax rcx rsi r8 r12 r13 r14 r15 edi
..B1.4:                         # Preds ..B1.3
                                # Execution count [1.00e+00]
        cmpq      $16, %r8                                      #3.16 c1
        jl        ..B1.22       # Prob 10%                      #3.16 c3
                                # LOE rax rcx rsi r8 r12 r13 r14 r15 edi
..B1.5:                         # Preds ..B1.4
                                # Execution count [1.00e+00]
        movq      %r8, %r9                                      #3.16 c1
        xorl      %r10d, %r10d                                  #3.16 c1
        vmovups   .L_2il0floatpacket.0(%rip), %zmm0             #3.16 c1
        andq      $-16, %r9                                     #3.16 c3
                                # LOE rax rcx rsi r8 r9 r10 r12 r13 r14 r15 edi zmm0
..B1.6:                         # Preds ..B1.6 ..B1.5
                                # Execution count [1.00e+01]
        vmovupd   %zmm0, (%rax,%r10,8)                          #3.16 c1
        vmovupd   %zmm0, (%rcx,%r10,8)                          #3.7 c1
        vmovupd   %zmm0, 64(%rax,%r10,8)                        #3.16 c7 stall 2
        vmovupd   %zmm0, 64(%rcx,%r10,8)                        #3.7 c7
        addq      $16, %r10                                     #3.16 c7
        cmpq      %r9, %r10                                     #3.16 c9
        jb        ..B1.6        # Prob 90%                      #3.16 c11
                                # LOE rax rcx rsi r8 r9 r10 r12 r13 r14 r15 edi zmm0
..B1.8:                         # Preds ..B1.6 ..B1.22
                                # Execution count [1.00e+00]
        lea       1(%r9), %r10                                  #3.16 c1
        cmpq      %r8, %r10                                     #3.16 c3
        ja        ..B1.12       # Prob 50%                      #3.16 c5
                                # LOE rax rcx rsi r8 r9 r12 r13 r14 r15 edi
..B1.9:                         # Preds ..B1.8
                                # Execution count [1.00e+00]
        subq      %r9, %r8                                      #3.16 c1
        vpbroadcastq .L_2il0floatpacket.1(%rip), %zmm3          #3.16 c1
        vmovdqu32 .L_2il0floatpacket.2(%rip), %zmm2             #3.16 c1
        xorl      %r11d, %r11d                                  #3.16 c1
        vmovups   .L_2il0floatpacket.0(%rip), %zmm1             #3.16 c7 stall 2
        vpbroadcastq %r8, %zmm0                                 #3.16 c7
        lea       (%rax,%r9,8), %r10                            #3.16 c13 stall 2
        lea       (%rcx,%r9,8), %rdx                            #3.7 c13
        xorl      %r9d, %r9d                                    #3.16 c13
                                # LOE rax rdx rcx rsi r8 r9 r10 r11 r12 r13 r14 r15 edi zmm0 zmm1 zmm2 zmm3
..B1.10:                        # Preds ..B1.10 ..B1.9
                                # Execution count [1.00e+01]
        vpcmpgtq  %zmm2, %zmm0, %k1                             #3.16 c1
        vmovupd   %zmm1, (%r9,%r10){%k1}                        #3.16 c3
        addq      $8, %r11                                      #3.16 c3
        vmovupd   %zmm1, (%r9,%rdx){%k1}                        #3.7 c3
        addq      $64, %r9                                      #3.16 c3
        vpaddq    %zmm3, %zmm2, %zmm2                           #3.16 c3
        cmpq      %r8, %r11                                     #3.16 c5
        jb        ..B1.10       # Prob 90%                      #3.16 c7
                                # LOE rax rdx rcx rsi r8 r9 r10 r11 r12 r13 r14 r15 edi zmm0 zmm1 zmm2 zmm3
..B1.12:                        # Preds ..B1.10 ..B1.3 ..B1.8
                                # Execution count [1.00e+00]
        movl      %edi, %r8d                                    #5.3 c1
        shrl      $31, %r8d                                     #5.3 c3
        addl      %r8d, %edi                                    #5.25 c5
        sarl      $1, %edi                                      #5.25 c7
        testl     %edi, %edi                                    #5.25 c9
        jle       ..B1.19       # Prob 50%                      #5.25 c11
                                # LOE rax rcx rsi r12 r13 r14 r15 edi
..B1.13:                        # Preds ..B1.12
                                # Execution count [1.00e+00]
        movl      %edi, %edx                                    #5.3 c1
        movl      $1, %r11d                                     #5.3 c1
        shrl      $31, %edx                                     #5.3 c3
        xorl      %r10d, %r10d                                  #5.3 c3
        addl      %edi, %edx                                    #5.25 c5
        xorl      %r9d, %r9d                                    #5.3 c5
        sarl      $1, %edx                                      #5.25 c7
        xorl      %r8d, %r8d                                    #5.3 c7
        testl     %edx, %edx                                    #5.3 c9
        jbe       ..B1.17       # Prob 9%                       #5.3 c11
                                # LOE rax rcx rsi r8 r9 r10 r12 r13 r14 r15 edx edi r11d
..B1.14:                        # Preds ..B1.13
                                # Execution count [9.00e-01]
        movslq    %edx, %rdx                                    #5.3 c1
        .align    16,0x90
                                # LOE rax rdx rcx rsi r8 r9 r10 r12 r13 r14 r15 edi
..B1.15:                        # Preds ..B1.15 ..B1.14
                                # Execution count [2.50e+00]
        lea       (%r10,%r10), %r11d                            #6.5 c1
        vxorpd    %xmm0, %xmm0, %xmm0                           #6.21 c1
        vmovsd    (%r9,%rcx), %xmm2                             #7.5 c1
        vxorpd    %xmm4, %xmm4, %xmm4                           #6.21 c1
        vcvtsi2sd %r11d, %xmm0, %xmm0                           #6.21 c3
        vmovsd    8(%r9,%rcx), %xmm6                            #7.5 c3
        vmulsd    (%r9,%rax), %xmm0, %xmm1                      #6.5 c7 stall 1
        vmovsd    %xmm1, (%r9,%rax)                             #6.5 c13 stall 2
        lea       1(%r10,%r10), %r11d                           #6.5 c13
        addq      $1, %r10                                      #5.3 c13
        vcvtsi2sd %r11d, %xmm4, %xmm4                           #6.21 c15
        vaddsd    (%r8,%rax), %xmm2, %xmm3                      #7.5 c15
        vmovsd    %xmm3, (%r9,%rcx)                             #7.5 c21 stall 2
        vmulsd    8(%r9,%rax), %xmm4, %xmm5                     #6.5 c21
        vmovsd    %xmm5, 8(%r9,%rax)                            #6.5 c27 stall 2
        vaddsd    16(%r8,%rax), %xmm6, %xmm7                    #7.5 c27
        vmovsd    %xmm7, 8(%r9,%rcx)                            #7.5 c33 stall 2
        addq      $16, %r9                                      #5.3 c33
        addq      $32, %r8                                      #5.3 c33
        cmpq      %rdx, %r10                                    #5.3 c35
        jb        ..B1.15       # Prob 63%                      #5.3 c37
                                # LOE rax rdx rcx rsi r8 r9 r10 r12 r13 r14 r15 edi
..B1.16:                        # Preds ..B1.15
                                # Execution count [9.00e-01]
        lea       1(%r10,%r10), %r11d                           #6.5 c1
                                # LOE rax rcx rsi r12 r13 r14 r15 edi r11d
..B1.17:                        # Preds ..B1.16 ..B1.13
                                # Execution count [1.00e+00]
        lea       -1(%r11), %r8d                                #5.3 c1
        cmpl      %edi, %r8d                                    #5.3 c3
        jae       ..B1.19       # Prob 9%                       #5.3 c5
                                # LOE rax rcx rsi r12 r13 r14 r15 r8d r11d
..B1.18:                        # Preds ..B1.17
                                # Execution count [9.00e-01]
        vxorpd    %xmm0, %xmm0, %xmm0                           #6.21 c1
        movslq    %r11d, %r11                                   #6.5 c1
        vcvtsi2sd %r8d, %xmm0, %xmm0                            #6.21 c1
        vmulsd    -8(%rax,%r11,8), %xmm0, %xmm1                 #6.5 c3
        vmovsd    %xmm1, -8(%rax,%r11,8)                        #6.5 c9 stall 2
        vmovsd    -8(%rcx,%r11,8), %xmm2                        #7.5 c9
        movq      %r11, %r8                                     #7.13 c9
        shlq      $4, %r8                                       #7.13 c11
        vaddsd    -16(%r8,%rax), %xmm2, %xmm3                   #7.5 c15 stall 1
        vmovsd    %xmm3, -8(%rcx,%r11,8)                        #7.5 c21 stall 2
                                # LOE rax rcx rsi r12 r13 r14 r15
..B1.19:                        # Preds ..B1.17 ..B1.12 ..B1.18
                                # Execution count [1.00e+00]
        movq      %rax, %rdx                                    #10.10 c1
        movq      %rsi, %rax                                    #10.10 c1
        vmovsd    16(%rcx), %xmm0                               #10.10 c1
        addq      $63, %rax                                     #10.10 c3
        andq      $-64, %rax                                    #10.10
        addq      %rax, %rsp                                    #10.10
                                # LOE rcx rsi r12 r13 r14 r15 xmm0
..B1.20:                        # Preds ..B1.19
                                # Execution count [1.00e+00]
        movq      %rcx, %rdx                                    #10.10 c1
        movq      %rsi, %rax                                    #10.10 c1
        addq      $63, %rax                                     #10.10 c3
        andq      $-64, %rax                                    #10.10
        addq      %rax, %rsp                                    #10.10
                                # LOE r12 r13 r14 r15 xmm0
..B1.21:                        # Preds ..B1.20
                                # Execution count [1.00e+00]
        movq      %rbp, %rsp                                    #10.3 c3
        popq      %rbp                                          #10.3
	.cfi_restore 6
        movq      %rbx, %rsp                                    #10.3
        popq      %rbx                                          #10.3
	.cfi_def_cfa 7, 8
	.cfi_restore 3
        ret                                                     #10.3
	.cfi_def_cfa 3, 16
	.cfi_offset 3, -16
	.cfi_escape 0x10, 0x06, 0x02, 0x76, 0x00
                                # LOE
..B1.22:                        # Preds ..B1.4
                                # Execution count [1.00e-01]: Infreq
        xorl      %r9d, %r9d                                    #3.16 c1
        jmp       ..B1.8        # Prob 100%                     #3.16 c1
        .align    16,0x90
                                # LOE rax rcx rsi r8 r9 r12 r13 r14 r15 edi
	.cfi_endproc
# mark_end;
	.type	_Z10MyFunctioni,@function
	.size	_Z10MyFunctioni,.-_Z10MyFunctioni
	.section .gcc_except_table, "a"
	.align 4
_Z10MyFunctioni$$LSDA:
	.byte	255
	.byte	0
	.uleb128	..___tag_value__Z10MyFunctioni.17 - ..___tag_value__Z10MyFunctioni.16
..___tag_value__Z10MyFunctioni.16:
	.byte	1
	.uleb128	..___tag_value__Z10MyFunctioni.15 - ..___tag_value__Z10MyFunctioni.14
..___tag_value__Z10MyFunctioni.14:
..___tag_value__Z10MyFunctioni.15:
	.long	0x00000000,0x00000000
..___tag_value__Z10MyFunctioni.17:
	.data
# -- End  _Z10MyFunctioni
	.section .rodata, "a"
	.align 64
	.align 64
.L_2il0floatpacket.0:
	.long	0x00000000,0x3ff00000,0x00000000,0x3ff00000,0x00000000,0x3ff00000,0x00000000,0x3ff00000,0x00000000,0x3ff00000,0x00000000,0x3ff00000,0x00000000,0x3ff00000,0x00000000,0x3ff00000
	.type	.L_2il0floatpacket.0,@object
	.size	.L_2il0floatpacket.0,64
	.align 64
.L_2il0floatpacket.2:
	.long	0x00000000,0x00000000,0x00000001,0x00000000,0x00000002,0x00000000,0x00000003,0x00000000,0x00000004,0x00000000,0x00000005,0x00000000,0x00000006,0x00000000,0x00000007,0x00000000
	.type	.L_2il0floatpacket.2,@object
	.size	.L_2il0floatpacket.2,64
	.align 8
.L_2il0floatpacket.1:
	.long	0x00000008,0x00000000
	.type	.L_2il0floatpacket.1,@object
	.size	.L_2il0floatpacket.1,8
	.data
	.section .note.GNU-stack, ""
// -- Begin DWARF2 SEGMENT .eh_frame
	.section .eh_frame,"a",@progbits
.eh_frame_seg:
	.align 8
# End
