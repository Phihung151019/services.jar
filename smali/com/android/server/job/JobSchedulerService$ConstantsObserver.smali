.class public final Lcom/android/server/job/JobSchedulerService$ConstantsObserver;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# instance fields
.field public mCacheConfigChanges:Z

.field public mLastPropertiesPulled:Landroid/provider/DeviceConfig$Properties;

.field public final synthetic this$0:Lcom/android/server/job/JobSchedulerService;


# direct methods
.method public constructor <init>(Lcom/android/server/job/JobSchedulerService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->mCacheConfigChanges:Z

    return-void
.end method


# virtual methods
.method public final onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .locals 13

    const/4 v0, 0x1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v3, v3, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v3, v3, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/job/controllers/StateController;

    invoke-virtual {v3}, Lcom/android/server/job/controllers/StateController;->prepareForUpdatedConstantsLocked()V

    add-int/2addr v2, v0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v2, v2, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-boolean v3, p0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->mCacheConfigChanges:Z

    if-eqz v3, :cond_1

    const-string/jumbo v3, "jobscheduler"

    new-array v4, v1, [Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/provider/DeviceConfig;->getProperties(Ljava/lang/String;[Ljava/lang/String;)Landroid/provider/DeviceConfig$Properties;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->mLastPropertiesPulled:Landroid/provider/DeviceConfig$Properties;

    goto :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_9

    :cond_1
    :goto_1
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v4, v1

    move v5, v4

    move v6, v5

    move v7, v6

    :cond_2
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    if-nez v8, :cond_3

    goto :goto_2

    :cond_3
    sget-boolean v9, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-nez v9, :cond_4

    iget-boolean v9, p0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->mCacheConfigChanges:Z

    if-eqz v9, :cond_5

    :cond_4
    const-string v9, "JobScheduler"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "DeviceConfig "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " changed to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v11, 0x0

    invoke-virtual {p1, v8, v11}, Landroid/provider/DeviceConfig$Properties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_0

    goto/16 :goto_3

    :sswitch_0
    const-string/jumbo v9, "abandoned_job_timeouts_before_aggressive_backoff"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    const/16 v9, 0x16

    goto/16 :goto_4

    :sswitch_1
    const-string/jumbo v9, "conn_prefetch_relax_frac"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    const/16 v9, 0x18

    goto/16 :goto_4

    :sswitch_2
    const-string/jumbo v9, "runtime_min_ui_guarantee_ms"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    const/16 v9, 0x22

    goto/16 :goto_4

    :sswitch_3
    const-string/jumbo v9, "runtime_free_quota_max_limit_ms"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    const/16 v9, 0x1f

    goto/16 :goto_4

    :sswitch_4
    const-string/jumbo v9, "runtime_min_ui_data_transfer_guarantee_buffer_factor"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    const/16 v9, 0x24

    goto/16 :goto_4

    :sswitch_5
    const-string/jumbo v9, "max_cpu_only_job_batch_delay_ms"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    const/16 v9, 0xf

    goto/16 :goto_4

    :sswitch_6
    const-string/jumbo v9, "persist_in_split_files"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    const/16 v9, 0x29

    goto/16 :goto_4

    :sswitch_7
    const-string/jumbo v9, "aq_schedule_throw_exception"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    const/4 v9, 0x5

    goto/16 :goto_4

    :sswitch_8
    const-string/jumbo v9, "system_stop_to_failure_ratio"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    const/16 v9, 0x15

    goto/16 :goto_4

    :sswitch_9
    const-string/jumbo v9, "min_ready_non_active_jobs_count"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    const/16 v9, 0xe

    goto/16 :goto_4

    :sswitch_a
    const-string/jumbo v9, "conn_max_connectivity_job_batch_delay_ms"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    const/16 v9, 0x1a

    goto/16 :goto_4

    :sswitch_b
    const-string/jumbo v9, "runtime_cumulative_ui_limit_ms"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    const/16 v9, 0x26

    goto/16 :goto_4

    :sswitch_c
    const-string/jumbo v9, "min_linear_backoff_time_ms"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    const/16 v9, 0x13

    goto/16 :goto_4

    :sswitch_d
    const-string/jumbo v9, "es_u_timeout_ej_count"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    const/4 v9, 0x7

    goto/16 :goto_4

    :sswitch_e
    const-string/jumbo v9, "es_u_timeout_window_ms"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    const/16 v9, 0xa

    goto/16 :goto_4

    :sswitch_f
    const-string/jumbo v9, "es_u_timeout_reg_count"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    const/16 v9, 0x8

    goto/16 :goto_4

    :sswitch_10
    const-string/jumbo v9, "heavy_use_factor"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    const/16 v9, 0x11

    goto/16 :goto_4

    :sswitch_11
    const-string/jumbo v9, "min_exp_backoff_time_ms"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    const/16 v9, 0x14

    goto/16 :goto_4

    :sswitch_12
    const-string/jumbo v9, "es_u_timeout_uij_count"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    const/4 v9, 0x6

    goto/16 :goto_4

    :sswitch_13
    const-string/jumbo v9, "runtime_use_data_estimates_for_limits"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    const/16 v9, 0x27

    goto/16 :goto_4

    :sswitch_14
    const-string/jumbo v9, "max_non_active_job_batch_delay_ms"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    const/16 v9, 0x10

    goto/16 :goto_4

    :sswitch_15
    const-string/jumbo v9, "conn_congestion_delay_frac"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    const/16 v9, 0x17

    goto/16 :goto_4

    :sswitch_16
    const-string/jumbo v9, "aq_schedule_return_failure"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    const/4 v9, 0x4

    goto/16 :goto_4

    :sswitch_17
    const-string/jumbo v9, "es_u_anr_window_ms"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    const/16 v9, 0xc

    goto/16 :goto_4

    :sswitch_18
    const-string/jumbo v9, "max_num_persisted_job_work_items"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    const/16 v9, 0x28

    goto/16 :goto_4

    :sswitch_19
    const-string/jumbo v9, "conn_low_signal_strength_relax_frac"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    const/16 v9, 0x19

    goto/16 :goto_4

    :sswitch_1a
    const-string/jumbo v9, "runtime_min_ui_data_transfer_guarantee_ms"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    const/16 v9, 0x25

    goto/16 :goto_4

    :sswitch_1b
    const-string/jumbo v9, "es_u_anr_count"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    const/16 v9, 0xb

    goto/16 :goto_4

    :sswitch_1c
    const-string/jumbo v9, "moderate_use_factor"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    const/16 v9, 0x12

    goto/16 :goto_4

    :sswitch_1d
    const-string/jumbo v9, "runtime_ui_limit_ms"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    const/16 v9, 0x23

    goto/16 :goto_4

    :sswitch_1e
    const-string/jumbo v9, "min_ready_cpu_only_jobs_count"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    const/16 v9, 0xd

    goto/16 :goto_4

    :sswitch_1f
    const-string/jumbo v9, "runtime_min_guarantee_ms"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    const/16 v9, 0x20

    goto/16 :goto_4

    :sswitch_20
    const-string/jumbo v9, "conn_transport_batch_threshold"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    const/16 v9, 0x1b

    goto/16 :goto_4

    :sswitch_21
    const-string/jumbo v9, "aq_schedule_window_ms"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    const/4 v9, 0x3

    goto :goto_4

    :sswitch_22
    const-string/jumbo v9, "enable_execution_safeguards_udc"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    move v9, v0

    goto :goto_4

    :sswitch_23
    const-string/jumbo v9, "conn_update_all_jobs_min_interval_ms"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    const/16 v9, 0x1d

    goto :goto_4

    :sswitch_24
    const-string/jumbo v9, "prefetch_force_batch_relax_threshold_ms"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    const/16 v9, 0x1e

    goto :goto_4

    :sswitch_25
    const-string/jumbo v9, "conn_use_cell_signal_strength"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    const/16 v9, 0x1c

    goto :goto_4

    :sswitch_26
    const-string/jumbo v9, "runtime_min_ej_guarantee_ms"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    const/16 v9, 0x21

    goto :goto_4

    :sswitch_27
    const-string/jumbo v9, "enable_api_quotas"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    move v9, v1

    goto :goto_4

    :sswitch_28
    const-string/jumbo v9, "aq_schedule_count"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    const/4 v9, 0x2

    goto :goto_4

    :sswitch_29
    const-string/jumbo v9, "es_u_timeout_total_count"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    const/16 v9, 0x9

    goto :goto_4

    :cond_6
    :goto_3
    const/4 v9, -0x1

    :goto_4
    packed-switch v9, :pswitch_data_0

    const-string/jumbo v9, "concurrency_"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    if-nez v5, :cond_7

    iget-object v5, p0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v5, v5, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    invoke-virtual {v5}, Lcom/android/server/job/JobConcurrencyManager;->updateConfigLocked()V

    move v5, v0

    goto/16 :goto_2

    :cond_7
    move v9, v1

    :goto_5
    iget-object v10, p0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v10, v10, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    check-cast v10, Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v9, v10, :cond_2

    iget-object v10, p0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v10, v10, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    check-cast v10, Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/job/controllers/StateController;

    invoke-virtual {v10, p1, v8}, Lcom/android/server/job/controllers/StateController;->processConstantLocked(Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;)V

    add-int/2addr v9, v0

    goto :goto_5

    :pswitch_0
    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v6, v6, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    sget v8, Lcom/android/server/job/JobSchedulerService$Constants;->DEFAULT_MIN_READY_CPU_ONLY_JOBS_COUNT:I

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v8, "jobscheduler"

    const-string/jumbo v9, "persist_in_split_files"

    invoke-static {v8, v9, v0}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v9

    iput-boolean v9, v6, Lcom/android/server/job/JobSchedulerService$Constants;->PERSIST_IN_SPLIT_FILES:Z

    const-string/jumbo v9, "max_num_persisted_job_work_items"

    const v10, 0x186a0

    invoke-static {v8, v9, v10}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v8

    iput v8, v6, Lcom/android/server/job/JobSchedulerService$Constants;->MAX_NUM_PERSISTED_JOB_WORK_ITEMS:I

    iget-object v6, p0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v8, v6, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    iget-object v6, v6, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-boolean v6, v6, Lcom/android/server/job/JobSchedulerService$Constants;->PERSIST_IN_SPLIT_FILES:Z

    iget-object v9, v8, Lcom/android/server/job/JobStore;->mLock:Ljava/lang/Object;

    monitor-enter v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-boolean v10, v8, Lcom/android/server/job/JobStore;->mUseSplitFiles:Z

    if-eq v10, v6, :cond_8

    iput-boolean v6, v8, Lcom/android/server/job/JobStore;->mUseSplitFiles:Z

    invoke-virtual {v8}, Lcom/android/server/job/JobStore;->migrateJobFilesAsync()V

    goto :goto_6

    :catchall_1
    move-exception p0

    goto :goto_7

    :cond_8
    :goto_6
    monitor-exit v9

    move v6, v0

    goto/16 :goto_2

    :goto_7
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    throw p0

    :pswitch_1
    if-nez v7, :cond_2

    iget-object v7, p0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v7, v7, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    invoke-static {v7}, Lcom/android/server/job/JobSchedulerService$Constants;->-$$Nest$mupdateRuntimeConstantsLocked(Lcom/android/server/job/JobSchedulerService$Constants;)V

    move v7, v0

    goto/16 :goto_2

    :pswitch_2
    iget-object v8, p0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v8, v8, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    sget v9, Lcom/android/server/job/JobSchedulerService$Constants;->DEFAULT_MIN_READY_CPU_ONLY_JOBS_COUNT:I

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v9, "jobscheduler"

    const-string/jumbo v10, "prefetch_force_batch_relax_threshold_ms"

    const-wide/32 v11, 0x36ee80

    invoke-static {v9, v10, v11, v12}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v9

    iput-wide v9, v8, Lcom/android/server/job/JobSchedulerService$Constants;->PREFETCH_FORCE_BATCH_RELAX_THRESHOLD_MS:J

    goto/16 :goto_2

    :pswitch_3
    iget-object v8, p0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v8, v8, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    invoke-static {v8}, Lcom/android/server/job/JobSchedulerService$Constants;->-$$Nest$mupdateConnectivityConstantsLocked(Lcom/android/server/job/JobSchedulerService$Constants;)V

    goto/16 :goto_2

    :pswitch_4
    iget-object v8, p0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v8, v8, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    invoke-static {v8}, Lcom/android/server/job/JobSchedulerService$Constants;->-$$Nest$mupdateBackoffConstantsLocked(Lcom/android/server/job/JobSchedulerService$Constants;)V

    goto/16 :goto_2

    :pswitch_5
    iget-object v8, p0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v8, v8, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    sget v9, Lcom/android/server/job/JobSchedulerService$Constants;->DEFAULT_MIN_READY_CPU_ONLY_JOBS_COUNT:I

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v9, "jobscheduler"

    const-string/jumbo v10, "heavy_use_factor"

    const v11, 0x3f666666    # 0.9f

    invoke-static {v9, v10, v11}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v10

    iput v10, v8, Lcom/android/server/job/JobSchedulerService$Constants;->HEAVY_USE_FACTOR:F

    const-string/jumbo v10, "moderate_use_factor"

    const/high16 v11, 0x3f000000    # 0.5f

    invoke-static {v9, v10, v11}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v9

    iput v9, v8, Lcom/android/server/job/JobSchedulerService$Constants;->MODERATE_USE_FACTOR:F

    goto/16 :goto_2

    :pswitch_6
    iget-object v8, p0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v8, v8, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    invoke-static {v8}, Lcom/android/server/job/JobSchedulerService$Constants;->-$$Nest$mupdateBatchingConstantsLocked(Lcom/android/server/job/JobSchedulerService$Constants;)V

    goto/16 :goto_2

    :pswitch_7
    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v4, v4, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    invoke-static {v4}, Lcom/android/server/job/JobSchedulerService$Constants;->-$$Nest$mupdateApiQuotaConstantsLocked(Lcom/android/server/job/JobSchedulerService$Constants;)V

    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v4}, Lcom/android/server/job/JobSchedulerService;->updateQuotaTracker()V

    move v4, v0

    goto/16 :goto_2

    :cond_9
    :goto_8
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object p1, p1, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v1, p1, :cond_a

    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object p1, p1, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/job/controllers/StateController;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/StateController;->onConstantsUpdatedLocked()V

    add-int/2addr v1, v0

    goto :goto_8

    :cond_a
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :goto_9
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0

    :sswitch_data_0
    .sparse-switch
        -0x6e1c1925 -> :sswitch_29
        -0x6a91caaa -> :sswitch_28
        -0x61ffed04 -> :sswitch_27
        -0x57ab4ebd -> :sswitch_26
        -0x4e49277a -> :sswitch_25
        -0x4bd6b576 -> :sswitch_24
        -0x48789375 -> :sswitch_23
        -0x472b630d -> :sswitch_22
        -0x3f51c6e4 -> :sswitch_21
        -0x38d906c3 -> :sswitch_20
        -0x3816e2ef -> :sswitch_1f
        -0x34c37a87 -> :sswitch_1e
        -0x2fdd43f2 -> :sswitch_1d
        -0x2b109c3d -> :sswitch_1c
        -0x28f70f26 -> :sswitch_1b
        -0x2074138d -> :sswitch_1a
        -0x1d5723de -> :sswitch_19
        -0x1673d94c -> :sswitch_18
        -0x8486d60 -> :sswitch_17
        -0x6861eec -> :sswitch_16
        -0x36a3a91 -> :sswitch_15
        -0x2ba94ab -> :sswitch_14
        0xcb38358 -> :sswitch_13
        0xddf302d -> :sswitch_12
        0xfb016b2 -> :sswitch_11
        0x11402d7f -> :sswitch_10
        0x12da7deb -> :sswitch_f
        0x1335a09c -> :sswitch_e
        0x185b7bce -> :sswitch_d
        0x2a4571b4 -> :sswitch_c
        0x306220f0 -> :sswitch_b
        0x39707b23 -> :sswitch_a
        0x3be1abc4 -> :sswitch_9
        0x46a7f6df -> :sswitch_8
        0x46ad01bd -> :sswitch_7
        0x4da62ac3 -> :sswitch_6
        0x4e8bc38a -> :sswitch_5
        0x5343e941 -> :sswitch_4
        0x57aac0d8 -> :sswitch_3
        0x642d8bb4 -> :sswitch_2
        0x64e397f2 -> :sswitch_1
        0x76257c6d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
