movups (%rbx,%rdx,1),%xmm2
movups (%r9,%rdx,1),%xmm1 
movups (%r10,%rdx,1),%xmm9
addps  %xmm2,%xmm1
movups (%r11,%rdx,1),%xmm2
addps  %xmm9,%xmm2
addps  %xmm2,%xmm1
mulps  %xmm4,%xmm1
movups %xmm1,(%rax,%rdx,1)
movups (%rcx,%rdx,1),%xmm2
add    $0x10,%rdx
subps  %xmm1,%xmm2
movaps %xmm2,%xmm1
andps  %xmm3,%xmm1
maxps  %xmm1,%xmm0
cmp    %rsi,%rdx
jne    b0
