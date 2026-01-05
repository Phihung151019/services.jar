.class public final Lcom/android/server/am/MARsTrigger$2;
.super Landroid/content/BroadcastReceiver;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/am/MARsTrigger;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/MARsTrigger;I)V
    .locals 0

    iput p2, p0, Lcom/android/server/am/MARsTrigger$2;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/am/MARsTrigger$2;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private final onReceive$com$android$server$am$MARsTrigger$3(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    sget-boolean p1, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    sget-object p1, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {p1, v0}, Lcom/android/server/am/MARsPolicyManager;->setScreenOnState(Z)V

    sget-boolean p2, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    sget-object p2, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    iget-boolean p2, p2, Lcom/android/server/am/FreecessController;->mIsDumpstateWorking:Z

    if-nez p2, :cond_4

    monitor-enter p1

    :try_start_0
    iget-boolean p2, p1, Lcom/android/server/am/MARsPolicyManager;->mCarModeOn:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    if-nez p2, :cond_4

    sget-boolean p1, Lcom/android/server/am/MARsPolicyManager;->isChinaModel:Z

    if-eqz p1, :cond_1

    sget-object p0, Lcom/android/server/am/MARsHandler$MARsHandlerHolder;->INSTANCE:Lcom/android/server/am/MARsHandler;

    invoke-virtual {p0}, Lcom/android/server/am/MARsHandler;->sendFirstTriggerMsgToMainHandler()V

    return-void

    :cond_1
    iget-object p0, p0, Lcom/android/server/am/MARsTrigger$2;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lcom/android/server/am/MARsTrigger;->mMARsFirstTriggerPolicyAlarmIntent:Landroid/app/PendingIntent;

    if-nez p1, :cond_2

    new-instance p1, Landroid/content/Intent;

    const-string p2, "FIRST_ALARM_TRIGGER_ACTION"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo p2, "android"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const/high16 p2, 0x40000000    # 2.0f

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/am/MARsTrigger;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/am/MARsTrigger;->user:Landroid/os/UserHandle;

    const/high16 v2, 0x4000000

    invoke-static {p2, v0, p1, v2, v1}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/am/MARsTrigger;->mMARsFirstTriggerPolicyAlarmIntent:Landroid/app/PendingIntent;

    :cond_2
    iget-object p1, p0, Lcom/android/server/am/MARsTrigger;->mAlarm:Landroid/app/AlarmManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x1388

    add-long/2addr v0, v2

    iget-object p0, p0, Lcom/android/server/am/MARsTrigger;->mMARsFirstTriggerPolicyAlarmIntent:Landroid/app/PendingIntent;

    const/4 p2, 0x1

    invoke-virtual {p1, p2, v0, v1, p0}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_3
    sget-object p0, Landroid/app/UiModeManager;->ACTION_EXIT_CAR_MODE:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    sget-boolean p0, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    sget-object p0, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    monitor-enter p0

    :try_start_2
    iput-boolean v0, p0, Lcom/android/server/am/MARsPolicyManager;->mCarModeOn:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    const/4 v0, 0x2

    const/16 v1, 0x9

    const/4 v2, 0x0

    const/4 v3, 0x6

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget v6, p0, Lcom/android/server/am/MARsTrigger$2;->$r8$classId:I

    packed-switch v6, :pswitch_data_0

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "android.intent.action.TIME_SET"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/am/MARsTrigger$2;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-wide v6, v2, Lcom/android/server/am/MARsTrigger;->mLastTimeChangeClockTime:J

    iget-wide v8, v2, Lcom/android/server/am/MARsTrigger;->mLastTimeChangeRealtime:J

    sub-long v8, v0, v8

    add-long/2addr v8, v6

    sub-long v6, p1, v8

    sget-object v2, Lcom/android/server/am/MARsHandler$MARsHandlerHolder;->INSTANCE:Lcom/android/server/am/MARsHandler;

    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v9, "changedTime"

    invoke-virtual {v8, v9, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object v9, v2, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    invoke-virtual {v9, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v2, v2, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object p0, p0, Lcom/android/server/am/MARsTrigger$2;->this$0:Lcom/android/server/am/MARsTrigger;

    iput-wide p1, p0, Lcom/android/server/am/MARsTrigger;->mLastTimeChangeClockTime:J

    iput-wide v0, p0, Lcom/android/server/am/MARsTrigger;->mLastTimeChangeRealtime:J

    sget-boolean p0, Lcom/android/server/am/mars/EventRecorder;->mFeatureEnable:Z

    sget-object p0, Lcom/android/server/am/mars/EventRecorder$EventRecorderHolder;->INSTANCE:Lcom/android/server/am/mars/EventRecorder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo p1, "file delete result : "

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x7530

    cmp-long p2, v0, v2

    const-string v0, "EventRecorder"

    if-gez p2, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p1, "changed time is "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ". ignore."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string/jumbo p2, "disable EventRecorder"

    invoke-static {v0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/android/server/am/mars/EventRecorder;->performWrite(J)V

    sput-boolean v5, Lcom/android/server/am/mars/EventRecorder;->mFeatureEnable:Z

    iget-object p0, p0, Lcom/android/server/am/mars/EventRecorder;->mContext:Landroid/content/Context;

    const-string/jumbo p2, "jobscheduler"

    invoke-virtual {p0, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/job/JobScheduler;

    if-eqz p0, :cond_2

    const-string/jumbo p2, "MARsEventRecorderNamespace"

    invoke-virtual {p0, p2}, Landroid/app/job/JobScheduler;->forNamespace(Ljava/lang/String;)Landroid/app/job/JobScheduler;

    move-result-object p0

    invoke-virtual {p0, v4}, Landroid/app/job/JobScheduler;->cancel(I)V

    :cond_2
    sget-object p0, Lcom/android/server/am/mars/EventRecorder;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    new-instance p2, Ljava/io/File;

    const-string v1, "/data/log/mars/stats.txt"

    invoke-direct {p2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception p0

    sget-object p1, Lcom/android/server/am/mars/EventRecorder;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p0

    :cond_3
    :goto_0
    return-void

    :pswitch_0
    if-eqz p2, :cond_d

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_4

    goto/16 :goto_3

    :cond_4
    const-string/jumbo p1, "package"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    const-string/jumbo v0, "com.samsung.android.game.gos"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto/16 :goto_3

    :cond_5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "com.android.server.am.MARS_TRIGGER_GAME_MODE_POLICY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sget-object v3, Lcom/android/server/am/MARsHandler$MARsHandlerHolder;->INSTANCE:Lcom/android/server/am/MARsHandler;

    if-eqz v0, :cond_9

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    if-eqz p2, :cond_d

    const-string/jumbo v0, "survive_app"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const-string/jumbo v2, "lru_num"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    sget-object v2, Lcom/android/server/am/mars/filter/filter/LatestProtectedPackageFilter$LatestProtectedPackageFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/LatestProtectedPackageFilter;

    iput p2, v2, Lcom/android/server/am/mars/filter/filter/LatestProtectedPackageFilter;->mProtectedAppSizeForGame:I

    sget-boolean p2, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    sget-object p2, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    iget-boolean v2, p2, Lcom/android/server/am/FreecessController;->mIsFreecessEnable:Z

    if-eqz v2, :cond_8

    sget-boolean v2, Lcom/android/server/am/FreecessController;->IS_SUPPORT_CALM_MODE:Z

    if-nez v2, :cond_6

    goto :goto_1

    :cond_6
    sget-object p0, Lcom/android/server/am/FreecessHandler$FreecessHandlerHolder;->INSTANCE:Lcom/android/server/am/FreecessHandler;

    iget-object p1, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    if-nez p1, :cond_7

    goto/16 :goto_3

    :cond_7
    const/16 p2, 0xe

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "list"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    invoke-virtual {v0, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object p0, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_3

    :cond_8
    :goto_1
    iget-object v2, p0, Lcom/android/server/am/MARsTrigger$2;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-static {v2, p1}, Lcom/android/server/am/MARsTrigger;->-$$Nest$mactionToString(Lcom/android/server/am/MARsTrigger;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/am/MARsTrigger$2;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object p0, p0, Lcom/android/server/am/MARsTrigger;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result p0

    invoke-virtual {v3, v1, p0, p1, v0}, Lcom/android/server/am/MARsHandler;->sendRunPolicySpecificPkgMsgToMainHandler(IILjava/lang/String;Ljava/util/ArrayList;)V

    iget-boolean p0, p2, Lcom/android/server/am/FreecessController;->mGameModeEnabled:Z

    if-nez p0, :cond_d

    iput-boolean v4, p2, Lcom/android/server/am/FreecessController;->mGameModeEnabled:Z

    goto :goto_3

    :cond_9
    const-string/jumbo p0, "com.android.server.am.MARS_CANCEL_GAME_MODE_POLICY"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_d

    sget-boolean p0, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    sget-object p0, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    iget-boolean p1, p0, Lcom/android/server/am/FreecessController;->mCalmModeEnabled:Z

    if-nez p1, :cond_a

    sget-boolean p1, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    sget-object p1, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result p1

    if-nez p1, :cond_c

    const/4 p1, -0x1

    invoke-virtual {v3, v1, p1, v2}, Lcom/android/server/am/MARsHandler;->sendCancelPolicyMsgToMainHandler(IILjava/util/ArrayList;)V

    iget-boolean p1, p0, Lcom/android/server/am/FreecessController;->mGameModeEnabled:Z

    if-eqz p1, :cond_c

    iput-boolean v5, p0, Lcom/android/server/am/FreecessController;->mGameModeEnabled:Z

    goto :goto_2

    :cond_a
    sget-object p0, Lcom/android/server/am/FreecessHandler$FreecessHandlerHolder;->INSTANCE:Lcom/android/server/am/FreecessHandler;

    iget-object p1, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    if-nez p1, :cond_b

    goto :goto_2

    :cond_b
    const/16 p2, 0x10

    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    invoke-virtual {v0, p2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_c
    :goto_2
    const-string/jumbo p0, "MARsTrigger"

    const-string/jumbo p1, "broadcast received action : MARS_CANCEL_GAME_MODE_POLICY"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    :goto_3
    return-void

    :pswitch_1
    if-eqz p2, :cond_11

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_e

    goto :goto_4

    :cond_e
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "com.android.server.am.MARS_TRIGGER_SBIKE_MODE_POLICY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string/jumbo v1, "PACKAGE_NAME"

    sget-object v4, Lcom/android/server/am/MARsHandler$MARsHandlerHolder;->INSTANCE:Lcom/android/server/am/MARsHandler;

    if-eqz v0, :cond_f

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    if-eqz p2, :cond_11

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p2

    if-eqz p2, :cond_11

    iget-object v0, p0, Lcom/android/server/am/MARsTrigger$2;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-static {v0, p1}, Lcom/android/server/am/MARsTrigger;->-$$Nest$mactionToString(Lcom/android/server/am/MARsTrigger;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/am/MARsTrigger$2;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object p0, p0, Lcom/android/server/am/MARsTrigger;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result p0

    invoke-virtual {v4, v3, p0, p1, p2}, Lcom/android/server/am/MARsHandler;->sendRunPolicySpecificPkgMsgToMainHandler(IILjava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_4

    :cond_f
    const-string/jumbo v0, "com.android.server.am.MARS_CANCEL_SBIKE_MODE_POLICY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_10

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_11

    iget-object p0, p0, Lcom/android/server/am/MARsTrigger$2;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object p0, p0, Lcom/android/server/am/MARsTrigger;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result p0

    invoke-virtual {v4, v3, p0, p1}, Lcom/android/server/am/MARsHandler;->sendCancelPolicyMsgToMainHandler(IILjava/util/ArrayList;)V

    goto :goto_4

    :cond_10
    iget-object p0, p0, Lcom/android/server/am/MARsTrigger$2;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object p0, p0, Lcom/android/server/am/MARsTrigger;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result p0

    invoke-virtual {v4, v3, p0, v2}, Lcom/android/server/am/MARsHandler;->sendCancelPolicyMsgToMainHandler(IILjava/util/ArrayList;)V

    :cond_11
    :goto_4
    return-void

    :pswitch_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_12

    goto/16 :goto_6

    :cond_12
    const-string v6, "FIRST_ALARM_TRIGGER_ACTION"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    sget-object v7, Lcom/android/server/am/MARsHandler$MARsHandlerHolder;->INSTANCE:Lcom/android/server/am/MARsHandler;

    if-eqz v6, :cond_13

    const-string/jumbo v6, "mPolicyIntentReceiver broadcast received action : "

    invoke-virtual {v6, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v8, "MARsTrigger"

    invoke-static {v8, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v6, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    sget-object v6, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v6}, Lcom/android/server/am/MARsPolicyManager;->getScreenOnState()Z

    move-result v6

    if-nez v6, :cond_13

    sget-boolean v6, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    sget-object v6, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    iget-boolean v6, v6, Lcom/android/server/am/FreecessController;->mIsDumpstateWorking:Z

    if-nez v6, :cond_13

    invoke-virtual {v7}, Lcom/android/server/am/MARsHandler;->sendFirstTriggerMsgToMainHandler()V

    invoke-virtual {v7}, Lcom/android/server/am/MARsHandler;->sendRepeatTriggerMsgToMainHandler()V

    :cond_13
    const-string/jumbo v6, "com.samsung.android.server.am.ACTION_UI_TRIGGER_POLICY"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_19

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_19

    const-string/jumbo p2, "POLICY_NAME"

    const-string v6, ""

    invoke-virtual {p1, p2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object v6, p0, Lcom/android/server/am/MARsTrigger$2;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v6, "applocker"

    invoke-virtual {v6, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_14

    move v0, v4

    goto :goto_5

    :cond_14
    const-string/jumbo v4, "autorun"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_15

    goto :goto_5

    :cond_15
    const-string/jumbo v0, "freecess"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x4

    goto :goto_5

    :cond_16
    const-string/jumbo v0, "sbikepolicy"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    move v0, v3

    goto :goto_5

    :cond_17
    const-string/jumbo v0, "gamepolicy"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_18

    move v0, v1

    goto :goto_5

    :cond_18
    move v0, v5

    :goto_5
    const-string/jumbo p2, "PACKAGE_NAME"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz v0, :cond_19

    if-eqz p1, :cond_19

    iget-object p0, p0, Lcom/android/server/am/MARsTrigger$2;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object p0, p0, Lcom/android/server/am/MARsTrigger;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result p0

    invoke-virtual {v7, v0, p0, v2, p1}, Lcom/android/server/am/MARsHandler;->sendRunPolicySpecificPkgMsgToMainHandler(IILjava/lang/String;Ljava/util/ArrayList;)V

    :cond_19
    :goto_6
    return-void

    :pswitch_3
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/MARsTrigger$2;->onReceive$com$android$server$am$MARsTrigger$3(Landroid/content/Context;Landroid/content/Intent;)V

    return-void

    :pswitch_4
    if-eqz p2, :cond_1e

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1a

    goto/16 :goto_b

    :cond_1a
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "com.samsung.intent.action.LAZY_BOOT_COMPLETE"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1d

    const-string/jumbo p2, "com.samsung.android.scpm.policy.CLEAR_DATA"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1b

    goto :goto_9

    :cond_1b
    new-instance p0, Lcom/android/server/am/MARsTrigger$14$$ExternalSyntheticLambda0;

    invoke-direct {p0, p1}, Lcom/android/server/am/MARsTrigger$14$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    const-class p1, Lcom/android/server/am/mars/database/scpm/ScpmExecutor;

    monitor-enter p1

    :try_start_1
    sget-object p2, Lcom/android/server/am/mars/database/scpm/ScpmExecutor;->sExecutor:Landroid/os/HandlerExecutor;

    if-nez p2, :cond_1c

    new-instance p2, Landroid/os/HandlerThread;

    const-string/jumbo v0, "ScpmExecutor"

    invoke-direct {p2, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/HandlerExecutor;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object p2

    invoke-direct {v0, p2}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    sput-object v0, Lcom/android/server/am/mars/database/scpm/ScpmExecutor;->sExecutor:Landroid/os/HandlerExecutor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_7

    :catchall_1
    move-exception p0

    goto :goto_8

    :cond_1c
    :goto_7
    monitor-exit p1

    invoke-static {}, Landroid/os/Debug;->getCaller()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/android/server/am/mars/database/scpm/ScpmExecutor;->sExecutor:Landroid/os/HandlerExecutor;

    new-instance v0, Lcom/android/server/am/mars/database/scpm/ScpmExecutor$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/server/am/mars/database/scpm/ScpmExecutor$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/MARsTrigger$14$$ExternalSyntheticLambda0;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/os/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_b

    :goto_8
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    :cond_1d
    :goto_9
    sget-object p1, Lcom/android/server/am/mars/database/scpm/ScpmHelper;->VERSION:Ljava/lang/String;

    const-class p1, Lcom/android/server/am/mars/database/scpm/ScpmHelper;

    monitor-enter p1

    :try_start_3
    sget-object p2, Lcom/android/server/am/mars/database/scpm/ScpmHelper$ScpmHelperHolder;->INSTANCE:Lcom/android/server/am/mars/database/scpm/ScpmHelper;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    monitor-exit p1

    iget-object p0, p0, Lcom/android/server/am/MARsTrigger$2;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object p0, p0, Lcom/android/server/am/MARsTrigger;->mContext:Landroid/content/Context;

    iput-object p0, p2, Lcom/android/server/am/mars/database/scpm/ScpmHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p2, Lcom/android/server/am/mars/database/scpm/ScpmHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object p1, Lcom/android/server/am/mars/database/scpm/archive/ScpmPolicyForArchive$ScpmPolicyForArchiveHolder;->INSTANCE:Lcom/android/server/am/mars/database/scpm/archive/ScpmPolicyForArchive;

    iput-object p0, p1, Lcom/android/server/am/mars/database/scpm/archive/ScpmPolicyForArchive;->mContext:Landroid/content/Context;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p0

    new-instance p1, Lcom/android/server/am/mars/database/scpm/ScpmHelper$$ExternalSyntheticLambda0;

    invoke-direct {p1, p2, p0}, Lcom/android/server/am/mars/database/scpm/ScpmHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/mars/database/scpm/ScpmHelper;Ljava/util/concurrent/ScheduledExecutorService;)V

    const-wide/16 v0, 0x3c

    sget-object p2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p0, p1, v0, v1, p2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    goto :goto_b

    :goto_a
    :try_start_4
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p0

    :catchall_2
    move-exception p0

    goto :goto_a

    :cond_1e
    :goto_b
    return-void

    :pswitch_5
    if-eqz p2, :cond_22

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1f

    goto :goto_d

    :cond_1f
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_22

    const-string/jumbo p1, "reason"

    invoke-virtual {p2, p1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x5

    if-ne p1, p2, :cond_22

    const-string/jumbo p1, "MARsTrigger"

    const-string/jumbo p2, "disable ultra power saving mode"

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean p2, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    if-nez p2, :cond_21

    iget-object p0, p0, Lcom/android/server/am/MARsTrigger$2;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-boolean p2, p0, Lcom/android/server/am/MARsTrigger;->mEmStateReceiverRegistered:Z

    if-nez p2, :cond_20

    goto :goto_c

    :cond_20
    :try_start_5
    iget-object p2, p0, Lcom/android/server/am/MARsTrigger;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/server/am/MARsTrigger;->mEmergencyStateChangedReceiver:Lcom/android/server/am/MARsTrigger$2;

    invoke-virtual {p2, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-boolean v5, p0, Lcom/android/server/am/MARsTrigger;->mEmStateReceiverRegistered:Z
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_c

    :catch_0
    const-string p0, "IllegalArgumentException occurred in unregisterEmStateReceiver()"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_c
    sget-object p0, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {p0}, Lcom/android/server/am/MARsPolicyManager;->postInit()V

    goto :goto_d

    :cond_21
    sget-object p0, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {p0}, Lcom/android/server/am/MARsPolicyManager;->setSubUserIds()V

    :cond_22
    :goto_d
    return-void

    :pswitch_6
    if-eqz p2, :cond_2e

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_23

    goto/16 :goto_12

    :cond_23
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "broadcast received action : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "MARsTrigger"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2e

    const-string/jumbo p1, "android.intent.extra.user_handle"

    invoke-virtual {p2, p1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "mContext.id = "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/am/MARsTrigger$2;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object p0, p0, Lcom/android/server/am/MARsTrigger;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean p0, Lcom/android/server/am/MARsPolicyManager;->App_StartUp_History:Z

    if-eqz p0, :cond_24

    sget-object p0, Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsDBManager;

    invoke-virtual {p0, v5}, Lcom/android/server/am/mars/database/MARsDBManager;->doUpdateCompHistory(Z)V

    :cond_24
    sget-object p0, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    const-string p2, "DEV"

    const-string/jumbo v0, "switchUser"

    invoke-virtual {p0, p2, v0}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean p2, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    sget-object p2, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    iget-boolean v0, p2, Lcom/android/server/am/FreecessController;->mIsScreenOnFreecessEnabled:Z

    if-eqz v0, :cond_26

    invoke-virtual {p2, v5}, Lcom/android/server/am/FreecessController;->setScreenOnFreecessEnabled(Z)V

    sget-object v1, Lcom/android/server/am/FreecessHandler$FreecessHandlerHolder;->INSTANCE:Lcom/android/server/am/FreecessHandler;

    iget-object v1, v1, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    if-nez v1, :cond_25

    goto :goto_e

    :cond_25
    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    :cond_26
    :goto_e
    iget-boolean v1, p2, Lcom/android/server/am/FreecessController;->mIsFreecessEnable:Z

    if-eqz v1, :cond_27

    const-string/jumbo v1, "MUM"

    invoke-virtual {p2, v1}, Lcom/android/server/am/FreecessController;->unFreezePackage(Ljava/lang/String;)V

    :cond_27
    iput-boolean v4, p0, Lcom/android/server/am/MARsPolicyManager;->mFirstTimeUpdatePackages:Z

    if-eqz v0, :cond_28

    invoke-virtual {p2, v4}, Lcom/android/server/am/FreecessController;->setScreenOnFreecessEnabled(Z)V

    :cond_28
    sget-object p2, Lcom/android/server/am/mars/filter/FilterManager$FilterManagerHolder;->INSTANCE:Lcom/android/server/am/mars/filter/FilterManager;

    move v0, v4

    :goto_f
    iget-object v1, p2, Lcom/android/server/am/mars/filter/FilterManager;->mFF:Lcom/android/server/am/mars/filter/FilterFactory;

    const/16 v2, 0x22

    if-ge v0, v2, :cond_29

    iget-object v1, v1, Lcom/android/server/am/mars/filter/FilterFactory;->filterHashMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/mars/filter/IFilter;

    invoke-interface {v1}, Lcom/android/server/am/mars/filter/IFilter;->deInit()V

    add-int/2addr v0, v4

    goto :goto_f

    :cond_29
    iget-object v0, v1, Lcom/android/server/am/mars/filter/FilterFactory;->filterHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object p2, p2, Lcom/android/server/am/mars/filter/FilterManager;->mFCF:Lcom/android/server/am/mars/filter/FilterChainFactory;

    iget-object p2, p2, Lcom/android/server/am/mars/filter/FilterChainFactory;->filterHashMap:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/HashMap;->clear()V

    iput p1, p0, Lcom/android/server/am/MARsPolicyManager;->mCurrentUserId:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/MARsPolicyManager;->mLastNotiSentTimeForDisabled:J

    new-instance p2, Landroid/os/UserHandle;

    invoke-direct {p2, p1}, Landroid/os/UserHandle;-><init>(I)V

    :try_start_6
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5, p2}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object p0
    :try_end_6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_10

    :catch_1
    iget-object p0, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    :goto_10
    sget-object p2, Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsDBManager;

    iget-object v0, p2, Lcom/android/server/am/mars/database/MARsDBManager;->mCurrentContext:Landroid/content/Context;

    :try_start_7
    iget-boolean v1, p2, Lcom/android/server/am/mars/database/MARsDBManager;->mRegisteredSmartManagerSettingsObserver:Z

    if-eqz v1, :cond_2a

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p2, Lcom/android/server/am/mars/database/MARsDBManager;->mSmartManagerSettingsObserver:Lcom/android/server/am/mars/database/MARsDBManager$SmartManagerFASObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iput-boolean v5, p2, Lcom/android/server/am/mars/database/MARsDBManager;->mRegisteredSmartManagerSettingsObserver:Z

    :cond_2a
    iget-boolean v1, p2, Lcom/android/server/am/mars/database/MARsDBManager;->mRegisteredSmartManagerFreezeExcludeListObserver:Z

    if-eqz v1, :cond_2b

    iget-object v1, p2, Lcom/android/server/am/mars/database/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p2, Lcom/android/server/am/mars/database/MARsDBManager;->mSmartManagerFreezeExcludeListObserver:Lcom/android/server/am/mars/database/MARsDBManager$SmartManagerFASObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iput-boolean v5, p2, Lcom/android/server/am/mars/database/MARsDBManager;->mRegisteredSmartManagerFreezeExcludeListObserver:Z

    :cond_2b
    iget-boolean v1, p2, Lcom/android/server/am/mars/database/MARsDBManager;->mRegisteredSmartManagerDefaultAllowedListObserver:Z

    if-eqz v1, :cond_2c

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p2, Lcom/android/server/am/mars/database/MARsDBManager;->mSmartManagerDefaultAllowedListObserver:Lcom/android/server/am/mars/database/MARsDBManager$SmartManagerFASObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iput-boolean v5, p2, Lcom/android/server/am/mars/database/MARsDBManager;->mRegisteredSmartManagerDefaultAllowedListObserver:Z
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_11

    :catch_2
    const-string/jumbo v0, "MARsDBManager"

    const-string v1, "IllegalArgumentException occurred in unregisterContentObserver()"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2c
    :goto_11
    iput-object p0, p2, Lcom/android/server/am/mars/database/MARsDBManager;->mCurrentContext:Landroid/content/Context;

    invoke-virtual {p2, p0}, Lcom/android/server/am/mars/database/MARsDBManager;->registerContentObservers(Landroid/content/Context;)V

    sget-object p2, Lcom/android/server/am/mars/filter/FilterManager$FilterManagerHolder;->INSTANCE:Lcom/android/server/am/mars/filter/FilterManager;

    invoke-virtual {p2, p0}, Lcom/android/server/am/mars/filter/FilterManager;->init(Landroid/content/Context;)V

    sget-object p0, Lcom/android/server/am/MARsHandler$MARsHandlerHolder;->INSTANCE:Lcom/android/server/am/MARsHandler;

    invoke-virtual {p0, p1}, Lcom/android/server/am/MARsHandler;->sendInitDisabledMsgToMainHandler(I)V

    invoke-static {}, Lcom/android/server/am/mars/database/MARsDBHandler;->getInstance()V

    sget-object p0, Lcom/android/server/am/mars/database/MARsDBHandler$MARsDBHandlerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsDBHandler;

    iget-object p2, p0, Lcom/android/server/am/mars/database/MARsDBHandler;->mMainHandler:Lcom/android/server/am/mars/database/MARsDBHandler$MainHandler;

    if-nez p2, :cond_2d

    goto :goto_12

    :cond_2d
    const-string/jumbo p2, "userId"

    invoke-static {p1, p2}, Lcom/android/server/SystemUpdateManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/am/mars/database/MARsDBHandler;->mMainHandler:Lcom/android/server/am/mars/database/MARsDBHandler$MainHandler;

    const/4 v0, 0x7

    invoke-virtual {p2, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object p0, p0, Lcom/android/server/am/mars/database/MARsDBHandler;->mMainHandler:Lcom/android/server/am/mars/database/MARsDBHandler$MainHandler;

    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2e
    :goto_12
    return-void

    :pswitch_7
    if-eqz p2, :cond_3b

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2f

    goto/16 :goto_16

    :cond_2f
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "android.intent.action.SCREEN_ON"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_33

    sget-boolean p1, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    sget-object p1, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {p1, v4}, Lcom/android/server/am/MARsPolicyManager;->setScreenOnState(Z)V

    iget-object p0, p0, Lcom/android/server/am/MARsTrigger$2;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object p1, p0, Lcom/android/server/am/MARsTrigger;->mMARsFirstTriggerPolicyAlarmIntent:Landroid/app/PendingIntent;

    if-eqz p1, :cond_30

    iget-object p0, p0, Lcom/android/server/am/MARsTrigger;->mAlarm:Landroid/app/AlarmManager;

    invoke-virtual {p0, p1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :cond_30
    sget-object p0, Lcom/android/server/am/MARsHandler$MARsHandlerHolder;->INSTANCE:Lcom/android/server/am/MARsHandler;

    iget-object p1, p0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    if-nez p1, :cond_31

    goto :goto_13

    :cond_31
    invoke-virtual {p1, v4}, Landroid/os/Handler;->removeMessages(I)V

    :goto_13
    iget-object p0, p0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    if-nez p0, :cond_32

    goto/16 :goto_16

    :cond_32
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_16

    :cond_33
    const-string/jumbo p0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_35

    sget-object p0, Lcom/android/server/am/mars/filter/filter/ActiveTrafficFilter$ActiveTrafficFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/ActiveTrafficFilter;

    iget-object p1, p0, Lcom/android/server/am/mars/filter/filter/ActiveTrafficFilter;->mContext:Landroid/content/Context;

    const-string/jumbo p2, "connectivity"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p1

    if-eqz p1, :cond_34

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_34

    goto :goto_14

    :cond_34
    move v4, v5

    :goto_14
    iput-boolean v4, p0, Lcom/android/server/am/mars/filter/filter/ActiveTrafficFilter;->mIsDataConnectionConnected:Z

    sget-boolean p1, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_FILTER:Z

    if-eqz p1, :cond_3b

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "DataConnection: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/android/server/am/mars/filter/filter/ActiveTrafficFilter;->mIsDataConnectionConnected:Z

    const-string/jumbo p2, "MARs:ActiveTrafficFilter"

    invoke-static {p2, p1, p0}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    goto/16 :goto_16

    :cond_35
    sget-object p0, Landroid/app/UiModeManager;->ACTION_ENTER_CAR_MODE:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_36

    sget-boolean p0, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    sget-object p0, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    monitor-enter p0

    :try_start_8
    iput-boolean v4, p0, Lcom/android/server/am/MARsPolicyManager;->mCarModeOn:Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    monitor-exit p0

    goto :goto_16

    :catchall_3
    move-exception p1

    :try_start_9
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    throw p1

    :cond_36
    const-string/jumbo p0, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_37

    sget-object p0, Lcom/android/server/am/mars/filter/filter/AllowListFilter$AllowListFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/AllowListFilter;

    invoke-virtual {p0}, Lcom/android/server/am/mars/filter/filter/AllowListFilter;->setCarrierAllowList()V

    goto :goto_16

    :cond_37
    const-string/jumbo p0, "MARS_REQUEST_DB_COMPLETE"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3a

    sget-boolean p0, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    sget-object p0, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p2, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter p2

    :try_start_a
    iget-object p0, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    iget-object p0, p0, Lcom/android/server/am/MARsPkgMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result p0

    if-lez p0, :cond_38

    goto :goto_15

    :cond_38
    move v4, v5

    :goto_15
    monitor-exit p2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    if-nez v4, :cond_3b

    invoke-static {}, Lcom/android/server/am/mars/database/MARsDBHandler;->getInstance()V

    sget-object p0, Lcom/android/server/am/mars/database/MARsDBHandler$MARsDBHandlerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsDBHandler;

    iget-object p1, p0, Lcom/android/server/am/mars/database/MARsDBHandler;->mMainHandler:Lcom/android/server/am/mars/database/MARsDBHandler$MainHandler;

    if-nez p1, :cond_39

    goto :goto_16

    :cond_39
    const-string/jumbo p1, "MARsDBHandler"

    const-string/jumbo p2, "sendSdhmsDBCompleteMsgToDBHandler"

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/am/mars/database/MARsDBHandler;->mMainHandler:Lcom/android/server/am/mars/database/MARsDBHandler$MainHandler;

    iget-object p0, p0, Lcom/android/server/am/mars/database/MARsDBHandler;->mFASDBupdateRunnable:Lcom/android/server/am/mars/database/MARsDBHandler$$ExternalSyntheticLambda0;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_16

    :catchall_4
    move-exception p0

    :try_start_b
    monitor-exit p2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    throw p0

    :cond_3a
    const-string/jumbo p0, "com.samsung.android.sm.ACTION_SCPM_MARS_SETTINGS_UPDATED"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3b

    invoke-static {}, Lcom/android/server/am/mars/database/MARsDBHandler;->getInstance()V

    sget-object p0, Lcom/android/server/am/mars/database/MARsDBHandler$MARsDBHandlerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsDBHandler;

    invoke-virtual {p0}, Lcom/android/server/am/mars/database/MARsDBHandler;->sendGetSCPMPolicyMsgToDBHandler()V

    :cond_3b
    :goto_16
    return-void

    :pswitch_data_0
    .packed-switch 0x0
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
