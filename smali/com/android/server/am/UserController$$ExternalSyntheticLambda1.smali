.class public final synthetic Lcom/android/server/am/UserController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/am/UserController;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lcom/android/server/am/UserState;

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/UserController;ILcom/android/server/am/UserState;ZI)V
    .locals 0

    iput p5, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/am/UserController;

    iput p2, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda1;->f$1:I

    iput-object p3, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda1;->f$2:Lcom/android/server/am/UserState;

    iput-boolean p4, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda1;->f$3:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 17

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda1;->$r8$classId:I

    packed-switch v1, :pswitch_data_0

    iget-object v1, v0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/am/UserController;

    iget v2, v0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda1;->f$1:I

    iget-object v3, v0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda1;->f$2:Lcom/android/server/am/UserState;

    iget-boolean v0, v0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda1;->f$3:Z

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lcom/android/server/utils/TimingsTraceAndSlog;

    invoke-direct {v4}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>()V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "finishUserStopped-"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "-[stopUser]"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    invoke-virtual {v1, v3, v0}, Lcom/android/server/am/UserController;->finishUserStopped(Lcom/android/server/am/UserState;Z)V

    invoke-virtual {v4}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return-void

    :pswitch_0
    iget-object v6, v0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/am/UserController;

    iget v7, v0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda1;->f$1:I

    iget-object v8, v0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda1;->f$2:Lcom/android/server/am/UserState;

    iget-boolean v9, v0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda1;->f$3:Z

    iget-object v0, v6, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/server/am/UserController$$ExternalSyntheticLambda1;

    const/4 v10, 0x3

    invoke-direct/range {v5 .. v10}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/am/UserController;ILcom/android/server/am/UserState;ZI)V

    invoke-virtual {v0, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_1
    iget-object v7, v0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/am/UserController;

    iget v8, v0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda1;->f$1:I

    iget-object v9, v0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda1;->f$2:Lcom/android/server/am/UserState;

    iget-boolean v10, v0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda1;->f$3:Z

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/server/utils/TimingsTraceAndSlog;

    invoke-direct {v0}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "finishUserStopping-"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "-[stopUser]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    const/16 v1, 0x7579

    invoke-static {v1, v8}, Landroid/util/EventLog;->writeEvent(II)I

    iget-object v1, v7, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v2, v9, Lcom/android/server/am/UserState;->state:I

    const/4 v3, 0x4

    const/4 v4, 0x5

    if-eq v2, v3, :cond_1

    iget-object v2, v7, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v2}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/pm/UserManagerService;->mUserJourneyLogger:Lcom/android/server/pm/UserJourneyLogger;

    invoke-virtual {v7, v8}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    const/4 v5, 0x3

    const/4 v6, -0x1

    invoke-virtual {v2, v6, v3, v4, v5}, Lcom/android/server/pm/UserJourneyLogger;->logUserJourneyFinishWithError(ILandroid/content/pm/UserInfo;II)Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v3, v7, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v4, 0xc8

    invoke-virtual {v3, v4, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_2

    :cond_0
    iget-object v2, v7, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v2}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/pm/UserManagerService;->mUserJourneyLogger:Lcom/android/server/pm/UserJourneyLogger;

    invoke-virtual {v7, v8}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v2, v6, v3, v4, v5}, Lcom/android/server/pm/UserJourneyLogger;->logUserJourneyFinishWithError(ILandroid/content/pm/UserInfo;II)Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;

    :goto_0
    monitor-exit v1

    goto/16 :goto_1

    :cond_1
    invoke-virtual {v9, v4}, Lcom/android/server/am/UserState;->setState(I)V

    iget-object v2, v7, Lcom/android/server/am/UserController;->mDoNotAbortShutdownUserIds:Landroid/util/ArraySet;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v1, Lcom/android/server/utils/TimingsTraceAndSlog;

    invoke-direct {v1}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setUserState-STATE_SHUTDOWN-"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "-[stopUser]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v2, v7, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v2}, Lcom/android/server/am/UserController$Injector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v2

    iget v3, v9, Lcom/android/server/am/UserState;->state:I

    invoke-virtual {v2, v8, v3}, Lcom/android/server/pm/UserManagerInternal;->setUserState(II)V

    invoke-virtual {v1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    iget-object v1, v7, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v1, v1, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    const/16 v3, 0x4007

    invoke-virtual {v1, v3, v2, v8}, Lcom/android/server/am/BatteryStatsService;->noteEvent(ILjava/lang/String;I)V

    iget-object v1, v7, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    iget-object v1, v1, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v2, 0x7586

    invoke-static {v2, v8}, Landroid/util/EventLog;->writeEvent(II)I

    const-string/jumbo v2, "Stop"

    invoke-virtual {v1, v8, v2}, Lcom/android/server/SystemServiceManager;->onUser(ILjava/lang/String;)V

    new-instance v6, Lcom/android/server/am/UserController$$ExternalSyntheticLambda1;

    const/4 v11, 0x2

    invoke-direct/range {v6 .. v11}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/am/UserController;ILcom/android/server/am/UserState;ZI)V

    iget-object v1, v7, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/android/server/pm/UserManagerService;->isPreCreated(I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v6}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda1;->run()V

    goto :goto_1

    :cond_2
    new-instance v9, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v9, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v10, Lcom/android/server/am/UserController$3;

    const/4 v1, 0x0

    invoke-direct {v10, v8, v6, v1}, Lcom/android/server/am/UserController$3;-><init>(ILcom/android/server/am/UserController$$ExternalSyntheticLambda1;B)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "broadcast-ACTION_SHUTDOWN-"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "-[stopUser]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Lcom/android/server/am/UserController;->asyncTraceBegin(ILjava/lang/String;)V

    iget-object v1, v7, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    sget v13, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v14

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v15

    const/4 v11, 0x0

    const/4 v12, 0x0

    move/from16 v16, v8

    move-object v8, v1

    invoke-virtual/range {v8 .. v16}, Lcom/android/server/am/UserController$Injector;->broadcastIntent(Landroid/content/Intent;Landroid/content/IIntentReceiver;[Ljava/lang/String;Landroid/os/Bundle;IIII)V

    :goto_1
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return-void

    :goto_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :pswitch_2
    iget-object v3, v0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/am/UserController;

    iget v4, v0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda1;->f$1:I

    iget-object v5, v0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda1;->f$2:Lcom/android/server/am/UserState;

    iget-boolean v6, v0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda1;->f$3:Z

    iget-object v0, v3, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/UserController$$ExternalSyntheticLambda1;

    const/4 v7, 0x1

    invoke-direct/range {v2 .. v7}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/am/UserController;ILcom/android/server/am/UserState;ZI)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
