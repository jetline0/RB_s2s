
grad_desc/alg1_sr1:     file format elf64-x86-64


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

00000000000010a0 <free@plt>:
    10a0:	f3 0f 1e fa          	endbr64 
    10a4:	f2 ff 25 fd 2e 00 00 	bnd jmp *0x2efd(%rip)        # 3fa8 <free@GLIBC_2.2.5>
    10ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000010b0 <puts@plt>:
    10b0:	f3 0f 1e fa          	endbr64 
    10b4:	f2 ff 25 f5 2e 00 00 	bnd jmp *0x2ef5(%rip)        # 3fb0 <puts@GLIBC_2.2.5>
    10bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000010c0 <clock_gettime@plt>:
    10c0:	f3 0f 1e fa          	endbr64 
    10c4:	f2 ff 25 ed 2e 00 00 	bnd jmp *0x2eed(%rip)        # 3fb8 <clock_gettime@GLIBC_2.17>
    10cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000010d0 <__stack_chk_fail@plt>:
    10d0:	f3 0f 1e fa          	endbr64 
    10d4:	f2 ff 25 e5 2e 00 00 	bnd jmp *0x2ee5(%rip)        # 3fc0 <__stack_chk_fail@GLIBC_2.4>
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
    1118:	48 8d 3d a8 09 00 00 	lea    0x9a8(%rip),%rdi        # 1ac7 <main>
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

