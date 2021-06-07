/* This linker script generated from xt-genldscripts.tpp for LSP PaiosHdUser */
/* Linker Script for default link */
MEMORY
{
  ResetVector.text_seg :              	org = 0x50000000, len = 0x300
  WindowVectors.text_seg :            	org = 0x60000000, len = 0x178
  Level2InterruptVector.literal_seg : 	org = 0x60000178, len = 0x8
  Level2InterruptVector.text_seg :    	org = 0x60000180, len = 0x38
  Level3InterruptVector.literal_seg : 	org = 0x600001B8, len = 0x8
  Level3InterruptVector.text_seg :    	org = 0x600001C0, len = 0x38
  Level4InterruptVector.literal_seg : 	org = 0x600001F8, len = 0x8
  Level4InterruptVector.text_seg :    	org = 0x60000200, len = 0x38
  Level5InterruptVector.literal_seg : 	org = 0x60000238, len = 0x8
  Level5InterruptVector.text_seg :    	org = 0x60000240, len = 0x38
  DebugExceptionVector.literal_seg :  	org = 0x60000278, len = 0x8
  DebugExceptionVector.text_seg :     	org = 0x60000280, len = 0x38
  NMIExceptionVector.literal_seg :    	org = 0x600002B8, len = 0x8
  NMIExceptionVector.text_seg :       	org = 0x600002C0, len = 0x38
  KernelExecptionVector.literal_seg : 	org = 0x600002F8, len = 0x8
  KernelExceptionVector.text_seg :    	org = 0x60000300, len = 0x38
  UserExceptionVector.literal_seg :   	org = 0x60000338, len = 0x8
  UserExceptionVector.text_seg :      	org = 0x60000340, len = 0x38
  DoubleExceptionVector.literal_seg : 	org = 0x60000378, len = 0x48
  DoubleExceptionVector.text_seg :    	org = 0x600003C0, len = 0x40
  SystemRAM.others_seg :              	org = 0x60000800, len = 0x3F800
}

PHDRS
{
  FastRAM.null_phdr PT_LOAD;
  FastRAM.data_phdr PT_LOAD;
  ResetVector.text_phdr PT_LOAD;
  SystemROM.others_phdr PT_LOAD;
  WindowVectors.text_phdr PT_LOAD;
  Level2InterruptVector.literal_phdr PT_LOAD;
  Level2InterruptVector.text_phdr PT_LOAD;
  Level3InterruptVector.literal_phdr PT_LOAD;
  Level3InterruptVector.text_phdr PT_LOAD;
  Level4InterruptVector.literal_phdr PT_LOAD;
  Level4InterruptVector.text_phdr PT_LOAD;
  Level5InterruptVector.literal_phdr PT_LOAD;
  Level5InterruptVector.text_phdr PT_LOAD;
  DebugExceptionVector.literal_phdr PT_LOAD;
  DebugExceptionVector.text_phdr PT_LOAD;
  NMIExceptionVector.literal_phdr PT_LOAD;
  NMIExceptionVector.text_phdr PT_LOAD;
  KernelExecptionVector.literal_phdr PT_LOAD;
  KernelExceptionVector.text_phdr PT_LOAD;
  UserExceptionVector.literal_phdr PT_LOAD;
  UserExceptionVector.text_phdr PT_LOAD;
  DoubleExceptionVector.literal_phdr PT_LOAD;
  DoubleExceptionVector.text_phdr PT_LOAD;
  VectorsLoad.text_phdr PT_LOAD;
  SystemRAM.others_phdr PT_LOAD;
  SystemRAM.others_bss_phdr PT_LOAD;
}


/*  Default entry point:  */
ENTRY(_ResetVector)

