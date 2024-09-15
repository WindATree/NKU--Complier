
main.x86.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <mergeSort>:
   0:	f3 0f 1e fa          	endbr64 
   4:	55                   	push   %rbp
   5:	48 89 e5             	mov    %rsp,%rbp
   8:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
   f:	90                   	nop
  10:	5d                   	pop    %rbp
  11:	c3                   	retq   

0000000000000012 <main>:
  12:	f3 0f 1e fa          	endbr64 
  16:	55                   	push   %rbp
  17:	48 89 e5             	mov    %rsp,%rbp
  1a:	48 83 ec 60          	sub    $0x60,%rsp
  1e:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  25:	00 00 
  27:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  2b:	31 c0                	xor    %eax,%eax
  2d:	c7 45 a8 00 00 00 00 	movl   $0x0,-0x58(%rbp)
  34:	c7 45 ac 01 00 00 00 	movl   $0x1,-0x54(%rbp)
  3b:	c7 45 b8 2a 00 00 00 	movl   $0x2a,-0x48(%rbp)
  42:	83 7d ac 0a          	cmpl   $0xa,-0x54(%rbp)
  46:	7e 21                	jle    69 <main+0x57>
  48:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 4f <main+0x3d>
  4f:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
  53:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  57:	48 89 c6             	mov    %rax,%rsi
  5a:	bf 01 00 00 00       	mov    $0x1,%edi
  5f:	b8 00 00 00 00       	mov    $0x0,%eax
  64:	e8 00 00 00 00       	callq  69 <main+0x57>
  69:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 70 <main+0x5e>
  70:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  74:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  78:	48 89 c6             	mov    %rax,%rsi
  7b:	bf 01 00 00 00       	mov    $0x1,%edi
  80:	b8 00 00 00 00       	mov    $0x0,%eax
  85:	e8 00 00 00 00       	callq  8a <main+0x78>
  8a:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
  8e:	48 89 c6             	mov    %rax,%rsi
  91:	48 8d 3d 00 00 00 00 	lea    0x0(%rip),%rdi        # 98 <main+0x86>
  98:	b8 00 00 00 00       	mov    $0x0,%eax
  9d:	e8 00 00 00 00       	callq  a2 <main+0x90>
  a2:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # a9 <main+0x97>
  a9:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
  ad:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  b1:	48 89 c6             	mov    %rax,%rsi
  b4:	bf 01 00 00 00       	mov    $0x1,%edi
  b9:	b8 00 00 00 00       	mov    $0x0,%eax
  be:	e8 00 00 00 00       	callq  c3 <main+0xb1>
  c3:	48 8d 45 a4          	lea    -0x5c(%rbp),%rax
  c7:	48 89 c6             	mov    %rax,%rsi
  ca:	48 8d 3d 00 00 00 00 	lea    0x0(%rip),%rdi        # d1 <main+0xbf>
  d1:	b8 00 00 00 00       	mov    $0x0,%eax
  d6:	e8 00 00 00 00       	callq  db <main+0xc9>
  db:	e8 00 00 00 00       	callq  e0 <main+0xce>
  e0:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
  e4:	c7 45 b0 00 00 00 00 	movl   $0x0,-0x50(%rbp)
  eb:	eb 30                	jmp    11d <main+0x10b>
  ed:	c7 45 b4 00 00 00 00 	movl   $0x0,-0x4c(%rbp)
  f4:	eb 1b                	jmp    111 <main+0xff>
  f6:	8b 55 a8             	mov    -0x58(%rbp),%edx
  f9:	8b 45 ac             	mov    -0x54(%rbp),%eax
  fc:	01 d0                	add    %edx,%eax
  fe:	89 45 bc             	mov    %eax,-0x44(%rbp)
 101:	8b 45 ac             	mov    -0x54(%rbp),%eax
 104:	89 45 a8             	mov    %eax,-0x58(%rbp)
 107:	8b 45 bc             	mov    -0x44(%rbp),%eax
 10a:	89 45 ac             	mov    %eax,-0x54(%rbp)
 10d:	83 45 b4 01          	addl   $0x1,-0x4c(%rbp)
 111:	8b 45 a0             	mov    -0x60(%rbp),%eax
 114:	39 45 b4             	cmp    %eax,-0x4c(%rbp)
 117:	7c dd                	jl     f6 <main+0xe4>
 119:	83 45 b0 01          	addl   $0x1,-0x50(%rbp)
 11d:	8b 45 a4             	mov    -0x5c(%rbp),%eax
 120:	39 45 b0             	cmp    %eax,-0x50(%rbp)
 123:	7c c8                	jl     ed <main+0xdb>
 125:	e8 00 00 00 00       	callq  12a <main+0x118>
 12a:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
 12e:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
 132:	48 2b 45 c0          	sub    -0x40(%rbp),%rax
 136:	f2 48 0f 2a c0       	cvtsi2sd %rax,%xmm0
 13b:	f2 0f 10 0d 00 00 00 	movsd  0x0(%rip),%xmm1        # 143 <main+0x131>
 142:	00 
 143:	f2 0f 5e c1          	divsd  %xmm1,%xmm0
 147:	f2 0f 11 45 d0       	movsd  %xmm0,-0x30(%rbp)
 14c:	8b 4d a4             	mov    -0x5c(%rbp),%ecx
 14f:	8b 55 a0             	mov    -0x60(%rbp),%edx
 152:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 159 <main+0x147>
 159:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
 15d:	48 8b 75 d0          	mov    -0x30(%rbp),%rsi
 161:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
 165:	66 48 0f 6e c6       	movq   %rsi,%xmm0
 16a:	48 89 c6             	mov    %rax,%rsi
 16d:	bf 01 00 00 00       	mov    $0x1,%edi
 172:	b8 01 00 00 00       	mov    $0x1,%eax
 177:	e8 00 00 00 00       	callq  17c <main+0x16a>
 17c:	b8 00 00 00 00       	mov    $0x0,%eax
 181:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
 185:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
 18c:	00 00 
 18e:	74 05                	je     195 <main+0x183>
 190:	e8 00 00 00 00       	callq  195 <main+0x183>
 195:	c9                   	leaveq 
 196:	c3                   	retq   
