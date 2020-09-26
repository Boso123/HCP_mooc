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
        movslq    %edi, %rdi                                    #1.26 c1
        lea       (,%rdi,8), %rcx                               #2.10 c3
        movq      %rcx, %rax                                    #2.10 c5
        addq      $63, %rax                                     #2.10 c7
        andq      $-64, %rax                                    #2.10
        subq      %rax, %rsp                                    #2.10
        movq      %rsp, %rax                                    #2.10
                                # LOE rax rcx rdi r12 r13 r14 r15
..B1.18:                        # Preds ..B1.1
                                # Execution count [1.00e+00]
        movq      %rax, %rsi                                    #2.10 c1
                                # LOE rcx rsi rdi r12 r13 r14 r15
..B1.2:                         # Preds ..B1.18
                                # Execution count [1.00e+00]
        movq      %rcx, %rax                                    #2.16 c1
        addq      $63, %rax                                     #2.16 c3
        andq      $-64, %rax                                    #2.16
        subq      %rax, %rsp                                    #2.16
        movq      %rsp, %rax                                    #2.16
                                # LOE rax rcx rsi rdi r12 r13 r14 r15
..B1.3:                         # Preds ..B1.2
                                # Execution count [1.00e+00]
        testq     %rdi, %rdi                                    #3.16 c1
        jle       ..B1.12       # Prob 50%                      #3.16 c3
                                # LOE rax rcx rsi rdi r12 r13 r14 r15
..B1.4:                         # Preds ..B1.3
                                # Execution count [1.00e+00]
        cmpq      $16, %rdi                                     #3.16 c1
        jl        ..B1.15       # Prob 10%                      #3.16 c3
                                # LOE rax rcx rsi rdi r12 r13 r14 r15
..B1.5:                         # Preds ..B1.4
                                # Execution count [1.00e+00]
        movq      %rdi, %r9                                     #3.16 c1
        xorl      %r8d, %r8d                                    #3.16 c1
        vmovups   .L_2il0floatpacket.0(%rip), %zmm0             #3.16 c1
        andq      $-16, %r9                                     #3.16 c3
                                # LOE rax rcx rsi rdi r8 r9 r12 r13 r14 r15 zmm0
..B1.6:                         # Preds ..B1.6 ..B1.5
                                # Execution count [1.00e+01]
        vmovupd   %zmm0, (%rax,%r8,8)                           #3.16 c1
        vmovupd   %zmm0, (%rsi,%r8,8)                           #3.7 c1
        vmovupd   %zmm0, 64(%rax,%r8,8)                         #3.16 c7 stall 2
        vmovupd   %zmm0, 64(%rsi,%r8,8)                         #3.7 c7
        addq      $16, %r8                                      #3.16 c7
        cmpq      %r9, %r8                                      #3.16 c9
        jb        ..B1.6        # Prob 90%                      #3.16 c11
                                # LOE rax rcx rsi rdi r8 r9 r12 r13 r14 r15 zmm0
..B1.8:                         # Preds ..B1.6 ..B1.15
                                # Execution count [1.00e+00]
        lea       1(%r9), %r8                                   #3.16 c1
        cmpq      %rdi, %r8                                     #3.16 c3
        ja        ..B1.12       # Prob 50%                      #3.16 c5
                                # LOE rax rcx rsi rdi r9 r12 r13 r14 r15
..B1.9:                         # Preds ..B1.8
                                # Execution count [1.00e+00]
        subq      %r9, %rdi                                     #3.16 c1
        vpbroadcastq .L_2il0floatpacket.1(%rip), %zmm3          #3.16 c1
        vmovdqu32 .L_2il0floatpacket.2(%rip), %zmm2             #3.16 c1
        xorl      %r11d, %r11d                                  #3.16 c1
        xorl      %r8d, %r8d                                    #3.16 c3
        vmovups   .L_2il0floatpacket.0(%rip), %zmm1             #3.16 c7 stall 1
        vpbroadcastq %rdi, %zmm0                                #3.16 c7
        lea       (%rax,%r9,8), %r10                            #3.16 c13 stall 2
        lea       (%rsi,%r9,8), %r9                             #3.7 c13
                                # LOE rax rcx rsi rdi r8 r9 r10 r11 r12 r13 r14 r15 zmm0 zmm1 zmm2 zmm3
..B1.10:                        # Preds ..B1.10 ..B1.9
                                # Execution count [1.00e+01]
        vpcmpgtq  %zmm2, %zmm0, %k1                             #3.16 c1
        vmovupd   %zmm1, (%r8,%r10){%k1}                        #3.16 c3
        addq      $8, %r11                                      #3.16 c3
        vmovupd   %zmm1, (%r8,%r9){%k1}                         #3.7 c3
        addq      $64, %r8                                      #3.16 c3
        vpaddq    %zmm3, %zmm2, %zmm2                           #3.16 c3
        cmpq      %rdi, %r11                                    #3.16 c5
        jb        ..B1.10       # Prob 90%                      #3.16 c7
                                # LOE rax rcx rsi rdi r8 r9 r10 r11 r12 r13 r14 r15 zmm0 zmm1 zmm2 zmm3
..B1.12:                        # Preds ..B1.10 ..B1.3 ..B1.8
                                # Execution count [1.00e+00]
        movq      %rax, %rdx                                    #4.10 c1
        movq      %rcx, %rax                                    #4.10 c1
        vmovsd    16(%rsi), %xmm0                               #4.10 c1
        addq      $63, %rax                                     #4.10 c3
        andq      $-64, %rax                                    #4.10
        addq      %rax, %rsp                                    #4.10
                                # LOE rcx rsi r12 r13 r14 r15 xmm0
..B1.13:                        # Preds ..B1.12
                                # Execution count [1.00e+00]
        movq      %rsi, %rdx                                    #4.10 c1
        movq      %rcx, %rax                                    #4.10 c1
        addq      $63, %rax                                     #4.10 c3
        andq      $-64, %rax                                    #4.10
        addq      %rax, %rsp                                    #4.10
                                # LOE r12 r13 r14 r15 xmm0
..B1.14:                        # Preds ..B1.13
                                # Execution count [1.00e+00]
        movq      %rbp, %rsp                                    #4.3 c3
        popq      %rbp                                          #4.3
	.cfi_restore 6
        movq      %rbx, %rsp                                    #4.3
        popq      %rbx                                          #4.3
	.cfi_def_cfa 7, 8
	.cfi_restore 3
        ret                                                     #4.3
	.cfi_def_cfa 3, 16
	.cfi_offset 3, -16
	.cfi_escape 0x10, 0x06, 0x02, 0x76, 0x00
                                # LOE
..B1.15:                        # Preds ..B1.4
                                # Execution count [1.00e-01]: Infreq
        xorl      %r9d, %r9d                                    #3.16 c1
        jmp       ..B1.8        # Prob 100%                     #3.16 c1
        .align    16,0x90
                                # LOE rax rcx rsi rdi r9 r12 r13 r14 r15
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
