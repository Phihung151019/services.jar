.class public final synthetic Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/location/gnss/GnssLocationProvider;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/gnss/GnssLocationProvider;II)V
    .locals 0

    iput p3, p0, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda3;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    iput p2, p0, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda3;->f$1:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    const/4 v0, 0x2

    const/4 v1, 0x3

    iget v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda3;->$r8$classId:I

    packed-switch v2, :pswitch_data_0

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    iget p0, p0, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda3;->f$1:I

    sget-object v1, Lcom/android/server/location/gnss/GnssLocationProvider;->PROPERTIES:Landroid/location/provider/ProviderProperties;

    invoke-virtual {v0, p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->handleDownloadPsdsData(I)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    iget p0, p0, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda3;->f$1:I

    sget-object v1, Lcom/android/server/location/gnss/GnssLocationProvider;->PROPERTIES:Landroid/location/provider/ProviderProperties;

    invoke-virtual {v0, p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->handleDownloadPsdsData(I)V

    return-void

    :pswitch_1
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    iget p0, p0, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda3;->f$1:I

    sget-object v3, Lcom/android/server/location/gnss/GnssLocationProvider;->PROPERTIES:Landroid/location/provider/ProviderProperties;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/server/location/gnss/GnssPsdsDownloader;

    iget-object v4, v2, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssConfiguration:Lcom/android/server/location/gnss/GnssConfiguration;

    iget-object v4, v4, Lcom/android/server/location/gnss/GnssConfiguration;->mProperties:Ljava/util/Properties;

    invoke-direct {v3, v4}, Lcom/android/server/location/gnss/GnssPsdsDownloader;-><init>(Ljava/util/Properties;)V

    iget-object v4, v2, Lcom/android/server/location/gnss/GnssLocationProvider;->mNSLocationProviderHelper:Lcom/android/server/location/nsflp/NSLocationProviderHelper;

    sget-object v5, Landroid/location/LocationConstants$STATE_TYPE;->XTRA:Landroid/location/LocationConstants$STATE_TYPE;

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v7, v8}, Lcom/android/server/location/nsflp/NSLocationProviderHelper;->reportProviderStatus(Landroid/location/LocationConstants$STATE_TYPE;Ljava/lang/Integer;Ljava/lang/Integer;)V

    iget v4, v3, Lcom/android/server/location/gnss/GnssPsdsDownloader;->mNextServerIndex:I

    iput v6, v3, Lcom/android/server/location/gnss/GnssPsdsDownloader;->mFailReason:I

    iget-object v5, v3, Lcom/android/server/location/gnss/GnssPsdsDownloader;->mLongTermPsdsServers:[Ljava/lang/String;

    const/4 v7, 0x0

    if-ne p0, v6, :cond_1

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    move-object v9, v8

    goto :goto_1

    :cond_1
    iget-object v9, v3, Lcom/android/server/location/gnss/GnssPsdsDownloader;->mPsdsServers:[Ljava/lang/String;

    if-le p0, v6, :cond_2

    if-gt p0, v1, :cond_2

    aget-object v10, v9, p0

    if-nez v10, :cond_2

    goto :goto_0

    :cond_2
    const/16 v10, -0xbc

    if-ne p0, v6, :cond_5

    move-object v9, v8

    :cond_3
    if-nez v9, :cond_6

    iget v9, v3, Lcom/android/server/location/gnss/GnssPsdsDownloader;->mNextServerIndex:I

    aget-object v9, v5, v9

    invoke-static {v10}, Landroid/net/TrafficStats;->getAndSetThreadStatsTag(I)I

    move-result v11

    :try_start_0
    invoke-virtual {v3, v9}, Lcom/android/server/location/gnss/GnssPsdsDownloader;->doDownload(Ljava/lang/String;)[B

    move-result-object v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v11}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    iget v11, v3, Lcom/android/server/location/gnss/GnssPsdsDownloader;->mNextServerIndex:I

    add-int/2addr v11, v6

    iput v11, v3, Lcom/android/server/location/gnss/GnssPsdsDownloader;->mNextServerIndex:I

    array-length v12, v5

    if-ne v11, v12, :cond_4

    iput v7, v3, Lcom/android/server/location/gnss/GnssPsdsDownloader;->mNextServerIndex:I

    :cond_4
    iget v11, v3, Lcom/android/server/location/gnss/GnssPsdsDownloader;->mNextServerIndex:I

    if-ne v11, v4, :cond_3

    goto :goto_1

    :catchall_0
    move-exception p0

    invoke-static {v11}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    throw p0

    :cond_5
    if-le p0, v6, :cond_0

    if-gt p0, v1, :cond_0

    aget-object v4, v9, p0

    invoke-static {v10}, Landroid/net/TrafficStats;->getAndSetThreadStatsTag(I)I

    move-result v5

    :try_start_1
    invoke-virtual {v3, v4}, Lcom/android/server/location/gnss/GnssPsdsDownloader;->doDownload(Ljava/lang/String;)[B

    move-result-object v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {v5}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    goto :goto_1

    :catchall_1
    move-exception p0

    invoke-static {v5}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    throw p0

    :cond_6
    :goto_1
    if-eqz v9, :cond_8

    iget-object v4, v2, Lcom/android/server/location/gnss/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda26;

    invoke-direct {v5, v2, p0, v9}, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda26;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider;I[B)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v4, v2, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    if-eqz v4, :cond_a

    const-string/jumbo v5, "android.hardware.type.watch"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    if-ne p0, v6, :cond_a

    iget-object v4, v2, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssConfiguration:Lcom/android/server/location/gnss/GnssConfiguration;

    const-string v5, "ENABLE_PSDS_PERIODIC_DOWNLOAD"

    iget-object v4, v4, Lcom/android/server/location/gnss/GnssConfiguration;->mProperties:Ljava/util/Properties;

    invoke-virtual {v4, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_7

    goto :goto_2

    :cond_7
    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    :goto_2
    if-eqz v7, :cond_a

    const-string v4, "GnssLocationProvider"

    const-string/jumbo v5, "scheduling next long term Psds download"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, v2, Lcom/android/server/location/gnss/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    iget-object v5, v2, Lcom/android/server/location/gnss/GnssLocationProvider;->mPsdsPeriodicDownloadToken:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v4, v2, Lcom/android/server/location/gnss/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda3;

    invoke-direct {v5, v2, p0, v0}, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider;II)V

    iget-object v6, v2, Lcom/android/server/location/gnss/GnssLocationProvider;->mPsdsPeriodicDownloadToken:Ljava/lang/Object;

    const-wide/32 v10, 0x5265c00

    invoke-virtual {v4, v5, v6, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    goto :goto_4

    :cond_8
    iget-object v4, v2, Lcom/android/server/location/gnss/GnssLocationProvider;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_2
    iget-object v5, v2, Lcom/android/server/location/gnss/GnssLocationProvider;->mPsdsBackOff:Lcom/android/server/location/gnss/ExponentialBackOff;

    iget-wide v6, v5, Lcom/android/server/location/gnss/ExponentialBackOff;->mCurrentIntervalMillis:J

    const-wide/32 v10, 0xdbba00

    cmp-long v12, v6, v10

    if-lez v12, :cond_9

    goto :goto_3

    :cond_9
    const-wide/16 v10, 0x2

    mul-long/2addr v10, v6

    iput-wide v10, v5, Lcom/android/server/location/gnss/ExponentialBackOff;->mCurrentIntervalMillis:J

    :goto_3
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    iget-object v4, v2, Lcom/android/server/location/gnss/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda3;

    invoke-direct {v5, v2, p0, v1}, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider;II)V

    invoke-virtual {v4, v5, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_a
    :goto_4
    if-eqz v9, :cond_b

    goto :goto_5

    :cond_b
    move v0, v1

    :goto_5
    if-eqz v9, :cond_c

    goto :goto_6

    :cond_c
    iget v1, v3, Lcom/android/server/location/gnss/GnssPsdsDownloader;->mFailReason:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    :goto_6
    iget-object v1, v2, Lcom/android/server/location/gnss/GnssLocationProvider;->mNSLocationProviderHelper:Lcom/android/server/location/nsflp/NSLocationProviderHelper;

    sget-object v3, Landroid/location/LocationConstants$STATE_TYPE;->XTRA:Landroid/location/LocationConstants$STATE_TYPE;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v3, v0, v8}, Lcom/android/server/location/nsflp/NSLocationProviderHelper;->reportProviderStatus(Landroid/location/LocationConstants$STATE_TYPE;Ljava/lang/Integer;Ljava/lang/Integer;)V

    iget-object v0, v2, Lcom/android/server/location/gnss/GnssLocationProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, v2, Lcom/android/server/location/gnss/GnssLocationProvider;->mDownloadPsdsWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, v2, Lcom/android/server/location/gnss/GnssLocationProvider;->mDownloadPsdsWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    const-string v1, "GnssLocationProvider"

    const-string/jumbo v3, "WakeLock released by handleDownloadPsdsData()"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :catchall_2
    move-exception p0

    goto :goto_8

    :cond_d
    const-string v1, "GnssLocationProvider"

    const-string/jumbo v3, "WakeLock expired before release in handleDownloadPsdsData()"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7
    iget-object v1, v2, Lcom/android/server/location/gnss/GnssLocationProvider;->mDownloadInProgressPsdsTypes:Ljava/util/Set;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    check-cast v1, Ljava/util/HashSet;

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :goto_8
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p0

    :catchall_3
    move-exception p0

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw p0

    :pswitch_2
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    iget p0, p0, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda3;->f$1:I

    sget-object v1, Lcom/android/server/location/gnss/GnssLocationProvider;->PROPERTIES:Landroid/location/provider/ProviderProperties;

    invoke-virtual {v0, p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->handleDownloadPsdsData(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
