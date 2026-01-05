.class public final Lcom/android/server/am/AppRestrictionController$ConstantsObserver;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# instance fields
.field public volatile mBgAbusiveNotificationMinIntervalMs:J

.field public volatile mBgAutoRestrictAbusiveApps:Z

.field public volatile mBgAutoRestrictedBucket:Z

.field public volatile mBgLongFgsNotificationMinIntervalMs:J

.field public volatile mBgPromptAbusiveAppsToBgRestricted:Z

.field public volatile mBgPromptFgsOnLongRunning:Z

.field public volatile mBgPromptFgsWithNotiOnLongRunning:Z

.field public volatile mBgPromptFgsWithNotiToBgRestricted:Z

.field public volatile mBgRestrictionExemptedPackages:Ljava/util/Set;

.field public final mDefaultBgPromptAbusiveAppToBgRestricted:Z

.field public final mDefaultBgPromptFgsWithNotiToBgRestricted:Z

.field public final synthetic this$0:Lcom/android/server/am/AppRestrictionController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/am/AppRestrictionController;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->this$0:Lcom/android/server/am/AppRestrictionController;

    sget-object p2, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    iput-object p2, p0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mBgRestrictionExemptedPackages:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x1110063

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mDefaultBgPromptFgsWithNotiToBgRestricted:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x1110062

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mDefaultBgPromptAbusiveAppToBgRestricted:Z

    return-void
.end method


