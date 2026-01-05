.class public final Lcom/android/server/am/AppFGSTracker$AppFGSPolicy;
.super Lcom/android/server/am/BaseAppStateEventsTracker$BaseAppStateEventsPolicy;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public volatile mBgFgsLocationThresholdMs:J

.field public volatile mBgFgsLongRunningThresholdMs:J

.field public volatile mBgFgsMediaPlaybackThresholdMs:J


# virtual methods
.method public final dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "APP FOREGROUND SERVICE TRACKER POLICY SETTINGS:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-super {p0, p1, p2}, Lcom/android/server/am/BaseAppStateEventsTracker$BaseAppStateEventsPolicy;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/BaseAppStatePolicy;->mTrackerEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "bg_fgs_long_running_threshold"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v0, 0x3d

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    iget-wide v1, p0, Lcom/android/server/am/AppFGSTracker$AppFGSPolicy;->mBgFgsLongRunningThresholdMs:J

    const-string/jumbo v3, "bg_fgs_media_playback_threshold"

    invoke-static {v1, v2, p1, p2, v3}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    iget-wide v1, p0, Lcom/android/server/am/AppFGSTracker$AppFGSPolicy;->mBgFgsMediaPlaybackThresholdMs:J

    const-string/jumbo v3, "bg_fgs_location_threshold"

    invoke-static {v1, v2, p1, p2, v3}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    iget-wide v0, p0, Lcom/android/server/am/AppFGSTracker$AppFGSPolicy;->mBgFgsLocationThresholdMs:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    :cond_0
    return-void
.end method

.method public final getExemptionReasonString(IILjava/lang/String;)Ljava/lang/String;
    .locals 12

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    invoke-static {p2}, Landroid/os/PowerExemptionManager;->reasonCodeToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/am/BaseAppStateEventsTracker$BaseAppStateEventsPolicy;->mMaxTrackingDuration:J

    iget-wide v0, p0, Lcom/android/server/am/BaseAppStateEventsTracker$BaseAppStateEventsPolicy;->mMaxTrackingDuration:J

    sub-long v0, v2, v0

    const-wide/16 v8, 0x0

    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "{mediaPlayback="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, p0

    move v1, p1

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/AppFGSTracker$AppFGSPolicy;->shouldExemptMediaPlaybackFGS(IJJLjava/lang/String;)Z

    move-result v4

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", location="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/am/BaseAppStatePolicy;->mTracker:Lcom/android/server/am/BaseAppStateTracker;

    check-cast v0, Lcom/android/server/am/AppFGSTracker;

    iget-object v0, v0, Lcom/android/server/am/BaseAppStateTracker;->mAppRestrictionController:Lcom/android/server/am/AppRestrictionController;

    iget-object v0, v0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    iget-object v0, v0, Lcom/android/server/am/AppRestrictionController$Injector;->mAppFGSTracker:Lcom/android/server/am/AppFGSTracker;

    const/16 v1, 0x8

    invoke-static {v1}, Lcom/android/server/am/AppFGSTracker;->foregroundServiceTypeToIndex(I)I

    move-result v1

    move-wide v6, v2

    move-wide v4, v10

    move-object v3, p3

    move v2, v1

    move v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/am/BaseAppStateDurationsTracker;->getTotalDurationsSince(IILjava/lang/String;JJ)J

    move-result-wide v0

    cmp-long p1, v0, v8

    if-lez p1, :cond_1

    iget-wide p0, p0, Lcom/android/server/am/AppFGSTracker$AppFGSPolicy;->mBgFgsLocationThresholdMs:J

    cmp-long p0, v0, p0

    if-ltz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    const-string/jumbo p1, "}"

    invoke-static {p1, p2, p0}, Landroid/hardware/biometrics/face/V1_0/OptionalBool$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final onMaxTrackingDurationChanged()V
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/BaseAppStatePolicy;->mTracker:Lcom/android/server/am/BaseAppStateTracker;

    check-cast p0, Lcom/android/server/am/AppFGSTracker;

    invoke-static {p0}, Lcom/android/server/am/AppFGSTracker;->-$$Nest$monBgFgsLongRunningThresholdChanged(Lcom/android/server/am/AppFGSTracker;)V

    return-void
