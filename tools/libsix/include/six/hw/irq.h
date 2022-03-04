/*
 * This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at https://mozilla.org/MPL/2.0/.
 */

#ifndef _LIBSIX_HW_IRQ_H
#define _LIBSIX_HW_IRQ_H

#include <six/base.h>

_LIBSIX_EXTERN_C

// Attribute for compiling functions in a way that is suitable for IRQ handlers.
//
#define IRQ_HANDLER     IWRAM_CODE ARM_CODE

// Interrupt Enable
//
#define REG_IE          VOLADDR(0x04000200, u16)

// Interrupt Flags
//
#define REG_IF          VOLADDR(0x04000202, u16)

// Interrupt Master Enable
//
#define REG_IME         VOLADDR(0x04000208, u16)

// IRQ bitflags
//
enum IRQ
{
    IRQ_VBLANK          = BIT(0),
    IRQ_HBLANK          = BIT(1),
    IRQ_VCOUNT          = BIT(2),
    IRQ_TIMER_0         = BIT(3),
    IRQ_TIMER_1         = BIT(4),
    IRQ_TIMER_2         = BIT(5),
    IRQ_TIMER_3         = BIT(6),
    IRQ_SERIAL          = BIT(7),
    IRQ_DMA_0           = BIT(8),
    IRQ_DMA_1           = BIT(9),
    IRQ_DMA_2           = BIT(10),
    IRQ_DMA_3           = BIT(11),
    IRQ_KEYPAD          = BIT(12),
    IRQ_CARTRIDGE       = BIT(13),
};

// Common sets of IRQs
//
enum IRQGroup
{
    IRQS_BLANK          = IRQ_VBLANK  | IRQ_HBLANK,
    IRQS_TIMER          = IRQ_TIMER_0 | IRQ_TIMER_1 | IRQ_TIMER_2 | IRQ_TIMER_3,
    IRQS_DMA            = IRQ_DMA_0   | IRQ_DMA_1   | IRQ_DMA_2   | IRQ_DMA_3,
    // IRQs in this group can wake up the GBA from a SvcStop() call.
    IRQS_EXTERNAL       = IRQ_SERIAL  | IRQ_KEYPAD  | IRQ_CARTRIDGE,
    IRQS_ALL            = BITS(14),
};

// Bit indices of IRQs
enum IRQIndex
{
    IRQ_INDEX_VBLANK,
    IRQ_INDEX_HBLANK,
    IRQ_INDEX_VCOUNT,
    IRQ_INDEX_TIMER_0,
    IRQ_INDEX_TIMER_1,
    IRQ_INDEX_TIMER_2,
    IRQ_INDEX_TIMER_3,
    IRQ_INDEX_SERIAL,
    IRQ_INDEX_DMA_0,
    IRQ_INDEX_DMA_1,
    IRQ_INDEX_DMA_2,
    IRQ_INDEX_DMA_3,
    IRQ_INDEX_KEYPAD,
    IRQ_INDEX_CARTRIDGE,
    IRQ_INDEX_MAX,
};

_LIBSIX_EXTERN_C_END

#endif /* !_LIBSIX_HW_IRQ_H */