/*  Memory boundary addresses:  */
_memmap_mem_device_reg_start = 0x3f000000;
_memmap_mem_device_reg_end   = 0x3f080000;
_memmap_mem_mirror_rom_start = 0xb0000000;
_memmap_mem_mirror_rom_end   = 0xc0000000;
_memmap_mem_mirror_ram_start = 0xc0000000;
_memmap_mem_mirror_ram_end   = 0xd0000000;
_memmap_mem_dram1_start = 0x3fff0000;
_memmap_mem_dram1_end   = 0x3fff8000;
_memmap_mem_dram0_start = 0x3fff8000;
_memmap_mem_dram0_end   = 0x40000000;
_memmap_mem_system_rom_start = 0x50000000;
_memmap_mem_system_rom_end   = 0x50020000;
_memmap_mem_system_vec_start = 0x60000000;
_memmap_mem_system_vec_end   = 0x60000400;
_memmap_mem_system_ram_start = 0x60000400;
_memmap_mem_system_ram_end   = 0x60040000;
_memmap_mem_sdram_start = 0x60080000;
_memmap_mem_sdram_end   = 0x61080000;
device_reg = 0x3f000000;
mirror_rom = 0xb0000000;
mirror_ram = 0xc0000000;

/*  Memory segment boundary addresses:  */
_memmap_seg_ResetVector.text_start = 0x50000000;
_memmap_seg_ResetVector.text_max   = 0x50000300;
_memmap_seg_WindowVectors.text_start = 0x60000000;
_memmap_seg_WindowVectors.text_max   = 0x60000178;
_memmap_seg_Level2InterruptVector.literal_start = 0x60000178;
_memmap_seg_Level2InterruptVector.literal_max   = 0x60000180;
_memmap_seg_Level2InterruptVector.text_start = 0x60000180;
_memmap_seg_Level2InterruptVector.text_max   = 0x600001b8;
_memmap_seg_Level3InterruptVector.literal_start = 0x600001b8;
_memmap_seg_Level3InterruptVector.literal_max   = 0x600001c0;
_memmap_seg_Level3InterruptVector.text_start = 0x600001c0;
_memmap_seg_Level3InterruptVector.text_max   = 0x600001f8;
_memmap_seg_Level4InterruptVector.literal_start = 0x600001f8;
_memmap_seg_Level4InterruptVector.literal_max   = 0x60000200;
_memmap_seg_Level4InterruptVector.text_start = 0x60000200;
_memmap_seg_Level4InterruptVector.text_max   = 0x60000238;
_memmap_seg_Level5InterruptVector.literal_start = 0x60000238;
_memmap_seg_Level5InterruptVector.literal_max   = 0x60000240;
_memmap_seg_Level5InterruptVector.text_start = 0x60000240;
_memmap_seg_Level5InterruptVector.text_max   = 0x60000278;
_memmap_seg_DebugExceptionVector.literal_start = 0x60000278;
_memmap_seg_DebugExceptionVector.literal_max   = 0x60000280;
_memmap_seg_DebugExceptionVector.text_start = 0x60000280;
_memmap_seg_DebugExceptionVector.text_max   = 0x600002b8;
_memmap_seg_NMIExceptionVector.literal_start = 0x600002b8;
_memmap_seg_NMIExceptionVector.literal_max   = 0x600002c0;
_memmap_seg_NMIExceptionVector.text_start = 0x600002c0;
_memmap_seg_NMIExceptionVector.text_max   = 0x600002f8;
_memmap_seg_KernelExecptionVector.literal_start = 0x600002f8;
_memmap_seg_KernelExecptionVector.literal_max   = 0x60000300;
_memmap_seg_KernelExceptionVector.text_start = 0x60000300;
_memmap_seg_KernelExceptionVector.text_max   = 0x60000338;
_memmap_seg_UserExceptionVector.literal_start = 0x60000338;
_memmap_seg_UserExceptionVector.literal_max   = 0x60000340;
_memmap_seg_UserExceptionVector.text_start = 0x60000340;
_memmap_seg_UserExceptionVector.text_max   = 0x60000378;
_memmap_seg_DoubleExceptionVector.literal_start = 0x60000378;
_memmap_seg_DoubleExceptionVector.literal_max   = 0x600003c0;
_memmap_seg_DoubleExceptionVector.text_start = 0x600003c0;
_memmap_seg_DoubleExceptionVector.text_max   = 0x60000400;
_memmap_seg_SystemRAM.others_start = 0x60000800;
_memmap_seg_SystemRAM.others_max   = 0x60040000;