.end method

.method public final onPropertiesChanged(Ljava/lang/String;)V
    .locals 8

    const-string/jumbo v0, "bg_fgs_media_playback_threshold"

    const-string/jumbo v1, "bg_fgs_long_running_threshold"

    const-string/jumbo v2, "bg_fgs_location_threshold"

    const-wide/32 v3, 0xdbba00

    const-string/jumbo v5, "activity_manager"

    const/4 v6, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    goto :goto_0

    :cond_0
    const/4 v6, 0x2

    goto :goto_0

    :sswitch_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    goto :goto_0

    :cond_1
    const/4 v6, 0x1

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    :goto_0
    packed-switch v6, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/android/server/am/BaseAppStateEventsTracker$BaseAppStateEventsPolicy;->onPropertiesChanged(Ljava/lang/String;)V

    return-void

    :pswitch_0
    invoke-static {v5, v0, v3, v4}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/AppFGSTracker$AppFGSPolicy;->mBgFgsMediaPlaybackThresholdMs:J

    return-void

    :pswitch_1
    const-wide/32 v2, 0x44aa200

    invoke-static {v5, v1, v2, v3}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/am/AppFGSTracker$AppFGSPolicy;->mBgFgsLongRunningThresholdMs:J

    cmp-long p1, v0, v2

    if-eqz p1, :cond_3

    iput-wide v0, p0, Lcom/android/server/am/AppFGSTracker$AppFGSPolicy;->mBgFgsLongRunningThresholdMs:J

    iget-object p0, p0, Lcom/android/server/am/BaseAppStatePolicy;->mTracker:Lcom/android/server/am/BaseAppStateTracker;

    check-cast p0, Lcom/android/server/am/AppFGSTracker;

    invoke-static {p0}, Lcom/android/server/am/AppFGSTracker;->-$$Nest$monBgFgsLongRunningThresholdChanged(Lcom/android/server/am/AppFGSTracker;)V

    :cond_3
    return-void

    :pswitch_2
    invoke-static {v5, v2, v3, v4}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/AppFGSTracker$AppFGSPolicy;->mBgFgsLocationThresholdMs:J

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x774f54d8 -> :sswitch_2
        0x14fa6a2f -> :sswitch_1
        0x2fe08d09 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onSystemReady()V
    .locals 6

    invoke-super {p0}, Lcom/android/server/am/BaseAppStateEventsTracker$BaseAppStateEventsPolicy;->onSystemReady()V

    const-string/jumbo v0, "bg_fgs_long_running_threshold"

    const-wide/32 v1, 0x44aa200

    const-string/jumbo v3, "activity_manager"

    invoke-static {v3, v0, v1, v2}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    iget-wide v4, p0, Lcom/android/server/am/AppFGSTracker$AppFGSPolicy;->mBgFgsLongRunningThresholdMs:J

    cmp-long v2, v0, v4

    if-eqz v2, :cond_0

    iput-wide v0, p0, Lcom/android/server/am/AppFGSTracker$AppFGSPolicy;->mBgFgsLongRunningThresholdMs:J

    iget-object v0, p0, Lcom/android/server/am/BaseAppStatePolicy;->mTracker:Lcom/android/server/am/BaseAppStateTracker;

    check-cast v0, Lcom/android/server/am/AppFGSTracker;

    invoke-static {v0}, Lcom/android/server/am/AppFGSTracker;->-$$Nest$monBgFgsLongRunningThresholdChanged(Lcom/android/server/am/AppFGSTracker;)V

    :cond_0
    const-string/jumbo v0, "bg_fgs_media_playback_threshold"

    const-wide/32 v1, 0xdbba00

    invoke-static {v3, v0, v1, v2}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/am/AppFGSTracker$AppFGSPolicy;->mBgFgsMediaPlaybackThresholdMs:J

    const-string/jumbo v0, "bg_fgs_location_threshold"

    invoke-static {v3, v0, v1, v2}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/AppFGSTracker$AppFGSPolicy;->mBgFgsLocationThresholdMs:J

    return-void
