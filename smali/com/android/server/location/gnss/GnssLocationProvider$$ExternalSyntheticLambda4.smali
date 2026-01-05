.class public final synthetic Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/gnss/GnssLocationProvider;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/gnss/GnssLocationProvider;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    iput-boolean p2, p0, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda4;->f$1:Z

    iput-boolean p3, p0, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda4;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    iget-boolean v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda4;->f$1:Z

    iget-boolean p0, p0, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda4;->f$2:Z

    iget-object v2, v0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "gnss_hal_location_request_duration_millis"

    const-wide/16 v4, 0x2710

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    const-string v5, "GnssLocationProvider"

    if-nez v4, :cond_0

    const-string p0, "GNSS HAL location request is disabled by Settings."

    invoke-static {v5, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v4, v0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "location"

    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/location/LocationManager;

    new-instance v6, Landroid/location/LocationRequest$Builder;

    const-wide/16 v7, 0x3e8

    invoke-direct {v6, v7, v8}, Landroid/location/LocationRequest$Builder;-><init>(J)V

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/location/LocationRequest$Builder;->setMaxUpdates(I)Landroid/location/LocationRequest$Builder;

    move-result-object v6

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssLocationProvider;->isDeviceBasedHybridSupported()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda23;

    const/4 v8, 0x0

    invoke-direct {v1, v0, v8}, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda23;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider;I)V

    const/16 v8, 0x64

    invoke-virtual {v6, v8}, Landroid/location/LocationRequest$Builder;->setQuality(I)Landroid/location/LocationRequest$Builder;

    const-string/jumbo v8, "fused"

    goto :goto_1

    :cond_2
    :goto_0
    new-instance v1, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda22;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const/16 v8, 0x68

    invoke-virtual {v6, v8}, Landroid/location/LocationRequest$Builder;->setQuality(I)Landroid/location/LocationRequest$Builder;

    const-string/jumbo v8, "network"

    :goto_1
    iget-object v9, v0, Lcom/android/server/location/gnss/GnssLocationProvider;->mNIHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

    invoke-virtual {v9}, Lcom/android/internal/location/GpsNetInitiatedHandler;->getInEmergency()Z

    move-result v9

    if-nez v9, :cond_3

    invoke-virtual {v0, p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->isKOREmergency(Z)Z

    move-result v9

    if-eqz v9, :cond_6

    :cond_3
    iget-object v9, v0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssConfiguration:Lcom/android/server/location/gnss/GnssConfiguration;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/location/gnss/GnssConfiguration;->getHalInterfaceVersion()Lcom/android/server/location/gnss/GnssConfiguration$HalInterfaceVersion;

    move-result-object v9

    if-nez p0, :cond_4

    iget v9, v9, Lcom/android/server/location/gnss/GnssConfiguration$HalInterfaceVersion;->mMajor:I

    const/4 v10, 0x2

    if-ge v9, v10, :cond_5

    :cond_4
    invoke-virtual {v6, v7}, Landroid/location/LocationRequest$Builder;->setLocationSettingsIgnored(Z)Landroid/location/LocationRequest$Builder;

    const-wide/16 v9, 0x3

    mul-long/2addr v2, v9

    :cond_5
    invoke-virtual {v0, p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->isKOREmergency(Z)Z

    move-result p0

    if-eqz p0, :cond_6

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssLocationProvider;->releaseDozeMode()V

    :cond_6
    invoke-virtual {v6, v2, v3}, Landroid/location/LocationRequest$Builder;->setDurationMillis(J)Landroid/location/LocationRequest$Builder;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    filled-new-array {v8, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "GNSS HAL Requesting location updates from %s provider for %d millis."

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4, v8}, Landroid/location/LocationManager;->getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;

    move-result-object p0

    if-eqz p0, :cond_7

    invoke-virtual {v6}, Landroid/location/LocationRequest$Builder;->build()Landroid/location/LocationRequest;

    move-result-object p0

    sget-object v0, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {v4, v8, p0, v0, v1}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;Landroid/location/LocationRequest;Ljava/util/concurrent/Executor;Landroid/location/LocationListener;)V

    :cond_7
    return-void
.end method
