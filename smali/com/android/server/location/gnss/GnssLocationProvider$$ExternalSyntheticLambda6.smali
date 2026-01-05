.class public final synthetic Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/gnss/GnssLocationProvider;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Landroid/location/Location;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/gnss/GnssLocationProvider;ZLandroid/location/Location;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    iput-boolean p2, p0, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda6;->f$1:Z

    iput-object p3, p0, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda6;->f$2:Landroid/location/Location;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    iget-boolean v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda6;->f$1:Z

    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda6;->f$2:Landroid/location/Location;

    sget-object v3, Lcom/android/server/location/gnss/GnssLocationProvider;->PROPERTIES:Landroid/location/provider/ProviderProperties;

    const-string v3, "GnssLocationProvider"

    const-string/jumbo v4, "reportLocation"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v3

    iget-object v5, v1, Lcom/android/server/location/gnss/GnssLocationProvider;->mLocationExtras:Lcom/android/server/location/gnss/GnssLocationProvider$LocationExtras;

    monitor-enter v5

    :try_start_0
    new-instance v6, Landroid/os/Bundle;

    iget-object v7, v5, Lcom/android/server/location/gnss/GnssLocationProvider$LocationExtras;->mBundle:Landroid/os/Bundle;

    invoke-direct {v6, v7}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v6}, Landroid/location/Location;->setExtras(Landroid/os/Bundle;)V

    :try_start_1
    iget-object v5, v1, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssVendorConfig:Lcom/android/server/location/gnss/sec/GnssVendorConfig;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->isLsiGnss()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, v1, Lcom/android/server/location/gnss/GnssLocationProvider;->mVSFilter:Lcom/android/server/location/gnss/sec/VelocitySmoothingFilter;

    invoke-virtual {v5, p0}, Lcom/android/server/location/gnss/sec/VelocitySmoothingFilter;->getFilteredLocation(Landroid/location/Location;)Landroid/location/Location;

    :cond_0
    invoke-virtual {v1, p0, v3, v4}, Lcom/android/server/location/gnss/GnssLocationProvider;->secLocationValidate(Landroid/location/Location;J)V

    new-array v3, v0, [Landroid/location/Location;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v3}, Landroid/location/LocationResult;->wrap([Landroid/location/Location;)Landroid/location/LocationResult;

    move-result-object v3

    invoke-virtual {v3}, Landroid/location/LocationResult;->validate()Landroid/location/LocationResult;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/server/location/provider/AbstractLocationProvider;->reportLocation(Landroid/location/LocationResult;)V
    :try_end_1
    .catch Landroid/location/LocationResult$BadLocationException; {:try_start_1 .. :try_end_1} :catch_0

    iget-boolean v3, v1, Lcom/android/server/location/gnss/GnssLocationProvider;->mStarted:Z

    if-eqz v3, :cond_3

    iget-object v3, v1, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssMetrics:Lcom/android/server/location/gnss/GnssMetrics;

    iget-object v5, v3, Lcom/android/server/location/gnss/GnssMetrics;->mLocationFailureReportsStatistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    iget-object v3, v3, Lcom/android/server/location/gnss/GnssMetrics;->mLocationFailureStatistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    if-nez v2, :cond_1

    invoke-virtual {v3, v6, v7}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->addItem(D)V

    invoke-virtual {v5, v6, v7}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->addItem(D)V

    goto :goto_0

    :cond_1
    const-wide/16 v8, 0x0

    invoke-virtual {v3, v8, v9}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->addItem(D)V

    invoke-virtual {v5, v8, v9}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->addItem(D)V

    :goto_0
    if-eqz v2, :cond_5

    invoke-virtual {p0}, Landroid/location/Location;->hasAccuracy()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v1, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssMetrics:Lcom/android/server/location/gnss/GnssMetrics;

    invoke-virtual {p0}, Landroid/location/Location;->getAccuracy()F

    move-result p0

    float-to-double v8, p0

    iget-object p0, v3, Lcom/android/server/location/gnss/GnssMetrics;->mPositionAccuracyMeterStatistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    invoke-virtual {p0, v8, v9}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->addItem(D)V

    iget-object p0, v3, Lcom/android/server/location/gnss/GnssMetrics;->mPositionAccuracyMetersReportsStatistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    invoke-virtual {p0, v8, v9}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->addItem(D)V

    :cond_2
    iget p0, v1, Lcom/android/server/location/gnss/GnssLocationProvider;->mTimeToFirstFix:I

    if-lez p0, :cond_5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    iget-wide v10, v1, Lcom/android/server/location/gnss/GnssLocationProvider;->mLastFixTime:J

    sub-long/2addr v8, v10

    long-to-int p0, v8

    iget-object v3, v1, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssMetrics:Lcom/android/server/location/gnss/GnssMetrics;

    iget v5, v1, Lcom/android/server/location/gnss/GnssLocationProvider;->mFixInterval:I

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v8, 0x3e8

    invoke-static {v8, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    div-int/2addr p0, v5

    sub-int/2addr p0, v0

    if-lez p0, :cond_5

    :goto_1
    if-ge v4, p0, :cond_5

    iget-object v5, v3, Lcom/android/server/location/gnss/GnssMetrics;->mLocationFailureStatistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    invoke-virtual {v5, v6, v7}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->addItem(D)V

    iget-object v5, v3, Lcom/android/server/location/gnss/GnssMetrics;->mLocationFailureReportsStatistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    invoke-virtual {v5, v6, v7}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->addItem(D)V

    add-int/2addr v4, v0

    goto :goto_1

    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, v1, Lcom/android/server/location/gnss/GnssLocationProvider;->mStartedChangedElapsedRealtime:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x7d0

    cmp-long p0, v3, v5

    if-lez p0, :cond_5

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "Unexpected GNSS Location report "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v4}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " after location turned off"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-wide/16 v5, 0x3a98

    cmp-long v0, v3, v5

    if-lez v0, :cond_4

    const-string v0, "GnssLocationProvider"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_4
    const-string v0, "GnssLocationProvider"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, v1, Lcom/android/server/location/gnss/GnssLocationProvider;->mLastFixTime:J

    iget p0, v1, Lcom/android/server/location/gnss/GnssLocationProvider;->mTimeToFirstFix:I

    if-nez p0, :cond_6

    if-eqz v2, :cond_6

    iget-wide v5, v1, Lcom/android/server/location/gnss/GnssLocationProvider;->mFixRequestTime:J

    sub-long/2addr v3, v5

    long-to-int p0, v3

    iput p0, v1, Lcom/android/server/location/gnss/GnssLocationProvider;->mTimeToFirstFix:I

    const-string p0, "GnssLocationProvider"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "TTFF: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v1, Lcom/android/server/location/gnss/GnssLocationProvider;->mTimeToFirstFix:I

    invoke-static {v0, v2, p0}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-boolean p0, v1, Lcom/android/server/location/gnss/GnssLocationProvider;->mStarted:Z

    if-eqz p0, :cond_6

    iget-object p0, v1, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssMetrics:Lcom/android/server/location/gnss/GnssMetrics;

    iget v0, v1, Lcom/android/server/location/gnss/GnssLocationProvider;->mTimeToFirstFix:I

    int-to-double v2, v0

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double v4, v2, v4

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssMetrics;->mTimeToFirstFixSecStatistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    invoke-virtual {v0, v4, v5}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->addItem(D)V

    iget-object p0, p0, Lcom/android/server/location/gnss/GnssMetrics;->mTimeToFirstFixMilliSReportsStatistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    invoke-virtual {p0, v2, v3}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->addItem(D)V

    :cond_6
    iget-boolean p0, v1, Lcom/android/server/location/gnss/GnssLocationProvider;->mStarted:Z

    if-eqz p0, :cond_7

    iget-object p0, v1, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mCapabilities:Landroid/location/GnssCapabilities;

    invoke-virtual {p0}, Landroid/location/GnssCapabilities;->hasScheduling()Z

    move-result p0

    if-nez p0, :cond_7

    iget p0, v1, Lcom/android/server/location/gnss/GnssLocationProvider;->mFixInterval:I

    const v0, 0xea60

    if-ge p0, v0, :cond_7

    iget-object p0, v1, Lcom/android/server/location/gnss/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v0, v1, Lcom/android/server/location/gnss/GnssLocationProvider;->mTimeoutListener:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {p0, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    :cond_7
    iget-object p0, v1, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mCapabilities:Landroid/location/GnssCapabilities;

    invoke-virtual {p0}, Landroid/location/GnssCapabilities;->hasScheduling()Z

    move-result p0

    if-nez p0, :cond_8

    iget-boolean p0, v1, Lcom/android/server/location/gnss/GnssLocationProvider;->mStarted:Z

    if-eqz p0, :cond_8

    iget p0, v1, Lcom/android/server/location/gnss/GnssLocationProvider;->mFixInterval:I

    const/16 v0, 0x2710

    if-le p0, v0, :cond_8

    const-string p0, "GnssLocationProvider"

    const-string/jumbo v0, "got fix, hibernating"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Lcom/android/server/location/gnss/GnssLocationProvider;->hibernate()V

    return-void

    :catch_0
    move-exception p0

    const-string v0, "GnssLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Dropping invalid location: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    return-void

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method
