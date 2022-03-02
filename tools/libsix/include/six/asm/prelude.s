@
@ This Source Code Form is subject to the terms of the Mozilla Public
@ License, v. 2.0. If a copy of the MPL was not distributed with this
@ file, You can obtain one at https://mozilla.org/MPL/2.0/.
@

.ifndef  _LIBSIX_ASM_PRELUDE_S
.equiv   _LIBSIX_ASM_PRELUDE_S, 1

.include "six/asm/base.s"
.include "six/asm/hw/input.s"
.include "six/asm/hw/irq.s"
.include "six/asm/hw/memory.s"
.include "six/asm/hw/svc.s"

.endif @ !_LIBSIX_ASM_PRELUDE_S

@ vim: ft=armv4 et sta sw=4 sts=8
