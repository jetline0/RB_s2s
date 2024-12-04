
MVM/alg1_sr1:     file format elf64-x86-64


Disassembly of section .init:

0000000000001000 <_init>:
    1000:	f3 0f 1e fa          	endbr64 
    1004:	48 83 ec 08          	sub    $0x8,%rsp
    1008:	48 8b 05 d9 2f 00 00 	mov    0x2fd9(%rip),%rax        # 3fe8 <__gmon_start__@Base>
    100f:	48 85 c0             	test   %rax,%rax
    1012:	74 02                	je     1016 <_init+0x16>
    1014:	ff d0                	call   *%rax
    1016:	48 83 c4 08          	add    $0x8,%rsp
    101a:	c3                   	ret    

Disassembly of section .plt:

0000000000001020 <.plt>:
    1020:	ff 35 72 2f 00 00    	push   0x2f72(%rip)        # 3f98 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	f2 ff 25 73 2f 00 00 	bnd jmp *0x2f73(%rip)        # 3fa0 <_GLOBAL_OFFSET_TABLE_+0x10>
    102d:	0f 1f 00             	nopl   (%rax)
    1030:	f3 0f 1e fa          	endbr64 
    1034:	68 00 00 00 00       	push   $0x0
    1039:	f2 e9 e1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    103f:	90                   	nop
    1040:	f3 0f 1e fa          	endbr64 
    1044:	68 01 00 00 00       	push   $0x1
    1049:	f2 e9 d1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    104f:	90                   	nop
    1050:	f3 0f 1e fa          	endbr64 
    1054:	68 02 00 00 00       	push   $0x2
    1059:	f2 e9 c1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    105f:	90                   	nop
    1060:	f3 0f 1e fa          	endbr64 
    1064:	68 03 00 00 00       	push   $0x3
    1069:	f2 e9 b1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    106f:	90                   	nop
    1070:	f3 0f 1e fa          	endbr64 
    1074:	68 04 00 00 00       	push   $0x4
    1079:	f2 e9 a1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    107f:	90                   	nop
    1080:	f3 0f 1e fa          	endbr64 
    1084:	68 05 00 00 00       	push   $0x5
    1089:	f2 e9 91 ff ff ff    	bnd jmp 1020 <_init+0x20>
    108f:	90                   	nop

Disassembly of section .plt.got:

