
gemver/orio_sr1:     file format elf64-x86-64


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
    1118:	48 8d 3d f3 06 00 00 	lea    0x6f3(%rip),%rdi        # 1812 <main>
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

00000000000011e9 <gemver_init>:
    11e9:	f3 0f 1e fa          	endbr64 
    11ed:	41 54                	push   %r12
    11ef:	55                   	push   %rbp
    11f0:	53                   	push   %rbx
    11f1:	48 83 ec 50          	sub    $0x50,%rsp
    11f5:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    11fc:	00 00 
    11fe:	48 89 44 24 48       	mov    %rax,0x48(%rsp)
    1203:	31 c0                	xor    %eax,%eax
    1205:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
    120a:	ba 00 04 00 00       	mov    $0x400,%edx
    120f:	be 40 00 00 00       	mov    $0x40,%esi
    1214:	e8 d7 fe ff ff       	call   10f0 <posix_memalign@plt>
    1219:	85 c0                	test   %eax,%eax
    121b:	b8 00 00 00 00       	mov    $0x0,%eax
    1220:	48 0f 44 44 24 10    	cmove  0x10(%rsp),%rax
    1226:	48 89 05 13 2e 00 00 	mov    %rax,0x2e13(%rip)        # 4040 <A>
    122d:	48 8d 7c 24 08       	lea    0x8(%rsp),%rdi
    1232:	ba 00 04 00 00       	mov    $0x400,%edx
    1237:	be 40 00 00 00       	mov    $0x40,%esi
    123c:	e8 af fe ff ff       	call   10f0 <posix_memalign@plt>
    1241:	85 c0                	test   %eax,%eax
    1243:	b8 00 00 00 00       	mov    $0x0,%eax
    1248:	48 0f 44 44 24 08    	cmove  0x8(%rsp),%rax
    124e:	48 89 05 c3 2d 00 00 	mov    %rax,0x2dc3(%rip)        # 4018 <test_A>
    1255:	bb 00 00 00 00       	mov    $0x0,%ebx
    125a:	bd 00 00 00 00       	mov    $0x0,%ebp
    125f:	49 89 dc             	mov    %rbx,%r12
    1262:	4c 03 25 d7 2d 00 00 	add    0x2dd7(%rip),%r12        # 4040 <A>
    1269:	48 8d 7c 24 20       	lea    0x20(%rsp),%rdi
    126e:	ba 00 02 00 00       	mov    $0x200,%edx
    1273:	be 40 00 00 00       	mov    $0x40,%esi
    1278:	e8 73 fe ff ff       	call   10f0 <posix_memalign@plt>
    127d:	85 c0                	test   %eax,%eax
    127f:	48 89 e8             	mov    %rbp,%rax
    1282:	48 0f 44 44 24 20    	cmove  0x20(%rsp),%rax
    1288:	49 89 04 24          	mov    %rax,(%r12)
    128c:	49 89 dc             	mov    %rbx,%r12
    128f:	4c 03 25 82 2d 00 00 	add    0x2d82(%rip),%r12        # 4018 <test_A>
    1296:	48 8d 7c 24 18       	lea    0x18(%rsp),%rdi
    129b:	ba 00 02 00 00       	mov    $0x200,%edx
    12a0:	be 40 00 00 00       	mov    $0x40,%esi
    12a5:	e8 46 fe ff ff       	call   10f0 <posix_memalign@plt>
    12aa:	85 c0                	test   %eax,%eax
    12ac:	48 89 e8             	mov    %rbp,%rax
    12af:	48 0f 44 44 24 18    	cmove  0x18(%rsp),%rax
    12b5:	49 89 04 24          	mov    %rax,(%r12)
    12b9:	b8 00 00 00 00       	mov    $0x0,%eax
    12be:	48 8b 15 7b 2d 00 00 	mov    0x2d7b(%rip),%rdx        # 4040 <A>
    12c5:	48 8b 14 1a          	mov    (%rdx,%rbx,1),%rdx
    12c9:	c7 04 02 00 00 00 00 	movl   $0x0,(%rdx,%rax,1)
    12d0:	48 8b 15 69 2d 00 00 	mov    0x2d69(%rip),%rdx        # 4040 <A>
    12d7:	48 8b 14 1a          	mov    (%rdx,%rbx,1),%rdx
    12db:	f3 0f 10 04 02       	movss  (%rdx,%rax,1),%xmm0
    12e0:	48 8b 15 31 2d 00 00 	mov    0x2d31(%rip),%rdx        # 4018 <test_A>
    12e7:	48 8b 14 1a          	mov    (%rdx,%rbx,1),%rdx
    12eb:	f3 0f 11 04 02       	movss  %xmm0,(%rdx,%rax,1)
    12f0:	48 83 c0 04          	add    $0x4,%rax
    12f4:	48 3d 00 02 00 00    	cmp    $0x200,%rax
    12fa:	75 c2                	jne    12be <gemver_init+0xd5>
    12fc:	48 83 c3 08          	add    $0x8,%rbx
    1300:	48 81 fb 00 04 00 00 	cmp    $0x400,%rbx
    1307:	0f 85 52 ff ff ff    	jne    125f <gemver_init+0x76>
    130d:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
    1312:	ba 00 02 00 00       	mov    $0x200,%edx
    1317:	be 40 00 00 00       	mov    $0x40,%esi
    131c:	e8 cf fd ff ff       	call   10f0 <posix_memalign@plt>
    1321:	85 c0                	test   %eax,%eax
    1323:	b8 00 00 00 00       	mov    $0x0,%eax
    1328:	48 0f 44 44 24 40    	cmove  0x40(%rsp),%rax
    132e:	48 89 05 03 2d 00 00 	mov    %rax,0x2d03(%rip)        # 4038 <u1>
    1335:	48 8d 7c 24 38       	lea    0x38(%rsp),%rdi
    133a:	ba 00 02 00 00       	mov    $0x200,%edx
    133f:	be 40 00 00 00       	mov    $0x40,%esi
    1344:	e8 a7 fd ff ff       	call   10f0 <posix_memalign@plt>
    1349:	85 c0                	test   %eax,%eax
    134b:	b8 00 00 00 00       	mov    $0x0,%eax
    1350:	48 0f 44 44 24 38    	cmove  0x38(%rsp),%rax
    1356:	48 89 05 d3 2c 00 00 	mov    %rax,0x2cd3(%rip)        # 4030 <v1>
    135d:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
    1362:	ba 00 02 00 00       	mov    $0x200,%edx
    1367:	be 40 00 00 00       	mov    $0x40,%esi
    136c:	e8 7f fd ff ff       	call   10f0 <posix_memalign@plt>
    1371:	85 c0                	test   %eax,%eax
    1373:	b8 00 00 00 00       	mov    $0x0,%eax
    1378:	48 0f 44 44 24 30    	cmove  0x30(%rsp),%rax
    137e:	48 89 05 a3 2c 00 00 	mov    %rax,0x2ca3(%rip)        # 4028 <u2>
    1385:	48 8d 7c 24 28       	lea    0x28(%rsp),%rdi
    138a:	ba 00 02 00 00       	mov    $0x200,%edx
    138f:	be 40 00 00 00       	mov    $0x40,%esi
    1394:	e8 57 fd ff ff       	call   10f0 <posix_memalign@plt>
    1399:	85 c0                	test   %eax,%eax
    139b:	b8 00 00 00 00       	mov    $0x0,%eax
    13a0:	48 0f 44 44 24 28    	cmove  0x28(%rsp),%rax
    13a6:	48 89 05 73 2c 00 00 	mov    %rax,0x2c73(%rip)        # 4020 <v2>
    13ad:	b8 00 00 00 00       	mov    $0x0,%eax
    13b2:	f3 0f 10 15 86 0c 00 	movss  0xc86(%rip),%xmm2        # 2040 <_IO_stdin_used+0x40>
    13b9:	00 
    13ba:	f3 0f 10 0d 82 0c 00 	movss  0xc82(%rip),%xmm1        # 2044 <_IO_stdin_used+0x44>
    13c1:	00 
    13c2:	48 63 d0             	movslq %eax,%rdx
    13c5:	48 69 ca 93 24 49 92 	imul   $0xffffffff92492493,%rdx,%rcx
    13cc:	48 c1 e9 20          	shr    $0x20,%rcx
    13d0:	01 c1                	add    %eax,%ecx
    13d2:	c1 f9 02             	sar    $0x2,%ecx
    13d5:	89 c6                	mov    %eax,%esi
    13d7:	c1 fe 1f             	sar    $0x1f,%esi
    13da:	29 f1                	sub    %esi,%ecx
    13dc:	8d 3c cd 00 00 00 00 	lea    0x0(,%rcx,8),%edi
    13e3:	29 cf                	sub    %ecx,%edi
    13e5:	89 c1                	mov    %eax,%ecx
    13e7:	29 f9                	sub    %edi,%ecx
    13e9:	66 0f ef c0          	pxor   %xmm0,%xmm0
    13ed:	f3 0f 2a c1          	cvtsi2ss %ecx,%xmm0
    13f1:	f3 0f 58 c2          	addss  %xmm2,%xmm0
    13f5:	48 8b 0d 3c 2c 00 00 	mov    0x2c3c(%rip),%rcx        # 4038 <u1>
    13fc:	f3 0f 11 04 81       	movss  %xmm0,(%rcx,%rax,4)
    1401:	48 69 ca 67 66 66 66 	imul   $0x66666667,%rdx,%rcx
    1408:	48 c1 f9 21          	sar    $0x21,%rcx
    140c:	29 f1                	sub    %esi,%ecx
    140e:	8d 3c 89             	lea    (%rcx,%rcx,4),%edi
    1411:	89 c1                	mov    %eax,%ecx
    1413:	29 f9                	sub    %edi,%ecx
    1415:	66 0f ef c0          	pxor   %xmm0,%xmm0
    1419:	f3 0f 2a c1          	cvtsi2ss %ecx,%xmm0
    141d:	f3 0f 5c c1          	subss  %xmm1,%xmm0
    1421:	48 8b 0d 08 2c 00 00 	mov    0x2c08(%rip),%rcx        # 4030 <v1>
    1428:	f3 0f 11 04 81       	movss  %xmm0,(%rcx,%rax,4)
    142d:	48 69 d2 56 55 55 55 	imul   $0x55555556,%rdx,%rdx
    1434:	48 c1 ea 20          	shr    $0x20,%rdx
    1438:	29 f2                	sub    %esi,%edx
    143a:	8d 0c 52             	lea    (%rdx,%rdx,2),%ecx
    143d:	89 c2                	mov    %eax,%edx
    143f:	29 ca                	sub    %ecx,%edx
    1441:	66 0f ef c0          	pxor   %xmm0,%xmm0
    1445:	f3 0f 2a c2          	cvtsi2ss %edx,%xmm0
    1449:	f3 0f 58 c1          	addss  %xmm1,%xmm0
    144d:	48 8b 15 d4 2b 00 00 	mov    0x2bd4(%rip),%rdx        # 4028 <u2>
    1454:	f3 0f 11 04 82       	movss  %xmm0,(%rdx,%rax,4)
    1459:	c1 ee 1e             	shr    $0x1e,%esi
    145c:	8d 14 06             	lea    (%rsi,%rax,1),%edx
    145f:	83 e2 03             	and    $0x3,%edx
    1462:	29 f2                	sub    %esi,%edx
    1464:	66 0f ef c0          	pxor   %xmm0,%xmm0
    1468:	f3 0f 2a c2          	cvtsi2ss %edx,%xmm0
    146c:	f3 0f 5c c2          	subss  %xmm2,%xmm0
    1470:	48 8b 15 a9 2b 00 00 	mov    0x2ba9(%rip),%rdx        # 4020 <v2>
    1477:	f3 0f 11 04 82       	movss  %xmm0,(%rdx,%rax,4)
    147c:	48 83 c0 01          	add    $0x1,%rax
    1480:	48 3d 80 00 00 00    	cmp    $0x80,%rax
    1486:	0f 85 36 ff ff ff    	jne    13c2 <gemver_init+0x1d9>
    148c:	48 8b 44 24 48       	mov    0x48(%rsp),%rax
    1491:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    1498:	00 00 
    149a:	75 09                	jne    14a5 <gemver_init+0x2bc>
    149c:	48 83 c4 50          	add    $0x50,%rsp
    14a0:	5b                   	pop    %rbx
    14a1:	5d                   	pop    %rbp
    14a2:	41 5c                	pop    %r12
    14a4:	c3                   	ret    
    14a5:	e8 26 fc ff ff       	call   10d0 <__stack_chk_fail@plt>

