#ifndef SHIPPING_BIN_HH
#define SHIPPING_BIN_HH

#include "item.hh"

struct ShippingBin
{
    // clang-format off

    enum { MAX_VALUE_TRACKED = 1000000000 };

    // clang-format on

    struct StatEnt
    {
        // clang-format off

        enum { MAX_AMOUNT_TRACKED = 1000000000 };

        // clang-format on

        StatEnt();

        bool IsDisplayEnabled() const;
        u32 GetAmountShipped() const;
        void ShipOne();
        void ForceEnableDisplay();

        /* +00 */ u32 amount_shipped : 31;
        /* +03 */ bool display_enabled : 1;
    };

    ShippingBin();

    u32 GetValueShipped() const;
    bool IsDisplayEnabled(int product_id) const;
    u32 GetAmountShipped(int product_id) const;
    bool HasShippedOneOfEachProduct() const;
    bool HasShippedOneOfEachCrop() const;
    bool HasShippedOneOfEachMineral() const;
    void Ship(Product const & product);
    void ResetValueShipped();
    void ForceEnableDisplay(int product_id);

    /* +00 */ u32 value_shipped;
    /* +04 */ StatEnt product_stats[NUM_PRODUCTS];
};

#endif // SHIPPING_BIN_HH
