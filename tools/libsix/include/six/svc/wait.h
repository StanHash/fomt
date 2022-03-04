/*
 * This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at https://mozilla.org/MPL/2.0/.
 */

#ifndef _LIBSIX_SVC_WAIT_H
#define _LIBSIX_SVC_WAIT_H

#include <six/base.h>

_LIBSIX_EXTERN_C

extern void SvcHalt(void);
extern void SvcStop(void);

extern void SvcIntrWait(bool wait_next, u16 intr_flags);

enum IntrWaitExFlags
{
    IWE_WAIT_NEXT       = BIT(0),
    IWE_EXCLUSIVE       = BIT(1),
    IWE_INCLUSIVE       = !IWE_EXCLUSIVE,
};

extern void SvcVBlankIntrWait(void);

_LIBSIX_EXTERN_C_END

#endif /* !_LIBSIX_SVC_WAIT_H */