00000000000014aa <gemver>:
    14aa:	f3 0f 1e fa          	endbr64 
    14ae:	41 57                	push   %r15
    14b0:	41 56                	push   %r14
    14b2:	41 55                	push   %r13
    14b4:	41 54                	push   %r12
    14b6:	55                   	push   %rbp
    14b7:	53                   	push   %rbx
    14b8:	41 b8 00 00 00 00    	mov    $0x0,%r8d
    14be:	48 c7 44 24 f8 18 00 	movq   $0x18,-0x8(%rsp)
    14c5:	00 00 
    14c7:	48 8b 44 24 f8       	mov    -0x8(%rsp),%rax
    14cc:	4c 8d 70 f0          	lea    -0x10(%rax),%r14
    14d0:	4c 8d 68 10          	lea    0x10(%rax),%r13
    14d4:	4f 8d 24 00          	lea    (%r8,%r8,1),%r12
    14d8:	48 8d 68 f8          	lea    -0x8(%rax),%rbp
    14dc:	48 8d 58 08          	lea    0x8(%rax),%rbx
    14e0:	4d 8d 58 04          	lea    0x4(%r8),%r11
    14e4:	4d 8d 50 08          	lea    0x8(%r8),%r10
    14e8:	4d 8d 48 0c          	lea    0xc(%r8),%r9
    14ec:	49 8d 40 10          	lea    0x10(%r8),%rax
    14f0:	48 89 44 24 e8       	mov    %rax,-0x18(%rsp)
    14f5:	4d 8d 78 14          	lea    0x14(%r8),%r15
    14f9:	b8 00 00 00 00       	mov    $0x0,%eax
    14fe:	4c 89 4c 24 f0       	mov    %r9,-0x10(%rsp)
    1503:	48 8b 35 36 2b 00 00 	mov    0x2b36(%rip),%rsi        # 4040 <A>
    150a:	48 8b 4c 24 f8       	mov    -0x8(%rsp),%rcx
    150f:	48 89 c7             	mov    %rax,%rdi
    1512:	48 03 3c 0e          	add    (%rsi,%rcx,1),%rdi
    1516:	48 8b 15 13 2b 00 00 	mov    0x2b13(%rip),%rdx        # 4030 <v1>
    151d:	f3 0f 10 0c 02       	movss  (%rdx,%rax,1),%xmm1
    1522:	48 8b 15 f7 2a 00 00 	mov    0x2af7(%rip),%rdx        # 4020 <v2>
    1529:	f3 0f 10 04 02       	movss  (%rdx,%rax,1),%xmm0
    152e:	48 8b 0d 03 2b 00 00 	mov    0x2b03(%rip),%rcx        # 4038 <u1>
    1535:	4a 8b 14 26          	mov    (%rsi,%r12,1),%rdx
    1539:	0f 28 d1             	movaps %xmm1,%xmm2
    153c:	f3 42 0f 59 14 01    	mulss  (%rcx,%r8,1),%xmm2
    1542:	f3 0f 58 14 02       	addss  (%rdx,%rax,1),%xmm2
    1547:	48 8b 15 da 2a 00 00 	mov    0x2ada(%rip),%rdx        # 4028 <u2>
    154e:	0f 28 e0             	movaps %xmm0,%xmm4
    1551:	f3 42 0f 59 24 02    	mulss  (%rdx,%r8,1),%xmm4
    1557:	f3 0f 58 e2          	addss  %xmm2,%xmm4
    155b:	0f 28 d1             	movaps %xmm1,%xmm2
    155e:	f3 42 0f 59 14 19    	mulss  (%rcx,%r11,1),%xmm2
    1564:	4e 8b 0c 36          	mov    (%rsi,%r14,1),%r9
    1568:	f3 41 0f 58 14 01    	addss  (%r9,%rax,1),%xmm2
    156e:	0f 28 f0             	movaps %xmm0,%xmm6
    1571:	f3 42 0f 59 34 1a    	mulss  (%rdx,%r11,1),%xmm6
    1577:	f3 0f 58 f2          	addss  %xmm2,%xmm6
    157b:	0f 28 d1             	movaps %xmm1,%xmm2
    157e:	f3 42 0f 59 14 11    	mulss  (%rcx,%r10,1),%xmm2
    1584:	4c 8b 0c 2e          	mov    (%rsi,%rbp,1),%r9
    1588:	f3 41 0f 58 14 01    	addss  (%r9,%rax,1),%xmm2
    158e:	0f 28 d8             	movaps %xmm0,%xmm3
    1591:	f3 42 0f 59 1c 12    	mulss  (%rdx,%r10,1),%xmm3
    1597:	f3 0f 58 da          	addss  %xmm2,%xmm3
    159b:	0f 28 f9             	movaps %xmm1,%xmm7
    159e:	4c 8b 4c 24 f0       	mov    -0x10(%rsp),%r9
    15a3:	f3 42 0f 59 3c 09    	mulss  (%rcx,%r9,1),%xmm7
    15a9:	f3 0f 58 3f          	addss  (%rdi),%xmm7
    15ad:	4c 8b 4c 24 e8       	mov    -0x18(%rsp),%r9
    15b2:	0f 28 e9             	movaps %xmm1,%xmm5
    15b5:	f3 42 0f 59 2c 09    	mulss  (%rcx,%r9,1),%xmm5
    15bb:	4c 8b 0c 1e          	mov    (%rsi,%rbx,1),%r9
    15bf:	f3 41 0f 58 2c 01    	addss  (%r9,%rax,1),%xmm5
    15c5:	4c 8b 4c 24 e8       	mov    -0x18(%rsp),%r9
    15ca:	0f 28 d0             	movaps %xmm0,%xmm2
    15cd:	f3 42 0f 59 14 0a    	mulss  (%rdx,%r9,1),%xmm2
    15d3:	f3 0f 58 d5          	addss  %xmm5,%xmm2
    15d7:	4a 8b 34 2e          	mov    (%rsi,%r13,1),%rsi
    15db:	f3 42 0f 59 0c 39    	mulss  (%rcx,%r15,1),%xmm1
    15e1:	f3 0f 58 0c 06       	addss  (%rsi,%rax,1),%xmm1
    15e6:	0f 28 e8             	movaps %xmm0,%xmm5
    15e9:	f3 42 0f 59 2c 3a    	mulss  (%rdx,%r15,1),%xmm5
    15ef:	f3 0f 58 cd          	addss  %xmm5,%xmm1
    15f3:	48 8b 74 24 f0       	mov    -0x10(%rsp),%rsi
    15f8:	f3 0f 59 04 32       	mulss  (%rdx,%rsi,1),%xmm0
    15fd:	f3 0f 58 c7          	addss  %xmm7,%xmm0
    1601:	f3 0f 11 07          	movss  %xmm0,(%rdi)
    1605:	48 8b 15 34 2a 00 00 	mov    0x2a34(%rip),%rdx        # 4040 <A>
    160c:	4a 8b 14 32          	mov    (%rdx,%r14,1),%rdx
    1610:	f3 0f 11 34 02       	movss  %xmm6,(%rdx,%rax,1)
    1615:	48 8b 15 24 2a 00 00 	mov    0x2a24(%rip),%rdx        # 4040 <A>
    161c:	4a 8b 14 2a          	mov    (%rdx,%r13,1),%rdx
    1620:	f3 0f 11 0c 02       	movss  %xmm1,(%rdx,%rax,1)
    1625:	48 8b 15 14 2a 00 00 	mov    0x2a14(%rip),%rdx        # 4040 <A>
    162c:	4a 8b 14 22          	mov    (%rdx,%r12,1),%rdx
    1630:	f3 0f 11 24 02       	movss  %xmm4,(%rdx,%rax,1)
    1635:	48 8b 15 04 2a 00 00 	mov    0x2a04(%rip),%rdx        # 4040 <A>
    163c:	48 8b 14 2a          	mov    (%rdx,%rbp,1),%rdx
    1640:	f3 0f 11 1c 02       	movss  %xmm3,(%rdx,%rax,1)
    1645:	48 8b 15 f4 29 00 00 	mov    0x29f4(%rip),%rdx        # 4040 <A>
    164c:	48 8b 14 1a          	mov    (%rdx,%rbx,1),%rdx
    1650:	f3 0f 11 14 02       	movss  %xmm2,(%rdx,%rax,1)
    1655:	48 83 c0 04          	add    $0x4,%rax
    1659:	48 3d 00 02 00 00    	cmp    $0x200,%rax
    165f:	0f 85 9e fe ff ff    	jne    1503 <gemver+0x59>
    1665:	48 83 44 24 f8 30    	addq   $0x30,-0x8(%rsp)
    166b:	49 83 c0 18          	add    $0x18,%r8
    166f:	49 81 f8 f8 01 00 00 	cmp    $0x1f8,%r8
    1676:	0f 85 4b fe ff ff    	jne    14c7 <gemver+0x1d>
    167c:	4b 8d 34 00          	lea    (%r8,%r8,1),%rsi
    1680:	b8 00 00 00 00       	mov    $0x0,%eax
    1685:	48 8b 15 b4 29 00 00 	mov    0x29b4(%rip),%rdx        # 4040 <A>
    168c:	48 89 c3             	mov    %rax,%rbx
    168f:	48 03 1c 32          	add    (%rdx,%rsi,1),%rbx
    1693:	48 8b 0d 9e 29 00 00 	mov    0x299e(%rip),%rcx        # 4038 <u1>
    169a:	f3 42 0f 10 0c 01    	movss  (%rcx,%r8,1),%xmm1
    16a0:	48 8b 0d 89 29 00 00 	mov    0x2989(%rip),%rcx        # 4030 <v1>
    16a7:	f3 0f 59 0c 01       	mulss  (%rcx,%rax,1),%xmm1
    16ac:	f3 0f 58 0b          	addss  (%rbx),%xmm1
    16b0:	48 8b 0d 71 29 00 00 	mov    0x2971(%rip),%rcx        # 4028 <u2>
    16b7:	f3 42 0f 10 04 01    	movss  (%rcx,%r8,1),%xmm0
    16bd:	48 8b 0d 5c 29 00 00 	mov    0x295c(%rip),%rcx        # 4020 <v2>
    16c4:	f3 0f 59 04 01       	mulss  (%rcx,%rax,1),%xmm0
    16c9:	f3 0f 58 c1          	addss  %xmm1,%xmm0
    16cd:	f3 0f 11 03          	movss  %xmm0,(%rbx)
    16d1:	48 83 c0 04          	add    $0x4,%rax
    16d5:	48 3d 00 02 00 00    	cmp    $0x200,%rax
    16db:	75 a8                	jne    1685 <gemver+0x1db>
    16dd:	49 83 c0 04          	add    $0x4,%r8
    16e1:	49 81 f8 00 02 00 00 	cmp    $0x200,%r8
    16e8:	75 92                	jne    167c <gemver+0x1d2>
    16ea:	5b                   	pop    %rbx
    16eb:	5d                   	pop    %rbp
    16ec:	41 5c                	pop    %r12
    16ee:	41 5d                	pop    %r13
    16f0:	41 5e                	pop    %r14
    16f2:	41 5f                	pop    %r15
    16f4:	c3                   	ret    

