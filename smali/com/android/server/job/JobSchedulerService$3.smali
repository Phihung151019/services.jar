.class public final Lcom/android/server/job/JobSchedulerService$3;
.super Landroid/content/BroadcastReceiver;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/android/server/job/JobSchedulerService$3;->$r8$classId:I

    iput-object p2, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    iget v0, p0, Lcom/android/server/job/JobSchedulerService$3;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;

    invoke-virtual {p0, p2}, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->onReceiveInternal(Landroid/content/Intent;)V

    return-void

    :pswitch_0
    const-string/jumbo v0, "android.intent.action.TIME_SET"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Ljava/lang/Object;

    check-cast p2, Lcom/android/server/job/JobSchedulerService;

    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sSystemClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    iget-object p2, p2, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    iget-wide v2, p2, Lcom/android/server/job/JobStore;->mXmlTimestamp:J

    cmp-long p2, v0, v2

    if-ltz p2, :cond_0

    const-string p2, "JobScheduler"

    const-string/jumbo v0, "RTC now valid; recalculating persisted job windows"

    invoke-static {p2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/job/JobSchedulerService;

    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    iget-object p1, p1, Lcom/android/server/job/JobStore;->mIoHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mJobTimeUpdater:Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda3;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void

    :pswitch_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v1, "JobScheduler"

    const-string/jumbo v2, "Receieved: "

    invoke-static {v2, p1, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    :goto_0
    move-object v3, v1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    :goto_1
    const-string/jumbo v1, "android.intent.extra.UID"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const-string/jumbo v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v8, 0x0

    if-eqz v1, :cond_b

    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/job/JobSchedulerService;

    iget-object v1, p1, Lcom/android/server/job/JobSchedulerService;->mPermissionCache:Landroid/util/SparseArray;

    monitor-enter v1

    :try_start_0
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/job/JobSchedulerService;

    iget-object p1, p1, Lcom/android/server/job/JobSchedulerService;->mPermissionCache:Landroid/util/SparseArray;

    invoke-virtual {p1, v4}, Landroid/util/SparseArray;->remove(I)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v3, :cond_a

    if-eq v4, v2, :cond_a

    const-string/jumbo p1, "android.intent.extra.changed_component_name_list"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1c

    array-length p2, p1

    :goto_2
    if-ge v8, p2, :cond_7

    aget-object v0, p1, v8

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-boolean p1, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz p1, :cond_3

    const-string p2, "JobScheduler"

    const-string/jumbo v0, "Package state change: "

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :try_start_1
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-interface {v0, v3, p2}, Landroid/content/pm/IPackageManager;->getApplicationEnabledSetting(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    :cond_4
    if-eqz p1, :cond_5

    const-string p1, "JobScheduler"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Removing jobs for package "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " in user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/job/JobSchedulerService;

    iget-object p1, p1, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter p1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    iget-object p2, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Ljava/lang/Object;

    move-object v2, p2

    check-cast v2, Lcom/android/server/job/JobSchedulerService;

    const-string/jumbo v7, "app disabled"

    const/4 v5, 0x1

    const/4 v6, 0x7

    invoke-static/range {v2 .. v7}, Lcom/android/server/job/JobSchedulerService;->-$$Nest$mcancelJobsForPackageAndUidLocked(Lcom/android/server/job/JobSchedulerService;Ljava/lang/String;IZILjava/lang/String;)V

    monitor-exit p1

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object p2, v0

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p2
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :catch_0
    :cond_7
    :goto_3
    sget-boolean p1, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz p1, :cond_8

    const-string p1, "JobScheduler"

    const-string/jumbo p2, "Something in "

    const-string v0, " changed. Reevaluating controller states."

    invoke-static {p2, v3, v0, p1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/job/JobSchedulerService;

    iget-object p1, p1, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_4
    iget-object p2, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Ljava/lang/Object;

    check-cast p2, Lcom/android/server/job/JobSchedulerService;

    iget-object p2, p2, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_4
    if-ltz p2, :cond_9

    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/job/JobSchedulerService;

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/controllers/StateController;

    invoke-virtual {v0, v4}, Lcom/android/server/job/controllers/StateController;->reevaluateStateLocked(I)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object p0, v0

    goto :goto_5

    :cond_9
    monitor-exit p1

    goto/16 :goto_10

    :goto_5
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0

    :cond_a
    const-string p0, "JobScheduler"

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "PACKAGE_CHANGED for "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " / uid "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_10

    :catchall_2
    move-exception v0

    move-object p0, v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p0

    :cond_b
    const-string/jumbo v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/job/JobSchedulerService;

    iget-object v1, p1, Lcom/android/server/job/JobSchedulerService;->mPermissionCache:Landroid/util/SparseArray;

    monitor-enter v1

    :try_start_6
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/job/JobSchedulerService;

    iget-object p1, p1, Lcom/android/server/job/JobSchedulerService;->mPermissionCache:Landroid/util/SparseArray;

    invoke-virtual {p1, v4}, Landroid/util/SparseArray;->remove(I)V

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    const-string/jumbo p1, "android.intent.extra.REPLACING"

    invoke-virtual {p2, p1, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_1c

    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/job/JobSchedulerService;

    iget-object p1, p1, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_7
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/job/JobSchedulerService;

    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mUidToPackageCache:Landroid/util/SparseSetArray;

    invoke-virtual {p0, v4}, Landroid/util/SparseSetArray;->remove(I)V

    monitor-exit p1

    goto/16 :goto_10

    :catchall_3
    move-exception v0

    move-object p0, v0

    monitor-exit p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw p0

    :catchall_4
    move-exception v0

    move-object p0, v0

    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    throw p0

    :cond_c
    const-string/jumbo v1, "android.intent.action.PACKAGE_FULLY_REMOVED"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/job/JobSchedulerService;

    iget-object v1, p1, Lcom/android/server/job/JobSchedulerService;->mPermissionCache:Landroid/util/SparseArray;

    monitor-enter v1

    :try_start_9
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/job/JobSchedulerService;

    iget-object p1, p1, Lcom/android/server/job/JobSchedulerService;->mPermissionCache:Landroid/util/SparseArray;

    invoke-virtual {p1, v4}, Landroid/util/SparseArray;->remove(I)V

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    if-eqz v0, :cond_d

    const-string p1, "JobScheduler"

    const-string/jumbo p2, "Removing jobs for "

    const-string v0, " (uid="

    const-string v1, ")"

    invoke-static {v4, p2, v3, v0, v1}, Lcom/android/server/AppStateTrackerImpl$MyHandler$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/job/JobSchedulerService;

    iget-object p1, p1, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_a
    iget-object p2, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Ljava/lang/Object;

    check-cast p2, Lcom/android/server/job/JobSchedulerService;

    iget-object p2, p2, Lcom/android/server/job/JobSchedulerService;->mUidToPackageCache:Landroid/util/SparseSetArray;

    invoke-virtual {p2, v4}, Landroid/util/SparseSetArray;->remove(I)V

    iget-object p2, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Ljava/lang/Object;

    move-object v2, p2

    check-cast v2, Lcom/android/server/job/JobSchedulerService;

    const-string/jumbo v7, "app uninstalled"

    const/4 v5, 0x1

    const/4 v6, 0x7

    invoke-static/range {v2 .. v7}, Lcom/android/server/job/JobSchedulerService;->-$$Nest$mcancelJobsForPackageAndUidLocked(Lcom/android/server/job/JobSchedulerService;Ljava/lang/String;IZILjava/lang/String;)V

    :goto_6
    iget-object p2, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Ljava/lang/Object;

    check-cast p2, Lcom/android/server/job/JobSchedulerService;

    iget-object p2, p2, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge v8, p2, :cond_e

    iget-object p2, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Ljava/lang/Object;

    check-cast p2, Lcom/android/server/job/JobSchedulerService;

    iget-object p2, p2, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/job/controllers/StateController;

    invoke-virtual {p2, v4, v3}, Lcom/android/server/job/controllers/StateController;->onAppRemovedLocked(ILjava/lang/String;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    :catchall_5
    move-exception v0

    move-object p0, v0

    goto :goto_7

    :cond_e
    iget-object p2, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Ljava/lang/Object;

    check-cast p2, Lcom/android/server/job/JobSchedulerService;

    iget-object p2, p2, Lcom/android/server/job/JobSchedulerService;->mDebuggableApps:Landroid/util/ArrayMap;

    invoke-virtual {p2, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/job/JobSchedulerService;

    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    invoke-virtual {p0, v4, v3}, Lcom/android/server/job/JobConcurrencyManager;->onAppRemovedLocked(ILjava/lang/String;)V

    monitor-exit p1

    goto/16 :goto_10

    :goto_7
    monitor-exit p1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    throw p0

    :catchall_6
    move-exception v0

    move-object p0, v0

    :try_start_b
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    throw p0

    :cond_f
    const-string/jumbo v1, "android.intent.action.UID_REMOVED"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    const-string/jumbo p1, "android.intent.extra.REPLACING"

    invoke-virtual {p2, p1, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_1c

    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/job/JobSchedulerService;

    iget-object p1, p1, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_c
    iget-object p2, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Ljava/lang/Object;

    check-cast p2, Lcom/android/server/job/JobSchedulerService;

    iget-object p2, p2, Lcom/android/server/job/JobSchedulerService;->mUidBiasOverride:Landroid/util/SparseIntArray;

    invoke-virtual {p2, v4}, Landroid/util/SparseIntArray;->delete(I)V

    iget-object p2, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Ljava/lang/Object;

    check-cast p2, Lcom/android/server/job/JobSchedulerService;

    iget-object p2, p2, Lcom/android/server/job/JobSchedulerService;->mUidCapabilities:Landroid/util/SparseIntArray;

    invoke-virtual {p2, v4}, Landroid/util/SparseIntArray;->delete(I)V

    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/job/JobSchedulerService;

    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mUidProcStates:Landroid/util/SparseIntArray;

    invoke-virtual {p0, v4}, Landroid/util/SparseIntArray;->delete(I)V

    monitor-exit p1

    goto/16 :goto_10

    :catchall_7
    move-exception v0

    move-object p0, v0

    monitor-exit p1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    throw p0

    :cond_10
    const-string/jumbo v1, "android.intent.action.USER_ADDED"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    const-string/jumbo p1, "android.intent.extra.user_handle"

    invoke-virtual {p2, p1, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iget-object p2, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Ljava/lang/Object;

    check-cast p2, Lcom/android/server/job/JobSchedulerService;

    iget-object v1, p2, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :goto_8
    :try_start_d
    iget-object p2, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Ljava/lang/Object;

    check-cast p2, Lcom/android/server/job/JobSchedulerService;

    iget-object p2, p2, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge v8, p2, :cond_11

    iget-object p2, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Ljava/lang/Object;

    check-cast p2, Lcom/android/server/job/JobSchedulerService;

    iget-object p2, p2, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/job/controllers/StateController;

    invoke-virtual {p2, p1}, Lcom/android/server/job/controllers/StateController;->onUserAddedLocked(I)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    :catchall_8
    move-exception v0

    move-object p0, v0

    goto :goto_9

    :cond_11
    monitor-exit v1

    goto/16 :goto_10

    :goto_9
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    throw p0

    :cond_12
    const-string/jumbo v1, "android.intent.action.USER_REMOVED"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    const-string/jumbo p1, "android.intent.extra.user_handle"

    invoke-virtual {p2, p1, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-eqz v0, :cond_13

    const-string p2, "JobScheduler"

    const-string/jumbo v0, "Removing jobs for user: "

    invoke-static {p1, v0, p2}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :cond_13
    iget-object p2, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Ljava/lang/Object;

    check-cast p2, Lcom/android/server/job/JobSchedulerService;

    iget-object p2, p2, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter p2

    :try_start_e
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/job/JobSchedulerService;

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mUidToPackageCache:Landroid/util/SparseSetArray;

    invoke-virtual {v0}, Landroid/util/SparseSetArray;->clear()V

    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/job/JobSchedulerService;

    new-instance v1, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda5;

    const/4 v2, 0x2

    invoke-direct {v1, p1, v2}, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda5;-><init>(II)V

    iget-object v2, v0, Lcom/android/server/job/JobSchedulerService;->mCancelJobDueToUserRemovalConsumer:Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda0;

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/job/JobStore;->forEachJob(Ljava/util/function/Predicate;Ljava/util/function/Consumer;)V

    :goto_a
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/job/JobSchedulerService;

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v8, v0, :cond_14

    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/job/JobSchedulerService;

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/controllers/StateController;

    invoke-virtual {v0, p1}, Lcom/android/server/job/controllers/StateController;->onUserRemovedLocked(I)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_a

    :catchall_9
    move-exception v0

    move-object p0, v0

    goto :goto_e

    :cond_14
    monitor-exit p2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_9

    iget-object p2, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Ljava/lang/Object;

    check-cast p2, Lcom/android/server/job/JobSchedulerService;

    iget-object p2, p2, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    invoke-virtual {p2, p1}, Lcom/android/server/job/JobConcurrencyManager;->onUserRemoved(I)V

    iget-object p2, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Ljava/lang/Object;

    check-cast p2, Lcom/android/server/job/JobSchedulerService;

    iget-object v1, p2, Lcom/android/server/job/JobSchedulerService;->mPermissionCache:Landroid/util/SparseArray;

    monitor-enter v1

    :try_start_f
    iget-object p2, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Ljava/lang/Object;

    check-cast p2, Lcom/android/server/job/JobSchedulerService;

    iget-object p2, p2, Lcom/android/server/job/JobSchedulerService;->mPermissionCache:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_b
    if-ltz p2, :cond_16

    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/job/JobSchedulerService;

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mPermissionCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    if-ne p1, v0, :cond_15

    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/job/JobSchedulerService;

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mPermissionCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->removeAt(I)V

    goto :goto_c

    :catchall_a
    move-exception v0

    move-object p0, v0

    goto :goto_d

    :cond_15
    :goto_c
    add-int/lit8 p2, p2, -0x1

    goto :goto_b

    :cond_16
    monitor-exit v1

    goto/16 :goto_10

    :goto_d
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_a

    throw p0

    :goto_e
    :try_start_10
    monitor-exit p2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_9

    throw p0

    :cond_17
    const-string/jumbo p2, "android.intent.action.QUERY_PACKAGE_RESTART"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1a

    if-eq v4, v2, :cond_1c

    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/job/JobSchedulerService;

    iget-object p1, p1, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_11
    iget-object p2, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Ljava/lang/Object;

    check-cast p2, Lcom/android/server/job/JobSchedulerService;

    iget-object p2, p2, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {p2, v4}, Lcom/android/server/job/JobStore;->getJobsByUid(I)Landroid/util/ArraySet;

    move-result-object p2

    monitor-exit p1
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_b

    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_f
    if-ltz p1, :cond_1c

    invoke-virtual {p2, p1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/controllers/JobStatus;

    iget-object v0, v0, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    sget-boolean p1, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz p1, :cond_18

    const-string p1, "JobScheduler"

    const-string/jumbo p2, "Restart query: package "

    const-string v0, " at uid "

    const-string v1, " has jobs"

    invoke-static {v4, p2, v3, v0, v1}, Lcom/android/server/AppStateTrackerImpl$MyHandler$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    invoke-virtual {p0, v2}, Landroid/content/BroadcastReceiver;->setResultCode(I)V

    goto :goto_10

    :cond_19
    add-int/lit8 p1, p1, -0x1

    goto :goto_f

    :catchall_b
    move-exception v0

    move-object p0, v0

    :try_start_12
    monitor-exit p1
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_b

    throw p0

    :cond_1a
    const-string/jumbo p2, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1c

    if-eq v4, v2, :cond_1c

    if-eqz v0, :cond_1b

    const-string p1, "JobScheduler"

    const-string/jumbo p2, "Removing jobs for pkg "

    const-string v0, " at uid "

    invoke-static {v4, p2, v3, v0, p1}, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1b
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/job/JobSchedulerService;

    iget-object p1, p1, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_13
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Ljava/lang/Object;

    move-object v2, p0

    check-cast v2, Lcom/android/server/job/JobSchedulerService;

    const-string/jumbo v7, "app force stopped"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v2 .. v7}, Lcom/android/server/job/JobSchedulerService;->-$$Nest$mcancelJobsForPackageAndUidLocked(Lcom/android/server/job/JobSchedulerService;Ljava/lang/String;IZILjava/lang/String;)V

    monitor-exit p1

    goto :goto_10

    :catchall_c
    move-exception v0

    move-object p0, v0

    monitor-exit p1
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_c

    throw p0

    :cond_1c
    :goto_10
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
