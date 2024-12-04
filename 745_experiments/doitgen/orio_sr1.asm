
doitgen/orio_sr1:     file format elf64-x86-64


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
    1118:	48 8d 3d a7 09 00 00 	lea    0x9a7(%rip),%rdi        # 1ac6 <main>
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

00000000000011e9 <doitgen_init>:
    11e9:	f3 0f 1e fa          	endbr64 
    11ed:	41 57                	push   %r15
    11ef:	41 56                	push   %r14
    11f1:	41 55                	push   %r13
    11f3:	41 54                	push   %r12
    11f5:	55                   	push   %rbp
    11f6:	53                   	push   %rbx
    11f7:	48 81 ec 88 00 00 00 	sub    $0x88,%rsp
    11fe:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1205:	00 00 
    1207:	48 89 44 24 78       	mov    %rax,0x78(%rsp)
    120c:	31 c0                	xor    %eax,%eax
    120e:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
    1213:	ba 00 02 00 00       	mov    $0x200,%edx
    1218:	be 40 00 00 00       	mov    $0x40,%esi
    121d:	e8 ce fe ff ff       	call   10f0 <posix_memalign@plt>
    1222:	85 c0                	test   %eax,%eax
    1224:	b8 00 00 00 00       	mov    $0x0,%eax
    1229:	48 0f 44 44 24 30    	cmove  0x30(%rsp),%rax
    122f:	48 89 05 fa 2d 00 00 	mov    %rax,0x2dfa(%rip)        # 4030 <A>
    1236:	48 8d 7c 24 28       	lea    0x28(%rsp),%rdi
    123b:	ba 00 02 00 00       	mov    $0x200,%edx
    1240:	be 40 00 00 00       	mov    $0x40,%esi
    1245:	e8 a6 fe ff ff       	call   10f0 <posix_memalign@plt>
    124a:	85 c0                	test   %eax,%eax
    124c:	b8 00 00 00 00       	mov    $0x0,%eax
    1251:	48 0f 44 44 24 28    	cmove  0x28(%rsp),%rax
    1257:	48 89 05 c2 2d 00 00 	mov    %rax,0x2dc2(%rip)        # 4020 <out>
    125e:	48 8d 7c 24 20       	lea    0x20(%rsp),%rdi
    1263:	ba 00 02 00 00       	mov    $0x200,%edx
    1268:	be 40 00 00 00       	mov    $0x40,%esi
    126d:	e8 7e fe ff ff       	call   10f0 <posix_memalign@plt>
    1272:	85 c0                	test   %eax,%eax
    1274:	b8 00 00 00 00       	mov    $0x0,%eax
    1279:	48 0f 44 44 24 20    	cmove  0x20(%rsp),%rax
    127f:	48 89 05 92 2d 00 00 	mov    %rax,0x2d92(%rip)        # 4018 <test>
    1286:	48 c7 44 24 10 00 00 	movq   $0x0,0x10(%rsp)
    128d:	00 00 
    128f:	48 8d 44 24 48       	lea    0x48(%rsp),%rax
    1294:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    1299:	41 bd 00 00 00 00    	mov    $0x0,%r13d
    129f:	48 8b 44 24 10       	mov    0x10(%rsp),%rax
    12a4:	89 c3                	mov    %eax,%ebx
    12a6:	48 8d 2c c5 00 00 00 	lea    0x0(,%rax,8),%rbp
    12ad:	00 
    12ae:	49 89 ec             	mov    %rbp,%r12
    12b1:	4c 03 25 78 2d 00 00 	add    0x2d78(%rip),%r12        # 4030 <A>
    12b8:	ba 00 02 00 00       	mov    $0x200,%edx
    12bd:	be 40 00 00 00       	mov    $0x40,%esi
    12c2:	48 8b 7c 24 18       	mov    0x18(%rsp),%rdi
    12c7:	e8 24 fe ff ff       	call   10f0 <posix_memalign@plt>
    12cc:	85 c0                	test   %eax,%eax
    12ce:	4c 89 e8             	mov    %r13,%rax
    12d1:	48 0f 44 44 24 48    	cmove  0x48(%rsp),%rax
    12d7:	49 89 04 24          	mov    %rax,(%r12)
    12db:	49 89 ec             	mov    %rbp,%r12
    12de:	4c 03 25 3b 2d 00 00 	add    0x2d3b(%rip),%r12        # 4020 <out>
    12e5:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
    12ea:	ba 00 02 00 00       	mov    $0x200,%edx
    12ef:	be 40 00 00 00       	mov    $0x40,%esi
    12f4:	e8 f7 fd ff ff       	call   10f0 <posix_memalign@plt>
    12f9:	85 c0                	test   %eax,%eax
    12fb:	4c 89 e8             	mov    %r13,%rax
    12fe:	48 0f 44 44 24 40    	cmove  0x40(%rsp),%rax
    1304:	49 89 04 24          	mov    %rax,(%r12)
    1308:	49 89 ec             	mov    %rbp,%r12
    130b:	4c 03 25 06 2d 00 00 	add    0x2d06(%rip),%r12        # 4018 <test>
    1312:	48 8d 7c 24 38       	lea    0x38(%rsp),%rdi
    1317:	ba 00 02 00 00       	mov    $0x200,%edx
    131c:	be 40 00 00 00       	mov    $0x40,%esi
    1321:	e8 ca fd ff ff       	call   10f0 <posix_memalign@plt>
    1326:	85 c0                	test   %eax,%eax
    1328:	4c 89 e8             	mov    %r13,%rax
    132b:	48 0f 44 44 24 38    	cmove  0x38(%rsp),%rax
    1331:	49 89 04 24          	mov    %rax,(%r12)
    1335:	44 8d 63 40          	lea    0x40(%rbx),%r12d
    1339:	bb 00 00 00 00       	mov    $0x0,%ebx
    133e:	4c 8d 7c 24 60       	lea    0x60(%rsp),%r15
    1343:	48 8d 44 24 58       	lea    0x58(%rsp),%rax
    1348:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    134d:	48 8b 05 dc 2c 00 00 	mov    0x2cdc(%rip),%rax        # 4030 <A>
    1354:	49 89 de             	mov    %rbx,%r14
    1357:	4c 03 34 28          	add    (%rax,%rbp,1),%r14
    135b:	ba 00 01 00 00       	mov    $0x100,%edx
    1360:	be 40 00 00 00       	mov    $0x40,%esi
    1365:	4c 89 ff             	mov    %r15,%rdi
    1368:	e8 83 fd ff ff       	call   10f0 <posix_memalign@plt>
    136d:	85 c0                	test   %eax,%eax
    136f:	4c 89 e8             	mov    %r13,%rax
    1372:	48 0f 44 44 24 60    	cmove  0x60(%rsp),%rax
    1378:	49 89 06             	mov    %rax,(%r14)
    137b:	48 8b 05 9e 2c 00 00 	mov    0x2c9e(%rip),%rax        # 4020 <out>
    1382:	49 89 de             	mov    %rbx,%r14
    1385:	4c 03 34 28          	add    (%rax,%rbp,1),%r14
    1389:	ba 00 01 00 00       	mov    $0x100,%edx
    138e:	be 40 00 00 00       	mov    $0x40,%esi
    1393:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
    1398:	e8 53 fd ff ff       	call   10f0 <posix_memalign@plt>
    139d:	85 c0                	test   %eax,%eax
    139f:	4c 89 e8             	mov    %r13,%rax
    13a2:	48 0f 44 44 24 58    	cmove  0x58(%rsp),%rax
    13a8:	49 89 06             	mov    %rax,(%r14)
    13ab:	48 8b 05 66 2c 00 00 	mov    0x2c66(%rip),%rax        # 4018 <test>
    13b2:	49 89 de             	mov    %rbx,%r14
    13b5:	4c 03 34 28          	add    (%rax,%rbp,1),%r14
    13b9:	48 8d 7c 24 50       	lea    0x50(%rsp),%rdi
    13be:	ba 00 01 00 00       	mov    $0x100,%edx
    13c3:	be 40 00 00 00       	mov    $0x40,%esi
    13c8:	e8 23 fd ff ff       	call   10f0 <posix_memalign@plt>
    13cd:	85 c0                	test   %eax,%eax
    13cf:	4c 89 e8             	mov    %r13,%rax
    13d2:	48 0f 44 44 24 50    	cmove  0x50(%rsp),%rax
    13d8:	49 89 06             	mov    %rax,(%r14)
    13db:	41 8d 54 24 c0       	lea    -0x40(%r12),%edx
    13e0:	b9 00 00 00 00       	mov    $0x0,%ecx
    13e5:	48 8b 05 44 2c 00 00 	mov    0x2c44(%rip),%rax        # 4030 <A>
    13ec:	48 8b 04 28          	mov    (%rax,%rbp,1),%rax
    13f0:	48 8b 34 18          	mov    (%rax,%rbx,1),%rsi
    13f4:	48 63 c2             	movslq %edx,%rax
    13f7:	48 69 c0 93 24 49 92 	imul   $0xffffffff92492493,%rax,%rax
    13fe:	48 c1 e8 20          	shr    $0x20,%rax
    1402:	01 d0                	add    %edx,%eax
    1404:	c1 f8 02             	sar    $0x2,%eax
    1407:	89 d7                	mov    %edx,%edi
    1409:	c1 ff 1f             	sar    $0x1f,%edi
    140c:	29 f8                	sub    %edi,%eax
    140e:	8d 3c c5 00 00 00 00 	lea    0x0(,%rax,8),%edi
    1415:	29 c7                	sub    %eax,%edi
    1417:	89 d0                	mov    %edx,%eax
    1419:	29 f8                	sub    %edi,%eax
    141b:	66 0f ef c0          	pxor   %xmm0,%xmm0
    141f:	f3 0f 2a c0          	cvtsi2ss %eax,%xmm0
    1423:	f3 0f 58 05 15 0c 00 	addss  0xc15(%rip),%xmm0        # 2040 <_IO_stdin_used+0x40>
    142a:	00 
    142b:	f3 0f 11 04 0e       	movss  %xmm0,(%rsi,%rcx,1)
    1430:	83 c2 01             	add    $0x1,%edx
    1433:	48 83 c1 04          	add    $0x4,%rcx
    1437:	44 39 e2             	cmp    %r12d,%edx
    143a:	75 a9                	jne    13e5 <doitgen_init+0x1fc>
    143c:	b8 00 00 00 00       	mov    $0x0,%eax
    1441:	48 8b 15 d8 2b 00 00 	mov    0x2bd8(%rip),%rdx        # 4020 <out>
    1448:	48 8b 14 2a          	mov    (%rdx,%rbp,1),%rdx
    144c:	48 8b 14 1a          	mov    (%rdx,%rbx,1),%rdx
    1450:	c7 04 02 00 00 00 00 	movl   $0x0,(%rdx,%rax,1)
    1457:	48 8b 15 ba 2b 00 00 	mov    0x2bba(%rip),%rdx        # 4018 <test>
    145e:	48 8b 14 2a          	mov    (%rdx,%rbp,1),%rdx
    1462:	48 8b 14 1a          	mov    (%rdx,%rbx,1),%rdx
    1466:	c7 04 02 00 00 00 00 	movl   $0x0,(%rdx,%rax,1)
    146d:	48 83 c0 04          	add    $0x4,%rax
    1471:	48 3d 00 01 00 00    	cmp    $0x100,%rax
    1477:	75 c8                	jne    1441 <doitgen_init+0x258>
    1479:	48 83 c3 08          	add    $0x8,%rbx
    147d:	41 83 c4 01          	add    $0x1,%r12d
    1481:	48 81 fb 00 02 00 00 	cmp    $0x200,%rbx
    1488:	0f 85 bf fe ff ff    	jne    134d <doitgen_init+0x164>
    148e:	48 83 44 24 10 01    	addq   $0x1,0x10(%rsp)
    1494:	48 8b 44 24 10       	mov    0x10(%rsp),%rax
    1499:	48 83 f8 40          	cmp    $0x40,%rax
    149d:	0f 85 fc fd ff ff    	jne    129f <doitgen_init+0xb6>
    14a3:	48 8d 7c 24 68       	lea    0x68(%rsp),%rdi
    14a8:	ba 00 02 00 00       	mov    $0x200,%edx
    14ad:	be 40 00 00 00       	mov    $0x40,%esi
    14b2:	e8 39 fc ff ff       	call   10f0 <posix_memalign@plt>
    14b7:	85 c0                	test   %eax,%eax
    14b9:	b8 00 00 00 00       	mov    $0x0,%eax
    14be:	48 0f 44 44 24 68    	cmove  0x68(%rsp),%rax
    14c4:	48 89 05 5d 2b 00 00 	mov    %rax,0x2b5d(%rip)        # 4028 <C>
    14cb:	bb 00 00 00 00       	mov    $0x0,%ebx
    14d0:	4c 8d 64 24 70       	lea    0x70(%rsp),%r12
    14d5:	48 8d 2c dd 00 00 00 	lea    0x0(,%rbx,8),%rbp
    14dc:	00 
    14dd:	49 89 ed             	mov    %rbp,%r13
    14e0:	4c 03 2d 41 2b 00 00 	add    0x2b41(%rip),%r13        # 4028 <C>
    14e7:	ba 00 01 00 00       	mov    $0x100,%edx
    14ec:	be 40 00 00 00       	mov    $0x40,%esi
    14f1:	4c 89 e7             	mov    %r12,%rdi
    14f4:	e8 f7 fb ff ff       	call   10f0 <posix_memalign@plt>
    14f9:	85 c0                	test   %eax,%eax
    14fb:	b8 00 00 00 00       	mov    $0x0,%eax
    1500:	48 0f 44 44 24 70    	cmove  0x70(%rsp),%rax
    1506:	49 89 45 00          	mov    %rax,0x0(%r13)
    150a:	b9 00 00 00 00       	mov    $0x0,%ecx
    150f:	48 8b 05 12 2b 00 00 	mov    0x2b12(%rip),%rax        # 4028 <C>
    1516:	48 8b 34 28          	mov    (%rax,%rbp,1),%rsi
    151a:	8d 14 19             	lea    (%rcx,%rbx,1),%edx
    151d:	48 63 c2             	movslq %edx,%rax
    1520:	48 69 c0 67 66 66 66 	imul   $0x66666667,%rax,%rax
    1527:	48 c1 f8 21          	sar    $0x21,%rax
    152b:	89 d7                	mov    %edx,%edi
    152d:	c1 ff 1f             	sar    $0x1f,%edi
    1530:	29 f8                	sub    %edi,%eax
    1532:	8d 04 80             	lea    (%rax,%rax,4),%eax
    1535:	29 c2                	sub    %eax,%edx
    1537:	29 ca                	sub    %ecx,%edx
    1539:	66 0f ef c0          	pxor   %xmm0,%xmm0
    153d:	f3 0f 2a c2          	cvtsi2ss %edx,%xmm0
    1541:	f3 0f 11 04 8e       	movss  %xmm0,(%rsi,%rcx,4)
    1546:	48 83 c1 01          	add    $0x1,%rcx
    154a:	48 83 f9 40          	cmp    $0x40,%rcx
    154e:	75 bf                	jne    150f <doitgen_init+0x326>
    1550:	48 83 c3 01          	add    $0x1,%rbx
    1554:	48 83 fb 40          	cmp    $0x40,%rbx
    1558:	0f 85 77 ff ff ff    	jne    14d5 <doitgen_init+0x2ec>
    155e:	48 8b 44 24 78       	mov    0x78(%rsp),%rax
    1563:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    156a:	00 00 
    156c:	75 12                	jne    1580 <doitgen_init+0x397>
    156e:	48 81 c4 88 00 00 00 	add    $0x88,%rsp
    1575:	5b                   	pop    %rbx
    1576:	5d                   	pop    %rbp
    1577:	41 5c                	pop    %r12
    1579:	41 5d                	pop    %r13
    157b:	41 5e                	pop    %r14
    157d:	41 5f                	pop    %r15
    157f:	c3                   	ret    
    1580:	e8 4b fb ff ff       	call   10d0 <__stack_chk_fail@plt>