_rom_store_table = 0;
PROVIDE(_memmap_vecbase_reset = 0x60000000);
PROVIDE(_memmap_reset_vector = 0x50000000);
/* Various memory-map dependent cache attribute settings: */
_memmap_cacheattr_wb_base = 0x02204420;
_memmap_cacheattr_wt_base = 0x02201120;
_memmap_cacheattr_bp_base = 0x02202220;
_memmap_cacheattr_unused_mask = 0xF00F000F;
_memmap_cacheattr_wb_trapnull = 0x2222442F;
_memmap_cacheattr_wba_trapnull = 0x2222442F;
_memmap_cacheattr_wbna_trapnull = 0x2222552F;
_memmap_cacheattr_wt_trapnull = 0x2222112F;
_memmap_cacheattr_bp_trapnull = 0x2222222F;
_memmap_cacheattr_wb_strict = 0xF22F442F;
_memmap_cacheattr_wt_strict = 0xF22F112F;
_memmap_cacheattr_bp_strict = 0xF22F222F;
_memmap_cacheattr_wb_allvalid = 0x22224422;
_memmap_cacheattr_wt_allvalid = 0x22221122;
_memmap_cacheattr_bp_allvalid = 0x22222222;
PROVIDE(_memmap_cacheattr_reset = _memmap_cacheattr_wb_trapnull);

