.class public final Lcom/android/server/location/injector/SystemEmergencyHelper;
.super Lcom/android/server/location/injector/EmergencyHelper;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mEmergencyCallEndRealtimeMs:J

.field public final mEmergencyCallTelephonyCallback:Lcom/android/server/location/injector/SystemEmergencyHelper$EmergencyCallTelephonyCallback;

.field public mIsInEmergencyCall:Z

.field public mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Lcom/android/server/location/injector/EmergencyHelper;-><init>()V

    new-instance v0, Lcom/android/server/location/injector/SystemEmergencyHelper$EmergencyCallTelephonyCallback;

    invoke-direct {v0, p0}, Lcom/android/server/location/injector/SystemEmergencyHelper$EmergencyCallTelephonyCallback;-><init>(Lcom/android/server/location/injector/SystemEmergencyHelper;)V

    iput-object v0, p0, Lcom/android/server/location/injector/SystemEmergencyHelper;->mEmergencyCallTelephonyCallback:Lcom/android/server/location/injector/SystemEmergencyHelper$EmergencyCallTelephonyCallback;

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/android/server/location/injector/SystemEmergencyHelper;->mEmergencyCallEndRealtimeMs:J

    iput-object p1, p0, Lcom/android/server/location/injector/SystemEmergencyHelper;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final isInEmergency(J)Z
    .locals 9

    iget-object v0, p0, Lcom/android/server/location/injector/SystemEmergencyHelper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/server/location/injector/SystemEmergencyHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v2, "android.hardware.telephony.calling"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/location/injector/SystemEmergencyHelper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getEmergencyCallbackMode()Z

    move-result v2

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    const-string/jumbo v3, "android.hardware.telephony.messaging"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/location/injector/SystemEmergencyHelper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isInEmergencySmsMode()Z

    move-result v0

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    monitor-enter p0

    :try_start_0
    iget-wide v3, p0, Lcom/android/server/location/injector/SystemEmergencyHelper;->mEmergencyCallEndRealtimeMs:J

    const-wide/high16 v5, -0x8000000000000000L

    cmp-long v3, v3, v5

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/android/server/location/injector/SystemEmergencyHelper;->mEmergencyCallEndRealtimeMs:J

    sub-long/2addr v5, v7

    cmp-long p1, v5, p1

    if-gez p1, :cond_3

    move p1, v4

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_3
    move p1, v1

    :goto_2
    iget-boolean p2, p0, Lcom/android/server/location/injector/SystemEmergencyHelper;->mIsInEmergencyCall:Z

    if-nez p2, :cond_4

    if-nez p1, :cond_4

    if-nez v2, :cond_4

    if-eqz v0, :cond_5

    :cond_4
    move v1, v4

    :cond_5
    monitor-exit p0

    return v1

    :goto_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final declared-synchronized onSystemReady()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/injector/SystemEmergencyHelper;->mTelephonyManager:Landroid/telephony/TelephonyManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/location/injector/SystemEmergencyHelper;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v0, p0, Lcom/android/server/location/injector/SystemEmergencyHelper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-static {}, Lcom/android/server/location/LocationServiceThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/location/injector/SystemEmergencyHelper;->mEmergencyCallTelephonyCallback:Lcom/android/server/location/injector/SystemEmergencyHelper$EmergencyCallTelephonyCallback;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->registerTelephonyCallback(Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyCallback;)V

    iget-object v0, p0, Lcom/android/server/location/injector/SystemEmergencyHelper;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/location/injector/SystemEmergencyHelper$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/location/injector/SystemEmergencyHelper$1;-><init>(Lcom/android/server/location/injector/SystemEmergencyHelper;I)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.intent.action.NEW_OUTGOING_CALL"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/location/injector/SystemEmergencyHelper;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/location/injector/SystemEmergencyHelper$1;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/server/location/injector/SystemEmergencyHelper$1;-><init>(Lcom/android/server/location/injector/SystemEmergencyHelper;I)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