00000000000011e9 <gradient_descent_init>:
    11e9:	f3 0f 1e fa          	endbr64 
    11ed:	41 57                	push   %r15
    11ef:	41 56                	push   %r14
    11f1:	41 55                	push   %r13
    11f3:	41 54                	push   %r12
    11f5:	55                   	push   %rbp
    11f6:	53                   	push   %rbx
    11f7:	48 83 ec 78          	sub    $0x78,%rsp
    11fb:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1202:	00 00 
    1204:	48 89 44 24 68       	mov    %rax,0x68(%rsp)
    1209:	31 c0                	xor    %eax,%eax
    120b:	48 8d 7c 24 20       	lea    0x20(%rsp),%rdi
    1210:	ba a0 01 00 00       	mov    $0x1a0,%edx
    1215:	be 40 00 00 00       	mov    $0x40,%esi
    121a:	e8 d1 fe ff ff       	call   10f0 <posix_memalign@plt>
    121f:	85 c0                	test   %eax,%eax
    1221:	b8 00 00 00 00       	mov    $0x0,%eax
    1226:	48 0f 44 44 24 20    	cmove  0x20(%rsp),%rax
    122c:	48 89 05 fd 2d 00 00 	mov    %rax,0x2dfd(%rip)        # 4030 <in>
    1233:	48 8d 7c 24 18       	lea    0x18(%rsp),%rdi
    1238:	ba a0 01 00 00       	mov    $0x1a0,%edx
    123d:	be 40 00 00 00       	mov    $0x40,%esi
    1242:	e8 a9 fe ff ff       	call   10f0 <posix_memalign@plt>
    1247:	85 c0                	test   %eax,%eax
    1249:	b8 00 00 00 00       	mov    $0x0,%eax
    124e:	48 0f 44 44 24 18    	cmove  0x18(%rsp),%rax
    1254:	48 89 05 c5 2d 00 00 	mov    %rax,0x2dc5(%rip)        # 4020 <test>
    125b:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
    1260:	ba a0 01 00 00       	mov    $0x1a0,%edx
    1265:	be 40 00 00 00       	mov    $0x40,%esi
    126a:	e8 81 fe ff ff       	call   10f0 <posix_memalign@plt>
    126f:	85 c0                	test   %eax,%eax
    1271:	b8 00 00 00 00       	mov    $0x0,%eax
    1276:	48 0f 44 44 24 10    	cmove  0x10(%rsp),%rax
    127c:	48 89 05 a5 2d 00 00 	mov    %rax,0x2da5(%rip)        # 4028 <out>
    1283:	bd 00 00 00 00       	mov    $0x0,%ebp
    1288:	48 8d 44 24 38       	lea    0x38(%rsp),%rax
    128d:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    1292:	41 bc 00 00 00 00    	mov    $0x0,%r12d
    1298:	eb 11                	jmp    12ab <gradient_descent_init+0xc2>
    129a:	48 83 c5 08          	add    $0x8,%rbp
    129e:	48 81 fd a0 01 00 00 	cmp    $0x1a0,%rbp
    12a5:	0f 84 d8 01 00 00    	je     1483 <gradient_descent_init+0x29a>
    12ab:	48 89 eb             	mov    %rbp,%rbx
    12ae:	48 03 1d 7b 2d 00 00 	add    0x2d7b(%rip),%rbx        # 4030 <in>
    12b5:	ba a0 01 00 00       	mov    $0x1a0,%edx
    12ba:	be 40 00 00 00       	mov    $0x40,%esi
    12bf:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
    12c4:	e8 27 fe ff ff       	call   10f0 <posix_memalign@plt>
    12c9:	85 c0                	test   %eax,%eax
    12cb:	4c 89 e0             	mov    %r12,%rax
    12ce:	48 0f 44 44 24 38    	cmove  0x38(%rsp),%rax
    12d4:	48 89 03             	mov    %rax,(%rbx)
    12d7:	48 89 eb             	mov    %rbp,%rbx
    12da:	48 03 1d 3f 2d 00 00 	add    0x2d3f(%rip),%rbx        # 4020 <test>
    12e1:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
    12e6:	ba a0 01 00 00       	mov    $0x1a0,%edx
    12eb:	be 40 00 00 00       	mov    $0x40,%esi
    12f0:	e8 fb fd ff ff       	call   10f0 <posix_memalign@plt>
    12f5:	85 c0                	test   %eax,%eax
    12f7:	4c 89 e0             	mov    %r12,%rax
    12fa:	48 0f 44 44 24 30    	cmove  0x30(%rsp),%rax
    1300:	48 89 03             	mov    %rax,(%rbx)
    1303:	48 89 eb             	mov    %rbp,%rbx
    1306:	48 03 1d 1b 2d 00 00 	add    0x2d1b(%rip),%rbx        # 4028 <out>
    130d:	48 8d 7c 24 28       	lea    0x28(%rsp),%rdi
    1312:	ba a0 01 00 00       	mov    $0x1a0,%edx
    1317:	be 40 00 00 00       	mov    $0x40,%esi
    131c:	e8 cf fd ff ff       	call   10f0 <posix_memalign@plt>
    1321:	85 c0                	test   %eax,%eax
    1323:	4c 89 e0             	mov    %r12,%rax
    1326:	48 0f 44 44 24 28    	cmove  0x28(%rsp),%rax
    132c:	48 89 03             	mov    %rax,(%rbx)
    132f:	bb 00 00 00 00       	mov    $0x0,%ebx
    1334:	4c 8d 7c 24 50       	lea    0x50(%rsp),%r15
    1339:	4c 8d 74 24 48       	lea    0x48(%rsp),%r14
    133e:	48 8b 05 eb 2c 00 00 	mov    0x2ceb(%rip),%rax        # 4030 <in>
    1345:	49 89 dd             	mov    %rbx,%r13
    1348:	4c 03 2c 28          	add    (%rax,%rbp,1),%r13
    134c:	ba 00 04 00 00       	mov    $0x400,%edx
    1351:	be 40 00 00 00       	mov    $0x40,%esi
    1356:	4c 89 ff             	mov    %r15,%rdi
    1359:	e8 92 fd ff ff       	call   10f0 <posix_memalign@plt>
    135e:	85 c0                	test   %eax,%eax
    1360:	4c 89 e0             	mov    %r12,%rax
    1363:	48 0f 44 44 24 50    	cmove  0x50(%rsp),%rax
    1369:	49 89 45 00          	mov    %rax,0x0(%r13)
    136d:	48 8b 05 ac 2c 00 00 	mov    0x2cac(%rip),%rax        # 4020 <test>
    1374:	49 89 dd             	mov    %rbx,%r13
    1377:	4c 03 2c 28          	add    (%rax,%rbp,1),%r13
    137b:	ba 00 04 00 00       	mov    $0x400,%edx
    1380:	be 40 00 00 00       	mov    $0x40,%esi
    1385:	4c 89 f7             	mov    %r14,%rdi
    1388:	e8 63 fd ff ff       	call   10f0 <posix_memalign@plt>
    138d:	85 c0                	test   %eax,%eax
    138f:	4c 89 e0             	mov    %r12,%rax
    1392:	48 0f 44 44 24 48    	cmove  0x48(%rsp),%rax
    1398:	49 89 45 00          	mov    %rax,0x0(%r13)
    139c:	48 8b 05 85 2c 00 00 	mov    0x2c85(%rip),%rax        # 4028 <out>
    13a3:	49 89 dd             	mov    %rbx,%r13
    13a6:	4c 03 2c 28          	add    (%rax,%rbp,1),%r13
    13aa:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
    13af:	ba 00 02 00 00       	mov    $0x200,%edx
    13b4:	be 40 00 00 00       	mov    $0x40,%esi
    13b9:	e8 32 fd ff ff       	call   10f0 <posix_memalign@plt>
    13be:	85 c0                	test   %eax,%eax
    13c0:	4c 89 e0             	mov    %r12,%rax
    13c3:	48 0f 44 44 24 40    	cmove  0x40(%rsp),%rax
    13c9:	49 89 45 00          	mov    %rax,0x0(%r13)
    13cd:	b8 00 00 00 00       	mov    $0x0,%eax
    13d2:	48 8b 15 57 2c 00 00 	mov    0x2c57(%rip),%rdx        # 4030 <in>
    13d9:	48 8b 14 2a          	mov    (%rdx,%rbp,1),%rdx
    13dd:	48 8b 14 1a          	mov    (%rdx,%rbx,1),%rdx
    13e1:	c7 04 02 00 00 00 00 	movl   $0x0,(%rdx,%rax,1)
    13e8:	48 83 c0 04          	add    $0x4,%rax
    13ec:	48 3d 00 04 00 00    	cmp    $0x400,%rax
    13f2:	75 de                	jne    13d2 <gradient_descent_init+0x1e9>
    13f4:	b8 00 00 00 00       	mov    $0x0,%eax
    13f9:	48 8b 15 20 2c 00 00 	mov    0x2c20(%rip),%rdx        # 4020 <test>
    1400:	48 8b 14 2a          	mov    (%rdx,%rbp,1),%rdx
    1404:	48 8b 14 1a          	mov    (%rdx,%rbx,1),%rdx
    1408:	c7 04 02 00 00 00 00 	movl   $0x0,(%rdx,%rax,1)
    140f:	48 83 c0 04          	add    $0x4,%rax
    1413:	48 3d 00 04 00 00    	cmp    $0x400,%rax
    1419:	75 de                	jne    13f9 <gradient_descent_init+0x210>
    141b:	ba 00 00 00 00       	mov    $0x0,%edx
    1420:	48 8b 05 01 2c 00 00 	mov    0x2c01(%rip),%rax        # 4028 <out>
    1427:	48 8b 04 28          	mov    (%rax,%rbp,1),%rax
    142b:	48 8b 0c 18          	mov    (%rax,%rbx,1),%rcx
    142f:	48 63 c2             	movslq %edx,%rax
    1432:	48 69 c0 67 66 66 66 	imul   $0x66666667,%rax,%rax
    1439:	48 c1 f8 21          	sar    $0x21,%rax
    143d:	89 d6                	mov    %edx,%esi
    143f:	c1 fe 1f             	sar    $0x1f,%esi
    1442:	29 f0                	sub    %esi,%eax
    1444:	8d 34 80             	lea    (%rax,%rax,4),%esi
    1447:	89 d0                	mov    %edx,%eax
    1449:	29 f0                	sub    %esi,%eax
    144b:	66 0f ef c0          	pxor   %xmm0,%xmm0
    144f:	f3 0f 2a c0          	cvtsi2ss %eax,%xmm0
    1453:	f3 0f 58 05 e5 0b 00 	addss  0xbe5(%rip),%xmm0        # 2040 <_IO_stdin_used+0x40>
    145a:	00 
    145b:	f3 0f 11 04 91       	movss  %xmm0,(%rcx,%rdx,4)
    1460:	48 83 c2 01          	add    $0x1,%rdx
    1464:	48 81 fa 80 00 00 00 	cmp    $0x80,%rdx
    146b:	75 b3                	jne    1420 <gradient_descent_init+0x237>
    146d:	48 83 c3 08          	add    $0x8,%rbx
    1471:	48 81 fb a0 01 00 00 	cmp    $0x1a0,%rbx
    1478:	0f 85 c0 fe ff ff    	jne    133e <gradient_descent_init+0x155>
    147e:	e9 17 fe ff ff       	jmp    129a <gradient_descent_init+0xb1>
    1483:	48 8d 7c 24 58       	lea    0x58(%rsp),%rdi
    1488:	ba 00 04 00 00       	mov    $0x400,%edx
    148d:	be 40 00 00 00       	mov    $0x40,%esi
    1492:	e8 59 fc ff ff       	call   10f0 <posix_memalign@plt>
    1497:	85 c0                	test   %eax,%eax
    1499:	b8 00 00 00 00       	mov    $0x0,%eax
    149e:	48 0f 44 44 24 58    	cmove  0x58(%rsp),%rax
    14a4:	48 89 05 6d 2b 00 00 	mov    %rax,0x2b6d(%rip)        # 4018 <filter>
    14ab:	bb 00 00 00 00       	mov    $0x0,%ebx
    14b0:	48 89 dd             	mov    %rbx,%rbp
    14b3:	48 03 2d 5e 2b 00 00 	add    0x2b5e(%rip),%rbp        # 4018 <filter>
    14ba:	48 8d 7c 24 60       	lea    0x60(%rsp),%rdi
    14bf:	ba 00 04 00 00       	mov    $0x400,%edx
    14c4:	be 40 00 00 00       	mov    $0x40,%esi
    14c9:	e8 22 fc ff ff       	call   10f0 <posix_memalign@plt>
    14ce:	85 c0                	test   %eax,%eax
    14d0:	b8 00 00 00 00       	mov    $0x0,%eax
    14d5:	48 0f 44 44 24 60    	cmove  0x60(%rsp),%rax
    14db:	48 89 45 00          	mov    %rax,0x0(%rbp)
    14df:	ba 00 00 00 00       	mov    $0x0,%edx
    14e4:	48 8b 05 2d 2b 00 00 	mov    0x2b2d(%rip),%rax        # 4018 <filter>
    14eb:	48 8b 0c 18          	mov    (%rax,%rbx,1),%rcx
    14ef:	48 63 c2             	movslq %edx,%rax
    14f2:	48 69 c0 56 55 55 55 	imul   $0x55555556,%rax,%rax
    14f9:	48 c1 e8 20          	shr    $0x20,%rax
    14fd:	89 d6                	mov    %edx,%esi
    14ff:	c1 fe 1f             	sar    $0x1f,%esi
    1502:	29 f0                	sub    %esi,%eax
    1504:	8d 34 40             	lea    (%rax,%rax,2),%esi
    1507:	89 d0                	mov    %edx,%eax
    1509:	29 f0                	sub    %esi,%eax
    150b:	66 0f ef c0          	pxor   %xmm0,%xmm0
    150f:	f3 0f 2a c0          	cvtsi2ss %eax,%xmm0
    1513:	f3 0f 58 05 25 0b 00 	addss  0xb25(%rip),%xmm0        # 2040 <_IO_stdin_used+0x40>
    151a:	00 
    151b:	f3 0f 11 04 91       	movss  %xmm0,(%rcx,%rdx,4)
    1520:	48 83 c2 01          	add    $0x1,%rdx
    1524:	48 81 fa 00 01 00 00 	cmp    $0x100,%rdx
    152b:	75 b7                	jne    14e4 <gradient_descent_init+0x2fb>
    152d:	48 83 c3 08          	add    $0x8,%rbx
    1531:	48 81 fb 00 04 00 00 	cmp    $0x400,%rbx
    1538:	0f 85 72 ff ff ff    	jne    14b0 <gradient_descent_init+0x2c7>
    153e:	48 8b 44 24 68       	mov    0x68(%rsp),%rax
    1543:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    154a:	00 00 
    154c:	75 0f                	jne    155d <gradient_descent_init+0x374>
    154e:	48 83 c4 78          	add    $0x78,%rsp
    1552:	5b                   	pop    %rbx
    1553:	5d                   	pop    %rbp
    1554:	41 5c                	pop    %r12
    1556:	41 5d                	pop    %r13
    1558:	41 5e                	pop    %r14
    155a:	41 5f                	pop    %r15
    155c:	c3                   	ret    
    155d:	e8 6e fb ff ff       	call   10d0 <__stack_chk_fail@plt>

