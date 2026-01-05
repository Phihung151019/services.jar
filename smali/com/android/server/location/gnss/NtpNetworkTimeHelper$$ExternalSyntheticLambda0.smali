.class public final synthetic Lcom/android/server/location/gnss/NtpNetworkTimeHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/gnss/NtpNetworkTimeHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/gnss/NtpNetworkTimeHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/gnss/NtpNetworkTimeHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/location/gnss/NtpNetworkTimeHelper;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    iget-object p0, p0, Lcom/android/server/location/gnss/NtpNetworkTimeHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/location/gnss/NtpNetworkTimeHelper;

    sget-boolean v0, Lcom/android/server/location/gnss/NtpNetworkTimeHelper;->DEBUG:Z

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "scheduled: debugId="

    const-string/jumbo v1, "blockingGetNtpTimeAndInject: Scheduling later NTP retrieval, debugId="

    const-string/jumbo v2, "blockingGetNtpTimeAndInject:, debugId="

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-object v5, p0, Lcom/android/server/location/gnss/NtpNetworkTimeHelper;->mNtpTime:Landroid/util/NtpTrustedTime;

    invoke-virtual {v5}, Landroid/util/NtpTrustedTime;->getCachedTimeResult()Landroid/util/NtpTrustedTime$TimeResult;

    move-result-object v5

    const-wide/32 v6, 0x5265c00

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Landroid/util/NtpTrustedTime$TimeResult;->getAgeMillis()J

    move-result-wide v8

    cmp-long v5, v8, v6

    if-ltz v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v5, p0, Lcom/android/server/location/gnss/NtpNetworkTimeHelper;->mNtpTime:Landroid/util/NtpTrustedTime;

    invoke-virtual {v5}, Landroid/util/NtpTrustedTime;->forceRefresh()Z

    move-result v5

    :goto_1
    monitor-enter p0

    const/4 v8, 0x2

    :try_start_0
    iput v8, p0, Lcom/android/server/location/gnss/NtpNetworkTimeHelper;->mInjectNtpTimeState:I

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", refreshSuccess="

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/location/gnss/NtpNetworkTimeHelper;->maybeInjectCachedNtpTime(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/location/gnss/NtpNetworkTimeHelper;->mNtpBackOff:Lcom/android/server/location/gnss/ExponentialBackOff;

    const-wide/32 v8, 0x249f0

    iput-wide v8, v2, Lcom/android/server/location/gnss/ExponentialBackOff;->mCurrentIntervalMillis:J

    goto :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_3

    :cond_2
    const-string/jumbo v2, "maybeInjectCachedNtpTime() returned false"

    iget-object v6, p0, Lcom/android/server/location/gnss/NtpNetworkTimeHelper;->mDumpLog:Landroid/util/LocalLog;

    invoke-virtual {v6, v2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    const-string/jumbo v6, "NtpNetworkTimeHelper"

    invoke-static {v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/location/gnss/NtpNetworkTimeHelper;->mNtpBackOff:Lcom/android/server/location/gnss/ExponentialBackOff;

    iget-wide v6, v2, Lcom/android/server/location/gnss/ExponentialBackOff;->mCurrentIntervalMillis:J

    const-wide/32 v8, 0xdbba00

    cmp-long v10, v6, v8

    if-lez v10, :cond_3

    move-wide v6, v8

    goto :goto_2

    :cond_3
    const-wide/16 v8, 0x2

    mul-long/2addr v6, v8

    iput-wide v6, v2, Lcom/android/server/location/gnss/ExponentialBackOff;->mCurrentIntervalMillis:J

    :goto_2
    iget-boolean v2, p0, Lcom/android/server/location/gnss/NtpNetworkTimeHelper;->mPeriodicTimeInjection:Z

    if-nez v2, :cond_4

    if-nez v5, :cond_6

    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mPeriodicTimeInjection="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/location/gnss/NtpNetworkTimeHelper;->mPeriodicTimeInjection:Z

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", refreshSuccess="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", delayMillis="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/location/gnss/NtpNetworkTimeHelper;->mDumpLog:Landroid/util/LocalLog;

    invoke-virtual {v2, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    sget-boolean v2, Lcom/android/server/location/gnss/NtpNetworkTimeHelper;->DEBUG:Z

    if-eqz v2, :cond_5

    const-string/jumbo v2, "NtpNetworkTimeHelper"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/location/gnss/NtpNetworkTimeHelper;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/location/gnss/NtpNetworkTimeHelper$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v0}, Lcom/android/server/location/gnss/NtpNetworkTimeHelper$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/location/gnss/NtpNetworkTimeHelper;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_6
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/android/server/location/gnss/NtpNetworkTimeHelper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void

    :goto_3
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