.end method

.method public final onTrackerEnabled(Z)V
    .locals 3

    iget-object p0, p0, Lcom/android/server/am/BaseAppStatePolicy;->mTracker:Lcom/android/server/am/BaseAppStateTracker;

    check-cast p0, Lcom/android/server/am/AppFGSTracker;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/AppFGSTracker;->scheduleDurationCheckLocked(J)V

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object p1, p0, Lcom/android/server/am/AppFGSTracker;->mNotificationListener:Lcom/android/server/am/AppFGSTracker$NotificationListener;

    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/ComponentName;

    iget-object p0, p0, Lcom/android/server/am/BaseAppStateTracker;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/server/am/AppFGSTracker$NotificationListener;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 p0, -0x1

    invoke-virtual {p1, v0, v1, p0}, Landroid/service/notification/NotificationListenerService;->registerAsSystemService(Landroid/content/Context;Landroid/content/ComponentName;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_0
    :try_start_3
    iget-object p1, p0, Lcom/android/server/am/AppFGSTracker;->mNotificationListener:Lcom/android/server/am/AppFGSTracker$NotificationListener;

    invoke-virtual {p1}, Landroid/service/notification/NotificationListenerService;->unregisterAsSystemService()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    iget-object p1, p0, Lcom/android/server/am/AppFGSTracker;->mHandler:Lcom/android/server/am/AppFGSTracker$MyHandler;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_4
    iget-object p0, p0, Lcom/android/server/am/BaseAppStateEventsTracker;->mPkgEvents:Lcom/android/server/am/UidProcessMap;

    invoke-virtual {p0}, Lcom/android/server/am/UidProcessMap;->clear()V

    monitor-exit p1

    :catch_1
    return-void

    :catchall_1
    move-exception p0

    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0
.end method

.method public final shouldExemptMediaPlaybackFGS(IJJLjava/lang/String;)Z
    .locals 13

    iget-object v0, p0, Lcom/android/server/am/BaseAppStatePolicy;->mTracker:Lcom/android/server/am/BaseAppStateTracker;

    check-cast v0, Lcom/android/server/am/AppFGSTracker;

    iget-object v0, v0, Lcom/android/server/am/BaseAppStateTracker;->mAppRestrictionController:Lcom/android/server/am/AppRestrictionController;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sub-long v1, p2, p4

    const-wide/16 v3, 0x0

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    iget-object v1, v0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    iget-object v5, v1, Lcom/android/server/am/AppRestrictionController$Injector;->mAppMediaSessionTracker:Lcom/android/server/am/AppMediaSessionTracker;

    const/4 v7, 0x0

    move v6, p1

    move-wide v11, p2

    move-object/from16 v8, p6

    invoke-virtual/range {v5 .. v12}, Lcom/android/server/am/BaseAppStateDurationsTracker;->getTotalDurationsSince(IILjava/lang/String;JJ)J

    move-result-wide v1

    iget-object v0, v0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    iget-object v5, v0, Lcom/android/server/am/AppRestrictionController$Injector;->mAppFGSTracker:Lcom/android/server/am/AppFGSTracker;

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/android/server/am/AppFGSTracker;->foregroundServiceTypeToIndex(I)I

    move-result v7

    move v6, p1

    move-wide v11, p2

    move-object/from16 v8, p6

    invoke-virtual/range {v5 .. v12}, Lcom/android/server/am/BaseAppStateDurationsTracker;->getTotalDurationsSince(IILjava/lang/String;JJ)J

    move-result-wide v5

    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    cmp-long p1, v0, v3

    if-lez p1, :cond_0

    iget-wide p0, p0, Lcom/android/server/am/AppFGSTracker$AppFGSPolicy;->mBgFgsMediaPlaybackThresholdMs:J

    cmp-long p0, v0, p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
