
back_prop/alg1_sr2:     file format elf64-x86-64


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

0000000000001100 <main>:
    1100:	f3 0f 1e fa          	endbr64 
    1104:	55                   	push   %rbp
    1105:	53                   	push   %rbx
    1106:	31 db                	xor    %ebx,%ebx
    1108:	48 81 ec 18 01 00 00 	sub    $0x118,%rsp
    110f:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1116:	00 00 
    1118:	48 89 84 24 08 01 00 	mov    %rax,0x108(%rsp)
    111f:	00 
    1120:	31 c0                	xor    %eax,%eax
    1122:	e8 09 04 00 00       	call   1530 <backpropagation_init>
    1127:	48 8d 44 24 40       	lea    0x40(%rsp),%rax
    112c:	89 da                	mov    %ebx,%edx
    112e:	48 c7 44 24 40 04 00 	movq   $0x43540004,0x40(%rsp)
    1135:	54 43 
    1137:	48 c7 44 24 48 00 00 	movq   $0x0,0x48(%rsp)
    113e:	00 00 
    1140:	48 c7 44 24 50 00 00 	movq   $0x0,0x50(%rsp)
    1147:	00 00 
    1149:	48 c7 44 24 58 00 00 	movq   $0x0,0x58(%rsp)
    1150:	00 00 
    1152:	48 c7 44 24 60 00 00 	movq   $0x0,0x60(%rsp)
    1159:	00 00 
    115b:	48 c7 44 24 68 00 00 	movq   $0x0,0x68(%rsp)
    1162:	00 00 
    1164:	48 c1 c7 03          	rol    $0x3,%rdi
    1168:	48 c1 c7 0d          	rol    $0xd,%rdi
    116c:	48 c1 c7 3d          	rol    $0x3d,%rdi
    1170:	48 c1 c7 33          	rol    $0x33,%rdi
    1174:	48 87 db             	xchg   %rbx,%rbx
    1177:	48 89 14 24          	mov    %rdx,(%rsp)
    117b:	89 da                	mov    %ebx,%edx
    117d:	48 8b 04 24          	mov    (%rsp),%rax
    1181:	48 8d 44 24 70       	lea    0x70(%rsp),%rax
    1186:	48 c7 44 24 70 02 00 	movq   $0x43540002,0x70(%rsp)
    118d:	54 43 
    118f:	48 c7 44 24 78 00 00 	movq   $0x0,0x78(%rsp)
    1196:	00 00 
    1198:	48 c7 84 24 80 00 00 	movq   $0x0,0x80(%rsp)
    119f:	00 00 00 00 00 
    11a4:	48 c7 84 24 88 00 00 	movq   $0x0,0x88(%rsp)
    11ab:	00 00 00 00 00 
    11b0:	48 c7 84 24 90 00 00 	movq   $0x0,0x90(%rsp)
    11b7:	00 00 00 00 00 
    11bc:	48 c7 84 24 98 00 00 	movq   $0x0,0x98(%rsp)
    11c3:	00 00 00 00 00 
    11c8:	48 c1 c7 03          	rol    $0x3,%rdi
    11cc:	48 c1 c7 0d          	rol    $0xd,%rdi
    11d0:	48 c1 c7 3d          	rol    $0x3d,%rdi
    11d4:	48 c1 c7 33          	rol    $0x33,%rdi
    11d8:	48 87 db             	xchg   %rbx,%rbx
    11db:	bf 01 00 00 00       	mov    $0x1,%edi
    11e0:	48 8d 74 24 20       	lea    0x20(%rsp),%rsi
    11e5:	48 89 54 24 08       	mov    %rdx,0x8(%rsp)
    11ea:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    11ef:	e8 cc fe ff ff       	call   10c0 <clock_gettime@plt>
    11f4:	31 c0                	xor    %eax,%eax
    11f6:	e8 65 06 00 00       	call   1860 <backpropagation>
    11fb:	48 8d 74 24 30       	lea    0x30(%rsp),%rsi
    1200:	bf 01 00 00 00       	mov    $0x1,%edi
    1205:	e8 b6 fe ff ff       	call   10c0 <clock_gettime@plt>
    120a:	48 8d 84 24 a0 00 00 	lea    0xa0(%rsp),%rax
    1211:	00 
    1212:	89 da                	mov    %ebx,%edx
    1214:	48 c7 84 24 a0 00 00 	movq   $0x43540002,0xa0(%rsp)
    121b:	00 02 00 54 43 
    1220:	48 c7 84 24 a8 00 00 	movq   $0x0,0xa8(%rsp)
    1227:	00 00 00 00 00 
    122c:	48 c7 84 24 b0 00 00 	movq   $0x0,0xb0(%rsp)
    1233:	00 00 00 00 00 
    1238:	48 c7 84 24 b8 00 00 	movq   $0x0,0xb8(%rsp)
    123f:	00 00 00 00 00 
    1244:	48 c7 84 24 c0 00 00 	movq   $0x0,0xc0(%rsp)
    124b:	00 00 00 00 00 
    1250:	48 c7 84 24 c8 00 00 	movq   $0x0,0xc8(%rsp)
    1257:	00 00 00 00 00 
    125c:	48 c1 c7 03          	rol    $0x3,%rdi
    1260:	48 c1 c7 0d          	rol    $0xd,%rdi
    1264:	48 c1 c7 3d          	rol    $0x3d,%rdi
    1268:	48 c1 c7 33          	rol    $0x33,%rdi
    126c:	48 87 db             	xchg   %rbx,%rbx
    126f:	48 89 54 24 10       	mov    %rdx,0x10(%rsp)
    1274:	89 da                	mov    %ebx,%edx
    1276:	48 8b 44 24 10       	mov    0x10(%rsp),%rax
    127b:	48 8d 84 24 d0 00 00 	lea    0xd0(%rsp),%rax
    1282:	00 
    1283:	48 c7 84 24 d0 00 00 	movq   $0x43540005,0xd0(%rsp)
    128a:	00 05 00 54 43 
    128f:	48 c7 84 24 d8 00 00 	movq   $0x0,0xd8(%rsp)
    1296:	00 00 00 00 00 
    129b:	48 c7 84 24 e0 00 00 	movq   $0x0,0xe0(%rsp)
    12a2:	00 00 00 00 00 
    12a7:	48 c7 84 24 e8 00 00 	movq   $0x0,0xe8(%rsp)
    12ae:	00 00 00 00 00 
    12b3:	48 c7 84 24 f0 00 00 	movq   $0x0,0xf0(%rsp)
    12ba:	00 00 00 00 00 
    12bf:	48 c7 84 24 f8 00 00 	movq   $0x0,0xf8(%rsp)
    12c6:	00 00 00 00 00 
    12cb:	48 c1 c7 03          	rol    $0x3,%rdi
    12cf:	48 c1 c7 0d          	rol    $0xd,%rdi
    12d3:	48 c1 c7 3d          	rol    $0x3d,%rdi
    12d7:	48 c1 c7 33          	rol    $0x33,%rdi
    12db:	48 87 db             	xchg   %rbx,%rbx
    12de:	48 89 54 24 18       	mov    %rdx,0x18(%rsp)
    12e3:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
    12e8:	31 c0                	xor    %eax,%eax
    12ea:	e8 11 09 00 00       	call   1c00 <Compare_backpropagation>
    12ef:	66 85 c0             	test   %ax,%ax
    12f2:	0f 85 29 01 00 00    	jne    1421 <main+0x321>
    12f8:	48 8d 3d 05 0d 00 00 	lea    0xd05(%rip),%rdi        # 2004 <_IO_stdin_used+0x4>
    12ff:	e8 ac fd ff ff       	call   10b0 <puts@plt>
    1304:	48 8b 54 24 30       	mov    0x30(%rsp),%rdx
    1309:	48 2b 54 24 20       	sub    0x20(%rsp),%rdx
    130e:	31 c0                	xor    %eax,%eax
    1310:	31 db                	xor    %ebx,%ebx
    1312:	48 69 d2 00 ca 9a 3b 	imul   $0x3b9aca00,%rdx,%rdx
    1319:	bf 01 00 00 00       	mov    $0x1,%edi
    131e:	48 03 54 24 38       	add    0x38(%rsp),%rdx
    1323:	48 2b 54 24 28       	sub    0x28(%rsp),%rdx
    1328:	48 8d 35 f5 0c 00 00 	lea    0xcf5(%rip),%rsi        # 2024 <_IO_stdin_used+0x24>
    132f:	e8 ac fd ff ff       	call   10e0 <__printf_chk@plt>
    1334:	0f 1f 40 00          	nopl   0x0(%rax)
    1338:	48 8b 05 f1 2c 00 00 	mov    0x2cf1(%rip),%rax        # 4030 <filter_FP>
    133f:	48 8b 3c 18          	mov    (%rax,%rbx,1),%rdi
    1343:	e8 58 fd ff ff       	call   10a0 <free@plt>
    1348:	48 8b 05 c9 2c 00 00 	mov    0x2cc9(%rip),%rax        # 4018 <test_filter>
    134f:	48 8b 3c 18          	mov    (%rax,%rbx,1),%rdi
    1353:	48 83 c3 08          	add    $0x8,%rbx
    1357:	e8 44 fd ff ff       	call   10a0 <free@plt>
    135c:	48 81 fb 00 04 00 00 	cmp    $0x400,%rbx
    1363:	75 d3                	jne    1338 <main+0x238>
    1365:	48 8b 3d c4 2c 00 00 	mov    0x2cc4(%rip),%rdi        # 4030 <filter_FP>
    136c:	31 ed                	xor    %ebp,%ebp
    136e:	e8 2d fd ff ff       	call   10a0 <free@plt>
    1373:	48 8b 3d 9e 2c 00 00 	mov    0x2c9e(%rip),%rdi        # 4018 <test_filter>
    137a:	e8 21 fd ff ff       	call   10a0 <free@plt>
    137f:	90                   	nop
    1380:	31 db                	xor    %ebx,%ebx
    1382:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1388:	48 8b 05 99 2c 00 00 	mov    0x2c99(%rip),%rax        # 4028 <out>
    138f:	48 8b 04 28          	mov    (%rax,%rbp,1),%rax
    1393:	48 8b 3c 18          	mov    (%rax,%rbx,1),%rdi
    1397:	e8 04 fd ff ff       	call   10a0 <free@plt>
    139c:	48 8b 05 7d 2c 00 00 	mov    0x2c7d(%rip),%rax        # 4020 <in_FP>
    13a3:	48 8b 04 28          	mov    (%rax,%rbp,1),%rax
    13a7:	48 8b 3c 18          	mov    (%rax,%rbx,1),%rdi
    13ab:	48 83 c3 08          	add    $0x8,%rbx
    13af:	e8 ec fc ff ff       	call   10a0 <free@plt>
    13b4:	48 81 fb e0 01 00 00 	cmp    $0x1e0,%rbx
    13bb:	75 cb                	jne    1388 <main+0x288>
    13bd:	48 8b 05 64 2c 00 00 	mov    0x2c64(%rip),%rax        # 4028 <out>
    13c4:	48 8b 3c 28          	mov    (%rax,%rbp,1),%rdi
    13c8:	e8 d3 fc ff ff       	call   10a0 <free@plt>
    13cd:	48 8b 05 4c 2c 00 00 	mov    0x2c4c(%rip),%rax        # 4020 <in_FP>
    13d4:	48 8b 3c 28          	mov    (%rax,%rbp,1),%rdi
    13d8:	48 83 c5 08          	add    $0x8,%rbp
    13dc:	e8 bf fc ff ff       	call   10a0 <free@plt>
    13e1:	48 81 fd e0 01 00 00 	cmp    $0x1e0,%rbp
    13e8:	75 96                	jne    1380 <main+0x280>
    13ea:	48 8b 3d 37 2c 00 00 	mov    0x2c37(%rip),%rdi        # 4028 <out>
    13f1:	e8 aa fc ff ff       	call   10a0 <free@plt>
    13f6:	48 8b 3d 23 2c 00 00 	mov    0x2c23(%rip),%rdi        # 4020 <in_FP>
    13fd:	e8 9e fc ff ff       	call   10a0 <free@plt>
    1402:	48 8b 84 24 08 01 00 	mov    0x108(%rsp),%rax
    1409:	00 
    140a:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    1411:	00 00 
    1413:	75 1d                	jne    1432 <main+0x332>
    1415:	48 81 c4 18 01 00 00 	add    $0x118,%rsp
    141c:	31 c0                	xor    %eax,%eax
    141e:	5b                   	pop    %rbx
    141f:	5d                   	pop    %rbp
    1420:	c3                   	ret    
    1421:	48 8d 3d eb 0b 00 00 	lea    0xbeb(%rip),%rdi        # 2013 <_IO_stdin_used+0x13>
    1428:	e8 83 fc ff ff       	call   10b0 <puts@plt>
    142d:	e9 d2 fe ff ff       	jmp    1304 <main+0x204>
    1432:	e8 99 fc ff ff       	call   10d0 <__stack_chk_fail@plt>
    1437:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    143e:	00 00 

