.class public final Lcom/android/server/am/ActivityManagerConstants$1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/am/ActivityManagerConstants;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/ActivityManagerConstants;I)V
    .locals 0

    iput p2, p0, Lcom/android/server/am/ActivityManagerConstants$1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .locals 27

    move-object/from16 v0, p0

    const/4 v7, 0x0

    const/4 v8, 0x1

    iget v9, v0, Lcom/android/server/am/ActivityManagerConstants$1;->$r8$classId:I

    packed-switch v9, :pswitch_data_0

    invoke-virtual/range {p1 .. p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    const-string/jumbo v3, "enable_experimental_component_alias"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "component_alias_overrides"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, v0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v3, "enable_experimental_component_alias"

    const-string/jumbo v4, "activity_manager_ca"

    invoke-static {v4, v3, v7}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v2, Lcom/android/server/am/ActivityManagerConstants;->mEnableComponentAlias:Z

    const-string/jumbo v3, "component_alias_overrides"

    const-string v5, ""

    invoke-static {v4, v3, v5}, Landroid/provider/DeviceConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/server/am/ActivityManagerConstants;->mComponentAliasOverrides:Ljava/lang/String;

    iget-object v3, v2, Lcom/android/server/am/ActivityManagerConstants;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mComponentAliasResolver:Lcom/android/server/am/ComponentAliasResolver;

    iget-boolean v4, v2, Lcom/android/server/am/ActivityManagerConstants;->mEnableComponentAlias:Z

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerConstants;->mComponentAliasOverrides:Ljava/lang/String;

    invoke-virtual {v3, v2, v4}, Lcom/android/server/am/ComponentAliasResolver;->update(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void

    :pswitch_0
    invoke-virtual/range {p1 .. p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v10, v7

    :cond_3
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5d

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    if-nez v11, :cond_4

    goto/16 :goto_15

    :cond_4
    const-wide/16 v12, 0x1388

    const-wide/32 v3, 0x1499700

    const/4 v1, 0x0

    const-wide/16 v5, 0x3a98

    const-wide/16 v14, 0x2710

    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v18

    sparse-switch v18, :sswitch_data_0

    :goto_3
    const/4 v2, -0x1

    goto/16 :goto_4

    :sswitch_0
    const-string/jumbo v2, "binder_heavy_hitter_auto_sampler_batchsize"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_3

    :cond_5
    const/16 v2, 0x43

    goto/16 :goto_4

    :sswitch_1
    const-string/jumbo v2, "service_bind_almost_perceptible_timeout_ms"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_3

    :cond_6
    const/16 v2, 0x42

    goto/16 :goto_4

    :sswitch_2
    const-string/jumbo v2, "tiered_cached_adj_ui_tier_size"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_3

    :cond_7
    const/16 v2, 0x41

    goto/16 :goto_4

    :sswitch_3
    const-string/jumbo v2, "binder_heavy_hitter_watcher_threshold"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_3

    :cond_8
    const/16 v2, 0x40

    goto/16 :goto_4

    :sswitch_4
    const-string/jumbo v2, "deferred_fgs_notification_interval_for_short"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    goto :goto_3

    :cond_9
    const/16 v2, 0x3f

    goto/16 :goto_4

    :sswitch_5
    const-string/jumbo v2, "fgs_start_foreground_timeout"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    goto :goto_3

    :cond_a
    const/16 v2, 0x3e

    goto/16 :goto_4

    :sswitch_6
    const-string/jumbo v2, "binder_heavy_hitter_auto_sampler_enabled"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    goto :goto_3

    :cond_b
    const/16 v2, 0x3d

    goto/16 :goto_4

    :sswitch_7
    const-string/jumbo v2, "use_tiered_cached_adj"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    goto :goto_3

    :cond_c
    const/16 v2, 0x3c

    goto/16 :goto_4

    :sswitch_8
    const-string/jumbo v2, "binder_heavy_hitter_auto_sampler_threshold"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    goto :goto_3

    :cond_d
    const/16 v2, 0x3b

    goto/16 :goto_4

    :sswitch_9
    const-string/jumbo v2, "proc_state_debug_uids"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    goto/16 :goto_3

    :cond_e
    const/16 v2, 0x3a

    goto/16 :goto_4

    :sswitch_a
    const-string/jumbo v2, "follow_up_oomadj_update_wait_duration"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    goto/16 :goto_3

    :cond_f
    const/16 v2, 0x39

    goto/16 :goto_4

    :sswitch_b
    const-string/jumbo v2, "enable_wait_for_finish_attach_application"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    goto/16 :goto_3

    :cond_10
    const/16 v2, 0x38

    goto/16 :goto_4

    :sswitch_c
    const-string/jumbo v2, "deferred_fgs_notifications_enabled"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    goto/16 :goto_3

    :cond_11
    const/16 v2, 0x37

    goto/16 :goto_4

    :sswitch_d
    const-string/jumbo v2, "extra_delay_svc_restart_mem_pressure"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    goto/16 :goto_3

    :cond_12
    const/16 v2, 0x36

    goto/16 :goto_4

    :sswitch_e
    const-string/jumbo v2, "disable_app_profiler_pss_profiling"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    goto/16 :goto_3

    :cond_13
    const/16 v2, 0x35

    goto/16 :goto_4

    :sswitch_f
    const-string/jumbo v2, "media_processing_fgs_timeout_duration"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    goto/16 :goto_3

    :cond_14
    const/16 v2, 0x34

    goto/16 :goto_4

    :sswitch_10
    const-string/jumbo v2, "short_fgs_proc_state_extra_wait_duration"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    goto/16 :goto_3

    :cond_15
    const/16 v2, 0x33

    goto/16 :goto_4

    :sswitch_11
    const-string/jumbo v2, "kill_bg_restricted_cached_idle"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    goto/16 :goto_3

    :cond_16
    const/16 v2, 0x32

    goto/16 :goto_4

    :sswitch_12
    const-string/jumbo v2, "boot_time_temp_allowlist_duration"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17

    goto/16 :goto_3

    :cond_17
    const/16 v2, 0x31

    goto/16 :goto_4

    :sswitch_13
    const-string/jumbo v2, "low_swap_threshold_percent"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18

    goto/16 :goto_3

    :cond_18
    const/16 v2, 0x30

    goto/16 :goto_4

    :sswitch_14
    const-string/jumbo v2, "fg_to_bg_fgs_grace_duration"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    goto/16 :goto_3

    :cond_19
    const/16 v2, 0x2f

    goto/16 :goto_4

    :sswitch_15
    const-string/jumbo v2, "no_kill_cached_processes_until_boot_completed"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    goto/16 :goto_3

    :cond_1a
    const/16 v2, 0x2e

    goto/16 :goto_4

    :sswitch_16
    const-string/jumbo v2, "default_fgs_starts_restriction_check_caller_target_sdk"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b

    goto/16 :goto_3

    :cond_1b
    const/16 v2, 0x2d

    goto/16 :goto_4

    :sswitch_17
    const-string/jumbo v2, "deferred_fgs_notification_exclusion_time"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    goto/16 :goto_3

    :cond_1c
    const/16 v2, 0x2c

    goto/16 :goto_4

    :sswitch_18
    const-string/jumbo v2, "enable_extra_delay_svc_restart_mem_pressure"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d

    goto/16 :goto_3

    :cond_1d
    const/16 v2, 0x2b

    goto/16 :goto_4

    :sswitch_19
    const-string/jumbo v2, "freezer_cutoff_adj"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    goto/16 :goto_3

    :cond_1e
    const/16 v2, 0x2a

    goto/16 :goto_4

    :sswitch_1a
    const-string/jumbo v2, "system_exempt_power_restrictions_enabled"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    goto/16 :goto_3

    :cond_1f
    const/16 v2, 0x29

    goto/16 :goto_4

    :sswitch_1b
    const-string/jumbo v2, "proactive_kills_enabled"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    goto/16 :goto_3

    :cond_20
    const/16 v2, 0x28

    goto/16 :goto_4

    :sswitch_1c
    const-string/jumbo v2, "tiered_cached_adj_decay_time"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    goto/16 :goto_3

    :cond_21
    const/16 v2, 0x27

    goto/16 :goto_4

    :sswitch_1d
    const-string/jumbo v2, "defer_boot_completed_broadcast"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22

    goto/16 :goto_3

    :cond_22
    const/16 v2, 0x26

    goto/16 :goto_4

    :sswitch_1e
    const-string/jumbo v2, "fgs_crash_extra_wait_duration"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_23

    goto/16 :goto_3

    :cond_23
    const/16 v2, 0x25

    goto/16 :goto_4

    :sswitch_1f
    const-string/jumbo v2, "imperceptible_kill_exempt_packages"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_24

    goto/16 :goto_3

    :cond_24
    const/16 v2, 0x24

    goto/16 :goto_4

    :sswitch_20
    const-string/jumbo v2, "top_to_fgs_grace_duration"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_25

    goto/16 :goto_3

    :cond_25
    const/16 v2, 0x23

    goto/16 :goto_4

    :sswitch_21
    const-string/jumbo v2, "deferred_fgs_notifications_api_gated"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_26

    goto/16 :goto_3

    :cond_26
    const/16 v2, 0x22

    goto/16 :goto_4

    :sswitch_22
    const-string/jumbo v2, "no_kill_cached_processes_post_boot_completed_duration_millis"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    goto/16 :goto_3

    :cond_27
    const/16 v2, 0x21

    goto/16 :goto_4

    :sswitch_23
    const-string/jumbo v2, "push_messaging_over_quota_behavior"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_28

    goto/16 :goto_3

    :cond_28
    const/16 v2, 0x20

    goto/16 :goto_4

    :sswitch_24
    const-string/jumbo v2, "binder_heavy_hitter_watcher_enabled"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_29

    goto/16 :goto_3

    :cond_29
    const/16 v2, 0x1f

    goto/16 :goto_4

    :sswitch_25
    const-string/jumbo v2, "default_fgs_starts_restriction_notification_enabled"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2a

    goto/16 :goto_3

    :cond_2a
    const/16 v2, 0x1e

    goto/16 :goto_4

    :sswitch_26
    const-string/jumbo v2, "fgs_start_allowed_log_sample_rate"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2b

    goto/16 :goto_3

    :cond_2b
    const/16 v2, 0x1d

    goto/16 :goto_4

    :sswitch_27
    const-string/jumbo v2, "pss_to_rss_threshold_modifier"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2c

    goto/16 :goto_3

    :cond_2c
    const/16 v2, 0x1c

    goto/16 :goto_4

    :sswitch_28
    const-string/jumbo v2, "service_start_foreground_timeout_ms"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2d

    goto/16 :goto_3

    :cond_2d
    const/16 v2, 0x1b

    goto/16 :goto_4

    :sswitch_29
    const-string/jumbo v2, "fgs_atom_sample_rate"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2e

    goto/16 :goto_3

    :cond_2e
    const/16 v2, 0x1a

    goto/16 :goto_4

    :sswitch_2a
    const-string/jumbo v2, "prioritize_alarm_broadcasts"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2f

    goto/16 :goto_3

    :cond_2f
    const/16 v2, 0x19

    goto/16 :goto_4

    :sswitch_2b
    const-string/jumbo v2, "process_kill_timeout"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_30

    goto/16 :goto_3

    :cond_30
    const/16 v2, 0x18

    goto/16 :goto_4

    :sswitch_2c
    const-string/jumbo v2, "min_assoc_log_duration"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_31

    goto/16 :goto_3

    :cond_31
    const/16 v2, 0x17

    goto/16 :goto_4

    :sswitch_2d
    const-string/jumbo v2, "network_access_timeout_ms"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_32

    goto/16 :goto_3

    :cond_32
    const/16 v2, 0x16

    goto/16 :goto_4

    :sswitch_2e
    const-string/jumbo v2, "data_sync_fgs_timeout_duration"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_33

    goto/16 :goto_3

    :cond_33
    const/16 v2, 0x15

    goto/16 :goto_4

    :sswitch_2f
    const-string/jumbo v2, "max_empty_time_millis"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_34

    goto/16 :goto_3

    :cond_34
    const/16 v2, 0x14

    goto/16 :goto_4

    :sswitch_30
    const-string/jumbo v2, "max_cached_processes"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_35

    goto/16 :goto_3

    :cond_35
    const/16 v2, 0x13

    goto/16 :goto_4

    :sswitch_31
    const-string/jumbo v2, "force_bg_check_on_restricted"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_36

    goto/16 :goto_3

    :cond_36
    const/16 v2, 0x12

    goto/16 :goto_4

    :sswitch_32
    const-string/jumbo v2, "default_background_fgs_starts_restriction_enabled"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_37

    goto/16 :goto_3

    :cond_37
    const/16 v2, 0x11

    goto/16 :goto_4

    :sswitch_33
    const-string/jumbo v2, "short_fgs_timeout_duration"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_38

    goto/16 :goto_3

    :cond_38
    const/16 v2, 0x10

    goto/16 :goto_4

    :sswitch_34
    const-string/jumbo v2, "max_phantom_processes"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_39

    goto/16 :goto_3

    :cond_39
    const/16 v2, 0xf

    goto/16 :goto_4

    :sswitch_35
    const-string/jumbo v2, "deferred_fgs_notification_interval"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3a

    goto/16 :goto_3

    :cond_3a
    const/16 v2, 0xe

    goto/16 :goto_4

    :sswitch_36
    const-string/jumbo v2, "max_previous_time"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3b

    goto/16 :goto_3

    :cond_3b
    const/16 v2, 0xd

    goto/16 :goto_4

    :sswitch_37
    const-string/jumbo v2, "oomadj_update_policy"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3c

    goto/16 :goto_3

    :cond_3c
    const/16 v2, 0xc

    goto/16 :goto_4

    :sswitch_38
    const-string/jumbo v2, "vis_to_invis_uij_schedule_grace_duration"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3d

    goto/16 :goto_3

    :cond_3d
    const/16 v2, 0xb

    goto/16 :goto_4

    :sswitch_39
    const-string/jumbo v2, "max_service_connections_per_process"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3e

    goto/16 :goto_3

    :cond_3e
    const/16 v2, 0xa

    goto/16 :goto_4

    :sswitch_3a
    const-string/jumbo v2, "deferred_fgs_notification_exclusion_time_for_short"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3f

    goto/16 :goto_3

    :cond_3f
    const/16 v2, 0x9

    goto/16 :goto_4

    :sswitch_3b
    const-string/jumbo v2, "fgs_start_denied_log_sample_rate"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_40

    goto/16 :goto_3

    :cond_40
    const/16 v2, 0x8

    goto/16 :goto_4

    :sswitch_3c
    const-string/jumbo v2, "fgs_allow_opt_out"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_41

    goto/16 :goto_3

    :cond_41
    const/4 v2, 0x7

    goto :goto_4

    :sswitch_3d
    const-string/jumbo v2, "default_background_activity_starts_enabled"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_42

    goto/16 :goto_3

    :cond_42
    const/4 v2, 0x6

    goto :goto_4

    :sswitch_3e
    const-string/jumbo v2, "binder_heavy_hitter_watcher_batchsize"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_43

    goto/16 :goto_3

    :cond_43
    const/4 v2, 0x5

    goto :goto_4

    :sswitch_3f
    const-string/jumbo v2, "service_start_foreground_anr_delay_ms"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_44

    goto/16 :goto_3

    :cond_44
    const/4 v2, 0x4

    goto :goto_4

    :sswitch_40
    const-string/jumbo v2, "default_fgs_starts_restriction_enabled"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_45

    goto/16 :goto_3

    :cond_45
    const/4 v2, 0x3

    goto :goto_4

    :sswitch_41
    const-string/jumbo v2, "kill_bg_restricted_cached_idle_settle_time"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_46

    goto/16 :goto_3

    :cond_46
    const/4 v2, 0x2

    goto :goto_4

    :sswitch_42
    const-string/jumbo v2, "short_fgs_anr_extra_wait_duration"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_47

    goto/16 :goto_3

    :cond_47
    move v2, v8

    goto :goto_4

    :sswitch_43
    const-string/jumbo v2, "imperceptible_kill_exempt_proc_states"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_48

    goto/16 :goto_3

    :cond_48
    move v2, v7

    :goto_4
    packed-switch v2, :pswitch_data_1

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/app/ForegroundServiceTypePolicy;->getDefaultPolicy()Landroid/app/ForegroundServiceTypePolicy;

    move-result-object v1

    invoke-virtual {v1, v11}, Landroid/app/ForegroundServiceTypePolicy;->updatePermissionEnforcementFlagIfNecessary(Ljava/lang/String;)V

    :goto_5
    move-object/from16 v11, p1

    :goto_6
    const/4 v5, -0x1

    const/16 v6, 0x20

    const/16 v12, 0x3a

    const/16 v17, 0x6

    const/16 v18, 0x32

    goto/16 :goto_2

    :pswitch_1
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v2, "activity_manager"

    const-string/jumbo v3, "service_bind_almost_perceptible_timeout_ms"

    invoke-static {v2, v3, v5, v6}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/am/ActivityManagerConstants;->mServiceBindAlmostPerceptibleTimeoutMs:J

    goto :goto_5

    :pswitch_2
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v2, "activity_manager"

    const-string/jumbo v3, "deferred_fgs_notification_interval_for_short"

    invoke-static {v2, v3, v14, v15}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/am/ActivityManagerConstants;->mFgsNotificationDeferralIntervalForShort:J

    goto :goto_5

    :pswitch_3
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v2, "activity_manager"

    const-string/jumbo v3, "fgs_start_foreground_timeout"

    invoke-static {v2, v3, v14, v15}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/am/ActivityManagerConstants;->mFgsStartForegroundTimeoutMs:J

    goto :goto_5

    :pswitch_4
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, " in "

    const-string v3, "ActivityManagerConstants"

    const-string v4, ""

    const-string/jumbo v5, "activity_manager"

    const-string/jumbo v6, "proc_state_debug_uids"

    invoke-static {v5, v6, v4}, Landroid/provider/DeviceConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    iput-boolean v7, v1, Lcom/android/server/am/ActivityManagerConstants;->mEnableProcStateStacktrace:Z

    iput v7, v1, Lcom/android/server/am/ActivityManagerConstants;->mProcStateDebugSetProcStateDelay:I

    iput v7, v1, Lcom/android/server/am/ActivityManagerConstants;->mProcStateDebugSetUidStateDelay:I

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_49

    new-instance v2, Landroid/util/SparseBooleanArray;

    invoke-direct {v2, v7}, Landroid/util/SparseBooleanArray;-><init>(I)V

    iput-object v2, v1, Lcom/android/server/am/ActivityManagerConstants;->mProcStateDebugUids:Landroid/util/SparseBooleanArray;

    goto :goto_5

    :cond_49
    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    new-instance v6, Landroid/util/SparseBooleanArray;

    invoke-direct {v6, v7}, Landroid/util/SparseBooleanArray;-><init>(I)V

    array-length v11, v5

    move v12, v7

    :goto_7
    if-ge v12, v11, :cond_50

    aget-object v13, v5, v12

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v14

    if-nez v14, :cond_4a

    goto/16 :goto_9

    :cond_4a
    const-string/jumbo v14, "stack"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4b

    iput-boolean v8, v1, Lcom/android/server/am/ActivityManagerConstants;->mEnableProcStateStacktrace:Z

    goto :goto_9

    :cond_4b
    invoke-virtual {v13, v7}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0x61

    if-gt v15, v14, :cond_4c

    const/16 v15, 0x7a

    if-gt v14, v15, :cond_4c

    invoke-virtual {v13, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    move v15, v7

    goto :goto_8

    :cond_4c
    move v15, v8

    :goto_8
    :try_start_0
    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v15, :cond_4d

    invoke-virtual {v6, v13, v8}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_9

    :cond_4d
    const/16 v15, 0x70

    if-ne v14, v15, :cond_4e

    iput v13, v1, Lcom/android/server/am/ActivityManagerConstants;->mProcStateDebugSetProcStateDelay:I

    goto :goto_9

    :cond_4e
    const/16 v15, 0x75

    if-ne v14, v15, :cond_4f

    iput v13, v1, Lcom/android/server/am/ActivityManagerConstants;->mProcStateDebugSetUidStateDelay:I

    goto :goto_9

    :cond_4f
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v15, "Invalid prefix "

    invoke-direct {v13, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v3, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :catch_0
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "Invalid number "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v3, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_9
    add-int/2addr v12, v8

    goto :goto_7

    :cond_50
    iput-object v6, v1, Lcom/android/server/am/ActivityManagerConstants;->mProcStateDebugUids:Landroid/util/SparseBooleanArray;

    goto/16 :goto_5

    :pswitch_5
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v2, "activity_manager"

    const-string/jumbo v3, "follow_up_oomadj_update_wait_duration"

    const-wide/16 v4, 0x3e8

    invoke-static {v2, v3, v4, v5}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/am/ActivityManagerConstants;->FOLLOW_UP_OOMADJ_UPDATE_WAIT_DURATION:J

    goto/16 :goto_5

    :pswitch_6
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v2, "activity_manager"

    const-string/jumbo v3, "enable_wait_for_finish_attach_application"

    invoke-static {v2, v3, v8}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/server/am/ActivityManagerConstants;->mEnableWaitForFinishAttachApplication:Z

    goto/16 :goto_5

    :pswitch_7
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v2, "activity_manager"

    const-string/jumbo v3, "deferred_fgs_notifications_enabled"

    invoke-static {v2, v3, v8}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/server/am/ActivityManagerConstants;->mFlagFgsNotificationDeferralEnabled:Z

    goto/16 :goto_5

    :pswitch_8
    iget-object v2, v0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    iget-object v3, v2, Lcom/android/server/am/ActivityManagerConstants;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v3

    :try_start_1
    iget-object v4, v2, Lcom/android/server/am/ActivityManagerConstants;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    invoke-virtual {v4}, Lcom/android/server/am/AppProfiler;->getLastMemoryLevelLocked()I

    move-result v4

    iget-object v5, v2, Lcom/android/server/am/ActivityManagerConstants;->mExtraServiceRestartDelayOnMemPressure:[J

    const-string/jumbo v6, "extra_delay_svc_restart_mem_pressure"

    sget-object v11, Lcom/android/server/am/ActivityManagerConstants;->DEFAULT_EXTRA_SERVICE_RESTART_DELAY_ON_MEM_PRESSURE:[J

    const-string/jumbo v12, "activity_manager"

    invoke-static {v12, v6, v1}, Landroid/provider/DeviceConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_52

    const-string v6, ","

    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v6, v1

    array-length v12, v11

    if-ne v6, v12, :cond_52

    array-length v6, v1

    new-array v6, v6, [J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v12, v7

    :goto_a
    :try_start_2
    array-length v13, v1

    if-ge v12, v13, :cond_51

    aget-object v13, v1, v12

    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    aput-wide v13, v6, v12
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/2addr v12, v8

    goto :goto_a

    :cond_51
    move-object v11, v6

    :catch_1
    :cond_52
    :try_start_3
    iput-object v11, v2, Lcom/android/server/am/ActivityManagerConstants;->mExtraServiceRestartDelayOnMemPressure:[J

    iget-object v1, v2, Lcom/android/server/am/ActivityManagerConstants;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    aget-wide v20, v11, v4

    aget-wide v22, v5, v4

    const-string/jumbo v26, "config"

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v24

    move-object/from16 v19, v1

    invoke-virtual/range {v19 .. v26}, Lcom/android/server/am/ActiveServices;->performRescheduleServiceRestartOnMemoryPressureLocked(JJJLjava/lang/String;)V

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_5

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :pswitch_9
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    iget-boolean v2, v1, Lcom/android/server/am/ActivityManagerConstants;->mDefaultDisableAppProfilerPssProfiling:Z

    const-string/jumbo v3, "activity_manager"

    const-string/jumbo v4, "disable_app_profiler_pss_profiling"

    invoke-static {v3, v4, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/server/am/ActivityManagerConstants;->APP_PROFILER_PSS_PROFILING_DISABLED:Z

    goto/16 :goto_5

    :pswitch_a
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v2, "activity_manager"

    const-string/jumbo v5, "media_processing_fgs_timeout_duration"

    invoke-static {v2, v5, v3, v4}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/am/ActivityManagerConstants;->mMediaProcessingFgsTimeoutDuration:J

    goto/16 :goto_5

    :pswitch_b
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v2, "activity_manager"

    const-string/jumbo v3, "short_fgs_proc_state_extra_wait_duration"

    invoke-static {v2, v3, v12, v13}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/am/ActivityManagerConstants;->mShortFgsProcStateExtraWaitDuration:J

    goto/16 :goto_5

    :pswitch_c
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v2, "activity_manager"

    const-string/jumbo v3, "kill_bg_restricted_cached_idle"

    invoke-static {v2, v3, v7}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/server/am/ActivityManagerConstants;->mKillBgRestrictedAndCachedIdle:Z

    goto/16 :goto_5

    :pswitch_d
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v2, "activity_manager"

    const-string/jumbo v3, "boot_time_temp_allowlist_duration"

    const-wide/16 v4, 0x4e20

    invoke-static {v2, v3, v4, v5}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/am/ActivityManagerConstants;->mBootTimeTempAllowlistDuration:J

    goto/16 :goto_5

    :pswitch_e
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v1, "activity_manager"

    const-string/jumbo v2, "low_swap_threshold_percent"

    const v3, 0x3dcccccd    # 0.1f

    invoke-static {v1, v2, v3}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v1

    sput v1, Lcom/android/server/am/ActivityManagerConstants;->LOW_SWAP_THRESHOLD_PERCENT:F

    goto/16 :goto_5

    :pswitch_f
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v2, "activity_manager"

    const-string/jumbo v3, "fg_to_bg_fgs_grace_duration"

    invoke-static {v2, v3, v12, v13}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/am/ActivityManagerConstants;->mFgToBgFgsGraceDuration:J

    goto/16 :goto_5

    :pswitch_10
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v2, "activity_manager"

    const-string/jumbo v3, "no_kill_cached_processes_until_boot_completed"

    invoke-static {v2, v3, v7}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/server/am/ActivityManagerConstants;->mNoKillCachedProcessesUntilBootCompleted:Z

    goto/16 :goto_5

    :pswitch_11
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v2, "activity_manager"

    const-string/jumbo v3, "default_fgs_starts_restriction_check_caller_target_sdk"

    invoke-static {v2, v3, v8}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/server/am/ActivityManagerConstants;->mFgsStartRestrictionCheckCallerTargetSdk:Z

    goto/16 :goto_5

    :pswitch_12
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v2, "activity_manager"

    const-string/jumbo v3, "deferred_fgs_notification_exclusion_time"

    const-wide/32 v4, 0x1d4c0

    invoke-static {v2, v3, v4, v5}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/am/ActivityManagerConstants;->mFgsNotificationDeferralExclusionTime:J

    goto/16 :goto_5

    :pswitch_13
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    iget-object v2, v1, Lcom/android/server/am/ActivityManagerConstants;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v2

    :try_start_5
    iget-boolean v3, v1, Lcom/android/server/am/ActivityManagerConstants;->mEnableExtraServiceRestartDelayOnMemPressure:Z

    const-string/jumbo v4, "activity_manager"

    const-string/jumbo v5, "enable_extra_delay_svc_restart_mem_pressure"

    invoke-static {v4, v5, v8}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v1, Lcom/android/server/am/ActivityManagerConstants;->mEnableExtraServiceRestartDelayOnMemPressure:Z

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerConstants;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v24

    if-ne v3, v4, :cond_53

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_d

    :cond_53
    iget-object v5, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v5, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    invoke-virtual {v6}, Lcom/android/server/am/AppProfiler;->getLastMemoryLevelLocked()I

    move-result v6

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerConstants;->mExtraServiceRestartDelayOnMemPressure:[J

    aget-wide v5, v5, v6

    if-eqz v3, :cond_54

    move-wide/from16 v20, v5

    goto :goto_b

    :cond_54
    const-wide/16 v20, 0x0

    :goto_b
    if-eqz v4, :cond_55

    move-wide/from16 v22, v5

    goto :goto_c

    :cond_55
    const-wide/16 v22, 0x0

    :goto_c
    const-string/jumbo v26, "config"

    move-object/from16 v19, v1

    invoke-virtual/range {v19 .. v26}, Lcom/android/server/am/ActiveServices;->performRescheduleServiceRestartOnMemoryPressureLocked(JJJLjava/lang/String;)V

    :goto_d
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_5

    :catchall_1
    move-exception v0

    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :pswitch_14
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    const-string/jumbo v2, "freezer_cutoff_adj"

    sget v3, Lcom/android/server/am/ActivityManagerConstants;->DEFAULT_FREEZER_CUTOFF_ADJ:I

    move-object/from16 v11, p1

    invoke-virtual {v11, v2, v3}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/android/server/am/ActivityManagerConstants;->FREEZER_CUTOFF_ADJ:I

    move v10, v8

    goto/16 :goto_6

    :pswitch_15
    move-object/from16 v11, p1

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v2, "activity_manager"

    const-string/jumbo v3, "system_exempt_power_restrictions_enabled"

    invoke-static {v2, v3, v8}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/server/am/ActivityManagerConstants;->mFlagSystemExemptPowerRestrictionsEnabled:Z

    goto/16 :goto_6

    :pswitch_16
    move-object/from16 v11, p1

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v1, "activity_manager"

    const-string/jumbo v2, "proactive_kills_enabled"

    invoke-static {v1, v2, v7}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/am/ActivityManagerConstants;->PROACTIVE_KILLS_ENABLED:Z

    goto/16 :goto_6

    :pswitch_17
    move-object/from16 v11, p1

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v2, "activity_manager"

    const-string/jumbo v3, "use_tiered_cached_adj"

    invoke-static {v2, v3, v7}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v1, Lcom/android/server/am/ActivityManagerConstants;->USE_TIERED_CACHED_ADJ:Z

    const-string/jumbo v3, "tiered_cached_adj_decay_time"

    const-wide/32 v4, 0xea60

    invoke-static {v2, v3, v4, v5}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, v1, Lcom/android/server/am/ActivityManagerConstants;->TIERED_CACHED_ADJ_DECAY_TIME:J

    const-string/jumbo v3, "tiered_cached_adj_ui_tier_size"

    iget v4, v1, Lcom/android/server/am/ActivityManagerConstants;->mDefaultTieredCachedAdjUiTierSize:I

    invoke-static {v2, v3, v4}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    const/16 v12, 0x32

    invoke-static {v2, v12}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v1, Lcom/android/server/am/ActivityManagerConstants;->TIERED_CACHED_ADJ_UI_TIER_SIZE:I

    move/from16 v18, v12

    const/4 v5, -0x1

    const/16 v6, 0x20

    const/16 v12, 0x3a

    const/16 v17, 0x6

    goto/16 :goto_2

    :pswitch_18
    move-object/from16 v11, p1

    const/16 v12, 0x32

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v2, "activity_manager"

    const-string/jumbo v3, "defer_boot_completed_broadcast"

    const/4 v13, 0x6

    invoke-static {v2, v3, v13}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/android/server/am/ActivityManagerConstants;->mDeferBootCompletedBroadcast:I

    :goto_e
    move/from16 v18, v12

    move/from16 v17, v13

    const/4 v5, -0x1

    :goto_f
    const/16 v6, 0x20

    goto/16 :goto_14

    :pswitch_19
    move-object/from16 v11, p1

    const/16 v12, 0x32

    const/4 v13, 0x6

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v2, "activity_manager"

    const-string/jumbo v3, "fgs_crash_extra_wait_duration"

    invoke-static {v2, v3, v14, v15}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/am/ActivityManagerConstants;->mFgsCrashExtraWaitDuration:J

    goto :goto_e

    :pswitch_1a
    move-object/from16 v11, p1

    const/16 v12, 0x32

    const/4 v13, 0x6

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v2, "activity_manager"

    const-string/jumbo v3, "top_to_fgs_grace_duration"

    invoke-static {v2, v3, v5, v6}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/am/ActivityManagerConstants;->TOP_TO_FGS_GRACE_DURATION:J

    goto :goto_e

    :pswitch_1b
    move-object/from16 v11, p1

    const/16 v12, 0x32

    const/4 v13, 0x6

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v2, "activity_manager"

    const-string/jumbo v3, "deferred_fgs_notifications_api_gated"

    invoke-static {v2, v3, v7}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/server/am/ActivityManagerConstants;->mFlagFgsNotificationDeferralApiGated:Z

    goto :goto_e

    :pswitch_1c
    move-object/from16 v11, p1

    const/16 v12, 0x32

    const/4 v13, 0x6

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v2, "activity_manager"

    const-string/jumbo v3, "no_kill_cached_processes_post_boot_completed_duration_millis"

    const-wide/16 v4, 0x0

    invoke-static {v2, v3, v4, v5}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/am/ActivityManagerConstants;->mNoKillCachedProcessesPostBootCompletedDurationMillis:J

    goto :goto_e

    :pswitch_1d
    move-object/from16 v11, p1

    const/16 v12, 0x32

    const/4 v13, 0x6

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v2, "activity_manager"

    const-string/jumbo v3, "push_messaging_over_quota_behavior"

    invoke-static {v2, v3, v8}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/android/server/am/ActivityManagerConstants;->mPushMessagingOverQuotaBehavior:I

    iget v2, v1, Lcom/android/server/am/ActivityManagerConstants;->mPushMessagingOverQuotaBehavior:I

    const/4 v5, -0x1

    if-lt v2, v5, :cond_56

    iget v2, v1, Lcom/android/server/am/ActivityManagerConstants;->mPushMessagingOverQuotaBehavior:I

    if-le v2, v8, :cond_57

    :cond_56
    iput v8, v1, Lcom/android/server/am/ActivityManagerConstants;->mPushMessagingOverQuotaBehavior:I

    :cond_57
    :goto_10
    move/from16 v18, v12

    move/from16 v17, v13

    goto/16 :goto_f

    :pswitch_1e
    move-object/from16 v11, p1

    const/4 v5, -0x1

    const/16 v12, 0x32

    const/4 v13, 0x6

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v2, "activity_manager"

    const-string/jumbo v3, "default_fgs_starts_restriction_notification_enabled"

    invoke-static {v2, v3, v7}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/server/am/ActivityManagerConstants;->mFgsStartRestrictionNotificationEnabled:Z

    goto :goto_10

    :pswitch_1f
    move-object/from16 v11, p1

    const/4 v5, -0x1

    const/16 v12, 0x32

    const/4 v13, 0x6

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v2, "activity_manager"

    const-string/jumbo v3, "fgs_start_allowed_log_sample_rate"

    const/high16 v4, 0x3e800000    # 0.25f

    invoke-static {v2, v3, v4}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v2

    iput v2, v1, Lcom/android/server/am/ActivityManagerConstants;->mFgsStartAllowedLogSampleRate:F

    goto :goto_10

    :pswitch_20
    move-object/from16 v11, p1

    const/4 v5, -0x1

    const/16 v12, 0x32

    const/4 v13, 0x6

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    iget v2, v1, Lcom/android/server/am/ActivityManagerConstants;->mDefaultPssToRssThresholdModifier:F

    const-string/jumbo v3, "activity_manager"

    const-string/jumbo v4, "pss_to_rss_threshold_modifier"

    invoke-static {v3, v4, v2}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v2

    iput v2, v1, Lcom/android/server/am/ActivityManagerConstants;->PSS_TO_RSS_THRESHOLD_MODIFIER:F

    goto :goto_10

    :pswitch_21
    move-object/from16 v11, p1

    const/4 v5, -0x1

    const/16 v12, 0x32

    const/4 v13, 0x6

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v2, "activity_manager"

    const-string/jumbo v3, "service_start_foreground_timeout_ms"

    const/16 v4, 0x7530

    invoke-static {v2, v3, v4}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/android/server/am/ActivityManagerConstants;->mServiceStartForegroundTimeoutMs:I

    goto :goto_10

    :pswitch_22
    move-object/from16 v11, p1

    const/4 v5, -0x1

    const/16 v12, 0x32

    const/4 v13, 0x6

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v2, "activity_manager"

    const-string/jumbo v3, "fgs_atom_sample_rate"

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v2, v3, v4}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v2

    iput v2, v1, Lcom/android/server/am/ActivityManagerConstants;->mFgsAtomSampleRate:F

    goto/16 :goto_10

    :pswitch_23
    move-object/from16 v11, p1

    const/4 v5, -0x1

    const/16 v12, 0x32

    const/4 v13, 0x6

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, ""

    const-string/jumbo v3, "activity_manager"

    const-string/jumbo v4, "prioritize_alarm_broadcasts"

    invoke-static {v3, v4, v2}, Landroid/provider/DeviceConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_58

    move v2, v8

    goto/16 :goto_11

    :cond_58
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    :goto_11
    iput-boolean v2, v1, Lcom/android/server/am/ActivityManagerConstants;->mPrioritizeAlarmBroadcasts:Z

    goto/16 :goto_10

    :pswitch_24
    move-object/from16 v11, p1

    const/4 v5, -0x1

    const/16 v12, 0x32

    const/4 v13, 0x6

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v2, "activity_manager"

    const-string/jumbo v3, "process_kill_timeout"

    invoke-static {v2, v3, v14, v15}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/am/ActivityManagerConstants;->mProcessKillTimeoutMs:J

    goto/16 :goto_10

    :pswitch_25
    move-object/from16 v11, p1

    const/4 v5, -0x1

    const/16 v12, 0x32

    const/4 v13, 0x6

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v1, "activity_manager"

    const-string/jumbo v2, "min_assoc_log_duration"

    const-wide/32 v3, 0x493e0

    invoke-static {v1, v2, v3, v4}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v1

    sput-wide v1, Lcom/android/server/am/ActivityManagerConstants;->MIN_ASSOC_LOG_DURATION:J

    goto/16 :goto_10

    :pswitch_26
    move-object/from16 v11, p1

    const/4 v5, -0x1

    const/16 v12, 0x32

    const/4 v13, 0x6

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v2, "activity_manager"

    const-string/jumbo v3, "network_access_timeout_ms"

    const-wide/16 v14, 0xc8

    invoke-static {v2, v3, v14, v15}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/am/ActivityManagerConstants;->mNetworkAccessTimeoutMs:J

    goto/16 :goto_10

    :pswitch_27
    move-object/from16 v11, p1

    const/4 v5, -0x1

    const/16 v12, 0x32

    const/4 v13, 0x6

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v2, "activity_manager"

    const-string/jumbo v6, "data_sync_fgs_timeout_duration"

    invoke-static {v2, v6, v3, v4}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/am/ActivityManagerConstants;->mDataSyncFgsTimeoutDuration:J

    goto/16 :goto_10

    :pswitch_28
    move-object/from16 v11, p1

    const/4 v5, -0x1

    const/16 v12, 0x32

    const/4 v13, 0x6

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v2, "activity_manager"

    const-string/jumbo v3, "max_empty_time_millis"

    const-wide v14, 0xd693a400L

    invoke-static {v2, v3, v14, v15}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/am/ActivityManagerConstants;->mMaxEmptyTimeMillis:J

    goto/16 :goto_10

    :pswitch_29
    move-object/from16 v11, p1

    const/4 v5, -0x1

    const/16 v12, 0x32

    const/4 v13, 0x6

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerConstants;->updateMaxCachedProcesses()V

    goto/16 :goto_10

    :pswitch_2a
    move-object/from16 v11, p1

    const/4 v5, -0x1

    const/16 v12, 0x32

    const/4 v13, 0x6

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v2, "activity_manager"

    const-string/jumbo v3, "force_bg_check_on_restricted"

    invoke-static {v2, v3, v8}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/server/am/ActivityManagerConstants;->FORCE_BACKGROUND_CHECK_ON_RESTRICTED_APPS:Z

    goto/16 :goto_10

    :pswitch_2b
    move-object/from16 v11, p1

    const/4 v5, -0x1

    const/16 v12, 0x32

    const/4 v13, 0x6

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v2, "activity_manager"

    const-string/jumbo v3, "default_background_fgs_starts_restriction_enabled"

    invoke-static {v2, v3, v8}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/server/am/ActivityManagerConstants;->mFlagBackgroundFgsStartRestrictionEnabled:Z

    goto/16 :goto_10

    :pswitch_2c
    move-object/from16 v11, p1

    const/4 v5, -0x1

    const/16 v12, 0x32

    const/4 v13, 0x6

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v2, "activity_manager"

    const-string/jumbo v3, "short_fgs_timeout_duration"

    const-wide/32 v14, 0x2bf20

    invoke-static {v2, v3, v14, v15}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/am/ActivityManagerConstants;->mShortFgsTimeoutDuration:J

    goto/16 :goto_10

    :pswitch_2d
    move-object/from16 v11, p1

    const/4 v5, -0x1

    const/16 v12, 0x32

    const/4 v13, 0x6

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    iget v2, v1, Lcom/android/server/am/ActivityManagerConstants;->MAX_PHANTOM_PROCESSES:I

    const-string/jumbo v3, "activity_manager"

    const-string/jumbo v4, "max_phantom_processes"

    const/16 v6, 0x20

    invoke-static {v3, v4, v6}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    iput v3, v1, Lcom/android/server/am/ActivityManagerConstants;->MAX_PHANTOM_PROCESSES:I

    if-le v2, v3, :cond_59

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerConstants;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mPhantomProcessList:Lcom/android/server/am/PhantomProcessList;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticLambda2;

    invoke-direct {v3, v1}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/am/PhantomProcessList;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_59
    :goto_12
    move/from16 v18, v12

    move/from16 v17, v13

    goto/16 :goto_14

    :pswitch_2e
    move-object/from16 v11, p1

    const/4 v5, -0x1

    const/16 v6, 0x20

    const/16 v12, 0x32

    const/4 v13, 0x6

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v2, "activity_manager"

    const-string/jumbo v3, "deferred_fgs_notification_interval"

    invoke-static {v2, v3, v14, v15}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/am/ActivityManagerConstants;->mFgsNotificationDeferralInterval:J

    goto :goto_12

    :pswitch_2f
    move-object/from16 v11, p1

    const/4 v5, -0x1

    const/16 v6, 0x20

    const/16 v12, 0x32

    const/4 v13, 0x6

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v1, "activity_manager"

    const-string/jumbo v2, "max_previous_time"

    const-wide/32 v3, 0xea60

    invoke-static {v1, v2, v3, v4}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v1

    sput-wide v1, Lcom/android/server/am/ActivityManagerConstants;->MAX_PREVIOUS_TIME:J

    goto :goto_12

    :pswitch_30
    move-object/from16 v11, p1

    const/4 v5, -0x1

    const/16 v6, 0x20

    const/16 v12, 0x32

    const/4 v13, 0x6

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v2, "activity_manager"

    const-string/jumbo v3, "oomadj_update_policy"

    invoke-static {v2, v3, v8}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v8, :cond_5a

    move v2, v8

    goto/16 :goto_13

    :cond_5a
    move v2, v7

    :goto_13
    iput-boolean v2, v1, Lcom/android/server/am/ActivityManagerConstants;->OOMADJ_UPDATE_QUICK:Z

    goto :goto_12

    :pswitch_31
    move-object/from16 v11, p1

    const/4 v5, -0x1

    const/16 v6, 0x20

    const/16 v17, 0x6

    const/16 v18, 0x32

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v2, "activity_manager"

    const-string/jumbo v3, "fg_to_bg_fgs_grace_duration"

    invoke-static {v2, v3, v12, v13}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/am/ActivityManagerConstants;->mFgToBgFgsGraceDuration:J

    goto/16 :goto_14

    :pswitch_32
    move-object/from16 v11, p1

    const/4 v5, -0x1

    const/16 v6, 0x20

    const/16 v17, 0x6

    const/16 v18, 0x32

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v2, "activity_manager"

    const-string/jumbo v3, "max_service_connections_per_process"

    const/16 v4, 0xbb8

    invoke-static {v2, v3, v4}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/android/server/am/ActivityManagerConstants;->mMaxServiceConnectionsPerProcess:I

    goto/16 :goto_14

    :pswitch_33
    move-object/from16 v11, p1

    const/4 v5, -0x1

    const/16 v6, 0x20

    const/16 v17, 0x6

    const/16 v18, 0x32

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v2, "activity_manager"

    const-string/jumbo v3, "deferred_fgs_notification_exclusion_time_for_short"

    const-wide/32 v12, 0x1d4c0

    invoke-static {v2, v3, v12, v13}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/am/ActivityManagerConstants;->mFgsNotificationDeferralExclusionTimeForShort:J

    goto/16 :goto_14

    :pswitch_34
    move-object/from16 v11, p1

    const/4 v5, -0x1

    const/16 v6, 0x20

    const/16 v17, 0x6

    const/16 v18, 0x32

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v2, "activity_manager"

    const-string/jumbo v3, "fgs_start_denied_log_sample_rate"

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v2, v3, v4}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v2

    iput v2, v1, Lcom/android/server/am/ActivityManagerConstants;->mFgsStartDeniedLogSampleRate:F

    goto/16 :goto_14

    :pswitch_35
    move-object/from16 v11, p1

    const/4 v5, -0x1

    const/16 v6, 0x20

    const/16 v17, 0x6

    const/16 v18, 0x32

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v2, "activity_manager"

    const-string/jumbo v3, "fgs_allow_opt_out"

    invoke-static {v2, v3, v7}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/server/am/ActivityManagerConstants;->mFgsAllowOptOut:Z

    goto/16 :goto_14

    :pswitch_36
    move-object/from16 v11, p1

    const/4 v5, -0x1

    const/16 v6, 0x20

    const/16 v17, 0x6

    const/16 v18, 0x32

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v2, "activity_manager"

    const-string/jumbo v3, "default_background_activity_starts_enabled"

    invoke-static {v2, v3, v7}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/server/am/ActivityManagerConstants;->mFlagBackgroundActivityStartsEnabled:Z

    goto/16 :goto_14

    :pswitch_37
    move-object/from16 v11, p1

    const/4 v5, -0x1

    const/16 v6, 0x20

    const/16 v17, 0x6

    const/16 v18, 0x32

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    iget-boolean v2, v1, Lcom/android/server/am/ActivityManagerConstants;->mDefaultBinderHeavyHitterWatcherEnabled:Z

    const-string/jumbo v3, "activity_manager"

    const-string/jumbo v4, "binder_heavy_hitter_watcher_enabled"

    invoke-static {v3, v4, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/server/am/ActivityManagerConstants;->BINDER_HEAVY_HITTER_WATCHER_ENABLED:Z

    const-string/jumbo v2, "binder_heavy_hitter_watcher_batchsize"

    iget v4, v1, Lcom/android/server/am/ActivityManagerConstants;->mDefaultBinderHeavyHitterWatcherBatchSize:I

    invoke-static {v3, v2, v4}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/android/server/am/ActivityManagerConstants;->BINDER_HEAVY_HITTER_WATCHER_BATCHSIZE:I

    const-string/jumbo v2, "binder_heavy_hitter_watcher_threshold"

    iget v4, v1, Lcom/android/server/am/ActivityManagerConstants;->mDefaultBinderHeavyHitterWatcherThreshold:F

    invoke-static {v3, v2, v4}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v2

    sput v2, Lcom/android/server/am/ActivityManagerConstants;->BINDER_HEAVY_HITTER_WATCHER_THRESHOLD:F

    const-string/jumbo v2, "binder_heavy_hitter_auto_sampler_enabled"

    iget-boolean v4, v1, Lcom/android/server/am/ActivityManagerConstants;->mDefaultBinderHeavyHitterAutoSamplerEnabled:Z

    invoke-static {v3, v2, v4}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/server/am/ActivityManagerConstants;->BINDER_HEAVY_HITTER_AUTO_SAMPLER_ENABLED:Z

    const-string/jumbo v2, "binder_heavy_hitter_auto_sampler_batchsize"

    iget v4, v1, Lcom/android/server/am/ActivityManagerConstants;->mDefaultBinderHeavyHitterAutoSamplerBatchSize:I

    invoke-static {v3, v2, v4}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/android/server/am/ActivityManagerConstants;->BINDER_HEAVY_HITTER_AUTO_SAMPLER_BATCHSIZE:I

    const-string/jumbo v2, "binder_heavy_hitter_auto_sampler_threshold"

    iget v4, v1, Lcom/android/server/am/ActivityManagerConstants;->mDefaultBinderHeavyHitterAutoSamplerThreshold:F

    invoke-static {v3, v2, v4}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v2

    sput v2, Lcom/android/server/am/ActivityManagerConstants;->BINDER_HEAVY_HITTER_WATCHER_THRESHOLD:F

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerConstants;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    new-instance v3, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda8;

    invoke-direct {v3, v1, v8}, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/am/ActivityManagerService;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_14

    :pswitch_38
    move-object/from16 v11, p1

    const/4 v5, -0x1

    const/16 v6, 0x20

    const/16 v17, 0x6

    const/16 v18, 0x32

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v2, "activity_manager"

    const-string/jumbo v3, "service_start_foreground_anr_delay_ms"

    const/16 v4, 0x2710

    invoke-static {v2, v3, v4}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/android/server/am/ActivityManagerConstants;->mServiceStartForegroundAnrDelayMs:I

    goto :goto_14

    :pswitch_39
    move-object/from16 v11, p1

    const/4 v5, -0x1

    const/16 v6, 0x20

    const/16 v17, 0x6

    const/16 v18, 0x32

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v2, "activity_manager"

    const-string/jumbo v3, "default_fgs_starts_restriction_enabled"

    invoke-static {v2, v3, v8}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/server/am/ActivityManagerConstants;->mFlagFgsStartRestrictionEnabled:Z

    goto/16 :goto_14

    :pswitch_3a
    move-object/from16 v11, p1

    const/4 v5, -0x1

    const/16 v6, 0x20

    const/16 v17, 0x6

    const/16 v18, 0x32

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v2, v1, Lcom/android/server/am/ActivityManagerConstants;->mKillBgRestrictedAndCachedIdleSettleTimeMs:J

    const-string/jumbo v4, "activity_manager"

    const-string/jumbo v12, "kill_bg_restricted_cached_idle_settle_time"

    const-wide/32 v13, 0xea60

    invoke-static {v4, v12, v13, v14}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v12

    iput-wide v12, v1, Lcom/android/server/am/ActivityManagerConstants;->mKillBgRestrictedAndCachedIdleSettleTimeMs:J

    iget-wide v12, v1, Lcom/android/server/am/ActivityManagerConstants;->mKillBgRestrictedAndCachedIdleSettleTimeMs:J

    cmp-long v2, v12, v2

    if-gez v2, :cond_5b

    iget-object v2, v1, Lcom/android/server/am/ActivityManagerConstants;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    iget-wide v3, v1, Lcom/android/server/am/ActivityManagerConstants;->mKillBgRestrictedAndCachedIdleSettleTimeMs:J

    const/16 v12, 0x3a

    invoke-virtual {v2, v12, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_2

    :cond_5b
    :goto_14
    const/16 v12, 0x3a

    goto/16 :goto_2

    :pswitch_3b
    move-object/from16 v11, p1

    const/4 v5, -0x1

    const/16 v6, 0x20

    const/16 v12, 0x3a

    const/16 v17, 0x6

    const/16 v18, 0x32

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v2, "activity_manager"

    const-string/jumbo v3, "short_fgs_anr_extra_wait_duration"

    invoke-static {v2, v3, v14, v15}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/am/ActivityManagerConstants;->mShortFgsAnrExtraWaitDuration:J

    goto/16 :goto_2

    :pswitch_3c
    move-object/from16 v11, p1

    const/4 v5, -0x1

    const/16 v6, 0x20

    const/16 v12, 0x3a

    const/16 v17, 0x6

    const/16 v18, 0x32

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    iget-object v3, v2, Lcom/android/server/am/ActivityManagerConstants;->IMPERCEPTIBLE_KILL_EXEMPT_PACKAGES:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->clear()V

    iget-object v3, v2, Lcom/android/server/am/ActivityManagerConstants;->IMPERCEPTIBLE_KILL_EXEMPT_PACKAGES:Landroid/util/ArraySet;

    iget-object v4, v2, Lcom/android/server/am/ActivityManagerConstants;->mDefaultImperceptibleKillExemptPackages:Ljava/util/List;

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    const-string/jumbo v3, "activity_manager"

    const-string/jumbo v4, "imperceptible_kill_exempt_packages"

    invoke-static {v3, v4, v1}, Landroid/provider/DeviceConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    const-string v14, ","

    if-nez v13, :cond_5c

    iget-object v13, v2, Lcom/android/server/am/ActivityManagerConstants;->IMPERCEPTIBLE_KILL_EXEMPT_PACKAGES:Landroid/util/ArraySet;

    invoke-virtual {v4, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v13, v4}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    :cond_5c
    iget-object v4, v2, Lcom/android/server/am/ActivityManagerConstants;->IMPERCEPTIBLE_KILL_EXEMPT_PROC_STATES:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->clear()V

    iget-object v4, v2, Lcom/android/server/am/ActivityManagerConstants;->IMPERCEPTIBLE_KILL_EXEMPT_PROC_STATES:Landroid/util/ArraySet;

    iget-object v13, v2, Lcom/android/server/am/ActivityManagerConstants;->mDefaultImperceptibleKillExemptProcStates:Ljava/util/List;

    invoke-virtual {v4, v13}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    const-string/jumbo v4, "imperceptible_kill_exempt_proc_states"

    invoke-static {v3, v4, v1}, Landroid/provider/DeviceConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v1, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v3, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticLambda3;

    invoke-direct {v3, v2}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/am/ActivityManagerConstants;)V

    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    goto/16 :goto_2

    :cond_5d
    if-eqz v10, :cond_5e

    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    if-eqz v0, :cond_5e

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerInternal;->updateOomAdj(I)V

    :cond_5e
    :goto_15
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        -0x7ba4b562 -> :sswitch_43
        -0x798468db -> :sswitch_42
        -0x76fa06f8 -> :sswitch_41
        -0x719878d5 -> :sswitch_40
        -0x71781c6f -> :sswitch_3f
        -0x6d209d2c -> :sswitch_3e
        -0x6a37b8d0 -> :sswitch_3d
        -0x62f6cce1 -> :sswitch_3c
        -0x61c0c900 -> :sswitch_3b
        -0x5f5f6d14 -> :sswitch_3a
        -0x58658d02 -> :sswitch_39
        -0x569d8d6f -> :sswitch_38
        -0x53dc231d -> :sswitch_37
        -0x4f213486 -> :sswitch_36
        -0x4db39f74 -> :sswitch_35
        -0x48c35170 -> :sswitch_34
        -0x4852209e -> :sswitch_33
        -0x476d69e0 -> :sswitch_32
        -0x47037762 -> :sswitch_31
        -0x41254a05 -> :sswitch_30
        -0x3eef3615 -> :sswitch_2f
        -0x3daa35b2 -> :sswitch_2e
        -0x397974d2 -> :sswitch_2d
        -0x3099a4da -> :sswitch_2c
        -0x2ddb96b0 -> :sswitch_2b
        -0x2b65dd00 -> :sswitch_2a
        -0x28b1facc -> :sswitch_29
        -0x226e8ce7 -> :sswitch_28
        -0x1f869333 -> :sswitch_27
        -0x1ac3af47 -> :sswitch_26
        -0x13aa2fbd -> :sswitch_25
        -0x116849e6 -> :sswitch_24
        -0xf17951c -> :sswitch_23
        -0xd5a912d -> :sswitch_22
        -0xceeb9d0 -> :sswitch_21
        -0x502f0de -> :sswitch_20
        -0x2e7b9c6 -> :sswitch_1f
        -0xa23b96 -> :sswitch_1e
        0x14ce72d -> :sswitch_1d
        0x47243c9 -> :sswitch_1c
        0x61ee68b -> :sswitch_1b
        0xa61fe73 -> :sswitch_1a
        0xca1df59 -> :sswitch_19
        0x105030a5 -> :sswitch_18
        0x257a0925 -> :sswitch_17
        0x34db0a33 -> :sswitch_16
        0x350b53bb -> :sswitch_15
        0x39ca177c -> :sswitch_14
        0x425eee10 -> :sswitch_13
        0x45611472 -> :sswitch_12
        0x477b2286 -> :sswitch_11
        0x49dfc388 -> :sswitch_10
        0x4d171cd0 -> :sswitch_f
        0x4f9e4f36 -> :sswitch_e
        0x50949369 -> :sswitch_d
        0x524459dd -> :sswitch_c
        0x5611b47e -> :sswitch_b
        0x58bdb2f7 -> :sswitch_a
        0x59f1b6c6 -> :sswitch_9
        0x59fe4888 -> :sswitch_8
        0x5e055050 -> :sswitch_7
        0x5f40529e -> :sswitch_6
        0x60f0152f -> :sswitch_5
        0x6fb61593 -> :sswitch_4
        0x710abd04 -> :sswitch_3
        0x729c862a -> :sswitch_2
        0x7805f2e7 -> :sswitch_1
        0x7bd2ee58 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_37
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_3c
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_37
        :pswitch_17
        :pswitch_37
        :pswitch_3
        :pswitch_2
        :pswitch_37
        :pswitch_17
        :pswitch_1
        :pswitch_37
    .end packed-switch
.end method
