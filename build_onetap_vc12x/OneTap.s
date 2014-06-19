	.arch armv6
	.fpu softvfp
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 6
	.eabi_attribute 34, 1
	.eabi_attribute 18, 2
	.file	"OneTap.cpp"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.rodata
	.align	2
.LC0:
	.ascii	"`xffffffHello, World!\000"
	.section	.text.main,"ax",%progbits
	.align	2
	.global	main
	.hidden	main
	.type	main, %function
main:
.LFB19:
	.file 1 "C:/Users/Randy/Documents/MarmaladeGames/OneTap/Source/OneTap.cpp"
	.loc 1 6 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, lr}
.LCFI0:
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 1 11 0
	b	.L2
.L3:
	.loc 1 14 0
	bl	s3eKeyboardUpdate(PLT)
	.loc 1 15 0
	bl	s3ePointerUpdate(PLT)
	.loc 1 18 0
	mov	r0, #0
	mov	r1, #0
	mov	r2, #255
	bl	s3eSurfaceClear(PLT)
	.loc 1 23 0
	mov	r0, #120
	mov	r1, #150
	ldr	r3, .L5
.LPIC0:
	add	r3, pc, r3
	mov	r2, r3
	mov	r3, #0
	bl	s3eDebugPrint(PLT)
	.loc 1 26 0
	bl	s3eSurfaceShow(PLT)
	.loc 1 33 0
	mov	r0, #0
	bl	s3eDeviceYield(PLT)
.L2:
	.loc 1 11 0 discriminator 1
	bl	s3eDeviceCheckQuitRequest(PLT)
	mov	r3, r0
	cmp	r3, #0
	movne	r3, #0
	moveq	r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	bne	.L3
	.loc 1 39 0
	mov	r3, #0
	.loc 1 40 0
	mov	r0, r3
	ldmfd	sp!, {r3, pc}
.L6:
	.align	2
.L5:
	.word	.LC0-(.LPIC0+8)
	.cfi_endproc
.LFE19:
	.size	main, .-main
	.text
.Letext0:
	.file 2 "c:/marmalade/7.3/s3e/h/std/c++/typeinfo.h"
	.file 3 "c:/marmalade/7.3/s3e/h/std/c++/exception"
	.file 4 "c:/marmalade/7.3/s3e/h/std/c++/typeinfo"
	.file 5 "c:/marmalade/7.3/s3e/h/std/c++/stl/_config.h"
	.file 6 "<built-in>"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x121
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF20
	.byte	0x4
	.4byte	.LASF21
	.4byte	.LASF22
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF1
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF2
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF3
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF4
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF9
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF11
	.uleb128 0x4
	.ascii	"std\000"
	.byte	0x6
	.byte	0
	.4byte	0xb5
	.uleb128 0x5
	.4byte	.LASF12
	.byte	0x1
	.uleb128 0x5
	.4byte	.LASF13
	.byte	0x1
	.uleb128 0x6
	.byte	0x2
	.byte	0x17
	.4byte	0x8f
	.uleb128 0x5
	.4byte	.LASF14
	.byte	0x1
	.uleb128 0x5
	.4byte	.LASF15
	.byte	0x1
	.uleb128 0x5
	.4byte	.LASF16
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.4byte	.LASF18
	.byte	0x5
	.2byte	0x1e9
	.4byte	0x84
	.uleb128 0x8
	.4byte	.LASF17
	.byte	0x5
	.2byte	0x222
	.4byte	0xff
	.uleb128 0x6
	.byte	0x3
	.byte	0x4e
	.4byte	0x8f
	.uleb128 0x6
	.byte	0x3
	.byte	0x4f
	.4byte	0x95
	.uleb128 0x6
	.byte	0x3
	.byte	0x4e
	.4byte	0x8f
	.uleb128 0x6
	.byte	0x3
	.byte	0x4f
	.4byte	0x95
	.uleb128 0x6
	.byte	0x4
	.byte	0x2f
	.4byte	0xa2
	.uleb128 0x6
	.byte	0x4
	.byte	0x33
	.4byte	0xa8
	.uleb128 0x6
	.byte	0x4
	.byte	0x3d
	.4byte	0xae
	.byte	0
	.uleb128 0x7
	.4byte	.LASF19
	.byte	0x5
	.2byte	0x224
	.4byte	0xc1
	.uleb128 0x9
	.byte	0x1
	.4byte	.LASF23
	.byte	0x1
	.byte	0x5
	.4byte	0x4c
	.4byte	.LFB19
	.4byte	.LFE19
	.4byte	.LLST0
	.byte	0x1
	.byte	0
	.section	.debug_abbrev,"",%progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x39
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x2
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x8
	.byte	0
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x18
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x8
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x18
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x39
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x2116
	.uleb128 0xc
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LFB19
	.4byte	.LCFI0
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI0
	.4byte	.LFE19
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x1c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LFB19
	.4byte	.LFE19
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF5:
	.ascii	"long long int\000"
.LASF15:
	.ascii	"bad_typeid\000"
.LASF4:
	.ascii	"unsigned int\000"
.LASF19:
	.ascii	"stlport\000"
.LASF16:
	.ascii	"bad_cast\000"
.LASF7:
	.ascii	"long unsigned int\000"
.LASF6:
	.ascii	"long long unsigned int\000"
.LASF12:
	.ascii	"exception\000"
.LASF8:
	.ascii	"wchar_t\000"
.LASF9:
	.ascii	"char\000"
.LASF14:
	.ascii	"type_info\000"
.LASF0:
	.ascii	"unsigned char\000"
.LASF23:
	.ascii	"main\000"
.LASF11:
	.ascii	"long int\000"
.LASF3:
	.ascii	"short int\000"
.LASF17:
	.ascii	"_STL\000"
.LASF21:
	.ascii	"C:/Users/Randy/Documents/MarmaladeGames/OneTap/Sour"
	.ascii	"ce/OneTap.cpp\000"
.LASF2:
	.ascii	"short unsigned int\000"
.LASF1:
	.ascii	"signed char\000"
.LASF22:
	.ascii	"C:\\\\Users\\\\Randy\\\\Documents\\\\MarmaladeGames"
	.ascii	"\\\\OneTap\\\\build_onetap_vc12x\000"
.LASF20:
	.ascii	"GNU C++ 4.8.3 20131129 (release) [ARM/embedded-4_8-"
	.ascii	"branch revision 205641] -fpreprocessed -mstructure-"
	.ascii	"size-boundary=8 -march=armv6 -mfloat-abi=soft -mthu"
	.ascii	"mb-interwork -mword-relocations -g -gdwarf-2 -O0 -f"
	.ascii	"unsigned-char -fno-strict-aliasing -fno-stack-prote"
	.ascii	"ctor -fno-short-enums -fshort-wchar -fomit-frame-po"
	.ascii	"inter -fmessage-length=0 -ffunction-sections -fvisi"
	.ascii	"bility=hidden -fPIC -fvisibility-inlines-hidden -fn"
	.ascii	"o-exceptions\000"
.LASF13:
	.ascii	"bad_exception\000"
.LASF18:
	.ascii	"__std_alias\000"
.LASF10:
	.ascii	"sizetype\000"
	.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.8.3 20131129 (release) [ARM/embedded-4_8-branch revision 205641]"