SECTIONS
{

  .ResetVector.text : ALIGN(4)
  {
    _ResetVector_text_start = ABSOLUTE(.);
    KEEP (*(.ResetVector.text))
    _ResetVector_text_end = ABSOLUTE(.);
    _memmap_seg_ResetVector.text_end = ALIGN(0x8);
  } >ResetVector.text_seg :ResetVector.text_phdr

  .WindowVectors.text : ALIGN(4)
  {
    _WindowVectors_text_start = ABSOLUTE(.);
    KEEP (*(.WindowVectors.text))
    _WindowVectors_text_end = ABSOLUTE(.);
    _memmap_seg_WindowVectors.text_end = ALIGN(0x8);
  } >WindowVectors.text_seg :WindowVectors.text_phdr

  .Level2InterruptVector.literal : ALIGN(4)
  {
    _Level2InterruptVector_literal_start = ABSOLUTE(.);
    *(.Level2InterruptVector.literal)
    _Level2InterruptVector_literal_end = ABSOLUTE(.);
    _memmap_seg_Level2InterruptVector.literal_end = ALIGN(0x8);
  } >Level2InterruptVector.literal_seg :Level2InterruptVector.literal_phdr

  .Level2InterruptVector.text : ALIGN(4)
  {
    _Level2InterruptVector_text_start = ABSOLUTE(.);
    KEEP (*(.Level2InterruptVector.text))
    _Level2InterruptVector_text_end = ABSOLUTE(.);
    _memmap_seg_Level2InterruptVector.text_end = ALIGN(0x8);
  } >Level2InterruptVector.text_seg :Level2InterruptVector.text_phdr

  .Level3InterruptVector.literal : ALIGN(4)
  {
    _Level3InterruptVector_literal_start = ABSOLUTE(.);
    *(.Level3InterruptVector.literal)
    _Level3InterruptVector_literal_end = ABSOLUTE(.);
    _memmap_seg_Level3InterruptVector.literal_end = ALIGN(0x8);
  } >Level3InterruptVector.literal_seg :Level3InterruptVector.literal_phdr

  .Level3InterruptVector.text : ALIGN(4)
  {
    _Level3InterruptVector_text_start = ABSOLUTE(.);
    KEEP (*(.Level3InterruptVector.text))
    _Level3InterruptVector_text_end = ABSOLUTE(.);
    _memmap_seg_Level3InterruptVector.text_end = ALIGN(0x8);
  } >Level3InterruptVector.text_seg :Level3InterruptVector.text_phdr

  .Level4InterruptVector.literal : ALIGN(4)
  {
    _Level4InterruptVector_literal_start = ABSOLUTE(.);
    *(.Level4InterruptVector.literal)
    _Level4InterruptVector_literal_end = ABSOLUTE(.);
    _memmap_seg_Level4InterruptVector.literal_end = ALIGN(0x8);
  } >Level4InterruptVector.literal_seg :Level4InterruptVector.literal_phdr

  .Level4InterruptVector.text : ALIGN(4)
  {
    _Level4InterruptVector_text_start = ABSOLUTE(.);
    KEEP (*(.Level4InterruptVector.text))
    _Level4InterruptVector_text_end = ABSOLUTE(.);
    _memmap_seg_Level4InterruptVector.text_end = ALIGN(0x8);
  } >Level4InterruptVector.text_seg :Level4InterruptVector.text_phdr

  .Level5InterruptVector.literal : ALIGN(4)
  {
    _Level5InterruptVector_literal_start = ABSOLUTE(.);
    *(.Level5InterruptVector.literal)
    _Level5InterruptVector_literal_end = ABSOLUTE(.);
    _memmap_seg_Level5InterruptVector.literal_end = ALIGN(0x8);
  } >Level5InterruptVector.literal_seg :Level5InterruptVector.literal_phdr

  .Level5InterruptVector.text : ALIGN(4)
  {
    _Level5InterruptVector_text_start = ABSOLUTE(.);
    KEEP (*(.Level5InterruptVector.text))
    _Level5InterruptVector_text_end = ABSOLUTE(.);
    _memmap_seg_Level5InterruptVector.text_end = ALIGN(0x8);
  } >Level5InterruptVector.text_seg :Level5InterruptVector.text_phdr

  .DebugExceptionVector.literal : ALIGN(4)
  {
    _DebugExceptionVector_literal_start = ABSOLUTE(.);
    *(.DebugExceptionVector.literal)
    _DebugExceptionVector_literal_end = ABSOLUTE(.);
    _memmap_seg_DebugExceptionVector.literal_end = ALIGN(0x8);
  } >DebugExceptionVector.literal_seg :DebugExceptionVector.literal_phdr

  .DebugExceptionVector.text : ALIGN(4)
  {
    _DebugExceptionVector_text_start = ABSOLUTE(.);
    KEEP (*(.DebugExceptionVector.text))
    _DebugExceptionVector_text_end = ABSOLUTE(.);
    _memmap_seg_DebugExceptionVector.text_end = ALIGN(0x8);
  } >DebugExceptionVector.text_seg :DebugExceptionVector.text_phdr

  .NMIExceptionVector.literal : ALIGN(4)
  {
    _NMIExceptionVector_literal_start = ABSOLUTE(.);
    *(.NMIExceptionVector.literal)
    _NMIExceptionVector_literal_end = ABSOLUTE(.);
    _memmap_seg_NMIExceptionVector.literal_end = ALIGN(0x8);
  } >NMIExceptionVector.literal_seg :NMIExceptionVector.literal_phdr

  .NMIExceptionVector.text : ALIGN(4)
  {
    _NMIExceptionVector_text_start = ABSOLUTE(.);
    KEEP (*(.NMIExceptionVector.text))
    _NMIExceptionVector_text_end = ABSOLUTE(.);
    _memmap_seg_NMIExceptionVector.text_end = ALIGN(0x8);
  } >NMIExceptionVector.text_seg :NMIExceptionVector.text_phdr

  .KernelExceptionVector.literal : ALIGN(4)
  {
    _KernelExceptionVector_literal_start = ABSOLUTE(.);
    *(.KernelExceptionVector.literal)
    _KernelExceptionVector_literal_end = ABSOLUTE(.);
    _memmap_seg_KernelExecptionVector.literal_end = ALIGN(0x8);
  } >KernelExecptionVector.literal_seg :KernelExecptionVector.literal_phdr

  .KernelExceptionVector.text : ALIGN(4)
  {
    _KernelExceptionVector_text_start = ABSOLUTE(.);
    KEEP (*(.KernelExceptionVector.text))
    _KernelExceptionVector_text_end = ABSOLUTE(.);
    _memmap_seg_KernelExceptionVector.text_end = ALIGN(0x8);
  } >KernelExceptionVector.text_seg :KernelExceptionVector.text_phdr

  .UserExceptionVector.literal : ALIGN(4)
  {
    _UserExceptionVector_literal_start = ABSOLUTE(.);
    *(.UserExceptionVector.literal)
    _UserExceptionVector_literal_end = ABSOLUTE(.);
    _memmap_seg_UserExceptionVector.literal_end = ALIGN(0x8);
  } >UserExceptionVector.literal_seg :UserExceptionVector.literal_phdr

  .UserExceptionVector.text : ALIGN(4)
  {
    _UserExceptionVector_text_start = ABSOLUTE(.);
    KEEP (*(.UserExceptionVector.text))
    _UserExceptionVector_text_end = ABSOLUTE(.);
    _memmap_seg_UserExceptionVector.text_end = ALIGN(0x8);
  } >UserExceptionVector.text_seg :UserExceptionVector.text_phdr

  .DoubleExceptionVector.literal : ALIGN(4)
  {
    _DoubleExceptionVector_literal_start = ABSOLUTE(.);
    *(.DoubleExceptionVector.literal)
    _DoubleExceptionVector_literal_end = ABSOLUTE(.);
    _memmap_seg_DoubleExceptionVector.literal_end = ALIGN(0x8);
  } >DoubleExceptionVector.literal_seg :DoubleExceptionVector.literal_phdr

  .DoubleExceptionVector.text : ALIGN(4)
  {
    _DoubleExceptionVector_text_start = ABSOLUTE(.);
    KEEP (*(.DoubleExceptionVector.text))
    _DoubleExceptionVector_text_end = ABSOLUTE(.);
    _memmap_seg_DoubleExceptionVector.text_end = ALIGN(0x8);
  } >DoubleExceptionVector.text_seg :DoubleExceptionVector.text_phdr

  .ResetShadow.text : ALIGN(4)
  {
    _ResetShadow_text_start = ABSOLUTE(.);
    *(.ResetShadow.literal .ResetShadow.text)
    _ResetShadow_text_end = ABSOLUTE(.);
  } >SystemRAM.others_seg :SystemRAM.others_phdr

  .dram0.data : ALIGN(4)
  {
    _dram0_data_start = ABSOLUTE(.);
    *(.dram0.data)
    *(.dram.data)
    _dram0_data_end = ABSOLUTE(.);
  } >SystemRAM.others_seg :SystemRAM.others_phdr

  .MixedCode.text : ALIGN(4)
  {
    _MixedCode_text_start = ABSOLUTE(.);
    *(.MixedCode.literal .MixedCode.text)
    _MixedCode_text_end = ABSOLUTE(.);
  } >SystemRAM.others_seg :SystemRAM.others_phdr

  .Data.data : ALIGN(4)
  {
    _Data_data_start = ABSOLUTE(.);
    *(.Data.data)
    _Data_data_end = ABSOLUTE(.);
  } >SystemRAM.others_seg :SystemRAM.others_phdr

  .rodata : ALIGN(4)
  {
    _rodata_start = ABSOLUTE(.);
    *(.rodata)
    *(.rodata.*)
    *(.gnu.linkonce.r.*)
    *(.rodata1)
    __XT_EXCEPTION_TABLE__ = ABSOLUTE(.);
    KEEP (*(.xt_except_table))
    KEEP (*(.gcc_except_table))
    *(.gnu.linkonce.e.*)
    *(.gnu.version_r)
    KEEP (*(.eh_frame))
    /*  C++ constructor and destructor tables, properly ordered:  */
    KEEP (*crtbegin.o(.ctors))
    KEEP (*(EXCLUDE_FILE (*crtend.o) .ctors))
    KEEP (*(SORT(.ctors.*)))
    KEEP (*(.ctors))
    KEEP (*crtbegin.o(.dtors))
    KEEP (*(EXCLUDE_FILE (*crtend.o) .dtors))
    KEEP (*(SORT(.dtors.*)))
    KEEP (*(.dtors))
    /*  C++ exception handlers table:  */
    __XT_EXCEPTION_DESCS__ = ABSOLUTE(.);
    *(.xt_except_desc)
    *(.gnu.linkonce.h.*)
    __XT_EXCEPTION_DESCS_END__ = ABSOLUTE(.);
    *(.xt_except_desc_end)
    *(.dynamic)
    *(.gnu.version_d)
    . = ALIGN(4);		/* this table MUST be 4-byte aligned */
    _bss_table_start = ABSOLUTE(.);
    LONG(_bss_start)
    LONG(_bss_end)
    _bss_table_end = ABSOLUTE(.);
    _rodata_end = ABSOLUTE(.);
  } >SystemRAM.others_seg :SystemRAM.others_phdr

  .sram.dma : ALIGN(4)
  {
    _sram_dma_start = ABSOLUTE(.);
    *(.sram.dma)
    _sram_dma_end = ABSOLUTE(.);
  } >SystemRAM.others_seg :SystemRAM.others_phdr

  .lit4 : ALIGN(4)
  {
    _lit4_start = ABSOLUTE(.);
    *(*.lit4)
    *(.lit4.*)
    *(.gnu.linkonce.lit4.*)
    _lit4_end = ABSOLUTE(.);
  } >SystemRAM.others_seg :SystemRAM.others_phdr

  .text : ALIGN(4)
  {
    _stext = .;
    _text_start = ABSOLUTE(.);
    *(.entry.text)
    *(.init.literal)
    KEEP(*(.init))
    *(.literal .text .literal.* .text.* .stub .gnu.warning .gnu.linkonce.literal.* .gnu.linkonce.t.*.literal .gnu.linkonce.t.*)
    *(.fini.literal)
    KEEP(*(.fini))
    *(.gnu.version)
    _text_end = ABSOLUTE(.);
    _etext = .;
  } >SystemRAM.others_seg :SystemRAM.others_phdr

  .data : ALIGN(4)
  {
    _data_start = ABSOLUTE(.);
    *(.data)
    *(.data.*)
    *(.gnu.linkonce.d.*)
    KEEP(*(.gnu.linkonce.d.*personality*))
    *(.data1)
    *(.sdata)
    *(.sdata.*)
    *(.gnu.linkonce.s.*)
    *(.sdata2)
    *(.sdata2.*)
    *(.gnu.linkonce.s2.*)
    KEEP(*(.jcr))
    _data_end = ABSOLUTE(.);
  } >SystemRAM.others_seg :SystemRAM.others_phdr

  .bss (NOLOAD) : ALIGN(8)
  {
    . = ALIGN (8);
    _bss_start = ABSOLUTE(.);
    *(.dynsbss)
    *(.sbss)
    *(.sbss.*)
    *(.gnu.linkonce.sb.*)
    *(.scommon)
    *(.sbss2)
    *(.sbss2.*)
    *(.gnu.linkonce.sb2.*)
    *(.dynbss)
    *(.bss)
    *(.bss.*)
    *(.gnu.linkonce.b.*)
    *(COMMON)
    . = ALIGN (8);
    _bss_end = ABSOLUTE(.);
    _end = ALIGN(0x8);
    PROVIDE(end = ALIGN(0x8));
    _stack_sentry = ALIGN(0x8);
    _memmap_seg_SystemRAM.others_end = ALIGN(0x8);
  } >SystemRAM.others_seg :SystemRAM.others_bss_phdr
  __stack = 0x60040000;
  _heap_sentry = 0x60040000;
  .debug  0 :  { *(.debug) }
  .line  0 :  { *(.line) }
  .debug_srcinfo  0 :  { *(.debug_srcinfo) }
  .debug_sfnames  0 :  { *(.debug_sfnames) }
  .debug_aranges  0 :  { *(.debug_aranges) }
  .debug_pubnames  0 :  { *(.debug_pubnames) }
  .debug_info  0 :  { *(.debug_info) }
  .debug_abbrev  0 :  { *(.debug_abbrev) }
  .debug_line  0 :  { *(.debug_line) }
  .debug_frame  0 :  { *(.debug_frame) }
  .debug_str  0 :  { *(.debug_str) }
  .debug_loc  0 :  { *(.debug_loc) }
  .debug_macinfo  0 :  { *(.debug_macinfo) }
  .debug_weaknames  0 :  { *(.debug_weaknames) }
  .debug_funcnames  0 :  { *(.debug_funcnames) }
  .debug_typenames  0 :  { *(.debug_typenames) }
  .debug_varnames  0 :  { *(.debug_varnames) }
  .xt.insn 0 :
  {
    KEEP (*(.xt.insn))
    KEEP (*(.gnu.linkonce.x.*))
  }
  .xt.prop 0 :
  {
    KEEP (*(.xt.prop))
    KEEP (*(.xt.prop.*))
    KEEP (*(.gnu.linkonce.prop.*))
  }
  .xt.lit 0 :
  {
    KEEP (*(.xt.lit))
    KEEP (*(.xt.lit.*))
    KEEP (*(.gnu.linkonce.p.*))
  }
  .debug.xt.callgraph 0 :
  {
    KEEP (*(.debug.xt.callgraph .debug.xt.callgraph.* .gnu.linkonce.xt.callgraph.*))
  }
}