# virtual methods
.method public final onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .locals 17

    move-object/from16 v0, p0

    const-string/jumbo v1, "bg_prompt_fgs_with_noti_to_bg_restricted"

    const-string/jumbo v2, "bg_prompt_fgs_with_noti_on_long_running"

    const-string/jumbo v3, "bg_long_fgs_notification_minimal_interval"

    const-string/jumbo v4, "bg_abusive_notification_minimal_interval"

    const-string/jumbo v5, "bg_prompt_fgs_on_long_running"

    const-string/jumbo v6, "bg_auto_restrict_abusive_apps"

    const-string/jumbo v7, "bg_prompt_abusive_apps_to_bg_restricted"

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual/range {p1 .. p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_b

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    if-eqz v11, :cond_b

    const-string/jumbo v12, "bg_"

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_1

    goto/16 :goto_4

    :cond_1
    const-wide v12, 0x9a7ec800L

    const-string/jumbo v14, "activity_manager"

    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v16

    sparse-switch v16, :sswitch_data_0

    :goto_0
    const/4 v15, -0x1

    goto/16 :goto_1

    :sswitch_0
    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_2

    goto :goto_0

    :cond_2
    const/16 v15, 0x8

    goto :goto_1

    :sswitch_1
    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_3

    goto :goto_0

    :cond_3
    const/4 v15, 0x7

    goto :goto_1

    :sswitch_2
    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_4

    goto :goto_0

    :cond_4
    const/4 v15, 0x6

    goto :goto_1

    :sswitch_3
    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_5

    goto :goto_0

    :cond_5
    const/4 v15, 0x5

    goto :goto_1

    :sswitch_4
    const-string/jumbo v15, "bg_restriction_exempted_packages"

    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_6

    goto :goto_0

    :cond_6
    const/4 v15, 0x4

    goto :goto_1

    :sswitch_5
    const-string/jumbo v15, "bg_auto_restricted_bucket_on_bg_restricted"

    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_7

    goto :goto_0

    :cond_7
    const/4 v15, 0x3

    goto :goto_1

    :sswitch_6
    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_8

    goto :goto_0

    :cond_8
    const/4 v15, 0x2

    goto :goto_1

    :sswitch_7
    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_9

    goto :goto_0

    :cond_9
    move v15, v9

    goto :goto_1

    :sswitch_8
    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_a

    goto :goto_0

    :cond_a
    move v15, v8

    :goto_1
    packed-switch v15, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    iget-boolean v12, v0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mDefaultBgPromptFgsWithNotiToBgRestricted:Z

    invoke-static {v14, v1, v12}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v12

    iput-boolean v12, v0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mBgPromptFgsWithNotiToBgRestricted:Z

    goto :goto_2

    :pswitch_1
    invoke-static {v14, v2, v8}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v12

    iput-boolean v12, v0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mBgPromptFgsWithNotiOnLongRunning:Z

    goto :goto_2

    :pswitch_2
    invoke-static {v14, v3, v12, v13}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v12

    iput-wide v12, v0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mBgLongFgsNotificationMinIntervalMs:J

    goto :goto_2

    :pswitch_3
    invoke-static {v14, v4, v12, v13}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v12

    iput-wide v12, v0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mBgAbusiveNotificationMinIntervalMs:J

    goto :goto_2

    :pswitch_4
    invoke-virtual {v0}, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->updateBgRestrictionExemptedPackages()V

    goto :goto_2

    :pswitch_5
    invoke-virtual {v0}, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->updateBgAutoRestrictedBucketChanged()V

    goto :goto_2

    :pswitch_6
    invoke-static {v14, v5, v8}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v12

    iput-boolean v12, v0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mBgPromptFgsOnLongRunning:Z

    goto :goto_2

    :pswitch_7
    invoke-static {v14, v6, v9}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v12

    iput-boolean v12, v0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mBgAutoRestrictAbusiveApps:Z

    goto :goto_2

    :pswitch_8
    iget-boolean v12, v0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mDefaultBgPromptAbusiveAppToBgRestricted:Z

    invoke-static {v14, v7, v12}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v12

    iput-boolean v12, v0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mBgPromptAbusiveAppsToBgRestricted:Z

    :goto_2
    iget-object v12, v0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->this$0:Lcom/android/server/am/AppRestrictionController;

    iget-object v13, v12, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    move v14, v8

    :goto_3
    if-ge v14, v13, :cond_0

    iget-object v15, v12, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/am/BaseAppStateTracker;

    iget-object v15, v15, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    iget-object v15, v15, Lcom/android/server/am/BaseAppStateTracker$Injector;->mAppStatePolicy:Lcom/android/server/am/BaseAppStatePolicy;

    invoke-virtual {v15, v11}, Lcom/android/server/am/BaseAppStatePolicy;->onPropertiesChanged(Ljava/lang/String;)V

    add-int/2addr v14, v9

    goto :goto_3

    :cond_b
    :goto_4
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x725c6ba9 -> :sswitch_8
        -0x4784dcbb -> :sswitch_7
        -0x22b4a832 -> :sswitch_6
        -0x1796dd64 -> :sswitch_5
        -0x965c8df -> :sswitch_4
        0x32f03e37 -> :sswitch_3
        0x352f0b01 -> :sswitch_2
        0x69968cde -> :sswitch_1
        0x75259a8f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final updateBgAutoRestrictedBucketChanged()V
    .locals 11

    iget-boolean v0, p0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mBgAutoRestrictedBucket:Z

    const-string/jumbo v1, "activity_manager"

    const-string/jumbo v2, "bg_auto_restricted_bucket_on_bg_restricted"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mBgAutoRestrictedBucket:Z

    iget-boolean v1, p0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mBgAutoRestrictedBucket:Z

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->this$0:Lcom/android/server/am/AppRestrictionController;

    iget-boolean p0, p0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mBgAutoRestrictedBucket:Z

    iget-object v1, v0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/AppRestrictionController$Injector;->getAppStandbyInternal()Lcom/android/server/usage/AppStandbyInternal;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, v0, Lcom/android/server/am/AppRestrictionController;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v5, v0, Lcom/android/server/am/AppRestrictionController;->mRestrictionSettings:Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    iget-object v6, v5, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    invoke-virtual {v6}, Landroid/util/SparseArrayMap;->numMaps()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    :goto_0
    if-ltz v6, :cond_0

    iget-object v7, v5, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    invoke-virtual {v7, v6}, Landroid/util/SparseArrayMap;->keyAt(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-object v9, v0, Lcom/android/server/am/AppRestrictionController;->mRestrictionSettings:Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    new-instance v10, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda7;

    invoke-direct {v10, v2, p0, v1, v8}, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda7;-><init>(Ljava/util/ArrayList;ZLcom/android/server/usage/AppStandbyInternal;Ljava/lang/Integer;)V

    invoke-virtual {v9, v7, v10}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->forEachPackageInUidLocked(ILcom/android/internal/util/function/TriConsumer;)V

    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    :cond_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v3, v1, :cond_1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, v0, Lcom/android/server/am/AppRestrictionController;->mRestrictionListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    new-instance v1, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda6;-><init>(Z)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->forEach(Ljava/util/function/Consumer;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_2
    return-void
.end method

.method public final updateBgRestrictionExemptedPackages()V
    .locals 5

    const-string/jumbo v0, "bg_restriction_exempted_packages"

    const/4 v1, 0x0

    const-string/jumbo v2, "activity_manager"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    iput-object v0, p0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mBgRestrictionExemptedPackages:Ljava/util/Set;

    return-void

    :cond_0
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    invoke-virtual {v1, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mBgRestrictionExemptedPackages:Ljava/util/Set;

    return-void
.end method
