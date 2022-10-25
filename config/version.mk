PRODUCT_VERSION_MAJOR = 20
PRODUCT_VERSION_MINOR = 0

ifeq ($(WITH_GMS), true)
    FLOS_TYPE := GAPPS
else
    FLOS_TYPE := vanilla
endif

# Gapps
ifeq ($(WITH_GMS),true)
$(warning Building with gapps)
$(call inherit-product-if-exists, vendor/gapps/common/common-vendor.mk)
else
$(warning Building vanilla - without gapps)
$(warning Add export WITH_GMS=true)
endif

# Internal version
LINEAGE_VERSION := $(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR)-FORK-$(FLOS_TYPE)-$(shell date -u +%Y%m%d-%H%M)-$(LINEAGE_BUILD)

# Display version
LINEAGE_DISPLAY_VERSION := $(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR)-$(LINEAGE_BUILD)