0000000000001090 <__cxa_finalize@plt>:
    1090:	f3 0f 1e fa          	endbr64 
    1094:	f2 ff 25 5d 2f 00 00 	bnd jmp *0x2f5d(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    109b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .plt.sec:

00000000000010a0 <puts@plt>:
    10a0:	f3 0f 1e fa          	endbr64 
    10a4:	f2 ff 25 fd 2e 00 00 	bnd jmp *0x2efd(%rip)        # 3fa8 <puts@GLIBC_2.2.5>
    10ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000010b0 <clock_gettime@plt>:
    10b0:	f3 0f 1e fa          	endbr64 
    10b4:	f2 ff 25 f5 2e 00 00 	bnd jmp *0x2ef5(%rip)        # 3fb0 <clock_gettime@GLIBC_2.17>
    10bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000010c0 <__stack_chk_fail@plt>:
    10c0:	f3 0f 1e fa          	endbr64 
    10c4:	f2 ff 25 ed 2e 00 00 	bnd jmp *0x2eed(%rip)        # 3fb8 <__stack_chk_fail@GLIBC_2.4>
    10cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000010d0 <sched_setaffinity@plt>:
    10d0:	f3 0f 1e fa          	endbr64 
    10d4:	f2 ff 25 e5 2e 00 00 	bnd jmp *0x2ee5(%rip)        # 3fc0 <sched_setaffinity@GLIBC_2.3.4>
    10db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000010e0 <__printf_chk@plt>:
    10e0:	f3 0f 1e fa          	endbr64 
    10e4:	f2 ff 25 dd 2e 00 00 	bnd jmp *0x2edd(%rip)        # 3fc8 <__printf_chk@GLIBC_2.3.4>
    10eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000010f0 <posix_memalign@plt>:
    10f0:	f3 0f 1e fa          	endbr64 
    10f4:	f2 ff 25 d5 2e 00 00 	bnd jmp *0x2ed5(%rip)        # 3fd0 <posix_memalign@GLIBC_2.2.5>
    10fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .text:

0000000000001100 <_start>:
    1100:	f3 0f 1e fa          	endbr64 
    1104:	31 ed                	xor    %ebp,%ebp
    1106:	49 89 d1             	mov    %rdx,%r9
    1109:	5e                   	pop    %rsi
    110a:	48 89 e2             	mov    %rsp,%rdx
    110d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    1111:	50                   	push   %rax
    1112:	54                   	push   %rsp
    1113:	45 31 c0             	xor    %r8d,%r8d
    1116:	31 c9                	xor    %ecx,%ecx
    1118:	48 8d 3d 20 07 00 00 	lea    0x720(%rip),%rdi        # 183f <main>
    111f:	ff 15 b3 2e 00 00    	call   *0x2eb3(%rip)        # 3fd8 <__libc_start_main@GLIBC_2.34>
    1125:	f4                   	hlt    
    1126:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    112d:	00 00 00 

0000000000001130 <deregister_tm_clones>:
    1130:	48 8d 3d d9 2e 00 00 	lea    0x2ed9(%rip),%rdi        # 4010 <__TMC_END__>
    1137:	48 8d 05 d2 2e 00 00 	lea    0x2ed2(%rip),%rax        # 4010 <__TMC_END__>
    113e:	48 39 f8             	cmp    %rdi,%rax
    1141:	74 15                	je     1158 <deregister_tm_clones+0x28>
    1143:	48 8b 05 96 2e 00 00 	mov    0x2e96(%rip),%rax        # 3fe0 <_ITM_deregisterTMCloneTable@Base>
    114a:	48 85 c0             	test   %rax,%rax
    114d:	74 09                	je     1158 <deregister_tm_clones+0x28>
    114f:	ff e0                	jmp    *%rax
    1151:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1158:	c3                   	ret    
    1159:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001160 <register_tm_clones>:
    1160:	48 8d 3d a9 2e 00 00 	lea    0x2ea9(%rip),%rdi        # 4010 <__TMC_END__>
    1167:	48 8d 35 a2 2e 00 00 	lea    0x2ea2(%rip),%rsi        # 4010 <__TMC_END__>
    116e:	48 29 fe             	sub    %rdi,%rsi
    1171:	48 89 f0             	mov    %rsi,%rax
    1174:	48 c1 ee 3f          	shr    $0x3f,%rsi
    1178:	48 c1 f8 03          	sar    $0x3,%rax
    117c:	48 01 c6             	add    %rax,%rsi
    117f:	48 d1 fe             	sar    %rsi
    1182:	74 14                	je     1198 <register_tm_clones+0x38>
    1184:	48 8b 05 65 2e 00 00 	mov    0x2e65(%rip),%rax        # 3ff0 <_ITM_registerTMCloneTable@Base>
    118b:	48 85 c0             	test   %rax,%rax
    118e:	74 08                	je     1198 <register_tm_clones+0x38>
    1190:	ff e0                	jmp    *%rax
    1192:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1198:	c3                   	ret    
    1199:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000011a0 <__do_global_dtors_aux>:
    11a0:	f3 0f 1e fa          	endbr64 
    11a4:	80 3d 65 2e 00 00 00 	cmpb   $0x0,0x2e65(%rip)        # 4010 <__TMC_END__>
    11ab:	75 2b                	jne    11d8 <__do_global_dtors_aux+0x38>
    11ad:	55                   	push   %rbp
    11ae:	48 83 3d 42 2e 00 00 	cmpq   $0x0,0x2e42(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    11b5:	00 
    11b6:	48 89 e5             	mov    %rsp,%rbp
    11b9:	74 0c                	je     11c7 <__do_global_dtors_aux+0x27>
    11bb:	48 8b 3d 46 2e 00 00 	mov    0x2e46(%rip),%rdi        # 4008 <__dso_handle>
    11c2:	e8 c9 fe ff ff       	call   1090 <__cxa_finalize@plt>
    11c7:	e8 64 ff ff ff       	call   1130 <deregister_tm_clones>
    11cc:	c6 05 3d 2e 00 00 01 	movb   $0x1,0x2e3d(%rip)        # 4010 <__TMC_END__>
    11d3:	5d                   	pop    %rbp
    11d4:	c3                   	ret    
    11d5:	0f 1f 00             	nopl   (%rax)
    11d8:	c3                   	ret    
    11d9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000011e0 <frame_dummy>:
    11e0:	f3 0f 1e fa          	endbr64 
    11e4:	e9 77 ff ff ff       	jmp    1160 <register_tm_clones>

00000000000011e9 <initialization_MVM>:
    11e9:	f3 0f 1e fa          	endbr64 
    11ed:	41 54                	push   %r12
    11ef:	55                   	push   %rbp
    11f0:	53                   	push   %rbx
    11f1:	48 83 ec 30          	sub    $0x30,%rsp
    11f5:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    11fc:	00 00 
    11fe:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
    1203:	31 c0                	xor    %eax,%eax
    1205:	48 8d 7c 24 18       	lea    0x18(%rsp),%rdi
    120a:	ba 00 08 00 00       	mov    $0x800,%edx
    120f:	be 40 00 00 00       	mov    $0x40,%esi
    1214:	e8 d7 fe ff ff       	call   10f0 <posix_memalign@plt>
    1219:	85 c0                	test   %eax,%eax
    121b:	b8 00 00 00 00       	mov    $0x0,%eax
    1220:	48 0f 44 44 24 18    	cmove  0x18(%rsp),%rax
    1226:	48 89 05 03 2e 00 00 	mov    %rax,0x2e03(%rip)        # 4030 <X>
    122d:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
    1232:	ba 00 08 00 00       	mov    $0x800,%edx
    1237:	be 40 00 00 00       	mov    $0x40,%esi
    123c:	e8 af fe ff ff       	call   10f0 <posix_memalign@plt>
    1241:	85 c0                	test   %eax,%eax
    1243:	b8 00 00 00 00       	mov    $0x0,%eax
    1248:	48 0f 44 44 24 10    	cmove  0x10(%rsp),%rax
    124e:	48 89 05 d3 2d 00 00 	mov    %rax,0x2dd3(%rip)        # 4028 <Y>
    1255:	48 8d 7c 24 08       	lea    0x8(%rsp),%rdi
    125a:	ba 00 08 00 00       	mov    $0x800,%edx
    125f:	be 40 00 00 00       	mov    $0x40,%esi
    1264:	e8 87 fe ff ff       	call   10f0 <posix_memalign@plt>
    1269:	85 c0                	test   %eax,%eax
    126b:	b8 00 00 00 00       	mov    $0x0,%eax
    1270:	48 0f 44 44 24 08    	cmove  0x8(%rsp),%rax
    1276:	48 89 05 9b 2d 00 00 	mov    %rax,0x2d9b(%rip)        # 4018 <test>
    127d:	48 89 e7             	mov    %rsp,%rdi
    1280:	ba 00 08 00 00       	mov    $0x800,%edx
    1285:	be 40 00 00 00       	mov    $0x40,%esi
    128a:	e8 61 fe ff ff       	call   10f0 <posix_memalign@plt>
    128f:	85 c0                	test   %eax,%eax
    1291:	b8 00 00 00 00       	mov    $0x0,%eax
    1296:	48 0f 44 04 24       	cmove  (%rsp),%rax
    129b:	48 89 05 7e 2d 00 00 	mov    %rax,0x2d7e(%rip)        # 4020 <Z>
    12a2:	bb 00 00 00 00       	mov    $0x0,%ebx
    12a7:	4c 8d 64 24 20       	lea    0x20(%rsp),%r12
    12ac:	48 89 dd             	mov    %rbx,%rbp
    12af:	48 03 2d 72 2d 00 00 	add    0x2d72(%rip),%rbp        # 4028 <Y>
    12b6:	ba 00 04 00 00       	mov    $0x400,%edx
    12bb:	be 40 00 00 00       	mov    $0x40,%esi
    12c0:	4c 89 e7             	mov    %r12,%rdi
    12c3:	e8 28 fe ff ff       	call   10f0 <posix_memalign@plt>
    12c8:	85 c0                	test   %eax,%eax
    12ca:	b8 00 00 00 00       	mov    $0x0,%eax
    12cf:	48 0f 44 44 24 20    	cmove  0x20(%rsp),%rax
    12d5:	48 89 45 00          	mov    %rax,0x0(%rbp)
    12d9:	48 83 c3 08          	add    $0x8,%rbx
    12dd:	48 81 fb 00 08 00 00 	cmp    $0x800,%rbx
    12e4:	75 c6                	jne    12ac <initialization_MVM+0xc3>
    12e6:	ba 00 00 00 00       	mov    $0x0,%edx
    12eb:	f3 0f 10 0d 85 0d 00 	movss  0xd85(%rip),%xmm1        # 2078 <_IO_stdin_used+0x78>
    12f2:	00 
    12f3:	89 d0                	mov    %edx,%eax
    12f5:	48 69 c0 39 8e e3 38 	imul   $0x38e38e39,%rax,%rax
    12fc:	48 c1 e8 21          	shr    $0x21,%rax
    1300:	8d 0c c0             	lea    (%rax,%rax,8),%ecx
    1303:	89 d0                	mov    %edx,%eax
    1305:	29 c8                	sub    %ecx,%eax
    1307:	66 0f ef c0          	pxor   %xmm0,%xmm0
    130b:	f3 48 0f 2a c0       	cvtsi2ss %rax,%xmm0
    1310:	f3 0f 58 c1          	addss  %xmm1,%xmm0
    1314:	48 8b 05 15 2d 00 00 	mov    0x2d15(%rip),%rax        # 4030 <X>
    131b:	f3 0f 11 04 90       	movss  %xmm0,(%rax,%rdx,4)
    1320:	48 83 c2 01          	add    $0x1,%rdx
    1324:	48 81 fa 00 01 00 00 	cmp    $0x100,%rdx
    132b:	75 c6                	jne    12f3 <initialization_MVM+0x10a>
    132d:	bf 00 00 00 00       	mov    $0x0,%edi
    1332:	f3 0f 10 0d 42 0d 00 	movss  0xd42(%rip),%xmm1        # 207c <_IO_stdin_used+0x7c>
    1339:	00 
    133a:	ba 00 00 00 00       	mov    $0x0,%edx
    133f:	48 8b 05 e2 2c 00 00 	mov    0x2ce2(%rip),%rax        # 4028 <Y>
    1346:	48 8b 0c 38          	mov    (%rax,%rdi,1),%rcx
    134a:	48 63 c2             	movslq %edx,%rax
    134d:	48 69 c0 ab aa aa 2a 	imul   $0x2aaaaaab,%rax,%rax
    1354:	48 c1 e8 20          	shr    $0x20,%rax
    1358:	89 d6                	mov    %edx,%esi
    135a:	c1 fe 1f             	sar    $0x1f,%esi
    135d:	29 f0                	sub    %esi,%eax
    135f:	8d 04 40             	lea    (%rax,%rax,2),%eax
    1362:	01 c0                	add    %eax,%eax
    1364:	89 d6                	mov    %edx,%esi
    1366:	29 c6                	sub    %eax,%esi
    1368:	66 0f ef c0          	pxor   %xmm0,%xmm0
    136c:	f3 0f 2a c6          	cvtsi2ss %esi,%xmm0
    1370:	f3 0f 58 c1          	addss  %xmm1,%xmm0
    1374:	f3 0f 11 04 91       	movss  %xmm0,(%rcx,%rdx,4)
    1379:	48 83 c2 01          	add    $0x1,%rdx
    137d:	48 81 fa 00 01 00 00 	cmp    $0x100,%rdx
    1384:	75 b9                	jne    133f <initialization_MVM+0x156>
    1386:	48 83 c7 08          	add    $0x8,%rdi
    138a:	48 81 ff 00 08 00 00 	cmp    $0x800,%rdi
    1391:	75 a7                	jne    133a <initialization_MVM+0x151>
    1393:	b8 00 00 00 00       	mov    $0x0,%eax
    1398:	48 8b 15 81 2c 00 00 	mov    0x2c81(%rip),%rdx        # 4020 <Z>
    139f:	c7 04 02 00 00 00 00 	movl   $0x0,(%rdx,%rax,1)
    13a6:	48 8b 15 6b 2c 00 00 	mov    0x2c6b(%rip),%rdx        # 4018 <test>
    13ad:	c7 04 02 00 00 00 00 	movl   $0x0,(%rdx,%rax,1)
    13b4:	48 83 c0 04          	add    $0x4,%rax
    13b8:	48 3d 00 04 00 00    	cmp    $0x400,%rax
    13be:	75 d8                	jne    1398 <initialization_MVM+0x1af>
    13c0:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    13c5:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    13cc:	00 00 
    13ce:	75 09                	jne    13d9 <initialization_MVM+0x1f0>
    13d0:	48 83 c4 30          	add    $0x30,%rsp
    13d4:	5b                   	pop    %rbx
    13d5:	5d                   	pop    %rbp
    13d6:	41 5c                	pop    %r12
    13d8:	c3                   	ret    
    13d9:	e8 e2 fc ff ff       	call   10c0 <__stack_chk_fail@plt>

00000000000013de <equal>:
    13de:	f3 0f 1e fa          	endbr64 
    13e2:	0f 28 d0             	movaps %xmm0,%xmm2
    13e5:	f3 0f 5c d1          	subss  %xmm1,%xmm2
    13e9:	f3 0f 10 1d 8f 0c 00 	movss  0xc8f(%rip),%xmm3        # 2080 <_IO_stdin_used+0x80>
    13f0:	00 
    13f1:	0f 54 d3             	andps  %xmm3,%xmm2
    13f4:	66 0f ef c9          	pxor   %xmm1,%xmm1
    13f8:	f3 0f 5a ca          	cvtss2sd %xmm2,%xmm1
    13fc:	0f 54 c3             	andps  %xmm3,%xmm0
    13ff:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
    1403:	f2 0f 5e c8          	divsd  %xmm0,%xmm1
    1407:	f2 0f 10 05 81 0c 00 	movsd  0xc81(%rip),%xmm0        # 2090 <_IO_stdin_used+0x90>
    140e:	00 
    140f:	66 0f 2f c1          	comisd %xmm1,%xmm0
    1413:	0f 96 c0             	setbe  %al
    1416:	0f b6 c0             	movzbl %al,%eax
    1419:	c3                   	ret    

000000000000141a <Compare_MVM>:
    141a:	f3 0f 1e fa          	endbr64 
    141e:	41 54                	push   %r12
    1420:	55                   	push   %rbp
    1421:	53                   	push   %rbx
    1422:	be 00 00 00 00       	mov    $0x0,%esi
    1427:	48 8d 3c 36          	lea    (%rsi,%rsi,1),%rdi
    142b:	b8 00 00 00 00       	mov    $0x0,%eax
    1430:	48 89 f2             	mov    %rsi,%rdx
    1433:	48 03 15 de 2b 00 00 	add    0x2bde(%rip),%rdx        # 4018 <test>
    143a:	48 8b 0d e7 2b 00 00 	mov    0x2be7(%rip),%rcx        # 4028 <Y>
    1441:	48 8b 0c 39          	mov    (%rcx,%rdi,1),%rcx
    1445:	f3 0f 10 04 01       	movss  (%rcx,%rax,1),%xmm0
    144a:	48 8b 0d df 2b 00 00 	mov    0x2bdf(%rip),%rcx        # 4030 <X>
    1451:	f3 0f 58 04 01       	addss  (%rcx,%rax,1),%xmm0
    1456:	f3 0f 58 02          	addss  (%rdx),%xmm0
    145a:	f3 0f 11 02          	movss  %xmm0,(%rdx)
    145e:	48 83 c0 04          	add    $0x4,%rax
    1462:	48 3d 00 04 00 00    	cmp    $0x400,%rax
    1468:	75 c6                	jne    1430 <Compare_MVM+0x16>
    146a:	48 83 c6 04          	add    $0x4,%rsi
    146e:	48 81 fe 00 04 00 00 	cmp    $0x400,%rsi
    1475:	75 b0                	jne    1427 <Compare_MVM+0xd>
    1477:	4c 8b 25 9a 2b 00 00 	mov    0x2b9a(%rip),%r12        # 4018 <test>
    147e:	48 8b 2d 9b 2b 00 00 	mov    0x2b9b(%rip),%rbp        # 4020 <Z>
    1485:	bb 00 00 00 00       	mov    $0x0,%ebx
    148a:	f3 0f 10 44 1d 00    	movss  0x0(%rbp,%rbx,1),%xmm0
    1490:	f3 41 0f 10 0c 1c    	movss  (%r12,%rbx,1),%xmm1
    1496:	e8 43 ff ff ff       	call   13de <equal>
    149b:	66 83 f8 01          	cmp    $0x1,%ax
    149f:	74 12                	je     14b3 <Compare_MVM+0x99>
    14a1:	48 83 c3 04          	add    $0x4,%rbx
    14a5:	48 81 fb 00 04 00 00 	cmp    $0x400,%rbx
    14ac:	75 dc                	jne    148a <Compare_MVM+0x70>
    14ae:	b8 00 00 00 00       	mov    $0x0,%eax
    14b3:	5b                   	pop    %rbx
    14b4:	5d                   	pop    %rbp
    14b5:	41 5c                	pop    %r12
    14b7:	c3                   	ret    

00000000000014b8 <MVM_default>:
    14b8:	f3 0f 1e fa          	endbr64 
    14bc:	41 57                	push   %r15
    14be:	41 56                	push   %r14
    14c0:	41 55                	push   %r13
    14c2:	41 54                	push   %r12
    14c4:	55                   	push   %rbp
    14c5:	53                   	push   %rbx
    14c6:	48 83 ec 18          	sub    $0x18,%rsp
    14ca:	48 c7 44 24 a0 00 00 	movq   $0x0,-0x60(%rsp)
    14d1:	00 00 
    14d3:	48 c7 44 24 98 10 00 	movq   $0x10,-0x68(%rsp)
    14da:	00 00 
    14dc:	48 8b 05 3d 2b 00 00 	mov    0x2b3d(%rip),%rax        # 4020 <Z>
    14e3:	48 8b 5c 24 98       	mov    -0x68(%rsp),%rbx
    14e8:	48 8d 34 18          	lea    (%rax,%rbx,1),%rsi
    14ec:	48 89 74 24 a8       	mov    %rsi,-0x58(%rsp)
    14f1:	f3 44 0f 10 36       	movss  (%rsi),%xmm14
    14f6:	48 8d 73 1c          	lea    0x1c(%rbx),%rsi
    14fa:	48 89 74 24 b0       	mov    %rsi,-0x50(%rsp)
    14ff:	f3 44 0f 10 6c 18 1c 	movss  0x1c(%rax,%rbx,1),%xmm13
    1506:	48 8d 7b 10          	lea    0x10(%rbx),%rdi
    150a:	48 89 7c 24 b8       	mov    %rdi,-0x48(%rsp)
    150f:	f3 44 0f 10 64 18 10 	movss  0x10(%rax,%rbx,1),%xmm12
    1516:	48 8d 7b 04          	lea    0x4(%rbx),%rdi
    151a:	48 89 7c 24 c0       	mov    %rdi,-0x40(%rsp)
    151f:	f3 44 0f 10 5c 18 04 	movss  0x4(%rax,%rbx,1),%xmm11
    1526:	48 8d 7b 18          	lea    0x18(%rbx),%rdi
    152a:	48 89 7c 24 c8       	mov    %rdi,-0x38(%rsp)
    152f:	f3 44 0f 10 54 18 18 	movss  0x18(%rax,%rbx,1),%xmm10
    1536:	48 8d 7b fc          	lea    -0x4(%rbx),%rdi
    153a:	48 89 7c 24 d0       	mov    %rdi,-0x30(%rsp)
    153f:	f3 44 0f 10 4c 18 fc 	movss  -0x4(%rax,%rbx,1),%xmm9
    1546:	48 8d 7b 14          	lea    0x14(%rbx),%rdi
    154a:	48 89 7c 24 d8       	mov    %rdi,-0x28(%rsp)
    154f:	f3 44 0f 10 44 18 14 	movss  0x14(%rax,%rbx,1),%xmm8
    1556:	48 8d 7b f0          	lea    -0x10(%rbx),%rdi
    155a:	48 89 7c 24 10       	mov    %rdi,0x10(%rsp)
    155f:	f3 0f 10 7c 18 f0    	movss  -0x10(%rax,%rbx,1),%xmm7
    1565:	48 8d 73 f4          	lea    -0xc(%rbx),%rsi
    1569:	48 89 74 24 e0       	mov    %rsi,-0x20(%rsp)
    156e:	f3 0f 10 74 18 f4    	movss  -0xc(%rax,%rbx,1),%xmm6
    1574:	48 8d 7b f8          	lea    -0x8(%rbx),%rdi
    1578:	48 89 7c 24 e8       	mov    %rdi,-0x18(%rsp)
    157d:	f3 0f 10 6c 18 f8    	movss  -0x8(%rax,%rbx,1),%xmm5
    1583:	48 8d 73 24          	lea    0x24(%rbx),%rsi
    1587:	48 89 74 24 f0       	mov    %rsi,-0x10(%rsp)
    158c:	f3 0f 10 5c 18 24    	movss  0x24(%rax,%rbx,1),%xmm3
    1592:	48 8d 7b 08          	lea    0x8(%rbx),%rdi
    1596:	48 89 7c 24 f8       	mov    %rdi,-0x8(%rsp)
    159b:	f3 0f 10 64 18 08    	movss  0x8(%rax,%rbx,1),%xmm4
    15a1:	48 8d 73 20          	lea    0x20(%rbx),%rsi
    15a5:	48 89 34 24          	mov    %rsi,(%rsp)
    15a9:	f3 0f 10 54 18 20    	movss  0x20(%rax,%rbx,1),%xmm2
    15af:	48 8d 7b 0c          	lea    0xc(%rbx),%rdi
    15b3:	48 89 7c 24 08       	mov    %rdi,0x8(%rsp)
    15b8:	f3 0f 10 4c 18 0c    	movss  0xc(%rax,%rbx,1),%xmm1
    15be:	4c 8b 3d 6b 2a 00 00 	mov    0x2a6b(%rip),%r15        # 4030 <X>
    15c5:	48 8b 05 5c 2a 00 00 	mov    0x2a5c(%rip),%rax        # 4028 <Y>
    15cc:	48 8b 54 24 a0       	mov    -0x60(%rsp),%rdx
    15d1:	48 8b 3c 10          	mov    (%rax,%rdx,1),%rdi
    15d5:	48 89 7c 24 88       	mov    %rdi,-0x78(%rsp)
    15da:	4c 8b 74 10 08       	mov    0x8(%rax,%rdx,1),%r14
    15df:	4c 8b 6c 10 10       	mov    0x10(%rax,%rdx,1),%r13
    15e4:	4c 8b 64 10 18       	mov    0x18(%rax,%rdx,1),%r12
    15e9:	48 8b 2c 58          	mov    (%rax,%rbx,2),%rbp
    15ed:	48 8b 5c 10 28       	mov    0x28(%rax,%rdx,1),%rbx
    15f2:	4c 8b 5c 10 30       	mov    0x30(%rax,%rdx,1),%r11
    15f7:	4c 8b 54 10 38       	mov    0x38(%rax,%rdx,1),%r10
    15fc:	4c 8b 4c 10 40       	mov    0x40(%rax,%rdx,1),%r9
    1601:	4c 8b 44 10 48       	mov    0x48(%rax,%rdx,1),%r8
    1606:	48 8b 7c 10 50       	mov    0x50(%rax,%rdx,1),%rdi
    160b:	48 8b 74 10 58       	mov    0x58(%rax,%rdx,1),%rsi
    1610:	48 8b 4c 10 60       	mov    0x60(%rax,%rdx,1),%rcx
    1615:	48 8b 54 10 68       	mov    0x68(%rax,%rdx,1),%rdx
    161a:	b8 00 00 00 00       	mov    $0x0,%eax
    161f:	48 89 54 24 90       	mov    %rdx,-0x70(%rsp)
    1624:	f3 41 0f 10 04 07    	movss  (%r15,%rax,1),%xmm0
    162a:	48 8b 54 24 88       	mov    -0x78(%rsp),%rdx
    162f:	f3 0f 58 3c 02       	addss  (%rdx,%rax,1),%xmm7
    1634:	f3 0f 58 f8          	addss  %xmm0,%xmm7
    1638:	f3 41 0f 58 34 06    	addss  (%r14,%rax,1),%xmm6
    163e:	f3 0f 58 f0          	addss  %xmm0,%xmm6
    1642:	f3 41 0f 58 6c 05 00 	addss  0x0(%r13,%rax,1),%xmm5
    1649:	f3 0f 58 e8          	addss  %xmm0,%xmm5
    164d:	f3 45 0f 58 0c 04    	addss  (%r12,%rax,1),%xmm9
    1653:	f3 44 0f 58 c8       	addss  %xmm0,%xmm9
    1658:	f3 44 0f 58 74 05 00 	addss  0x0(%rbp,%rax,1),%xmm14
    165f:	f3 44 0f 58 f0       	addss  %xmm0,%xmm14
    1664:	f3 44 0f 58 1c 03    	addss  (%rbx,%rax,1),%xmm11
    166a:	f3 44 0f 58 d8       	addss  %xmm0,%xmm11
    166f:	f3 41 0f 58 24 03    	addss  (%r11,%rax,1),%xmm4
    1675:	f3 0f 58 e0          	addss  %xmm0,%xmm4
    1679:	f3 41 0f 58 0c 02    	addss  (%r10,%rax,1),%xmm1
    167f:	f3 0f 58 c8          	addss  %xmm0,%xmm1
    1683:	f3 45 0f 58 24 01    	addss  (%r9,%rax,1),%xmm12
    1689:	f3 44 0f 58 e0       	addss  %xmm0,%xmm12
    168e:	f3 45 0f 58 04 00    	addss  (%r8,%rax,1),%xmm8
    1694:	f3 44 0f 58 c0       	addss  %xmm0,%xmm8
    1699:	f3 44 0f 58 14 07    	addss  (%rdi,%rax,1),%xmm10
    169f:	f3 44 0f 58 d0       	addss  %xmm0,%xmm10
    16a4:	f3 44 0f 58 2c 06    	addss  (%rsi,%rax,1),%xmm13
    16aa:	f3 44 0f 58 e8       	addss  %xmm0,%xmm13
    16af:	f3 0f 58 14 01       	addss  (%rcx,%rax,1),%xmm2
    16b4:	f3 0f 58 d0          	addss  %xmm0,%xmm2
    16b8:	48 8b 54 24 90       	mov    -0x70(%rsp),%rdx
    16bd:	f3 0f 58 1c 02       	addss  (%rdx,%rax,1),%xmm3
    16c2:	f3 0f 58 d8          	addss  %xmm0,%xmm3
    16c6:	48 83 c0 04          	add    $0x4,%rax
    16ca:	48 3d 00 04 00 00    	cmp    $0x400,%rax
    16d0:	0f 85 4e ff ff ff    	jne    1624 <MVM_default+0x16c>
    16d6:	48 8b 44 24 a8       	mov    -0x58(%rsp),%rax
    16db:	f3 44 0f 11 30       	movss  %xmm14,(%rax)
    16e0:	48 8b 05 39 29 00 00 	mov    0x2939(%rip),%rax        # 4020 <Z>
    16e7:	48 8b 74 24 b0       	mov    -0x50(%rsp),%rsi
    16ec:	f3 44 0f 11 2c 30    	movss  %xmm13,(%rax,%rsi,1)
    16f2:	48 8b 05 27 29 00 00 	mov    0x2927(%rip),%rax        # 4020 <Z>
    16f9:	48 8b 74 24 b8       	mov    -0x48(%rsp),%rsi
    16fe:	f3 44 0f 11 24 30    	movss  %xmm12,(%rax,%rsi,1)
    1704:	48 8b 05 15 29 00 00 	mov    0x2915(%rip),%rax        # 4020 <Z>
    170b:	48 8b 7c 24 c0       	mov    -0x40(%rsp),%rdi
    1710:	f3 44 0f 11 1c 38    	movss  %xmm11,(%rax,%rdi,1)
    1716:	48 8b 05 03 29 00 00 	mov    0x2903(%rip),%rax        # 4020 <Z>
    171d:	48 8b 74 24 c8       	mov    -0x38(%rsp),%rsi
    1722:	f3 44 0f 11 14 30    	movss  %xmm10,(%rax,%rsi,1)
    1728:	48 8b 05 f1 28 00 00 	mov    0x28f1(%rip),%rax        # 4020 <Z>
    172f:	48 8b 7c 24 d0       	mov    -0x30(%rsp),%rdi
    1734:	f3 44 0f 11 0c 38    	movss  %xmm9,(%rax,%rdi,1)
    173a:	48 8b 05 df 28 00 00 	mov    0x28df(%rip),%rax        # 4020 <Z>
    1741:	48 8b 74 24 d8       	mov    -0x28(%rsp),%rsi
    1746:	f3 44 0f 11 04 30    	movss  %xmm8,(%rax,%rsi,1)
    174c:	48 8b 05 cd 28 00 00 	mov    0x28cd(%rip),%rax        # 4020 <Z>
    1753:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
    1758:	f3 0f 11 3c 38       	movss  %xmm7,(%rax,%rdi,1)
    175d:	48 8b 05 bc 28 00 00 	mov    0x28bc(%rip),%rax        # 4020 <Z>
    1764:	48 8b 4c 24 e0       	mov    -0x20(%rsp),%rcx
    1769:	f3 0f 11 34 08       	movss  %xmm6,(%rax,%rcx,1)
    176e:	48 8b 05 ab 28 00 00 	mov    0x28ab(%rip),%rax        # 4020 <Z>
    1775:	48 8b 74 24 e8       	mov    -0x18(%rsp),%rsi
    177a:	f3 0f 11 2c 30       	movss  %xmm5,(%rax,%rsi,1)
    177f:	48 8b 05 9a 28 00 00 	mov    0x289a(%rip),%rax        # 4020 <Z>
    1786:	48 8b 7c 24 f0       	mov    -0x10(%rsp),%rdi
    178b:	f3 0f 11 1c 38       	movss  %xmm3,(%rax,%rdi,1)
    1790:	48 8b 05 89 28 00 00 	mov    0x2889(%rip),%rax        # 4020 <Z>
    1797:	48 8b 4c 24 f8       	mov    -0x8(%rsp),%rcx
    179c:	f3 0f 11 24 08       	movss  %xmm4,(%rax,%rcx,1)
    17a1:	48 8b 05 78 28 00 00 	mov    0x2878(%rip),%rax        # 4020 <Z>
    17a8:	48 8b 34 24          	mov    (%rsp),%rsi
    17ac:	f3 0f 11 14 30       	movss  %xmm2,(%rax,%rsi,1)
    17b1:	48 8b 05 68 28 00 00 	mov    0x2868(%rip),%rax        # 4020 <Z>
    17b8:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
    17bd:	f3 0f 11 0c 38       	movss  %xmm1,(%rax,%rdi,1)
    17c2:	48 83 44 24 98 38    	addq   $0x38,-0x68(%rsp)
    17c8:	48 8b 44 24 98       	mov    -0x68(%rsp),%rax
    17cd:	48 83 44 24 a0 70    	addq   $0x70,-0x60(%rsp)
    17d3:	48 3d 00 04 00 00    	cmp    $0x400,%rax
    17d9:	0f 85 fd fc ff ff    	jne    14dc <MVM_default+0x24>
    17df:	be f0 03 00 00       	mov    $0x3f0,%esi
    17e4:	48 89 f7             	mov    %rsi,%rdi
    17e7:	48 03 3d 32 28 00 00 	add    0x2832(%rip),%rdi        # 4020 <Z>
    17ee:	f3 0f 10 07          	movss  (%rdi),%xmm0
    17f2:	48 8b 05 2f 28 00 00 	mov    0x282f(%rip),%rax        # 4028 <Y>
    17f9:	48 8b 0c 70          	mov    (%rax,%rsi,2),%rcx
    17fd:	48 8b 15 2c 28 00 00 	mov    0x282c(%rip),%rdx        # 4030 <X>
    1804:	b8 00 00 00 00       	mov    $0x0,%eax
    1809:	f3 0f 58 04 01       	addss  (%rcx,%rax,1),%xmm0
    180e:	f3 0f 58 04 02       	addss  (%rdx,%rax,1),%xmm0
    1813:	48 83 c0 04          	add    $0x4,%rax
    1817:	48 3d 00 04 00 00    	cmp    $0x400,%rax
    181d:	75 ea                	jne    1809 <MVM_default+0x351>
    181f:	f3 0f 11 07          	movss  %xmm0,(%rdi)
    1823:	48 83 c6 04          	add    $0x4,%rsi
    1827:	48 81 fe 00 04 00 00 	cmp    $0x400,%rsi
    182e:	75 b4                	jne    17e4 <MVM_default+0x32c>
    1830:	48 83 c4 18          	add    $0x18,%rsp
    1834:	5b                   	pop    %rbx
    1835:	5d                   	pop    %rbp
    1836:	41 5c                	pop    %r12
    1838:	41 5d                	pop    %r13
    183a:	41 5e                	pop    %r14
    183c:	41 5f                	pop    %r15
    183e:	c3                   	ret    

000000000000183f <main>:
    183f:	f3 0f 1e fa          	endbr64 
    1843:	53                   	push   %rbx
    1844:	48 81 ec 90 01 00 00 	sub    $0x190,%rsp
    184b:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1852:	00 00 
    1854:	48 89 84 24 88 01 00 	mov    %rax,0x188(%rsp)
    185b:	00 
    185c:	31 c0                	xor    %eax,%eax
    185e:	48 8d b4 24 00 01 00 	lea    0x100(%rsp),%rsi
    1865:	00 
    1866:	48 8d 94 24 08 01 00 	lea    0x108(%rsp),%rdx
    186d:	00 
    186e:	b9 0f 00 00 00       	mov    $0xf,%ecx
    1873:	48 89 d7             	mov    %rdx,%rdi
    1876:	f3 48 ab             	rep stos %rax,%es:(%rdi)
    1879:	48 c7 84 24 00 01 00 	movq   $0x1,0x100(%rsp)
    1880:	00 01 00 00 00 
    1885:	48 89 f2             	mov    %rsi,%rdx
    1888:	be 80 00 00 00       	mov    $0x80,%esi
    188d:	bf 00 00 00 00       	mov    $0x0,%edi
    1892:	e8 39 f8 ff ff       	call   10d0 <sched_setaffinity@plt>
    1897:	83 f8 ff             	cmp    $0xffffffff,%eax
    189a:	0f 84 40 02 00 00    	je     1ae0 <main+0x2a1>
    18a0:	b8 00 00 00 00       	mov    $0x0,%eax
    18a5:	e8 3f f9 ff ff       	call   11e9 <initialization_MVM>
    18aa:	48 c7 44 24 40 04 00 	movq   $0x43540004,0x40(%rsp)
    18b1:	54 43 
    18b3:	48 c7 44 24 48 00 00 	movq   $0x0,0x48(%rsp)
    18ba:	00 00 
    18bc:	48 c7 44 24 50 00 00 	movq   $0x0,0x50(%rsp)
    18c3:	00 00 
    18c5:	48 c7 44 24 58 00 00 	movq   $0x0,0x58(%rsp)
    18cc:	00 00 
    18ce:	48 c7 44 24 60 00 00 	movq   $0x0,0x60(%rsp)
    18d5:	00 00 
    18d7:	48 c7 44 24 68 00 00 	movq   $0x0,0x68(%rsp)
    18de:	00 00 
    18e0:	48 8d 44 24 40       	lea    0x40(%rsp),%rax
    18e5:	bb 00 00 00 00       	mov    $0x0,%ebx
    18ea:	89 da                	mov    %ebx,%edx
    18ec:	48 c1 c7 03          	rol    $0x3,%rdi
    18f0:	48 c1 c7 0d          	rol    $0xd,%rdi
    18f4:	48 c1 c7 3d          	rol    $0x3d,%rdi
    18f8:	48 c1 c7 33          	rol    $0x33,%rdi
    18fc:	48 87 db             	xchg   %rbx,%rbx
    18ff:	48 89 14 24          	mov    %rdx,(%rsp)
    1903:	48 8b 04 24          	mov    (%rsp),%rax
    1907:	48 c7 44 24 70 02 00 	movq   $0x43540002,0x70(%rsp)
    190e:	54 43 
    1910:	48 c7 44 24 78 00 00 	movq   $0x0,0x78(%rsp)
    1917:	00 00 
    1919:	48 c7 84 24 80 00 00 	movq   $0x0,0x80(%rsp)
    1920:	00 00 00 00 00 
    1925:	48 c7 84 24 88 00 00 	movq   $0x0,0x88(%rsp)
    192c:	00 00 00 00 00 
    1931:	48 c7 84 24 90 00 00 	movq   $0x0,0x90(%rsp)
    1938:	00 00 00 00 00 
    193d:	48 c7 84 24 98 00 00 	movq   $0x0,0x98(%rsp)
    1944:	00 00 00 00 00 
    1949:	48 8d 44 24 70       	lea    0x70(%rsp),%rax
    194e:	89 da                	mov    %ebx,%edx
    1950:	48 c1 c7 03          	rol    $0x3,%rdi
    1954:	48 c1 c7 0d          	rol    $0xd,%rdi
    1958:	48 c1 c7 3d          	rol    $0x3d,%rdi
    195c:	48 c1 c7 33          	rol    $0x33,%rdi
    1960:	48 87 db             	xchg   %rbx,%rbx
    1963:	48 89 54 24 08       	mov    %rdx,0x8(%rsp)
    1968:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    196d:	48 8d 74 24 20       	lea    0x20(%rsp),%rsi
    1972:	bf 01 00 00 00       	mov    $0x1,%edi
    1977:	e8 34 f7 ff ff       	call   10b0 <clock_gettime@plt>
    197c:	b8 00 00 00 00       	mov    $0x0,%eax
    1981:	e8 32 fb ff ff       	call   14b8 <MVM_default>
    1986:	48 8d 74 24 30       	lea    0x30(%rsp),%rsi
    198b:	bf 01 00 00 00       	mov    $0x1,%edi
    1990:	e8 1b f7 ff ff       	call   10b0 <clock_gettime@plt>
    1995:	48 c7 84 24 a0 00 00 	movq   $0x43540002,0xa0(%rsp)
    199c:	00 02 00 54 43 
    19a1:	48 c7 84 24 a8 00 00 	movq   $0x0,0xa8(%rsp)
    19a8:	00 00 00 00 00 
    19ad:	48 c7 84 24 b0 00 00 	movq   $0x0,0xb0(%rsp)
    19b4:	00 00 00 00 00 
    19b9:	48 c7 84 24 b8 00 00 	movq   $0x0,0xb8(%rsp)
    19c0:	00 00 00 00 00 
    19c5:	48 c7 84 24 c0 00 00 	movq   $0x0,0xc0(%rsp)
    19cc:	00 00 00 00 00 
    19d1:	48 c7 84 24 c8 00 00 	movq   $0x0,0xc8(%rsp)
    19d8:	00 00 00 00 00 
    19dd:	48 8d 84 24 a0 00 00 	lea    0xa0(%rsp),%rax
    19e4:	00 
    19e5:	89 da                	mov    %ebx,%edx
    19e7:	48 c1 c7 03          	rol    $0x3,%rdi
    19eb:	48 c1 c7 0d          	rol    $0xd,%rdi
    19ef:	48 c1 c7 3d          	rol    $0x3d,%rdi
    19f3:	48 c1 c7 33          	rol    $0x33,%rdi
    19f7:	48 87 db             	xchg   %rbx,%rbx
    19fa:	48 89 54 24 10       	mov    %rdx,0x10(%rsp)
    19ff:	48 8b 44 24 10       	mov    0x10(%rsp),%rax
    1a04:	48 c7 84 24 d0 00 00 	movq   $0x43540005,0xd0(%rsp)
    1a0b:	00 05 00 54 43 
    1a10:	48 c7 84 24 d8 00 00 	movq   $0x0,0xd8(%rsp)
    1a17:	00 00 00 00 00 
    1a1c:	48 c7 84 24 e0 00 00 	movq   $0x0,0xe0(%rsp)
    1a23:	00 00 00 00 00 
    1a28:	48 c7 84 24 e8 00 00 	movq   $0x0,0xe8(%rsp)
    1a2f:	00 00 00 00 00 
    1a34:	48 c7 84 24 f0 00 00 	movq   $0x0,0xf0(%rsp)
    1a3b:	00 00 00 00 00 
    1a40:	48 c7 84 24 f8 00 00 	movq   $0x0,0xf8(%rsp)
    1a47:	00 00 00 00 00 
    1a4c:	48 8d 84 24 d0 00 00 	lea    0xd0(%rsp),%rax
    1a53:	00 
    1a54:	89 da                	mov    %ebx,%edx
    1a56:	48 c1 c7 03          	rol    $0x3,%rdi
    1a5a:	48 c1 c7 0d          	rol    $0xd,%rdi
    1a5e:	48 c1 c7 3d          	rol    $0x3d,%rdi
    1a62:	48 c1 c7 33          	rol    $0x33,%rdi
    1a66:	48 87 db             	xchg   %rbx,%rbx
    1a69:	48 89 54 24 18       	mov    %rdx,0x18(%rsp)
    1a6e:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
    1a73:	b8 00 00 00 00       	mov    $0x0,%eax
    1a78:	e8 9d f9 ff ff       	call   141a <Compare_MVM>
    1a7d:	66 85 c0             	test   %ax,%ax
    1a80:	75 6f                	jne    1af1 <main+0x2b2>
    1a82:	48 8d 3d b2 05 00 00 	lea    0x5b2(%rip),%rdi        # 203b <_IO_stdin_used+0x3b>
    1a89:	e8 12 f6 ff ff       	call   10a0 <puts@plt>
    1a8e:	48 8b 54 24 30       	mov    0x30(%rsp),%rdx
    1a93:	48 2b 54 24 20       	sub    0x20(%rsp),%rdx
    1a98:	48 69 d2 00 ca 9a 3b 	imul   $0x3b9aca00,%rdx,%rdx
    1a9f:	48 03 54 24 38       	add    0x38(%rsp),%rdx
    1aa4:	48 2b 54 24 28       	sub    0x28(%rsp),%rdx
    1aa9:	48 8d 35 ad 05 00 00 	lea    0x5ad(%rip),%rsi        # 205d <_IO_stdin_used+0x5d>
    1ab0:	bf 01 00 00 00       	mov    $0x1,%edi
    1ab5:	b8 00 00 00 00       	mov    $0x0,%eax
    1aba:	e8 21 f6 ff ff       	call   10e0 <__printf_chk@plt>
    1abf:	48 8b 84 24 88 01 00 	mov    0x188(%rsp),%rax
    1ac6:	00 
    1ac7:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    1ace:	00 00 
    1ad0:	75 2d                	jne    1aff <main+0x2c0>
    1ad2:	b8 00 00 00 00       	mov    $0x0,%eax
    1ad7:	48 81 c4 90 01 00 00 	add    $0x190,%rsp
    1ade:	5b                   	pop    %rbx
    1adf:	c3                   	ret    
    1ae0:	48 8d 3d 21 05 00 00 	lea    0x521(%rip),%rdi        # 2008 <_IO_stdin_used+0x8>
    1ae7:	e8 b4 f5 ff ff       	call   10a0 <puts@plt>
    1aec:	e9 af fd ff ff       	jmp    18a0 <main+0x61>
    1af1:	48 8d 3d 53 05 00 00 	lea    0x553(%rip),%rdi        # 204b <_IO_stdin_used+0x4b>
    1af8:	e8 a3 f5 ff ff       	call   10a0 <puts@plt>
    1afd:	eb 8f                	jmp    1a8e <main+0x24f>
    1aff:	e8 bc f5 ff ff       	call   10c0 <__stack_chk_fail@plt>

Disassembly of section .fini:

0000000000001b04 <_fini>:
    1b04:	f3 0f 1e fa          	endbr64 
    1b08:	48 83 ec 08          	sub    $0x8,%rsp
    1b0c:	48 83 c4 08          	add    $0x8,%rsp
    1b10:	c3                   	ret    
