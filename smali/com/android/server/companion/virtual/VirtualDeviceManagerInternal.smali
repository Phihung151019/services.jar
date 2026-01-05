.class public abstract Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# virtual methods
.method public abstract getAllPersistentDeviceIds()Ljava/util/Set;
.end method

.method public abstract getBaseVirtualDisplayFlags(Landroid/companion/virtual/IVirtualDevice;)I
.end method

.method public abstract getDeviceIdsForUid(I)Landroid/util/ArraySet;
.end method

.method public abstract getDeviceOwnerUid(I)I
.end method

.method public abstract getDimDurationMillisForDeviceId(I)J
.end method

.method public abstract getDisplayIdsForDevice(I)Landroid/util/ArraySet;
.end method

.method public abstract getPersistentIdForDevice(I)Ljava/lang/String;
.end method

.method public abstract getPreferredLocaleListForUid(I)Landroid/os/LocaleList;
.end method

.method public abstract getScreenOffTimeoutMillisForDeviceId(I)J
.end method

.method public abstract getVirtualSensor(II)Landroid/companion/virtual/sensor/VirtualSensor;
.end method

.method public abstract isAppRunningOnAnyVirtualDevice(I)Z
.end method

.method public abstract isInputDeviceOwnedByVirtualDevice(I)Z
.end method

.method public abstract onAuthenticationPrompt(I)V
.end method

.method public abstract onVirtualDisplayCreated(Landroid/companion/virtual/IVirtualDevice;ILandroid/hardware/display/IVirtualDisplayCallback;Landroid/window/DisplayWindowPolicyController;)V
.end method

.method public abstract onVirtualDisplayRemoved(Landroid/companion/virtual/IVirtualDevice;I)V
.end method