0000000000001440 <_start>:
    1440:	f3 0f 1e fa          	endbr64 
    1444:	31 ed                	xor    %ebp,%ebp
    1446:	49 89 d1             	mov    %rdx,%r9
    1449:	5e                   	pop    %rsi
    144a:	48 89 e2             	mov    %rsp,%rdx
    144d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    1451:	50                   	push   %rax
    1452:	54                   	push   %rsp
    1453:	45 31 c0             	xor    %r8d,%r8d
    1456:	31 c9                	xor    %ecx,%ecx
    1458:	48 8d 3d a1 fc ff ff 	lea    -0x35f(%rip),%rdi        # 1100 <main>
    145f:	ff 15 73 2b 00 00    	call   *0x2b73(%rip)        # 3fd8 <__libc_start_main@GLIBC_2.34>
    1465:	f4                   	hlt    
    1466:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    146d:	00 00 00 

0000000000001470 <deregister_tm_clones>:
    1470:	48 8d 3d 99 2b 00 00 	lea    0x2b99(%rip),%rdi        # 4010 <__TMC_END__>
    1477:	48 8d 05 92 2b 00 00 	lea    0x2b92(%rip),%rax        # 4010 <__TMC_END__>
    147e:	48 39 f8             	cmp    %rdi,%rax
    1481:	74 15                	je     1498 <deregister_tm_clones+0x28>
    1483:	48 8b 05 56 2b 00 00 	mov    0x2b56(%rip),%rax        # 3fe0 <_ITM_deregisterTMCloneTable@Base>
    148a:	48 85 c0             	test   %rax,%rax
    148d:	74 09                	je     1498 <deregister_tm_clones+0x28>
    148f:	ff e0                	jmp    *%rax
    1491:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1498:	c3                   	ret    
    1499:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000014a0 <register_tm_clones>:
    14a0:	48 8d 3d 69 2b 00 00 	lea    0x2b69(%rip),%rdi        # 4010 <__TMC_END__>
    14a7:	48 8d 35 62 2b 00 00 	lea    0x2b62(%rip),%rsi        # 4010 <__TMC_END__>
    14ae:	48 29 fe             	sub    %rdi,%rsi
    14b1:	48 89 f0             	mov    %rsi,%rax
    14b4:	48 c1 ee 3f          	shr    $0x3f,%rsi
    14b8:	48 c1 f8 03          	sar    $0x3,%rax
    14bc:	48 01 c6             	add    %rax,%rsi
    14bf:	48 d1 fe             	sar    %rsi
    14c2:	74 14                	je     14d8 <register_tm_clones+0x38>
    14c4:	48 8b 05 25 2b 00 00 	mov    0x2b25(%rip),%rax        # 3ff0 <_ITM_registerTMCloneTable@Base>
    14cb:	48 85 c0             	test   %rax,%rax
    14ce:	74 08                	je     14d8 <register_tm_clones+0x38>
    14d0:	ff e0                	jmp    *%rax
    14d2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    14d8:	c3                   	ret    
    14d9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000014e0 <__do_global_dtors_aux>:
    14e0:	f3 0f 1e fa          	endbr64 
    14e4:	80 3d 25 2b 00 00 00 	cmpb   $0x0,0x2b25(%rip)        # 4010 <__TMC_END__>
    14eb:	75 2b                	jne    1518 <__do_global_dtors_aux+0x38>
    14ed:	55                   	push   %rbp
    14ee:	48 83 3d 02 2b 00 00 	cmpq   $0x0,0x2b02(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    14f5:	00 
    14f6:	48 89 e5             	mov    %rsp,%rbp
    14f9:	74 0c                	je     1507 <__do_global_dtors_aux+0x27>
    14fb:	48 8b 3d 06 2b 00 00 	mov    0x2b06(%rip),%rdi        # 4008 <__dso_handle>
    1502:	e8 89 fb ff ff       	call   1090 <__cxa_finalize@plt>
    1507:	e8 64 ff ff ff       	call   1470 <deregister_tm_clones>
    150c:	c6 05 fd 2a 00 00 01 	movb   $0x1,0x2afd(%rip)        # 4010 <__TMC_END__>
    1513:	5d                   	pop    %rbp
    1514:	c3                   	ret    
    1515:	0f 1f 00             	nopl   (%rax)
    1518:	c3                   	ret    
    1519:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001520 <frame_dummy>:
    1520:	f3 0f 1e fa          	endbr64 
    1524:	e9 77 ff ff ff       	jmp    14a0 <register_tm_clones>
    1529:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001530 <backpropagation_init>:
    1530:	f3 0f 1e fa          	endbr64 
    1534:	41 57                	push   %r15
    1536:	ba 00 04 00 00       	mov    $0x400,%edx
    153b:	be 40 00 00 00       	mov    $0x40,%esi
    1540:	45 31 ff             	xor    %r15d,%r15d
    1543:	41 56                	push   %r14
    1545:	41 55                	push   %r13
    1547:	41 54                	push   %r12
    1549:	4d 89 fc             	mov    %r15,%r12
    154c:	55                   	push   %rbp
    154d:	53                   	push   %rbx
    154e:	48 81 ec a8 00 00 00 	sub    $0xa8,%rsp
    1555:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    155c:	00 00 
    155e:	48 89 84 24 98 00 00 	mov    %rax,0x98(%rsp)
    1565:	00 
    1566:	31 c0                	xor    %eax,%eax
    1568:	48 8d 7c 24 50       	lea    0x50(%rsp),%rdi
    156d:	4c 8d 6c 24 58       	lea    0x58(%rsp),%r13
    1572:	e8 79 fb ff ff       	call   10f0 <posix_memalign@plt>
    1577:	48 8d 7c 24 48       	lea    0x48(%rsp),%rdi
    157c:	ba 00 04 00 00       	mov    $0x400,%edx
    1581:	be 40 00 00 00       	mov    $0x40,%esi
    1586:	85 c0                	test   %eax,%eax
    1588:	4c 0f 44 64 24 50    	cmove  0x50(%rsp),%r12
    158e:	4c 89 25 9b 2a 00 00 	mov    %r12,0x2a9b(%rip)        # 4030 <filter_FP>
    1595:	e8 56 fb ff ff       	call   10f0 <posix_memalign@plt>
    159a:	48 8d 4c 24 60       	lea    0x60(%rsp),%rcx
    159f:	85 c0                	test   %eax,%eax
    15a1:	4c 0f 44 7c 24 48    	cmove  0x48(%rsp),%r15
    15a7:	45 31 f6             	xor    %r14d,%r14d
    15aa:	31 ed                	xor    %ebp,%ebp
    15ac:	4c 89 3d 65 2a 00 00 	mov    %r15,0x2a65(%rip)        # 4018 <test_filter>
    15b3:	48 89 cf             	mov    %rcx,%rdi
    15b6:	ba 00 04 00 00       	mov    $0x400,%edx
    15bb:	be 40 00 00 00       	mov    $0x40,%esi
    15c0:	48 89 eb             	mov    %rbp,%rbx
    15c3:	48 89 4c 24 08       	mov    %rcx,0x8(%rsp)
    15c8:	e8 23 fb ff ff       	call   10f0 <posix_memalign@plt>
    15cd:	ba 00 04 00 00       	mov    $0x400,%edx
    15d2:	be 40 00 00 00       	mov    $0x40,%esi
    15d7:	4c 89 ef             	mov    %r13,%rdi
    15da:	85 c0                	test   %eax,%eax
    15dc:	48 0f 44 5c 24 60    	cmove  0x60(%rsp),%rbx
    15e2:	4b 89 1c 34          	mov    %rbx,(%r12,%r14,1)
    15e6:	e8 05 fb ff ff       	call   10f0 <posix_memalign@plt>
    15eb:	48 89 ea             	mov    %rbp,%rdx
    15ee:	48 8b 4c 24 08       	mov    0x8(%rsp),%rcx
    15f3:	85 c0                	test   %eax,%eax
    15f5:	48 0f 44 54 24 58    	cmove  0x58(%rsp),%rdx
    15fb:	31 c0                	xor    %eax,%eax
    15fd:	4b 89 14 37          	mov    %rdx,(%r15,%r14,1)
    1601:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1608:	c7 04 03 00 00 00 00 	movl   $0x0,(%rbx,%rax,1)
    160f:	c7 04 02 00 00 00 00 	movl   $0x0,(%rdx,%rax,1)
    1616:	48 83 c0 04          	add    $0x4,%rax
    161a:	48 3d 00 04 00 00    	cmp    $0x400,%rax
    1620:	75 e6                	jne    1608 <backpropagation_init+0xd8>
    1622:	49 83 c6 08          	add    $0x8,%r14
    1626:	49 81 fe 00 04 00 00 	cmp    $0x400,%r14
    162d:	75 84                	jne    15b3 <backpropagation_init+0x83>
    162f:	48 8d 7c 24 70       	lea    0x70(%rsp),%rdi
    1634:	ba e0 01 00 00       	mov    $0x1e0,%edx
    1639:	be 40 00 00 00       	mov    $0x40,%esi
    163e:	31 db                	xor    %ebx,%ebx
    1640:	e8 ab fa ff ff       	call   10f0 <posix_memalign@plt>
    1645:	48 8d 7c 24 68       	lea    0x68(%rsp),%rdi
    164a:	ba e0 01 00 00       	mov    $0x1e0,%edx
    164f:	be 40 00 00 00       	mov    $0x40,%esi
    1654:	85 c0                	test   %eax,%eax
    1656:	48 89 d8             	mov    %rbx,%rax
    1659:	48 0f 44 44 24 70    	cmove  0x70(%rsp),%rax
    165f:	41 bf cd cc cc cc    	mov    $0xcccccccd,%r15d
    1665:	4c 8d b4 24 90 00 00 	lea    0x90(%rsp),%r14
    166c:	00 
    166d:	4c 8d ac 24 88 00 00 	lea    0x88(%rsp),%r13
    1674:	00 
    1675:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
    167a:	48 89 05 a7 29 00 00 	mov    %rax,0x29a7(%rip)        # 4028 <out>
    1681:	e8 6a fa ff ff       	call   10f0 <posix_memalign@plt>
    1686:	48 c7 44 24 18 00 00 	movq   $0x0,0x18(%rsp)
    168d:	00 00 
    168f:	85 c0                	test   %eax,%eax
    1691:	48 8d 84 24 80 00 00 	lea    0x80(%rsp),%rax
    1698:	00 
    1699:	48 0f 44 5c 24 68    	cmove  0x68(%rsp),%rbx
    169f:	48 89 44 24 38       	mov    %rax,0x38(%rsp)
    16a4:	48 8d 44 24 78       	lea    0x78(%rsp),%rax
    16a9:	48 89 44 24 30       	mov    %rax,0x30(%rsp)
    16ae:	48 89 5c 24 20       	mov    %rbx,0x20(%rsp)
    16b3:	48 89 1d 66 29 00 00 	mov    %rbx,0x2966(%rip)        # 4020 <in_FP>
    16ba:	31 db                	xor    %ebx,%ebx
    16bc:	48 8b 7c 24 38       	mov    0x38(%rsp),%rdi
    16c1:	ba e0 01 00 00       	mov    $0x1e0,%edx
    16c6:	be 40 00 00 00       	mov    $0x40,%esi
    16cb:	e8 20 fa ff ff       	call   10f0 <posix_memalign@plt>
    16d0:	48 8b 6c 24 18       	mov    0x18(%rsp),%rbp
    16d5:	48 8b 74 24 28       	mov    0x28(%rsp),%rsi
    16da:	ba e0 01 00 00       	mov    $0x1e0,%edx
    16df:	85 c0                	test   %eax,%eax
    16e1:	48 89 d8             	mov    %rbx,%rax
    16e4:	48 8b 7c 24 30       	mov    0x30(%rsp),%rdi
    16e9:	48 0f 44 84 24 80 00 	cmove  0x80(%rsp),%rax
    16f0:	00 00 
    16f2:	48 89 04 2e          	mov    %rax,(%rsi,%rbp,1)
    16f6:	be 40 00 00 00       	mov    $0x40,%esi
    16fb:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
    1700:	e8 eb f9 ff ff       	call   10f0 <posix_memalign@plt>
    1705:	48 8b 74 24 20       	mov    0x20(%rsp),%rsi
    170a:	85 c0                	test   %eax,%eax
    170c:	48 89 d8             	mov    %rbx,%rax
    170f:	48 0f 44 44 24 78    	cmove  0x78(%rsp),%rax
    1715:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    171a:	48 89 04 2e          	mov    %rax,(%rsi,%rbp,1)
    171e:	31 ed                	xor    %ebp,%ebp
    1720:	ba 00 02 00 00       	mov    $0x200,%edx
    1725:	be 40 00 00 00       	mov    $0x40,%esi
    172a:	4c 89 f7             	mov    %r14,%rdi
    172d:	49 89 dc             	mov    %rbx,%r12
    1730:	e8 bb f9 ff ff       	call   10f0 <posix_memalign@plt>
    1735:	ba 00 04 00 00       	mov    $0x400,%edx
    173a:	4c 89 ef             	mov    %r13,%rdi
    173d:	be 40 00 00 00       	mov    $0x40,%esi
    1742:	85 c0                	test   %eax,%eax
    1744:	48 8b 44 24 10       	mov    0x10(%rsp),%rax
    1749:	4c 0f 44 a4 24 90 00 	cmove  0x90(%rsp),%r12
    1750:	00 00 
    1752:	4c 89 24 28          	mov    %r12,(%rax,%rbp,1)
    1756:	e8 95 f9 ff ff       	call   10f0 <posix_memalign@plt>
    175b:	48 89 df             	mov    %rbx,%rdi
    175e:	f3 0f 10 0d de 08 00 	movss  0x8de(%rip),%xmm1        # 2044 <_IO_stdin_used+0x44>
    1765:	00 
    1766:	f3 0f 10 15 d2 08 00 	movss  0x8d2(%rip),%xmm2        # 2040 <_IO_stdin_used+0x40>
    176d:	00 
    176e:	85 c0                	test   %eax,%eax
    1770:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    1775:	48 0f 44 bc 24 88 00 	cmove  0x88(%rsp),%rdi
    177c:	00 00 
    177e:	31 d2                	xor    %edx,%edx
    1780:	48 89 3c 28          	mov    %rdi,(%rax,%rbp,1)
    1784:	0f 1f 40 00          	nopl   0x0(%rax)
    1788:	89 d0                	mov    %edx,%eax
    178a:	66 0f ef c0          	pxor   %xmm0,%xmm0
    178e:	49 0f af c7          	imul   %r15,%rax
    1792:	48 c1 e8 22          	shr    $0x22,%rax
    1796:	8d 0c 80             	lea    (%rax,%rax,4),%ecx
    1799:	89 d0                	mov    %edx,%eax
    179b:	29 c8                	sub    %ecx,%eax
    179d:	f3 0f 2a c0          	cvtsi2ss %eax,%xmm0
    17a1:	f3 0f 58 c2          	addss  %xmm2,%xmm0
    17a5:	f3 41 0f 11 04 94    	movss  %xmm0,(%r12,%rdx,4)
    17ab:	48 83 c2 01          	add    $0x1,%rdx
    17af:	48 81 fa 80 00 00 00 	cmp    $0x80,%rdx
    17b6:	75 d0                	jne    1788 <backpropagation_init+0x258>
    17b8:	31 d2                	xor    %edx,%edx
    17ba:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    17c0:	89 d1                	mov    %edx,%ecx
    17c2:	89 d0                	mov    %edx,%eax
    17c4:	66 0f ef c0          	pxor   %xmm0,%xmm0
    17c8:	48 69 c9 25 49 92 24 	imul   $0x24924925,%rcx,%rcx
    17cf:	48 c1 e9 20          	shr    $0x20,%rcx
    17d3:	29 c8                	sub    %ecx,%eax
    17d5:	d1 e8                	shr    %eax
    17d7:	01 c8                	add    %ecx,%eax
    17d9:	c1 e8 02             	shr    $0x2,%eax
    17dc:	8d 0c c5 00 00 00 00 	lea    0x0(,%rax,8),%ecx
    17e3:	29 c1                	sub    %eax,%ecx
    17e5:	89 d0                	mov    %edx,%eax
    17e7:	29 c8                	sub    %ecx,%eax
    17e9:	f3 0f 2a c0          	cvtsi2ss %eax,%xmm0
    17ed:	f3 0f 5c c1          	subss  %xmm1,%xmm0
    17f1:	f3 0f 11 04 97       	movss  %xmm0,(%rdi,%rdx,4)
    17f6:	48 83 c2 01          	add    $0x1,%rdx
    17fa:	48 81 fa 00 01 00 00 	cmp    $0x100,%rdx
    1801:	75 bd                	jne    17c0 <backpropagation_init+0x290>
    1803:	48 83 c5 08          	add    $0x8,%rbp
    1807:	48 81 fd e0 01 00 00 	cmp    $0x1e0,%rbp
    180e:	0f 85 0c ff ff ff    	jne    1720 <backpropagation_init+0x1f0>
    1814:	48 83 44 24 18 08    	addq   $0x8,0x18(%rsp)
    181a:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
    181f:	48 3d e0 01 00 00    	cmp    $0x1e0,%rax
    1825:	0f 85 91 fe ff ff    	jne    16bc <backpropagation_init+0x18c>
    182b:	48 8b 84 24 98 00 00 	mov    0x98(%rsp),%rax
    1832:	00 
    1833:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    183a:	00 00 
    183c:	75 12                	jne    1850 <backpropagation_init+0x320>
    183e:	48 81 c4 a8 00 00 00 	add    $0xa8,%rsp
    1845:	5b                   	pop    %rbx
    1846:	5d                   	pop    %rbp
    1847:	41 5c                	pop    %r12
    1849:	41 5d                	pop    %r13
    184b:	41 5e                	pop    %r14
    184d:	41 5f                	pop    %r15
    184f:	c3                   	ret    
    1850:	e8 7b f8 ff ff       	call   10d0 <__stack_chk_fail@plt>
    1855:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    185c:	00 00 00 00 

0000000000001860 <backpropagation>:
    1860:	f3 0f 1e fa          	endbr64 
    1864:	41 57                	push   %r15
    1866:	48 8b 05 c3 27 00 00 	mov    0x27c3(%rip),%rax        # 4030 <filter_FP>
    186d:	41 56                	push   %r14
    186f:	4c 8b 35 b2 27 00 00 	mov    0x27b2(%rip),%r14        # 4028 <out>
    1876:	41 55                	push   %r13
    1878:	4c 8b 2d a1 27 00 00 	mov    0x27a1(%rip),%r13        # 4020 <in_FP>
    187f:	41 54                	push   %r12
    1881:	45 31 e4             	xor    %r12d,%r12d
    1884:	55                   	push   %rbp
    1885:	53                   	push   %rbx
    1886:	48 89 44 24 f8       	mov    %rax,-0x8(%rsp)
    188b:	48 8b 44 24 f8       	mov    -0x8(%rsp),%rax
    1890:	4d 8d 4c 24 0c       	lea    0xc(%r12),%r9
    1895:	4d 8d 44 24 04       	lea    0x4(%r12),%r8
    189a:	45 31 d2             	xor    %r10d,%r10d
    189d:	49 8d 7c 24 08       	lea    0x8(%r12),%rdi
    18a2:	4a 8b 5c 60 08       	mov    0x8(%rax,%r12,2),%rbx
    18a7:	4a 8b 4c 60 18       	mov    0x18(%rax,%r12,2),%rcx
    18ac:	4e 8b 7c 60 10       	mov    0x10(%rax,%r12,2),%r15
    18b1:	4a 8b 04 60          	mov    (%rax,%r12,2),%rax
    18b5:	48 89 5c 24 e0       	mov    %rbx,-0x20(%rsp)
    18ba:	4c 89 7c 24 d8       	mov    %r15,-0x28(%rsp)
    18bf:	48 89 4c 24 e8       	mov    %rcx,-0x18(%rsp)
    18c4:	48 89 44 24 f0       	mov    %rax,-0x10(%rsp)
    18c9:	48 89 5c 24 c0       	mov    %rbx,-0x40(%rsp)
    18ce:	48 89 4c 24 c8       	mov    %rcx,-0x38(%rsp)
    18d3:	48 89 44 24 d0       	mov    %rax,-0x30(%rsp)
    18d8:	48 8b 4c 24 c8       	mov    -0x38(%rsp),%rcx
    18dd:	48 8b 74 24 d0       	mov    -0x30(%rsp),%rsi
    18e2:	49 8d 5a 04          	lea    0x4(%r10),%rbx
    18e6:	31 ed                	xor    %ebp,%ebp
    18e8:	48 8b 44 24 c0       	mov    -0x40(%rsp),%rax
    18ed:	f3 45 0f 10 37       	movss  (%r15),%xmm14
    18f2:	4d 8d 5a 08          	lea    0x8(%r10),%r11
    18f6:	f3 0f 10 4e 08       	movss  0x8(%rsi),%xmm1
    18fb:	f3 0f 10 51 08       	movss  0x8(%rcx),%xmm2
    1900:	f3 45 0f 10 6f 04    	movss  0x4(%r15),%xmm13
    1906:	f3 44 0f 10 60 08    	movss  0x8(%rax),%xmm12
    190c:	f3 44 0f 10 59 04    	movss  0x4(%rcx),%xmm11
    1912:	f3 0f 10 3e          	movss  (%rsi),%xmm7
    1916:	f3 0f 11 4c 24 b8    	movss  %xmm1,-0x48(%rsp)
    191c:	f3 44 0f 10 11       	movss  (%rcx),%xmm10
    1921:	f3 0f 10 70 04       	movss  0x4(%rax),%xmm6
    1926:	f3 0f 11 54 24 bc    	movss  %xmm2,-0x44(%rsp)
    192c:	f3 45 0f 10 4f 08    	movss  0x8(%r15),%xmm9
    1932:	f3 44 0f 10 46 04    	movss  0x4(%rsi),%xmm8
    1938:	f3 0f 10 28          	movss  (%rax),%xmm5
    193c:	0f 1f 40 00          	nopl   0x0(%rax)
    1940:	49 8b 34 2e          	mov    (%r14,%rbp,1),%rsi
    1944:	49 8b 4c 2d 00       	mov    0x0(%r13,%rbp,1),%rcx
    1949:	31 c0                	xor    %eax,%eax
    194b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    1950:	48 8b 14 06          	mov    (%rsi,%rax,1),%rdx
    1954:	f3 42 0f 10 0c 0a    	movss  (%rdx,%r9,1),%xmm1
    195a:	f3 42 0f 10 1c 02    	movss  (%rdx,%r8,1),%xmm3
    1960:	f3 0f 10 14 3a       	movss  (%rdx,%rdi,1),%xmm2
    1965:	f3 42 0f 10 24 22    	movss  (%rdx,%r12,1),%xmm4
    196b:	48 8b 14 01          	mov    (%rcx,%rax,1),%rdx
    196f:	48 83 c0 08          	add    $0x8,%rax
    1973:	44 0f 28 fc          	movaps %xmm4,%xmm15
    1977:	f3 42 0f 10 04 12    	movss  (%rdx,%r10,1),%xmm0
    197d:	f3 44 0f 59 f8       	mulss  %xmm0,%xmm15
    1982:	f3 41 0f 58 ff       	addss  %xmm15,%xmm7
    1987:	44 0f 28 fb          	movaps %xmm3,%xmm15
    198b:	f3 44 0f 59 f8       	mulss  %xmm0,%xmm15
    1990:	f3 41 0f 58 ef       	addss  %xmm15,%xmm5
    1995:	44 0f 28 fa          	movaps %xmm2,%xmm15
    1999:	f3 44 0f 59 f8       	mulss  %xmm0,%xmm15
    199e:	f3 0f 59 c1          	mulss  %xmm1,%xmm0
    19a2:	f3 45 0f 58 f7       	addss  %xmm15,%xmm14
    19a7:	44 0f 28 fc          	movaps %xmm4,%xmm15
    19ab:	f3 44 0f 58 d0       	addss  %xmm0,%xmm10
    19b0:	f3 42 0f 10 04 1a    	movss  (%rdx,%r11,1),%xmm0
    19b6:	f3 44 0f 59 f8       	mulss  %xmm0,%xmm15
    19bb:	f3 44 0f 58 7c 24 b8 	addss  -0x48(%rsp),%xmm15
    19c2:	f3 44 0f 11 7c 24 b8 	movss  %xmm15,-0x48(%rsp)
    19c9:	44 0f 28 fb          	movaps %xmm3,%xmm15
    19cd:	f3 44 0f 59 f8       	mulss  %xmm0,%xmm15
    19d2:	f3 45 0f 58 e7       	addss  %xmm15,%xmm12
    19d7:	44 0f 28 fa          	movaps %xmm2,%xmm15
    19db:	f3 44 0f 59 f8       	mulss  %xmm0,%xmm15
    19e0:	f3 0f 59 c1          	mulss  %xmm1,%xmm0
    19e4:	f3 0f 58 44 24 bc    	addss  -0x44(%rsp),%xmm0
    19ea:	f3 0f 11 44 24 bc    	movss  %xmm0,-0x44(%rsp)
    19f0:	f3 0f 10 04 1a       	movss  (%rdx,%rbx,1),%xmm0
    19f5:	f3 45 0f 58 cf       	addss  %xmm15,%xmm9
    19fa:	f3 0f 59 e0          	mulss  %xmm0,%xmm4
    19fe:	f3 0f 59 d8          	mulss  %xmm0,%xmm3
    1a02:	f3 0f 59 d0          	mulss  %xmm0,%xmm2
    1a06:	f3 0f 59 c8          	mulss  %xmm0,%xmm1
    1a0a:	f3 44 0f 58 c4       	addss  %xmm4,%xmm8
    1a0f:	f3 0f 58 f3          	addss  %xmm3,%xmm6
    1a13:	f3 44 0f 58 ea       	addss  %xmm2,%xmm13
    1a18:	f3 44 0f 58 d9       	addss  %xmm1,%xmm11
    1a1d:	48 3d e0 01 00 00    	cmp    $0x1e0,%rax
    1a23:	0f 85 27 ff ff ff    	jne    1950 <backpropagation+0xf0>
    1a29:	48 83 c5 08          	add    $0x8,%rbp
    1a2d:	48 81 fd e0 01 00 00 	cmp    $0x1e0,%rbp
    1a34:	0f 85 06 ff ff ff    	jne    1940 <backpropagation+0xe0>
    1a3a:	48 8b 44 24 c0       	mov    -0x40(%rsp),%rax
    1a3f:	48 8b 4c 24 c8       	mov    -0x38(%rsp),%rcx
    1a44:	f3 45 0f 11 37       	movss  %xmm14,(%r15)
    1a49:	49 83 c2 0c          	add    $0xc,%r10
    1a4d:	48 8b 74 24 d0       	mov    -0x30(%rsp),%rsi
    1a52:	f3 45 0f 11 6f 04    	movss  %xmm13,0x4(%r15)
    1a58:	49 83 c7 0c          	add    $0xc,%r15
    1a5c:	f3 44 0f 11 60 08    	movss  %xmm12,0x8(%rax)
    1a62:	48 83 c1 0c          	add    $0xc,%rcx
    1a66:	48 83 c0 0c          	add    $0xc,%rax
    1a6a:	f3 44 0f 11 59 f8    	movss  %xmm11,-0x8(%rcx)
    1a70:	48 83 c6 0c          	add    $0xc,%rsi
    1a74:	f3 44 0f 11 51 f4    	movss  %xmm10,-0xc(%rcx)
    1a7a:	f3 45 0f 11 4f fc    	movss  %xmm9,-0x4(%r15)
    1a80:	f3 0f 11 7e f4       	movss  %xmm7,-0xc(%rsi)
    1a85:	f3 0f 10 7c 24 bc    	movss  -0x44(%rsp),%xmm7
    1a8b:	f3 44 0f 11 46 f8    	movss  %xmm8,-0x8(%rsi)
    1a91:	f3 0f 11 70 f8       	movss  %xmm6,-0x8(%rax)
    1a96:	f3 0f 10 74 24 b8    	movss  -0x48(%rsp),%xmm6
    1a9c:	f3 0f 11 68 f4       	movss  %xmm5,-0xc(%rax)
    1aa1:	f3 0f 11 76 fc       	movss  %xmm6,-0x4(%rsi)
    1aa6:	48 89 44 24 c0       	mov    %rax,-0x40(%rsp)
    1aab:	f3 0f 11 79 fc       	movss  %xmm7,-0x4(%rcx)
    1ab0:	48 89 74 24 d0       	mov    %rsi,-0x30(%rsp)
    1ab5:	48 89 4c 24 c8       	mov    %rcx,-0x38(%rsp)
    1aba:	49 81 fa fc 03 00 00 	cmp    $0x3fc,%r10
    1ac1:	0f 85 11 fe ff ff    	jne    18d8 <backpropagation+0x78>
    1ac7:	48 8b 44 24 e8       	mov    -0x18(%rsp),%rax
    1acc:	45 31 d2             	xor    %r10d,%r10d
    1acf:	f3 0f 10 a0 fc 03 00 	movss  0x3fc(%rax),%xmm4
    1ad6:	00 
    1ad7:	48 8b 44 24 d8       	mov    -0x28(%rsp),%rax
    1adc:	f3 0f 10 98 fc 03 00 	movss  0x3fc(%rax),%xmm3
    1ae3:	00 
    1ae4:	48 8b 44 24 e0       	mov    -0x20(%rsp),%rax
    1ae9:	f3 0f 10 90 fc 03 00 	movss  0x3fc(%rax),%xmm2
    1af0:	00 
    1af1:	48 8b 44 24 f0       	mov    -0x10(%rsp),%rax
    1af6:	f3 0f 10 88 fc 03 00 	movss  0x3fc(%rax),%xmm1
    1afd:	00 
    1afe:	4b 8b 74 15 00       	mov    0x0(%r13,%r10,1),%rsi
    1b03:	4b 8b 0c 16          	mov    (%r14,%r10,1),%rcx
    1b07:	31 c0                	xor    %eax,%eax
    1b09:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1b10:	48 8b 14 06          	mov    (%rsi,%rax,1),%rdx
    1b14:	f3 0f 10 82 fc 03 00 	movss  0x3fc(%rdx),%xmm0
    1b1b:	00 
    1b1c:	48 8b 14 01          	mov    (%rcx,%rax,1),%rdx
    1b20:	48 83 c0 08          	add    $0x8,%rax
    1b24:	f3 42 0f 10 2c 22    	movss  (%rdx,%r12,1),%xmm5
    1b2a:	f3 0f 59 e8          	mulss  %xmm0,%xmm5
    1b2e:	f3 0f 58 cd          	addss  %xmm5,%xmm1
    1b32:	f3 42 0f 10 2c 02    	movss  (%rdx,%r8,1),%xmm5
    1b38:	f3 0f 59 e8          	mulss  %xmm0,%xmm5
    1b3c:	f3 0f 58 d5          	addss  %xmm5,%xmm2
    1b40:	f3 0f 10 2c 3a       	movss  (%rdx,%rdi,1),%xmm5
    1b45:	f3 0f 59 e8          	mulss  %xmm0,%xmm5
    1b49:	f3 42 0f 59 04 0a    	mulss  (%rdx,%r9,1),%xmm0
    1b4f:	f3 0f 58 dd          	addss  %xmm5,%xmm3
    1b53:	f3 0f 58 e0          	addss  %xmm0,%xmm4
    1b57:	48 3d e0 01 00 00    	cmp    $0x1e0,%rax
    1b5d:	75 b1                	jne    1b10 <backpropagation+0x2b0>
    1b5f:	49 83 c2 08          	add    $0x8,%r10
    1b63:	49 81 fa e0 01 00 00 	cmp    $0x1e0,%r10
    1b6a:	75 92                	jne    1afe <backpropagation+0x29e>
    1b6c:	48 8b 44 24 e8       	mov    -0x18(%rsp),%rax
    1b71:	49 83 c4 10          	add    $0x10,%r12
    1b75:	f3 0f 11 a0 fc 03 00 	movss  %xmm4,0x3fc(%rax)
    1b7c:	00 
    1b7d:	48 8b 44 24 d8       	mov    -0x28(%rsp),%rax
    1b82:	f3 0f 11 98 fc 03 00 	movss  %xmm3,0x3fc(%rax)
    1b89:	00 
    1b8a:	48 8b 44 24 e0       	mov    -0x20(%rsp),%rax
    1b8f:	f3 0f 11 90 fc 03 00 	movss  %xmm2,0x3fc(%rax)
    1b96:	00 
    1b97:	48 8b 44 24 f0       	mov    -0x10(%rsp),%rax
    1b9c:	f3 0f 11 88 fc 03 00 	movss  %xmm1,0x3fc(%rax)
    1ba3:	00 
    1ba4:	49 81 fc 00 02 00 00 	cmp    $0x200,%r12
    1bab:	0f 85 da fc ff ff    	jne    188b <backpropagation+0x2b>
    1bb1:	5b                   	pop    %rbx
    1bb2:	5d                   	pop    %rbp
    1bb3:	41 5c                	pop    %r12
    1bb5:	41 5d                	pop    %r13
    1bb7:	41 5e                	pop    %r14
    1bb9:	41 5f                	pop    %r15
    1bbb:	c3                   	ret    
    1bbc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001bc0 <equal>:
    1bc0:	f3 0f 1e fa          	endbr64 
    1bc4:	0f 28 d0             	movaps %xmm0,%xmm2
    1bc7:	f3 0f 10 1d 81 04 00 	movss  0x481(%rip),%xmm3        # 2050 <_IO_stdin_used+0x50>
    1bce:	00 
    1bcf:	31 c0                	xor    %eax,%eax
    1bd1:	f3 0f 5c d1          	subss  %xmm1,%xmm2
    1bd5:	0f 54 c3             	andps  %xmm3,%xmm0
    1bd8:	66 0f ef c9          	pxor   %xmm1,%xmm1
    1bdc:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
    1be0:	0f 54 d3             	andps  %xmm3,%xmm2
    1be3:	f3 0f 5a ca          	cvtss2sd %xmm2,%xmm1
    1be7:	f2 0f 5e c8          	divsd  %xmm0,%xmm1
    1beb:	f2 0f 10 05 6d 04 00 	movsd  0x46d(%rip),%xmm0        # 2060 <_IO_stdin_used+0x60>
    1bf2:	00 
    1bf3:	66 0f 2f c1          	comisd %xmm1,%xmm0
    1bf7:	0f 96 c0             	setbe  %al
    1bfa:	c3                   	ret    
    1bfb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001c00 <Compare_backpropagation>:
    1c00:	f3 0f 1e fa          	endbr64 
    1c04:	41 54                	push   %r12
    1c06:	4c 8b 25 0b 24 00 00 	mov    0x240b(%rip),%r12        # 4018 <test_filter>
    1c0d:	45 31 c0             	xor    %r8d,%r8d
    1c10:	55                   	push   %rbp
    1c11:	48 8b 2d 10 24 00 00 	mov    0x2410(%rip),%rbp        # 4028 <out>
    1c18:	53                   	push   %rbx
    1c19:	48 8b 1d 00 24 00 00 	mov    0x2400(%rip),%rbx        # 4020 <in_FP>
    1c20:	4f 8b 14 44          	mov    (%r12,%r8,2),%r10
    1c24:	45 31 c9             	xor    %r9d,%r9d
    1c27:	f3 41 0f 10 0a       	movss  (%r10),%xmm1
    1c2c:	45 31 db             	xor    %r11d,%r11d
    1c2f:	90                   	nop
    1c30:	4a 8b 7c 1d 00       	mov    0x0(%rbp,%r11,1),%rdi
    1c35:	4a 8b 34 1b          	mov    (%rbx,%r11,1),%rsi
    1c39:	31 c0                	xor    %eax,%eax
    1c3b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    1c40:	48 8b 0c 07          	mov    (%rdi,%rax,1),%rcx
    1c44:	48 8b 14 06          	mov    (%rsi,%rax,1),%rdx
    1c48:	48 83 c0 08          	add    $0x8,%rax
    1c4c:	f3 42 0f 10 04 01    	movss  (%rcx,%r8,1),%xmm0
    1c52:	f3 42 0f 59 04 0a    	mulss  (%rdx,%r9,1),%xmm0
    1c58:	f3 0f 58 c8          	addss  %xmm0,%xmm1
    1c5c:	f3 41 0f 11 0a       	movss  %xmm1,(%r10)
    1c61:	48 3d e0 01 00 00    	cmp    $0x1e0,%rax
    1c67:	75 d7                	jne    1c40 <Compare_backpropagation+0x40>
    1c69:	49 83 c3 08          	add    $0x8,%r11
    1c6d:	49 81 fb e0 01 00 00 	cmp    $0x1e0,%r11
    1c74:	75 ba                	jne    1c30 <Compare_backpropagation+0x30>
    1c76:	49 83 c1 04          	add    $0x4,%r9
    1c7a:	49 83 c2 04          	add    $0x4,%r10
    1c7e:	49 81 f9 00 04 00 00 	cmp    $0x400,%r9
    1c85:	75 a0                	jne    1c27 <Compare_backpropagation+0x27>
    1c87:	49 83 c0 04          	add    $0x4,%r8
    1c8b:	49 81 f8 00 02 00 00 	cmp    $0x200,%r8
    1c92:	75 8c                	jne    1c20 <Compare_backpropagation+0x20>
    1c94:	48 8b 0d 95 23 00 00 	mov    0x2395(%rip),%rcx        # 4030 <filter_FP>
    1c9b:	f2 0f 10 1d bd 03 00 	movsd  0x3bd(%rip),%xmm3        # 2060 <_IO_stdin_used+0x60>
    1ca2:	00 
    1ca3:	31 c0                	xor    %eax,%eax
    1ca5:	f3 0f 10 15 a3 03 00 	movss  0x3a3(%rip),%xmm2        # 2050 <_IO_stdin_used+0x50>
    1cac:	00 
    1cad:	49 8b 3c 04          	mov    (%r12,%rax,1),%rdi
    1cb1:	48 8b 34 01          	mov    (%rcx,%rax,1),%rsi
    1cb5:	31 d2                	xor    %edx,%edx
    1cb7:	f3 0f 10 0c 16       	movss  (%rsi,%rdx,1),%xmm1
    1cbc:	0f 28 c1             	movaps %xmm1,%xmm0
    1cbf:	f3 0f 5c 04 17       	subss  (%rdi,%rdx,1),%xmm0
    1cc4:	0f 54 ca             	andps  %xmm2,%xmm1
    1cc7:	f3 0f 5a c9          	cvtss2sd %xmm1,%xmm1
    1ccb:	0f 54 c2             	andps  %xmm2,%xmm0
    1cce:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
    1cd2:	f2 0f 5e c1          	divsd  %xmm1,%xmm0
    1cd6:	66 0f 2f d8          	comisd %xmm0,%xmm3
    1cda:	76 24                	jbe    1d00 <Compare_backpropagation+0x100>
    1cdc:	48 83 c2 04          	add    $0x4,%rdx
    1ce0:	48 81 fa 00 04 00 00 	cmp    $0x400,%rdx
    1ce7:	75 ce                	jne    1cb7 <Compare_backpropagation+0xb7>
    1ce9:	48 83 c0 08          	add    $0x8,%rax
    1ced:	48 3d 00 04 00 00    	cmp    $0x400,%rax
    1cf3:	75 b8                	jne    1cad <Compare_backpropagation+0xad>
    1cf5:	31 c0                	xor    %eax,%eax
    1cf7:	eb 0c                	jmp    1d05 <Compare_backpropagation+0x105>
    1cf9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1d00:	b8 01 00 00 00       	mov    $0x1,%eax
    1d05:	5b                   	pop    %rbx
    1d06:	5d                   	pop    %rbp
    1d07:	41 5c                	pop    %r12
    1d09:	c3                   	ret    

Disassembly of section .fini:

0000000000001d0c <_fini>:
    1d0c:	f3 0f 1e fa          	endbr64 
    1d10:	48 83 ec 08          	sub    $0x8,%rsp
    1d14:	48 83 c4 08          	add    $0x8,%rsp
    1d18:	c3                   	ret    
