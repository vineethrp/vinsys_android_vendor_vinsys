
SUPERUSER_EMBEDDED := true
SUPERUSER_PACKAGE_PREFIX := com.android.settings.vinsys.superuser

POPINS_VERSION := 0.1.0 (PopinS Alpha)

PRODUCT_COPY_FILES += \
    vendor/vinsys/prebuilt/bootanimation/$(BOOTANIMATION_RESOLUTION).zip:system/media/bootanimation.zip \
    vendor/vinsys/prebuilt/etc/init.local.rc:root/init.vinsys.rc

#Superuser
PRODUCT_PACKAGES += \
    Superuser \
    su

PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.root_access=1 \
    ro.build.popins_version=$(POPINS_VERSION)
