/*
 * This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at https://mozilla.org/MPL/2.0/.
 */

#ifndef _LIBSIX_HW_INPUT_H
#define _LIBSIX_HW_INPUT_H

#include <six/base.h>

_LIBSIX_EXTERN_C

// Keypad input register. Reports held keys as active-low bits.
//
#define REG_KEYINPUT    VOLADDR(0x04000130, const u16)

// Keypad control register. Allows configuring the keypad IRQ.
//
#define REG_KEYCNT      VOLADDR(0x04000132, u16)

// Key bits as used by KEYINPUT and KEYCNT.
enum Key
{
    KEY_A               = BIT(0),
    KEY_B               = BIT(1),
    KEY_SELECT          = BIT(2),
    KEY_START           = BIT(3),
    KEY_RIGHT           = BIT(4),
    KEY_LEFT            = BIT(5),
    KEY_UP              = BIT(6),
    KEY_DOWN            = BIT(7),
    KEY_R               = BIT(8),
    KEY_L               = BIT(9),
};

// Groupings of key bits.
enum KeyGroup
{
    KEYS_DPAD_X         = KEY_LEFT      | KEY_RIGHT,
    KEYS_DPAD_Y         = KEY_UP        | KEY_DOWN,
    KEYS_DPAD           = KEYS_DPAD_X   | KEYS_DPAD_Y,
    KEYS_AB             = KEY_A         | KEY_B,
    KEYS_LR             = KEY_L         | KEY_R,
    KEYS_STARTSELECT    = KEY_START     | KEY_SELECT,
    KEYS_BUTTONS        = KEYS_AB       | KEYS_LR       | KEYS_STARTSELECT,
    KEYS_ALL            = KEYS_DPAD     | KEYS_BUTTONS,
};

// Bit indices of keys bits.
enum KeyIndex
{
    KEY_INDEX_A,
    KEY_INDEX_B,
    KEY_INDEX_SELECT,
    KEY_INDEX_START,
    KEY_INDEX_RIGHT,
    KEY_INDEX_LEFT,
    KEY_INDEX_UP,
    KEY_INDEX_DOWN,
    KEY_INDEX_R,
    KEY_INDEX_L,
    KEY_INDEX_MAX,
};

enum KeyIRQ
{
    KEY_IRQ_ENABLE       = BIT(14),
    KEY_IRQ_PRESS_ALL    = BIT(15),
    KEY_IRQ_PRESS_ANY    = !KEY_IRQ_PRESS_ALL,
};

_LIBSIX_EXTERN_C_END

#endif /* !_LIBSIX_HW_INPUT_H */