0000000000001562 <gradient_descent>:
    1562:	f3 0f 1e fa          	endbr64 
    1566:	41 57                	push   %r15
    1568:	41 56                	push   %r14
    156a:	41 55                	push   %r13
    156c:	41 54                	push   %r12
    156e:	55                   	push   %rbp
    156f:	53                   	push   %rbx
    1570:	41 bf 10 00 00 00    	mov    $0x10,%r15d
    1576:	e9 b5 03 00 00       	jmp    1930 <gradient_descent+0x3ce>
    157b:	48 8b 05 ae 2a 00 00 	mov    0x2aae(%rip),%rax        # 4030 <in>
    1582:	4a 8b 14 28          	mov    (%rax,%r13,1),%rdx
    1586:	4c 8b 14 2a          	mov    (%rdx,%rbp,1),%r10
    158a:	f3 41 0f 10 a2 fc 03 	movss  0x3fc(%r10),%xmm4
    1591:	00 00 
    1593:	4a 8b 14 38          	mov    (%rax,%r15,1),%rdx
    1597:	48 8b 14 2a          	mov    (%rdx,%rbp,1),%rdx
    159b:	f3 0f 10 9a fc 03 00 	movss  0x3fc(%rdx),%xmm3
    15a2:	00 
    15a3:	4a 8b 14 30          	mov    (%rax,%r14,1),%rdx
    15a7:	48 8b 14 2a          	mov    (%rdx,%rbp,1),%rdx
    15ab:	f3 0f 10 92 fc 03 00 	movss  0x3fc(%rdx),%xmm2
    15b2:	00 
    15b3:	4a 8b 04 20          	mov    (%rax,%r12,1),%rax
    15b7:	48 8b 04 28          	mov    (%rax,%rbp,1),%rax
    15bb:	f3 0f 10 88 fc 03 00 	movss  0x3fc(%rax),%xmm1
    15c2:	00 
    15c3:	4c 8b 0d 4e 2a 00 00 	mov    0x2a4e(%rip),%r9        # 4018 <filter>
    15ca:	48 8b 05 57 2a 00 00 	mov    0x2a57(%rip),%rax        # 4028 <out>
    15d1:	4a 8b 14 38          	mov    (%rax,%r15,1),%rdx
    15d5:	4c 8b 04 2a          	mov    (%rdx,%rbp,1),%r8
    15d9:	4a 8b 14 28          	mov    (%rax,%r13,1),%rdx
    15dd:	48 8b 3c 2a          	mov    (%rdx,%rbp,1),%rdi
    15e1:	4a 8b 14 20          	mov    (%rax,%r12,1),%rdx
    15e5:	48 8b 34 2a          	mov    (%rdx,%rbp,1),%rsi
    15e9:	4a 8b 04 30          	mov    (%rax,%r14,1),%rax
    15ed:	48 8b 0c 28          	mov    (%rax,%rbp,1),%rcx
    15f1:	b8 00 00 00 00       	mov    $0x0,%eax
    15f6:	49 8b 14 41          	mov    (%r9,%rax,2),%rdx
    15fa:	f3 0f 10 82 fc 03 00 	movss  0x3fc(%rdx),%xmm0
    1601:	00 
    1602:	0f 28 e8             	movaps %xmm0,%xmm5
    1605:	f3 41 0f 59 2c 00    	mulss  (%r8,%rax,1),%xmm5
    160b:	f3 0f 58 dd          	addss  %xmm5,%xmm3
    160f:	0f 28 e8             	movaps %xmm0,%xmm5
    1612:	f3 0f 59 2c 07       	mulss  (%rdi,%rax,1),%xmm5
    1617:	f3 0f 58 e5          	addss  %xmm5,%xmm4
    161b:	0f 28 e8             	movaps %xmm0,%xmm5
    161e:	f3 0f 59 2c 06       	mulss  (%rsi,%rax,1),%xmm5
    1623:	f3 0f 58 cd          	addss  %xmm5,%xmm1
    1627:	f3 0f 59 04 01       	mulss  (%rcx,%rax,1),%xmm0
    162c:	f3 0f 58 d0          	addss  %xmm0,%xmm2
    1630:	48 83 c0 04          	add    $0x4,%rax
    1634:	48 3d 00 02 00 00    	cmp    $0x200,%rax
    163a:	75 ba                	jne    15f6 <gradient_descent+0x94>
    163c:	f3 41 0f 11 a2 fc 03 	movss  %xmm4,0x3fc(%r10)
    1643:	00 00 
    1645:	48 8b 05 e4 29 00 00 	mov    0x29e4(%rip),%rax        # 4030 <in>
    164c:	4a 8b 14 38          	mov    (%rax,%r15,1),%rdx
    1650:	48 8b 14 2a          	mov    (%rdx,%rbp,1),%rdx
    1654:	f3 0f 11 9a fc 03 00 	movss  %xmm3,0x3fc(%rdx)
    165b:	00 
    165c:	4a 8b 14 30          	mov    (%rax,%r14,1),%rdx
    1660:	48 8b 14 2a          	mov    (%rdx,%rbp,1),%rdx
    1664:	f3 0f 11 92 fc 03 00 	movss  %xmm2,0x3fc(%rdx)
    166b:	00 
    166c:	4a 8b 04 20          	mov    (%rax,%r12,1),%rax
    1670:	48 8b 04 28          	mov    (%rax,%rbp,1),%rax
    1674:	f3 0f 11 88 fc 03 00 	movss  %xmm1,0x3fc(%rax)
    167b:	00 
    167c:	48 83 c5 08          	add    $0x8,%rbp
    1680:	48 81 fd a0 01 00 00 	cmp    $0x1a0,%rbp
    1687:	0f 84 96 02 00 00    	je     1923 <gradient_descent+0x3c1>
    168d:	b9 08 00 00 00       	mov    $0x8,%ecx
    1692:	48 8b 05 97 29 00 00 	mov    0x2997(%rip),%rax        # 4030 <in>
    1699:	4a 8b 14 30          	mov    (%rax,%r14,1),%rdx
    169d:	48 8b 14 2a          	mov    (%rdx,%rbp,1),%rdx
    16a1:	48 8d 1c 0a          	lea    (%rdx,%rcx,1),%rbx
    16a5:	48 89 5c 24 f8       	mov    %rbx,-0x8(%rsp)
    16aa:	f3 44 0f 10 33       	movss  (%rbx),%xmm14
    16af:	4a 8b 34 20          	mov    (%rax,%r12,1),%rsi
    16b3:	4c 8b 04 2e          	mov    (%rsi,%rbp,1),%r8
    16b7:	48 8d 71 fc          	lea    -0x4(%rcx),%rsi
    16bb:	f3 45 0f 10 6c 08 fc 	movss  -0x4(%r8,%rcx,1),%xmm13
    16c2:	4a 8b 3c 38          	mov    (%rax,%r15,1),%rdi
    16c6:	4c 8b 0c 2f          	mov    (%rdi,%rbp,1),%r9
    16ca:	48 8d 79 f8          	lea    -0x8(%rcx),%rdi
    16ce:	f3 45 0f 10 64 09 f8 	movss  -0x8(%r9,%rcx,1),%xmm12
    16d5:	f3 44 0f 10 5c 0a f8 	movss  -0x8(%rdx,%rcx,1),%xmm11
    16dc:	f3 45 0f 10 14 09    	movss  (%r9,%rcx,1),%xmm10
    16e2:	4a 8b 04 28          	mov    (%rax,%r13,1),%rax
    16e6:	48 8b 04 28          	mov    (%rax,%rbp,1),%rax
    16ea:	f3 44 0f 10 0c 08    	movss  (%rax,%rcx,1),%xmm9
    16f0:	f3 45 0f 10 44 09 fc 	movss  -0x4(%r9,%rcx,1),%xmm8
    16f7:	f3 41 0f 10 3c 08    	movss  (%r8,%rcx,1),%xmm7
    16fd:	f3 41 0f 10 74 08 f8 	movss  -0x8(%r8,%rcx,1),%xmm6
    1704:	f3 0f 10 6c 08 f8    	movss  -0x8(%rax,%rcx,1),%xmm5
    170a:	f3 0f 10 64 0a fc    	movss  -0x4(%rdx,%rcx,1),%xmm4
    1710:	f3 0f 10 4c 08 fc    	movss  -0x4(%rax,%rcx,1),%xmm1
    1716:	f3 0f 11 4c 24 f4    	movss  %xmm1,-0xc(%rsp)
    171c:	48 8b 1d f5 28 00 00 	mov    0x28f5(%rip),%rbx        # 4018 <filter>
    1723:	48 8b 05 fe 28 00 00 	mov    0x28fe(%rip),%rax        # 4028 <out>
    172a:	4a 8b 14 38          	mov    (%rax,%r15,1),%rdx
    172e:	4c 8b 1c 2a          	mov    (%rdx,%rbp,1),%r11
    1732:	4a 8b 14 28          	mov    (%rax,%r13,1),%rdx
    1736:	4c 8b 14 2a          	mov    (%rdx,%rbp,1),%r10
    173a:	4a 8b 14 20          	mov    (%rax,%r12,1),%rdx
    173e:	4c 8b 0c 2a          	mov    (%rdx,%rbp,1),%r9
    1742:	4a 8b 04 30          	mov    (%rax,%r14,1),%rax
    1746:	4c 8b 04 28          	mov    (%rax,%rbp,1),%r8
    174a:	b8 00 00 00 00       	mov    $0x0,%eax
    174f:	48 8b 14 43          	mov    (%rbx,%rax,2),%rdx
    1753:	f3 0f 10 04 0a       	movss  (%rdx,%rcx,1),%xmm0
    1758:	f3 0f 10 1c 3a       	movss  (%rdx,%rdi,1),%xmm3
    175d:	f3 0f 10 0c 32       	movss  (%rdx,%rsi,1),%xmm1
    1762:	f3 41 0f 10 14 03    	movss  (%r11,%rax,1),%xmm2
    1768:	44 0f 28 fb          	movaps %xmm3,%xmm15
    176c:	f3 44 0f 59 fa       	mulss  %xmm2,%xmm15
    1771:	f3 45 0f 58 e7       	addss  %xmm15,%xmm12
    1776:	44 0f 28 f9          	movaps %xmm1,%xmm15
    177a:	f3 44 0f 59 fa       	mulss  %xmm2,%xmm15
    177f:	f3 45 0f 58 c7       	addss  %xmm15,%xmm8
    1784:	f3 0f 59 d0          	mulss  %xmm0,%xmm2
    1788:	f3 44 0f 58 d2       	addss  %xmm2,%xmm10
    178d:	f3 41 0f 10 14 02    	movss  (%r10,%rax,1),%xmm2
    1793:	44 0f 28 fb          	movaps %xmm3,%xmm15
    1797:	f3 44 0f 59 fa       	mulss  %xmm2,%xmm15
    179c:	f3 41 0f 58 ef       	addss  %xmm15,%xmm5
    17a1:	44 0f 28 f9          	movaps %xmm1,%xmm15
    17a5:	f3 44 0f 59 fa       	mulss  %xmm2,%xmm15
    17aa:	f3 44 0f 58 7c 24 f4 	addss  -0xc(%rsp),%xmm15
    17b1:	f3 44 0f 11 7c 24 f4 	movss  %xmm15,-0xc(%rsp)
    17b8:	f3 0f 59 d0          	mulss  %xmm0,%xmm2
    17bc:	f3 44 0f 58 ca       	addss  %xmm2,%xmm9
    17c1:	f3 41 0f 10 14 01    	movss  (%r9,%rax,1),%xmm2
    17c7:	44 0f 28 fb          	movaps %xmm3,%xmm15
    17cb:	f3 44 0f 59 fa       	mulss  %xmm2,%xmm15
    17d0:	f3 41 0f 58 f7       	addss  %xmm15,%xmm6
    17d5:	44 0f 28 f9          	movaps %xmm1,%xmm15
    17d9:	f3 44 0f 59 fa       	mulss  %xmm2,%xmm15
    17de:	f3 45 0f 58 ef       	addss  %xmm15,%xmm13
    17e3:	f3 0f 59 d0          	mulss  %xmm0,%xmm2
    17e7:	f3 0f 58 fa          	addss  %xmm2,%xmm7
    17eb:	f3 41 0f 10 14 00    	movss  (%r8,%rax,1),%xmm2
    17f1:	f3 0f 59 da          	mulss  %xmm2,%xmm3
    17f5:	f3 44 0f 58 db       	addss  %xmm3,%xmm11
    17fa:	f3 0f 59 ca          	mulss  %xmm2,%xmm1
    17fe:	f3 0f 58 e1          	addss  %xmm1,%xmm4
    1802:	f3 0f 59 c2          	mulss  %xmm2,%xmm0
    1806:	f3 44 0f 58 f0       	addss  %xmm0,%xmm14
    180b:	48 83 c0 04          	add    $0x4,%rax
    180f:	48 3d 00 02 00 00    	cmp    $0x200,%rax
    1815:	0f 85 34 ff ff ff    	jne    174f <gradient_descent+0x1ed>
    181b:	48 8b 44 24 f8       	mov    -0x8(%rsp),%rax
    1820:	f3 44 0f 11 30       	movss  %xmm14,(%rax)
    1825:	48 8b 05 04 28 00 00 	mov    0x2804(%rip),%rax        # 4030 <in>
    182c:	4a 8b 04 20          	mov    (%rax,%r12,1),%rax
    1830:	48 8b 04 28          	mov    (%rax,%rbp,1),%rax
    1834:	f3 44 0f 11 2c 30    	movss  %xmm13,(%rax,%rsi,1)
    183a:	48 8b 05 ef 27 00 00 	mov    0x27ef(%rip),%rax        # 4030 <in>
    1841:	4a 8b 04 38          	mov    (%rax,%r15,1),%rax
    1845:	48 8b 04 28          	mov    (%rax,%rbp,1),%rax
    1849:	f3 44 0f 11 24 38    	movss  %xmm12,(%rax,%rdi,1)
    184f:	48 8b 05 da 27 00 00 	mov    0x27da(%rip),%rax        # 4030 <in>
    1856:	4a 8b 04 30          	mov    (%rax,%r14,1),%rax
    185a:	48 8b 04 28          	mov    (%rax,%rbp,1),%rax
    185e:	f3 44 0f 11 1c 38    	movss  %xmm11,(%rax,%rdi,1)
    1864:	48 8b 05 c5 27 00 00 	mov    0x27c5(%rip),%rax        # 4030 <in>
    186b:	4a 8b 04 38          	mov    (%rax,%r15,1),%rax
    186f:	48 8b 04 28          	mov    (%rax,%rbp,1),%rax
    1873:	f3 44 0f 11 14 08    	movss  %xmm10,(%rax,%rcx,1)
    1879:	48 8b 05 b0 27 00 00 	mov    0x27b0(%rip),%rax        # 4030 <in>
    1880:	4a 8b 04 28          	mov    (%rax,%r13,1),%rax
    1884:	48 8b 04 28          	mov    (%rax,%rbp,1),%rax
    1888:	f3 44 0f 11 0c 08    	movss  %xmm9,(%rax,%rcx,1)
    188e:	48 8b 05 9b 27 00 00 	mov    0x279b(%rip),%rax        # 4030 <in>
    1895:	4a 8b 04 38          	mov    (%rax,%r15,1),%rax
    1899:	48 8b 04 28          	mov    (%rax,%rbp,1),%rax
    189d:	f3 44 0f 11 04 30    	movss  %xmm8,(%rax,%rsi,1)
    18a3:	48 8b 05 86 27 00 00 	mov    0x2786(%rip),%rax        # 4030 <in>
    18aa:	4a 8b 04 20          	mov    (%rax,%r12,1),%rax
    18ae:	48 8b 04 28          	mov    (%rax,%rbp,1),%rax
    18b2:	f3 0f 11 3c 08       	movss  %xmm7,(%rax,%rcx,1)
    18b7:	48 8b 05 72 27 00 00 	mov    0x2772(%rip),%rax        # 4030 <in>
    18be:	4a 8b 04 20          	mov    (%rax,%r12,1),%rax
    18c2:	48 8b 04 28          	mov    (%rax,%rbp,1),%rax
    18c6:	f3 0f 11 34 38       	movss  %xmm6,(%rax,%rdi,1)
    18cb:	48 8b 05 5e 27 00 00 	mov    0x275e(%rip),%rax        # 4030 <in>
    18d2:	4a 8b 04 28          	mov    (%rax,%r13,1),%rax
    18d6:	48 8b 04 28          	mov    (%rax,%rbp,1),%rax
    18da:	f3 0f 11 2c 38       	movss  %xmm5,(%rax,%rdi,1)
    18df:	48 8b 05 4a 27 00 00 	mov    0x274a(%rip),%rax        # 4030 <in>
    18e6:	4a 8b 04 30          	mov    (%rax,%r14,1),%rax
    18ea:	48 8b 04 28          	mov    (%rax,%rbp,1),%rax
    18ee:	f3 0f 11 24 30       	movss  %xmm4,(%rax,%rsi,1)
    18f3:	48 8b 05 36 27 00 00 	mov    0x2736(%rip),%rax        # 4030 <in>
    18fa:	4a 8b 04 28          	mov    (%rax,%r13,1),%rax
    18fe:	48 8b 04 28          	mov    (%rax,%rbp,1),%rax
    1902:	f3 0f 10 74 24 f4    	movss  -0xc(%rsp),%xmm6
    1908:	f3 0f 11 34 30       	movss  %xmm6,(%rax,%rsi,1)
    190d:	48 83 c1 0c          	add    $0xc,%rcx
    1911:	48 81 f9 04 04 00 00 	cmp    $0x404,%rcx
    1918:	0f 85 74 fd ff ff    	jne    1692 <gradient_descent+0x130>
    191e:	e9 58 fc ff ff       	jmp    157b <gradient_descent+0x19>
    1923:	49 83 c7 20          	add    $0x20,%r15
    1927:	49 81 ff b0 01 00 00 	cmp    $0x1b0,%r15
    192e:	74 16                	je     1946 <gradient_descent+0x3e4>
    1930:	4d 8d 77 f8          	lea    -0x8(%r15),%r14
    1934:	4d 8d 67 f0          	lea    -0x10(%r15),%r12
    1938:	4d 8d 6f 08          	lea    0x8(%r15),%r13
    193c:	bd 00 00 00 00       	mov    $0x0,%ebp
    1941:	e9 47 fd ff ff       	jmp    168d <gradient_descent+0x12b>
    1946:	5b                   	pop    %rbx
    1947:	5d                   	pop    %rbp
    1948:	41 5c                	pop    %r12
    194a:	41 5d                	pop    %r13
    194c:	41 5e                	pop    %r14
    194e:	41 5f                	pop    %r15
    1950:	c3                   	ret    

