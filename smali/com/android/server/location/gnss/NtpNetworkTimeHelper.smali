.class public Lcom/android/server/location/gnss/NtpNetworkTimeHelper;
.super Lcom/android/server/location/gnss/NetworkTimeHelper;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final DEBUG:Z

.field static final NTP_INTERVAL:J = 0x5265c00L

.field static final RETRY_INTERVAL:J = 0x493e0L


# instance fields
.field public final mCallback:Lcom/android/server/location/gnss/NetworkTimeHelper$InjectTimeCallback;

.field public final mConnMgr:Landroid/net/ConnectivityManager;

.field public final mDumpLog:Landroid/util/LocalLog;

.field public final mHandler:Landroid/os/Handler;

.field public mInjectNtpTimeState:I

.field public final mNtpBackOff:Lcom/android/server/location/gnss/ExponentialBackOff;

.field public final mNtpTime:Landroid/util/NtpTrustedTime;

.field public mPeriodicTimeInjection:Z

.field public final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "NtpNetworkTimeHelper"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/location/gnss/NtpNetworkTimeHelper;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/location/gnss/NetworkTimeHelper$InjectTimeCallback;Landroid/util/NtpTrustedTime;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/LocalLog;

    const/16 v1, 0xa

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/util/LocalLog;-><init>(IZ)V

    iput-object v0, p0, Lcom/android/server/location/gnss/NtpNetworkTimeHelper;->mDumpLog:Landroid/util/LocalLog;

    new-instance v0, Lcom/android/server/location/gnss/ExponentialBackOff;

    invoke-direct {v0}, Lcom/android/server/location/gnss/ExponentialBackOff;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/gnss/NtpNetworkTimeHelper;->mNtpBackOff:Lcom/android/server/location/gnss/ExponentialBackOff;

    iput v2, p0, Lcom/android/server/location/gnss/NtpNetworkTimeHelper;->mInjectNtpTimeState:I

    const-string/jumbo v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/server/location/gnss/NtpNetworkTimeHelper;->mConnMgr:Landroid/net/ConnectivityManager;

    iput-object p3, p0, Lcom/android/server/location/gnss/NtpNetworkTimeHelper;->mCallback:Lcom/android/server/location/gnss/NetworkTimeHelper$InjectTimeCallback;

    iput-object p4, p0, Lcom/android/server/location/gnss/NtpNetworkTimeHelper;->mNtpTime:Landroid/util/NtpTrustedTime;

    new-instance p3, Landroid/os/Handler;

    invoke-direct {p3, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p3, p0, Lcom/android/server/location/gnss/NtpNetworkTimeHelper;->mHandler:Landroid/os/Handler;

    const-string/jumbo p2, "power"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    const/4 p2, 0x1

    const-string/jumbo p3, "NtpTimeHelper"

    invoke-virtual {p1, p2, p3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/location/gnss/NtpNetworkTimeHelper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-void
.end method


# virtual methods
.method public final declared-synchronized maybeInjectCachedNtpTime(Ljava/lang/String;)Z
    .locals 11

    const-string/jumbo v0, "maybeInjectCachedNtpTime: Not injecting latest NTP time, reason="

    const-string/jumbo v1, "maybeInjectCachedNtpTime: Injecting latest NTP time, reason="

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/location/gnss/NtpNetworkTimeHelper;->mNtpTime:Landroid/util/NtpTrustedTime;

    invoke-virtual {v2}, Landroid/util/NtpTrustedTime;->getCachedTimeResult()Landroid/util/NtpTrustedTime$TimeResult;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/util/NtpTrustedTime$TimeResult;->getAgeMillis()J

    move-result-wide v3

    const-wide/32 v5, 0x5265c00

    cmp-long v3, v3, v5

    if-ltz v3, :cond_1

    :cond_0
    move-object v5, p0

    goto :goto_4

    :cond_1
    invoke-virtual {v2}, Landroid/util/NtpTrustedTime$TimeResult;->getTimeMillis()J

    move-result-wide v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", ntpResult="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", System time offset millis="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v3, v6, v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/location/gnss/NtpNetworkTimeHelper;->mDumpLog:Landroid/util/LocalLog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    sget-boolean v0, Lcom/android/server/location/gnss/NtpNetworkTimeHelper;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "NtpNetworkTimeHelper"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :goto_0
    move-object v5, p0

    goto :goto_3

    :cond_2
    :goto_1
    :try_start_3
    invoke-virtual {v2}, Landroid/util/NtpTrustedTime$TimeResult;->getElapsedRealtimeMillis()J

    move-result-wide v8

    invoke-virtual {v2}, Landroid/util/NtpTrustedTime$TimeResult;->getUncertaintyMillis()I

    move-result v10

    iget-object p1, p0, Lcom/android/server/location/gnss/NtpNetworkTimeHelper;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/location/gnss/NtpNetworkTimeHelper$$ExternalSyntheticLambda2;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v5, p0

    :try_start_4
    invoke-direct/range {v4 .. v10}, Lcom/android/server/location/gnss/NtpNetworkTimeHelper$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/location/gnss/NtpNetworkTimeHelper;JJI)V

    invoke-virtual {p1, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v5

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception v0

    :goto_2
    move-object p0, v0

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object v5, p0

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object p1, v0

    goto :goto_0

    :catchall_3
    move-exception v0

    move-object v5, p0

    move-object p1, v0

    :goto_3
    move-object p0, p1

    goto :goto_5

    :goto_4
    :try_start_5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", ntpResult="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iget-object p1, v5, Lcom/android/server/location/gnss/NtpNetworkTimeHelper;->mDumpLog:Landroid/util/LocalLog;

    invoke-virtual {p1, p0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    sget-boolean p1, Lcom/android/server/location/gnss/NtpNetworkTimeHelper;->DEBUG:Z

    if-eqz p1, :cond_3

    const-string/jumbo p1, "NtpNetworkTimeHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_3
    monitor-exit v5

    const/4 p0, 0x0

    return p0

    :goto_5
    :try_start_6
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw p0
.end method

.method public final declared-synchronized retrieveAndInjectNtpTime(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/server/location/gnss/NtpNetworkTimeHelper;->mInjectNtpTimeState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/location/gnss/NtpNetworkTimeHelper;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    iput v1, p0, Lcom/android/server/location/gnss/NtpNetworkTimeHelper;->mInjectNtpTimeState:I

    iget-object p1, p0, Lcom/android/server/location/gnss/NtpNetworkTimeHelper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v0, 0xea60

    invoke-virtual {p1, v0, v1}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/android/server/location/gnss/NtpNetworkTimeHelper$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/location/gnss/NtpNetworkTimeHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/gnss/NtpNetworkTimeHelper;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_1
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "[Network not connected]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/NtpNetworkTimeHelper;->maybeInjectCachedNtpTime(Ljava/lang/String;)Z

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/location/gnss/NtpNetworkTimeHelper;->mInjectNtpTimeState:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :goto_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method
