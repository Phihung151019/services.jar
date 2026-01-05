.class public final Lcom/android/server/location/gnss/sec/GnssVendorConfig;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static mInstance:Lcom/android/server/location/gnss/sec/GnssVendorConfig;


# direct methods
.method public static declared-synchronized getInstance()Lcom/android/server/location/gnss/sec/GnssVendorConfig;
    .locals 2

    const-class v0, Lcom/android/server/location/gnss/sec/GnssVendorConfig;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->mInstance:Lcom/android/server/location/gnss/sec/GnssVendorConfig;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/server/location/gnss/sec/GnssVendorConfig;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->mInstance:Lcom/android/server/location/gnss/sec/GnssVendorConfig;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->mInstance:Lcom/android/server/location/gnss/sec/GnssVendorConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static isBroadcomGnss()Z
    .locals 1

    const-string/jumbo v0, "vendor/etc/gnss/gps.xml"

    invoke-static {v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isIzatServiceEnabled()Z
    .locals 2

    const-string/jumbo v0, "qcom"

    sget-object v1, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->isBroadcomGnss()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->isLsiGnss()Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "vendor/etc/gnss/mnl.prop"

    invoke-static {v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isLsiGnss()Z
    .locals 1

    const-string/jumbo v0, "vendor/etc/gnss/gps.cfg"

    invoke-static {v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isUnisocGnss()Z
    .locals 2

    const-string/jumbo v0, "ro.hardware.chipname"

    const-string/jumbo v1, "Unknown"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "unisoc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