0000000000001951 <equal>:
    1951:	f3 0f 1e fa          	endbr64 
    1955:	0f 28 d0             	movaps %xmm0,%xmm2
    1958:	f3 0f 5c d1          	subss  %xmm1,%xmm2
    195c:	f3 0f 10 1d ec 06 00 	movss  0x6ec(%rip),%xmm3        # 2050 <_IO_stdin_used+0x50>
    1963:	00 
    1964:	0f 54 d3             	andps  %xmm3,%xmm2
    1967:	66 0f ef c9          	pxor   %xmm1,%xmm1
    196b:	f3 0f 5a ca          	cvtss2sd %xmm2,%xmm1
    196f:	0f 54 c3             	andps  %xmm3,%xmm0
    1972:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
    1976:	f2 0f 5e c8          	divsd  %xmm0,%xmm1
    197a:	f2 0f 10 05 de 06 00 	movsd  0x6de(%rip),%xmm0        # 2060 <_IO_stdin_used+0x60>
    1981:	00 
    1982:	66 0f 2f c1          	comisd %xmm1,%xmm0
    1986:	0f 96 c0             	setbe  %al
    1989:	0f b6 c0             	movzbl %al,%eax
    198c:	c3                   	ret    

000000000000198d <Compare_gradient_descent>:
    198d:	f3 0f 1e fa          	endbr64 
    1991:	41 57                	push   %r15
    1993:	41 56                	push   %r14
    1995:	41 55                	push   %r13
    1997:	41 54                	push   %r12
    1999:	55                   	push   %rbp
    199a:	53                   	push   %rbx
    199b:	48 83 ec 18          	sub    $0x18,%rsp
    199f:	be 00 00 00 00       	mov    $0x0,%esi
    19a4:	bf 00 00 00 00       	mov    $0x0,%edi
    19a9:	b9 00 00 00 00       	mov    $0x0,%ecx
    19ae:	b8 00 00 00 00       	mov    $0x0,%eax
    19b3:	48 8b 15 66 26 00 00 	mov    0x2666(%rip),%rdx        # 4020 <test>
    19ba:	48 8b 14 32          	mov    (%rdx,%rsi,1),%rdx
    19be:	48 89 cb             	mov    %rcx,%rbx
    19c1:	48 03 1c 3a          	add    (%rdx,%rdi,1),%rbx
    19c5:	4c 8b 05 5c 26 00 00 	mov    0x265c(%rip),%r8        # 4028 <out>
    19cc:	4d 8b 04 30          	mov    (%r8,%rsi,1),%r8
    19d0:	4d 8b 0c 38          	mov    (%r8,%rdi,1),%r9
    19d4:	4c 8b 05 3d 26 00 00 	mov    0x263d(%rip),%r8        # 4018 <filter>
    19db:	4d 8b 04 40          	mov    (%r8,%rax,2),%r8
    19df:	f3 41 0f 10 04 01    	movss  (%r9,%rax,1),%xmm0
    19e5:	f3 41 0f 59 04 08    	mulss  (%r8,%rcx,1),%xmm0
    19eb:	f3 0f 58 03          	addss  (%rbx),%xmm0
    19ef:	f3 0f 11 03          	movss  %xmm0,(%rbx)
    19f3:	48 83 c0 04          	add    $0x4,%rax
    19f7:	48 3d 00 02 00 00    	cmp    $0x200,%rax
    19fd:	75 b4                	jne    19b3 <Compare_gradient_descent+0x26>
    19ff:	48 83 c1 04          	add    $0x4,%rcx
    1a03:	48 81 f9 00 04 00 00 	cmp    $0x400,%rcx
    1a0a:	75 a2                	jne    19ae <Compare_gradient_descent+0x21>
    1a0c:	48 83 c7 08          	add    $0x8,%rdi
    1a10:	48 81 ff a0 01 00 00 	cmp    $0x1a0,%rdi
    1a17:	75 90                	jne    19a9 <Compare_gradient_descent+0x1c>
    1a19:	48 83 c6 08          	add    $0x8,%rsi
    1a1d:	48 81 fe a0 01 00 00 	cmp    $0x1a0,%rsi
    1a24:	0f 85 7a ff ff ff    	jne    19a4 <Compare_gradient_descent+0x17>
    1a2a:	48 8b 05 ef 25 00 00 	mov    0x25ef(%rip),%rax        # 4020 <test>
    1a31:	48 89 04 24          	mov    %rax,(%rsp)
    1a35:	48 8b 05 f4 25 00 00 	mov    0x25f4(%rip),%rax        # 4030 <in>
    1a3c:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    1a41:	bb 00 00 00 00       	mov    $0x0,%ebx
    1a46:	48 8b 04 24          	mov    (%rsp),%rax
    1a4a:	4c 8b 2c 18          	mov    (%rax,%rbx,1),%r13
    1a4e:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    1a53:	48 8b 04 18          	mov    (%rax,%rbx,1),%rax
    1a57:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
    1a5c:	bd 00 00 00 00       	mov    $0x0,%ebp
    1a61:	4d 8b 7c 2d 00       	mov    0x0(%r13,%rbp,1),%r15
    1a66:	48 8b 44 24 10       	mov    0x10(%rsp),%rax
    1a6b:	4c 8b 34 28          	mov    (%rax,%rbp,1),%r14
    1a6f:	41 bc 00 00 00 00    	mov    $0x0,%r12d
    1a75:	f3 43 0f 10 04 26    	movss  (%r14,%r12,1),%xmm0
    1a7b:	f3 43 0f 10 0c 27    	movss  (%r15,%r12,1),%xmm1
    1a81:	e8 cb fe ff ff       	call   1951 <equal>
    1a86:	66 83 f8 01          	cmp    $0x1,%ax
    1a8a:	74 2c                	je     1ab8 <Compare_gradient_descent+0x12b>
    1a8c:	49 83 c4 04          	add    $0x4,%r12
    1a90:	49 81 fc 00 02 00 00 	cmp    $0x200,%r12
    1a97:	75 dc                	jne    1a75 <Compare_gradient_descent+0xe8>
    1a99:	48 83 c5 08          	add    $0x8,%rbp
    1a9d:	48 81 fd a0 01 00 00 	cmp    $0x1a0,%rbp
    1aa4:	75 bb                	jne    1a61 <Compare_gradient_descent+0xd4>
    1aa6:	48 83 c3 08          	add    $0x8,%rbx
    1aaa:	48 81 fb a0 01 00 00 	cmp    $0x1a0,%rbx
    1ab1:	75 93                	jne    1a46 <Compare_gradient_descent+0xb9>
    1ab3:	b8 00 00 00 00       	mov    $0x0,%eax
    1ab8:	48 83 c4 18          	add    $0x18,%rsp
    1abc:	5b                   	pop    %rbx
    1abd:	5d                   	pop    %rbp
    1abe:	41 5c                	pop    %r12
    1ac0:	41 5d                	pop    %r13
    1ac2:	41 5e                	pop    %r14
    1ac4:	41 5f                	pop    %r15
    1ac6:	c3                   	ret    