0000000000001585 <doitgen>:
    1585:	f3 0f 1e fa          	endbr64 
    1589:	41 57                	push   %r15
    158b:	41 56                	push   %r14
    158d:	41 55                	push   %r13
    158f:	41 54                	push   %r12
    1591:	55                   	push   %rbp
    1592:	53                   	push   %rbx
    1593:	41 bf 10 00 00 00    	mov    $0x10,%r15d
    1599:	4d 89 fe             	mov    %r15,%r14
    159c:	e9 db 03 00 00       	jmp    197c <doitgen+0x3f7>
    15a1:	48 8b 05 78 2a 00 00 	mov    0x2a78(%rip),%rax        # 4020 <out>
    15a8:	4a 8b 14 38          	mov    (%rax,%r15,1),%rdx
    15ac:	4e 8b 14 22          	mov    (%rdx,%r12,1),%r10
    15b0:	f3 41 0f 10 a2 fc 00 	movss  0xfc(%r10),%xmm4
    15b7:	00 00 
    15b9:	4a 8b 14 30          	mov    (%rax,%r14,1),%rdx
    15bd:	4a 8b 14 22          	mov    (%rdx,%r12,1),%rdx
    15c1:	f3 0f 10 9a fc 00 00 	movss  0xfc(%rdx),%xmm3
    15c8:	00 
    15c9:	4a 8b 14 28          	mov    (%rax,%r13,1),%rdx
    15cd:	4a 8b 14 22          	mov    (%rdx,%r12,1),%rdx
    15d1:	f3 0f 10 92 fc 00 00 	movss  0xfc(%rdx),%xmm2
    15d8:	00 
    15d9:	48 8b 04 08          	mov    (%rax,%rcx,1),%rax
    15dd:	4a 8b 04 20          	mov    (%rax,%r12,1),%rax
    15e1:	f3 0f 10 88 fc 00 00 	movss  0xfc(%rax),%xmm1
    15e8:	00 
    15e9:	4c 8b 0d 38 2a 00 00 	mov    0x2a38(%rip),%r9        # 4028 <C>
    15f0:	48 8b 05 39 2a 00 00 	mov    0x2a39(%rip),%rax        # 4030 <A>
    15f7:	48 8b 14 08          	mov    (%rax,%rcx,1),%rdx
    15fb:	4e 8b 04 22          	mov    (%rdx,%r12,1),%r8
    15ff:	4a 8b 14 28          	mov    (%rax,%r13,1),%rdx
    1603:	4a 8b 3c 22          	mov    (%rdx,%r12,1),%rdi
    1607:	4a 8b 14 30          	mov    (%rax,%r14,1),%rdx
    160b:	4a 8b 34 22          	mov    (%rdx,%r12,1),%rsi
    160f:	4a 8b 04 38          	mov    (%rax,%r15,1),%rax
    1613:	4a 8b 0c 20          	mov    (%rax,%r12,1),%rcx
    1617:	b8 00 00 00 00       	mov    $0x0,%eax
    161c:	49 8b 14 41          	mov    (%r9,%rax,2),%rdx
    1620:	f3 0f 10 82 fc 00 00 	movss  0xfc(%rdx),%xmm0
    1627:	00 
    1628:	0f 28 e8             	movaps %xmm0,%xmm5
    162b:	f3 41 0f 59 2c 00    	mulss  (%r8,%rax,1),%xmm5
    1631:	f3 0f 58 cd          	addss  %xmm5,%xmm1
    1635:	0f 28 e8             	movaps %xmm0,%xmm5
    1638:	f3 0f 59 2c 07       	mulss  (%rdi,%rax,1),%xmm5
    163d:	f3 0f 58 d5          	addss  %xmm5,%xmm2
    1641:	0f 28 e8             	movaps %xmm0,%xmm5
    1644:	f3 0f 59 2c 06       	mulss  (%rsi,%rax,1),%xmm5
    1649:	f3 0f 58 dd          	addss  %xmm5,%xmm3
    164d:	f3 0f 59 04 01       	mulss  (%rcx,%rax,1),%xmm0
    1652:	f3 0f 58 e0          	addss  %xmm0,%xmm4
    1656:	48 83 c0 04          	add    $0x4,%rax
    165a:	48 3d 00 01 00 00    	cmp    $0x100,%rax
    1660:	75 ba                	jne    161c <doitgen+0x97>
    1662:	f3 41 0f 11 a2 fc 00 	movss  %xmm4,0xfc(%r10)
    1669:	00 00 
    166b:	48 8b 05 ae 29 00 00 	mov    0x29ae(%rip),%rax        # 4020 <out>
    1672:	4a 8b 14 30          	mov    (%rax,%r14,1),%rdx
    1676:	4a 8b 14 22          	mov    (%rdx,%r12,1),%rdx
    167a:	f3 0f 11 9a fc 00 00 	movss  %xmm3,0xfc(%rdx)
    1681:	00 
    1682:	4a 8b 14 28          	mov    (%rax,%r13,1),%rdx
    1686:	4a 8b 14 22          	mov    (%rdx,%r12,1),%rdx
    168a:	f3 0f 11 92 fc 00 00 	movss  %xmm2,0xfc(%rdx)
    1691:	00 
    1692:	48 8b 4c 24 f0       	mov    -0x10(%rsp),%rcx
    1697:	48 8b 04 08          	mov    (%rax,%rcx,1),%rax
    169b:	4a 8b 04 20          	mov    (%rax,%r12,1),%rax
    169f:	f3 0f 11 88 fc 00 00 	movss  %xmm1,0xfc(%rax)
    16a6:	00 
    16a7:	49 83 c4 08          	add    $0x8,%r12
    16ab:	49 81 fc 00 02 00 00 	cmp    $0x200,%r12
    16b2:	0f 84 b7 02 00 00    	je     196f <doitgen+0x3ea>
    16b8:	be 08 00 00 00       	mov    $0x8,%esi
    16bd:	48 8b 05 5c 29 00 00 	mov    0x295c(%rip),%rax        # 4020 <out>
    16c4:	48 8b 4c 24 f0       	mov    -0x10(%rsp),%rcx
    16c9:	48 8b 14 08          	mov    (%rax,%rcx,1),%rdx
    16cd:	4a 8b 14 22          	mov    (%rdx,%r12,1),%rdx
    16d1:	48 8d 1c 32          	lea    (%rdx,%rsi,1),%rbx
    16d5:	48 89 5c 24 f8       	mov    %rbx,-0x8(%rsp)
    16da:	f3 44 0f 10 3b       	movss  (%rbx),%xmm15
    16df:	4a 8b 0c 28          	mov    (%rax,%r13,1),%rcx
    16e3:	4e 8b 0c 21          	mov    (%rcx,%r12,1),%r9
    16e7:	48 8d 7e fc          	lea    -0x4(%rsi),%rdi
    16eb:	f3 45 0f 10 74 31 fc 	movss  -0x4(%r9,%rsi,1),%xmm14
    16f2:	4a 8b 0c 38          	mov    (%rax,%r15,1),%rcx
    16f6:	4a 8b 0c 21          	mov    (%rcx,%r12,1),%rcx
    16fa:	4c 8d 46 f8          	lea    -0x8(%rsi),%r8
    16fe:	f3 44 0f 10 6c 31 f8 	movss  -0x8(%rcx,%rsi,1),%xmm13
    1705:	f3 45 0f 10 64 31 f8 	movss  -0x8(%r9,%rsi,1),%xmm12
    170c:	4a 8b 04 30          	mov    (%rax,%r14,1),%rax
    1710:	4a 8b 04 20          	mov    (%rax,%r12,1),%rax
    1714:	f3 44 0f 10 1c 30    	movss  (%rax,%rsi,1),%xmm11
    171a:	f3 44 0f 10 54 31 fc 	movss  -0x4(%rcx,%rsi,1),%xmm10
    1721:	f3 45 0f 10 0c 31    	movss  (%r9,%rsi,1),%xmm9
    1727:	f3 44 0f 10 44 32 f8 	movss  -0x8(%rdx,%rsi,1),%xmm8
    172e:	f3 0f 10 7c 30 f8    	movss  -0x8(%rax,%rsi,1),%xmm7
    1734:	f3 0f 10 74 30 fc    	movss  -0x4(%rax,%rsi,1),%xmm6
    173a:	f3 0f 10 14 31       	movss  (%rcx,%rsi,1),%xmm2
    173f:	f3 0f 11 54 24 e8    	movss  %xmm2,-0x18(%rsp)
    1745:	f3 0f 10 5c 32 fc    	movss  -0x4(%rdx,%rsi,1),%xmm3
    174b:	f3 0f 11 5c 24 e4    	movss  %xmm3,-0x1c(%rsp)
    1751:	48 8b 05 d8 28 00 00 	mov    0x28d8(%rip),%rax        # 4030 <A>
    1758:	4a 8b 14 28          	mov    (%rax,%r13,1),%rdx
    175c:	4a 8b 2c 22          	mov    (%rdx,%r12,1),%rbp
    1760:	48 8b 1d c1 28 00 00 	mov    0x28c1(%rip),%rbx        # 4028 <C>
    1767:	4a 8b 14 38          	mov    (%rax,%r15,1),%rdx
    176b:	4e 8b 1c 22          	mov    (%rdx,%r12,1),%r11
    176f:	4a 8b 14 30          	mov    (%rax,%r14,1),%rdx
    1773:	4e 8b 14 22          	mov    (%rdx,%r12,1),%r10
    1777:	48 8b 4c 24 f0       	mov    -0x10(%rsp),%rcx
    177c:	48 8b 04 08          	mov    (%rax,%rcx,1),%rax
    1780:	4e 8b 0c 20          	mov    (%rax,%r12,1),%r9
    1784:	b8 00 00 00 00       	mov    $0x0,%eax
    1789:	f3 0f 11 74 24 ec    	movss  %xmm6,-0x14(%rsp)
    178f:	f3 0f 10 54 05 00    	movss  0x0(%rbp,%rax,1),%xmm2
    1795:	48 8b 14 43          	mov    (%rbx,%rax,2),%rdx
    1799:	f3 42 0f 10 2c 02    	movss  (%rdx,%r8,1),%xmm5
    179f:	f3 0f 10 04 3a       	movss  (%rdx,%rdi,1),%xmm0
    17a4:	f3 41 0f 10 0c 02    	movss  (%r10,%rax,1),%xmm1
    17aa:	f3 41 0f 10 1c 01    	movss  (%r9,%rax,1),%xmm3
    17b0:	f3 0f 10 24 32       	movss  (%rdx,%rsi,1),%xmm4
    17b5:	0f 28 f5             	movaps %xmm5,%xmm6
    17b8:	f3 0f 59 f3          	mulss  %xmm3,%xmm6
    17bc:	f3 44 0f 58 c6       	addss  %xmm6,%xmm8
    17c1:	0f 28 f2             	movaps %xmm2,%xmm6
    17c4:	f3 0f 59 f5          	mulss  %xmm5,%xmm6
    17c8:	f3 44 0f 58 e6       	addss  %xmm6,%xmm12
    17cd:	0f 28 f5             	movaps %xmm5,%xmm6
    17d0:	f3 0f 59 f1          	mulss  %xmm1,%xmm6
    17d4:	f3 0f 58 fe          	addss  %xmm6,%xmm7
    17d8:	f3 41 0f 59 2c 03    	mulss  (%r11,%rax,1),%xmm5
    17de:	f3 44 0f 58 ed       	addss  %xmm5,%xmm13
    17e3:	0f 28 e8             	movaps %xmm0,%xmm5
    17e6:	f3 0f 59 eb          	mulss  %xmm3,%xmm5
    17ea:	f3 0f 58 6c 24 e4    	addss  -0x1c(%rsp),%xmm5
    17f0:	f3 0f 11 6c 24 e4    	movss  %xmm5,-0x1c(%rsp)
    17f6:	0f 28 ea             	movaps %xmm2,%xmm5
    17f9:	f3 0f 59 e8          	mulss  %xmm0,%xmm5
    17fd:	f3 44 0f 58 f5       	addss  %xmm5,%xmm14
    1802:	0f 28 e8             	movaps %xmm0,%xmm5
    1805:	f3 0f 59 e9          	mulss  %xmm1,%xmm5
    1809:	f3 0f 58 6c 24 ec    	addss  -0x14(%rsp),%xmm5
    180f:	f3 0f 11 6c 24 ec    	movss  %xmm5,-0x14(%rsp)
    1815:	f3 41 0f 59 04 03    	mulss  (%r11,%rax,1),%xmm0
    181b:	f3 44 0f 58 d0       	addss  %xmm0,%xmm10
    1820:	f3 0f 59 dc          	mulss  %xmm4,%xmm3
    1824:	f3 44 0f 58 fb       	addss  %xmm3,%xmm15
    1829:	f3 0f 59 d4          	mulss  %xmm4,%xmm2
    182d:	f3 44 0f 58 ca       	addss  %xmm2,%xmm9
    1832:	f3 0f 59 cc          	mulss  %xmm4,%xmm1
    1836:	f3 44 0f 58 d9       	addss  %xmm1,%xmm11
    183b:	f3 41 0f 59 24 03    	mulss  (%r11,%rax,1),%xmm4
    1841:	0f 28 c4             	movaps %xmm4,%xmm0
    1844:	f3 0f 58 44 24 e8    	addss  -0x18(%rsp),%xmm0
    184a:	f3 0f 11 44 24 e8    	movss  %xmm0,-0x18(%rsp)
    1850:	48 83 c0 04          	add    $0x4,%rax
    1854:	48 3d 00 01 00 00    	cmp    $0x100,%rax
    185a:	0f 85 2f ff ff ff    	jne    178f <doitgen+0x20a>
    1860:	48 8b 44 24 f8       	mov    -0x8(%rsp),%rax
    1865:	f3 44 0f 11 38       	movss  %xmm15,(%rax)
    186a:	48 8b 05 af 27 00 00 	mov    0x27af(%rip),%rax        # 4020 <out>
    1871:	4a 8b 04 28          	mov    (%rax,%r13,1),%rax
    1875:	4a 8b 04 20          	mov    (%rax,%r12,1),%rax
    1879:	f3 44 0f 11 34 38    	movss  %xmm14,(%rax,%rdi,1)
    187f:	48 8b 05 9a 27 00 00 	mov    0x279a(%rip),%rax        # 4020 <out>
    1886:	4a 8b 04 38          	mov    (%rax,%r15,1),%rax
    188a:	4a 8b 04 20          	mov    (%rax,%r12,1),%rax
    188e:	f3 46 0f 11 2c 00    	movss  %xmm13,(%rax,%r8,1)
    1894:	48 8b 05 85 27 00 00 	mov    0x2785(%rip),%rax        # 4020 <out>
    189b:	4a 8b 04 28          	mov    (%rax,%r13,1),%rax
    189f:	4a 8b 04 20          	mov    (%rax,%r12,1),%rax
    18a3:	f3 46 0f 11 24 00    	movss  %xmm12,(%rax,%r8,1)
    18a9:	48 8b 05 70 27 00 00 	mov    0x2770(%rip),%rax        # 4020 <out>
    18b0:	4a 8b 04 30          	mov    (%rax,%r14,1),%rax
    18b4:	4a 8b 04 20          	mov    (%rax,%r12,1),%rax
    18b8:	f3 44 0f 11 1c 30    	movss  %xmm11,(%rax,%rsi,1)
    18be:	48 8b 05 5b 27 00 00 	mov    0x275b(%rip),%rax        # 4020 <out>
    18c5:	4a 8b 04 38          	mov    (%rax,%r15,1),%rax
    18c9:	4a 8b 04 20          	mov    (%rax,%r12,1),%rax
    18cd:	f3 44 0f 11 14 38    	movss  %xmm10,(%rax,%rdi,1)
    18d3:	48 8b 05 46 27 00 00 	mov    0x2746(%rip),%rax        # 4020 <out>
    18da:	4a 8b 04 28          	mov    (%rax,%r13,1),%rax
    18de:	4a 8b 04 20          	mov    (%rax,%r12,1),%rax
    18e2:	f3 44 0f 11 0c 30    	movss  %xmm9,(%rax,%rsi,1)
    18e8:	48 8b 05 31 27 00 00 	mov    0x2731(%rip),%rax        # 4020 <out>
    18ef:	48 8b 4c 24 f0       	mov    -0x10(%rsp),%rcx
    18f4:	48 8b 04 08          	mov    (%rax,%rcx,1),%rax
    18f8:	4a 8b 04 20          	mov    (%rax,%r12,1),%rax
    18fc:	f3 46 0f 11 04 00    	movss  %xmm8,(%rax,%r8,1)
    1902:	48 8b 05 17 27 00 00 	mov    0x2717(%rip),%rax        # 4020 <out>
    1909:	4a 8b 04 30          	mov    (%rax,%r14,1),%rax
    190d:	4a 8b 04 20          	mov    (%rax,%r12,1),%rax
    1911:	f3 42 0f 11 3c 00    	movss  %xmm7,(%rax,%r8,1)
    1917:	48 8b 05 02 27 00 00 	mov    0x2702(%rip),%rax        # 4020 <out>
    191e:	4a 8b 04 30          	mov    (%rax,%r14,1),%rax
    1922:	4a 8b 04 20          	mov    (%rax,%r12,1),%rax
    1926:	f3 0f 11 2c 38       	movss  %xmm5,(%rax,%rdi,1)
    192b:	48 8b 05 ee 26 00 00 	mov    0x26ee(%rip),%rax        # 4020 <out>
    1932:	4a 8b 04 38          	mov    (%rax,%r15,1),%rax
    1936:	4a 8b 04 20          	mov    (%rax,%r12,1),%rax
    193a:	f3 0f 11 04 30       	movss  %xmm0,(%rax,%rsi,1)
    193f:	48 8b 05 da 26 00 00 	mov    0x26da(%rip),%rax        # 4020 <out>
    1946:	48 8b 04 08          	mov    (%rax,%rcx,1),%rax
    194a:	4a 8b 04 20          	mov    (%rax,%r12,1),%rax
    194e:	f3 0f 10 7c 24 e4    	movss  -0x1c(%rsp),%xmm7
    1954:	f3 0f 11 3c 38       	movss  %xmm7,(%rax,%rdi,1)
    1959:	48 83 c6 0c          	add    $0xc,%rsi
    195d:	48 81 fe 04 01 00 00 	cmp    $0x104,%rsi
    1964:	0f 85 53 fd ff ff    	jne    16bd <doitgen+0x138>
    196a:	e9 32 fc ff ff       	jmp    15a1 <doitgen+0x1c>
    196f:	49 83 c6 20          	add    $0x20,%r14
    1973:	49 81 fe 10 02 00 00 	cmp    $0x210,%r14
    197a:	74 1c                	je     1998 <doitgen+0x413>
    197c:	49 8d 46 f0          	lea    -0x10(%r14),%rax
    1980:	48 89 44 24 f0       	mov    %rax,-0x10(%rsp)
    1985:	4d 8d 6e f8          	lea    -0x8(%r14),%r13
    1989:	4d 8d 7e 08          	lea    0x8(%r14),%r15
    198d:	41 bc 00 00 00 00    	mov    $0x0,%r12d
    1993:	e9 20 fd ff ff       	jmp    16b8 <doitgen+0x133>
    1998:	5b                   	pop    %rbx
    1999:	5d                   	pop    %rbp
    199a:	41 5c                	pop    %r12
    199c:	41 5d                	pop    %r13
    199e:	41 5e                	pop    %r14
    19a0:	41 5f                	pop    %r15
    19a2:	c3                   	ret    

