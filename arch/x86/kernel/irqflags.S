/* SPDX-License-Identifier: GPL-2.0 */

#include <asm/asm.h>
#include <asm/export.h>
#include <linux/linkage.h>

/*
 * unsigned long native_save_fl(void)
 */
SYM_FUNC_START(native_save_fl)
	pushf
	pop %_ASM_AX
	RET
SYM_FUNC_END(native_save_fl)
EXPORT_SYMBOL(native_save_fl)

/*
 * void native_restore_fl(unsigned long flags)
 * %eax/%rdi: flags
 */
SYM_FUNC_START(native_restore_fl)
	push %_ASM_ARG1
	popf
	RET
SYM_FUNC_END(native_restore_fl)
EXPORT_SYMBOL(native_restore_fl)