0000000000001ac7 <main>:
    1ac7:	f3 0f 1e fa          	endbr64 
    1acb:	53                   	push   %rbx
    1acc:	48 81 ec 10 01 00 00 	sub    $0x110,%rsp
    1ad3:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1ada:	00 00 
    1adc:	48 89 84 24 08 01 00 	mov    %rax,0x108(%rsp)
    1ae3:	00 
    1ae4:	31 c0                	xor    %eax,%eax
    1ae6:	e8 fe f6 ff ff       	call   11e9 <gradient_descent_init>
    1aeb:	48 c7 44 24 40 04 00 	movq   $0x43540004,0x40(%rsp)
    1af2:	54 43 
    1af4:	48 c7 44 24 48 00 00 	movq   $0x0,0x48(%rsp)
    1afb:	00 00 
    1afd:	48 c7 44 24 50 00 00 	movq   $0x0,0x50(%rsp)
    1b04:	00 00 
    1b06:	48 c7 44 24 58 00 00 	movq   $0x0,0x58(%rsp)
    1b0d:	00 00 
    1b0f:	48 c7 44 24 60 00 00 	movq   $0x0,0x60(%rsp)
    1b16:	00 00 
    1b18:	48 c7 44 24 68 00 00 	movq   $0x0,0x68(%rsp)
    1b1f:	00 00 
    1b21:	48 8d 44 24 40       	lea    0x40(%rsp),%rax
    1b26:	bb 00 00 00 00       	mov    $0x0,%ebx
    1b2b:	89 da                	mov    %ebx,%edx
    1b2d:	48 c1 c7 03          	rol    $0x3,%rdi
    1b31:	48 c1 c7 0d          	rol    $0xd,%rdi
    1b35:	48 c1 c7 3d          	rol    $0x3d,%rdi
    1b39:	48 c1 c7 33          	rol    $0x33,%rdi
    1b3d:	48 87 db             	xchg   %rbx,%rbx
    1b40:	48 89 14 24          	mov    %rdx,(%rsp)
    1b44:	48 8b 04 24          	mov    (%rsp),%rax
    1b48:	48 c7 44 24 70 02 00 	movq   $0x43540002,0x70(%rsp)
    1b4f:	54 43 
    1b51:	48 c7 44 24 78 00 00 	movq   $0x0,0x78(%rsp)
    1b58:	00 00 
    1b5a:	48 c7 84 24 80 00 00 	movq   $0x0,0x80(%rsp)
    1b61:	00 00 00 00 00 
    1b66:	48 c7 84 24 88 00 00 	movq   $0x0,0x88(%rsp)
    1b6d:	00 00 00 00 00 
    1b72:	48 c7 84 24 90 00 00 	movq   $0x0,0x90(%rsp)
    1b79:	00 00 00 00 00 
    1b7e:	48 c7 84 24 98 00 00 	movq   $0x0,0x98(%rsp)
    1b85:	00 00 00 00 00 
    1b8a:	48 8d 44 24 70       	lea    0x70(%rsp),%rax
    1b8f:	89 da                	mov    %ebx,%edx
    1b91:	48 c1 c7 03          	rol    $0x3,%rdi
    1b95:	48 c1 c7 0d          	rol    $0xd,%rdi
    1b99:	48 c1 c7 3d          	rol    $0x3d,%rdi
    1b9d:	48 c1 c7 33          	rol    $0x33,%rdi
    1ba1:	48 87 db             	xchg   %rbx,%rbx
    1ba4:	48 89 54 24 08       	mov    %rdx,0x8(%rsp)
    1ba9:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    1bae:	48 8d 74 24 20       	lea    0x20(%rsp),%rsi
    1bb3:	bf 01 00 00 00       	mov    $0x1,%edi
    1bb8:	e8 03 f5 ff ff       	call   10c0 <clock_gettime@plt>
    1bbd:	b8 00 00 00 00       	mov    $0x0,%eax
    1bc2:	e8 9b f9 ff ff       	call   1562 <gradient_descent>
    1bc7:	48 8d 74 24 30       	lea    0x30(%rsp),%rsi
    1bcc:	bf 01 00 00 00       	mov    $0x1,%edi
    1bd1:	e8 ea f4 ff ff       	call   10c0 <clock_gettime@plt>
    1bd6:	48 c7 84 24 a0 00 00 	movq   $0x43540002,0xa0(%rsp)
    1bdd:	00 02 00 54 43 
    1be2:	48 c7 84 24 a8 00 00 	movq   $0x0,0xa8(%rsp)
    1be9:	00 00 00 00 00 
    1bee:	48 c7 84 24 b0 00 00 	movq   $0x0,0xb0(%rsp)
    1bf5:	00 00 00 00 00 
    1bfa:	48 c7 84 24 b8 00 00 	movq   $0x0,0xb8(%rsp)
    1c01:	00 00 00 00 00 
    1c06:	48 c7 84 24 c0 00 00 	movq   $0x0,0xc0(%rsp)
    1c0d:	00 00 00 00 00 
    1c12:	48 c7 84 24 c8 00 00 	movq   $0x0,0xc8(%rsp)
    1c19:	00 00 00 00 00 
    1c1e:	48 8d 84 24 a0 00 00 	lea    0xa0(%rsp),%rax
    1c25:	00 
    1c26:	89 da                	mov    %ebx,%edx
    1c28:	48 c1 c7 03          	rol    $0x3,%rdi
    1c2c:	48 c1 c7 0d          	rol    $0xd,%rdi
    1c30:	48 c1 c7 3d          	rol    $0x3d,%rdi
    1c34:	48 c1 c7 33          	rol    $0x33,%rdi
    1c38:	48 87 db             	xchg   %rbx,%rbx
    1c3b:	48 89 54 24 10       	mov    %rdx,0x10(%rsp)
    1c40:	48 8b 44 24 10       	mov    0x10(%rsp),%rax
    1c45:	48 c7 84 24 d0 00 00 	movq   $0x43540005,0xd0(%rsp)
    1c4c:	00 05 00 54 43 
    1c51:	48 c7 84 24 d8 00 00 	movq   $0x0,0xd8(%rsp)
    1c58:	00 00 00 00 00 
    1c5d:	48 c7 84 24 e0 00 00 	movq   $0x0,0xe0(%rsp)
    1c64:	00 00 00 00 00 
    1c69:	48 c7 84 24 e8 00 00 	movq   $0x0,0xe8(%rsp)
    1c70:	00 00 00 00 00 
    1c75:	48 c7 84 24 f0 00 00 	movq   $0x0,0xf0(%rsp)
    1c7c:	00 00 00 00 00 
    1c81:	48 c7 84 24 f8 00 00 	movq   $0x0,0xf8(%rsp)
    1c88:	00 00 00 00 00 
    1c8d:	48 8d 84 24 d0 00 00 	lea    0xd0(%rsp),%rax
    1c94:	00 
    1c95:	89 da                	mov    %ebx,%edx
    1c97:	48 c1 c7 03          	rol    $0x3,%rdi
    1c9b:	48 c1 c7 0d          	rol    $0xd,%rdi
    1c9f:	48 c1 c7 3d          	rol    $0x3d,%rdi
    1ca3:	48 c1 c7 33          	rol    $0x33,%rdi
    1ca7:	48 87 db             	xchg   %rbx,%rbx
    1caa:	48 89 54 24 18       	mov    %rdx,0x18(%rsp)
    1caf:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
    1cb4:	b8 00 00 00 00       	mov    $0x0,%eax
    1cb9:	e8 cf fc ff ff       	call   198d <Compare_gradient_descent>
    1cbe:	66 85 c0             	test   %ax,%ax
    1cc1:	0f 85 82 00 00 00    	jne    1d49 <main+0x282>
    1cc7:	48 8d 3d 36 03 00 00 	lea    0x336(%rip),%rdi        # 2004 <_IO_stdin_used+0x4>
    1cce:	e8 dd f3 ff ff       	call   10b0 <puts@plt>
    1cd3:	48 8b 54 24 30       	mov    0x30(%rsp),%rdx
    1cd8:	48 2b 54 24 20       	sub    0x20(%rsp),%rdx
    1cdd:	48 69 d2 00 ca 9a 3b 	imul   $0x3b9aca00,%rdx,%rdx
    1ce4:	48 03 54 24 38       	add    0x38(%rsp),%rdx
    1ce9:	48 2b 54 24 28       	sub    0x28(%rsp),%rdx
    1cee:	48 8d 35 2f 03 00 00 	lea    0x32f(%rip),%rsi        # 2024 <_IO_stdin_used+0x24>
    1cf5:	bf 01 00 00 00       	mov    $0x1,%edi
    1cfa:	b8 00 00 00 00       	mov    $0x0,%eax
    1cff:	e8 dc f3 ff ff       	call   10e0 <__printf_chk@plt>
    1d04:	48 8b 3d 25 23 00 00 	mov    0x2325(%rip),%rdi        # 4030 <in>
    1d0b:	e8 90 f3 ff ff       	call   10a0 <free@plt>
    1d10:	48 8b 3d 11 23 00 00 	mov    0x2311(%rip),%rdi        # 4028 <out>
    1d17:	e8 84 f3 ff ff       	call   10a0 <free@plt>
    1d1c:	48 8b 3d f5 22 00 00 	mov    0x22f5(%rip),%rdi        # 4018 <filter>
    1d23:	e8 78 f3 ff ff       	call   10a0 <free@plt>
    1d28:	48 8b 84 24 08 01 00 	mov    0x108(%rsp),%rax
    1d2f:	00 
    1d30:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    1d37:	00 00 
    1d39:	75 1f                	jne    1d5a <main+0x293>
    1d3b:	b8 00 00 00 00       	mov    $0x0,%eax
    1d40:	48 81 c4 10 01 00 00 	add    $0x110,%rsp
    1d47:	5b                   	pop    %rbx
    1d48:	c3                   	ret    
    1d49:	48 8d 3d c3 02 00 00 	lea    0x2c3(%rip),%rdi        # 2013 <_IO_stdin_used+0x13>
    1d50:	e8 5b f3 ff ff       	call   10b0 <puts@plt>
    1d55:	e9 79 ff ff ff       	jmp    1cd3 <main+0x20c>
    1d5a:	e8 71 f3 ff ff       	call   10d0 <__stack_chk_fail@plt>

Disassembly of section .fini:

0000000000001d60 <_fini>:
    1d60:	f3 0f 1e fa          	endbr64 
    1d64:	48 83 ec 08          	sub    $0x8,%rsp
    1d68:	48 83 c4 08          	add    $0x8,%rsp
    1d6c:	c3                   	ret    