00000000000016f5 <equal>:
    16f5:	f3 0f 1e fa          	endbr64 
    16f9:	0f 28 d0             	movaps %xmm0,%xmm2
    16fc:	f3 0f 5c d1          	subss  %xmm1,%xmm2
    1700:	f3 0f 10 1d 48 09 00 	movss  0x948(%rip),%xmm3        # 2050 <_IO_stdin_used+0x50>
    1707:	00 
    1708:	0f 54 d3             	andps  %xmm3,%xmm2
    170b:	66 0f ef c9          	pxor   %xmm1,%xmm1
    170f:	f3 0f 5a ca          	cvtss2sd %xmm2,%xmm1
    1713:	0f 54 c3             	andps  %xmm3,%xmm0
    1716:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
    171a:	f2 0f 5e c8          	divsd  %xmm0,%xmm1
    171e:	f2 0f 10 05 3a 09 00 	movsd  0x93a(%rip),%xmm0        # 2060 <_IO_stdin_used+0x60>
    1725:	00 
    1726:	66 0f 2f c1          	comisd %xmm1,%xmm0
    172a:	0f 96 c0             	setbe  %al
    172d:	0f b6 c0             	movzbl %al,%eax
    1730:	c3                   	ret    

0000000000001731 <Compare_gemver>:
    1731:	f3 0f 1e fa          	endbr64 
    1735:	41 57                	push   %r15
    1737:	41 56                	push   %r14
    1739:	41 55                	push   %r13
    173b:	41 54                	push   %r12
    173d:	55                   	push   %rbp
    173e:	53                   	push   %rbx
    173f:	b9 00 00 00 00       	mov    $0x0,%ecx
    1744:	48 8d 3c 09          	lea    (%rcx,%rcx,1),%rdi
    1748:	b8 00 00 00 00       	mov    $0x0,%eax
    174d:	48 8b 15 c4 28 00 00 	mov    0x28c4(%rip),%rdx        # 4018 <test_A>
    1754:	48 89 c3             	mov    %rax,%rbx
    1757:	48 03 1c 3a          	add    (%rdx,%rdi,1),%rbx
    175b:	48 8b 35 d6 28 00 00 	mov    0x28d6(%rip),%rsi        # 4038 <u1>
    1762:	f3 0f 10 04 0e       	movss  (%rsi,%rcx,1),%xmm0
    1767:	48 8b 35 c2 28 00 00 	mov    0x28c2(%rip),%rsi        # 4030 <v1>
    176e:	f3 0f 59 04 06       	mulss  (%rsi,%rax,1),%xmm0
    1773:	48 8b 35 ae 28 00 00 	mov    0x28ae(%rip),%rsi        # 4028 <u2>
    177a:	f3 0f 10 0c 0e       	movss  (%rsi,%rcx,1),%xmm1
    177f:	48 8b 35 9a 28 00 00 	mov    0x289a(%rip),%rsi        # 4020 <v2>
    1786:	f3 0f 59 0c 06       	mulss  (%rsi,%rax,1),%xmm1
    178b:	f3 0f 58 c1          	addss  %xmm1,%xmm0
    178f:	f3 0f 58 03          	addss  (%rbx),%xmm0
    1793:	f3 0f 11 03          	movss  %xmm0,(%rbx)
    1797:	48 83 c0 04          	add    $0x4,%rax
    179b:	48 3d 00 02 00 00    	cmp    $0x200,%rax
    17a1:	75 aa                	jne    174d <Compare_gemver+0x1c>
    17a3:	48 83 c1 04          	add    $0x4,%rcx
    17a7:	48 81 f9 00 02 00 00 	cmp    $0x200,%rcx
    17ae:	75 94                	jne    1744 <Compare_gemver+0x13>
    17b0:	4c 8b 2d 61 28 00 00 	mov    0x2861(%rip),%r13        # 4018 <test_A>
    17b7:	4c 8b 25 82 28 00 00 	mov    0x2882(%rip),%r12        # 4040 <A>
    17be:	bb 00 00 00 00       	mov    $0x0,%ebx
    17c3:	4d 8b 7c 1d 00       	mov    0x0(%r13,%rbx,1),%r15
    17c8:	4d 8b 34 1c          	mov    (%r12,%rbx,1),%r14
    17cc:	bd 00 00 00 00       	mov    $0x0,%ebp
    17d1:	f3 41 0f 10 04 2e    	movss  (%r14,%rbp,1),%xmm0
    17d7:	f3 41 0f 10 0c 2f    	movss  (%r15,%rbp,1),%xmm1
    17dd:	e8 13 ff ff ff       	call   16f5 <equal>
    17e2:	66 83 f8 01          	cmp    $0x1,%ax
    17e6:	74 1f                	je     1807 <Compare_gemver+0xd6>
    17e8:	48 83 c5 04          	add    $0x4,%rbp
    17ec:	48 81 fd 00 02 00 00 	cmp    $0x200,%rbp
    17f3:	75 dc                	jne    17d1 <Compare_gemver+0xa0>
    17f5:	48 83 c3 08          	add    $0x8,%rbx
    17f9:	48 81 fb 00 04 00 00 	cmp    $0x400,%rbx
    1800:	75 c1                	jne    17c3 <Compare_gemver+0x92>
    1802:	b8 00 00 00 00       	mov    $0x0,%eax
    1807:	5b                   	pop    %rbx
    1808:	5d                   	pop    %rbp
    1809:	41 5c                	pop    %r12
    180b:	41 5d                	pop    %r13
    180d:	41 5e                	pop    %r14
    180f:	41 5f                	pop    %r15
    1811:	c3                   	ret    

