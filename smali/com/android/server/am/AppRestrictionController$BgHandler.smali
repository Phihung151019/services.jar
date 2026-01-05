.class public final Lcom/android/server/am/AppRestrictionController$BgHandler;
.super Landroid/os/Handler;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mInjector:Lcom/android/server/am/AppRestrictionController$Injector;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/android/server/am/AppRestrictionController$Injector;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/android/server/am/AppRestrictionController$BgHandler;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v0, v0, Lcom/android/server/am/AppRestrictionController$BgHandler;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    iget-object v0, v0, Lcom/android/server/am/AppRestrictionController$Injector;->mAppRestrictionController:Lcom/android/server/am/AppRestrictionController;

    iget v2, v1, Landroid/os/Message;->what:I

    const/4 v3, 0x1

    const-wide/32 v4, 0xc8000

    const/4 v9, 0x0

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    iget-object v0, v0, Lcom/android/server/am/AppRestrictionController;->mRestrictionSettings:Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    iget v1, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->persistToXml(I)V

    return-void

    :pswitch_1
    iget-object v0, v0, Lcom/android/server/am/AppRestrictionController;->mRestrictionSettings:Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    invoke-virtual {v0, v3}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->loadFromXml(Z)V

    return-void

    :pswitch_2
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget v1, v1, Landroid/os/Message;->arg1:I

    iget-object v0, v0, Lcom/android/server/am/AppRestrictionController;->mNotificationHelper:Lcom/android/server/am/AppRestrictionController$NotificationHelper;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->cancelRequestBgRestrictedIfNecessary(ILjava/lang/String;)V

    return-void

    :pswitch_3
    iget v2, v1, Landroid/os/Message;->arg1:I

    iget v1, v1, Landroid/os/Message;->arg2:I

    iget-object v3, v0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_0
    if-ge v9, v3, :cond_1

    iget-object v4, v0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/BaseAppStateTracker;

    invoke-virtual {v4, v2, v1}, Lcom/android/server/am/BaseAppStateTracker;->onUidProcStateChanged(II)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :pswitch_4
    iget v2, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v2}, Lcom/android/server/am/AppRestrictionController;->handleUidInactive(I)V

    iget v1, v1, Landroid/os/Message;->arg1:I

    iget-object v2, v0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_1
    if-ge v9, v2, :cond_1

    iget-object v3, v0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/BaseAppStateTracker;

    invoke-virtual {v3, v1}, Lcom/android/server/am/BaseAppStateTracker;->onUidGone(I)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :pswitch_5
    iget v1, v1, Landroid/os/Message;->arg1:I

    iget-object v2, v0, Lcom/android/server/am/AppRestrictionController;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, v0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v3}, Lcom/android/server/am/AppRestrictionController$Injector;->getAppStandbyInternal()Lcom/android/server/usage/AppStandbyInternal;

    move-result-object v3

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    iget-object v5, v0, Lcom/android/server/am/AppRestrictionController;->mRestrictionSettings:Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    new-instance v6, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda3;

    invoke-direct {v6, v0, v1, v3, v4}, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/am/AppRestrictionController;ILcom/android/server/usage/AppStandbyInternal;I)V

    invoke-virtual {v5, v1, v6}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->forEachPackageInUidLocked(ILcom/android/internal/util/function/TriConsumer;)V

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :pswitch_6
    iget v1, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/android/server/am/AppRestrictionController;->handleUidInactive(I)V

    return-void

    :pswitch_7
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget v1, v1, Landroid/os/Message;->arg1:I

    iget-object v0, v0, Lcom/android/server/am/AppRestrictionController;->mNotificationHelper:Lcom/android/server/am/AppRestrictionController$NotificationHelper;

    iget-object v3, v0, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mBgController:Lcom/android/server/am/AppRestrictionController;

    iget-object v3, v3, Lcom/android/server/am/AppRestrictionController;->mConstantsObserver:Lcom/android/server/am/AppRestrictionController$ConstantsObserver;

    iget-boolean v3, v3, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mBgPromptAbusiveAppsToBgRestricted:Z

    if-nez v3, :cond_0

    goto :goto_3

    :cond_0
    new-instance v6, Landroid/content/Intent;

    const-string/jumbo v3, "android.settings.VIEW_ADVANCED_POWER_USAGE_DETAIL"

    invoke-direct {v6, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "package"

    const/4 v4, 0x0

    invoke-static {v3, v2, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v3, 0x14000000

    invoke-virtual {v6, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v4, v0, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v9

    const/4 v5, 0x0

    const/high16 v7, 0xc000000

    const/4 v8, 0x0

    invoke-static/range {v4 .. v9}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    iget-object v3, v0, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mBgController:Lcom/android/server/am/AppRestrictionController;

    invoke-virtual {v3, v1, v2}, Lcom/android/server/am/AppRestrictionController;->hasForegroundServices(ILjava/lang/String;)Z

    iget-object v3, v0, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mBgController:Lcom/android/server/am/AppRestrictionController;

    iget-object v3, v3, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    iget-object v3, v3, Lcom/android/server/am/AppRestrictionController$Injector;->mAppFGSTracker:Lcom/android/server/am/AppFGSTracker;

    iget-object v6, v3, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_1
    invoke-virtual {v3, v1, v2}, Lcom/android/server/am/AppFGSTracker;->hasForegroundServiceNotificationsLocked(ILjava/lang/String;)Z

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object v0, v0, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mBgController:Lcom/android/server/am/AppRestrictionController;

    iget-object v0, v0, Lcom/android/server/am/AppRestrictionController;->mConstantsObserver:Lcom/android/server/am/AppRestrictionController$ConstantsObserver;

    iget-boolean v0, v0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mBgPromptFgsWithNotiToBgRestricted:Z

    return-void

    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :pswitch_8
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget v1, v1, Landroid/os/Message;->arg1:I

    iget-object v3, v0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v3}, Lcom/android/server/am/AppRestrictionController$Injector;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v3

    invoke-virtual {v3, v2, v4, v5, v1}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v1

    iget-object v3, v0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_2
    if-ge v9, v3, :cond_1

    iget-object v4, v0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/BaseAppStateTracker;

    invoke-virtual {v4, v2, v1}, Lcom/android/server/am/BaseAppStateTracker;->onUserInteractionStarted(Ljava/lang/String;I)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :pswitch_9
    iget v6, v1, Landroid/os/Message;->arg2:I

    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget v3, v1, Landroid/os/Message;->arg1:I

    iget-boolean v1, v0, Lcom/android/server/am/AppRestrictionController;->mLockedBootCompleted:Z

    if-nez v1, :cond_2

    :cond_1
    :goto_3
    return-void

    :cond_2
    iget-object v1, v0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/AppRestrictionController$Injector;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v1

    invoke-virtual {v1, v2, v4, v5, v3}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v4

    move v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v0

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/AppRestrictionController;->calcAppRestrictionLevel(Ljava/lang/String;IIIZZ)Landroid/util/Pair;

    move-result-object v0

    move v3, v4

    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/AppRestrictionController$TrackerInfo;

    const/16 v7, 0x100

    const/4 v8, 0x0

    move v6, v5

    move-object v5, v0

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/AppRestrictionController;->applyRestrictionLevel(Ljava/lang/String;IILcom/android/server/am/AppRestrictionController$TrackerInfo;III)V

    return-void

    :pswitch_a
    iget v2, v1, Landroid/os/Message;->arg1:I

    iget-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget v1, v1, Landroid/os/Message;->arg2:I

    iget-object v0, v0, Lcom/android/server/am/AppRestrictionController;->mRestrictionListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    new-instance v4, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda2;

    invoke-direct {v4, v2, v3, v1}, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda2;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v4}, Ljava/util/concurrent/CopyOnWriteArraySet;->forEach(Ljava/util/function/Consumer;)V

    return-void

    :pswitch_b
    iget v4, v1, Landroid/os/Message;->arg1:I

    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget v1, v1, Landroid/os/Message;->arg2:I

    if-ne v1, v3, :cond_3

    goto :goto_4

    :cond_3
    move v3, v9

    :goto_4
    iget-object v1, v0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v5, v9

    :goto_5
    if-ge v5, v1, :cond_4

    iget-object v6, v0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/BaseAppStateTracker;

    invoke-virtual {v6, v4, v3}, Lcom/android/server/am/BaseAppStateTracker;->onBackgroundRestrictionChanged(IZ)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_4
    iget-object v1, v0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/AppRestrictionController$Injector;->getAppStandbyInternal()Lcom/android/server/usage/AppStandbyInternal;

    move-result-object v10

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v12

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    const/4 v15, 0x0

    move-object v11, v2

    invoke-interface/range {v10 .. v15}, Lcom/android/server/usage/AppStandbyInternal;->getAppStandbyBucket(Ljava/lang/String;IJZ)I

    move-result v6

    if-eqz v3, :cond_5

    iget-object v5, v0, Lcom/android/server/am/AppRestrictionController;->mEmptyTrackerInfo:Lcom/android/server/am/AppRestrictionController$TrackerInfo;

    const/4 v8, 0x2

    move v3, v4

    const/16 v4, 0x32

    const/16 v7, 0x400

    move-object v1, v0

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/AppRestrictionController;->applyRestrictionLevel(Ljava/lang/String;IILcom/android/server/am/AppRestrictionController$TrackerInfo;III)V

    iget-object v0, v1, Lcom/android/server/am/AppRestrictionController;->mBgHandler:Lcom/android/server/am/AppRestrictionController$BgHandler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1, v3, v9, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_5
    move-object v1, v0

    move v3, v4

    move v0, v6

    iget-object v4, v1, Lcom/android/server/am/AppRestrictionController;->mRestrictionSettings:Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    iget-object v5, v4, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->this$0:Lcom/android/server/am/AppRestrictionController;

    iget-object v5, v5, Lcom/android/server/am/AppRestrictionController;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_3
    iget-object v4, v4, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    invoke-virtual {v4, v3, v2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;

    if-nez v4, :cond_6

    goto :goto_6

    :cond_6
    iget v9, v4, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mLastRestrictionLevel:I

    :goto_6
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    const/4 v4, 0x5

    if-ne v0, v4, :cond_8

    :cond_7
    :goto_7
    move v5, v4

    move v4, v3

    goto :goto_8

    :cond_8
    const/16 v4, 0x28

    if-ne v9, v4, :cond_7

    const/16 v4, 0x2d

    goto :goto_7

    :goto_8
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/AppRestrictionController;->calcAppRestrictionLevel(Ljava/lang/String;IIIZZ)Landroid/util/Pair;

    move-result-object v3

    iget-object v5, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/am/AppRestrictionController$TrackerInfo;

    const/16 v7, 0x300

    const/4 v8, 0x3

    move v6, v5

    move-object v5, v3

    move v3, v4

    move v4, v6

    move v6, v0

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/AppRestrictionController;->applyRestrictionLevel(Ljava/lang/String;IILcom/android/server/am/AppRestrictionController$TrackerInfo;III)V

    return-void

    :catchall_2
    move-exception v0

    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
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
