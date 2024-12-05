
conv2d/orio_sr1:     file format elf64-x86-64


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
    1020:	ff 35 6a 2f 00 00    	push   0x2f6a(%rip)        # 3f90 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	f2 ff 25 6b 2f 00 00 	bnd jmp *0x2f6b(%rip)        # 3f98 <_GLOBAL_OFFSET_TABLE_+0x10>
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
    1090:	f3 0f 1e fa          	endbr64 
    1094:	68 06 00 00 00       	push   $0x6
    1099:	f2 e9 81 ff ff ff    	bnd jmp 1020 <_init+0x20>
    109f:	90                   	nop

Disassembly of section .plt.got:

00000000000010a0 <__cxa_finalize@plt>:
    10a0:	f3 0f 1e fa          	endbr64 
    10a4:	f2 ff 25 4d 2f 00 00 	bnd jmp *0x2f4d(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    10ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .plt.sec:

00000000000010b0 <free@plt>:
    10b0:	f3 0f 1e fa          	endbr64 
    10b4:	f2 ff 25 e5 2e 00 00 	bnd jmp *0x2ee5(%rip)        # 3fa0 <free@GLIBC_2.2.5>
    10bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000010c0 <puts@plt>:
    10c0:	f3 0f 1e fa          	endbr64 
    10c4:	f2 ff 25 dd 2e 00 00 	bnd jmp *0x2edd(%rip)        # 3fa8 <puts@GLIBC_2.2.5>
    10cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000010d0 <clock_gettime@plt>:
    10d0:	f3 0f 1e fa          	endbr64 
    10d4:	f2 ff 25 d5 2e 00 00 	bnd jmp *0x2ed5(%rip)        # 3fb0 <clock_gettime@GLIBC_2.17>
    10db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000010e0 <__stack_chk_fail@plt>:
    10e0:	f3 0f 1e fa          	endbr64 
    10e4:	f2 ff 25 cd 2e 00 00 	bnd jmp *0x2ecd(%rip)        # 3fb8 <__stack_chk_fail@GLIBC_2.4>
    10eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000010f0 <sched_setaffinity@plt>:
    10f0:	f3 0f 1e fa          	endbr64 
    10f4:	f2 ff 25 c5 2e 00 00 	bnd jmp *0x2ec5(%rip)        # 3fc0 <sched_setaffinity@GLIBC_2.3.4>
    10fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001100 <__printf_chk@plt>:
    1100:	f3 0f 1e fa          	endbr64 
    1104:	f2 ff 25 bd 2e 00 00 	bnd jmp *0x2ebd(%rip)        # 3fc8 <__printf_chk@GLIBC_2.3.4>
    110b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001110 <posix_memalign@plt>:
    1110:	f3 0f 1e fa          	endbr64 
    1114:	f2 ff 25 b5 2e 00 00 	bnd jmp *0x2eb5(%rip)        # 3fd0 <posix_memalign@GLIBC_2.2.5>
    111b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .text:

0000000000001120 <_start>:
    1120:	f3 0f 1e fa          	endbr64 
    1124:	31 ed                	xor    %ebp,%ebp
    1126:	49 89 d1             	mov    %rdx,%r9
    1129:	5e                   	pop    %rsi
    112a:	48 89 e2             	mov    %rsp,%rdx
    112d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    1131:	50                   	push   %rax
    1132:	54                   	push   %rsp
    1133:	45 31 c0             	xor    %r8d,%r8d
    1136:	31 c9                	xor    %ecx,%ecx
    1138:	48 8d 3d 48 0a 00 00 	lea    0xa48(%rip),%rdi        # 1b87 <main>
    113f:	ff 15 93 2e 00 00    	call   *0x2e93(%rip)        # 3fd8 <__libc_start_main@GLIBC_2.34>
    1145:	f4                   	hlt    
    1146:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    114d:	00 00 00 

0000000000001150 <deregister_tm_clones>:
    1150:	48 8d 3d b9 2e 00 00 	lea    0x2eb9(%rip),%rdi        # 4010 <__TMC_END__>
    1157:	48 8d 05 b2 2e 00 00 	lea    0x2eb2(%rip),%rax        # 4010 <__TMC_END__>
    115e:	48 39 f8             	cmp    %rdi,%rax
    1161:	74 15                	je     1178 <deregister_tm_clones+0x28>
    1163:	48 8b 05 76 2e 00 00 	mov    0x2e76(%rip),%rax        # 3fe0 <_ITM_deregisterTMCloneTable@Base>
    116a:	48 85 c0             	test   %rax,%rax
    116d:	74 09                	je     1178 <deregister_tm_clones+0x28>
    116f:	ff e0                	jmp    *%rax
    1171:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1178:	c3                   	ret    
    1179:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001180 <register_tm_clones>:
    1180:	48 8d 3d 89 2e 00 00 	lea    0x2e89(%rip),%rdi        # 4010 <__TMC_END__>
    1187:	48 8d 35 82 2e 00 00 	lea    0x2e82(%rip),%rsi        # 4010 <__TMC_END__>
    118e:	48 29 fe             	sub    %rdi,%rsi
    1191:	48 89 f0             	mov    %rsi,%rax
    1194:	48 c1 ee 3f          	shr    $0x3f,%rsi
    1198:	48 c1 f8 03          	sar    $0x3,%rax
    119c:	48 01 c6             	add    %rax,%rsi
    119f:	48 d1 fe             	sar    %rsi
    11a2:	74 14                	je     11b8 <register_tm_clones+0x38>
    11a4:	48 8b 05 45 2e 00 00 	mov    0x2e45(%rip),%rax        # 3ff0 <_ITM_registerTMCloneTable@Base>
    11ab:	48 85 c0             	test   %rax,%rax
    11ae:	74 08                	je     11b8 <register_tm_clones+0x38>
    11b0:	ff e0                	jmp    *%rax
    11b2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    11b8:	c3                   	ret    
    11b9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000011c0 <__do_global_dtors_aux>:
    11c0:	f3 0f 1e fa          	endbr64 
    11c4:	80 3d 45 2e 00 00 00 	cmpb   $0x0,0x2e45(%rip)        # 4010 <__TMC_END__>
    11cb:	75 2b                	jne    11f8 <__do_global_dtors_aux+0x38>
    11cd:	55                   	push   %rbp
    11ce:	48 83 3d 22 2e 00 00 	cmpq   $0x0,0x2e22(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    11d5:	00 
    11d6:	48 89 e5             	mov    %rsp,%rbp
    11d9:	74 0c                	je     11e7 <__do_global_dtors_aux+0x27>
    11db:	48 8b 3d 26 2e 00 00 	mov    0x2e26(%rip),%rdi        # 4008 <__dso_handle>
    11e2:	e8 b9 fe ff ff       	call   10a0 <__cxa_finalize@plt>
    11e7:	e8 64 ff ff ff       	call   1150 <deregister_tm_clones>
    11ec:	c6 05 1d 2e 00 00 01 	movb   $0x1,0x2e1d(%rip)        # 4010 <__TMC_END__>
    11f3:	5d                   	pop    %rbp
    11f4:	c3                   	ret    
    11f5:	0f 1f 00             	nopl   (%rax)
    11f8:	c3                   	ret    
    11f9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001200 <frame_dummy>:
    1200:	f3 0f 1e fa          	endbr64 
    1204:	e9 77 ff ff ff       	jmp    1180 <register_tm_clones>

0000000000001209 <conv2d_init>:
    1209:	f3 0f 1e fa          	endbr64 
    120d:	41 57                	push   %r15
    120f:	41 56                	push   %r14
    1211:	41 55                	push   %r13
    1213:	41 54                	push   %r12
    1215:	55                   	push   %rbp
    1216:	53                   	push   %rbx
    1217:	48 81 ec 88 00 00 00 	sub    $0x88,%rsp
    121e:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1225:	00 00 
    1227:	48 89 44 24 78       	mov    %rax,0x78(%rsp)
    122c:	31 c0                	xor    %eax,%eax
    122e:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
    1233:	ba a0 01 00 00       	mov    $0x1a0,%edx
    1238:	be 40 00 00 00       	mov    $0x40,%esi
    123d:	e8 ce fe ff ff       	call   1110 <posix_memalign@plt>
    1242:	85 c0                	test   %eax,%eax
    1244:	b8 00 00 00 00       	mov    $0x0,%eax
    1249:	48 0f 44 44 24 30    	cmove  0x30(%rsp),%rax
    124f:	48 89 05 da 2d 00 00 	mov    %rax,0x2dda(%rip)        # 4030 <out>
    1256:	48 8d 7c 24 28       	lea    0x28(%rsp),%rdi
    125b:	ba a0 01 00 00       	mov    $0x1a0,%edx
    1260:	be 40 00 00 00       	mov    $0x40,%esi
    1265:	e8 a6 fe ff ff       	call   1110 <posix_memalign@plt>
    126a:	85 c0                	test   %eax,%eax
    126c:	b8 00 00 00 00       	mov    $0x0,%eax
    1271:	48 0f 44 44 24 28    	cmove  0x28(%rsp),%rax
    1277:	48 89 05 aa 2d 00 00 	mov    %rax,0x2daa(%rip)        # 4028 <test>
    127e:	48 8d 7c 24 20       	lea    0x20(%rsp),%rdi
    1283:	ba a0 01 00 00       	mov    $0x1a0,%edx
    1288:	be 40 00 00 00       	mov    $0x40,%esi
    128d:	e8 7e fe ff ff       	call   1110 <posix_memalign@plt>
    1292:	85 c0                	test   %eax,%eax
    1294:	b8 00 00 00 00       	mov    $0x0,%eax
    1299:	48 0f 44 44 24 20    	cmove  0x20(%rsp),%rax
    129f:	48 89 05 7a 2d 00 00 	mov    %rax,0x2d7a(%rip)        # 4020 <in>
    12a6:	48 8d 7c 24 18       	lea    0x18(%rsp),%rdi
    12ab:	ba 00 04 00 00       	mov    $0x400,%edx
    12b0:	be 40 00 00 00       	mov    $0x40,%esi
    12b5:	e8 56 fe ff ff       	call   1110 <posix_memalign@plt>
    12ba:	85 c0                	test   %eax,%eax
    12bc:	b8 00 00 00 00       	mov    $0x0,%eax
    12c1:	48 0f 44 44 24 18    	cmove  0x18(%rsp),%rax
    12c7:	48 89 05 4a 2d 00 00 	mov    %rax,0x2d4a(%rip)        # 4018 <filter>
    12ce:	bd 00 00 00 00       	mov    $0x0,%ebp
    12d3:	48 8d 44 24 48       	lea    0x48(%rsp),%rax
    12d8:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    12dd:	41 bc 00 00 00 00    	mov    $0x0,%r12d
    12e3:	eb 11                	jmp    12f6 <conv2d_init+0xed>
    12e5:	48 83 c5 08          	add    $0x8,%rbp
    12e9:	48 81 fd a0 01 00 00 	cmp    $0x1a0,%rbp
    12f0:	0f 84 d2 01 00 00    	je     14c8 <conv2d_init+0x2bf>
    12f6:	48 89 eb             	mov    %rbp,%rbx
    12f9:	48 03 1d 30 2d 00 00 	add    0x2d30(%rip),%rbx        # 4030 <out>
    1300:	ba a0 01 00 00       	mov    $0x1a0,%edx
    1305:	be 40 00 00 00       	mov    $0x40,%esi
    130a:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
    130f:	e8 fc fd ff ff       	call   1110 <posix_memalign@plt>
    1314:	85 c0                	test   %eax,%eax
    1316:	4c 89 e0             	mov    %r12,%rax
    1319:	48 0f 44 44 24 48    	cmove  0x48(%rsp),%rax
    131f:	48 89 03             	mov    %rax,(%rbx)
    1322:	48 89 eb             	mov    %rbp,%rbx
    1325:	48 03 1d fc 2c 00 00 	add    0x2cfc(%rip),%rbx        # 4028 <test>
    132c:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
    1331:	ba a0 01 00 00       	mov    $0x1a0,%edx
    1336:	be 40 00 00 00       	mov    $0x40,%esi
    133b:	e8 d0 fd ff ff       	call   1110 <posix_memalign@plt>
    1340:	85 c0                	test   %eax,%eax
    1342:	4c 89 e0             	mov    %r12,%rax
    1345:	48 0f 44 44 24 40    	cmove  0x40(%rsp),%rax
    134b:	48 89 03             	mov    %rax,(%rbx)
    134e:	48 89 eb             	mov    %rbp,%rbx
    1351:	48 03 1d c8 2c 00 00 	add    0x2cc8(%rip),%rbx        # 4020 <in>
    1358:	48 8d 7c 24 38       	lea    0x38(%rsp),%rdi
    135d:	ba a0 01 00 00       	mov    $0x1a0,%edx
    1362:	be 40 00 00 00       	mov    $0x40,%esi
    1367:	e8 a4 fd ff ff       	call   1110 <posix_memalign@plt>
    136c:	85 c0                	test   %eax,%eax
    136e:	4c 89 e0             	mov    %r12,%rax
    1371:	48 0f 44 44 24 38    	cmove  0x38(%rsp),%rax
    1377:	48 89 03             	mov    %rax,(%rbx)
    137a:	bb 00 00 00 00       	mov    $0x0,%ebx
    137f:	4c 8d 7c 24 60       	lea    0x60(%rsp),%r15
    1384:	4c 8d 74 24 58       	lea    0x58(%rsp),%r14
    1389:	48 8b 05 a0 2c 00 00 	mov    0x2ca0(%rip),%rax        # 4030 <out>
    1390:	49 89 dd             	mov    %rbx,%r13
    1393:	4c 03 2c 28          	add    (%rax,%rbp,1),%r13
    1397:	ba 00 02 00 00       	mov    $0x200,%edx
    139c:	be 40 00 00 00       	mov    $0x40,%esi
    13a1:	4c 89 ff             	mov    %r15,%rdi
    13a4:	e8 67 fd ff ff       	call   1110 <posix_memalign@plt>
    13a9:	85 c0                	test   %eax,%eax
    13ab:	4c 89 e0             	mov    %r12,%rax
    13ae:	48 0f 44 44 24 60    	cmove  0x60(%rsp),%rax
    13b4:	49 89 45 00          	mov    %rax,0x0(%r13)
    13b8:	48 8b 05 69 2c 00 00 	mov    0x2c69(%rip),%rax        # 4028 <test>
    13bf:	49 89 dd             	mov    %rbx,%r13
    13c2:	4c 03 2c 28          	add    (%rax,%rbp,1),%r13
    13c6:	ba 00 02 00 00       	mov    $0x200,%edx
    13cb:	be 40 00 00 00       	mov    $0x40,%esi
    13d0:	4c 89 f7             	mov    %r14,%rdi
    13d3:	e8 38 fd ff ff       	call   1110 <posix_memalign@plt>
    13d8:	85 c0                	test   %eax,%eax
    13da:	4c 89 e0             	mov    %r12,%rax
    13dd:	48 0f 44 44 24 58    	cmove  0x58(%rsp),%rax
    13e3:	49 89 45 00          	mov    %rax,0x0(%r13)
    13e7:	48 8b 05 32 2c 00 00 	mov    0x2c32(%rip),%rax        # 4020 <in>
    13ee:	49 89 dd             	mov    %rbx,%r13
    13f1:	4c 03 2c 28          	add    (%rax,%rbp,1),%r13
    13f5:	48 8d 7c 24 50       	lea    0x50(%rsp),%rdi
    13fa:	ba 00 04 00 00       	mov    $0x400,%edx
    13ff:	be 40 00 00 00       	mov    $0x40,%esi
    1404:	e8 07 fd ff ff       	call   1110 <posix_memalign@plt>
    1409:	85 c0                	test   %eax,%eax
    140b:	4c 89 e0             	mov    %r12,%rax
    140e:	48 0f 44 44 24 50    	cmove  0x50(%rsp),%rax
    1414:	49 89 45 00          	mov    %rax,0x0(%r13)
    1418:	b8 00 00 00 00       	mov    $0x0,%eax
    141d:	48 8b 15 0c 2c 00 00 	mov    0x2c0c(%rip),%rdx        # 4030 <out>
    1424:	48 8b 14 2a          	mov    (%rdx,%rbp,1),%rdx
    1428:	48 8b 14 1a          	mov    (%rdx,%rbx,1),%rdx
    142c:	c7 04 02 00 00 00 00 	movl   $0x0,(%rdx,%rax,1)
    1433:	48 8b 15 ee 2b 00 00 	mov    0x2bee(%rip),%rdx        # 4028 <test>
    143a:	48 8b 14 2a          	mov    (%rdx,%rbp,1),%rdx
    143e:	48 8b 14 1a          	mov    (%rdx,%rbx,1),%rdx
    1442:	c7 04 02 00 00 00 00 	movl   $0x0,(%rdx,%rax,1)
    1449:	48 83 c0 04          	add    $0x4,%rax
    144d:	48 3d 00 02 00 00    	cmp    $0x200,%rax
    1453:	75 c8                	jne    141d <conv2d_init+0x214>
    1455:	ba 00 00 00 00       	mov    $0x0,%edx
    145a:	48 8b 05 bf 2b 00 00 	mov    0x2bbf(%rip),%rax        # 4020 <in>
    1461:	48 8b 04 28          	mov    (%rax,%rbp,1),%rax
    1465:	48 8b 0c 18          	mov    (%rax,%rbx,1),%rcx
    1469:	48 63 c2             	movslq %edx,%rax
    146c:	48 69 c0 93 24 49 92 	imul   $0xffffffff92492493,%rax,%rax
    1473:	48 c1 e8 20          	shr    $0x20,%rax
    1477:	01 d0                	add    %edx,%eax
    1479:	c1 f8 02             	sar    $0x2,%eax
    147c:	89 d6                	mov    %edx,%esi
    147e:	c1 fe 1f             	sar    $0x1f,%esi
    1481:	29 f0                	sub    %esi,%eax
    1483:	8d 34 c5 00 00 00 00 	lea    0x0(,%rax,8),%esi
    148a:	29 c6                	sub    %eax,%esi
    148c:	89 d0                	mov    %edx,%eax
    148e:	29 f0                	sub    %esi,%eax
    1490:	66 0f ef c0          	pxor   %xmm0,%xmm0
    1494:	f3 0f 2a c0          	cvtsi2ss %eax,%xmm0
    1498:	f3 0f 5c 05 d8 0b 00 	subss  0xbd8(%rip),%xmm0        # 2078 <_IO_stdin_used+0x78>
    149f:	00 
    14a0:	f3 0f 11 04 91       	movss  %xmm0,(%rcx,%rdx,4)
    14a5:	48 83 c2 01          	add    $0x1,%rdx
    14a9:	48 81 fa 00 01 00 00 	cmp    $0x100,%rdx
    14b0:	75 a8                	jne    145a <conv2d_init+0x251>
    14b2:	48 83 c3 08          	add    $0x8,%rbx
    14b6:	48 81 fb a0 01 00 00 	cmp    $0x1a0,%rbx
    14bd:	0f 85 c6 fe ff ff    	jne    1389 <conv2d_init+0x180>
    14c3:	e9 1d fe ff ff       	jmp    12e5 <conv2d_init+0xdc>
    14c8:	48 8d 7c 24 68       	lea    0x68(%rsp),%rdi
    14cd:	ba 00 04 00 00       	mov    $0x400,%edx
    14d2:	be 40 00 00 00       	mov    $0x40,%esi
    14d7:	e8 34 fc ff ff       	call   1110 <posix_memalign@plt>
    14dc:	85 c0                	test   %eax,%eax
    14de:	b8 00 00 00 00       	mov    $0x0,%eax
    14e3:	48 0f 44 44 24 68    	cmove  0x68(%rsp),%rax
    14e9:	48 89 05 28 2b 00 00 	mov    %rax,0x2b28(%rip)        # 4018 <filter>
    14f0:	bb 00 00 00 00       	mov    $0x0,%ebx
    14f5:	48 89 dd             	mov    %rbx,%rbp
    14f8:	48 03 2d 19 2b 00 00 	add    0x2b19(%rip),%rbp        # 4018 <filter>
    14ff:	48 8d 7c 24 70       	lea    0x70(%rsp),%rdi
    1504:	ba 00 04 00 00       	mov    $0x400,%edx
    1509:	be 40 00 00 00       	mov    $0x40,%esi
    150e:	e8 fd fb ff ff       	call   1110 <posix_memalign@plt>
    1513:	85 c0                	test   %eax,%eax
    1515:	b8 00 00 00 00       	mov    $0x0,%eax
    151a:	48 0f 44 44 24 70    	cmove  0x70(%rsp),%rax
    1520:	48 89 45 00          	mov    %rax,0x0(%rbp)
    1524:	ba 00 00 00 00       	mov    $0x0,%edx
    1529:	48 8b 05 e8 2a 00 00 	mov    0x2ae8(%rip),%rax        # 4018 <filter>
    1530:	48 8b 0c 18          	mov    (%rax,%rbx,1),%rcx
    1534:	48 63 c2             	movslq %edx,%rax
    1537:	48 69 c0 67 66 66 66 	imul   $0x66666667,%rax,%rax
    153e:	48 c1 f8 21          	sar    $0x21,%rax
    1542:	89 d6                	mov    %edx,%esi
    1544:	c1 fe 1f             	sar    $0x1f,%esi
    1547:	29 f0                	sub    %esi,%eax
    1549:	8d 34 80             	lea    (%rax,%rax,4),%esi
    154c:	89 d0                	mov    %edx,%eax
    154e:	29 f0                	sub    %esi,%eax
    1550:	66 0f ef c0          	pxor   %xmm0,%xmm0
    1554:	f3 0f 2a c0          	cvtsi2ss %eax,%xmm0
    1558:	f3 0f 58 05 1c 0b 00 	addss  0xb1c(%rip),%xmm0        # 207c <_IO_stdin_used+0x7c>
    155f:	00 
    1560:	f3 0f 11 04 91       	movss  %xmm0,(%rcx,%rdx,4)
    1565:	48 83 c2 01          	add    $0x1,%rdx
    1569:	48 81 fa 00 01 00 00 	cmp    $0x100,%rdx
    1570:	75 b7                	jne    1529 <conv2d_init+0x320>
    1572:	48 83 c3 08          	add    $0x8,%rbx
    1576:	48 81 fb 00 04 00 00 	cmp    $0x400,%rbx
    157d:	0f 85 72 ff ff ff    	jne    14f5 <conv2d_init+0x2ec>
    1583:	48 8b 44 24 78       	mov    0x78(%rsp),%rax
    1588:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    158f:	00 00 
    1591:	75 12                	jne    15a5 <conv2d_init+0x39c>
    1593:	48 81 c4 88 00 00 00 	add    $0x88,%rsp
    159a:	5b                   	pop    %rbx
    159b:	5d                   	pop    %rbp
    159c:	41 5c                	pop    %r12
    159e:	41 5d                	pop    %r13
    15a0:	41 5e                	pop    %r14
    15a2:	41 5f                	pop    %r15
    15a4:	c3                   	ret    
    15a5:	e8 36 fb ff ff       	call   10e0 <__stack_chk_fail@plt>

00000000000015aa <conv2d_default>:
    15aa:	f3 0f 1e fa          	endbr64 
    15ae:	41 57                	push   %r15
    15b0:	41 56                	push   %r14
    15b2:	41 55                	push   %r13
    15b4:	41 54                	push   %r12
    15b6:	55                   	push   %rbp
    15b7:	53                   	push   %rbx
    15b8:	41 bd 10 00 00 00    	mov    $0x10,%r13d
    15be:	4d 89 ef             	mov    %r13,%r15
    15c1:	e9 26 04 00 00       	jmp    19ec <conv2d_default+0x442>
    15c6:	48 83 c3 08          	add    $0x8,%rbx
    15ca:	48 81 fb a0 01 00 00 	cmp    $0x1a0,%rbx
    15d1:	0f 84 08 04 00 00    	je     19df <conv2d_default+0x435>
    15d7:	48 c7 44 24 e8 00 00 	movq   $0x0,-0x18(%rsp)
    15de:	00 00 
    15e0:	41 bb 08 00 00 00    	mov    $0x8,%r11d
    15e6:	48 8b 05 43 2a 00 00 	mov    0x2a43(%rip),%rax        # 4030 <out>
    15ed:	4a 8b 14 20          	mov    (%rax,%r12,1),%rdx
    15f1:	48 8b 14 1a          	mov    (%rdx,%rbx,1),%rdx
    15f5:	4a 8d 34 1a          	lea    (%rdx,%r11,1),%rsi
    15f9:	48 89 74 24 f0       	mov    %rsi,-0x10(%rsp)
    15fe:	f3 44 0f 10 36       	movss  (%rsi),%xmm14
    1603:	4a 8b 0c 30          	mov    (%rax,%r14,1),%rcx
    1607:	48 8b 34 19          	mov    (%rcx,%rbx,1),%rsi
    160b:	49 8d 4b fc          	lea    -0x4(%r11),%rcx
    160f:	48 89 4c 24 f8       	mov    %rcx,-0x8(%rsp)
    1614:	f3 46 0f 10 6c 1e fc 	movss  -0x4(%rsi,%r11,1),%xmm13
    161b:	48 8b 0c 28          	mov    (%rax,%rbp,1),%rcx
    161f:	48 8b 0c 19          	mov    (%rcx,%rbx,1),%rcx
    1623:	4d 8d 6b f8          	lea    -0x8(%r11),%r13
    1627:	f3 42 0f 10 7c 19 f8 	movss  -0x8(%rcx,%r11,1),%xmm7
    162e:	f3 0f 11 7c 24 e4    	movss  %xmm7,-0x1c(%rsp)
    1634:	f3 42 0f 10 7c 1e f8 	movss  -0x8(%rsi,%r11,1),%xmm7
    163b:	f3 0f 11 7c 24 dc    	movss  %xmm7,-0x24(%rsp)
    1641:	4a 8b 04 38          	mov    (%rax,%r15,1),%rax
    1645:	48 8b 04 18          	mov    (%rax,%rbx,1),%rax
    1649:	f3 46 0f 10 24 18    	movss  (%rax,%r11,1),%xmm12
    164f:	f3 46 0f 10 5c 19 fc 	movss  -0x4(%rcx,%r11,1),%xmm11
    1656:	f3 46 0f 10 14 1e    	movss  (%rsi,%r11,1),%xmm10
    165c:	f3 42 0f 10 7c 1a f8 	movss  -0x8(%rdx,%r11,1),%xmm7
    1663:	f3 0f 11 7c 24 d8    	movss  %xmm7,-0x28(%rsp)
    1669:	f3 42 0f 10 7c 18 f8 	movss  -0x8(%rax,%r11,1),%xmm7
    1670:	f3 0f 11 7c 24 e0    	movss  %xmm7,-0x20(%rsp)
    1676:	f3 46 0f 10 4c 18 fc 	movss  -0x4(%rax,%r11,1),%xmm9
    167d:	f3 46 0f 10 04 19    	movss  (%rcx,%r11,1),%xmm8
    1683:	f3 42 0f 10 7c 1a fc 	movss  -0x4(%rdx,%r11,1),%xmm7
    168a:	48 8b 05 8f 29 00 00 	mov    0x298f(%rip),%rax        # 4020 <in>
    1691:	4a 8b 14 38          	mov    (%rax,%r15,1),%rdx
    1695:	4c 8b 14 1a          	mov    (%rdx,%rbx,1),%r10
    1699:	48 8b 14 28          	mov    (%rax,%rbp,1),%rdx
    169d:	4c 8b 0c 1a          	mov    (%rdx,%rbx,1),%r9
    16a1:	48 8b 15 70 29 00 00 	mov    0x2970(%rip),%rdx        # 4018 <filter>
    16a8:	48 8b 4c 24 e8       	mov    -0x18(%rsp),%rcx
    16ad:	4c 8b 04 0a          	mov    (%rdx,%rcx,1),%r8
    16b1:	4a 8b 3c 5a          	mov    (%rdx,%r11,2),%rdi
    16b5:	48 8b 74 0a 08       	mov    0x8(%rdx,%rcx,1),%rsi
    16ba:	4a 8b 14 20          	mov    (%rax,%r12,1),%rdx
    16be:	48 8b 0c 1a          	mov    (%rdx,%rbx,1),%rcx
    16c2:	4a 8b 04 30          	mov    (%rax,%r14,1),%rax
    16c6:	48 8b 14 18          	mov    (%rax,%rbx,1),%rdx
    16ca:	b8 00 00 00 00       	mov    $0x0,%eax
    16cf:	f3 41 0f 10 1c 02    	movss  (%r10,%rax,1),%xmm3
    16d5:	f3 41 0f 10 14 01    	movss  (%r9,%rax,1),%xmm2
    16db:	f3 41 0f 10 0c 00    	movss  (%r8,%rax,1),%xmm1
    16e1:	f3 0f 10 34 07       	movss  (%rdi,%rax,1),%xmm6
    16e6:	f3 0f 10 04 06       	movss  (%rsi,%rax,1),%xmm0
    16eb:	f3 0f 10 2c 01       	movss  (%rcx,%rax,1),%xmm5
    16f0:	f3 0f 10 24 02       	movss  (%rdx,%rax,1),%xmm4
    16f5:	44 0f 28 f9          	movaps %xmm1,%xmm15
    16f9:	f3 44 0f 59 fd       	mulss  %xmm5,%xmm15
    16fe:	f3 44 0f 58 7c 24 d8 	addss  -0x28(%rsp),%xmm15
    1705:	f3 44 0f 11 7c 24 d8 	movss  %xmm15,-0x28(%rsp)
    170c:	44 0f 28 f9          	movaps %xmm1,%xmm15
    1710:	f3 44 0f 59 fc       	mulss  %xmm4,%xmm15
    1715:	f3 44 0f 58 7c 24 dc 	addss  -0x24(%rsp),%xmm15
    171c:	f3 44 0f 11 7c 24 dc 	movss  %xmm15,-0x24(%rsp)
    1723:	44 0f 28 fb          	movaps %xmm3,%xmm15
    1727:	f3 44 0f 59 f9       	mulss  %xmm1,%xmm15
    172c:	f3 44 0f 58 7c 24 e0 	addss  -0x20(%rsp),%xmm15
    1733:	f3 44 0f 11 7c 24 e0 	movss  %xmm15,-0x20(%rsp)
    173a:	f3 0f 59 ca          	mulss  %xmm2,%xmm1
    173e:	f3 0f 58 4c 24 e4    	addss  -0x1c(%rsp),%xmm1
    1744:	f3 0f 11 4c 24 e4    	movss  %xmm1,-0x1c(%rsp)
    174a:	0f 28 c8             	movaps %xmm0,%xmm1
    174d:	f3 0f 59 cd          	mulss  %xmm5,%xmm1
    1751:	f3 0f 58 f9          	addss  %xmm1,%xmm7
    1755:	0f 28 c8             	movaps %xmm0,%xmm1
    1758:	f3 0f 59 cc          	mulss  %xmm4,%xmm1
    175c:	f3 44 0f 58 e9       	addss  %xmm1,%xmm13
    1761:	0f 28 cb             	movaps %xmm3,%xmm1
    1764:	f3 0f 59 c8          	mulss  %xmm0,%xmm1
    1768:	f3 44 0f 58 c9       	addss  %xmm1,%xmm9
    176d:	f3 0f 59 c2          	mulss  %xmm2,%xmm0
    1771:	f3 44 0f 58 d8       	addss  %xmm0,%xmm11
    1776:	f3 0f 59 ee          	mulss  %xmm6,%xmm5
    177a:	f3 44 0f 58 f5       	addss  %xmm5,%xmm14
    177f:	f3 0f 59 e6          	mulss  %xmm6,%xmm4
    1783:	f3 44 0f 58 d4       	addss  %xmm4,%xmm10
    1788:	f3 0f 59 de          	mulss  %xmm6,%xmm3
    178c:	f3 44 0f 58 e3       	addss  %xmm3,%xmm12
    1791:	f3 0f 59 d6          	mulss  %xmm6,%xmm2
    1795:	f3 44 0f 58 c2       	addss  %xmm2,%xmm8
    179a:	48 83 c0 04          	add    $0x4,%rax
    179e:	48 3d 00 04 00 00    	cmp    $0x400,%rax
    17a4:	0f 85 25 ff ff ff    	jne    16cf <conv2d_default+0x125>
    17aa:	48 8b 44 24 f0       	mov    -0x10(%rsp),%rax
    17af:	f3 44 0f 11 30       	movss  %xmm14,(%rax)
    17b4:	48 8b 05 75 28 00 00 	mov    0x2875(%rip),%rax        # 4030 <out>
    17bb:	4a 8b 04 30          	mov    (%rax,%r14,1),%rax
    17bf:	48 8b 04 18          	mov    (%rax,%rbx,1),%rax
    17c3:	48 8b 7c 24 f8       	mov    -0x8(%rsp),%rdi
    17c8:	f3 44 0f 11 2c 38    	movss  %xmm13,(%rax,%rdi,1)
    17ce:	48 8b 05 5b 28 00 00 	mov    0x285b(%rip),%rax        # 4030 <out>
    17d5:	48 8b 04 28          	mov    (%rax,%rbp,1),%rax
    17d9:	48 8b 04 18          	mov    (%rax,%rbx,1),%rax
    17dd:	f3 0f 10 74 24 e4    	movss  -0x1c(%rsp),%xmm6
    17e3:	f3 42 0f 11 34 28    	movss  %xmm6,(%rax,%r13,1)
    17e9:	48 8b 05 40 28 00 00 	mov    0x2840(%rip),%rax        # 4030 <out>
    17f0:	4a 8b 04 30          	mov    (%rax,%r14,1),%rax
    17f4:	48 8b 04 18          	mov    (%rax,%rbx,1),%rax
    17f8:	f3 0f 10 74 24 dc    	movss  -0x24(%rsp),%xmm6
    17fe:	f3 42 0f 11 34 28    	movss  %xmm6,(%rax,%r13,1)
    1804:	48 8b 05 25 28 00 00 	mov    0x2825(%rip),%rax        # 4030 <out>
    180b:	4a 8b 04 38          	mov    (%rax,%r15,1),%rax
    180f:	48 8b 04 18          	mov    (%rax,%rbx,1),%rax
    1813:	f3 46 0f 11 24 18    	movss  %xmm12,(%rax,%r11,1)
    1819:	48 8b 05 10 28 00 00 	mov    0x2810(%rip),%rax        # 4030 <out>
    1820:	48 8b 04 28          	mov    (%rax,%rbp,1),%rax
    1824:	48 8b 04 18          	mov    (%rax,%rbx,1),%rax
    1828:	f3 44 0f 11 1c 38    	movss  %xmm11,(%rax,%rdi,1)
    182e:	48 8b 05 fb 27 00 00 	mov    0x27fb(%rip),%rax        # 4030 <out>
    1835:	4a 8b 04 30          	mov    (%rax,%r14,1),%rax
    1839:	48 8b 04 18          	mov    (%rax,%rbx,1),%rax
    183d:	f3 46 0f 11 14 18    	movss  %xmm10,(%rax,%r11,1)
    1843:	48 8b 05 e6 27 00 00 	mov    0x27e6(%rip),%rax        # 4030 <out>
    184a:	4a 8b 04 20          	mov    (%rax,%r12,1),%rax
    184e:	48 8b 04 18          	mov    (%rax,%rbx,1),%rax
    1852:	f3 0f 10 74 24 d8    	movss  -0x28(%rsp),%xmm6
    1858:	f3 42 0f 11 34 28    	movss  %xmm6,(%rax,%r13,1)
    185e:	48 8b 05 cb 27 00 00 	mov    0x27cb(%rip),%rax        # 4030 <out>
    1865:	4a 8b 04 38          	mov    (%rax,%r15,1),%rax
    1869:	48 8b 04 18          	mov    (%rax,%rbx,1),%rax
    186d:	f3 46 0f 11 3c 28    	movss  %xmm15,(%rax,%r13,1)
    1873:	48 8b 05 b6 27 00 00 	mov    0x27b6(%rip),%rax        # 4030 <out>
    187a:	4a 8b 04 38          	mov    (%rax,%r15,1),%rax
    187e:	48 8b 04 18          	mov    (%rax,%rbx,1),%rax
    1882:	f3 44 0f 11 0c 38    	movss  %xmm9,(%rax,%rdi,1)
    1888:	48 8b 05 a1 27 00 00 	mov    0x27a1(%rip),%rax        # 4030 <out>
    188f:	48 8b 04 28          	mov    (%rax,%rbp,1),%rax
    1893:	48 8b 04 18          	mov    (%rax,%rbx,1),%rax
    1897:	f3 46 0f 11 04 18    	movss  %xmm8,(%rax,%r11,1)
    189d:	48 8b 05 8c 27 00 00 	mov    0x278c(%rip),%rax        # 4030 <out>
    18a4:	4a 8b 04 20          	mov    (%rax,%r12,1),%rax
    18a8:	48 8b 04 18          	mov    (%rax,%rbx,1),%rax
    18ac:	f3 0f 11 3c 38       	movss  %xmm7,(%rax,%rdi,1)
    18b1:	49 83 c3 0c          	add    $0xc,%r11
    18b5:	48 83 44 24 e8 18    	addq   $0x18,-0x18(%rsp)
    18bb:	49 81 fb 00 02 00 00 	cmp    $0x200,%r11
    18c2:	0f 85 1e fd ff ff    	jne    15e6 <conv2d_default+0x3c>
    18c8:	41 b9 f8 01 00 00    	mov    $0x1f8,%r9d
    18ce:	48 8b 05 5b 27 00 00 	mov    0x275b(%rip),%rax        # 4030 <out>
    18d5:	48 8b 14 28          	mov    (%rax,%rbp,1),%rdx
    18d9:	4d 89 ca             	mov    %r9,%r10
    18dc:	4c 03 14 1a          	add    (%rdx,%rbx,1),%r10
    18e0:	f3 41 0f 10 22       	movss  (%r10),%xmm4
    18e5:	4a 8b 14 38          	mov    (%rax,%r15,1),%rdx
    18e9:	48 8b 14 1a          	mov    (%rdx,%rbx,1),%rdx
    18ed:	f3 42 0f 10 1c 0a    	movss  (%rdx,%r9,1),%xmm3
    18f3:	4a 8b 14 30          	mov    (%rax,%r14,1),%rdx
    18f7:	48 8b 14 1a          	mov    (%rdx,%rbx,1),%rdx
    18fb:	f3 42 0f 10 14 0a    	movss  (%rdx,%r9,1),%xmm2
    1901:	4a 8b 04 20          	mov    (%rax,%r12,1),%rax
    1905:	48 8b 04 18          	mov    (%rax,%rbx,1),%rax
    1909:	f3 42 0f 10 0c 08    	movss  (%rax,%r9,1),%xmm1
    190f:	48 8b 05 02 27 00 00 	mov    0x2702(%rip),%rax        # 4018 <filter>
    1916:	4e 8b 04 48          	mov    (%rax,%r9,2),%r8
    191a:	48 8b 05 ff 26 00 00 	mov    0x26ff(%rip),%rax        # 4020 <in>
    1921:	4a 8b 14 20          	mov    (%rax,%r12,1),%rdx
    1925:	48 8b 3c 1a          	mov    (%rdx,%rbx,1),%rdi
    1929:	4a 8b 14 30          	mov    (%rax,%r14,1),%rdx
    192d:	48 8b 34 1a          	mov    (%rdx,%rbx,1),%rsi
    1931:	4a 8b 14 38          	mov    (%rax,%r15,1),%rdx
    1935:	48 8b 0c 1a          	mov    (%rdx,%rbx,1),%rcx
    1939:	48 8b 04 28          	mov    (%rax,%rbp,1),%rax
    193d:	48 8b 14 18          	mov    (%rax,%rbx,1),%rdx
    1941:	b8 00 00 00 00       	mov    $0x0,%eax
    1946:	f3 41 0f 10 04 00    	movss  (%r8,%rax,1),%xmm0
    194c:	0f 28 e8             	movaps %xmm0,%xmm5
    194f:	f3 0f 59 2c 07       	mulss  (%rdi,%rax,1),%xmm5
    1954:	f3 0f 58 cd          	addss  %xmm5,%xmm1
    1958:	0f 28 e8             	movaps %xmm0,%xmm5
    195b:	f3 0f 59 2c 06       	mulss  (%rsi,%rax,1),%xmm5
    1960:	f3 0f 58 d5          	addss  %xmm5,%xmm2
    1964:	0f 28 e8             	movaps %xmm0,%xmm5
    1967:	f3 0f 59 2c 01       	mulss  (%rcx,%rax,1),%xmm5
    196c:	f3 0f 58 dd          	addss  %xmm5,%xmm3
    1970:	f3 0f 59 04 02       	mulss  (%rdx,%rax,1),%xmm0
    1975:	f3 0f 58 e0          	addss  %xmm0,%xmm4
    1979:	48 83 c0 04          	add    $0x4,%rax
    197d:	48 3d 00 04 00 00    	cmp    $0x400,%rax
    1983:	75 c1                	jne    1946 <conv2d_default+0x39c>
    1985:	f3 41 0f 11 22       	movss  %xmm4,(%r10)
    198a:	48 8b 05 9f 26 00 00 	mov    0x269f(%rip),%rax        # 4030 <out>
    1991:	4a 8b 04 38          	mov    (%rax,%r15,1),%rax
    1995:	48 8b 04 18          	mov    (%rax,%rbx,1),%rax
    1999:	f3 42 0f 11 1c 08    	movss  %xmm3,(%rax,%r9,1)
    199f:	48 8b 05 8a 26 00 00 	mov    0x268a(%rip),%rax        # 4030 <out>
    19a6:	4a 8b 04 30          	mov    (%rax,%r14,1),%rax
    19aa:	48 8b 04 18          	mov    (%rax,%rbx,1),%rax
    19ae:	f3 42 0f 11 14 08    	movss  %xmm2,(%rax,%r9,1)
    19b4:	48 8b 05 75 26 00 00 	mov    0x2675(%rip),%rax        # 4030 <out>
    19bb:	4a 8b 04 20          	mov    (%rax,%r12,1),%rax
    19bf:	48 8b 04 18          	mov    (%rax,%rbx,1),%rax
    19c3:	f3 42 0f 11 0c 08    	movss  %xmm1,(%rax,%r9,1)
    19c9:	49 83 c1 04          	add    $0x4,%r9
    19cd:	49 81 f9 00 02 00 00 	cmp    $0x200,%r9
    19d4:	0f 85 f4 fe ff ff    	jne    18ce <conv2d_default+0x324>
    19da:	e9 e7 fb ff ff       	jmp    15c6 <conv2d_default+0x1c>
    19df:	49 83 c7 20          	add    $0x20,%r15
    19e3:	49 81 ff b0 01 00 00 	cmp    $0x1b0,%r15
    19ea:	74 16                	je     1a02 <conv2d_default+0x458>
    19ec:	4d 8d 67 f0          	lea    -0x10(%r15),%r12
    19f0:	4d 8d 77 f8          	lea    -0x8(%r15),%r14
    19f4:	49 8d 6f 08          	lea    0x8(%r15),%rbp
    19f8:	bb 00 00 00 00       	mov    $0x0,%ebx
    19fd:	e9 d5 fb ff ff       	jmp    15d7 <conv2d_default+0x2d>
    1a02:	5b                   	pop    %rbx
    1a03:	5d                   	pop    %rbp
    1a04:	41 5c                	pop    %r12
    1a06:	41 5d                	pop    %r13
    1a08:	41 5e                	pop    %r14
    1a0a:	41 5f                	pop    %r15
    1a0c:	c3                   	ret    

0000000000001a0d <equal>:
    1a0d:	f3 0f 1e fa          	endbr64 
    1a11:	0f 28 d0             	movaps %xmm0,%xmm2
    1a14:	f3 0f 5c d1          	subss  %xmm1,%xmm2
    1a18:	f3 0f 10 1d 60 06 00 	movss  0x660(%rip),%xmm3        # 2080 <_IO_stdin_used+0x80>
    1a1f:	00 
    1a20:	0f 54 d3             	andps  %xmm3,%xmm2
    1a23:	66 0f ef c9          	pxor   %xmm1,%xmm1
    1a27:	f3 0f 5a ca          	cvtss2sd %xmm2,%xmm1
    1a2b:	0f 54 c3             	andps  %xmm3,%xmm0
    1a2e:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
    1a32:	f2 0f 5e c8          	divsd  %xmm0,%xmm1
    1a36:	f2 0f 10 05 52 06 00 	movsd  0x652(%rip),%xmm0        # 2090 <_IO_stdin_used+0x90>
    1a3d:	00 
    1a3e:	66 0f 2f c1          	comisd %xmm1,%xmm0
    1a42:	0f 96 c0             	setbe  %al
    1a45:	0f b6 c0             	movzbl %al,%eax
    1a48:	c3                   	ret    

0000000000001a49 <Compare_conv2d>:
    1a49:	f3 0f 1e fa          	endbr64 
    1a4d:	41 57                	push   %r15
    1a4f:	41 56                	push   %r14
    1a51:	41 55                	push   %r13
    1a53:	41 54                	push   %r12
    1a55:	55                   	push   %rbp
    1a56:	53                   	push   %rbx
    1a57:	48 83 ec 18          	sub    $0x18,%rsp
    1a5b:	b9 00 00 00 00       	mov    $0x0,%ecx
    1a60:	be 00 00 00 00       	mov    $0x0,%esi
    1a65:	41 b9 00 00 00 00    	mov    $0x0,%r9d
    1a6b:	4f 8d 14 09          	lea    (%r9,%r9,1),%r10
    1a6f:	b8 00 00 00 00       	mov    $0x0,%eax
    1a74:	48 8b 15 ad 25 00 00 	mov    0x25ad(%rip),%rdx        # 4028 <test>
    1a7b:	48 8b 14 0a          	mov    (%rdx,%rcx,1),%rdx
    1a7f:	4c 89 cb             	mov    %r9,%rbx
    1a82:	48 03 1c 32          	add    (%rdx,%rsi,1),%rbx
    1a86:	48 8b 3d 93 25 00 00 	mov    0x2593(%rip),%rdi        # 4020 <in>
    1a8d:	48 8b 3c 0f          	mov    (%rdi,%rcx,1),%rdi
    1a91:	4c 8b 04 37          	mov    (%rdi,%rsi,1),%r8
    1a95:	48 8b 3d 7c 25 00 00 	mov    0x257c(%rip),%rdi        # 4018 <filter>
    1a9c:	4a 8b 3c 17          	mov    (%rdi,%r10,1),%rdi
    1aa0:	f3 41 0f 10 04 00    	movss  (%r8,%rax,1),%xmm0
    1aa6:	f3 0f 59 04 07       	mulss  (%rdi,%rax,1),%xmm0
    1aab:	f3 0f 58 03          	addss  (%rbx),%xmm0
    1aaf:	f3 0f 11 03          	movss  %xmm0,(%rbx)
    1ab3:	48 83 c0 04          	add    $0x4,%rax
    1ab7:	48 3d 00 04 00 00    	cmp    $0x400,%rax
    1abd:	75 b5                	jne    1a74 <Compare_conv2d+0x2b>
    1abf:	49 83 c1 04          	add    $0x4,%r9
    1ac3:	49 81 f9 00 02 00 00 	cmp    $0x200,%r9
    1aca:	75 9f                	jne    1a6b <Compare_conv2d+0x22>
    1acc:	48 83 c6 08          	add    $0x8,%rsi
    1ad0:	48 81 fe a0 01 00 00 	cmp    $0x1a0,%rsi
    1ad7:	75 8c                	jne    1a65 <Compare_conv2d+0x1c>
    1ad9:	48 83 c1 08          	add    $0x8,%rcx
    1add:	48 81 f9 a0 01 00 00 	cmp    $0x1a0,%rcx
    1ae4:	0f 85 76 ff ff ff    	jne    1a60 <Compare_conv2d+0x17>
    1aea:	48 8b 05 37 25 00 00 	mov    0x2537(%rip),%rax        # 4028 <test>
    1af1:	48 89 04 24          	mov    %rax,(%rsp)
    1af5:	48 8b 05 34 25 00 00 	mov    0x2534(%rip),%rax        # 4030 <out>
    1afc:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    1b01:	bb 00 00 00 00       	mov    $0x0,%ebx
    1b06:	48 8b 04 24          	mov    (%rsp),%rax
    1b0a:	4c 8b 2c 18          	mov    (%rax,%rbx,1),%r13
    1b0e:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    1b13:	48 8b 04 18          	mov    (%rax,%rbx,1),%rax
    1b17:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
    1b1c:	bd 00 00 00 00       	mov    $0x0,%ebp
    1b21:	4d 8b 7c 2d 00       	mov    0x0(%r13,%rbp,1),%r15
    1b26:	48 8b 44 24 10       	mov    0x10(%rsp),%rax
    1b2b:	4c 8b 34 28          	mov    (%rax,%rbp,1),%r14
    1b2f:	41 bc 00 00 00 00    	mov    $0x0,%r12d
    1b35:	f3 43 0f 10 04 26    	movss  (%r14,%r12,1),%xmm0
    1b3b:	f3 43 0f 10 0c 27    	movss  (%r15,%r12,1),%xmm1
    1b41:	e8 c7 fe ff ff       	call   1a0d <equal>
    1b46:	66 83 f8 01          	cmp    $0x1,%ax
    1b4a:	74 2c                	je     1b78 <Compare_conv2d+0x12f>
    1b4c:	49 83 c4 04          	add    $0x4,%r12
    1b50:	49 81 fc 00 02 00 00 	cmp    $0x200,%r12
    1b57:	75 dc                	jne    1b35 <Compare_conv2d+0xec>
    1b59:	48 83 c5 08          	add    $0x8,%rbp
    1b5d:	48 81 fd a0 01 00 00 	cmp    $0x1a0,%rbp
    1b64:	75 bb                	jne    1b21 <Compare_conv2d+0xd8>
    1b66:	48 83 c3 08          	add    $0x8,%rbx
    1b6a:	48 81 fb a0 01 00 00 	cmp    $0x1a0,%rbx
    1b71:	75 93                	jne    1b06 <Compare_conv2d+0xbd>
    1b73:	b8 00 00 00 00       	mov    $0x0,%eax
    1b78:	48 83 c4 18          	add    $0x18,%rsp
    1b7c:	5b                   	pop    %rbx
    1b7d:	5d                   	pop    %rbp
    1b7e:	41 5c                	pop    %r12
    1b80:	41 5d                	pop    %r13
    1b82:	41 5e                	pop    %r14
    1b84:	41 5f                	pop    %r15
    1b86:	c3                   	ret    

0000000000001b87 <main>:
    1b87:	f3 0f 1e fa          	endbr64 
    1b8b:	53                   	push   %rbx
    1b8c:	48 81 ec 90 01 00 00 	sub    $0x190,%rsp
    1b93:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1b9a:	00 00 
    1b9c:	48 89 84 24 88 01 00 	mov    %rax,0x188(%rsp)
    1ba3:	00 
    1ba4:	31 c0                	xor    %eax,%eax
    1ba6:	48 8d b4 24 00 01 00 	lea    0x100(%rsp),%rsi
    1bad:	00 
    1bae:	48 8d 94 24 08 01 00 	lea    0x108(%rsp),%rdx
    1bb5:	00 
    1bb6:	b9 0f 00 00 00       	mov    $0xf,%ecx
    1bbb:	48 89 d7             	mov    %rdx,%rdi
    1bbe:	f3 48 ab             	rep stos %rax,%es:(%rdi)
    1bc1:	48 c7 84 24 00 01 00 	movq   $0x1,0x100(%rsp)
    1bc8:	00 01 00 00 00 
    1bcd:	48 89 f2             	mov    %rsi,%rdx
    1bd0:	be 80 00 00 00       	mov    $0x80,%esi
    1bd5:	bf 00 00 00 00       	mov    $0x0,%edi
    1bda:	e8 11 f5 ff ff       	call   10f0 <sched_setaffinity@plt>
    1bdf:	83 f8 ff             	cmp    $0xffffffff,%eax
    1be2:	0f 84 74 02 00 00    	je     1e5c <main+0x2d5>
    1be8:	b8 00 00 00 00       	mov    $0x0,%eax
    1bed:	e8 17 f6 ff ff       	call   1209 <conv2d_init>
    1bf2:	48 c7 44 24 40 04 00 	movq   $0x43540004,0x40(%rsp)
    1bf9:	54 43 
    1bfb:	48 c7 44 24 48 00 00 	movq   $0x0,0x48(%rsp)
    1c02:	00 00 
    1c04:	48 c7 44 24 50 00 00 	movq   $0x0,0x50(%rsp)
    1c0b:	00 00 
    1c0d:	48 c7 44 24 58 00 00 	movq   $0x0,0x58(%rsp)
    1c14:	00 00 
    1c16:	48 c7 44 24 60 00 00 	movq   $0x0,0x60(%rsp)
    1c1d:	00 00 
    1c1f:	48 c7 44 24 68 00 00 	movq   $0x0,0x68(%rsp)
    1c26:	00 00 
    1c28:	48 8d 44 24 40       	lea    0x40(%rsp),%rax
    1c2d:	bb 00 00 00 00       	mov    $0x0,%ebx
    1c32:	89 da                	mov    %ebx,%edx
    1c34:	48 c1 c7 03          	rol    $0x3,%rdi
    1c38:	48 c1 c7 0d          	rol    $0xd,%rdi
    1c3c:	48 c1 c7 3d          	rol    $0x3d,%rdi
    1c40:	48 c1 c7 33          	rol    $0x33,%rdi
    1c44:	48 87 db             	xchg   %rbx,%rbx
    1c47:	48 89 14 24          	mov    %rdx,(%rsp)
    1c4b:	48 8b 04 24          	mov    (%rsp),%rax
    1c4f:	48 c7 44 24 70 02 00 	movq   $0x43540002,0x70(%rsp)
    1c56:	54 43 
    1c58:	48 c7 44 24 78 00 00 	movq   $0x0,0x78(%rsp)
    1c5f:	00 00 
    1c61:	48 c7 84 24 80 00 00 	movq   $0x0,0x80(%rsp)
    1c68:	00 00 00 00 00 
    1c6d:	48 c7 84 24 88 00 00 	movq   $0x0,0x88(%rsp)
    1c74:	00 00 00 00 00 
    1c79:	48 c7 84 24 90 00 00 	movq   $0x0,0x90(%rsp)
    1c80:	00 00 00 00 00 
    1c85:	48 c7 84 24 98 00 00 	movq   $0x0,0x98(%rsp)
    1c8c:	00 00 00 00 00 
    1c91:	48 8d 44 24 70       	lea    0x70(%rsp),%rax
    1c96:	89 da                	mov    %ebx,%edx
    1c98:	48 c1 c7 03          	rol    $0x3,%rdi
    1c9c:	48 c1 c7 0d          	rol    $0xd,%rdi
    1ca0:	48 c1 c7 3d          	rol    $0x3d,%rdi
    1ca4:	48 c1 c7 33          	rol    $0x33,%rdi
    1ca8:	48 87 db             	xchg   %rbx,%rbx
    1cab:	48 89 54 24 08       	mov    %rdx,0x8(%rsp)
    1cb0:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    1cb5:	48 8d 74 24 20       	lea    0x20(%rsp),%rsi
    1cba:	bf 01 00 00 00       	mov    $0x1,%edi
    1cbf:	e8 0c f4 ff ff       	call   10d0 <clock_gettime@plt>
    1cc4:	b8 00 00 00 00       	mov    $0x0,%eax
    1cc9:	e8 dc f8 ff ff       	call   15aa <conv2d_default>
    1cce:	48 8d 74 24 30       	lea    0x30(%rsp),%rsi
    1cd3:	bf 01 00 00 00       	mov    $0x1,%edi
    1cd8:	e8 f3 f3 ff ff       	call   10d0 <clock_gettime@plt>
    1cdd:	48 c7 84 24 a0 00 00 	movq   $0x43540002,0xa0(%rsp)
    1ce4:	00 02 00 54 43 
    1ce9:	48 c7 84 24 a8 00 00 	movq   $0x0,0xa8(%rsp)
    1cf0:	00 00 00 00 00 
    1cf5:	48 c7 84 24 b0 00 00 	movq   $0x0,0xb0(%rsp)
    1cfc:	00 00 00 00 00 
    1d01:	48 c7 84 24 b8 00 00 	movq   $0x0,0xb8(%rsp)
    1d08:	00 00 00 00 00 
    1d0d:	48 c7 84 24 c0 00 00 	movq   $0x0,0xc0(%rsp)
    1d14:	00 00 00 00 00 
    1d19:	48 c7 84 24 c8 00 00 	movq   $0x0,0xc8(%rsp)
    1d20:	00 00 00 00 00 
    1d25:	48 8d 84 24 a0 00 00 	lea    0xa0(%rsp),%rax
    1d2c:	00 
    1d2d:	89 da                	mov    %ebx,%edx
    1d2f:	48 c1 c7 03          	rol    $0x3,%rdi
    1d33:	48 c1 c7 0d          	rol    $0xd,%rdi
    1d37:	48 c1 c7 3d          	rol    $0x3d,%rdi
    1d3b:	48 c1 c7 33          	rol    $0x33,%rdi
    1d3f:	48 87 db             	xchg   %rbx,%rbx
    1d42:	48 89 54 24 10       	mov    %rdx,0x10(%rsp)
    1d47:	48 8b 44 24 10       	mov    0x10(%rsp),%rax
    1d4c:	48 c7 84 24 d0 00 00 	movq   $0x43540005,0xd0(%rsp)
    1d53:	00 05 00 54 43 
    1d58:	48 c7 84 24 d8 00 00 	movq   $0x0,0xd8(%rsp)
    1d5f:	00 00 00 00 00 
    1d64:	48 c7 84 24 e0 00 00 	movq   $0x0,0xe0(%rsp)
    1d6b:	00 00 00 00 00 
    1d70:	48 c7 84 24 e8 00 00 	movq   $0x0,0xe8(%rsp)
    1d77:	00 00 00 00 00 
    1d7c:	48 c7 84 24 f0 00 00 	movq   $0x0,0xf0(%rsp)
    1d83:	00 00 00 00 00 
    1d88:	48 c7 84 24 f8 00 00 	movq   $0x0,0xf8(%rsp)
    1d8f:	00 00 00 00 00 
    1d94:	48 8d 84 24 d0 00 00 	lea    0xd0(%rsp),%rax
    1d9b:	00 
    1d9c:	89 da                	mov    %ebx,%edx
    1d9e:	48 c1 c7 03          	rol    $0x3,%rdi
    1da2:	48 c1 c7 0d          	rol    $0xd,%rdi
    1da6:	48 c1 c7 3d          	rol    $0x3d,%rdi
    1daa:	48 c1 c7 33          	rol    $0x33,%rdi
    1dae:	48 87 db             	xchg   %rbx,%rbx
    1db1:	48 89 54 24 18       	mov    %rdx,0x18(%rsp)
    1db6:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
    1dbb:	b8 00 00 00 00       	mov    $0x0,%eax
    1dc0:	e8 84 fc ff ff       	call   1a49 <Compare_conv2d>
    1dc5:	66 85 c0             	test   %ax,%ax
    1dc8:	0f 85 9f 00 00 00    	jne    1e6d <main+0x2e6>
    1dce:	48 8d 3d 66 02 00 00 	lea    0x266(%rip),%rdi        # 203b <_IO_stdin_used+0x3b>
    1dd5:	e8 e6 f2 ff ff       	call   10c0 <puts@plt>
    1dda:	48 8b 54 24 30       	mov    0x30(%rsp),%rdx
    1ddf:	48 2b 54 24 20       	sub    0x20(%rsp),%rdx
    1de4:	48 69 d2 00 ca 9a 3b 	imul   $0x3b9aca00,%rdx,%rdx
    1deb:	48 03 54 24 38       	add    0x38(%rsp),%rdx
    1df0:	48 2b 54 24 28       	sub    0x28(%rsp),%rdx
    1df5:	48 8d 35 61 02 00 00 	lea    0x261(%rip),%rsi        # 205d <_IO_stdin_used+0x5d>
    1dfc:	bf 01 00 00 00       	mov    $0x1,%edi
    1e01:	b8 00 00 00 00       	mov    $0x0,%eax
    1e06:	e8 f5 f2 ff ff       	call   1100 <__printf_chk@plt>
    1e0b:	48 8b 3d 1e 22 00 00 	mov    0x221e(%rip),%rdi        # 4030 <out>
    1e12:	e8 99 f2 ff ff       	call   10b0 <free@plt>
    1e17:	48 8b 3d 0a 22 00 00 	mov    0x220a(%rip),%rdi        # 4028 <test>
    1e1e:	e8 8d f2 ff ff       	call   10b0 <free@plt>
    1e23:	48 8b 3d f6 21 00 00 	mov    0x21f6(%rip),%rdi        # 4020 <in>
    1e2a:	e8 81 f2 ff ff       	call   10b0 <free@plt>
    1e2f:	48 8b 3d e2 21 00 00 	mov    0x21e2(%rip),%rdi        # 4018 <filter>
    1e36:	e8 75 f2 ff ff       	call   10b0 <free@plt>
    1e3b:	48 8b 84 24 88 01 00 	mov    0x188(%rsp),%rax
    1e42:	00 
    1e43:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    1e4a:	00 00 
    1e4c:	75 30                	jne    1e7e <main+0x2f7>
    1e4e:	b8 00 00 00 00       	mov    $0x0,%eax
    1e53:	48 81 c4 90 01 00 00 	add    $0x190,%rsp
    1e5a:	5b                   	pop    %rbx
    1e5b:	c3                   	ret    
    1e5c:	48 8d 3d a5 01 00 00 	lea    0x1a5(%rip),%rdi        # 2008 <_IO_stdin_used+0x8>
    1e63:	e8 58 f2 ff ff       	call   10c0 <puts@plt>
    1e68:	e9 7b fd ff ff       	jmp    1be8 <main+0x61>
    1e6d:	48 8d 3d d7 01 00 00 	lea    0x1d7(%rip),%rdi        # 204b <_IO_stdin_used+0x4b>
    1e74:	e8 47 f2 ff ff       	call   10c0 <puts@plt>
    1e79:	e9 5c ff ff ff       	jmp    1dda <main+0x253>
    1e7e:	e8 5d f2 ff ff       	call   10e0 <__stack_chk_fail@plt>

Disassembly of section .fini:

0000000000001e84 <_fini>:
    1e84:	f3 0f 1e fa          	endbr64 
    1e88:	48 83 ec 08          	sub    $0x8,%rsp
    1e8c:	48 83 c4 08          	add    $0x8,%rsp
    1e90:	c3                   	ret    