00000000000019a3 <Compare_doitgen>:
    19a3:	f3 0f 1e fa          	endbr64 
    19a7:	be 00 00 00 00       	mov    $0x0,%esi
    19ac:	bf 00 00 00 00       	mov    $0x0,%edi
    19b1:	b9 00 00 00 00       	mov    $0x0,%ecx
    19b6:	b8 00 00 00 00       	mov    $0x0,%eax
    19bb:	48 8b 15 56 26 00 00 	mov    0x2656(%rip),%rdx        # 4018 <test>
    19c2:	48 8b 14 32          	mov    (%rdx,%rsi,1),%rdx
    19c6:	49 89 ca             	mov    %rcx,%r10
    19c9:	4c 03 14 3a          	add    (%rdx,%rdi,1),%r10
    19cd:	4c 8b 05 5c 26 00 00 	mov    0x265c(%rip),%r8        # 4030 <A>
    19d4:	4d 8b 04 30          	mov    (%r8,%rsi,1),%r8
    19d8:	4d 8b 0c 38          	mov    (%r8,%rdi,1),%r9
    19dc:	4c 8b 05 45 26 00 00 	mov    0x2645(%rip),%r8        # 4028 <C>
    19e3:	4d 8b 04 40          	mov    (%r8,%rax,2),%r8
    19e7:	f3 41 0f 10 04 01    	movss  (%r9,%rax,1),%xmm0
    19ed:	f3 41 0f 59 04 08    	mulss  (%r8,%rcx,1),%xmm0
    19f3:	f3 41 0f 58 02       	addss  (%r10),%xmm0
    19f8:	f3 41 0f 11 02       	movss  %xmm0,(%r10)
    19fd:	48 83 c0 04          	add    $0x4,%rax
    1a01:	48 3d 00 01 00 00    	cmp    $0x100,%rax
    1a07:	75 b2                	jne    19bb <Compare_doitgen+0x18>
    1a09:	48 83 c1 04          	add    $0x4,%rcx
    1a0d:	48 81 f9 00 01 00 00 	cmp    $0x100,%rcx
    1a14:	75 a0                	jne    19b6 <Compare_doitgen+0x13>
    1a16:	48 83 c7 08          	add    $0x8,%rdi
    1a1a:	48 81 ff 00 02 00 00 	cmp    $0x200,%rdi
    1a21:	75 8e                	jne    19b1 <Compare_doitgen+0xe>
    1a23:	48 83 c6 08          	add    $0x8,%rsi
    1a27:	48 81 fe 00 02 00 00 	cmp    $0x200,%rsi
    1a2e:	0f 85 78 ff ff ff    	jne    19ac <Compare_doitgen+0x9>
    1a34:	48 8b 3d e5 25 00 00 	mov    0x25e5(%rip),%rdi        # 4020 <out>
    1a3b:	48 8b 35 d6 25 00 00 	mov    0x25d6(%rip),%rsi        # 4018 <test>
    1a42:	b8 00 00 00 00       	mov    $0x0,%eax
    1a47:	f3 0f 10 15 01 06 00 	movss  0x601(%rip),%xmm2        # 2050 <_IO_stdin_used+0x50>
    1a4e:	00 
    1a4f:	4c 8b 0c 07          	mov    (%rdi,%rax,1),%r9
    1a53:	4c 8b 04 06          	mov    (%rsi,%rax,1),%r8
    1a57:	ba 00 00 00 00       	mov    $0x0,%edx
    1a5c:	4d 8b 1c 11          	mov    (%r9,%rdx,1),%r11
    1a60:	4d 8b 14 10          	mov    (%r8,%rdx,1),%r10
    1a64:	b9 00 00 00 00       	mov    $0x0,%ecx
    1a69:	f3 41 0f 10 0c 0b    	movss  (%r11,%rcx,1),%xmm1
    1a6f:	0f 28 c1             	movaps %xmm1,%xmm0
    1a72:	f3 41 0f 5c 04 0a    	subss  (%r10,%rcx,1),%xmm0
    1a78:	0f 54 c2             	andps  %xmm2,%xmm0
    1a7b:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
    1a7f:	0f 54 ca             	andps  %xmm2,%xmm1
    1a82:	f3 0f 5a c9          	cvtss2sd %xmm1,%xmm1
    1a86:	f2 0f 5e c1          	divsd  %xmm1,%xmm0
    1a8a:	66 0f 2f 05 ce 05 00 	comisd 0x5ce(%rip),%xmm0        # 2060 <_IO_stdin_used+0x60>
    1a91:	00 
    1a92:	73 2c                	jae    1ac0 <Compare_doitgen+0x11d>
    1a94:	48 83 c1 04          	add    $0x4,%rcx
    1a98:	48 81 f9 00 01 00 00 	cmp    $0x100,%rcx
    1a9f:	75 c8                	jne    1a69 <Compare_doitgen+0xc6>
    1aa1:	48 83 c2 08          	add    $0x8,%rdx
    1aa5:	48 81 fa 00 02 00 00 	cmp    $0x200,%rdx
    1aac:	75 ae                	jne    1a5c <Compare_doitgen+0xb9>
    1aae:	48 83 c0 08          	add    $0x8,%rax
    1ab2:	48 3d 00 02 00 00    	cmp    $0x200,%rax
    1ab8:	75 95                	jne    1a4f <Compare_doitgen+0xac>
    1aba:	b8 00 00 00 00       	mov    $0x0,%eax
    1abf:	c3                   	ret    
    1ac0:	b8 01 00 00 00       	mov    $0x1,%eax
    1ac5:	c3                   	ret    

