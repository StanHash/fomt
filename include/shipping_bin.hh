#pragma once

#include "item.hh"

#include "constants/product.h"

struct ShippingBin
{
    enum { MAX_VALUE_TRACKED = 1000000000 };

    struct StatEnt
    {
        enum { MAX_AMOUNT_TRACKED = 1000000000 };

        StatEnt();

        bool IsDisplayEnabled(void) const;
        u32 GetAmountShipped(void) const;
        void ShipOne(void);
        void ForceEnableDisplay(void);

        /* +00 */ u32 amount_shipped : 31;
        /* +03 */ bool display_enabled : 1;
    };

    ShippingBin();

    u32 GetValueShipped(void) const;
    bool IsDisplayEnabled(int product_id) const;
    u32 GetAmountShipped(int product_id) const;
    bool HasShippedOneOfEachProduct(void) const;
    bool HasShippedOneOfEachCrop(void) const;
    bool HasShippedOneOfEachMineral(void) const;
    void Ship(Product const & product);
    void ResetValueShipped(void);
    void ForceEnableDisplay(int product_id);

    /* +00 */ u32 value_shipped;
    /* +04 */ StatEnt product_stats[NUM_PRODUCTS];
};
