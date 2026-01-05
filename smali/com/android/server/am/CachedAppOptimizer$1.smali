.class public final Lcom/android/server/am/CachedAppOptimizer$1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/am/CachedAppOptimizer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/CachedAppOptimizer;I)V
    .locals 0

    iput p2, p0, Lcom/android/server/am/CachedAppOptimizer$1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/am/CachedAppOptimizer$1;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .locals 10

    iget v0, p0, Lcom/android/server/am/CachedAppOptimizer$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer$1;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-object v0, v0, Lcom/android/server/am/CachedAppOptimizer;->mPhenotypeFlagLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v2, "freeze_debounce_timeout"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/android/server/am/CachedAppOptimizer$1;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {v1}, Lcom/android/server/am/CachedAppOptimizer;->updateFreezerDebounceTimeout()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    const-string/jumbo v2, "freeze_exempt_inst_pkg"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v1, p0, Lcom/android/server/am/CachedAppOptimizer$1;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {v1}, Lcom/android/server/am/CachedAppOptimizer;->updateFreezerExemptInstPkg()V

    goto :goto_0

    :cond_2
    const-string/jumbo v2, "freeze_binder_enabled"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string/jumbo v2, "freeze_binder_divisor"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string/jumbo v2, "freeze_binder_threshold"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string/jumbo v2, "freeze_binder_offset"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string/jumbo v2, "freeze_binder_callback_enabled"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string/jumbo v2, "freeze_binder_callback_throttle"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string/jumbo v2, "freeze_binder_async_threshold"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    iget-object v1, p0, Lcom/android/server/am/CachedAppOptimizer$1;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v1}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$mupdateFreezerBinderState(Lcom/android/server/am/CachedAppOptimizer;)V

    goto :goto_0

    :cond_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/android/server/am/CachedAppOptimizer$1;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-object p0, p0, Lcom/android/server/am/CachedAppOptimizer;->mTestCallback:Lcom/android/server/am/CachedAppOptimizer$PropertyChangedCallbackForTest;

    if-eqz p0, :cond_5

    invoke-interface {p0}, Lcom/android/server/am/CachedAppOptimizer$PropertyChangedCallbackForTest;->onPropertyChanged()V

    :cond_5
    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer$1;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-object v0, v0, Lcom/android/server/am/CachedAppOptimizer;->mPhenotypeFlagLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_2
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v2, "use_compaction"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v1, p0, Lcom/android/server/am/CachedAppOptimizer$1;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {v1}, Lcom/android/server/am/CachedAppOptimizer;->updateUseCompaction()V

    goto :goto_2

    :catchall_1
    move-exception p0

    goto/16 :goto_4

    :cond_7
    const-string/jumbo v2, "compact_throttle_1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    const-string/jumbo v2, "compact_throttle_2"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    const-string/jumbo v2, "compact_throttle_3"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    const-string/jumbo v2, "compact_throttle_4"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    const-string/jumbo v2, "compact_throttle_5"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    const-string/jumbo v2, "compact_throttle_6"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    goto/16 :goto_3

    :cond_8
    const-string/jumbo v2, "compact_statsd_sample_rate"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const v5, 0x3dcccccd    # 0.1f

    if-eqz v2, :cond_9

    iget-object v1, p0, Lcom/android/server/am/CachedAppOptimizer$1;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    const-string/jumbo v2, "compact_statsd_sample_rate"

    const-string/jumbo v6, "activity_manager"

    invoke-static {v6, v2, v5}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v2

    iput v2, v1, Lcom/android/server/am/CachedAppOptimizer;->mCompactStatsdSampleRate:F

    iget v2, v1, Lcom/android/server/am/CachedAppOptimizer;->mCompactStatsdSampleRate:F

    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iput v2, v1, Lcom/android/server/am/CachedAppOptimizer;->mCompactStatsdSampleRate:F

    goto :goto_2

    :cond_9
    const-string/jumbo v2, "freeze_statsd_sample_rate"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v1, p0, Lcom/android/server/am/CachedAppOptimizer$1;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    const-string/jumbo v2, "freeze_statsd_sample_rate"

    const-string/jumbo v6, "activity_manager"

    invoke-static {v6, v2, v5}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v2

    iput v2, v1, Lcom/android/server/am/CachedAppOptimizer;->mFreezerStatsdSampleRate:F

    iget v2, v1, Lcom/android/server/am/CachedAppOptimizer;->mFreezerStatsdSampleRate:F

    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iput v2, v1, Lcom/android/server/am/CachedAppOptimizer;->mFreezerStatsdSampleRate:F

    goto/16 :goto_2

    :cond_a
    const-string/jumbo v2, "compact_full_rss_throttle_kb"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_b

    iget-object v1, p0, Lcom/android/server/am/CachedAppOptimizer$1;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    const-string/jumbo v2, "activity_manager"

    const-string/jumbo v5, "compact_full_rss_throttle_kb"

    const-wide/16 v6, 0x2ee0

    invoke-static {v2, v5, v6, v7}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v8

    iput-wide v8, v1, Lcom/android/server/am/CachedAppOptimizer;->mFullAnonRssThrottleKb:J

    iget-wide v8, v1, Lcom/android/server/am/CachedAppOptimizer;->mFullAnonRssThrottleKb:J

    cmp-long v2, v8, v3

    if-gez v2, :cond_6

    iput-wide v6, v1, Lcom/android/server/am/CachedAppOptimizer;->mFullAnonRssThrottleKb:J

    goto/16 :goto_2

    :cond_b
    const-string/jumbo v2, "compact_full_delta_rss_throttle_kb"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v1, p0, Lcom/android/server/am/CachedAppOptimizer$1;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    const-string/jumbo v2, "activity_manager"

    const-string/jumbo v5, "compact_full_delta_rss_throttle_kb"

    const-wide/16 v6, 0x1f40

    invoke-static {v2, v5, v6, v7}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v8

    iput-wide v8, v1, Lcom/android/server/am/CachedAppOptimizer;->mFullDeltaRssThrottleKb:J

    iget-wide v8, v1, Lcom/android/server/am/CachedAppOptimizer;->mFullDeltaRssThrottleKb:J

    cmp-long v2, v8, v3

    if-gez v2, :cond_6

    iput-wide v6, v1, Lcom/android/server/am/CachedAppOptimizer;->mFullDeltaRssThrottleKb:J

    goto/16 :goto_2

    :cond_c
    const-string/jumbo v2, "compact_proc_state_throttle"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object v1, p0, Lcom/android/server/am/CachedAppOptimizer$1;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {v1}, Lcom/android/server/am/CachedAppOptimizer;->updateProcStateThrottle()V

    goto/16 :goto_2

    :cond_d
    const-string/jumbo v2, "compact_throttle_min_oom_adj"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    iget-object v1, p0, Lcom/android/server/am/CachedAppOptimizer$1;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    const-string/jumbo v2, "activity_manager"

    const-string/jumbo v3, "compact_throttle_min_oom_adj"

    const-wide/16 v4, 0x352

    invoke-static {v2, v3, v4, v5}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleMinOomAdj:J

    iget-wide v2, v1, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleMinOomAdj:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_6

    iput-wide v4, v1, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleMinOomAdj:J

    goto/16 :goto_2

    :cond_e
    const-string/jumbo v2, "compact_throttle_max_oom_adj"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/server/am/CachedAppOptimizer$1;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    const-string/jumbo v2, "activity_manager"

    const-string/jumbo v3, "compact_throttle_max_oom_adj"

    const-wide/16 v4, 0x3e7

    invoke-static {v2, v3, v4, v5}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleMaxOomAdj:J

    iget-wide v2, v1, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleMaxOomAdj:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_6

    iput-wide v4, v1, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleMaxOomAdj:J

    goto/16 :goto_2

    :cond_f
    :goto_3
    iget-object v1, p0, Lcom/android/server/am/CachedAppOptimizer$1;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {v1}, Lcom/android/server/am/CachedAppOptimizer;->updateCompactionThrottles()V

    goto/16 :goto_2

    :cond_10
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object p0, p0, Lcom/android/server/am/CachedAppOptimizer$1;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-object p0, p0, Lcom/android/server/am/CachedAppOptimizer;->mTestCallback:Lcom/android/server/am/CachedAppOptimizer$PropertyChangedCallbackForTest;

    if-eqz p0, :cond_11

    invoke-interface {p0}, Lcom/android/server/am/CachedAppOptimizer$PropertyChangedCallbackForTest;->onPropertyChanged()V

    :cond_11
    return-void

    :goto_4
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
