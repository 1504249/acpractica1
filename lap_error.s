movups (%rsi,%rax,1),%xmm0
movups (%rdx,%rax,1),%xmm3
add    $0x10,%rax 
subps  %xmm3,%xmm0
andps  %xmm2,%xmm0
maxps  %xmm0,%xmm1
cmp    %rax,%r15
jne    AA