0000000000001812 <main>:
    1812:	f3 0f 1e fa          	endbr64 
    1816:	53                   	push   %rbx
    1817:	48 81 ec 10 01 00 00 	sub    $0x110,%rsp
    181e:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1825:	00 00 
    1827:	48 89 84 24 08 01 00 	mov    %rax,0x108(%rsp)
    182e:	00 
    182f:	31 c0                	xor    %eax,%eax
    1831:	e8 b3 f9 ff ff       	call   11e9 <gemver_init>
    1836:	48 c7 44 24 40 04 00 	movq   $0x43540004,0x40(%rsp)
    183d:	54 43 
    183f:	48 c7 44 24 48 00 00 	movq   $0x0,0x48(%rsp)
    1846:	00 00 
    1848:	48 c7 44 24 50 00 00 	movq   $0x0,0x50(%rsp)
    184f:	00 00 
    1851:	48 c7 44 24 58 00 00 	movq   $0x0,0x58(%rsp)
    1858:	00 00 
    185a:	48 c7 44 24 60 00 00 	movq   $0x0,0x60(%rsp)
    1861:	00 00 
    1863:	48 c7 44 24 68 00 00 	movq   $0x0,0x68(%rsp)
    186a:	00 00 
    186c:	48 8d 44 24 40       	lea    0x40(%rsp),%rax
    1871:	bb 00 00 00 00       	mov    $0x0,%ebx
    1876:	89 da                	mov    %ebx,%edx
    1878:	48 c1 c7 03          	rol    $0x3,%rdi
    187c:	48 c1 c7 0d          	rol    $0xd,%rdi
    1880:	48 c1 c7 3d          	rol    $0x3d,%rdi
    1884:	48 c1 c7 33          	rol    $0x33,%rdi
    1888:	48 87 db             	xchg   %rbx,%rbx
    188b:	48 89 14 24          	mov    %rdx,(%rsp)
    188f:	48 8b 04 24          	mov    (%rsp),%rax
    1893:	48 c7 44 24 70 02 00 	movq   $0x43540002,0x70(%rsp)
    189a:	54 43 
    189c:	48 c7 44 24 78 00 00 	movq   $0x0,0x78(%rsp)
    18a3:	00 00 
    18a5:	48 c7 84 24 80 00 00 	movq   $0x0,0x80(%rsp)
    18ac:	00 00 00 00 00 
    18b1:	48 c7 84 24 88 00 00 	movq   $0x0,0x88(%rsp)
    18b8:	00 00 00 00 00 
    18bd:	48 c7 84 24 90 00 00 	movq   $0x0,0x90(%rsp)
    18c4:	00 00 00 00 00 
    18c9:	48 c7 84 24 98 00 00 	movq   $0x0,0x98(%rsp)
    18d0:	00 00 00 00 00 
    18d5:	48 8d 44 24 70       	lea    0x70(%rsp),%rax
    18da:	89 da                	mov    %ebx,%edx
    18dc:	48 c1 c7 03          	rol    $0x3,%rdi
    18e0:	48 c1 c7 0d          	rol    $0xd,%rdi
    18e4:	48 c1 c7 3d          	rol    $0x3d,%rdi
    18e8:	48 c1 c7 33          	rol    $0x33,%rdi
    18ec:	48 87 db             	xchg   %rbx,%rbx
    18ef:	48 89 54 24 08       	mov    %rdx,0x8(%rsp)
    18f4:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    18f9:	48 8d 74 24 20       	lea    0x20(%rsp),%rsi
    18fe:	bf 01 00 00 00       	mov    $0x1,%edi
    1903:	e8 b8 f7 ff ff       	call   10c0 <clock_gettime@plt>
    1908:	b8 00 00 00 00       	mov    $0x0,%eax
    190d:	e8 98 fb ff ff       	call   14aa <gemver>
    1912:	48 8d 74 24 30       	lea    0x30(%rsp),%rsi
    1917:	bf 01 00 00 00       	mov    $0x1,%edi
    191c:	e8 9f f7 ff ff       	call   10c0 <clock_gettime@plt>
    1921:	48 c7 84 24 a0 00 00 	movq   $0x43540002,0xa0(%rsp)
    1928:	00 02 00 54 43 
    192d:	48 c7 84 24 a8 00 00 	movq   $0x0,0xa8(%rsp)
    1934:	00 00 00 00 00 
    1939:	48 c7 84 24 b0 00 00 	movq   $0x0,0xb0(%rsp)
    1940:	00 00 00 00 00 
    1945:	48 c7 84 24 b8 00 00 	movq   $0x0,0xb8(%rsp)
    194c:	00 00 00 00 00 
    1951:	48 c7 84 24 c0 00 00 	movq   $0x0,0xc0(%rsp)
    1958:	00 00 00 00 00 
    195d:	48 c7 84 24 c8 00 00 	movq   $0x0,0xc8(%rsp)
    1964:	00 00 00 00 00 
    1969:	48 8d 84 24 a0 00 00 	lea    0xa0(%rsp),%rax
    1970:	00 
    1971:	89 da                	mov    %ebx,%edx
    1973:	48 c1 c7 03          	rol    $0x3,%rdi
    1977:	48 c1 c7 0d          	rol    $0xd,%rdi
    197b:	48 c1 c7 3d          	rol    $0x3d,%rdi
    197f:	48 c1 c7 33          	rol    $0x33,%rdi
    1983:	48 87 db             	xchg   %rbx,%rbx
    1986:	48 89 54 24 10       	mov    %rdx,0x10(%rsp)
    198b:	48 8b 44 24 10       	mov    0x10(%rsp),%rax
    1990:	48 c7 84 24 d0 00 00 	movq   $0x43540005,0xd0(%rsp)
    1997:	00 05 00 54 43 
    199c:	48 c7 84 24 d8 00 00 	movq   $0x0,0xd8(%rsp)
    19a3:	00 00 00 00 00 
    19a8:	48 c7 84 24 e0 00 00 	movq   $0x0,0xe0(%rsp)
    19af:	00 00 00 00 00 
    19b4:	48 c7 84 24 e8 00 00 	movq   $0x0,0xe8(%rsp)
    19bb:	00 00 00 00 00 
    19c0:	48 c7 84 24 f0 00 00 	movq   $0x0,0xf0(%rsp)
    19c7:	00 00 00 00 00 
    19cc:	48 c7 84 24 f8 00 00 	movq   $0x0,0xf8(%rsp)
    19d3:	00 00 00 00 00 
    19d8:	48 8d 84 24 d0 00 00 	lea    0xd0(%rsp),%rax
    19df:	00 
    19e0:	89 da                	mov    %ebx,%edx
    19e2:	48 c1 c7 03          	rol    $0x3,%rdi
    19e6:	48 c1 c7 0d          	rol    $0xd,%rdi
    19ea:	48 c1 c7 3d          	rol    $0x3d,%rdi
    19ee:	48 c1 c7 33          	rol    $0x33,%rdi
    19f2:	48 87 db             	xchg   %rbx,%rbx
    19f5:	48 89 54 24 18       	mov    %rdx,0x18(%rsp)
    19fa:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
    19ff:	b8 00 00 00 00       	mov    $0x0,%eax
    1a04:	e8 28 fd ff ff       	call   1731 <Compare_gemver>
    1a09:	66 85 c0             	test   %ax,%ax
    1a0c:	0f 85 d8 00 00 00    	jne    1aea <main+0x2d8>
    1a12:	48 8d 3d eb 05 00 00 	lea    0x5eb(%rip),%rdi        # 2004 <_IO_stdin_used+0x4>
    1a19:	e8 92 f6 ff ff       	call   10b0 <puts@plt>
    1a1e:	48 8b 54 24 30       	mov    0x30(%rsp),%rdx
    1a23:	48 2b 54 24 20       	sub    0x20(%rsp),%rdx
    1a28:	48 69 d2 00 ca 9a 3b 	imul   $0x3b9aca00,%rdx,%rdx
    1a2f:	48 03 54 24 38       	add    0x38(%rsp),%rdx
    1a34:	48 2b 54 24 28       	sub    0x28(%rsp),%rdx
    1a39:	48 8d 35 e4 05 00 00 	lea    0x5e4(%rip),%rsi        # 2024 <_IO_stdin_used+0x24>
    1a40:	bf 01 00 00 00       	mov    $0x1,%edi
    1a45:	b8 00 00 00 00       	mov    $0x0,%eax
    1a4a:	e8 91 f6 ff ff       	call   10e0 <__printf_chk@plt>
    1a4f:	bb 00 00 00 00       	mov    $0x0,%ebx
    1a54:	48 8b 05 e5 25 00 00 	mov    0x25e5(%rip),%rax        # 4040 <A>
    1a5b:	48 8b 3c 18          	mov    (%rax,%rbx,1),%rdi
    1a5f:	e8 3c f6 ff ff       	call   10a0 <free@plt>
    1a64:	48 8b 05 ad 25 00 00 	mov    0x25ad(%rip),%rax        # 4018 <test_A>
    1a6b:	48 8b 3c 18          	mov    (%rax,%rbx,1),%rdi
    1a6f:	e8 2c f6 ff ff       	call   10a0 <free@plt>
    1a74:	48 83 c3 08          	add    $0x8,%rbx
    1a78:	48 81 fb 00 04 00 00 	cmp    $0x400,%rbx
    1a7f:	75 d3                	jne    1a54 <main+0x242>
    1a81:	48 8b 3d b8 25 00 00 	mov    0x25b8(%rip),%rdi        # 4040 <A>
    1a88:	e8 13 f6 ff ff       	call   10a0 <free@plt>
    1a8d:	48 8b 3d 84 25 00 00 	mov    0x2584(%rip),%rdi        # 4018 <test_A>
    1a94:	e8 07 f6 ff ff       	call   10a0 <free@plt>
    1a99:	48 8b 3d 98 25 00 00 	mov    0x2598(%rip),%rdi        # 4038 <u1>
    1aa0:	e8 fb f5 ff ff       	call   10a0 <free@plt>
    1aa5:	48 8b 3d 84 25 00 00 	mov    0x2584(%rip),%rdi        # 4030 <v1>
    1aac:	e8 ef f5 ff ff       	call   10a0 <free@plt>
    1ab1:	48 8b 3d 70 25 00 00 	mov    0x2570(%rip),%rdi        # 4028 <u2>
    1ab8:	e8 e3 f5 ff ff       	call   10a0 <free@plt>
    1abd:	48 8b 3d 5c 25 00 00 	mov    0x255c(%rip),%rdi        # 4020 <v2>
    1ac4:	e8 d7 f5 ff ff       	call   10a0 <free@plt>
    1ac9:	48 8b 84 24 08 01 00 	mov    0x108(%rsp),%rax
    1ad0:	00 
    1ad1:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    1ad8:	00 00 
    1ada:	75 1f                	jne    1afb <main+0x2e9>
    1adc:	b8 00 00 00 00       	mov    $0x0,%eax
    1ae1:	48 81 c4 10 01 00 00 	add    $0x110,%rsp
    1ae8:	5b                   	pop    %rbx
    1ae9:	c3                   	ret    
    1aea:	48 8d 3d 22 05 00 00 	lea    0x522(%rip),%rdi        # 2013 <_IO_stdin_used+0x13>
    1af1:	e8 ba f5 ff ff       	call   10b0 <puts@plt>
    1af6:	e9 23 ff ff ff       	jmp    1a1e <main+0x20c>
    1afb:	e8 d0 f5 ff ff       	call   10d0 <__stack_chk_fail@plt>

Disassembly of section .fini:

0000000000001b00 <_fini>:
    1b00:	f3 0f 1e fa          	endbr64 
    1b04:	48 83 ec 08          	sub    $0x8,%rsp
    1b08:	48 83 c4 08          	add    $0x8,%rsp
    1b0c:	c3                   	ret    