0000000000001ac6 <main>:
    1ac6:	f3 0f 1e fa          	endbr64 
    1aca:	55                   	push   %rbp
    1acb:	53                   	push   %rbx
    1acc:	48 81 ec 18 01 00 00 	sub    $0x118,%rsp
    1ad3:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1ada:	00 00 
    1adc:	48 89 84 24 08 01 00 	mov    %rax,0x108(%rsp)
    1ae3:	00 
    1ae4:	31 c0                	xor    %eax,%eax
    1ae6:	e8 fe f6 ff ff       	call   11e9 <doitgen_init>
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
    1bc2:	e8 be f9 ff ff       	call   1585 <doitgen>
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
    1cb9:	e8 e5 fc ff ff       	call   19a3 <Compare_doitgen>
    1cbe:	66 85 c0             	test   %ax,%ax
    1cc1:	0f 85 45 01 00 00    	jne    1e0c <main+0x346>
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
    1d04:	bd 00 00 00 00       	mov    $0x0,%ebp
    1d09:	bb 00 00 00 00       	mov    $0x0,%ebx
    1d0e:	48 8b 05 1b 23 00 00 	mov    0x231b(%rip),%rax        # 4030 <A>
    1d15:	48 8b 04 28          	mov    (%rax,%rbp,1),%rax
    1d19:	48 8b 3c 18          	mov    (%rax,%rbx,1),%rdi
    1d1d:	e8 7e f3 ff ff       	call   10a0 <free@plt>
    1d22:	48 8b 05 f7 22 00 00 	mov    0x22f7(%rip),%rax        # 4020 <out>
    1d29:	48 8b 04 28          	mov    (%rax,%rbp,1),%rax
    1d2d:	48 8b 3c 18          	mov    (%rax,%rbx,1),%rdi
    1d31:	e8 6a f3 ff ff       	call   10a0 <free@plt>
    1d36:	48 8b 05 db 22 00 00 	mov    0x22db(%rip),%rax        # 4018 <test>
    1d3d:	48 8b 04 28          	mov    (%rax,%rbp,1),%rax
    1d41:	48 8b 3c 18          	mov    (%rax,%rbx,1),%rdi
    1d45:	e8 56 f3 ff ff       	call   10a0 <free@plt>
    1d4a:	48 83 c3 08          	add    $0x8,%rbx
    1d4e:	48 81 fb 00 02 00 00 	cmp    $0x200,%rbx
    1d55:	75 b7                	jne    1d0e <main+0x248>
    1d57:	48 8b 05 d2 22 00 00 	mov    0x22d2(%rip),%rax        # 4030 <A>
    1d5e:	48 8b 3c 28          	mov    (%rax,%rbp,1),%rdi
    1d62:	e8 39 f3 ff ff       	call   10a0 <free@plt>
    1d67:	48 8b 05 b2 22 00 00 	mov    0x22b2(%rip),%rax        # 4020 <out>
    1d6e:	48 8b 3c 28          	mov    (%rax,%rbp,1),%rdi
    1d72:	e8 29 f3 ff ff       	call   10a0 <free@plt>
    1d77:	48 8b 05 9a 22 00 00 	mov    0x229a(%rip),%rax        # 4018 <test>
    1d7e:	48 8b 3c 28          	mov    (%rax,%rbp,1),%rdi
    1d82:	e8 19 f3 ff ff       	call   10a0 <free@plt>
    1d87:	48 83 c5 08          	add    $0x8,%rbp
    1d8b:	48 81 fd 00 02 00 00 	cmp    $0x200,%rbp
    1d92:	0f 85 71 ff ff ff    	jne    1d09 <main+0x243>
    1d98:	48 8b 3d 91 22 00 00 	mov    0x2291(%rip),%rdi        # 4030 <A>
    1d9f:	e8 fc f2 ff ff       	call   10a0 <free@plt>
    1da4:	48 8b 3d 75 22 00 00 	mov    0x2275(%rip),%rdi        # 4020 <out>
    1dab:	e8 f0 f2 ff ff       	call   10a0 <free@plt>
    1db0:	48 8b 3d 61 22 00 00 	mov    0x2261(%rip),%rdi        # 4018 <test>
    1db7:	e8 e4 f2 ff ff       	call   10a0 <free@plt>
    1dbc:	bb 00 00 00 00       	mov    $0x0,%ebx
    1dc1:	48 8b 05 60 22 00 00 	mov    0x2260(%rip),%rax        # 4028 <C>
    1dc8:	48 8b 3c 18          	mov    (%rax,%rbx,1),%rdi
    1dcc:	e8 cf f2 ff ff       	call   10a0 <free@plt>
    1dd1:	48 83 c3 08          	add    $0x8,%rbx
    1dd5:	48 81 fb 00 02 00 00 	cmp    $0x200,%rbx
    1ddc:	75 e3                	jne    1dc1 <main+0x2fb>
    1dde:	48 8b 3d 43 22 00 00 	mov    0x2243(%rip),%rdi        # 4028 <C>
    1de5:	e8 b6 f2 ff ff       	call   10a0 <free@plt>
    1dea:	48 8b 84 24 08 01 00 	mov    0x108(%rsp),%rax
    1df1:	00 
    1df2:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    1df9:	00 00 
    1dfb:	75 20                	jne    1e1d <main+0x357>
    1dfd:	b8 00 00 00 00       	mov    $0x0,%eax
    1e02:	48 81 c4 18 01 00 00 	add    $0x118,%rsp
    1e09:	5b                   	pop    %rbx
    1e0a:	5d                   	pop    %rbp
    1e0b:	c3                   	ret    
    1e0c:	48 8d 3d 00 02 00 00 	lea    0x200(%rip),%rdi        # 2013 <_IO_stdin_used+0x13>
    1e13:	e8 98 f2 ff ff       	call   10b0 <puts@plt>
    1e18:	e9 b6 fe ff ff       	jmp    1cd3 <main+0x20d>
    1e1d:	e8 ae f2 ff ff       	call   10d0 <__stack_chk_fail@plt>

Disassembly of section .fini:

0000000000001e24 <_fini>:
    1e24:	f3 0f 1e fa          	endbr64 
    1e28:	48 83 ec 08          	sub    $0x8,%rsp
    1e2c:	48 83 c4 08          	add    $0x8,%rsp
    1e30:	c3                   	ret    
