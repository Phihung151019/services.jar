.class public final Lcom/android/server/alarm/AlarmManagerService$UninstallReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/alarm/AlarmManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/alarm/AlarmManagerService;I)V
    .locals 2

    iput p2, p0, Lcom/android/server/alarm/AlarmManagerService$UninstallReceiver;->$r8$classId:I

    packed-switch p2, :pswitch_data_0

    iput-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance p2, Landroid/content/IntentFilter;

    invoke-direct {p2}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "android.intent.action.QUERY_PACKAGE_RESTART"

    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "package"

    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p2, v1, v1}, Landroid/content/Context;->registerReceiverForAllUsers(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance p2, Landroid/content/IntentFilter;

    invoke-direct {p2}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v0, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "android.intent.action.USER_STOPPED"

    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-boolean v0, p1, Lcom/android/server/alarm/AlarmManagerService;->mStartUserBeforeScheduledAlarms:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "android.intent.action.USER_REMOVED"

    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_0
    const-string/jumbo v0, "android.intent.action.UID_REMOVED"

    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p0, p2, v1, v1}, Landroid/content/Context;->registerReceiverForAllUsers(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void

    :pswitch_0
    iput-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance p2, Landroid/content/IntentFilter;

    invoke-direct {p2}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/16 v0, 0x3e8

    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->setPriority(I)V

    invoke-virtual {p1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    iget p1, p0, Lcom/android/server/alarm/AlarmManagerService$UninstallReceiver;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object p1, p1, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    const-string/jumbo v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/android/server/alarm/AlarmManagerService;->interactiveStateChangedLocked(Z)V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :pswitch_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    goto/16 :goto_9

    :cond_0
    const-string/jumbo v0, "android.intent.extra.UID"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string/jumbo v3, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x4

    goto :goto_1

    :catchall_1
    move-exception p0

    goto/16 :goto_a

    :sswitch_1
    const-string/jumbo v3, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x6

    goto :goto_1

    :sswitch_2
    const-string/jumbo v3, "android.intent.action.USER_STOPPED"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    move p1, v4

    goto :goto_1

    :sswitch_3
    const-string/jumbo v3, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x7

    goto :goto_1

    :sswitch_4
    const-string/jumbo v3, "android.intent.action.QUERY_PACKAGE_RESTART"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    move p1, v5

    goto :goto_1

    :sswitch_5
    const-string/jumbo v3, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x5

    goto :goto_1

    :sswitch_6
    const-string/jumbo v3, "android.intent.action.UID_REMOVED"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x3

    goto :goto_1

    :sswitch_7
    const-string/jumbo v3, "android.intent.action.USER_REMOVED"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x2

    goto :goto_1

    :cond_1
    :goto_0
    move p1, v1

    :goto_1
    const/16 v3, 0xb

    packed-switch p1, :pswitch_data_1

    goto :goto_2

    :pswitch_1
    const-string/jumbo p1, "android.intent.extra.REPLACING"

    invoke-virtual {p2, p1, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_2

    monitor-exit v2

    goto/16 :goto_9

    :cond_2
    iget-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object p1, p1, Lcom/android/server/alarm/AlarmManagerService;->mHandler:Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;

    invoke-virtual {p1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :pswitch_2
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_3
    :goto_2
    const/4 p1, 0x0

    goto :goto_3

    :pswitch_3
    const-string/jumbo p1, "android.intent.extra.changed_package_list"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    :goto_3
    if-eqz p1, :cond_9

    array-length p2, p1

    if-lez p2, :cond_9

    array-length p2, p1

    move v1, v5

    :goto_4
    if-ge v1, p2, :cond_9

    aget-object v3, p1, v1

    if-ltz v0, :cond_5

    iget-object v6, p0, Lcom/android/server/alarm/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v6, v6, Lcom/android/server/alarm/AlarmManagerService;->mAppWakeupHistory:Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v7, v3}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    move-result-object v7

    iget-object v6, v6, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;->mPackageHistory:Landroid/util/ArrayMap;

    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/server/alarm/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v6, v6, Lcom/android/server/alarm/AlarmManagerService;->mAllowWhileIdleHistory:Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v7, v3}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    move-result-object v7

    iget-object v6, v6, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;->mPackageHistory:Landroid/util/ArrayMap;

    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/server/alarm/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v6, v6, Lcom/android/server/alarm/AlarmManagerService;->mAllowWhileIdleCompatHistory:Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v7, v3}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    move-result-object v7

    iget-object v6, v6, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;->mPackageHistory:Landroid/util/ArrayMap;

    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/server/alarm/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v6, v6, Lcom/android/server/alarm/AlarmManagerService;->mTemporaryQuotaReserve:Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve;

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v7, v3}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    move-result-object v7

    iget-object v6, v6, Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve;->mQuotaBuffer:Landroid/util/ArrayMap;

    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/server/alarm/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    const/16 v7, 0x3e8

    if-ne v0, v7, :cond_4

    goto :goto_5

    :cond_4
    new-instance v7, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda9;

    const/4 v8, 0x0

    invoke-direct {v7, v0, v8}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda9;-><init>(II)V

    invoke-virtual {v6, v5, v7}, Lcom/android/server/alarm/AlarmManagerService;->removeAlarmsInternalLocked(ILjava/util/function/Predicate;)V

    goto :goto_5

    :cond_5
    iget-object v6, p0, Lcom/android/server/alarm/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    if-nez v3, :cond_6

    goto :goto_5

    :cond_6
    new-instance v7, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda6;

    const/4 v8, 0x2

    invoke-direct {v7, v8, v3}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda6;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v6, v5, v7}, Lcom/android/server/alarm/AlarmManagerService;->removeAlarmsInternalLocked(ILjava/util/function/Predicate;)V

    :goto_5
    iget-object v6, p0, Lcom/android/server/alarm/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v6, v6, Lcom/android/server/alarm/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    sub-int/2addr v6, v4

    :goto_6
    if-ltz v6, :cond_8

    iget-object v7, p0, Lcom/android/server/alarm/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v7, v7, Lcom/android/server/alarm/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/ArrayMap;

    invoke-virtual {v7, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_7

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v7

    if-gtz v7, :cond_7

    iget-object v7, p0, Lcom/android/server/alarm/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v7, v7, Lcom/android/server/alarm/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->removeAt(I)V

    :cond_7
    add-int/lit8 v6, v6, -0x1

    goto :goto_6

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_4

    :cond_9
    monitor-exit v2

    goto/16 :goto_9

    :pswitch_4
    iget-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object p1, p1, Lcom/android/server/alarm/AlarmManagerService;->mHandler:Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;

    invoke-virtual {p1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const-string/jumbo p1, "android.intent.extra.REPLACING"

    invoke-virtual {p2, p1, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mHandler:Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;

    const/16 p2, 0xd

    invoke-virtual {p0, p2, v0, v1, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_a
    monitor-exit v2

    goto/16 :goto_9

    :pswitch_5
    iget-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object p1, p1, Lcom/android/server/alarm/AlarmManagerService;->mLastPriorityAlarmDispatch:Landroid/util/SparseLongArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseLongArray;->delete(I)V

    iget-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object p1, p1, Lcom/android/server/alarm/AlarmManagerService;->mRemovalHistory:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->delete(I)V

    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mLastOpScheduleExactAlarm:Landroid/util/SparseIntArray;

    invoke-virtual {p0, v0}, Landroid/util/SparseIntArray;->delete(I)V

    monitor-exit v2

    goto/16 :goto_9

    :pswitch_6
    const-string/jumbo p1, "android.intent.extra.user_handle"

    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-ltz p1, :cond_b

    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-boolean p2, p0, Lcom/android/server/alarm/AlarmManagerService;->mStartUserBeforeScheduledAlarms:Z

    if-eqz p2, :cond_b

    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mUserWakeupStore:Lcom/android/server/alarm/UserWakeupStore;

    invoke-virtual {p0, p1}, Lcom/android/server/alarm/UserWakeupStore;->deleteWakeupFromUserStarts(I)Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/android/server/alarm/UserWakeupStore;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance p2, Lcom/android/server/alarm/UserWakeupStore$$ExternalSyntheticLambda1;

    const/4 v0, 0x1

    invoke-direct {p2, p0, v0}, Lcom/android/server/alarm/UserWakeupStore$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/alarm/UserWakeupStore;I)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_b
    monitor-exit v2

    goto :goto_9

    :pswitch_7
    const-string/jumbo p1, "android.intent.extra.user_handle"

    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-ltz p1, :cond_d

    iget-object p2, p0, Lcom/android/server/alarm/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {p2, p1}, Lcom/android/server/alarm/AlarmManagerService;->removeUserLocked(I)V

    iget-object p2, p0, Lcom/android/server/alarm/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object p2, p2, Lcom/android/server/alarm/AlarmManagerService;->mAppWakeupHistory:Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

    invoke-virtual {p2, p1}, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;->removeForUser(I)V

    iget-object p2, p0, Lcom/android/server/alarm/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object p2, p2, Lcom/android/server/alarm/AlarmManagerService;->mAllowWhileIdleHistory:Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

    invoke-virtual {p2, p1}, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;->removeForUser(I)V

    iget-object p2, p0, Lcom/android/server/alarm/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object p2, p2, Lcom/android/server/alarm/AlarmManagerService;->mAllowWhileIdleCompatHistory:Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

    invoke-virtual {p2, p1}, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;->removeForUser(I)V

    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mTemporaryQuotaReserve:Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve;

    iget-object p2, p0, Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve;->mQuotaBuffer:Landroid/util/ArrayMap;

    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result p2

    sub-int/2addr p2, v4

    :goto_7
    if-ltz p2, :cond_d

    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve;->mQuotaBuffer:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserPackage;

    iget v0, v0, Landroid/content/pm/UserPackage;->userId:I

    if-ne v0, p1, :cond_c

    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve;->mQuotaBuffer:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    :cond_c
    add-int/lit8 p2, p2, -0x1

    goto :goto_7

    :cond_d
    monitor-exit v2

    goto :goto_9

    :pswitch_8
    const-string/jumbo p1, "android.intent.extra.PACKAGES"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length p2, p1

    :goto_8
    if-ge v5, p2, :cond_f

    aget-object v3, p1, v5

    iget-object v4, p0, Lcom/android/server/alarm/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {v4, v0, v3}, Lcom/android/server/alarm/AlarmManagerService;->lookForPackageLocked(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-virtual {p0, v1}, Landroid/content/BroadcastReceiver;->setResultCode(I)V

    monitor-exit v2

    goto :goto_9

    :cond_e
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    :cond_f
    monitor-exit v2

    :goto_9
    return-void

    :goto_a
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        -0x7ad942ef -> :sswitch_7
        -0x6849e2b4 -> :sswitch_6
        -0x53ae571d -> :sswitch_5
        -0x3ff1ba66 -> :sswitch_4
        -0x2d2ad030 -> :sswitch_3
        -0x2c3dc982 -> :sswitch_2
        0x1f50b9c2 -> :sswitch_1
        0x5c1076e2 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
