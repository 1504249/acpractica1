movups (%r12,%rax,1),%xmm0
movups (%rcx,%rax,1),%xmm5
movups (%r10,%rax,1),%xmm1
movups (%r9,%rax,1),%xmm6
addps  %xmm5,%xmm0
addps  %xmm6,%xmm1
addps  %xmm1,%xmm0
mulps  %xmm2,%xmm0
movups %xmm0,(%r8,%rax,1)
add    $0x10,%rax
cmp    %rax,%r14
jne    188
