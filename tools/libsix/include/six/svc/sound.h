/*
 * This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at https://mozilla.org/MPL/2.0/.
 */

#ifndef _LIBSIX_SVC_SOUND_H
#define _LIBSIX_SVC_SOUND_H

#include <six/base.h>

_LIBSIX_EXTERN_C

extern void SvcSoundDriverMain(void);
extern void SvcSoundDriverVSync(void);
extern void SvcSoundChannelClear(void);
extern void SvcSoundDriverVSyncOff(void);
extern void SvcSoundDriverVSyncOn(void);

_LIBSIX_EXTERN_C_END

#endif /* !_LIBSIX_SVC_SOUND_H */
